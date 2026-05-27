class Blaze < Formula
  desc "Salesforce AI DevOps Agent CLI"
  homepage "https://github.com/igness-ai/blaze-cli"
  version "0.4.1"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/blaze-cli/releases/download/v0.4.1/blaze-v0.4.1-aarch64-apple-darwin.tar.gz"
    sha256 "00e5a79075dbf2a807ff38b52691da858b2eddf6b7f6a953a09787104f34f07e"
  end

  def install
    bin.install "blaze"
  end

  test do
    system "#{bin}/blaze", "--version"
  end
end
