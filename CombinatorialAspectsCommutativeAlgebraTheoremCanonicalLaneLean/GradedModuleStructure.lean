import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean

structure GradedModule (R : Type) [CommRing R] where
  gradingSet : Type
  gradingMap : GradingSet → Submodule R (Module R)
  sumOverGrading : Prop
  sumOverGradingTerm : sumOverGrading

structure GradedModulePackage (R : Type) [CommRing R] (M : GradedModule R) where
  gradationCompatibleWithMultiplication : Prop
  freeResolutionGraded : Prop
  bettiNumbersDefined : Prop

structure GradedModuleEvidence {R : Type} [CommRing R] {M : GradedModule R} (P : GradedModulePackage R M) where
  gradationCompatibleWithMultiplicationClosed : P.gradationCompatibleWithMultiplication
  freeResolutionGradedClosed : P.freeResolutionGraded
  bettiNumbersDefinedClosed : P.bettiNumbersDefined

def GradedModuleClosed {R : Type} [CommRing R] {M : GradedModule R} (P : GradedModulePackage R M) : Prop :=
  P.gradationCompatibleWithMultiplication ∧ P.freeResolutionGraded ∧ P.bettiNumbersDefined

theorem graded_module_closed_from_evidence {R : Type} [CommRing R] {M : GradedModule R} (P : GradedModulePackage R M) (E : GradedModuleEvidence P) : GradedModuleClosed P := by
  exact And.intro E.gradationCompatibleWithMultiplicationClosed (And.intro E.freeResolutionGradedClosed E.bettiNumbersDefinedClosed)

end CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean
end HautevilleHouse