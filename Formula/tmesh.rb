class Tmesh < Formula
  desc "TMesh private device cloud CLI and runtime"
  homepage "https://github.com/tmesh-network/tmesh"
  version "0.1.10"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.10/tmesh_v0.1.10_darwin_arm64.tar.gz"
      sha256 "0bff35dd93231ee31029a9319b4a0f338d563d14266a82f0c7d254d7e2bb25ce"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.10/tmesh_v0.1.10_darwin_amd64.tar.gz"
      sha256 "841e22760fd67d08f69bca36e7d2a08c070dd6f56f84c465b3e660db8da90040"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.10/tmesh_v0.1.10_linux_arm64.tar.gz"
      sha256 "004039acd2e76d097d79e27a3bcbefa793032e2d15b1315ae9daedeac61cc65b"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.10/tmesh_v0.1.10_linux_amd64.tar.gz"
      sha256 "84fbdfc16d18cc3d5663129e7ad0396c93ea1afc5ac77aca19a2fb4fb1d1f95d"
    end
  end

  def install
    bin.install "tmesh"
  end

  test do
    assert_match "tmesh", shell_output("#{bin}/tmesh version")
  end
end
