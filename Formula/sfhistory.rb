class Sfhistory < Formula
  desc "Salesforce Time Machine — git-native rollback for AI-driven development"
  homepage "https://github.com/igness-ai/sfhistory"
  version "0.4.0"
  license :cannot_represent

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/igness-ai/sfhistory/releases/download/v0.4.0/sfhistory-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "023fad8c452c78c92392d51e8d91898597b1051acdc5c3b70540c41fc4ce98b0"
    else
      url "https://github.com/igness-ai/sfhistory/releases/download/v0.4.0/sfhistory-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "65d44a60a1dd3369c6641d19883996b33abd31b550982945bda45b017ef18f89"
    end
  end

  def install
    bin.install "sfhistory"
  end

  test do
    system "#{bin}/sfhistory", "--version"
  end
end
