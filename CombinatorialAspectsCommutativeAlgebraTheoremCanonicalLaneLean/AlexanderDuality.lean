import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean

structure AlexanderDualityPackage where
  simplicialComplex : Type u
  vertices : Finset (simplicialComplex)
  faceList : List (Finset (simplicialComplex))
  alexanderDualComplex : List (Finset (simplicialComplex))
  alexanderDualityTheorem : Prop

structure AlexanderDualityEvidence (A : AlexanderDualityPackage) where
  faceListClosed : ∀ F ∈ A.faceList, ∀ G ⊆ F, G ∈ A.faceList
  alexanderDualClosed : ∀ F ∈ A.alexanderDualComplex, F ∈ A.faceList ∨ F ⊆ A.vertices
  alexanderDualityTheoremClosed : A.alexanderDualityTheorem

def AlexanderDualityClosed (A : AlexanderDualityPackage) : Prop :=
  (∀ F ∈ A.faceList, ∀ G ⊆ F, G ∈ A.faceList) ∧
  (∀ F ∈ A.alexanderDualComplex, F ∈ A.faceList ∨ F ⊆ A.vertices) ∧
  A.alexanderDualityTheorem

theorem alexander_duality_closed_from_evidence (A : AlexanderDualityPackage)
    (E : AlexanderDualityEvidence A) : AlexanderDualityClosed A := by
  exact And.intro E.faceListClosed (And.intro E.alexanderDualClosed E.alexanderDualityTheoremClosed)

end HautevilleHouse.CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean
end HautevilleHouse