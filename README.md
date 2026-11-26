# UTO-Omega-M7 — Millennium Seven research prototypes

Seven plain-text Shell one-liners, each strictly under 2048 bytes including the newline. These are research interfaces, NOT seven proofs. Python 3 is required; search requires a trusted, compatible Lean/Lake/Mathlib project.

## Commands

- `sh 02-Riemann.sh` — exact self reproduction to stdout.
- `sh 02-Riemann.sh status` — targets and readiness.
- `sh 02-Riemann.sh encode` / `sh 02-Riemann.sh decode HEX` — G257 source roundtrip.
- `sh 02-Riemann.sh emit 1 0` — first candidate, target index 0.
- `sh 02-Riemann.sh search RH.lean 1` — one search stage; 0 means no stage cap. No existing output is overwritten. `REVIEW` indicates a candidate passed the local text-output gate, not a validated Millennium solution. The limited tactic enumeration is not complete; independently review statement, dependencies, axioms and kernel results. `NO_LAKE`, `UNKNOWN`, `INCOMPLETE` are not proof successes.

## Scope

RH targets Mathlib RiemannHypothesis. The other active targets follow the LeanMillenniumPrizeProblems registry; select and independently review a compatible revision. P vs NP uses separate positive and negative targets; Navier–Stokes uses Fefferman A–D separately. BSD and Poincare target the registry propositions. Hodge and Yang–Mills have empty target lists because the cited formalizations are incomplete. Poincare is solved mathematically by Perelman; no full formal proof is included. RH has a publicly announced machine-checked proof; this project does not independently reproduce it. No CI, automatic deployment or external downloads are configured.

Sources: https://www.claymath.org/millennium-problems/ ; https://github.com/lean-dojo/LeanMillenniumPrizeProblems/blob/main/Problems/Registry.lean ; https://github.com/leanprover-community/riemann-hypothesis

## Local checks

- `01-P-vs-NP.sh`: 1971 bytes; one line; self reproduction and G257 roundtrip checked.
- `02-Riemann.sh`: 1886 bytes; one line; self reproduction and G257 roundtrip checked.
- `03-Navier-Stokes.sh`: 2038 bytes; one line; self reproduction and G257 roundtrip checked.
- `04-Hodge.sh`: 1885 bytes; one line; self reproduction and G257 roundtrip checked.
- `05-Birch-Swinnerton-Dyer.sh`: 1954 bytes; one line; self reproduction and G257 roundtrip checked.
- `06-Yang-Mills.sh`: 1889 bytes; one line; self reproduction and G257 roundtrip checked.
- `07-Poincare.sh`: 1931 bytes; one line; self reproduction and G257 roundtrip checked.

Lean not installed; no actual theorem check performed.
