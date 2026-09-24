cask "shipboard" do
  version "1.1.1"
  sha256 "2dee4e153f1d08b61b9cafbebd6f5f631d2e23400f186a70667246ef9b1c1477"

  url "https://github.com/keenanlk/shipboard/releases/download/v#{version}/ShipBoard-#{version}.dmg"
  name "ShipBoard"
  desc "Menu bar status board for CI/CD pipelines and deployments"
  homepage "https://shipboardapp.com/"

  livecheck do
    url "https://shipboardapp.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "ShipBoard.app"

  zap trash: [
    "~/Library/Caches/com.keenankaufman.codepipeline-viewer",
    "~/Library/HTTPStorages/com.keenankaufman.codepipeline-viewer",
    "~/Library/Preferences/com.keenankaufman.codepipeline-viewer.plist",
  ]
end
