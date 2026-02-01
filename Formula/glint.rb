class Glint < Formula
  desc "Git Log Intelligence - GitHub OSINT tool for analyzing commit history and user activity"
  homepage "https://github.com/pivotings/glint"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/pivotings/glint/releases/download/v#{version}/glint-macos-x86_64.tar.gz"
      sha256 "dd5414a310df0363f1ceab3f8e10c0df2d1f68125937082f32f40766004a38cf"
    end

    on_arm do
      url "https://github.com/pivotings/glint/releases/download/v#{version}/glint-macos-arm64.tar.gz"
      sha256 "f481c70e056a1d8ff20e2f39cc436668b1bc55964a0300c7d52243cd55686555"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pivotings/glint/releases/download/v#{version}/glint-linux-x86_64.tar.gz"
      sha256 "e4353483241946368e133e29cd2036e7b3f898bf47c47adc27dfe773e92e7c3b"
    end
  end

  def install
    bin.install "glint"
  end

  test do
    assert_match "glint", shell_output("#{bin}/glint --help", 0)
  end
end
