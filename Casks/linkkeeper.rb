cask "linkkeeper" do
  version "1.0.2"
  sha256 "4d92e0ca0ba20a8261b5ef34033d5c64d1ff57e2d9cfc8b6db08449d189f0dae"

  url "https://github.com/shinyaohtani/link-keeper/releases/download/v1.0.2/LinkKeeper-#{version}.zip"
  name "LinkKeeper"
  desc "macOS native bookmark manager utility"
  homepage "https://github.com/shinyaohtani/link-keeper"

  depends_on macos: ">= :ventura"

  app "LinkKeeper.app"

  zap trash: [
    "~/Library/Application Support/LinkKeeper",
    "~/Library/Preferences/com.aabce.LinkKeeper.plist",
    "~/Library/Saved Application State/com.aabce.LinkKeeper.savedState",
  ]
end
