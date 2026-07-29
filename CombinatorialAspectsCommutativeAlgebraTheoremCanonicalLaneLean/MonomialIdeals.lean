import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean

structure MonomialIdealPackage where
  ring : Type u
  generators : List (ring)
  minimalGenerators : Prop
  monomialProperty : Prop
  irredundantDecomposition : Prop

structure MonomialIdealEvidence (M : MonomialIdealPackage) where
  minimalGeneratorsClosed : M.minimalGenerators
  monomialPropertyClosed : M.monomialProperty
  irredundantDecompositionClosed : M.irredundantDecomposition

def MonomialIdealClosed (M : MonomialIdealPackage) : Prop :=
  M.minimalGenerators ∧ M.monomialProperty ∧ M.irredundantDecomposition

theorem monomial_ideal_closed_from_evidence (M : MonomialIdealPackage) (E : MonomialIdealEvidence M) : MonomialIdealClosed M := by
  exact And.intro E.minimalGeneratorsClosed (And.intro E.monomialPropertyClosed E.irredundantDecompositionClosed)

end CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean
end HautevilleHouse