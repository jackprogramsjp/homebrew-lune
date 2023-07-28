class Lune < Formula
  desc "Standalone Luau script runtime 🌙"
  homepage "https://lune-org.github.io/docs"
  url "https://github.com/filiptibell/lune/archive/refs/tags/v0.7.5.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license "MPL-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "./packages/cli"
  end

  test do
    system "false"
  end
end
