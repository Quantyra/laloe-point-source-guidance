# Antigravity (AGY) review record

The following sections reproduce the reviewer’s returned text. The editorial decisions are in [the review disposition](disposition.md).

## Blind theorem assessment

### Referee Report

**Verdict: Major Revision**

#### 1. Sources Used
This evaluation is based strictly on the provided bibliographic leads and text:
- Franck Laloë, *EPJ D* **74**, 25 (2020) (Eqs. 2–4, 8, 9, 13, 14, 23; Secs. 2.1, 2.6);
- Franck Laloë, *C. R. Physique* **23**, S1 (2022), Sec. 4, Eq. 37;
- K. Berndl *et al.*, arXiv:quant-ph/9503013 (Coulomb singularity avoidance in Bohmian mechanics);
- T. Kato, *Commun. Pure Appl. Math.* **10**, 151 (1957) (cusp conditions for Coulomb Hamiltonians).

---

#### 2. Derivation and Analysis of the Proposed Claim
The proposed mathematical incompatibility for the point-source model is valid.

In Laloë’s model, the anti-Hermitian generator introduces a local source/sink term into the probability continuity equation:
$$\partial_t \rho + \nabla \cdot (\rho v) = \Gamma(x, t)\rho(x, t),$$
where $\Gamma(x, t) = -2\epsilon [V(x, X(t)) - \langle V \rangle]$. Under the literal point-source reading including self-interaction ($i=j$), $V(x, Q(t)) \sim -G m / |x - Q(t)|$, yielding $\Gamma(x, t) \sim +2\epsilon G m / |x - Q(t)|$ near the Bohmian position $Q(t)$.

Consider a sphere $B_r(Q(t))$ of radius $r$ centered at $Q(t)$, moving with particle velocity $\dot{Q} = v(Q)$:
$$\frac{d}{dt} \int_{B_r(Q)} \rho \, d^3x = \int_{B_r(Q)} \Gamma \rho \, d^3x - \oint_{\partial B_r(Q)} \rho (v - \dot{Q}) \cdot \hat{n} \, dS.$$
- **Sink/Source Volume Integral:** Because $\Gamma \sim r^{-1}$ and $\rho(Q) > 0$ is continuous, the volume integral scales as $\int_0^r s^{-1} s^2 ds$, giving $4\pi \epsilon G m \rho(Q) r^2 + o(r^2)$.
- **Boundary Flux:** If the phase has an a.e. spatial Fréchet derivative $b = m \dot{Q}/\hbar$ at $Q$ (or under the stated Lipschitz and $L^1$ majorant bounds), the velocity linearization yields $|v(x) - \dot{Q}| = o(1)$ (or $O(r)$). The surface flux therefore scales as $o(r^2)$ (or $O(r^3)$).
- **Transport Term:** $\frac{d}{dt} \int_{B_r(Q)} \rho \, d^3x$ scales as $O(r^3)$.

Dividing by $r^2$ and taking $r \to 0$ forces $4\pi \epsilon G m \rho(Q) = 0$, directly contradicting $\epsilon > 0$ and $\rho(Q) > 0$. Regular phase-guidance is strictly incompatible with an unregularized imaginary $1/r$ divergence.

---

#### 3. Two Readings of the Mass Sum & Novelty
- **Reading 1 (Literal all-pairs sum, $i=j$ included):** Includes the singular self-potential of the Bohmian particle. The claim correctly refutes regular guidance under this reading.
- **Reading 2 (Physical / regularized sum):** Either (a) excludes self-interaction ($i \neq j$), as in Laloë Sec. 2.6 where Bohmian positions act on *other* particles and Berndl *et al.* (1995) ensures trajectory avoidance of $X_j$, or (b) introduces a finite Gaussian width $a > 0$ as in Laloë Eq. 4. In Reading 2, $\Gamma$ is locally bounded, and the obstruction vanishes.

*Novelty:* Kato (1957) analyzed real Coulomb cusps where wave curvature balances a singular real potential. Berndl *et al.* (1995) established ordinary trajectory avoidance. The novelty here is establishing that an *anti-Hermitian* (dissipative) $1/r$ singularity cannot be balanced by kinematic flux without breaking Fréchet differentiability of the guiding phase.

---

#### 4. Strongest Objection and Overclaim
The primary deficiency is significance: targeting Reading 1 risks attacking a strawman. Laloë explicitly anticipated ultraviolet divergences and supplied the finite Gaussian width (Eq. 4) specifically to cure them. Any claim that this incompatibility "refutes" Laloë's collapse model is an overclaim.

---

#### 5. What Survives
What survives is a rigorous, conditional no-go theorem: Laloë's model cannot be formulated as a point-particle limit with standard Fréchet kinematics. The author must tone down broader physical claims, contextualize against Reading 2 (Eq. 4), and frame the result as establishing the mathematical necessity of finite-width cutoffs or singular trace laws.

## Full manuscript at f5521f7

### Referee Report

**Verdict: Minor Revision** (revised from preliminary Major Revision)

#### 1. Sources Used
This evaluation is based strictly on the cited primary literature:
- F. Laloë, *EPJ D* **74**, 25 (2020) (Eqs. 2–4, 8, 9, 13, 14, 23; Secs. 2.1, 2.6);
- F. Laloë, *C. R. Physique* **23**, 27 (2022), Sec. 4, Eq. 37;
- K. Berndl *et al.*, *Commun. Math. Phys.* **173**, 647 (1995);
- T. Kato, *Commun. Pure Appl. Math.* **10**, 151 (1957);
- C. W. Helstrom, *Quantum Detection and Estimation Theory* (1976), Chap. IV.

---

#### 2. Reconstruction of Mass Sum Readings & Novelty
- **Reading 1 (Literal All-Pairs Point Source, $i=j$):** Retains self-interaction in Eq. (1) ($W \sim G m^2 / |q_i - Q_i(t)|$). The anti-Hermitian term $+i(\epsilon/\hbar) W$ creates an active probability source centered on the actual Bohmian configuration $Q(t)$.
- **Reading 2 (Regularized / Cross-Terms):** Either omits the diagonal ($i \neq j$, Sec. 2.6), where standard Bohmian mechanics guarantees trajectory avoidance of singular sets (Berndl *et al.*, 1995), or adopts a finite Gaussian width $a_L > 0$ (Eq. 4), rendering $W$ locally bounded.
- **Novelty:** Kato (1957) established real Coulomb cusps where stationary wave curvature balances a singular real potential while the phase remains smooth. Berndl *et al.* (1995) proved global Bohmian existence because trajectories avoid stationary Coulomb singularities. The author’s genuine novelty is demonstrating that an *anti-Hermitian* ($+i\epsilon/r$) co-moving singularity requires an outward boundary flux scaling as $s^{D-1}$, which cannot be matched by $C^1$ or Fréchet-differentiable phase guidance ($o(s^{D-1})$).

---

#### 3. Blind-Pass Objection, Significance, and Deficiencies
In my preliminary blind assessment, I objected that targeting Reading 1 attacks a strawman because Laloë introduced Gaussian regularizations (Eq. 4) and distinct-particle interactions (Sec. 2.6) precisely to cure divergences.

Evaluating the frozen manuscript as written, I find that the author has largely anticipated this critique:
- The manuscript (Abstract, Sec. 1, Sec. 4) carefully frames the result as a conditional no-go theorem restricted to the literal point-source reading with standard Fréchet kinematics, explicitly noting that finite width or diagonal exclusion removes the obstruction.
- The paper avoids overclaiming a refutation of Laloë’s physical collapse program. What survives is a rigorous demonstration that Laloë’s finite width $a_L > 0$ (Eq. 4) is a *mathematical necessity* for standard Bohmian kinematics, rather than an optional phenomenological cutoff.

However, concrete deficiencies remain:
1. **Section 5 is extraneous and incomplete:** Section 5 introduces Helstrom discrimination and harmonic oscillator state swaps, yet contains no dynamical collapse calculation and explicitly concedes that it "places no numerical bound on the success rate." It dilutes the mathematical focus of Sections 1–4 and should be excised entirely, or completed with an actual detector rate calculation.
2. **Formula (7) Geometric Bound:** On the inner ball of radius $s/2$, $|q_i - Q_i| \le s/2$, which allows $W \ge 2Gm^2(1-\beta)/[(1+\beta)s]$. The author instead writes $1/s$ in the line above Eq. (7). While mathematically valid as a lower bound, the text should clarify this step to avoid reader confusion regarding the radii.
3. **Continuity Equation Citation:** In Section 1, explicitly connect the configuration-space continuity equation @balance directly to Eq. (37) of Laloë (2022) to establish that configuration-space balance is Laloë's own stated formulation.

---

#### 4. Conclusion
The core theorems (Secs. 2–3) and the frozen-source model (Sec. 4) are mathematically sound and provide a valuable clarification of Bohmian collapse models. Removing or properly completing Section 5 will make the manuscript fully ready for publication.

## Revised manuscript at 0c20ce3

**Verdict: Accept**

**Material Used:** Revised manuscript text (sha256 `f7b20342...`); F. Laloë, *EPJ D* **74**, 25 (2020); F. Laloë, *C. R. Physique* **23**, 27 (2022); T. Kato, *Commun. Pure Appl. Math.* **10**, 151 (1957); K. Berndl *et al.*, *Commun. Math. Phys.* **173**, 647 (1995).

---

### 1. Mass Sum Readings & Novelty
- **Reading 1 (Literal All-Pairs, $i=j$ retained):** Treats the point density literally, producing an anti-Hermitian co-moving source $+i(\epsilon/\hbar)W \sim i\epsilon/|q - Q(t)|$ centered on the actual Bohmian configuration.
- **Reading 2 (Regularized / Cross-Terms):** Restricts sums to $i \neq j$ (where trajectories avoid collision sets per Berndl *et al.*) or imposes a finite Gaussian width $a_L > 0$ (Laloë 2020, Eq. 4).
- **Novelty:** In Kato (1957), real Coulomb potential cusps are balanced by wave amplitude curvature while the phase remains smooth. In Berndl *et al.* (1995), standard trajectories globally avoid stationary singular sets. Here, an anti-Hermitian co-moving source creates an active probability creation rate demanding an outward boundary flux $\sim s^{D-1}$, which is incompatible with $C^1$ or Fréchet-differentiable phase guidance ($o(s^{D-1})$).

### 2. Significance & Overclaim Check
The manuscript avoids overclaiming a refutation of Laloë’s collapse program. It rigorously establishes that introducing a non-zero regularization width $a_L > 0$ is a strict mathematical requirement for standard Bohmian kinematics, rather than an optional phenomenological choice.

### 3. Audit of Specific Items & Prior Deficiencies
- **Integrated Current & Domination:** The $L^1(I)$ time-majorant $e_s(t) \le g(t)$ and uniform spatial Lipschitz density rigorously justify dominated convergence in the Proposition.
- **Smooth Cutoff vs. Thin Shells:** Smooth test functions $\chi_s$ average across a shell of thickness $s/2$, preventing single-radius boundary current spikes and enabling spatial integration by parts to bound the phase remainder $E_t(u)$.
- **Self-Term Interpretation:** Appropriately isolated to test the unregularized point-density ansatz on its own terms.
- **Resolution of Prior Concerns:** The incomplete Section 5 has been completely excised; the $s/2$ geometric radius in the lower bound is clarified; and Laloë (2022) Eq. (37) is explicitly cited.

No major issues survive. The manuscript is mathematically rigorous, sharply focused, and recommended for publication.
