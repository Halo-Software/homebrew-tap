cask "notes-by-halo" do
  version "1.1.0"
  sha256 "d4ea51d263b3e35bdf6b1608a37730d3574f972440b4fab772851807d3be31ff"

  url "https://github.com/Halo-Software/homebrew-tap/releases/download/v#{version}/Notes.by.Halo-darwin-arm64-#{version}.zip"
  name "Notes by Halo"
  desc "Useful markdown notes app featuring color tagging and BYOS sync"
  homepage "https://halo-software.github.io/notes"

  app "Notes by Halo.app"

  caveats <<~EOS
    Notes by Halo is distributed unsigned without Apple Developer notarization.
    If macOS displays a security warning on first launch, you can open it via:
      System Settings -> Privacy & Security -> Open Anyway
    (システム設定 -> プライバシーとセキュリティ -> 「このまま開く」)
  EOS
end
