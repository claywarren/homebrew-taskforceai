# typed: false
# frozen_string_literal: true

cask 'taskforceai' do
  version '0.4.0'
  sha256 'PLACEHOLDER_UNIVERSAL_DMG_SHA256' # This will be replaced by your CI/CD pipeline

  url "https://github.com/ClayWarren/grok4fastheavy/releases/download/v#{version}/TaskForceAI-#{version}.dmg",
      verified: 'github.com/ClayWarren/grok4fastheavy/'

  name 'TaskForceAI'
  desc 'Desktop application for TaskForceAI'
  homepage 'https://taskforceai.chat/'

  auto_updates true

  app 'TaskForceAI.app'

  # This bundle identifier should be verified from your tauri.conf.json
  uninstall quit: 'com.taskforceai.app'

  zap trash: [
    '~/Library/Application Support/com.taskforceai.app',
    '~/Library/Caches/com.taskforceai.app',
    '~/Library/Preferences/com.taskforceai.app.plist',
    '~/Library/Saved Application State/com.taskforceai.app.savedState',
    '~/Library/WebKit/com.taskforceai.app'
  ]
end
