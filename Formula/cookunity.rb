class Cookunity < Formula
  desc "Unofficial CLI for managing your CookUnity meal subscription"
  homepage "https://github.com/sergiosegrera/cookunity-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sergiosegrera/cookunity-cli/releases/download/v1.0.0/cookunity-macos-arm64.tar.gz"
      sha256 "placeholder_updated_automatically_on_release"
    else
      url "https://github.com/sergiosegrera/cookunity-cli/releases/download/v1.0.0/cookunity-macos-x64.tar.gz"
      sha256 "placeholder_updated_automatically_on_release"
    end
  end

  def install
    bin.install "cookunity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cookunity --version")
  end
end
