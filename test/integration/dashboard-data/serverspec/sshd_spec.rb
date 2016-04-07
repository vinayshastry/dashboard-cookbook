require "serverspec"

# Required by serverspec
set :backend, :exec

describe service("sshd") do
  it { should be_running   }

  it "is listening on port 22" do
    expect(port(22)).to be_listening
  end
end
