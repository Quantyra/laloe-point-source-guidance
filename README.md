# A flux obstruction for the all-pairs point source in Laloë’s collapse equations

Daniel Fredriksen · Quantyra Inc. · [ORCID](https://orcid.org/0009-0002-9123-7435)

[Manuscript (PDF)](manuscript.pdf) · [Editable Typst source](manuscript.typ)

The point-density equations in Franck Laloë’s gravitational collapse model give a local probability source at the actual configuration if the double sum includes each particle’s own position. For positive imaginary coupling, a local flux estimate excludes two regular implementations of the proposed phase-gradient guidance on intervals of nonzero center density. The theorem leaves open singular velocity prescriptions and positive-width models. The accompanying diagnostic retains the original two-port illustration. A fixed analyzer maps two equally likely spatial packets of squared overlap 0.99 to swapped left/right probabilities 0.55 and 0.45. A common oscillator swap transfers them to a pointer, attaining the ordinary single-copy optimum. A modified detector score would require a joint source–pointer flow and an average over actual initial positions.

This is the initial public draft for three-lens AI review.

## Reproduce the manuscript and checks

From the repository root, run the following commands with Typst 0.15.1 and Python 3 (standard library).

```sh
typst compile manuscript.typ manuscript.pdf
python verify.py
```

The script checks the ordinary equal-prior detector calibration, swap, constant-velocity retarded kernel and frozen-source radial flux. The moving-neighborhood proof is analytical.

The manuscript and supporting files use [CC BY 4.0](LICENSE).
