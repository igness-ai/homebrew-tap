class Blaze < Formula
  desc "Salesforce AI DevOps Agent CLI"
  homepage "https://github.com/igness-ai/blaze-cli"
  version "0.4.0"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/blaze-cli/releases/download/v0.4.0/blaze-v0.4.0-aarch64-apple-darwin.tar.gz"
    sha256 "3276b9ef09e3f2c130aabaaab41d8c841190753b42e04a4db57fca6d35b9d294"
  end

  def install
    bin.install "blaze"
  end

  test do
    system "#{bin}/blaze", "--version"
  end
end
