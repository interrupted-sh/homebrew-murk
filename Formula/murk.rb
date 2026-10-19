class Murk < Formula
  desc "Encrypted secrets manager for developers"
  homepage "https://murk.interrupted.sh"
  version "0.12.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/interrupted-sh/murk/releases/download/v#{version}/murk-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "87e530774ce04c42e4bb62ffb110244c54332835a4d225f66d1707d7e27f6f2a"
    end
    on_arm do
      url "https://github.com/interrupted-sh/murk/releases/download/v#{version}/murk-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4dc2bcccbd2c169e16bb1dab1d214bbcc276599cd89ea8600f839a1e3927875b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/interrupted-sh/murk/releases/download/v#{version}/murk-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f15b44edd6c718807e9b756d5face3d33fb97632b0893daedf00c58d9164d6a"
    end
    on_arm do
      url "https://github.com/interrupted-sh/murk/releases/download/v#{version}/murk-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1d50455f6d8114198b81b9210422cf3babeb513987cbf8a523e6bb24d6f97ec9"
    end
  end

  def install
    bin.install "murk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murk --version")
  end
end
