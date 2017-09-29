require "spec_helper"

describe "docker" do
  describe command("docker --version") do
    its(:stdout){ should eq "Docker version 17.09.0-ce, build afdb6d4\n" }
    its(:exit_status){ should eq 0 }
  end
end
