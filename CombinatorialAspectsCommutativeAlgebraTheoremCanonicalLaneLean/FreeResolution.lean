import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean

structure FreeResolution (R : Type) [CommRing R] where
  chainComplex : List (Module R)
  exactness : Prop
  exactnessTerm : exactness

structure FreeResolutionPackage (R : Type) [CommRing R] (F : FreeResolution R) where
  minimalResolutionExists : Prop
  bettiNumbersFromResolution : Prop
  syzygiesComputed : Prop

structure FreeResolutionEvidence {R : Type} [CommRing R] {F : FreeResolution R} (P : FreeResolutionPackage R F) where
  minimalResolutionExistsClosed : P.minimalResolutionExists
  bettiNumbersFromResolutionClosed : P.bettiNumbersFromResolution
  syzygiesComputedClosed : P.syzygiesComputed

def FreeResolutionClosed {R : Type} [CommRing R] {F : FreeResolution R} (P : FreeResolutionPackage R F) : Prop :=
  P.minimalResolutionExists ∧ P.bettiNumbersFromResolution ∧ P.syzygiesComputed

theorem free_resolution_closed_from_evidence {R : Type} [CommRing R] {F : FreeResolution R} (P : FreeResolutionPackage R F) (E : FreeResolutionEvidence P) : FreeResolutionClosed P := by
  exact And.intro E.minimalResolutionExistsClosed (And.intro E.bettiNumbersFromResolutionClosed E.syzygiesComputedClosed)

end CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean
end HautevilleHouse