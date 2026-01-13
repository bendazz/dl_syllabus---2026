## Fundamentals of Deep Learning — Syllabus (Spring 2026)

This repository contains the course syllabus and build tooling.

### Files

- [syllabus/syllabus.md](syllabus/syllabus.md) — Single-source Markdown syllabus
- [syllabus/build.sh](syllabus/build.sh) — Docker/Pandoc script to produce PDF

### Build the PDF

Requires Docker installed locally. This uses the `pandoc/latex` image so you don’t need a local TeX installation.

```bash
bash syllabus/build.sh
```

The output will be written to [syllabus/syllabus.pdf](syllabus/syllabus.pdf).

### Customize

- Edit placeholders in [syllabus/syllabus.md](syllabus/syllabus.md) for course code, dates, logistics, and policies.
- Adjust the schedule, assessments, and policies as needed.

### Notes

- The schedule is tentative and subject to change; any evaluation-impacting changes will be announced via the course site.