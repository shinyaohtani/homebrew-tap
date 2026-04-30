cask "linkkeeper" do
  version "1.0.1"
  sha256 "ac07d8dcfb25baf39bb411ec70068b9a8e124102ea337864b8baca1caec69f7a"

  url "https://github.com/shinyaohtani/link-keeper/releases/download/v1.0.1/LinkKeeper-#{version}.zip"
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
