# Verification Report (Setup & CI)

- `renv.lock` provided as a starting point; run `renv::restore()` to install packages.
- Dockerfile builds an RStudio-based environment with Quarto installed.
- GitHub Actions workflow renders the book and slides and uploads artifacts.
- Datasets are synthetic and small (<1MB each). No internet is required to knit materials.
