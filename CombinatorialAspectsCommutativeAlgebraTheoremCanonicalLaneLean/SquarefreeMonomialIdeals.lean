import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean

structure SquarefreeMonomialIdealPackage where
  polynomialRing : Type u
  monomials : Type v
  squarefreeCondition : Prop
  primaryDecomposition : Prop

structure SquarefreeMonomialIdealEvidence (S : SquarefreeMonomialIdealPackage) where
  squarefreeConditionClosed : S.squarefreeCondition
  primaryDecompositionClosed : S.primaryDecomposition

def SquarefreeMonomialIdealClosed (S : SquarefreeMonomialIdealPackage) : Prop :=
  S.squarefreeCondition ∧ S.primaryDecomposition

theorem squarefree_monomial_ideal_closed_from_evidence
    (S : SquarefreeMonomialIdealPackage) (E : SquarefreeMonomialIdealEvidence S) :
    SquarefreeMonomialIdealClosed S := by
  exact And.intro E.squarefreeConditionClosed E.primaryDecompositionClosed

end CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean
end HautevilleHouse