class Tmesh < Formula
  desc "TMesh private device cloud CLI and runtime"
  homepage "https://github.com/tmesh-network/tmesh"
  version "0.1.3"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.3/tmesh_v0.1.3_darwin_arm64.tar.gz"
      sha256 "c93e92b3679369a81a0f34144d6b872a4d128a08fffe37f7ee826895cdb4f2bb"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.3/tmesh_v0.1.3_darwin_amd64.tar.gz"
      sha256 "0cb1de705849a6da8e12c216d7271ec010757e27907ba3c8c3756965ebcc0690"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.3/tmesh_v0.1.3_linux_arm64.tar.gz"
      sha256 "4a4fa65e8508ea0526eb55e4b947c69c263a9f5466344c4e924263cf15bad9b0"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.3/tmesh_v0.1.3_linux_amd64.tar.gz"
      sha256 "0e25dc9ca1e82dab5e36ecd23e3809c718bf382f4401b0b5b99a4c1f9cc9664c"
    end
  end

  def install
    bin.install "tmesh"
  end

  test do
    assert_match "tmesh", shell_output("#{bin}/tmesh version")
  end
end
