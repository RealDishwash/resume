# Repository Guidelines

## Project Structure & Module Organization
`main.typ` is the single entry point and imports `@preview/basic-resume` helper macros. Keep global metadata (contact info, theme colors, `#show: resume.with(...)`) at the top, followed by high-level sections such as `== Education` or `== Projects`. When adding reusable helpers (e.g., new layout blocks), define them near the template import so they are easy to reuse across sections. Store supporting assets beside `main.typ` and reference them relatively.

## Build, Test, and Development Commands
- `typst c main.typ Vishwas_Parpattegar_24766178_Resume.pdf` — one-off compile to `Vishwas_Parpattegar_24766178_Resume.pdf`; run before committing to ensure deterministic output.
- `typst watch main.typ Vishwas_Parpattegar_24766178_Resume.pdf` — live preview during edits.
- Assume `typst watch` is running locally during active editing, so there's no need to remind contributors to recompile manually between changes.
- `typst fmt main.typ` — applies Typst’s formatter; run after large edits for stable diffs.

## Coding Style & Naming Conventions
Use Typst’s default formatter (2-space indentation, trailing commas for multiline records) and keep section headings in Title Case (e.g., `== Work Experience`). Parameters inside helper calls (`#edu`, `#project`, etc.) should stay alphabetized to reduce merge churn. Prefer descriptive variable names such as `personal-site` over abbreviations, and keep color definitions in hex format near the `#show: resume.with` block for quick theme tweaks.

## Testing & Quality Checks
Always compile with `typst c` before pushing to catch syntax errors or missing assets. Scan the generated PDF for layout shifts (widows/orphans, overflow past A4). Update the Skills or Projects sections in pairs with their supporting bullet points to maintain consistent density. If you depend on preview packages, run `typst query fonts` (optional) to confirm the fonts you reference (e.g., “New Computer Modern”) resolve on a clean machine.

## Commit & Pull Request Guidelines
Follow Conventional Commits (`feat: add awards section`, `chore: tweak theme colors`) so release automation remains simple once added. Every commit message must adhere to that spec with no exceptions. Commits should include the regenerated `Vishwas_Parpattegar_24766178_Resume.pdf` when its contents change. Pull requests must include: purpose summary, screenshots or PDFs showing before/after when visuals shift, and a checklist confirming `typst fmt` and `typst c` have been run. Reference issue numbers (e.g., “Closes #4”) and note any new dependencies for the reviewer.

## Security & Configuration Tips
Never check in personal secrets; keep placeholder data or redact sensitive numbers when sharing drafts. When updating contact info, mirror the change in both the metadata block and any inline references to stay consistent. Pin preview package versions (already done with `@preview/basic-resume:0.2.2`) and update them deliberately to avoid template drift.
