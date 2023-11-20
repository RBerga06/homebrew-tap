class Rberga06Manim < Formula
  include Language::Python::Virtualenv

  desc "Community maintained Python library for creating mathematical animations"
  homepage "https://www.manim.community/"
  url "https://files.pythonhosted.org/packages/2d/bc/71ac84b665f2d2f0d77f52bacb367224e04f7e5c24536beadcdc9147a0c2/manim-0.18.0-py3-none-any.whl"
  sha256 "56f598c66292d78ef11c56af54e06cf5203b8e227b76563f60177a2b4fa36719"
  license "MIT"
  head "https://github.com/ManimCommunity/manim.git", branch: "main"

  # Build/Test dependencies
  # TODO: depends_on "python-setuptools" => :build
  depends_on "python@3.12" => [:build, :test]
  # Runtime dependencies
  depends_on "ffmpeg"
  # TODO: depends_on "numpy"
  depends_on "pango"
  # TODO: depends_on "pillow"
  depends_on "pkg-config"
  depends_on "py3cairo"
  # TODO: depends_on "pygments"
  # TODO: depends_on "python-click"
  # TODO: depends_on "python-networkx"
  # TODO: depends_on "scipy"
  # Optional dependencies
  depends_on "jupyterlab" => :optional

  def pythons
    deps.map(&:to_formula).sort_by(&:version).filter { |f| f.name.start_with?("python@") }
  end

  def install
    pythons.each do |python|
      python_exe = python.opt_libexec/"bin/python"
      pip_args = std_pip_args - ["--no-deps", "--ignore-installed"]
      system python_exe, "-m", "pip", "install", *pip_args, "manim-0.18.0-py3-none-any.whl"
    end
  end

  test do
    pythons.each do |python|
      python_exe = python.opt_libexec/"bin/python"
      system python_exe, "-c", "import manim"
    end
  end
end
