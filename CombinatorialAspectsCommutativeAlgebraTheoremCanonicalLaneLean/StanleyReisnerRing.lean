import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean

structure StanleyReisnerRing where
  vertices : Type u
  faceComplex : List (List vertices)
  polynomialRing : Type v
  idealGenerators : List (vertices → Nat)
  standardGrading : Prop

structure StanleyReisnerEvidence (S : StanleyReisnerRing) where
  verticesFinite : Fintype S.vertices
  faceComplexClosed : ∀ F ∈ S.faceComplex, ∀ G ⊆ F, G ∈ S.faceComplex
  idealGeneratedBySquarefreeMonomials : Prop
  standardGradingClosed : S.standardGrading

def StanleyReisnerClosed (S : StanleyReisnerRing) : Prop :=
  Fintype S.vertices ∧ (∀ F ∈ S.faceComplex, ∀ G ⊆ F, G ∈ S.faceComplex) ∧
  (∃ (I : Ideal (S.polynomialRing)), I = Ideal.span (S.idealGenerators)) ∧ S.standardGrading

theorem stanley_reisner_closed_from_evidence (S : StanleyReisnerRing)
    (E : StanleyReisnerEvidence S) : StanleyReisnerClosed S := by
  exact And.intro E.verticesFinite (And.intro E.faceComplexClosed
    (And.intro E.idealGeneratedBySquarefreeMonomials E.standardGradingClosed))

end HautevilleHouse.CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean
end HautevilleHouse