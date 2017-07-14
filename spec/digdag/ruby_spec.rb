require "spec_helper"

describe "ruby" do
  describe command("ruby --version") do
    let(:login_shell){ true }
    its(:stdout){ should eq "ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-linux]\n" }
    its(:exit_status) { should eq 0 }
  end

  describe command("bundle --version") do
    let(:login_shell){ true }
    its(:stdout){ should eq "Bundler version 1.15.1\n" }
    its(:exit_status) { should eq 0 }
  end
end
