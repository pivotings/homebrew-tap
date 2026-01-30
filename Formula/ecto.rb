class Ecto < Formula
  desc "Next.js reconnaissance tool"
  homepage "https://github.com/pivotings/ecto"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/pivotings/ecto/releases/download/v#{version}/ecto-darwin-amd64.tar.gz"
      sha256 "2368a08685e6f807f3892479c8be6b1f1b0e5a2493be7b45c80dbba8d2f217be"
    end

    on_arm do
      url "https://github.com/pivotings/ecto/releases/download/v#{version}/ecto-darwin-arm64.tar.gz"
      sha256 "beb5a70748263facd7e2f2e8c6437d7a72c0c887428c6de7ec75b78071526035"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pivotings/ecto/releases/download/v#{version}/ecto-linux-amd64.tar.gz"
      sha256 "81beeaf5f2475b4de649e1b1a38b405954b9cfe0520f84cc64f8fb9833548464"
    end

    on_arm do
      url "https://github.com/pivotings/ecto/releases/download/v#{version}/ecto-linux-arm64.tar.gz"
      sha256 "ab94925a979993cca6ef796fc5f7dcd91a49b98ab53fc7acd56201fbf1e3f155"
    end
  end

  def install
    bin.install "ecto"
  end

  test do
    assert_match "ecto", shell_output("#{bin}/ecto --help", 0)
  end
end
