class Cookunity < Formula
  desc "Unofficial CLI for managing your CookUnity meal subscription"
  homepage "https://github.com/sergiosegrera/cookunity-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sergiosegrera/cookunity-cli/releases/download/v1.0.0/cookunity-macos-arm64.tar.gz"
      sha256 "2403c1b05de3a83e4934339fc2a9e35231e22db5e746c342241bfc41773d357b"
    else
      url "https://github.com/sergiosegrera/cookunity-cli/releases/download/v1.0.0/cookunity-macos-x64.tar.gz"
      sha256 "0ee79e94fd143577644de590b5ad3248d0b0ed5d3292e476337b9845d202428b"
    end
  end

  def install
    bin.install "cookunity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cookunity --version")
  end
end
