# SPDX-FileCopyrightText: murk contributors
# SPDX-License-Identifier: MIT OR Apache-2.0

class Murk < Formula
  desc "Encrypted secrets manager for developers"
  homepage "https://murk.interrupted.sh"
  version "0.13.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/interrupted-sh/murk/releases/download/v#{version}/murk-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "470a7d881b7c96584d07ad1279abc4d94baf14db0eedb57b3073778d4c1c1b1c"
    end
    on_arm do
      url "https://github.com/interrupted-sh/murk/releases/download/v#{version}/murk-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "354347953c9255f337306fb23480b97d667ac759f42aedf2029e41989e7b66ce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/interrupted-sh/murk/releases/download/v#{version}/murk-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "92c85b538048ce7a546eb4433df3f8f6238a6cb059e99d8992fa0339e0a81260"
    end
    on_arm do
      url "https://github.com/interrupted-sh/murk/releases/download/v#{version}/murk-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cef211d0d723ad4ed35d93e889dd58b1dda75819b7b4725a3cb6c2d2bd665bad"
    end
  end

  def install
    bin.install "murk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murk --version")
  end
end
