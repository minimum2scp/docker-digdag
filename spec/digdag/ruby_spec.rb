require "spec_helper"

describe "ruby" do
  describe command("ruby --version") do
    let(:login_shell){ true }
    its(:stdout){ should eq "ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-linux]\n" }
    its(:exit_status) { should eq 0 }
  end

  describe command("bundle --version") do
    let(:login_shell){ true }
    its(:stdout){ should eq "Bundler version 1.16.6\n" }
    its(:exit_status) { should eq 0 }
  end

  describe command("ruby -ropenssl -e 'puts OpenSSL::OPENSSL_VERSION'") do
    let(:login_shell){ true }
    its(:stdout){ should match /^OpenSSL 1\.1\.1/ }
    its(:exit_status) { should eq 0 }
  end

  describe command("gem --version") do
    let(:login_shell){ true }
    its(:stdout){ should eq "2.7.6\n" }
    its(:exit_status) { should eq 0 }
  end
end
