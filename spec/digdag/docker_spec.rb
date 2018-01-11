require "spec_helper"

describe "docker" do
  describe command("docker --version") do
    its(:stdout){ should eq "Docker version 17.12.0-ce, build c97c6d6\n" }
    its(:exit_status){ should eq 0 }
  end
end
