# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class RBerga06Manim < Formula
  include Language::Python::Virtualenv

  desc "A community maintained Python library for creating mathematical animations"
  homepage "https://www.manim.community/"
  url "https://files.pythonhosted.org/packages/2d/bc/71ac84b665f2d2f0d77f52bacb367224e04f7e5c24536beadcdc9147a0c2/manim-0.18.0-py3-none-any.whl"
  sha256 "56f598c66292d78ef11c56af54e06cf5203b8e227b76563f60177a2b4fa36719"
  license ""
  # head "https://github.com/ManimCommunity/manim.git", branch: "main"

  # Dependencies
  # System dependencies
  depends_on "pango"
  depends_on "ffmpeg"
  depends_on "pkg-config"
  depends_on "basictex" => :recommended
  # Python itself
  depends_on "python-setuptools" => :build
  depends_on "python@3.12" => [:build, :test]
  #depends_on "python@3.11" => [:build, :test]
  # Python packages
  depends_on "python-click"
  depends_on "numpy"
  depends_on "pillow"
  depends_on "scipy"
  depends_on "py3cairo"
  depends_on "python-networkx"
  depends_on "jupyterlab" => :optional
  depends_on "pygments"

  def pythons
    deps.map(&:to_formula).sort_by(&:version).filter { |f| f.name.start_with?("python@") }
  end

  def install
    # # ENV.deparallelize  # if your formula fails when building in parallel
    # virtualenv_install_with_resources
    pythons.each do |python|
      python_exe = python.opt_libexec/"bin/python"
      system python_exe, "-m", "pip", "install", *std_pip_args, "."
    end
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
    # system "false"

    pythons.each do |python|
      python_exe = python.opt_libexec/"bin/python"
      system python_exe, "-c", "import manim"
    end
  end
end
