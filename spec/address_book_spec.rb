 RSpec.describe AddressBook do

  def check_entry(entry, expected_name, expected_number, expected_email)
    expect(entry.name).to eql expected_name
    expect(entry.phone_number).to eql expected_number
    expect(entry.email).to eql expected_email
  end

   context ".import_from_csv" do
     it "tests the csv import process" do
       book = AddressBook.new
       book.import_from_csv("entries.csv")
       book_size = book.entries.size

       # Check the size of the AddressBook.entries
       expect(book_size).to eql 5
     end

     it "imports the 1st entry" do
       book = AddressBook.new
       book.import_from_csv("entries.csv")
       # Check the first entry
       entry_one = book.entries[0]
       check_entry(entry_one, "Bill", "555-555-5555", "bill@blocmail.com")
     end

     it "imports the 2nd entry" do
       book = AddressBook.new
       book.import_from_csv("entries.csv")
       # Check the second entry
       entry_two = book.entries[1]
       check_entry(entry_two, "Bob", "555-555-5555", "bob@blocmail.com")
     end

     it "imports the 3rd entry" do
       book = AddressBook.new
       book.import_from_csv("entries.csv")
       # Check the third entry
       entry_three = book.entries[2]
       check_entry(entry_three, "Joe", "555-555-5555", "joe@blocmail.com")
     end

     it "imports the 4th entry" do
       book = AddressBook.new
       book.import_from_csv("entries.csv")
       # Check the fourth entry
       entry_four = book.entries[3]
       check_entry(entry_four, "Sally", "555-555-5555", "sally@blocmail.com")
     end

     it "imports the 5th entry" do
       book = AddressBook.new
       book.import_from_csv("entries.csv")
       # Check the fifth entry
       entry_five = book.entries[4]
       check_entry(entry_five, "Sussie", "555-555-5555", "sussie@blocmail.com")
     end

   end
 end