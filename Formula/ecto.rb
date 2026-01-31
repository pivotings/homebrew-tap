class Ecto < Formula
  desc "Next.js reconnaissance tool"
  homepage "https://github.com/pivotings/ecto"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/pivotings/ecto/releases/download/v#{version}/ecto-darwin-amd64.tar.gz"
      sha256 "deb6290cb83fd12f078f745dcf12e8375d1ff4f846c9c9862470520267847caa"
    end

    on_arm do
      url "https://github.com/pivotings/ecto/releases/download/v#{version}/ecto-darwin-arm64.tar.gz"
      sha256 "98e62a73fe5a99ffed000875941bcd84042ee0909bfb3bd8c32686d5f6a8e316"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pivotings/ecto/releases/download/v#{version}/ecto-linux-amd64.tar.gz"
      sha256 "f2cdccaee2b11c680b78b9652a9de812f1ca6a4c8a7f4766c666c4db145ccb48"
    end

    on_arm do
      url "https://github.com/pivotings/ecto/releases/download/v#{version}/ecto-linux-arm64.tar.gz"
      sha256 "f2cdccaee2b11c680b78b9652a9de812f1ca6a4c8a7f4766c666c4db145ccb48"
    end
  end

  def install
    bin.install "ecto"
  end

  test do
    assert_match "ecto", shell_output("#{bin}/ecto --help", 0)
  end
end
