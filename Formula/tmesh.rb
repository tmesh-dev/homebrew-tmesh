class Tmesh < Formula
  desc "TMesh private device cloud CLI and runtime"
  homepage "https://github.com/tmesh-network/tmesh"
  version "0.1.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.0/tmesh_v0.1.0_darwin_arm64.tar.gz"
      sha256 "1d9e7512d9d9eddab1423e5ca2fec2cb317fd04c3a4d48829fd5108e04fa42bf"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.0/tmesh_v0.1.0_darwin_amd64.tar.gz"
      sha256 "1fc276be2f2690082edace6f6d68a06138f3df89d000b2aa03681919e59a7fe7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.0/tmesh_v0.1.0_linux_arm64.tar.gz"
      sha256 "0941d42412831598b9bbbdc43f6f9aa192621a3d48eb3fe0e7ed1cdd4d1b21da"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.0/tmesh_v0.1.0_linux_amd64.tar.gz"
      sha256 "e0c6ca2f77344a0df07a49d797b7b8fafece4fb9fd2c6f70d0b31bf61c53fe32"
    end
  end

  def install
    bin.install "usr/local/bin/tmesh" => "tmesh"
  end

  test do
    assert_match "tmesh", shell_output("#{bin}/tmesh version")
  end
end
