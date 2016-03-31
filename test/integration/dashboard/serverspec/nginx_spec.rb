require "serverspec"

# Required by serverspec
set :backend, :exec

describe service("nginx") do
  it { should be_enabled   }
end

describe service("nginx") do
  it { should be_running   }
end

describe service("nginx") do
  it "is listening on port 80 " do
    expect(port(80)).to be_listening
  end
end
