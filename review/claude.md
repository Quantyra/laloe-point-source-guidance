# Claude review record

The following sections reproduce the reviewer’s returned text. The editorial decisions are in [the review disposition](disposition.md).

## Blind theorem assessment

# Referee report: point-source self-interaction in Laloë's gravity-collapse model

**Sources used.** I used only the paraphrase in the request and standard analysis: weak continuity equations, Kato-type cusp asymptotics, and Lipschitz flows. I did not open the arXiv, CRAS, Berndl, or Kato texts. Equation numbers are as you stated them and are unverified. I am assuming ε is the collapse coupling, not a source width.

**Verdict: minor revision.** The claim survives, and I derived it independently below. The wording needs tightening because it proves non-existence in a regularity class, not that the model is inconsistent.

## Derivation (configuration dimension d = 3N)

Write ρ = |ψ|² and S for the phase. The normalized non-Hermitian evolution (Eqs. 13 and 37) gives:

∂ₜρ + ∇·(ρ ħ∇S/m) = ±2(Γ − ⟨Γ⟩)ρ.

The i=j term contributes Γ ≈ γ/|xᵢ − Qᵢ(t)| near Q, with γ ∝ ε > 0.

For a subluminal source (Eq. 23), the retarded distance is comparable to the instantaneous distance, within factors (1±β)⁻¹. The 1/r singularity therefore survives at the current position. Because ρ is bounded, ⟨Γ⟩ is finite.

1. **Weak version.** Take a bump φ of radius δ centred at Q(t). Testing the equation against φ, with ρ Lipschitz (constant L) and ρ ≥ ρ_min > 0, put M(t) = ∫ρφ ≈ ρ(Q)δᵈ.
   - The source term contributes about ±(c/δ)M.
   - Integrating the flux by parts, ∫ρ∇S·∇φ = −∫S ∇·(ρ∇φ). This needs ∇ρ ∈ L∞, which is where the Lipschitz hypothesis enters.
   - The linear part b·y of S yields a constant velocity. That velocity cancels exactly against the transport term −Q′·∇φ, because Q′ = ħb/m.
   - The remainder e(y,t) contributes at most sup|e|·(Lδᵈ⁻¹ + ρδᵈ⁻²), which is about M·η_δ(t)/δ with η_δ = sup_{|y|≤δ}|e|/δ.
   - Fréchet differentiability gives η_δ → 0 a.e., and the L¹ majorant gives ∫η_δ dt → 0 by dominated convergence.
   - Hence |log M(T)/M(0)| ≥ (cT − C∫η_δ)/δ − C′T, which tends to ∞.
   - But continuity and positivity force M(T)/M(0) toward ρ(Q(T),T)/ρ(Q(0),0), which is finite. That is a contradiction, whatever the sign of the source.
2. **Strong version.** A velocity field that is Lipschitz near Q implies S ∈ C^{1,1}, so the error is e = O(δ²). This case is therefore subsumed by (1). A direct proof also works: nearby flow lines stay at distances comparable to δ, so their log-density drifts by about T/δ.
3. **Where the self-term matters.** The i≠j terms are singular only at xᵢ = Qⱼ, away from Q generically, and are harmless locally (Sec. 2.6). This is the decisive contrast with Berndl et al. Ordinary Coulomb singularities form a fixed null set that typical trajectories avoid. Here the singular set is carried by the trajectory itself.

## Counterexample probe: gradient at the centre vs. continuity

I could not break the claim, but a formal local ansatz shows its hypotheses are sharp. Take ψ ≈ ψ_Q(1 + α|yᵢ| + b·y), with α = ∓imγ/ħ. This is the imaginary-coupling analogue of Kato's real Coulomb cusp. It balances the 1/r term, since Δ|y| = 2/|y|. In this ansatz:

- ψ, ρ and S are all continuous. Because Re α = 0, ρ = |ψ_Q|²(1 + O(|y|²)), so the density is even Lipschitz.
- ∇S carries a hedgehog jump of size about γ. Its divergence, 2γ/|y|, is exactly what cancels the source.

So the obstruction is the gradient at the centre, not continuity. The "small kinks" of Sec. 2.1 are small in amplitude, O(ε), but the contradiction in (1) is independent of the size of γ. Eq. 14 is then ill-defined pointwise. A spherical-mean trace law, which recovers b, is a natural repair, and the claim correctly does not exclude it. The ansatz is formal: I did not prove that the nonlinear ψ–Q system has such solutions.

## Deficiencies to fix

1. **Time regularity.** The claim must state the following explicitly:
   - b ∈ L¹(0,T), so Q is absolutely continuous and φ is Lipschitz in time.
   - ρ ∈ C([0,T]; L¹_loc), and the continuity equation holds in D′ with j ∈ L¹_loc.
   - ⟨Γ⟩ ∈ L¹ₜ.
   - ρ(Q(t),t) ≥ ρ_min > 0 on an interval of positive length. "Positive at Q" pointwise in time is insufficient.
   - The Lipschitz constant is uniform in t, and S is a continuous branch on B_δ, which ρ > 0 permits.
2. **"Regular trajectory."** Define it as Lipschitz velocity near Q, uniformly in time. Note that it implies the weak hypotheses.
3. **Scope.** State "no solution in class X," not "the model is incompatible." Neither existence nor non-existence of the coupled flow is shown. H² (the domain of the Coulomb-type operator) embeds only into C^{0,1/2} and does not supply ∇S(Q).
4. **Out of scope, as the claim says.** Finite-width sources (Eq. 4) give bounded Γ, so no contradiction arises. Nodes, where ρ(Q) = 0, are not covered.

## What survives

For the literal point source with self-interaction, there is no Lipschitz velocity at Q, and no a.e. Fréchet phase derivative under the stated majorant conditions. A Kato-type phase cusp is the generic local alternative.

## Full manuscript at f5521f7

# Referee report: "A local flux obstruction to guidance in Laloë's point-source collapse model"

**Sources used.** I used only the frozen manuscript, your paraphrase, and hand calculation. I did not open [1]–[5]. The attribution of Eqs. (2)–(4), (13), (14), (23) and [2, Sec. 4] is therefore unverified, including whether Laloë intends the diagonal i=j term.

**Verdict: minor revision.** The theorem and proposition are correct as stated. The changes needed are scoping and housekeeping, not repairs.

## What I checked and what holds

- **Kernel.** The Liénard–Wiechert Jacobian 1−n·Q̇/c is correct. So is the bound R ≤ |z−Q_j(t)|/(1−β). Together they give the lower bound in the delay equation.
- **Theorem.** The bound on the source integral is (2ε/ħ)·Gm²(1−β)/((1+β)s)·ρ_*·|I|·v_D(s/2)^D, which equals the stated C. The ⟨W⟩ term is O(s^D). For the flux term, joint continuity on the compact tube gives j−ρQ̇ = [j−j(Q)] − [ρ−ρ(Q)]Q̇ → 0 uniformly. With ‖∇χ_s‖₁ = O(s^{D−1}), the term is o(s^{D−1}). The proof is sound.
- **Proposition.** Integrating by parts gives −∫E∇·(ρ∇χ_s). This needs E ∈ W^{1,1}_loc and ρ Lipschitz, both assumed. The bound C′e_s(Ls^D + ρ^*s^{D−1}) and the dominated-convergence step are correct. The "in particular" clause is also correct: e_s ≤ Lip_θ + |b|.
- **Frozen check (Sec. 4).**
  - a = m(1−iε)κ/ħ² solves the radial equation, with no delta term at 0.
  - ⟨1/r⟩ = Re a.
  - Im E = εmκ²/ħ², which matches the subtracted εκ⟨1/r⟩, so ρ is stationary.
  - j/ρ = (εκ/ħ)r̂.
  - ∇·j = (2εκ/ħ)ρ(1/r − Re a), which reproduces the balance equation exactly.
- **Uniform-limit example.** Correct.
- **Sec. 5 numbers.** 4a²b² = 0.99 and (1+√0.01)/2 = 0.55. The input densities agree because |ae^{ikx₀} + be^{−ikx₀}|² is symmetric in a and b.

## Counterexample probe

The Sec. 4 eigenfunction is itself the extremal counterexample to regularity. ρ is smooth and positive at the centre, and θ is Lipschitz. Yet j/ρ has a hedgehog jump of size εκ/ħ, however small ε is. So continuity of ρ and of θ survives; a gradient at the centre does not. The manuscript draws exactly this distinction (Sec. 3, opening). I found no weak solution meeting either hypothesis set.

I also tried to show the time majorant is necessary. I smoothed the cusp at a time-dependent scale λ(t) → 0. Any such smoothing must also smooth the 1/r source, which the balance equation forbids. So I could not produce a non-dominated differentiable phase. The domination hypothesis may be an artefact of the proof technique, needed because ∂ₜρ is uncontrolled at fixed t, rather than a genuine gap.

## Deficiencies (actionable)

1. **Title and abstract scope.** The point-source reading with the diagonal retained is the paper's own literal reading of [1]. Sec. 1 concedes that excluding i=j, or using Eq. (4), removes the obstruction. "Laloë's point-source collapse model" in the title implies Laloë endorses this reading. Use "the literal all-pairs point-source reading of…" unless [1] is quoted verbatim showing the diagonal is intended.
2. **Theorem hypothesis is stronger than used.** The proof needs only sup_{|q−Q(t)|≤s} |j−ρQ̇| → 0 uniformly in t ∈ I, not continuity of j on the whole tube. State this weaker hypothesis.
3. **Time regularity.** Under joint continuity of j and ρ ≥ ρ_*, the condition j(Q,t) = ρQ̇ forces Q̇ to be continuous. "Piecewise C¹" is then either redundant or inconsistent at the breaks. Say C¹ on I, or apply the identity only off the breakpoints.
4. **Proposition measurability.** Require b measurable, θ continuous in u, and jointly measurable phase so that e_s(t) is measurable. The sentence "pointwise spatial differentiability alone supplies no such time estimate" asserts necessity. Either give an example or rephrase as "our proof requires".
5. **One missing line (Sec. 2).** Write |q_i−Q_i(t)| ≤ |q−Q(t)|. This step is what turns the codimension-3 diagonal singularity into a lower bound on the configuration ball.
6. **Positivity remark (Sec. 3).** "Born-distributed implies ρ(Q,0) > 0 a.s." requires ρ(·,0) continuous. State this.
7. **Sec. 5 is disconnected.** It proves nothing and depends on unstated motivation. Either tie it to a claim, for instance that guidance is undefined exactly when a readout needs it, or cut it to two sentences.

## Strongest objection (independent)

The result is a non-existence theorem within a regularity class. It does not show the model is inconsistent. A spherical-mean trace law would select b, giving Q̇ = 0 in the frozen case, and could define a dynamics. The manuscript acknowledges this but does not test it. Its significance therefore rests on whether such a law is natural. A paragraph on that would sharpen the contribution.

## What survives

Under the literal diagonal point source with ε > 0, subluminal histories, and ρ ≥ ρ_* > 0 on an interval, there are two results:

- No current is uniformly continuous at Q.
- No a.e. Fréchet-differentiable phase at Q exists for Lipschitz ρ with a dominated linearisation error, which includes every Lipschitz phase.

Finite width (Eq. 4), the off-diagonal-only law, nodal configurations, and singular trace laws are correctly left open.

## Revised manuscript at 0c20ce3

# Revised-manuscript check: all-pairs point-source flux obstruction

**Material used.** I used my prior report, the revised text as pasted, and hand calculation. I opened no files or references, so I did not compute the sha256. Attributions to [1]–[2] remain unverified, including Sec. 2.1, Sec. 2.6, Eqs. (4), (23) and (37).

**Verdict: accept, with three editorial fixes.** No major issue survives.

## How the revision resolves my concerns

- **Integrated current hypothesis.** The condition ∫_I ess sup|j−ρQ̇| → 0 is weaker than the uniform version I asked for, and it still suffices. The current term is bounded by that integral times ‖∇χ_s‖₁ = O(s^{D−1}). The C¹ centre path removes the earlier piecewise-C¹ inconsistency, so the continuous-current corollary follows.
- **Lower bound.** The line |q_i−Q_i| ≤ |q−Q| is now present. Halving 2Gm²(1−β)/((1+β)s) over the inner ball reproduces C exactly.
- **Smooth cutoff versus thin shells.** This is now correct and explicit. Integrating by parts against ρ∇χ_s, which is Lipschitz, gives the bound s·e_s·(Ls^{D−1} + ρ_max·s^{D−2}). A thin shell would instead need ∇E, which e_s does not control. Joint measurability and continuity in u make e_s measurable through a countable sup.
- **Self term.** The abstract, title and Sec. 1 now present the diagonal as a reading that is retained, not as Laloë's endorsement. They also flag the cross-term emphasis in [1]. This is resolved.
- **Remaining items.** The necessity claim has been replaced by "part of the statement", positivity is tied to continuity, and Sec. 5 is cut.
- **Arithmetic.** The frozen check and the retarded Gaussian distance bound (1−β)|u−z| − |z−Q(t)| are both correct.

## Counterexample probe

I found no admissible solution. The frozen eigenfunction's flux 4πr²ρεκ/ħ remains the extremal case: ρ and θ are continuous, but there is no common directional limit. The spherical-mean trace now appears, correctly framed as an open supplement.

## Editorial fixes

1. **Theorem wording.** "A sufficient obstruction is the following…" mislabels a hypothesis. Write "Assume moreover…".
2. **Measurability.** State that t ↦ ess sup_{|q−Q(t)|≤s}|j−ρQ̇| is measurable, or use an upper integral.
3. **Typo in Sec. 4.** "kernel. the distance" should start with a capital.
