class Ecto < Formula
  desc "Next.js reconnaissance tool"
  homepage "https://github.com/pivotings/ecto"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/pivotings/ecto/releases/download/v#{version}/ecto-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_AMD64"
    end

    on_arm do
      url "https://github.com/pivotings/ecto/releases/download/v#{version}/ecto-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_ARM64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pivotings/ecto/releases/download/v#{version}/ecto-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_AMD64"
    end

    on_arm do
      url "https://github.com/pivotings/ecto/releases/download/v#{version}/ecto-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_ARM64"
    end
  end

  def install
    bin.install "ecto"
  end

  test do
    assert_match "ecto", shell_output("#{bin}/ecto --help", 0)
  end
end
