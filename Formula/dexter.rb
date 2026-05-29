class Dexter < Formula
  desc "A lightning-fast Elixir language server"
  homepage "https://github.com/remoteoss/dexter"
  license "MIT"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://github.com/remoteoss/dexter/releases/download/v0.7.0/dexter_Darwin_arm64.tar.gz"
      sha256 "103d8887cbf7fcffe6d03265a1d7d9c70dca0be7b1391058b337063f91d31018"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/remoteoss/dexter/releases/download/v0.7.0/dexter_Linux_x86_64.tar.gz"
      sha256 "60e9f87e66994d8c789d41c4b46c047257250245668468276584b89e3b4affc9"
    end
    on_arm do
      url "https://github.com/remoteoss/dexter/releases/download/v0.7.0/dexter_Linux_arm64.tar.gz"
      sha256 "56d7fc367a5ba33b13993ff6adf6aefe60b4eaad4c4928404378c522bee39678"
    end
  end

  def install
    bin.install "dexter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexter version")
  end
end
