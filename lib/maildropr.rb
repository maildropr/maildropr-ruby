require "maildropr/base"

# Instantiates a new MailDropr client with the given credentials
# @param [Hash] options options for the API client
# @return [MailDropr::Base] the MailDropr base client
def MailDropr(options = {})
  MailDropr::Base.new(options)
end