using DataAccessLibrary.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace DataAccessLibrary
{
    public class PeopleData : IPeopleData
    {
        ISqlDataAccess _db;

        public PeopleData(ISqlDataAccess db)
        {
            _db = db;
        }

        public Task<List<PersonModel>> GetPeople()
        {
            string sql = "select * from dbo.People";
            return _db.LoadData<PersonModel, dynamic>(sql, new { });
        }

        public Task InsertPerson(PersonModel person)
        {
            string sql = @"insert into dbo.People (FirstName, LastName, EmailAddress, DateOfBirth)
                           values (@FirstName, @LastName, @EmailAddress, @DateOfBirth)";

            return _db.SaveData(sql, person);
        }
    }
}
