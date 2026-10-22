# FaceID Tweak

This repository now contains a minimal rootless Theos tweak scaffold for a Face ID-style permission overlay on older iPhone devices.

## Build notes

The project expects the existing repository zip assets to be extracted into a bundle before packaging. The included helper script will look for the two `.zip` archives in the root of the repo and place their extracted image assets under `Resources/FaceID.bundle`.

## Local build flow

```bash
chmod +x scripts/extract-faceid-assets.sh
./scripts/extract-faceid-assets.sh
make package
```

This produces a `.deb` package for the configured `arm64` target when Theos and the iOS SDK are installed.

## Current status

This project is intentionally a buildable scaffold and should be treated as an implementation starting point. The repository did not contain a complete jailbreak tweak source tree, so this is the minimal working structure required to continue the Face ID implementation in a rootless tweak environment.
