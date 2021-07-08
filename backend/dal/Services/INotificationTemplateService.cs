using Pims.Dal.Entities;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Pims.Dal.Services
{
    /// <summary>
    /// INotificationTemplateService interface, provides functions to interact with notification templates within the datasource.
    /// </summary>
    public interface INotificationTemplateService : IService
    {
        IEnumerable<NotificationTemplate> Get();
        NotificationTemplate Get(long id);
        NotificationTemplate Get(string name);
        NotificationTemplate Add(NotificationTemplate template);
        NotificationTemplate Update(NotificationTemplate template);
        void Remove(NotificationTemplate template);
        Task<NotificationQueue> SendNotificationAsync(long templateId, string to);
        Task<NotificationQueue> SendNotificationAsync<T>(long templateId, string to, T model) where T : class;
        Task<NotificationQueue> SendNotificationAsync<T>(long templateId, string to, string cc, string bcc, T model) where T : class;
    }
}
