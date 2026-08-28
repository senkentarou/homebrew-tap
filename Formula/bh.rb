class Bh < Formula
  desc "Fast, interactive bash history search with fuzzy matching and smart ranking"
  homepage "https://github.com/senkentarou/bh"
  url "https://github.com/senkentarou/bh/releases/download/v0.6.0/bh-aarch64-apple-darwin.tar.gz"
  version "0.6.0"
  sha256 "93f8b95e9df431e24a1c72e61423d7e7b06e27572d1a1da3755ab7c6817c32d6"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "bh"
  end

  test do
    assert_match "bh #{version}", shell_output("#{bin}/bh --version")
  end
end
