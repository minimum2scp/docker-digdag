require "spec_helper"

describe "docker" do
  describe command("docker --version") do
    its(:stdout){ should eq "Docker version 18.03.0-ce, build 0520e24\n" }
    its(:exit_status){ should eq 0 }
  end
end
