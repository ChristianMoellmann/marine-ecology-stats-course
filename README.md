# Marine Ecology Statistics Course (13 Weeks)

This repository contains a reproducible, AI-enabled statistics course for 3rd-semester Master students in marine ecology.
Materials are organized as a Quarto book, weekly slide decks, and assignment packs with datasets and solutions.

## Structure
```
/book                  # Quarto book (HTML/PDF/DOCX)
/slides/<week>/        # Slides (Quarto sources) + PPTX exports with speaker notes
/assignments/<week>/   # Task, data, starter, solutions, rubric, tests
/code                  # Utility R functions, plotting themes
/env                   # Reproducible env: renv lock, Dockerfile, .Rprofile
/ci                    # GitHub Actions to render and test
```

## Quick Start (local without Docker)
1. Install R (≥4.3), Quarto (≥1.5), Pandoc, and TinyTeX for PDF.
2. In R: install and restore packages with `renv::restore()`.
3. Render book: `quarto render book/`
4. Render slides: `quarto render slides/week01/` (and so on)
5. Open `assignments` folders and knit the student notebooks.

## With Docker
```bash
# build image
docker build -t marine-stats-course:latest -f env/Dockerfile .

# run container and open RStudio on http://localhost:8787 (user: rstudio / password: rstudio)
docker run -p 8787:8787 -e PASSWORD=rstudio -v $(pwd):/home/rstudio/project marine-stats-course:latest
```
In RStudio terminal:
```r
renv::restore()
quarto::quarto_render("book")
```

## Instructor & Student Kits
- Instructor kit (solutions, PPTX with notes, rubrics): see `releases/Instructor_kit.zip`
- Student kit (textbook, PPTX sans notes, datasets, starter scripts): see `releases/Student_kit.zip`

## License
- Text/content: CC-BY-4.0 (see LICENSE)
- Code: MIT (see LICENSE-CODE)

## Contact
Maintainer: Course Team
Last updated: 2025-08-09
