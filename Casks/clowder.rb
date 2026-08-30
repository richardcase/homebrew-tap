cask "clowder" do
  version "0.8.1"
  sha256 "be0fbbd87d3a2352591d5c6765f095e73e363f6a7660c90d2baf59155da56936"

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
