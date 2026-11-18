# Grok review record

The following sections reproduce the reviewer’s returned text. The editorial decisions are in [the review disposition](disposition.md).

## Blind theorem assessment

The claim is accepted with a minor repair to its regularity hypothesis. The self-pairing point source is incompatible with a limiting finite probability current at \(Q\). It is not incompatible with Fréchet control on the phase alone.

What was used is the problem paraphrase only: a normalized anti-Hermitian multiplication by a positive multiple \(\varepsilon\) of the all-pairs point kernel, self-pairs included; subtraction of the expectation; phase guidance; retardation. The Liénard–Wiechert expansion below is derived here. Berndl–Kato were not re-read. No arXiv or DOI text was opened.

Let \(\rho\) be the configuration-space density, \(d=3N\), and \(j=\rho v\). Normalization replaces the multiplier \(u\) by \(u-\langle u\rangle\), so
\[
\partial_t\rho+\nabla\cdot j=2\varepsilon(u-\langle u\rangle)\rho.
\]
For a subluminal \(C^1\) worldline the retarded self-kernel is homogeneous of degree \(-1\) at the instantaneous position:
\[
u_{\mathrm{self}}(Q+h)=\frac{\kappa(\hat h,\beta)}{|h_i|},\qquad
\kappa=\bigl(1-\beta^2\sin^2\theta\bigr)^{-1/2}\in\bigl[1,(1-\beta^2)^{-1/2}\bigr].
\]
Cross-pairs stay smooth when the \(Q_j\) are separated. Thus \(\kappa\ge 1\). In three dimensions the same leading term is the Coulomb \(1/|h|\).

On the comoving ball \(B_R(t)\),
\[
\frac{d}{dt}\int_{B_R}\rho
=\int_{\partial B_R}\rho(\dot Q-v)\cdot n\,dA
+2\varepsilon\int_{B_R}(u-\langle u\rangle)\rho.
\]
Spatial Lipschitz continuity of \(\rho\) and \(\rho(Q)>0\) give, with \(I=\int_{B_1}\kappa/|u_i|\,d^du\in(0,\infty)\),
\[
\int_{B_R}u_{\mathrm{self}}\rho
=\rho(Q)\,I\,R^{d-1}+O(R^d),
\]
while \(\langle u\rangle\int\rho\) and every smooth pair contribute \(O(R^d)\). The left side is \(O(R^d)\) because the mass of \(B_R\) is. A constant limiting velocity has vanishing exact flux through \(\partial B_R\); a uniform error \(\eta(R,t)\) leaves \(O(\eta R^{d-1})\). Time integration produces
\[
O(R)=o(1)+2\varepsilon I\int\rho(Q(t),t)\,dt
\]
whenever \(\int\eta(\cdot,t)\,dt\to 0\). The integral of \(\rho(Q)\) is positive if \(\rho\) is continuous along continuous \(Q\) and positive at one time. This is a contradiction for small \(R\). The residue is a local source for the attractive sign. Either sign of a nonzero multiple is impossible. The same \(R^{2}\) versus \(R^{3}\) balance holds for the one-body marginal of a single self-pair.

The strongest objection is the second formulation. An \(L^1\) bound on the Taylor remainder of the phase does not bound the surface current: thin shells of height \(o(R)\) and large radial derivative keep \(S(Q+h)=S+b\cdot h+o(|h|)\) while the flux stays of order \(R^{d-1}\) and can cancel \(I\). Fréchet differentiability of \(S\) at the single point \(Q\) is therefore too weak. The obstruction appears only if \(v(Q+h,t)\to b(t)\) with an \(L^1_t\) modulus, or if \(\nabla S\) itself has that limit.

What survives is the point-source conclusion under that current hypothesis, for \(\varepsilon>0\), self-pairs included, \(\rho(Q)>0\), and \(|\dot Q|<c\). Smearing of positive width removes the \(R^{d-1}\) residue. A non-Fréchet phase cusp, for instance a radial current of size \(\sim\hat h\), can carry the \(R^{d-1}\) mass and is not ruled out. Hermitian Coulomb cusps and ordinary Bohmian non-collision theorems control a sourceless continuity equation. They do not move this residue.

## Full manuscript at f5521f7

The verdict is to accept. The note’s point-source obstruction is proved under the hypotheses actually stated. I used only the manuscript and the supplied paraphrase. I did not open the Laloë, Berndl, or Kato sources.

For \(\varepsilon>0\), the displayed dynamics give
\[
\partial_t\rho+\nabla\cdot j=(2\varepsilon/\hbar)(W-\langle W\rangle)\rho.
\]
With \(\chi_s(q,t)=\chi((q-Q(t))/s)\), the moving-cutoff identity is exactly the tube formula in the text: endpoint masses are \(O(s^D)\), and \(-\rho\dot Q\) is the transport correction. For a piecewise \(C^1\) history with \(|\dot Q_j|\le\beta c\), \(\beta<1\), the retarded root is unique and
\[
K=\frac1{R(1-n\cdot\beta)}\ge\frac{1-\beta}{1+\beta}\frac1{|z-Q_j(t)|},
\]
since \(1-n\cdot\beta\le1+\beta\) and \(|z-Q(t)|\ge(1-\beta)R\). Thus one diagonal term is at least \(Gm^2(1-\beta)/((1+\beta)s)\) throughout \(|q-Q|<s\). All kernels are nonnegative. On the inner ball this produces a source at least \(C s^{D-1}-O(s^D)\) after time integration, with the printed \(C>0\); \(\int_I\langle W\rangle\,dt<\infty\) costs only \(O(s^D)\). The singular scaling is \(s^{D-1}\), not worse: \(1/|q_i|\) is locally integrable on \(\mathbb{R}^{3N}\).

A jointly continuous current with \(j(Q)=\rho(Q)\dot Q\) makes the relative flux \(o(s^{D-1})\) because \(\|\nabla\chi_s\|_1=O(s^{D-1})\). That cannot balance a positive residue. The required relative flux is outward. The same vanishing relative flux also rules out \(\varepsilon<0\); the paper only needs the model’s sign.

The earlier objection, that a Fréchet phase is too weak because thin shells can still carry flux \(O(s^{D-1})\), does not survive the proposition as written. There \(e_s=\sup_{|u|\le s}|E_t(u)|/s\), so \(|E|\le s e_s\), and \(j\) is the current of a weak gradient. Integration by parts gives
\[
\int\rho\nabla E\cdot\nabla\chi_s=-\int E(\nabla\rho\cdot\nabla\chi_s+\rho\Delta\chi_s).
\]
Lipschitz control of \(\rho\) and \(\|\Delta\chi_s\|_1=O(s^{D-2})\) produce a spatial bound \(C'e_s(s^D+s^{D-1})\). The shell thickness cancels; a height \(o(s)\) does not leave an \(O(s^{D-1})\) flux. Dominated convergence with a uniform integrable majorant makes the time integral \(o(s^{D-1})\). Pointwise differentiability without that majorant is not claimed, and the text says so. A merely continuous velocity limit is a different, stronger hypothesis and is not needed here.

What survives is incompatibility, for \(\varepsilon>0\), self-pairs included, uniform \(\beta<1\), and \(\rho\) bounded away from zero, of the normalized point-source balance both with a continuous matching current and with the stated dominated phase expansion. Fixed positive width leaves a locally bounded kernel and an \(O(s^D)\) source integral. The complex Coulomb example is consistent: phase \(\propto r\) is not Fréchet at the origin, \(j/\rho=(\varepsilon\kappa/\hbar)\hat r\) has no limit, and the flux \(4\pi r^2\rho\,\varepsilon\kappa/\hbar\) saturates the balance for an external source. Kato cusps and sourceless Bohmian non-collision theorems do not cancel this residue. Diagonal deletion at positive separation, or a singular velocity law, remains open, as the note says.

No formula repair is required. Two optional clarifications: in the proposition, display \(|E|\le s e_s\) before the \(s^{D-2}\) estimate, and in the abstract, tie “arbitrarily small” to arbitrary \(\varepsilon>0\) rather than to a vanishing cusp. The Helstrom arithmetic (\(2ab\), squared overlap \(0.99\), success \(0.55\)) is correct and inessential.
