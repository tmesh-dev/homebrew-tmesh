class Tmesh < Formula
  desc "TMesh private device cloud CLI and runtime"
  homepage "https://github.com/tmesh-network/tmesh"
  version "0.1.12"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.12/tmesh_v0.1.12_darwin_arm64.tar.gz"
      sha256 "98087989847d86c887cac456a3677126c01ed7bbd6187edb7013a36741ea518f"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.12/tmesh_v0.1.12_darwin_amd64.tar.gz"
      sha256 "d59593555d6eb167e609fc3f5c7076e08c70a6065d5601382eaefc98b784e55a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.12/tmesh_v0.1.12_linux_arm64.tar.gz"
      sha256 "1baca2ab18134f61b49fed1dd0fd34c0ff086b32ffaefdf49b8e6f72ff6669fb"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.12/tmesh_v0.1.12_linux_amd64.tar.gz"
      sha256 "e6bd84ffee85fc4f6238de1539a66959167af7dd435a9de9952ddd5bc9ef3f80"
    end
  end

  def install
    bin.install "tmesh"
  end

  test do
    assert_match "tmesh", shell_output("#{bin}/tmesh version")
  end
end
