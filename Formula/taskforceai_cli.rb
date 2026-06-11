# typed: false
# frozen_string_literal: true

class TaskforceaiCli < Formula
  desc 'Command-line interface for TaskForceAI'
  homepage 'https://taskforceai.chat'
  version '0.11.2'
  license 'MIT'

  on_macos do
    on_arm do
      url 'https://github.com/ClayWarren/taskforceai-tui/releases/download/v0.11.2/taskforceai-cli-darwin-arm64.tar.gz'
      sha256 'f06df5a1eb33a8fa55db6f4aa0198a397a9ea269985d88019ddd07aef0553eec'
    end
    on_intel do
      url 'https://github.com/ClayWarren/taskforceai-tui/releases/download/v0.11.2/taskforceai-cli-darwin-amd64.tar.gz'
      sha256 '9c86863e0394ada0d476db3baa0f94ba5186ae9f77d3167aedca7e6ac6fae72a'
    end
  end

  on_linux do
    on_arm do
      url 'https://github.com/ClayWarren/taskforceai-tui/releases/download/v0.11.2/taskforceai-cli-linux-arm64.tar.gz'
      sha256 '86201515c2df6cc7ebe65303deca51de852ff2de04306f30ae0929306e6a1125'
    end
    on_intel do
      url 'https://github.com/ClayWarren/taskforceai-tui/releases/download/v0.11.2/taskforceai-cli-linux-amd64.tar.gz'
      sha256 '4077c93e5ed10a75441019c49ae6bce433b21e85937fa4dbd59eff96d4fe2a26'
    end
  end

  def install
    bin.install 'taskforceai'
    bin.install 'taskforceai-app-server'
  end

  test do
    assert_match 'Usage:', shell_output("#{bin}/taskforceai --help")
  end
end
