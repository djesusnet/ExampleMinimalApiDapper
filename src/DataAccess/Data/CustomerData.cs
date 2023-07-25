using DataAccess.DbAccess;
using DataAccess.Models;

namespace DataAccess.Data
{
    public class CustomerData : ICustomerData
    {
        private readonly ISqlDataAccess _db;
        public CustomerData(ISqlDataAccess db)
        {
            _db = db;
        }

        public Task<IEnumerable<Customer>> GetCustomer() =>
            _db.LoadData<Customer, dynamic>("dbo.spCustomer_GetAll", new { });

        public async Task<Customer?> GetCustomer(int id)
        {
            var results = await _db.LoadData<Customer, dynamic>("dbo.spCustomer_Get", new { Id = id });
            return results.FirstOrDefault();
        }

        public Task InsertCustomer(Customer user) =>
            _db.SaveData("dbo.spCustomer_Insert", new { user.FirstName, user.LastName });

        public Task UpdateCustomer(Customer user) =>
            _db.SaveData("dbo.spCustomer_Update", user);

        public Task DeleteCustomer(int id) =>
            _db.SaveData("dbo.spCustomer_Delete", new { Id = id });

    }
}
