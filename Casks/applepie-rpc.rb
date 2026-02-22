cask "applepie-rpc" do
  version "0.1.25"
  sha256 "641c296a53f10fd835a2c98992b4c4d1167d192124c5822dbcfee86cfb8183cf"

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
