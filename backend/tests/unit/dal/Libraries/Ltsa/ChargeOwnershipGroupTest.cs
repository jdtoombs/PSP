using System;
using System.Collections.Generic;
using System.Text;
using Xunit;
using Pims.Ltsa.Models;
using System.IO;
using System.Diagnostics.CodeAnalysis;
using FluentAssertions;

namespace Pims.Dal.Test.Libraries.Ltsa
{
    [Trait("category", "unit")]
    [Trait("category", "ltsa")]
    [Trait("group", "ltsa")]
    [ExcludeFromCodeCoverage]
    public class ChargeOwnershipGroupTest
    {
        [Fact]
        public void TestConstructor_Null_JointTenancyIndication()
        {
            Assert.Throws<InvalidDataException>(() => new ChargeOwnershipGroup(chargeOwners: new List<ChargeOwnershipGroupChargeOwner>(), jointTenancyIndication: null));
        }

        [Fact]
        public void TestConstructor_Null_ChargeOwners()
        {
            Assert.Throws<InvalidDataException>(() => new ChargeOwnershipGroup(jointTenancyIndication: true, chargeOwners: null));
        }

        [Fact]
        public void TestConstructor()
        {
            List<ChargeOwnershipGroupChargeOwner> chargeOwnershipGroupChargeOwner = new List<ChargeOwnershipGroupChargeOwner>();
            ChargeOwnershipGroup obj = new ChargeOwnershipGroup(true, "creatingApplicationNumber", ChargeOwnershipGroup.CreatingApplicationStatusEnum.Draft, "cancellingApplicationNumber", ChargeOwnershipGroup.CancellingApplicationStatusEnum.Draft, "interestFractionNumerator", "interestFractionDenominator", "ownershipRemarks", chargeOwnershipGroupChargeOwner);
            obj.CreatingApplicationNumber.Should().Be("creatingApplicationNumber");
            obj.CreatingApplicationStatus.Should().Be(ChargeOwnershipGroup.CreatingApplicationStatusEnum.Draft);
            obj.CancellingApplicationNumber.Should().Be("cancellingApplicationNumber");
            obj.CancellingApplicationStatus.Should().Be(ChargeOwnershipGroup.CancellingApplicationStatusEnum.Draft);
            obj.InterestFractionNumerator.Should().Be("interestFractionNumerator");
            obj.InterestFractionDenominator.Should().Be("interestFractionDenominator");
            obj.OwnershipRemarks.Should().Be("ownershipRemarks");
            obj.ChargeOwners.Should().BeEquivalentTo(chargeOwnershipGroupChargeOwner);
        }
    }
}
