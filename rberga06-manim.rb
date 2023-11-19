class Rberga06Manim < Formula
  include Language::Python::Virtualenv

  desc "Community maintained Python library for creating mathematical animations"
  homepage "https://www.manim.community/"
  url "https://files.pythonhosted.org/packages/06/62/7802597b93048a8ab543d835338739ce8f4e96e0410b63e29c86deb7cceb/manim-0.18.0.tar.gz"
  sha256 "56788066bc1aec2471a988c91e337194fd38d1035ed1b4d10838bfe64bd26af8"
  license "MIT"
  head "https://github.com/ManimCommunity/manim.git", branch: "main"

  # Build/Test dependencies
  depends_on "python-setuptools" => :build
  #depends_on "python@3.11" => [:build, :test]
  depends_on "python@3.12" => [:build, :test]
  # Runtime dependencies
  depends_on "ffmpeg"
  depends_on "numpy"
  depends_on "pango"
  depends_on "pillow"
  depends_on "pkg-config"
  depends_on "py3cairo"
  depends_on "pygments"
  depends_on "python-click"
  depends_on "python-networkx"
  depends_on "scipy"
  # Optional dependencies
  depends_on "jupyterlab" => :optional

  def pythons
    deps.map(&:to_formula).sort_by(&:version).filter { |f| f.name.start_with?("python@") }
  end

  def install
    pythons.each do |python|
      python_exe = python.opt_libexec/"bin/python"
      system python_exe, "-m", "pip", "install", *std_pip_args, "--upgrade", "pip"
      system python_exe, "-m", "pip", "install", *std_pip_args, "poetry"
      system python_exe, "-m", "pip", "install", *std_pip_args, "."
    end
  end

  test do
    pythons.each do |python|
      python_exe = python.opt_libexec/"bin/python"
      system python_exe, "-c", "import manim"
    end
  end
end
