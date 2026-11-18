#let paper-title = "A flux obstruction for the all-pairs point source in Laloë’s collapse equations"
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
#align(center)[#text(size: 16.5pt, weight: "bold", hyphenate: false)[A flux obstruction for the all-pairs point source \ in Laloë’s collapse equations] \
#v(4pt)
#link("https://orcid.org/0009-0002-9123-7435")[Daniel Fredriksen] · Quantyra Inc. \
#text(size: 9.5pt)[18 November 2026]]
#v(4pt)
*Abstract.* In Laloë’s gravitational collapse model, the actual particle positions source a potential with a positive imaginary localization term. We examine the displayed point-density equation with each particle’s own source retained. Around a subluminal occupied configuration in dimension $D$, the normalized continuity equation requires outward probability flux of order at least $s^(D-1)$ through a neighborhood of radius $s$, integrated over a fixed time interval. A regular Bohmian current gives only $o(s^(D-1))$ relative flux there. We also exclude a spatially differentiable guiding phase under an explicit time-domination and density-regularity hypothesis. Retardation preserves the lower bound. A complex Coulomb eigenfunction illustrates why an arbitrarily small radial phase cusp matters at its center. A positive source width removes the singular scaling. The result concerns the compatibility of the wave and guiding equations in a specified regularity class. Physical detector rates remain undetermined.

= Which point-source equation is at issue?
Laloë proposed that actual Bohmian positions source a Newtonian field and that an imaginary part of the coupling localizes the wave [1]. His Sec. 2.1 compares the singularity with a small Coulomb kink. In the usual real Coulomb problem the cusp of a stationary bound state can occur entirely in its amplitude [3]. For guidance one needs the *phase gradient at the actual particle*. The imaginary coupling changes the local probability balance precisely where that gradient is needed. Laloë wrote the configuration-space balance explicitly in a subsequent paper [2, Sec. 4]. We use it to test the guiding law.

Let $q=(q_1, dots, q_N) in RR^D$, $D=3N$, be the spatial argument of a normalized wave $Phi$, and $Q(t)$ the actual joint configuration of $N$ equal positive masses $m$. Products of the number density with the classical mass density in Eqs. (2), (3), (8) and (9) of [1] give the following positive field energy under the all-pairs reading.
$ W(q,t) = G m^2 sum_(i,j=1)^N K_j (q_i,t), quad
 K_j (z,t) = integral_(RR^3) (delta^3 (u-Q_j (t-abs(z-u)/c)))/(abs(z-u)) dd^3 u. $ <kernel>
The delay is that of Eq. (23) of [1]. The sum explicitly contains $i=j$. Section 2.6 of [1] describes a particle acting on other particles, and the hydrogen example emphasizes the cross terms. If one excludes the diagonal and the particles remain separated with regular subluminal histories, the local argument below loses its singular term. Equation (4) of [1] separately offers a Gaussian density. The text following Eq. (4) takes the point density for the calculations in [1]. The introduction to [2] emphasizes that the model introduces only one dimensionless parameter beyond the gravitational coupling. Keeping a fixed positive width in the dynamics introduces a length. This gives a reason to test the unregularized equations on their own terms.

For this all-pairs sum, with $epsilon>0$, Eqs. (13) and (14) of [1] are
$ i hbar partial_t Phi = [H_0-W+i epsilon (W-⟨W⟩)] Phi,
 quad dot(Q) = (hbar/m) nabla arg Phi (Q,t). $ <dynamics>
Here $H_0$ has the usual kinetic energy and real scalar potentials, and $⟨W⟩=integral W abs(Phi)^2 dd q$ is evaluated on the wave for this one history. We use the configuration-space guiding law. With $rho=abs(Phi)^2$ and $j=(hbar/m) op("Im")(overline(Phi) nabla Phi)$, the distributional wave balance reads
$ partial_t rho + nabla dot j = (2 epsilon / hbar)(W-⟨W⟩)rho. $ <balance>
@balance is the configuration-space balance of [2, Eq. (37)], with the energy and $hbar$ explicit. Its density refers to a single wave. No identification with the distribution of actual positions across runs at later times is used.

= Required flux near the occupied configuration
Fix a compact interval $I=[t_1,t_2]$ of positive duration on which the center path is $C^1$. Take incoming histories piecewise $C^1$, with individual speeds bounded by $beta c$, $beta<1$, including all relevant retarded times. For $z!=Q_j (t)$ let $t_r=t-R/c$, $R=abs(z-Q_j (t_r))$, $n=(z-Q_j (t_r))/R$ and $v_r=dot(Q)_j (t_r)$. Subluminal motion gives a unique retarded root for a history extended into the past. The spatial derivative of $u-Q_j (t-abs(z-u)/c)$ at that root is the identity minus $frac(v_r n^T,c)$. The determinant is $1-frac(n dot v_r,c)$. Since $abs(z-Q_j (t)) >= (1-beta)R$, the delta-function integral in @kernel gives, almost everywhere,
$ K_j (z,t)=frac(1,R(1-frac(n dot v_r,c))) >= frac(1-beta,1+beta) frac(1,abs(z-Q_j (t))). $ <delay>
The same lower bound with factor one holds for the instantaneous kernel.

*Theorem (regular guidance).* Suppose @balance holds weakly, with the current and source locally integrable, and $rho$ continuous in a tube about the path on $I$, where $0<rho_(min) <= rho <= rho_(max) < infinity$. Assume $integral_I ⟨W⟩ dd t<infinity$. A sufficient obstruction is the following time-integrated condition on the current relative to the moving center.
$ integral_I op("ess sup")_(abs(q-Q(t))<=s) abs(j(q,t)-rho(q,t) dot(Q)(t)) dd t -> 0 quad (s -> 0). $ <trace>
No solution with the retained point self term and $epsilon>0$ satisfies these assumptions. In particular, a jointly continuous current obeying $j(Q(t),t)=rho(Q(t),t)dot(Q)(t)$ satisfies @trace and is therefore excluded.

*Proof.* Take $0<=chi<=1$ smooth, equal to one on the ball of radius $1/2$ and zero outside the unit ball in $RR^D$. Write $chi_s (q,t)=chi((q-Q(t))/s)$ and $M_s (t)=integral chi_s rho dd q$. Testing @balance against this moving function gives
$ M_s (t_2)-M_s (t_1)
  = integral_I integral (j-rho dot(Q)) dot nabla chi_s dd q dd t
    + (2 epsilon / hbar) integral_I integral chi_s (W-⟨W⟩)rho dd q dd t. $ <tube>
The term $-rho dot(Q)$ comes from the time derivative of the cutoff. One may first use smooth time cutoffs and a smooth approximation to the center path, then pass to the limit at fixed $s$. The bounded center speed and local integrability justify the weak test. Continuity of the density gives both endpoint masses.

Both endpoint masses are $O(s^D)$. In the inner ball $abs(q_i-Q_i (t)) <= abs(q-Q(t)) <= s/2$. By @delay a single diagonal term already gives $W >= 2 G m^2 frac(1-beta, (1+beta)s)$. We retain half this lower bound for simplicity. Every other term is nonnegative. With $v_D$ the unit ball volume, the second integral term in @tube, including its prefactor, is at least
$ C s^(D-1)-O(s^D), quad
 C=(2 epsilon G m^2)/hbar (1-beta)/(1+beta) rho_(min) abs(I) 2^(-D) v_D >0. $ <lower>
The subtracted expectation contributes $O(s^D)$ after time integration. The absolute value of the first term in @tube is bounded by the integral in @trace times $norm(nabla chi_s)_1=O(s^(D-1))$, so it is $o(s^(D-1))$. This contradicts @lower. The continuous-current case follows by uniform continuity on a compact tube and bounded center speed. The required flux points outward. #h(1fr)$square$

= A phase differentiable only at the center
Discontinuity of a velocity field alone leaves open the value of a gradient at the center. The following variant tests a weaker spatial phase condition with additional density and time control.

*Proposition.* Keep the balance, source, path and non-nodal density hypotheses of the theorem. In place of @trace, assume $rho$ is spatially Lipschitz in the tube uniformly in time. Use a jointly measurable local real phase $theta$, continuous in space and spatially $W^(1,1)_(op("loc"))$ at almost every time, with $j=(hbar/m)rho nabla theta$ almost everywhere. For a measurable $b$ and almost every $t$, suppose
$ theta(Q+u,t)=theta(Q,t)+b(t) dot u+E_t (u), quad
 dot(Q)=(hbar/m)b(t). $
Require $e_s (t)=sup_(abs(u)<=s) abs(E_t (u))/s -> 0$ as $s -> 0$ at those times, with $e_s<=g$ for all sufficiently small $s$ and a common $g in L^1(I)$. These assumptions are also incompatible with @balance. In particular, a spatially differentiable phase with a uniform local Lipschitz bound on the phase itself and bounded center speed meets the domination condition.

*Proof.* In the current term of @tube, subtract the linear part of the phase and integrate by parts in space at fixed time. Apart from the constant $hbar/m$, the result is
$ -integral E_t (u) [nabla rho dot nabla chi_s+rho Delta chi_s] dd u. $
The derivatives of the cutoff have $L^1$ norms of order $s^(D-1)$ and $s^(D-2)$, respectively. Thus the magnitude is bounded by $C' e_s (t)(s^D+s^(D-1))$. Time integration gives $o(s^(D-1))$ by dominated convergence. @lower again gives the contradiction. #h(1fr)$square$

A thin shell may carry a large boundary current at a single radius even for a small phase remainder. The smooth cutoff averages over a shell of comparable thickness, so the proof controls the remainder itself after integration by parts. The time majorant is part of the statement. The proof uses it to pass from spatial differentiability at almost every time to a statement on the entire time interval. Both results concern intervals of nonzero center density. Sampling a continuous initial density from its own Born law selects a positive-density point almost surely. Joint continuity along a continuous regular continuation then gives a short interval of positivity. Standard global existence results for ordinary Bohmian dynamics control the flux into singular sets that typical trajectories avoid [4]. Here an actual particle carries a singular source for the entire trajectory.

= Frozen-source check and finite-width alternative
Hold one source fixed at the origin. For $H=p^2/(2m)-(1-i epsilon)kappa/r$, $kappa=G m^2$, the radial eigenfunction is proportional to $exp(-a r)$ with $a=m(1-i epsilon)kappa/hbar^2$. Its energy is $-hbar^2 a^2/(2m)$. The identity $Delta exp(-a r)=(a^2-2a/r)exp(-a r)$ extends weakly across zero. After normalization, $rho$ is stationary, $⟨1/r⟩=op("Re")(a)$, and for $r>0$
$ j/rho=(epsilon kappa/hbar) hat(r). $
The flux out of a radius-$r$ sphere is exactly $4pi r^2 rho(r)epsilon kappa/hbar$. The directional velocities have no common limit at zero. Taking their spherical mean would select zero by symmetry in this example. Such a trace would supplement Eq. (14) of [1]. Its meaning for a coupled moving source would still require an existence and uniqueness analysis. This example checks the sign with an externally fixed source. The theorem above treats a moving source in the coupled configuration-space balance.

For the centered Gaussian in Eq. (4) of [1] with width $a_L>0$, the stationary kernel is $frac(op("erf")(r/a_L),r)$, finite at zero. A moving Gaussian also gives a locally bounded retarded kernel. the distance between an integration point $u$ and the retarded source is bounded below by $(1-beta)abs(u-z)-abs(z-Q(t))$. This controls the Gaussian tail, and $1/abs(z-u)$ is locally integrable in three dimensions. At fixed width the source integral in @tube is $O(s^D)$. Interchanging the small-neighborhood and zero-width limits would require a separate estimate. Even uniform convergence of phases need not control their center gradients. For example, $k sqrt(abs(z-s d)^2+s^2)$ tends uniformly to $k abs(z)$ for fixed vector $d$, whereas its gradient at zero is $-k d/sqrt(1+abs(d)^2)$. This family illustrates the instability of pointwise gradients under uniform phase convergence. It does not solve the centered Gaussian field equations.

For a position detector, an operational probability is obtained by propagating the initial configuration law to the final pointer position. The obstruction occurs before this step for the regular all-pairs point-source dynamics. Singular velocity prescriptions and positive-width sources remain open, as does their effect on any detector probability.

#heading(numbering: none)[References]
#let refitem(n, body) = block(above: 3pt, below: 3pt)[#strong([\[#n\]]) #body]
#refitem(1)[F. Laloë, “A model of quantum collapse induced by gravity,” #emph[European Physical Journal D] *74*, 25 (2020). #link("https://doi.org/10.1140/epjd/e2019-100434-1")[Journal] · #link("https://arxiv.org/html/1905.12047v4")[Author version, v4].]
#refitem(2)[F. Laloë, “Gravitational quantum collapse in dilute systems,” #emph[Comptes Rendus Physique] *23*, 27–40 (2022). #link("https://doi.org/10.5802/crphys.104")[Article].]
#refitem(3)[T. Kato, “On the eigenfunctions of many-particle systems in quantum mechanics,” #emph[Communications on Pure and Applied Mathematics] *10*, 151–177 (1957). #link("https://doi.org/10.1002/cpa.3160100201")[Article].]
#refitem(4)[K. Berndl, D. Dürr, S. Goldstein, G. Peruzzi and N. Zanghì, “On the global existence of Bohmian mechanics,” #emph[Communications in Mathematical Physics] *173*, 647–673 (1995). #link("https://arxiv.org/abs/quant-ph/9503013")[Author version].]
