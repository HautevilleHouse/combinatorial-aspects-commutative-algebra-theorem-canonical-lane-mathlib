import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean

structure CastelnuovoMumfordRegularityPackage where
  gradedModule : Type u
  minimalFreeResolution : Prop
  regularityIndex : Nat
  boundednessProof : Prop

structure CastelnuovoMumfordRegularityEvidence (C : CastelnuovoMumfordRegularityPackage) where
  minimalFreeResolutionClosed : C.minimalFreeResolution
  boundednessProofClosed : C.boundednessProof

def CastelnuovoMumfordRegularityClosed (C : CastelnuovoMumfordRegularityPackage) : Prop :=
  C.minimalFreeResolution ∧ C.boundednessProof

theorem castelnuovo_mumford_regularity_closed_from_evidence
    (C : CastelnuovoMumfordRegularityPackage) (E : CastelnuovoMumfordRegularityEvidence C) :
    CastelnuovoMumfordRegularityClosed C := by
  exact And.intro E.minimalFreeResolutionClosed E.boundednessProofClosed

end CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean
end HautevilleHouse