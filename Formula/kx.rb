class Kx < Formula
  desc "kubectl wrapper that selects resources by index instead of by name"
  homepage "https://github.com/jzills/kx"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jzills/kx/releases/download/v0.10.0/kx_v0.10.0_darwin_amd64.tar.gz"
      sha256 "c09e6718cac39114e3e8d86b05ff0e6c6917d009db168e61835a2a4c990c7db2"
    end
    on_arm do
      url "https://github.com/jzills/kx/releases/download/v0.10.0/kx_v0.10.0_darwin_arm64.tar.gz"
      sha256 "4255274fe47a5d7ee78435c68a2c0faec9e976f21db9c5ac4c08c5cee9314a9b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jzills/kx/releases/download/v0.10.0/kx_v0.10.0_linux_amd64.tar.gz"
      sha256 "44ecfd9cc8361f00b8beadcf51cfde7ed5013ae6487770f27b45ced5586607a6"
    end
    on_arm do
      url "https://github.com/jzills/kx/releases/download/v0.10.0/kx_v0.10.0_linux_arm64.tar.gz"
      sha256 "71640b96e04e41cfe4d52be3e88e0cf629a47ce4f607ff971cb1946819861688"
    end
  end

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "kx"
    generate_completions_from_executable(bin/"kx", "completion")
  end

  test do
    assert_match "kx v#{version}", shell_output("#{bin}/kx --version")
    # kx reads its index history from a state file of its own, so this runs
    # without a cluster: pointed at an empty one, it says there is no listing
    # to spend an index against and exits 1.
    ENV["KX_STATE"] = testpath/"state.json"
    ENV["KX_CONFIG"] = testpath/"config.toml"
    assert_match "No state found", shell_output("#{bin}/kx state 2>&1", 1)
  end
end
