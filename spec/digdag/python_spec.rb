require "spec_helper"

describe "python" do
  describe command("python --version") do
    its(:stderr){ should match a_string_starting_with('Python 2.7.') }
    its(:exit_status) { should eq 0 }
  end
end
