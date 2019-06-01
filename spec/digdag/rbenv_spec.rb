require "spec_helper"

describe "rbenv" do
  describe command("rbenv version-name") do
    let(:login_shell){ true }
    its(:stdout){ should eq "2.6.3\n" }
    its(:exit_status){ should eq 0 }
  end
end
