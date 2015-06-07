require_relative "entry.rb"

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
  
  def remove_entry(entry)
    entry = name, phone_number, email
    if  @entries.include?('name, phone_number, email')
      @entries.delete('name, phone_number, email')
    end
  end
end