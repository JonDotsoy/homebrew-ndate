class Ndate < Formula
  desc "Date format to console"
  homepage "https://github.com/JonDotsoy/ndate/tree/v0.2.9#readme"
  url "https://github.com/JonDotsoy/ndate/archive/refs/tags/v0.2.10.tar.gz"
  sha256 "2d43d1eb45321a40335b20f20eebb3fe7e72f33603c81cfa069586fd30a0d3f2"
  license "MIT"

  depends_on "deno"

  def install
    system "deno", "compile", "--allow-env=TZ,LANG", "ndate.ts"
    bin.install "ndate" => "ndate"
  end

  test do
    system "false"
  end
end
