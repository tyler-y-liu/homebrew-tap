class AgentOffice < Formula
  desc "Always-on-top pixel office where every Claude Code session is a little worker"
  homepage "https://github.com/tyler-y-liu/agent-office"
  url "https://github.com/tyler-y-liu/agent-office/releases/download/v0.1.0/agent-office-v0.1.0-macos-universal.tar.gz"
  version "0.1.0"
  sha256 "e8b794d39de9db2faacecb84b08c1f1fe9ad3cc0229e341d7b93ee5f68f8e3ae"
  license "MIT"

  depends_on :macos

  def install
    bin.install "agent-office"
  end

  def caveats
    <<~EOS
      Hook it into Claude Code (applies to sessions started afterwards):
        agent-office connect
      Then start the office:
        agent-office
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-office --version")
  end
end
