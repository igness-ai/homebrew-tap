class Sfhistory < Formula
  desc "Salesforce Time Machine — git-native rollback for AI-driven development"
  homepage "https://github.com/igness-ai/sfhistory"
  version "0.4.1"
  license :cannot_represent

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/igness-ai/sfhistory/releases/download/v0.4.1/sfhistory-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "a4fe8207fb76fc68f30dd2b2c81b0e66fe14cd67a15591412ae9cad8d7d1290e"
    else
      url "https://github.com/igness-ai/sfhistory/releases/download/v0.4.1/sfhistory-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "f8fe015357180ad4f00726a9efbcce188b6a7a58716d8b5e061e6e8b35e7bef8"
    end
  end

  def install
    bin.install "sfhistory"
  end

  test do
    system "#{bin}/sfhistory", "--version"
  end
end
