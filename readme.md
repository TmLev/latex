# Latex

Template for LaTeX projects.

Features:
* Stable and reproducable environment with `Docker`
* Format source code with `latexindent.pl`
* Extract common definitions into `header` package
* Split up monolithic file into multiple `chapter`-like parts

## Troubleshooting

#### VS Code won't show PDF file built with LaTeX Workshop

Remove and create container.

---

#### SSH refuses to connect

Remove container address from `~/.ssh/known_hosts`.
