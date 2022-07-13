self: super:
{
  # olive wants opencolorio >= v2.1.1 and nixpkgs is at 2.0.2
  opencolorio = super.opencolorio.overrideAttrs (prev: rec {
    version = "2.1.1";
    src = super.fetchFromGitHub {
      owner = "AcademySoftwareFoundation";
      repo = "OpenColorIO";
      rev = "v2.1.1";
      #sha256="0000000000000000000000000000000000000000000000000000";
      sha256="sha256-jFs09TUa5BwwcQqkbeQAUAG7UR3iPuJQeRdw4NELVw8=";
    };
    buildInputs = with super.pkgs; [
      imath
      expat
      libyamlcpp
      ilmbase
      pystring
      glew
      freeglut
      python3Packages.python
      python3Packages.pybind11
      lcms2
      lcms2.dev
      openimageio2
      openexr
    ];
  });
}
