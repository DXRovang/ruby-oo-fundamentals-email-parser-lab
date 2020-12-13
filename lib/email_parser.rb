
# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    finish = @emails.split(/, | /)
    copy = ""
    finish.map.with_index do |email, index|
      if email == copy
          finish.delete_at(index)
      else
        copy = email 
      end
    end
    finish
  end

end