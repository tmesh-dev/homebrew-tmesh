class Tmesh < Formula
  desc "TMesh private device cloud CLI and runtime"
  homepage "https://github.com/tmesh-network/tmesh"
  version "0.1.6"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.6/tmesh_v0.1.6_darwin_arm64.tar.gz"
      sha256 "61de7a89bfb12760a1882a269f5236268b98ad5caa5345bb90cb83e516ae2783"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.6/tmesh_v0.1.6_darwin_amd64.tar.gz"
      sha256 "defb8898e209ac9f407aa0f4e1426d40ca043e7b219c9a570d112d237380858c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.6/tmesh_v0.1.6_linux_arm64.tar.gz"
      sha256 "9a9fb0bb772cf1f4e482e74d207cc45bc2a3da5b47529b31bc5336f61302bfb4"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.6/tmesh_v0.1.6_linux_amd64.tar.gz"
      sha256 "19562176534a3a3193eb3e3d68c7d03158204c466afe3d383b82d476dd5d0565"
    end
  end

  def install
    bin.install "tmesh"
  end

  test do
    assert_match "tmesh", shell_output("#{bin}/tmesh version")
  end
end
