# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    def initialize(emails)
        @emails = emails
    end

    def parse
        email_list = @emails.split(" ")
        emails_list_chomp = email_list.map do |email|
            email.chomp(",")
        end
        emails_list_chomp.uniq 
        
    end

end

EmailAddressParser.new("tom@gmail.com, ryan@hotmail.com, ryan@hotmail.com, angotti@yahoo.com").parse
