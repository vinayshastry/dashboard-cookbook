require "serverspec"

# Required by serverspec
set :backend, :exec

describe service("mysql") do
  it { should be_enabled   }
end

describe service("mysqld") do
  it { should be_running   }
end

describe service("mysqld") do
  it "is listening on port 22" do
    expect(port(22)).to be_listening
  end
end
