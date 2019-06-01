require "spec_helper"

describe "docker" do
  describe command("docker --version") do
    its(:stdout){ should match a_string_starting_with("Docker version 18.09.6, ") }
    its(:exit_status){ should eq 0 }
  end
end
