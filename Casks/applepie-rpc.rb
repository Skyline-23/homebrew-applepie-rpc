cask "applepie-rpc" do
  version "0.1.32"
  sha256 "4d153b03e448feeeda26e34bb4e1b7276648729daa7b2fc88a2853d5cca45360"

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
