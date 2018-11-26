# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails
  
  def initialize(email)
    @emails = email
    #here we are initializing a string of emails-- within the class
  end 
  
  def parse
    # instance method
    # email_array = @emails.split(/,\s|\s/).uniq
    # we are parsing emails separated w/ spaces or commas or just spaces if there was not one included. 
    # secondly we are removing any duplicates 
    # IF we were not to write this in one line.. 
    
      email_array = @email.split(/[, ]/).uniq
      # email array should be split by comma space and then remove dups 
      email_array.reject! {|element| element.empty?}
      # delete_if 
      email_array
  end 
end 