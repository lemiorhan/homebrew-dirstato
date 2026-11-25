class Dirstato < Formula
  desc "Interactive, read-only disk usage explorer whose sizes match du"
  homepage "https://github.com/lemiorhan/dirstato"
  url "https://github.com/lemiorhan/dirstato/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8a77eeba540f8669a2f12810ba5057da3d6b1c5ecfcae5352843142aa588f9d8"
  license "Apache-2.0"
  head "https://github.com/lemiorhan/dirstato.git", branch: "main"

  depends_on "go" => :build
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "usage: dirstato [path] [--min SIZE]", shell_output("#{bin}/dirstato --help")
    assert_match "invalid size", shell_output("#{bin}/dirstato --min 5X #{testpath} 2>&1", 2)
  end
end
