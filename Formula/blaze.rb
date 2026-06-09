class Blaze < Formula
  desc "Salesforce AI DevOps Agent CLI"
  homepage "https://github.com/igness-ai/blaze-cli"
  version "0.6.1"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/blaze-cli/releases/download/v0.6.1/blaze-v0.6.1-aarch64-apple-darwin.tar.gz"
    sha256 "6a756965d38ee54ea4a3f121ad4a8b81c58dd2f7c25720f97f76459ae75b8406"
  end

  def install
    bin.install "blaze"
  end

  test do
    system "#{bin}/blaze", "--version"
  end
end
