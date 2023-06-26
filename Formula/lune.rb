class Lune < Formula
  desc "Standalone Luau script runtime 🌙"
  homepage "https://lune.gitbook.io/"
  url "https://github.com/filiptibell/lune/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "dd8fac5f2dad70b4da50df61abf97b38604f93985e52e863dfddbfc26c1b5e83"
  license "MPL-2.0"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_monterey: "c8a406a7c7e70252f987e7104c608fffdf9cc7d7df15485b8d4fbe366ed62b8f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "./packages/cli"
  end

  test do
    system "false"
  end
end
