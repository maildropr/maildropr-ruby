require "spec_helper"

describe MailDropr do
  describe "#MailDropr" do
    subject { MailDropr(:api_key => "MAILDROPR_API_KEY") }

    it "returns a MailDropr::Base instance" do
      subject.should be_a MailDropr::Base
    end

    it "applys given options to returned MailDropr::Base instance" do
      subject.api_key.should eq "MAILDROPR_API_KEY"
    end

  end
end