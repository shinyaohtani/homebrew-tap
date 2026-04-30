cask "linkkeeper" do
  version "1.0"
  sha256 "8cfd13246c7818a003638044b07df37a1a26c7fa23ca3ae16e43dc024257f6e5"

  url "https://github.com/shinyaohtani/link-keeper/releases/download/v1.0.0/LinkKeeper-#{version}.zip"
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
