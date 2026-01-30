class Glint < Formula
  desc "Git Log Intelligence - GitHub OSINT tool for analyzing commit history and user activity"
  homepage "https://github.com/pivotings/glint"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/pivotings/glint/releases/download/v#{version}/glint-macos-x86_64.tar.gz"
      sha256 "ef27a79e6ff6a557a014588265c482659133ac359c0546249560ec7becaf13ea"
    end

    on_arm do
      url "https://github.com/pivotings/glint/releases/download/v#{version}/glint-macos-arm64.tar.gz"
      sha256 "3702652c0a9b61f519e8ca3fe91a7d31f73f139fce049df73ef6b8848d81ef02"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pivotings/glint/releases/download/v#{version}/glint-linux-x86_64.tar.gz"
      sha256 "a6d32bf544a15643404e9ea4ab6819cbdfb4aa932bfb8f15f07a2559b5da79e9"
    end
  end

  def install
    bin.install "glint"
  end

  test do
    assert_match "glint", shell_output("#{bin}/glint --help", 0)
  end
end
