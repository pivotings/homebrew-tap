class Glint < Formula
  desc "Git Log Intelligence - GitHub OSINT tool for analyzing commit history and user activity"
  homepage "https://github.com/pivotings/glint"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/pivotings/glint/releases/download/v#{version}/glint-macos-x86_64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_MACOS_X86_64"
    end

    on_arm do
      url "https://github.com/pivotings/glint/releases/download/v#{version}/glint-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_MACOS_ARM64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pivotings/glint/releases/download/v#{version}/glint-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_X86_64"
    end
  end

  def install
    bin.install "glint"
  end

  test do
    assert_match "glint", shell_output("#{bin}/glint --help", 0)
  end
end
