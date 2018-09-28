require "spec_helper"

describe "docker" do
  describe command("docker --version") do
    its(:stdout){ should eq "Docker version 18.06.1-ce, build e68fc7a\n" }
    its(:exit_status){ should eq 0 }
  end
end
