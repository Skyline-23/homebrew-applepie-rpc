cask "applepie-rpc" do
  version "0.1.31"
  sha256 "a9ed1258d779d99755a3872e66762525ec40648f5f8b7b3d7d7f63046ef6c98c"

  url "https://github.com/Skyline-23/Applepie-RPC/releases/download/v#{version}/Applepie-RPC-v#{version}.dmg",
      verified: "github.com/Skyline-23/Applepie-RPC/"
  name "Applepie-RPC"
  desc "macOS menu bar app that publishes now-playing info to Discord Rich Presence"
  homepage "https://github.com/Skyline-23/Applepie-RPC"

  livecheck do
    url "https://github.com/Skyline-23/Applepie-RPC/releases/latest/download/appcast.xml"
    strategy :sparkle
  end

  app "Applepie-RPC.app"

  zap trash: [
    "~/Library/Application Support/Applepie-RPC",
    "~/Library/Preferences/com.skyline23.Applepie-RPC.plist",
  ]
end
