# typed: false
# frozen_string_literal: true

class TaskforceaiCli < Formula
  desc 'Command-line interface for TaskForceAI'
  homepage 'https://taskforceai.chat'
  version "0.11.1"
  license 'MIT'

  on_macos do
    on_arm do
      url "https://github.com/ClayWarren/taskforceai-tui/releases/download/v0.11.1/taskforceai-cli-darwin-arm64.tar.gz"
      sha256 "580d6353d18ce6cc5df774daa26a418e360240627e9da478bc2aae144de9af43"
    end
    on_intel do
      url "https://github.com/ClayWarren/taskforceai-tui/releases/download/v0.11.1/taskforceai-cli-darwin-amd64.tar.gz"
      sha256 "eba2ce6aef214962d7b9efba98d84819ba14e064a86637afdf0a7ae46fa01c07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ClayWarren/taskforceai-tui/releases/download/v0.11.1/taskforceai-cli-linux-arm64.tar.gz"
      sha256 "48ee43f7738edbc57eecfbd802abc1a4d4ff79adc5e2a3d89220ba4fadb0574a"
    end
    on_intel do
      url "https://github.com/ClayWarren/taskforceai-tui/releases/download/v0.11.1/taskforceai-cli-linux-amd64.tar.gz"
      sha256 "181f04c4a02cb56b0e73dc54b93f28b85cf6f6dbe35fb9cb644a7c46d04a4f01"
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
