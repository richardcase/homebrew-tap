cask "clowder" do
  version "0.9.0"
  sha256 "5642d04511194f532b35d63257073d6c0e746a36e8e60a2b2dbd919353a145b5"

  url "https://github.com/richardcase/clowder/releases/download/v#{version}/Clowder-#{version}-macos.dmg",
      verified: "github.com/richardcase/clowder/"
  name "Clowder"
  desc "Cross-platform agent-orchestrator terminal"
  homepage "https://getclowder.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Clowder.app"
  binary "#{appdir}/Clowder.app/Contents/MacOS/clowder"

  zap trash: "~/.config/clowder"
end
