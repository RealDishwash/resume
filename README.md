# Resume Project Setup

These instructions cover everything needed to install Typst, set up the project, watch a live PDF preview, and export a final resume.

## 1. Install Typst

1. Download the latest Typst release for your platform from <https://typst.app/releases>.
2. Follow the platform-specific installation steps (e.g., place the binary on your `PATH`, or use a package manager such as `brew install typst` on macOS or `scoop install typst` on Windows).
3. Verify installation with `typst --version`.

## 2. Fetch Dependencies

Typst automatically downloads the pinned `@preview/basic-resume:0.2.2` package during the first compile. Just ensure you are online for that initial run.

## 3. Watch with Live PDF Output

Run this from the repository root to keep `resume.pdf` updated as you edit `main.typ`:

```bash
typst watch main.typ resume.pdf
```

The command rebuilds the PDF whenever you save changes.

## 4. Export a Final PDF

When you are ready to generate the final resume, run:

```bash
typst c main.typ resume.pdf
```

This performs a single compile and writes the output to `resume.pdf`. Review the generated PDF to ensure everything looks correct before sharing or committing.
