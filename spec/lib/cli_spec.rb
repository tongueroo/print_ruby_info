require "spec_helper"

# to run specs with what"s remembered from vcr
#   $ rake
#
# to run specs with new fresh data from aws api calls
#   $ rake clean:vcr ; time rake
describe PrintRubyInfo::CLI do
  before(:all) do
    @args = "--from Tung"
  end

  describe "print_ruby_info" do
    it "should hello world" do
      out = execute("bin/print_ruby_info hello world #{@args}")
      expect(out).to include("from: Tung\nHello world")
    end
  end
end
