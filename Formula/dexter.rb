class Dexter < Formula
  desc "A lightning-fast Elixir language server"
  homepage "https://github.com/remoteoss/dexter"
  license "MIT"
  version "0.5.3"

  on_macos do
    on_arm do
      url "https://github.com/remoteoss/dexter/releases/download/v0.5.3/dexter_Darwin_arm64.tar.gz"
      sha256 "6204ae58d190f47d71e7b1472c1bd24bdea5dd79ff62bcd0b47ff869fb62cad0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/remoteoss/dexter/releases/download/v0.5.3/dexter_Linux_x86_64.tar.gz"
      sha256 "5d2df2120b13f5c872745de4e319e1f654551c04ad562804f2df0e722850b12a"
    end
    on_arm do
      url "https://github.com/remoteoss/dexter/releases/download/v0.5.3/dexter_Linux_arm64.tar.gz"
      sha256 "f421d5fdc16025b4beeab49fe6f7354c3620e21bece59180eec7d718eab49908"
    end
  end

  def install
    bin.install "dexter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexter version")
  end
end
