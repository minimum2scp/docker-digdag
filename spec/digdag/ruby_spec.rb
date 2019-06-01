require "spec_helper"

describe "ruby" do
  describe command("ruby --version") do
    let(:login_shell){ true }
    its(:stdout){ should eq "ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-linux]\n" }
    its(:exit_status) { should eq 0 }
  end

  describe command("bundle --version") do
    let(:login_shell){ true }
    its(:stdout){ should eq "Bundler version 2.0.1\n" }
    its(:exit_status) { should eq 0 }
  end

  describe command("ruby -ropenssl -e 'puts OpenSSL::OPENSSL_VERSION'") do
    let(:login_shell){ true }
    its(:stdout){ should match /^OpenSSL 1\.1\.1/ }
    its(:exit_status) { should eq 0 }
  end

  describe command("gem --version") do
    let(:login_shell){ true }
    its(:stdout){ should eq "3.0.3\n" }
    its(:exit_status) { should eq 0 }
  end
end
