# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

  attr_accessor :emails
  attr_reader :parse

  def initialize(emails)
    @emails = emails
  end

  def parse
    split = @emails.split(/[,|\s]/).reject { |index| index.empty?}
    return split.uniq
  end




end
