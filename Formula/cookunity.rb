class Cookunity < Formula
  desc "Unofficial CLI for managing your CookUnity meal subscription"
  homepage "https://github.com/sergiosegrera/cookunity-cli"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sergiosegrera/cookunity-cli/releases/download/v1.1.0/cookunity-macos-arm64.tar.gz"
      sha256 "30ab6694ff6946679bcb48456f7884c3ef91d43f93e849e62c54fba50928c125"
    else
      url "https://github.com/sergiosegrera/cookunity-cli/releases/download/v1.1.0/cookunity-macos-x64.tar.gz"
      sha256 "9dbafb9de8c8c639d3456e11261f5820fbbd0a612ca267a708d38c36cec8ff9a"
    end
  end

  def install
    bin.install "cookunity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cookunity --version")
  end
end
