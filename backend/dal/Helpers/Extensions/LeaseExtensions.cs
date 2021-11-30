using System;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using Pims.Core.Extensions;
using Pims.Dal.Entities;
using Entity = Pims.Dal.Entities;
namespace Pims.Dal.Helpers.Extensions
{
    /// <summary>
    /// LeaseExtensions static class, provides extension methods for leases.
    /// </summary>
    public static class LeaseExtensions
    {
        /// <summary>
        /// Generate an SQL statement for the specified 'user' and 'filter'.
        /// </summary>
        /// <param name="query"></param>
        /// <param name="filter"></param>
        /// <returns></returns>
        private static IQueryable<Entities.PimsLease> GenerateCommonLeaseQuery(this IQueryable<Entities.PimsLease> query, Entity.Models.LeaseFilter filter)
        {
            filter.ThrowIfNull(nameof(filter));

            if (!string.IsNullOrWhiteSpace(filter.TenantName))
            {
                query = query.Where(l => l.PimsLeaseTenants.Any(tenant => tenant.Person != null && EF.Functions.Like(tenant.Person.Surname + ", " + tenant.Person.FirstName + ", " + tenant.Person.MiddleNames, $"%{filter.TenantName}%"))
                || l.PimsLeaseTenants.Any(tenant => tenant.Organization != null && EF.Functions.Like(tenant.Organization.OrganizationName, $"%{filter.TenantName}%")));
            }

            if (!string.IsNullOrWhiteSpace(filter.PidOrPin))
            {
                var pidOrPinValue = filter.PidOrPin.Replace("-", "").Trim();
                if (Int32.TryParse(pidOrPinValue, out int pidOrPin))
                {
                    query = query.Where(l => l.PimsPropertyLeases.Where(p => p != null && p.Property != null).Select(p => p.Property).Count(p => p.Pid == pidOrPin || p.Pin == pidOrPin) > 0);
                }
            }

            if (!string.IsNullOrWhiteSpace(filter.LFileNo))
            {
                query = query.Where(l => EF.Functions.Like(l.LFileNo, $"%{filter.LFileNo}%"));
            }

            if (filter.Programs.Count > 0)
            {
                query = query.Where(l => filter.Programs.Any(p => p == l.LeaseProgramTypeCode));
            }

            if (filter.Sort?.Any() == true)
                query = query.OrderByProperty(filter.Sort);
            else
                query = query.OrderBy(l => l.LFileNo);

            return query.Include(l => l.PimsPropertyLeases)
                .ThenInclude(p => p.Property)
                .ThenInclude(p => p.Address)
                .Include(l => l.PimsPropertyLeases)
                .Include(l => l.PimsPropertyImprovements)
                .Include(l => l.LeaseProgramTypeCodeNavigation)
                .Include(l => l.PimsLeaseTenants)
                .ThenInclude(t => t.Person)
                .Include(l => l.PimsLeaseTenants)
                .ThenInclude(t => t.Organization);
        }

        /// <summary>
        /// Generate a query for the specified 'filter'.
        /// </summary>
        /// <param name="context"></param>
        /// <param name="filter"></param>
        /// <returns></returns>
        public static IQueryable<Entities.PimsLease> GenerateLeaseQuery(this PimsContext context, Entity.Models.LeaseFilter filter)
        {
            filter.ThrowIfNull(nameof(filter));

            var query = context.PimsLeases.AsNoTracking();

            query = query.GenerateCommonLeaseQuery(filter);

            return query;
        }

        /// <summary>
        /// Get the street address from the lease's first associated property.
        /// </summary>
        /// <param name="lease"></param>
        /// <returns></returns>
        public static string GetAddress(this Entities.PimsLease lease)
        {
            return lease.PimsPropertyLeases.FirstOrDefault(p => p != null && p?.Property != null)?.Property?.Address?.StreetAddress1;
        }

        /// <summary>
        /// Get the pid or pin from the lease's first associated property.
        /// </summary>
        /// <param name="lease"></param>
        /// <returns></returns>
        public static int? GetPidOrPin(this Pims.Dal.Entities.PimsLease lease)
        {
            return lease.PimsPropertyLeases?.FirstOrDefault(p => p != null && p?.Property != null)?.Property?.Pid ?? lease.PimsPropertyLeases?.FirstOrDefault(p => p != null && p?.Property != null)?.Property?.Pin;
        }

        /// <summary>
        /// Get the Program name from the lease's program type description
        /// </summary>
        /// <param name="lease"></param>
        /// <returns></returns>
        public static string GetProgramName(this Pims.Dal.Entities.PimsLease lease)
        {
            return lease?.LeaseProgramTypeCodeNavigation?.Description;
        }

        /// <summary>
        /// Get the full name from the lease's first tenant (person).
        /// </summary>
        /// <param name="lease"></param>
        /// <returns></returns>
        public static string GetFullName(this Pims.Dal.Entities.PimsLease lease)
        {
            return lease?.PimsLeaseTenants.FirstOrDefault(t => t != null && t.Person != null)?.Person?.GetFullName();
        }

        /// <summary>
        /// Get the full name from the lease's first tenant (person).
        /// </summary>
        /// <param name="lease"></param>
        /// <returns></returns>
        public static string GetMotiName(this Pims.Dal.Entities.PimsLease lease)
        {
            return lease.MotiContact;
        }

        /// <summary>
        /// Get the calculated expiry date.
        /// </summary>
        /// <param name="lease"></param>
        /// <returns></returns>
        public static DateTime? GetExpiryDate(this Pims.Dal.Entities.PimsLease lease)
        {
            if (lease.OrigExpiryDate != null)
            {
                if (lease.PimsLeaseTerms != null && lease.PimsLeaseTerms.Any(t => t.TermExpiryDate > lease.OrigExpiryDate))
                {
                    return lease.PimsLeaseTerms.OrderByDescending(t => t.TermExpiryDate).FirstOrDefault().TermExpiryDate;
                }
                return lease.OrigExpiryDate;
            }
            return lease.PimsLeaseTerms?.OrderByDescending(t => t.TermExpiryDate).FirstOrDefault()?.TermExpiryDate;
        }
    }
}
