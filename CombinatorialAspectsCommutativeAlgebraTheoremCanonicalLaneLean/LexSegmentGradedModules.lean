import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean

structure LexSegmentGradedModulePackage where
  poset : Type u
  labeledSet : Type v
  lexSegment : Prop
  gradedStructure : Prop
  hilbertFunction : Prop

structure LexSegmentGradedModuleEvidence (L : LexSegmentGradedModulePackage) where
  lexSegmentClosed : L.lexSegment
  gradedStructureClosed : L.gradedStructure
  hilbertFunctionClosed : L.hilbertFunction

def LexSegmentGradedModuleClosed (L : LexSegmentGradedModulePackage) : Prop :=
  L.lexSegment ∧ L.gradedStructure ∧ L.hilbertFunction

theorem lex_segment_graded_module_closed_from_evidence
    (L : LexSegmentGradedModulePackage) (E : LexSegmentGradedModuleEvidence L) :
    LexSegmentGradedModuleClosed L := by
  exact And.intro E.lexSegmentClosed (And.intro E.gradedStructureClosed E.hilbertFunctionClosed)

end CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean
end HautevilleHouse