cask "linkkeeper" do
  version "1.0.4"
  sha256 "47b331b222f4b8c97a7215f0eac5bb622eb602a128199c2c02afb90b9ddb8137"

  url "https://github.com/shinyaohtani/link-keeper/releases/download/v1.0.4/LinkKeeper-#{version}.zip"
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
