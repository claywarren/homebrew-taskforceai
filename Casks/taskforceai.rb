# typed: false
# frozen_string_literal: true

cask 'taskforceai' do
  version '0.2.0'

  on_arm do
    url 'https://taskforceai.chat/api/download/desktop/macos/latest',
        verified: 'taskforceai.chat/'
    sha256 '74bd6bbcf88a1095ae41dda9a03a98724dfd0c9a6f232284578b38f01ccd0ea6'
  end

  on_intel do
    url 'https://taskforceai.chat/api/download/desktop/macos/latest',
        verified: 'taskforceai.chat/'
    sha256 '6f69eca1e86aa893da17c57c4dae09de2b13bf4a83dcec571d823dac48bed01b'
  end

  name 'TaskForceAI'
  desc 'Desktop application for TaskForceAI'
  homepage 'https://taskforceai.chat/'

  auto_updates true

  app 'TaskForceAI.app'

  # This bundle identifier should be verified from your tauri.conf.json
  uninstall quit: 'com.taskforceai.desktop'

  zap trash: [
    '~/Library/Application Support/com.taskforceai.desktop',
    '~/Library/Caches/com.taskforceai.desktop',
    '~/Library/Preferences/com.taskforceai.desktop.plist',
    '~/Library/Saved Application State/com.taskforceai.desktop.savedState',
    '~/Library/WebKit/com.taskforceai.desktop'
  ]
end
