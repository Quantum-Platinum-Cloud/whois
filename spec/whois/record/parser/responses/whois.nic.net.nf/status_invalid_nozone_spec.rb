# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.net.nf/status_invalid_nozone.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.net.nf.rb'

describe Whois::Record::Parser::WhoisNicNetNf, "status_invalid_nozone.expected" do

  before(:each) do
    file = fixture("responses", "whois.nic.net.nf/status_invalid_nozone.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#status" do
    it do
      @parser.status.should == :invalid
    end
  end
  describe "#valid?" do
    it do
      @parser.valid?.should == false
    end
  end
  describe "#invalid?" do
    it do
      @parser.invalid?.should == true
    end
  end
end
