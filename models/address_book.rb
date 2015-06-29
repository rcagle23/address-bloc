require_relative "entry"
require "csv"

class AddressBook
  attr_accessor :entries
  
  def initialize
    @entries = []
  end
  
  def add_entry(name, phone, email)
    index = 0
    @entries.each do |entry|
      if name < entry.name
        break
      end
      index += 1
    end
    
    @entries.insert(index, Entry.new(name, phone, email))
  end
  
  def import_from_csv(file_name)
    csv_text = File.read(file_name)
    csv = CSV.parse(csv_text, headers: true)
    
    csv.each do |row|
      row_hash = row.to_hash
      add_entry(row_hash["name"], row_hash["phone_number"], row_hash["email"])
    end
  end
  
       lower = 0
     upper = entries.length - 1

     while lower <= upper

       mid = (lower + upper) / 2
       mid_name = entries[mid].name

       if name == mid_name
         return entries[mid]
       elsif name < mid_name
         upper = mid - 1
       elsif name > mid_name
         lower = mid + 1
       end
     end
  
  
   def binary_search(name)
     count = entries.length
     if count.zero?
       puts name
       binary_search(name-1)
     end
     return nil
   end
    
  # example of recursion
    # def countdown(n)
      # return if n.zero? # base case
      # puts n
      # countdown(n-1)    # getting closer to base case 
    # end               

    #countdown(5)
    #5
    #4
    #3
    #2
    #1
  
  def iterative_search(name)
    @entries.find { |entry| entry.name == name }
  end
end