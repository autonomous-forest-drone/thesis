# Bachelor's Thesis - Autonomous Forest Drone Navigation

> LaTeX source code for our Bachelor's thesis in Computer Science  
> **"Autonomous Drone Navigation in Forest Environments Using PPO Reinforcement Learning"**

[![Institution](https://img.shields.io/badge/Institution-Kristianstad%20University-blue.svg)](https://www.hkr.se/)
[![Status](https://img.shields.io/badge/Status-In%20Progress-yellow.svg)]()
[![LaTeX](https://img.shields.io/badge/LaTeX-Overleaf%20Compatible-green.svg)](https://www.overleaf.com/)

---

## 📖 About

This repository contains the complete LaTeX source code for our Bachelor's thesis at **Kristianstad University**, Department of Computer Science. The thesis explores autonomous navigation in forest environments using Proximal Policy Optimization (PPO) reinforcement learning, developed in collaboration with **Christo Van Zyl** (Beetlesense).

**Thesis Title:** "Autonomous Drone Navigation in Forest Environments Using PPO Reinforcement Learning"

**Authors:**
- **Elina Rosato** - rosatoelina@gmail.se
- **Danielis Maizelis** - danielis.maizelis0103@stud.hkr.se

**Supervisors:**
- Ali Hassan Sodhro - Kristianstad University
- Christo Van Zyl - BeetleSense (Industry Partner)

**Timeline:** January 2026 - June 2026  
**Defense Date:** [To be scheduled - June 2026]

---

## 📁 Repository Structure

```
thesis/
├── main.tex                    # Main thesis document
├── abstract.tex                # Abstract (English)
├── acknowledgements.tex        # Acknowledgements section
├── references.bib              # BibTeX bibliography (shared)
│
├── chapters/                   # Thesis chapters (one file per chapter)
│   ├── 1_introduction.tex
│   ├── 2_background.tex
│   ├── 3_related_work.tex
│   ├── 4_methodology.tex
│   ├── 5_implementation.tex
│   ├── 6_results.tex
│   ├── 7_discussion.tex
│   └── 8_conclusions.tex
│
├── figures/                    # All images, diagrams, plots
│
├── tables/                     # LaTeX table definitions
│
├── appendices/                 # Supplementary materials
│   ├── appendix_a_code.tex
│   ├── appendix_b_params.tex
│   └── appendix_c_data.tex
│
└── templates/                  # LaTeX style files and templates
    ├── hkr_thesis.cls          # Kristianstad University thesis class
    └── custom_commands.tex     # Custom LaTeX commands
```

---

## 🚀 Getting Started

### Prerequisites

**LaTeX Distribution:**
- **Windows:** [MiKTeX](https://miktex.org/) or [TeX Live](https://www.tug.org/texlive/)
- **macOS:** [MacTeX](https://www.tug.org/mactex/)
- **Linux:** TeX Live (install via package manager)

**Recommended Editors:**
- [Overleaf](https://www.overleaf.com/) (online, collaborative)
- [TeXstudio](https://www.texstudio.org/) (offline, cross-platform)
- [VS Code](https://code.visualstudio.com/) with [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension

**Required LaTeX Packages:**
- `natbib` - Bibliography management
- `graphicx` - Figure inclusion
- `hyperref` - Hyperlinks and cross-references
- `amsmath` - Mathematical typesetting
- `booktabs` - Professional tables
- `listings` - Code snippets
- `algorithm2e` - Algorithm pseudocode

### Compilation

**Command Line:**
```bash
# Compile LaTeX
pdflatex main.tex

# Generate bibliography
bibtex main

# Compile again (twice for cross-references)
pdflatex main.tex
pdflatex main.tex

# Output: main.pdf
```

**Using Makefile (if provided):**
```bash
make          # Compile thesis
make clean    # Remove auxiliary files
make view     # Open PDF viewer
```

**Using TeXstudio:**
1. Open `main.tex`
2. Press `F5` (Build & View)
3. Bibliography automatically handled

**Using Overleaf:**
1. Import this repository to Overleaf
2. Click "Recompile"
3. Download PDF

---

## 🤝 Collaboration Workflow

**1. Pull Latest Changes**
```bash
# Always start by pulling the latest version
git pull origin main
```

**2. Create a Feature Branch**
```bash
# Create a new branch for your work
git checkout -b feature/chapter-methodology

# Or for smaller edits:
git checkout -b fix/typo-introduction
```

**Branch Naming Convention:**
- `feature/chapter-name` - New chapter or major section
- `fix/issue-description` - Bug fixes or typo corrections
- `update/section-name` - Updates to existing content
- `refs/literature-topic` - Adding new references

**3. Make Your Changes**
- Edit LaTeX files
- Add figures to `figures/` folder
- Update `references.bib` for new citations
- Test compilation locally

**4. Commit Your Changes**
```bash
# Stage your changes
git add chapters/04_methodology.tex
git add figures/system_architecture.pdf

# Commit with descriptive message
git commit -m "Add methodology section: PPO training procedure"

# For multiple related changes:
git add .
git commit -m "Complete results chapter with figures and analysis"
```

**Commit Message Guidelines:**
- Use present tense: "Add section" not "Added section"
- Be specific: "Fix equation in section 3.2" not "Fix bug"
- Reference issues: "Update abstract per supervisor feedback #12"

**5. Push to GitHub**
```bash
# Push your branch
git push origin feature/chapter-methodology
```

**6. Create Pull Request**
1. Go to GitHub repository
2. Click "Compare & pull request"
3. Write description of changes
4. Request review from co-author
5. Wait for approval
6. Merge to `main`

**7. Delete Branch (After Merge)**
```bash
# Switch back to main
git checkout main

# Pull the merged changes
git pull

# Delete local branch
git branch -d feature/chapter-methodology

# Delete remote branch (optional)
git push origin --delete feature/chapter-methodology
```

---

### Citations

**Add references to `references.bib`:**

```bibtex
@article{schulman_proximal_2017,
    title = {Proximal {Policy} {Optimization} {Algorithms}},
    author = {Schulman, John and Wolski, Filip and Dhariwal, Prafulla and Radford, Alec and Klimov, Oleg},
    journal = {arXiv preprint arXiv:1707.06347},
    year = {2017}
}
```

**Cite in text:**
```latex
The PPO algorithm \citep{schulman_proximal_2017} provides stable policy updates...

According to \citet{schulman_proximal_2017}, the clipped objective function...
```

**Compile bibliography:**
```bash
bibtex main
pdflatex main.tex
pdflatex main.tex
```

### Cross-References

**Label everything:**
```latex
\chapter{Methodology}
\label{ch:methodology}

\section{Training Procedure}
\label{sec:training}

\begin{figure}
    \caption{Training loss curve}
    \label{fig:training-loss}
\end{figure}
```

**Reference elsewhere:**
```latex
As described in Chapter~\ref{ch:methodology}, we use PPO for training.

The training loss (Figure~\ref{fig:training-loss}) shows convergence after 500 episodes.

See Section~\ref{sec:training} for implementation details.
```

## ✅ Pre-Submission Checklist

Before final submission, verify:

**Content:**
- [ ] All chapters complete and reviewed
- [ ] Abstract
- [ ] Acknowledgements written
- [ ] Abreviations
- [ ] All figures have captions and are referenced in text
- [ ] All tables have captions and are referenced in text
- [ ] All citations formatted correctly
- [ ] Bibliography complete with no missing references
- [ ] Appendices included (if applicable)

**Formatting:**
- [ ] Page numbers correct
- [ ] Table of contents generated
- [ ] List of figures generated
- [ ] List of tables generated (if applicable)
- [ ] Headers and footers correct
- [ ] No overfull/underfull hbox warnings
- [ ] All cross-references resolved (no "??")

**Quality:**
- [ ] Spell-checked
- [ ] Grammar-checked
- [ ] Consistent terminology throughout
- [ ] Equation numbering correct

---

### Git Issues

**Merge Conflicts in .tex Files**
```bash
# Pull with conflicts
git pull

# Resolve conflicts in editor (look for <<<<<<, ======, >>>>>> markers)
# Then:
git add conflicted_file.tex
git commit -m "Resolve merge conflict in methodology chapter"
git push
```

---

## 📧 Contact

**Authors:**
- **Elina Rosato** - rosatoelina@gmail.com
- **Danielis Maizelis** - danielis.maizelis0103@stud.hkr.se

**Supervisors:**
- Ali Hassan Sodhro - ali.hassan_sodhro@@hkr.se
- **Christo Van Zyl** - BeetleSense 

**Institution:**
- Kristianstad University
- Department of Computer Science
- SE-291 88 Kristianstad, Sweden

---

## 📜 License

This thesis is © 2026 Elina Rosato and Danielis Maizelis. All rights reserved.

The LaTeX source code is shared for transparency and reproducibility purposes. If you wish to use or adapt parts of this work, please contact the authors.



<div align="center">

**📖 Bachelor's Thesis in Computer Science**  
**Kristianstad University • 2026**

*Autonomous Forest Drone Navigation Using Reinforcement Learning*

</div>
