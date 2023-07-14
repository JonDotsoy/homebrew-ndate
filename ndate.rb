class Ndate < Formula
  desc "Date format to console"
  homepage "https://github.com/JonDotsoy/ndate/tree/v0.2.9#readme"
  url "https://github.com/JonDotsoy/ndate/archive/refs/tags/v0.2.9.tar.gz"
  sha256 "2517d79ff4cb6113c232e080b829d3eaa967294fafc2b68756bc52759be494bd"
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
