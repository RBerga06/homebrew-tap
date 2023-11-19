# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Rberga06Manim < Formula
  include Language::Python::Virtualenv

  desc ""
  homepage ""
  url "https://files.pythonhosted.org/packages/2d/bc/71ac84b665f2d2f0d77f52bacb367224e04f7e5c24536beadcdc9147a0c2/manim-0.18.0-py3-none-any.whl"
  sha256 "56f598c66292d78ef11c56af54e06cf5203b8e227b76563f60177a2b4fa36719"
  license ""

  depends_on "python"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    virtualenv_install_with_resources
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test rberga06-manim`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
