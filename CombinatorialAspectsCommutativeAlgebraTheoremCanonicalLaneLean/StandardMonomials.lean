import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean

structure StandardMonomial where
  exponentVector : List ℕ
  totalDegree : ℕ

structure MonomialOrder where
  total : Prop
  wellFounded : Prop
  totalTerm : total
  wellFoundedTerm : wellFounded

structure StandardMonomialPackage where
  monomialSet : List StandardMonomial
  monomialOrder : MonomialOrder
  leadMonomial : Prop
  reductionRule : Prop
  leadMonomialTerm : leadMonomial
  reductionRuleTerm : reductionRule

structure StandardMonomialEvidence (S : StandardMonomialPackage) where
  leadMonomialClosed : S.leadMonomial
  reductionRuleClosed : S.reductionRule

def StandardMonomialClosed (S : StandardMonomialPackage) : Prop :=
  S.leadMonomial ∧ S.reductionRule

theorem standard_monomial_closed_from_evidence (S : StandardMonomialPackage)
  (E : StandardMonomialEvidence S) : StandardMonomialClosed S := by
  exact And.intro E.leadMonomialClosed E.reductionRuleClosed

end CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean
end HautevilleHouse
