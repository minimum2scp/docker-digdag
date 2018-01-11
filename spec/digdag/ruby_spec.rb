require "spec_helper"

describe "ruby" do
  describe command("ruby --version") do
    let(:login_shell){ true }
    its(:stdout){ should eq "ruby 2.5.0p0 (2017-12-25 revision 61468) [x86_64-linux]\n" }
    its(:exit_status) { should eq 0 }
  end

  describe command("bundle --version") do
    let(:login_shell){ true }
    its(:stdout){ should eq "Bundler version 1.16.1\n" }
    its(:exit_status) { should eq 0 }
  end

  describe command("ruby -ropenssl -e 'puts OpenSSL::OPENSSL_VERSION'") do
    let(:login_shell){ true }
    its(:stdout){ should match /^OpenSSL 1\.1\.0[a-z]/ }
    its(:exit_status) { should eq 0 }
  end

  describe command("gem --version") do
    let(:login_shell){ true }
    its(:stdout){ should eq "2.7.3\n" }
    its(:exit_status) { should eq 0 }
  end
end
