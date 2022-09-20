# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :addrs
    def initialize email_addresses
        @addrs = email_addresses
    end
    def parse
        @addrs.split(/,?\s+/).uniq
    end
end

pp EmailAddressParser.new("john@doe.com, person@somewhere.org").parse
# => ["john@doe.com", "person@somewhere.org"]

pp EmailAddressParser.new("john@doe.com person@somewhere.org").parse
# => ["john@doe.com", "person@somewhere.org"]