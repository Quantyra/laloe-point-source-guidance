# A local flux obstruction to guidance in Laloë’s point-source collapse model

Daniel Fredriksen · Quantyra Inc. · [ORCID](https://orcid.org/0009-0002-9123-7435)

[Manuscript (PDF)](manuscript.pdf) · [Editable Typst source](manuscript.typ)

The point-density equations in Franck Laloë’s gravitational collapse model give a local probability source at the actual configuration if the double sum includes each particle’s own position. For positive imaginary coupling, a local flux estimate excludes two regular implementations of the proposed phase-gradient guidance on intervals of nonzero center density. The theorem leaves open singular velocity prescriptions and positive-width models. A two-port example illustrates the consequence for calculating a detector record.

This is the initial public draft for three-lens AI review.

## Reproduce the manuscript and checks

From the repository root, run the following commands with Typst 0.15.1 and Python 3 (standard library).

```sh
typst compile manuscript.typ manuscript.pdf
python verify.py
```

The script checks the ordinary equal-prior detector calibration, swap, constant-velocity retarded kernel and frozen-source radial flux. The moving-neighborhood proof is analytical.

The manuscript and supporting files use [CC BY 4.0](LICENSE).
