class Ndate < Formula
  desc "Date format to console"
  homepage "https://github.com/JonDotsoy/ndate/tree/v0.2.6#readme"
  url "https://github.com/JonDotsoy/ndate/archive/refs/tags/v0.2.6.tar.gz"
  sha256 "1147327a3e58f9693942ae41cdb0803a8dd69e5f5eb16de606b020235a7376df"
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
