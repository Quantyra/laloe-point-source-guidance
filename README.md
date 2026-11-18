# A flux obstruction for the all-pairs point source in Laloë’s collapse equations

Daniel Fredriksen · Quantyra Inc. · [ORCID](https://orcid.org/0009-0002-9123-7435)

[Manuscript (PDF)](manuscript.pdf) · [Editable Typst source](manuscript.typ) · [Three-lens review and disposition](review/disposition.md)

The [Lean certification plan](lean-certification-plan.md) maps the two proof targets, the supporting claims and the evidence needed to certify them.

Cite the reviewed preprint as Daniel Fredriksen (2026), *A flux obstruction for the all-pairs point source in Laloë’s collapse equations*, v1.0.0, Zenodo. [DOI 10.5281/zenodo.24349801](https://doi.org/10.5281/zenodo.24349801).

The point-density equations in Franck Laloë’s gravitational collapse model give a local probability source at the actual configuration if the double sum includes each particle’s own position. For positive imaginary coupling, a local flux estimate excludes two regular implementations of the proposed phase-gradient guidance on intervals of nonzero center density. The theorem leaves open singular velocity prescriptions and positive-width models. The accompanying diagnostic retains the original two-port illustration. A fixed analyzer maps two equally likely spatial packets of squared overlap 0.99 to swapped left/right probabilities 0.55 and 0.45. A common oscillator swap transfers them to a pointer, attaining the ordinary single-copy optimum. A modified detector score would require a joint source–pointer flow and an average over actual initial positions.

The review record distinguishes the blind theorem assessments, reports on the full manuscript and checks of the revision. Scientific and editorial responsibility remains with the author.

## Reproduce the manuscript and checks

From the repository root, run the following commands with Typst 0.15.1 and Python 3 (standard library).

```sh
typst compile --creation-timestamp 1794960000 manuscript.typ manuscript.pdf
python verify.py
```

The script checks the ordinary equal-prior detector calibration, swap, constant-velocity retarded kernel and frozen-source radial flux. The moving-neighborhood proof is analytical.

The manuscript and supporting files use [CC BY 4.0](LICENSE).
