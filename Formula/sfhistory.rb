class Sfhistory < Formula
  desc "Salesforce Time Machine — git-native rollback for AI-driven development"
  homepage "https://github.com/igness-ai/sfhistory"
  version "0.4.2"
  license :cannot_represent

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/igness-ai/sfhistory/releases/download/v0.4.2/sfhistory-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "ec1241220289c4549328d738a32ba359fa0c7a299ba08786c684b73f9a83fa9a"
    else
      url "https://github.com/igness-ai/sfhistory/releases/download/v0.4.2/sfhistory-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "84c16fb32ce7ef856e26d76fc55c5fb2204480a2f54f66e992e48b4264750821"
    end
  end

  def install
    bin.install "sfhistory"
  end

  test do
    system "#{bin}/sfhistory", "--version"
  end
end
