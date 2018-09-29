require "spec_helper"

describe "python" do
  describe command("python --version") do
    its(:stderr){ should eq "Python 2.7.15+\n" }
    its(:exit_status) { should eq 0 }
  end
end
