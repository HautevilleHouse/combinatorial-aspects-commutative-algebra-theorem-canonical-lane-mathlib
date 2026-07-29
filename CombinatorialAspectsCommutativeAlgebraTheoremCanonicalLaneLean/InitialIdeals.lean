import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean

structure InitialIdealPackage where
  termOrder : Type u
  initialIdeal : Type v
  groebnerBasisProperty : Prop
  standardMonomialProperty : Prop

structure InitialIdealEvidence (I : InitialIdealPackage) where
  groebnerBasisPropertyClosed : I.groebnerBasisProperty
  standardMonomialPropertyClosed : I.standardMonomialProperty

def InitialIdealClosed (I : InitialIdealPackage) : Prop :=
  I.groebnerBasisProperty ∧ I.standardMonomialProperty

theorem initial_ideal_closed_from_evidence (I : InitialIdealPackage) (E : InitialIdealEvidence I) : InitialIdealClosed I := by
  exact And.intro E.groebnerBasisPropertyClosed E.standardMonomialPropertyClosed

end CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean
end HautevilleHouse