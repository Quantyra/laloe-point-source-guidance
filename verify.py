"""Algebraic controls for S309. This does not simulate a detector trajectory."""

from fractions import Fraction
from math import dist, exp, isclose, pi, sqrt


def check_port_calibration():
    left, right = Fraction(11, 20), Fraction(9, 20)
    overlap_squared = 4 * left * right
    assert left + right == 1 and overlap_squared == Fraction(99, 100)
    assert (2 * left - 1) ** 2 == 1 - overlap_squared
    # Go into unnormalized sum/difference coordinates, advance their parities,
    # then invert the transform. Check the pointer for positions and momenta.
    for source, pointer in [(13, -7), (-2, 5), (0, 3)]:
        total, difference = source + pointer, -(source - pointer)
        assert (total + difference, total - difference) == (2 * pointer, 2 * source)


def check_retarded_kernel():
    # In c=1 units fix z-Q(t)=d. For constant velocity, R=|d+vR|.
    d = (0.6, -0.8, 0.4)
    for velocity in [(0, 0, 0), (0.2, 0.3, 0), (-0.8, 0.1, 0.15)]:
        beta = dist(velocity, (0, 0, 0))
        dv = sum(x * v for x, v in zip(d, velocity))
        length = dist(d, (0, 0, 0))
        radius = (dv + sqrt(dv**2 + (1 - beta**2) * length**2)) / (1 - beta**2)
        ray = [x + v * radius for x, v in zip(d, velocity)]
        assert isclose(dist(ray, (0, 0, 0)), radius)
        nv = sum(x * v for x, v in zip(ray, velocity)) / radius
        kernel = 1 / (radius * (1 - nv))
        assert kernel + 1e-14 >= (1 - beta) / ((1 + beta) * length)


def check_frozen_source():
    # hbar=m=1. Compare an integral of the sourced continuity equation
    # against the probability flux obtained directly from the radial phase.
    kappa, epsilon = 1.25, 0.07
    rate = kappa * (1 - 1j * epsilon)
    for r in (0.125, 0.5, 1, 2):
        energy = -(rate**2 - 2 * rate / r) / 2 - kappa * (1 - 1j * epsilon) / r
        assert abs(energy + rate**2 / 2) < 1e-14
        flux = 4 * pi * r**2 * exp(-2 * rate.real * r) * (-rate.imag)
        steps = 4096
        step = r / steps
        source_integral = 0.0
        for i in range(steps + 1):
            x = i * step
            weight = 1 if i in (0, steps) else (4 if i % 2 else 2)
            source_integral += weight * (x - kappa * x**2) * exp(-2 * kappa * x)
        source_integral *= 8 * pi * epsilon * kappa * step / 3
        assert isclose(flux, source_integral, rel_tol=2e-11)


if __name__ == "__main__":
    check_port_calibration()
    check_retarded_kernel()
    check_frozen_source()
    print("PASS: ordinary port calibration and swap, retarded kernel, radial source/flux")
