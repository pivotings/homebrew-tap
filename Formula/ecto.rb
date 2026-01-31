class Ecto < Formula
  desc "Next.js reconnaissance tool"
  homepage "https://github.com/pivotings/ecto"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/pivotings/ecto/releases/download/v#{version}/ecto-darwin-amd64.tar.gz"
      sha256 "05f4e1a3b4db1be7fede32191eed56af2da2fff244e22cdac59c6c1c8ef9cec6"
    end

    on_arm do
      url "https://github.com/pivotings/ecto/releases/download/v#{version}/ecto-darwin-arm64.tar.gz"
      sha256 "6fd392a8a4ecf0edc89f067d54b04c9be3152b2b938ecb9fcaaecce6e36b8894"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pivotings/ecto/releases/download/v#{version}/ecto-linux-amd64.tar.gz"
      sha256 "ca1b71852e111fb61bc6e1bdebc29548d598f130ba4a4607b2a53388a1dfc941"
    end

    on_arm do
      url "https://github.com/pivotings/ecto/releases/download/v#{version}/ecto-linux-arm64.tar.gz"
      sha256 "ca1b71852e111fb61bc6e1bdebc29548d598f130ba4a4607b2a53388a1dfc941"
    end
  end

  def install
    bin.install "ecto"
  end

  test do
    assert_match "ecto", shell_output("#{bin}/ecto --help", 0)
  end
end
