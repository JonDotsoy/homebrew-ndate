class Ndate < Formula
  desc "Date format to console"
  homepage "https://github.com/JonDotsoy/ndate/tree/v0.2.8#readme"
  url "https://github.com/JonDotsoy/ndate/archive/refs/tags/v0.2.8.tar.gz"
  sha256 "2cbced6f023a4a581b012a6710215f81cb64dc7bf3a9bc7cfbd4cd8145a50f70"
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
