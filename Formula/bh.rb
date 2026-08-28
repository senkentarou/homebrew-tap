class Bh < Formula
  desc "Fast, interactive bash history search with fuzzy matching and smart ranking"
  homepage "https://github.com/senkentarou/bh"
  url "https://github.com/senkentarou/bh/releases/download/v0.6.1/bh-aarch64-apple-darwin.tar.gz"
  sha256 "9e75ff8ff86d937bb0acf0386b9cc161b7dd9e037ac8fbd9a23d20429a45b782"
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
