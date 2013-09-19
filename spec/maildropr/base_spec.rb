require "spec_helper"

def configuration
  {
    :api_key => "MAILDROPR_API_KEY"
  }
end

describe MailDropr::Base do
  subject { MailDropr::Base.new(configuration) }

  describe ".initialize" do
    
    it "accepts a hash of options" do
      expect { MailDropr::Base.new(configuration) }.to_not raise_exception
    end

    it "requires the :api_key option" do
      expect { MailDropr::Base.new({}) }.to raise_exception(ArgumentError)
    end

    it "applys given options" do
      subject.api_key.should eq "MAILDROPR_API_KEY"
    end

    describe "defaults" do
      its(:base_uri) { should eq "https://send.maildropr.com/api" }
    end

  end

  describe ".add_subscriber" do
    it "adds the given subscriber to the list" do
      subject.should_receive(:post).with("/lists/LIST_ID/subscribers", {:email => "john.smith@example.com"})
      subject.add_subscriber("LIST_ID", "john.smith@example.com")
    end
  end
end