require "spec_helper"

describe "docker" do
  describe command("docker --version") do
    its(:stdout){ should eq "Docker version 18.03.1-ce, build 9ee9f40\n" }
    its(:exit_status){ should eq 0 }
  end
end
