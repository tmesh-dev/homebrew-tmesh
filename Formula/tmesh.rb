class Tmesh < Formula
  desc "TMesh private device cloud CLI and runtime"
  homepage "https://github.com/tmesh-network/tmesh"
  version "0.1.4"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.4/tmesh_v0.1.4_darwin_arm64.tar.gz"
      sha256 "35edd6405e396425ce61e8a248dfbebb7e2ed1c38abd1db3fca0698df3fc07df"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.4/tmesh_v0.1.4_darwin_amd64.tar.gz"
      sha256 "6df15a12ade546c6ca4f30c44347f17ae4afad26e3a7881d3b368f1e2f2e7bf0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.4/tmesh_v0.1.4_linux_arm64.tar.gz"
      sha256 "10e301b1708c01d992d4f7f95c83fdfa1bde413dde4e23954b2927a47573264e"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.4/tmesh_v0.1.4_linux_amd64.tar.gz"
      sha256 "96e3445204c2aaa1559256c7b0d53ec24ca3aa88eb07463fb7eb861e3f724d75"
    end
  end

  def install
    bin.install "tmesh"
  end

  test do
    assert_match "tmesh", shell_output("#{bin}/tmesh version")
  end
end
