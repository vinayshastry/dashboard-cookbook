require "serverspec"

# Required by serverspec
set :backend, :exec

describe service("mysql-server") do
  it { should be_enabled   }
end

describe service("mysql-server") do
  it { should be_running   }
end

describe service("mysql-server") do
  it "is listening on port 3306" do
    expect(port(3306)).to be_listening
  end
end
