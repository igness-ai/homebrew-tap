class Blaze < Formula
  desc "Salesforce AI DevOps Agent CLI"
  homepage "https://github.com/igness-ai/blaze-cli"
  version "0.6.2"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/blaze-cli/releases/download/v0.6.2/blaze-v0.6.2-aarch64-apple-darwin.tar.gz"
    sha256 "3122231d8fd324b6264df00a00b10ef4879d749c95d349becdf6e900d0b28dfb"
  end

  def install
    bin.install "blaze"
  end

  test do
    system "#{bin}/blaze", "--version"
  end
end
