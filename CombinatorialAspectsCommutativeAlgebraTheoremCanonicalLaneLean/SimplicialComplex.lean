import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean

structure SimplicialComplex where
  vertexSet : Type u
  faces : List (Set vertexSet)
  closureUnderInclusion : Prop
  finiteDimension : Nat

structure SimplicialComplexEvidence (S : SimplicialComplex) where
  closureUnderInclusionClosed : S.closureUnderInclusion

end CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean
end HautevilleHouse
