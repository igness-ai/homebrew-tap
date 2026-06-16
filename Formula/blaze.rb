class Blaze < Formula
  desc "Salesforce AI DevOps Agent CLI"
  homepage "https://github.com/igness-ai/blaze-cli"
  version "0.7.1"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/blaze-cli/releases/download/v0.7.1/blaze-v0.7.1-aarch64-apple-darwin.tar.gz"
    sha256 "8c60cecdfcf488deb90d108990568fecb4bc7ed3897a156d48de9dc0df7c516a"
  end

  def install
    bin.install "blaze"
  end

  test do
    system "#{bin}/blaze", "--version"
  end
end
