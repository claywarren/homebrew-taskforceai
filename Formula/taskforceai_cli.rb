# typed: false
# frozen_string_literal: true

class TaskforceaiCli < Formula
  desc 'Command-line interface for TaskForceAI'
  homepage 'https://taskforceai.chat'
  version "0.11.0"
  license 'MIT'

  on_macos do
    on_arm do
      url "https://github.com/ClayWarren/taskforceai-tui/releases/download/v0.11.0/taskforceai-cli-darwin-arm64.tar.gz"
      sha256 "597f8968a9568b5723e9a8978a174c607c8cbc86bf86ce0282217197330b18e9"
    end
    on_intel do
      url "https://github.com/ClayWarren/taskforceai-tui/releases/download/v0.11.0/taskforceai-cli-darwin-amd64.tar.gz"
      sha256 "af06f081281e71b2be02b04f6166a65f5ba8f68a3d5d836048cb7a10b4b61b45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ClayWarren/taskforceai-tui/releases/download/v0.11.0/taskforceai-cli-linux-arm64.tar.gz"
      sha256 "4830262eb3b483197197b5f5c1f1724851630bdfe5625722a58b5bbcabd4ff24"
    end
    on_intel do
      url "https://github.com/ClayWarren/taskforceai-tui/releases/download/v0.11.0/taskforceai-cli-linux-amd64.tar.gz"
      sha256 "802dee5bd0f8d943880ca63550a6002101157f4885015d81d221f82765618241"
    end
  end

  def install
    bin.install "taskforceai"
    bin.install "taskforceai-app-server"
  end

  test do
    assert_match 'Usage:', shell_output("#{bin}/taskforceai --help")
  end
end
