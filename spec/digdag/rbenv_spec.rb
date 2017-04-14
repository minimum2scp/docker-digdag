require "spec_helper"

describe "rbenv" do
  describe command("rbenv version-name") do
    its(:stdout){ should eq "2.4.1\n" }
    its(:exit_status){ should eq 0 }
  end
end
