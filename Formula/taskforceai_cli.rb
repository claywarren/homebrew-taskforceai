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
      url 'https://github.com/ClayWarren/grok4fastheavy/releases/download/v0.4.0/taskforceai-cli-arm64'
      sha256 'PLACEHOLDER_ARM64_SHA256' # This will be replaced by your CI/CD pipeline
    end
    on_intel do
      url 'https://github.com/ClayWarren/grok4fastheavy/releases/download/v0.4.0/taskforceai-cli-amd64'
      sha256 'PLACEHOLDER_AMD64_SHA256' # This will be replaced by your CI/CD pipeline
    end
  end

  def install
    # The correct binary is downloaded based on the architecture,
    # but it retains its original name from the URL. We rename it to `taskforceai`
    # so the user can simply run `taskforceai`.
    if Hardware::CPU.arm?
      bin.install 'taskforceai-cli-arm64' => 'taskforceai'
    else
      bin.install 'taskforceai-cli-amd64' => 'taskforceai'
    end
  end

  test do
    # A simple test to check if the binary is executable and returns help output.
    assert_match 'Usage:', shell_output("#{bin}/taskforceai --help")
  end
end
