import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean

structure CutIdealPackage where
  graph : Type u
  vertexSet : Finset (graph)
  edgeSet : List (graph × graph)
  polynomialRing : Type v
  cutIdealGenerators : List (graph → ℕ)
  cutIdealProperties : Prop

structure CutIdealEvidence (C : CutIdealPackage) where
  edgeSetClosed : ∀ e ∈ C.edgeSet, fst e ∈ C.vertexSet ∧ snd e ∈ C.vertexSet
  generatorsClosed : ∀ g ∈ C.cutIdealGenerators, ∀ v ∈ C.vertexSet, g v ≥ 0
  cutIdealPropertiesClosed : C.cutIdealProperties

def CutIdealClosed (C : CutIdealPackage) : Prop :=
  (∀ e ∈ C.edgeSet, fst e ∈ C.vertexSet ∧ snd e ∈ C.vertexSet) ∧
  (∀ g ∈ C.cutIdealGenerators, ∀ v ∈ C.vertexSet, g v ≥ 0) ∧
  C.cutIdealProperties

theorem cut_ideal_closed_from_evidence (C : CutIdealPackage)
    (E : CutIdealEvidence C) : CutIdealClosed C := by
  exact And.intro E.edgeSetClosed (And.intro E.generatorsClosed E.cutIdealPropertiesClosed)

end HautevilleHouse.CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean
end HautevilleHouse