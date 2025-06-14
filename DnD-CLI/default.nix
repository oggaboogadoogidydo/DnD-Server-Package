{ lib, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "dnd-cli";
  version = "0.0.1";

  src = fetchFromGitHub {
    owner = "GreenDen007";
    repo = pname;
    rev = version;
    hash = "sha256-+s5RBC3XSgb8omTbUNLywZnP6jSxZBKSS1BmXOjRF8M=";
  };

  cargoHash = "sha256-jtBw4ahSl88L0iuCXxQgZVm1EcboWRJMNtjxLVTtzts=";

  meta = with lib; {
    description = "DnD Campaign Managment server CLI for use with the dnd server package";
    homepage = "https://github.com/greenden007/dnd-cli";
    license = licenses.unlicense;
    maintainers = [ OggaBoogaDoogidyDo ];
  };
}
