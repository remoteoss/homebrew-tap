class Dexter < Formula
  desc "A lightning-fast Elixir language server"
  homepage "https://github.com/remoteoss/dexter"
  license "MIT"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/remoteoss/dexter/releases/download/v0.6.0/dexter_Darwin_arm64.tar.gz"
      sha256 "b3bdf0fc783e059abf7670b1162c7c9fdcc815cbeaab2899781272b6ee4585f6"
    end

    on_intel do
      url "https://github.com/remoteoss/dexter/archive/refs/tags/v0.6.0.tar.gz"
      sha256 sha256 "53344b29a92ce686383c7409bc3bc7e2c639af760cd4682d14956988b574d357"
      depends_on "go" => :build
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/remoteoss/dexter/releases/download/v0.6.0/dexter_Linux_x86_64.tar.gz"
      sha256 "78582a890739937332decd00c0b8553512f1ad526f3c414fd6d654aaebb8a2e6"
    end
    on_arm do
      url "https://github.com/remoteoss/dexter/releases/download/v0.6.0/dexter_Linux_arm64.tar.gz"
      sha256 "c387f4dc14c4d6cf9c9fbd91c2ef16e0f2530c54617900635b11a4e1fe3cf2ae"
    end
  end

  def install
    if OS.mac? && Hardware::CPU.intel?
      system "go", "build", "-o", "dexter", "./cmd/"
    end
    bin.install "dexter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexter version")
  end
end
