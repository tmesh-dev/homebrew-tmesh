class Tmesh < Formula
  desc "TMesh private device cloud CLI and runtime"
  homepage "https://github.com/tmesh-network/tmesh"
  version "0.1.2"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.2/tmesh_v0.1.2_darwin_arm64.tar.gz"
      sha256 "32ccd081f2cb454847bed84430098b458bd79867e694e45cc72ec4721fb5772b"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.2/tmesh_v0.1.2_darwin_amd64.tar.gz"
      sha256 "be5292cc104ee818894916268f725cb777606200d5bbc268730976fcc51ad9bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.2/tmesh_v0.1.2_linux_arm64.tar.gz"
      sha256 "364380cc90cd7f5da9d86cbd0cdcb20134e65771b1ac5962abf09143b963455a"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.2/tmesh_v0.1.2_linux_amd64.tar.gz"
      sha256 "4512a952fddce4ba4eb54ab9551e6e2a61620e5102ff90e8fdd871dd49f7b13c"
    end
  end

  def install
    bin.install "tmesh"
  end

  test do
    assert_match "tmesh", shell_output("#{bin}/tmesh version")
  end
end
