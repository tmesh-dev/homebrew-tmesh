class Tmesh < Formula
  desc "TMesh private device cloud CLI and runtime"
  homepage "https://github.com/tmesh-network/tmesh"
  version "0.1.8"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.8/tmesh_v0.1.8_darwin_arm64.tar.gz"
      sha256 "5524c275565e3b2bbb0fa45fa482d7fb34dec47cbbcf43de3ad1ee3c656e1577"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.8/tmesh_v0.1.8_darwin_amd64.tar.gz"
      sha256 "0ff25160756fee3937de74bac336306a117e367fcc5973a3d74ec01f2ac52aed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.8/tmesh_v0.1.8_linux_arm64.tar.gz"
      sha256 "fe0a653403a0abb804e7f45e49ed62bd48a986f81eab9355d19bf4ac8260b1d0"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.8/tmesh_v0.1.8_linux_amd64.tar.gz"
      sha256 "55fcd4187a8229d27ca3706e26074c4165939ba000db101398f8383105b988b4"
    end
  end

  def install
    bin.install "tmesh"
  end

  test do
    assert_match "tmesh", shell_output("#{bin}/tmesh version")
  end
end
