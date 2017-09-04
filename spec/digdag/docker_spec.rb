require "spec_helper"

describe "docker" do
  describe command("docker --version") do
    its(:stdout){ should eq "Docker version 17.06.1-ce, build 874a737\n" }
    its(:exit_status){ should eq 0 }
  end
end
