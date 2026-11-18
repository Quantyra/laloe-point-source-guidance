#let paper-title = "A local flux obstruction to guidance in Laloë’s point-source collapse model"
#set document(title: paper-title, author: "Daniel Fredriksen", keywords: ("Bohmian mechanics", "collapse models", "point sources", "probability current"))
#set page(paper: "us-letter", margin: (x: 0.92in, top: 0.76in, bottom: 0.72in), numbering: "1")
#set text(font: "Libertinus Serif", size: 11pt, lang: "en")
#set par(justify: true, leading: 0.48em, spacing: 0.58em)
#set heading(numbering: "1.")
#show heading.where(level: 1): set text(size: 13pt)
#show heading.where(level: 1): set block(above: 0.85em, below: 0.4em)
#set math.equation(numbering: "(1)")
#let dd = math.upright("d")
#let hbar = $ℏ$
#align(center)[#text(size: 17pt, weight: "bold", paper-title) \
#v(4pt)
#link("https://orcid.org/0009-0002-9123-7435")[Daniel Fredriksen] · Quantyra Inc. \
#text(size: 9.5pt)[18 November 2026]]
#v(4pt)
*Abstract.* In Laloë’s gravitational collapse model, the actual particle positions source a potential with a positive imaginary localization term. We examine the displayed point-density equation with each particle’s own source retained. Around a subluminal occupied configuration in dimension $D$, the normalized continuity equation requires outward probability flux of order at least $s^(D-1)$ through a neighborhood of radius $s$, integrated over a fixed time interval. A continuous Bohmian current gives only $o(s^(D-1))$ relative flux there. We also exclude a spatially differentiable guiding phase under an explicit time-domination and density-regularity hypothesis. Retardation preserves the lower bound. A complex Coulomb eigenfunction illustrates why an arbitrarily small radial phase cusp matters at its center. A positive source width removes the singular scaling. The result concerns the compatibility of the wave and guiding equations in a specified regularity class; physical detector rates remain undetermined.

= Which point-source equation is at issue?
Laloë proposed that actual Bohmian positions source a Newtonian field and that an imaginary part of the coupling localizes the wave [1]. His Sec. 2.1 compares the singularity with a small Coulomb kink. In the usual real Coulomb problem the cusp of a stationary bound state can occur entirely in its amplitude [3]. For guidance one needs the *phase gradient at the actual particle*. The imaginary coupling changes the local probability balance precisely where that gradient is needed. Laloë wrote the configuration-space balance explicitly in a subsequent paper [2, Sec. 4]. We use it to test the guiding law.

Let $q=(q_1, dots, q_N) in RR^D$, $D=3N$, be the spatial argument of a normalized wave $Phi$, and $Q(t)$ the actual joint configuration of $N$ equal positive masses $m$. Products of the number density with the classical mass density in Eqs. (2), (3), (8) and (9) of [1] give the following positive field energy when read literally:
$ W(q,t) = G m^2 sum_(i,j=1)^N K_j(q_i,t), quad
 K_j(z,t) = integral_(RR^3) (delta^3 (u-Q_j(t-abs(z-u)/c)))/(abs(z-u)) dd^3 u. $ <kernel>
The delay is that of Eq. (23) of [1]. The sum explicitly contains $i=j$. Section 2.6 of [1] describes a particle acting on other particles, and the hydrogen example emphasizes the cross terms. If one excludes the diagonal and the particles remain separated with regular subluminal histories, the local argument below loses its singular term. Equation (4) of [1] separately offers a Gaussian density. Both choices matter to the interpretation.

For this all-pairs sum, with $epsilon>0$, Eqs. (13) and (14) of [1] are
$ i hbar partial_t Phi = [H_0-W+i epsilon (W-⟨W⟩)] Phi,
 quad dot(Q) = (hbar/m) nabla arg Phi (Q,t). $ <dynamics>
Here $H_0$ has the usual kinetic energy and real scalar potentials, and $⟨W⟩=integral W abs(Phi)^2 dd q$ is evaluated on the wave for this one history. We use the configuration-space guiding law. With $rho=abs(Phi)^2$ and $j=(hbar/m) op("Im")(overline(Phi) nabla Phi)$, the distributional wave balance reads
$ partial_t rho + nabla dot j = (2 epsilon/hbar)(W-⟨W⟩)rho. $ <balance>
The density in @balance refers to a single wave. No identification with the distribution of actual positions across runs at later times is used.

= Required flux near the occupied configuration
On a compact interval $I=[t_1,t_2]$ of positive duration assume the source histories are piecewise $C^1$, subluminal with $abs(dot(Q)_j) <= beta c$, $beta<1$, including the retardation times used below. At $z!=Q_j(t)$, write $t_r=t-R/c$, $R=abs(z-Q_j(t_r))$ and $n=(z-Q_j(t_r))/R$. Subluminal motion gives a unique retarded root for a history extended into the past. The determinant of the delta-function change of variables in @kernel is $1-n dot dot(Q)_j(t_r)/c$. Moreover $abs(z-Q_j(t))>= (1-beta)R$. Consequently, almost everywhere,
$ K_j(z,t)=1/(R(1-n dot dot(Q)_j(t_r)/c)) >= (1-beta)/(1+beta) 1/abs(z-Q_j(t)). $ <delay>
The same lower bound with factor one holds for the instantaneous kernel.

*Theorem (regular guidance).* Suppose @balance holds weakly, with the current and source locally integrable, and $rho$ continuous in a tube about the path on $I$, where $0<rho_* <= rho <= rho^star < infinity$. Assume $integral_I ⟨W⟩ dd t<infinity$. If $j$ extends jointly continuously to the tube with $j(Q(t),t)=rho(Q(t),t)dot(Q)(t)$, the point-source dynamics with $epsilon>0$ and its diagonal terms cannot satisfy these hypotheses simultaneously.

*Proof.* Take $0<=chi<=1$ smooth, equal to one on the ball of radius $1/2$ and zero outside the unit ball in $RR^D$. Write $chi_s(q,t)=chi((q-Q(t))/s)$ and $M_s(t)=integral chi_s rho dd q$. Testing @balance against this moving function gives
$ M_s(t_2)-M_s(t_1)
  = integral_I integral (j-rho dot(Q)) dot nabla chi_s dd q dd t
    + (2 epsilon/hbar) integral_I integral chi_s (W-⟨W⟩)rho dd q dd t. $ <tube>
The term $-rho dot(Q)$ comes from the time derivative of the cutoff. One may first use smooth time cutoffs and a smooth approximation to the center path, then pass to the limit at fixed $s$. Absolute continuity of the path, its bounded speed and the stated integrability justify the test; continuity gives the endpoint masses.

Both endpoint masses are $O(s^D)$. In the inner ball even one diagonal term satisfies $W >= G m^2(1-beta)/[(1+beta)s]$ by @delay. Every other term is nonnegative. With $v_D$ the unit ball volume, the second integral term in @tube, including its prefactor, is at least
$ C s^(D-1)-O(s^D), quad
 C=(2 epsilon G m^2)/hbar (1-beta)/(1+beta) rho_* abs(I) 2^(-D) v_D >0. $ <lower>
The subtracted expectation contributes $O(s^D)$ after time integration. The relative current $j-rho dot(Q)$ vanishes at the center and tends uniformly to zero on shrinking tubes (or by dominated convergence on the smooth time pieces). Since $norm(nabla chi_s)_1=O(s^(D-1))$, the first term in @tube is $o(s^(D-1))$, contradicting @lower. The sign is essential: the source calls for an outward flux across the moving boundary. #h(1fr)$square$

= A phase differentiable only at the center
Discontinuity of a velocity field alone leaves open the value of a gradient at the center. The following variant tests a weaker spatial phase condition with additional density and time control.

*Proposition.* Keep the balance, source, path and non-nodal density hypotheses of the theorem. In place of continuity of $j$, assume $rho$ is spatially Lipschitz in the tube uniformly in time. Use a local real phase $theta$ with weak spatial gradient and $j=(hbar/m)rho nabla theta$ almost everywhere. For almost every $t$ suppose
$ theta(Q+u,t)=theta(Q,t)+b(t) dot u+E_t(u), quad
 dot(Q)=(hbar/m)b(t). $
Require $e_s(t)=sup_(abs(u)<=s) abs(E_t(u))/s -> 0$ as $s -> 0$ at those times, with $e_s<=g$ for all sufficiently small $s$ and a common $g in L^1(I)$. These assumptions are also incompatible with @balance. In particular, a spatially differentiable phase with a uniform local Lipschitz bound on the phase itself and bounded center speed meets the domination condition.

*Proof.* In the current term of @tube, subtract the linear part of the phase and integrate by parts in space at fixed time. Apart from the constant $hbar/m$, the result is
$ -integral E_t(u) [nabla rho dot nabla chi_s+rho Delta chi_s] dd u. $
The derivatives of the cutoff have $L^1$ norms of order $s^(D-1)$ and $s^(D-2)$, respectively. Thus the magnitude is bounded by $C' e_s(t)(s^D+s^(D-1))$. Time integration gives $o(s^(D-1))$ by dominated convergence. Equation @lower again gives the contradiction. #h(1fr)$square$

The time majorant is part of the statement. Pointwise spatial differentiability alone supplies no such time estimate. Both results concern intervals of nonzero center density. At an initially Born-distributed configuration the initial wave density is positive almost surely; a regular continuation with joint continuity gives a short interval of positivity. Standard global existence results for ordinary Bohmian dynamics control the flux into singular sets that typical trajectories avoid [4]. Here an actual particle carries a singular source for the entire trajectory.

= Frozen-source check and finite-width alternative
Hold one source fixed at the origin. For $H=p^2/(2m)-(1-i epsilon)kappa/r$, $kappa=G m^2$, the radial eigenfunction is proportional to $exp(-a r)$ with $a=m(1-i epsilon)kappa/hbar^2$. Its energy is $-hbar^2 a^2/(2m)$. The identity $Delta exp(-a r)=(a^2-2a/r)exp(-a r)$ extends weakly across zero. After normalization, $rho$ is stationary, $⟨1/r⟩=op("Re")(a)$, and for $r>0$
$ j/rho=(epsilon kappa/hbar) hat(r). $
The flux out of a radius-$r$ sphere is exactly $4pi r^2 rho(r)epsilon kappa/hbar$. The directional velocities have no common limit at zero. This example checks the sign with an externally fixed source. The theorem above treats a moving source in the coupled configuration-space balance.

For the centered Gaussian in Eq. (4) of [1] with width $a_L>0$, the stationary kernel is $op("erf")(r/a_L)/r$, finite at zero. A moving Gaussian also gives a locally bounded retarded kernel: the distance between an integration point $u$ and the retarded source is bounded below by $(1-beta)abs(u-z)-abs(z-Q(t))$. This controls the Gaussian tail, and $1/abs(z-u)$ is locally integrable in three dimensions. At fixed width the source integral in @tube is $O(s^D)$. Interchanging the small-neighborhood and zero-width limits would require a separate estimate. Even uniform convergence of phases need not control their center gradients: $k sqrt(abs(z-s d)^2+s^2)$ tends uniformly to $k abs(z)$ for fixed vector $d$, whereas its gradient at zero is $-k d/sqrt(1+abs(d)^2)$. These smooth functions illustrate a trace issue; they are not proposed as solutions of the centered Gaussian equations.

= Consequence for a detector calculation
As an illustration, take two orthogonal, disjoint port packets $f_L,f_R$ and one fixed unitary analyzer $U$. Prepare the two signal packets $U^dagger(a f_L+b f_R)$ and $U^dagger(b f_L+a f_R)$ with $a=sqrt(11/20)$ and $b=sqrt(9/20)$. Their squared overlap is $0.99$. Applying $U$ followed by a position swap into a ready pointer gives the port probabilities $(0.55,0.45)$ and $(0.45,0.55)$. The equal-prior success is $0.55$, the ordinary single-copy optimum [5]. A quarter-period oscillator Fourier transform with translated copies of one bump realizes the analyzer with identical input position densities. In equal-mass sum and difference coordinates, oscillator evolution by one full and one half cycle, respectively, realizes the swap up to phase.

For an actual-position readout one must propagate the signal and pointer together and average the final pointer position over the initial configurations, scoring any failed detection by a fair guess. In the point-source model the difficulty already occurs during propagation. The theorem identifies the need to specify or justify a singular guiding velocity at the source if this reading is retained. It places no numerical bound on the success rate of a completed model. A law excluding the diagonal, a positive-width law, and a possible singular trajectory selection require their own analysis.

#heading(numbering: none)[References]
#let refitem(n, body) = block(above: 3pt, below: 3pt)[#strong([\[#n\]]) #body]
#refitem(1)[F. Laloë, “A model of quantum collapse induced by gravity,” #emph[European Physical Journal D] *74*, 25 (2020). #link("https://doi.org/10.1140/epjd/e2019-100434-1")[Journal] · #link("https://arxiv.org/html/1905.12047v4")[Author version, v4].]
#refitem(2)[F. Laloë, “Gravitational quantum collapse in dilute systems,” #emph[Comptes Rendus Physique] *23*, 27–40 (2022). #link("https://doi.org/10.5802/crphys.104")[Article].]
#refitem(3)[T. Kato, “On the eigenfunctions of many-particle systems in quantum mechanics,” #emph[Communications on Pure and Applied Mathematics] *10*, 151–177 (1957). #link("https://doi.org/10.1002/cpa.3160100201")[Article].]
#refitem(4)[K. Berndl, D. Dürr, S. Goldstein, G. Peruzzi and N. Zanghì, “On the global existence of Bohmian mechanics,” #emph[Communications in Mathematical Physics] *173*, 647–673 (1995). #link("https://arxiv.org/abs/quant-ph/9503013")[Author version].]
#refitem(5)[C. W. Helstrom, #emph[Quantum Detection and Estimation Theory], Academic Press (1976), Chap. IV.]
