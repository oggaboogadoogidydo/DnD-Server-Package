{
  lib,
  buildNpmPackage,
  fetchFromGitHub,
}:

buildNpmPackage (finalAttrs: {
  pname = "DnD-Server";
  version = "0.1";

  src = fetchFromGitHub {
    owner = "GreenDen007";
    repo = "dnd-backend";
   # tag = "v${finalAttrs.version}";
    hash = "sha256-BR+ZGkBBfd0dSQqAvujsbgsEPFYw/ThrylxUbOksYxM=";
  };

  npmDepsHash = "sha256-tuEfyePwlOy2/mOPdXbqJskO6IowvAP4DWg8xSZwbJw=";

  # The prepack script runs the build script, which we'd rather do in the build phase.
  npmPackFlags = [ "--ignore-scripts" ];

  NODE_OPTIONS = "--openssl-legacy-provider";

  meta = {
    description = "DnD Campaign managment server created by Rohan Cherukuri";
    homepage = "https://github.com/greenden007/dnd-backend";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ Oggaboogadoogidydo ];
  };
})
