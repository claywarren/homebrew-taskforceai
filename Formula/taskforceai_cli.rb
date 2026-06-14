# typed: false
# frozen_string_literal: true

class TaskforceaiCli < Formula
  desc 'Command-line interface for TaskForceAI'
  homepage 'https://taskforceai.chat'
  version "0.11.3"
  license 'MIT'

  on_macos do
    on_arm do
      url "https://github.com/ClayWarren/taskforceai-open/releases/download/v0.11.3/taskforceai-cli-darwin-arm64.tar.gz"
      sha256 "710a18cff4f4bdee53ebec23b94f9d6d50a6c1ca21f77bca1396d02f11ff86c9"
    end
    on_intel do
      url "https://github.com/ClayWarren/taskforceai-open/releases/download/v0.11.3/taskforceai-cli-darwin-amd64.tar.gz"
      sha256 "a0814dbd477fb37f2b8f2a177f6df9df71084c459fdb240351466dd4c8264582"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ClayWarren/taskforceai-open/releases/download/v0.11.3/taskforceai-cli-linux-arm64.tar.gz"
      sha256 "ac98a20fbcd0802531c35743dfc3eb5a109131b7c7469877d8fbfbf18b18c065"
    end
    on_intel do
      url "https://github.com/ClayWarren/taskforceai-open/releases/download/v0.11.3/taskforceai-cli-linux-amd64.tar.gz"
      sha256 "0b55cb8e727e3d8f40954909a10615b0c0fbaead2e2c337e40d7802a5729a41a"
    end
  end

  def install
    if OS.mac?
      suffix = Hardware::CPU.arm? ? "darwin-arm64" : "darwin-amd64"
    elsif OS.linux?
      suffix = Hardware::CPU.arm? ? "linux-arm64" : "linux-amd64"
    else
      odie "Unsupported platform"
    end

    bin.install "taskforceai-#{suffix}" => "taskforceai"
    bin.install "taskforceai-app-server-#{suffix}" => "taskforceai-app-server"
  end

  test do
    assert_match 'Usage:', shell_output("#{bin}/taskforceai --help")
  end
end
