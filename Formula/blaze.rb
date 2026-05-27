class Blaze < Formula
  desc "Salesforce AI DevOps Agent CLI"
  homepage "https://github.com/igness-ai/blaze-cli"
  version "0.4.2"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/blaze-cli/releases/download/v0.4.2/blaze-v0.4.2-aarch64-apple-darwin.tar.gz"
    sha256 "86673883b856d3ef2ae3806cbece799086c2dfe6e3e3ff4ad9afcfc46e06d686"
  end

  def install
    bin.install "blaze"
  end

  test do
    system "#{bin}/blaze", "--version"
  end
end
