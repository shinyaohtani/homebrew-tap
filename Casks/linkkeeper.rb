cask "linkkeeper" do
  version "1.0.3"
  sha256 "0ff3d9721e9b22d27a872c80f0801c8c6d78747e9770365a85b4b723a2c1c169"

  url "https://github.com/shinyaohtani/link-keeper/releases/download/v1.0.3/LinkKeeper-#{version}.zip"
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
