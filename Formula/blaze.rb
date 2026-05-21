class Blaze < Formula
  desc "Salesforce AI DevOps Agent CLI"
  homepage "https://github.com/igness-ai/blaze-cli"
  version "0.3.3"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/blaze-cli/releases/download/v0.3.3/blaze-v0.3.3-aarch64-apple-darwin.tar.gz"
    sha256 "40fe2b34dd7a1d835b40d5c193c760720daec90775818eaefcb0ae5bf6c4e146"
  end

  def install
    bin.install "blaze"
  end

  test do
    system "#{bin}/blaze", "--version"
  end
end
