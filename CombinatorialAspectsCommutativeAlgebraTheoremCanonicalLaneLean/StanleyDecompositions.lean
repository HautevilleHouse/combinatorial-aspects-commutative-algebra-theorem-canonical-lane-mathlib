import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean

structure StanleyDecompositionPackage where
  monomialIdeal : Type u
  irreducibleDecomposition : Prop
  stanleyDepth : Nat
  depthPoset : Prop

structure StanleyDecompositionEvidence (S : StanleyDecompositionPackage) where
  irreducibleDecompositionClosed : S.irreducibleDecomposition
  depthPosetClosed : S.depthPoset

def StanleyDecompositionClosed (S : StanleyDecompositionPackage) : Prop :=
  S.irreducibleDecomposition ∧ S.depthPoset

theorem stanley_decomposition_closed_from_evidence
    (S : StanleyDecompositionPackage) (E : StanleyDecompositionEvidence S) :
    StanleyDecompositionClosed S := by
  exact And.intro E.irreducibleDecompositionClosed E.depthPosetClosed

end CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean
end HautevilleHouse