class AgentOffice < Formula
  desc "Always-on-top pixel office where every Claude Code session is a little worker"
  homepage "https://github.com/tyler-y-liu/agent-office"
  url "https://github.com/tyler-y-liu/agent-office/releases/download/v0.2.0/agent-office-v0.2.0-macos-universal.tar.gz"
  version "0.2.0"
  sha256 "24f2042431210d7d8bfbe3c694360dc597929a4248313e6832a142002cb0358e"
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
