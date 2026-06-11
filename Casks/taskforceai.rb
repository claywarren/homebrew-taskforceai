# typed: false
# frozen_string_literal: true

cask 'taskforceai' do
  version '0.4.9'

  on_arm do
    url "https://huvic5ygnwxzwlgj.public.blob.vercel-storage.com/desktop/macos/TaskForceAI-#{version}-arm64.dmg",
        verified: 'taskforceai.chat/'
    sha256 'e1b94baab008642897e433576a4b978fc5ca5ff5771e14025175a220d753dba2'
  end

  on_intel do
    url "https://huvic5ygnwxzwlgj.public.blob.vercel-storage.com/desktop/macos/TaskForceAI-#{version}-x64.dmg",
        verified: 'taskforceai.chat/'
    sha256 '9a144e108bfc9e8cc25f019d113e14c4ee23f88683d8bd76679926e63ac90fc6'
  end

  name 'TaskForceAI'
  desc 'Desktop application for TaskForceAI'
  homepage 'https://taskforceai.chat/'

  auto_updates true

  app 'TaskForceAI.app'

  uninstall quit: 'com.taskforceai.desktop'

  zap trash: [
    '~/Library/Application Support/com.taskforceai.desktop',
    '~/Library/Caches/com.taskforceai.desktop',
    '~/Library/Preferences/com.taskforceai.desktop.plist',
    '~/Library/Saved Application State/com.taskforceai.desktop.savedState',
    '~/Library/WebKit/com.taskforceai.desktop'
  ]
end
