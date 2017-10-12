require "spec_helper"

describe "ruby" do
  describe command("ruby --version") do
    let(:login_shell){ true }
    its(:stdout){ should eq "ruby 2.4.2p198 (2017-09-14 revision 59899) [x86_64-linux]\n" }
    its(:exit_status) { should eq 0 }
  end

  describe command("bundle --version") do
    let(:login_shell){ true }
    its(:stdout){ should eq "Bundler version 1.15.4\n" }
    its(:exit_status) { should eq 0 }
  end

  describe command("ruby -ropenssl -e 'puts OpenSSL::OPENSSL_VERSION'") do
    let(:login_shell){ true }
    its(:stdout){ should match /^OpenSSL 1\.1\.0[a-z]/ }
    its(:exit_status) { should eq 0 }
  end

  describe command("gem --version") do
    let(:login_shell){ true }
    its(:stdout){ should eq "2.6.14\n" }
    its(:exit_status) { should eq 0 }
  end
end
