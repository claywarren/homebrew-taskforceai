
          # typed: false

          # frozen_string_literal: true

          

          # Formula for the TaskForceAI CLI

          class TaskforceaiCli < Formula

            desc 'Command-line interface for TaskForceAI'

            homepage 'https://taskforceai.chat'

            version "0.10.1"

            license 'MIT'

          

            on_macos do

              on_arm do

                url "https://github.com/ClayWarren/taskforceai-tui/releases/download/v0.10.1/taskforceai-cli-darwin-arm64.tar.gz"

                sha256 "91395d94b34fd5d676ee6df5c0131d00b2b0ca8a1ea9a168e125eb94a6f25068  taskforceai-cli-darwin-arm64.tar.gz"

              end

              on_intel do

                url "https://github.com/ClayWarren/taskforceai-tui/releases/download/v0.10.1/taskforceai-cli-darwin-amd64.tar.gz"

                sha256 "ca50be667742fdca9774f4336cb0f8712e2b7306dd9f4a7e636d32ed105ca7ad  taskforceai-cli-darwin-amd64.tar.gz"

              end

            end

          

            on_linux do

              on_arm do

                url "https://github.com/ClayWarren/taskforceai-tui/releases/download/v0.10.1/taskforceai-cli-linux-arm64.tar.gz"

                sha256 "b1db58211e5c669c1e8086fa88004087dd424d068833784eab8c3e62e7c993e7  taskforceai-cli-linux-arm64.tar.gz"

              end

              on_intel do

                url "https://github.com/ClayWarren/taskforceai-tui/releases/download/v0.10.1/taskforceai-cli-linux-amd64.tar.gz"

                sha256 "78c8345855f6f2aacf390402edcfe7eb063ee06a4c73e37ad2ae811eb8cf4965  taskforceai-cli-linux-amd64.tar.gz"

              end

            end

          
            def install
    # The archive contains a single binary named taskforceai-os-arch
    # We rename it to just "taskforceai" during installation
    os = OS.mac? ? "darwin" : "linux"
    arch = Hardware::CPU.arm? ? "arm64" : "amd64"
    bin.install "taskforceai-#{os}-#{arch}" => "taskforceai"
  end

  test do
    # A simple test to check if the binary is executable and returns help output.
    assert_match 'Usage:', shell_output("#{bin}/taskforceai --help")
  end
end
