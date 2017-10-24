require "spec_helper"

describe "digdag" do
  describe command("digdag --version") do
    its(:stdout){ should eq "0.9.20\n" }
    its(:exit_status){ should eq 0 }
  end
end
