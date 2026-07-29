import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean

structure MonomialOrderPackage where
  variables : ℕ
  totalOrder : List (ℕ → ℕ) → Prop
  admissibleOrder : Prop
  leadingTermIdeal : Prop

structure MonomialOrderEvidence (M : MonomialOrderPackage) where
  totalOrderClosed : M.totalOrder ≠ ∅
  admissibleOrderClosed : M.admissibleOrder
  leadingTermIdealClosed : M.leadingTermIdeal

def MonomialOrderClosed (M : MonomialOrderPackage) : Prop :=
  M.totalOrder ≠ ∅ ∧ M.admissibleOrder ∧ M.leadingTermIdeal

theorem monomial_order_closed_from_evidence (M : MonomialOrderPackage)
    (E : MonomialOrderEvidence M) : MonomialOrderClosed M := by
  exact And.intro E.totalOrderClosed (And.intro E.admissibleOrderClosed E.leadingTermIdealClosed)

end HautevilleHouse.CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean
end HautevilleHouse