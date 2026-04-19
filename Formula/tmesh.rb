class Tmesh < Formula
  desc "TMesh private device cloud CLI and runtime"
  homepage "https://github.com/tmesh-network/tmesh"
  version "0.1.5"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.5/tmesh_v0.1.5_darwin_arm64.tar.gz"
      sha256 "35d056c30dd23eb9fcf342cb6d0132b432f69db7d6834bd03f77ec02eeeaa830"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.5/tmesh_v0.1.5_darwin_amd64.tar.gz"
      sha256 "ebea5803534fdcc0e24b57d19c3b95022349656a8c7fa13ba8b15b54e720cfaf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.5/tmesh_v0.1.5_linux_arm64.tar.gz"
      sha256 "fd74c0f50f497c7196a557ca40936b9f32a78efa6e1db8d40e6c31187bef0047"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.5/tmesh_v0.1.5_linux_amd64.tar.gz"
      sha256 "9cc19be7cab36724539a3f07a54bbe1a7a28848b2c62e9715245a4a1a697216c"
    end
  end

  def install
    bin.install "tmesh"
  end

  test do
    assert_match "tmesh", shell_output("#{bin}/tmesh version")
  end
end
