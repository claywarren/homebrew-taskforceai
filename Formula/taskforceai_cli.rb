# typed: false
# frozen_string_literal: true

# Formula for the TaskForceAI CLI
class TaskforceaiCli < Formula
  desc 'Command-line interface for TaskForceAI'
  homepage 'https://taskforceai.chat'
  version "0.10.0"
  license 'MIT'

  on_macos do
    on_arm do
      url 'https://github.com/ClayWarren/taskforceai-tui/releases/download/v0.10.0/taskforceai-cli-darwin-arm64.tar.gz'
      sha256 'PLACEHOLDER_ARM64_SHA256' # This will be replaced by your CI/CD pipeline
    end
    on_intel do
      url 'https://github.com/ClayWarren/taskforceai-tui/releases/download/v0.10.0/taskforceai-cli-darwin-amd64.tar.gz'
      sha256 'PLACEHOLDER_AMD64_SHA256' # This will be replaced by your CI/CD pipeline
    end
  end

  def install
    bin.install "taskforceai"
  end

  test do
    # A simple test to check if the binary is executable and returns help output.
    assert_match 'Usage:', shell_output("#{bin}/taskforceai --help")
  end
end
