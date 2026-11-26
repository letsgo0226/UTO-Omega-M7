# 08 — Angle trisection (extension, not a Millennium Prize problem)

Based on the supplied research note (2026-11-20), "Exact trisection of an arbitrary angle with a parabola and a circle."

The candidate theorem conic_trisection states that, for 0 < p < pi, the circle-parabola intersection with 1 < x < 2 has exactly the abscissa x = 2 cos(p/3). It assumes exact conic intersection as an additional construction primitive. This does NOT refute Wantzel's impossibility theorem for unmarked straightedge and compass. The classical 60-degree example has irreducible cubic t^3 - 3t - 1.

## Files
- 08-Angle-Trisection.sh: 1906 ASCII bytes, including final newline. Self-reproduction, G257 roundtrip and emission tested locally.
- 08-Angle-Trisection.lean: emitted Lean 4 candidate proof. Not yet checked by the Lean kernel.

## Usage
    sh 08-Angle-Trisection.sh
    sh 08-Angle-Trisection.sh emit
    sh 08-Angle-Trisection.sh encode
    sh 08-Angle-Trisection.sh decode HEX

In a trusted compatible Mathlib project, run:
    lake env lean 08-Angle-Trisection.lean

Review the actual kernel result and printed axioms; no verification success is asserted here. The shell is a generator, not a standalone Lean verifier. No CI or deployment has been enabled.

This extension leaves the seven original Millennium research prototypes unchanged. The original uploaded research document is not republished.
