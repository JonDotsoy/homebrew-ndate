class Ndate < Formula
  desc "Date format to console"
  homepage "https://github.com/JonDotsoy/ndate/tree/v0.2.7#readme"
  url "https://github.com/JonDotsoy/ndate/archive/refs/tags/v0.2.7.tar.gz"
  sha256 "aba7353ee4fc92cd8cc41d787def2e82b4491e9da7014e979bc8657fe9de13c2"
  license "MIT"

  depends_on "deno"

  def install
    system "deno", "compile", "ndate.ts"
    bin.install "ndate" => "ndate"
  end

  test do
    system "false"
  end
end
