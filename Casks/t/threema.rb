cask "threema" do
  version "1.2.38"
  sha256 "afac10b8921aee980000b5b006aee9c0fea9e2774ead6b6e92c36d61b60bc9f9"

  url "https://releases.threema.ch/web-electron/v1/release/Threema-Latest.dmg"
  name "Threema"
  desc "End-to-end encrypted instant messaging application"
  homepage "https://threema.ch/"

  livecheck do
    url "https://threema.ch/en/whats-new"
    regex(/Threema\s*for\s*Desktop\s*(\d+(?:\.\d+)+)/i)
  end

  app "Threema.app"

  zap trash: [
    "~/Library/Application Support/threema-consumer-web",
    "~/Library/Logs/threema-consumer-web",
    "~/Library/Preferences/threema-consumer-web.plist",
    "~/Library/Saved Application State/threema-consumer-web.savedState",
  ]
end
