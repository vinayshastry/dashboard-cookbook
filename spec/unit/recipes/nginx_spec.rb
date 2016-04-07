require "chefspec"
require "spec_helper"

describe "dashboard::nginx" do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it "installs nginx" do
    expect(chef_run).to install_package("nginx")
  end
end
