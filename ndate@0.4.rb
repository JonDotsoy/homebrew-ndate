class NdateAT04 < Formula
  desc "Date format to console"
  homepage "https://github.com/JonDotsoy/ndate/tree/morgan-v0.4.0-morgan#readme"
  url "https://github.com/JonDotsoy/ndate/archive/refs/tags/morgan-v0.4.0-morgan.tar.gz"
  sha256 "1576b578b70f0d20e0aa7cfef107f7bbeba30f5200f318bdfa8963a41f55c402"
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
