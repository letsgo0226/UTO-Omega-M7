import Mathlib
open Real
set_option autoImplicit false

theorem conic_trisection (p : ℝ) (ha : 0 < p) (hb : p < π) (x : ℝ) :
    (1 < x ∧ x < 2 ∧ (x-cos p)^2+(x^2-2)^2=4+(cos p)^2) ↔
      x=2*cos(p/3) := by
  let t := 2*cos(p/3)
  change _ ↔ x=t
  have h1 := cos_lt_cos_of_nonneg_of_le_pi (x:=p/3) (y:=π/3) (by linarith) (by linarith [pi_pos]) (by linarith)
  rw [cos_pi_div_three] at h1
  have h2 := cos_lt_cos_of_nonneg_of_le_pi (x:=0) (y:=p/3) (by norm_num) (by linarith [pi_pos]) (by linarith)
  rw [cos_zero] at h2
  have tl : 1<t := by dsimp [t]; linarith
  have tu : t<2 := by dsimp [t]; linarith
  have ht : t^3-3*t-2*cos p=0 := by
    have h := cos_three_mul (p/3)
    rw [show 3*(p/3)=p by ring] at h
    dsimp [t]
    nlinarith only [h]
  constructor
  · rintro ⟨xl,xu,h⟩
    have hf : x*(x^3-3*x-2*cos p)=0 := by linear_combination h
    have hx := (mul_eq_zero.mp hf).resolve_left (by linarith)
    have he : (x-t)*(x^2+x*t+t^2-3)=0 := by linear_combination hx-ht
    have hp : 0<x^2+x*t+t^2-3 := by
      nlinarith [sq_nonneg (x-1),sq_nonneg (t-1),mul_pos (sub_pos.mpr xl) (sub_pos.mpr tl)]
    exact sub_eq_zero.mp ((mul_eq_zero.mp he).resolve_right (ne_of_gt hp))
  · intro h
    subst x
    refine ⟨tl,tu,?_⟩
    linear_combination t*ht
#print axioms conic_trisection
