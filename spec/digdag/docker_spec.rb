require "spec_helper"

describe "docker" do
  describe command("docker --version") do
    its(:stdout){ should eq "Docker version 17.06.0-ce, build 02c1d87\n" }
    its(:exit_status){ should eq 0 }
  end
end
