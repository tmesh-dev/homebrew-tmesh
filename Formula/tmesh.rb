class Tmesh < Formula
  desc "TMesh private device cloud CLI and runtime"
  homepage "https://github.com/tmesh-network/tmesh"
  version "0.1.7"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.7/tmesh_v0.1.7_darwin_arm64.tar.gz"
      sha256 "c10885115ca3a59b9781660b6e70e29b3404198e115d446dbf5c03637fb20632"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.7/tmesh_v0.1.7_darwin_amd64.tar.gz"
      sha256 "bac1f8e05df9772ad9f0d28aae26c0da728828c520f181099812a46ea351748d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.tmesh.dev/releases/v0.1.7/tmesh_v0.1.7_linux_arm64.tar.gz"
      sha256 "ee88b572f447f9620d4b6b70ea7ace5657f2b16d23fb99f962d5e105f12228b7"
    else
      url "https://downloads.tmesh.dev/releases/v0.1.7/tmesh_v0.1.7_linux_amd64.tar.gz"
      sha256 "d531c77f8de12471b76c416a269ffeed5f52984d02d068399aa6744903a9718a"
    end
  end

  def install
    bin.install "tmesh"
  end

  test do
    assert_match "tmesh", shell_output("#{bin}/tmesh version")
  end
end
