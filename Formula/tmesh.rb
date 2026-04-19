class Tmesh < Formula
  desc "TMesh private device cloud CLI and runtime"
  homepage "https://github.com/tmesh-network/tmesh"
  version "0.1.11"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.11/tmesh_v0.1.11_darwin_arm64.tar.gz"
      sha256 "d6c151c19edd3ba217b0269a37d7d86e9770c4cea45b318c521b15414ac589cf"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.11/tmesh_v0.1.11_darwin_amd64.tar.gz"
      sha256 "20acfa8fd5bd308fe278f1a22a301fb7bb614cb6f8a02c3cda9ce2a137dcaa78"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.11/tmesh_v0.1.11_linux_arm64.tar.gz"
      sha256 "1bb890514467cea277d88303c6db7fd3e882ba644649301ea42f5c032f27bc66"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.11/tmesh_v0.1.11_linux_amd64.tar.gz"
      sha256 "f5711e7cdf8c37a2afe127bcc0e8ae6a9d78511b0debe88a3cd462c44f927559"
    end
  end

  def install
    bin.install "tmesh"
  end

  test do
    assert_match "tmesh", shell_output("#{bin}/tmesh version")
  end
end
