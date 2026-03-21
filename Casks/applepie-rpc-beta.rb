cask "applepie-rpc-beta" do
  version "0.1.30-beta.2"
  sha256 "051c5d354059a9dbdfca608aab1a27f97db1d57f5ce80c71e99fc4430ca9233c"

  url "https://github.com/Skyline-23/Applepie-RPC/releases/download/v#{version}/Applepie-RPC-v#{version}.dmg",
      verified: "github.com/Skyline-23/Applepie-RPC/"
  name "Applepie-RPC"
  desc "Beta macOS menu bar app that publishes now-playing info to Discord Rich Presence"
  homepage "https://github.com/Skyline-23/Applepie-RPC"

  livecheck do
    url "https://raw.githubusercontent.com/Skyline-23/Applepie-RPC/update-feed/beta/appcast.xml"
    strategy :sparkle
  end

  app "Applepie-RPC.app"

  zap trash: [
    "~/Library/Application Support/Applepie-RPC",
    "~/Library/Preferences/com.skyline23.Applepie-RPC.plist",
  ]
end
