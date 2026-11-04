cask "notes-by-halo" do
  version "1.1.0"
  sha256 "d4ea51d263b3e35bdf6b1608a37730d3574f972440b4fab772851807d3be31ff"

  url "https://github.com/Halo-Software/homebrew-tap/releases/download/v#{version}/Notes.by.Halo-darwin-arm64-#{version}.zip"
  name "Notes by Halo"
  desc "Useful markdown notes app featuring color tagging and BYOS sync"
  homepage "https://halo-software.github.io/notes"

  app "Notes by Halo.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Notes by Halo.app"]
  end

  caveats <<~EOS
    Notes by Halo is distributed unsigned without Apple Developer notarization.
    The quarantine attribute (com.apple.quarantine) is automatically removed
    during installation, and archive integrity is verified via the cask sha256 checksum.

    If macOS still displays a security warning on first launch, you can open it via:
      System Settings -> Privacy & Security -> Open Anyway
    (システム設定 -> プライバシーとセキュリティ -> 「このまま開く」)
  EOS
end
