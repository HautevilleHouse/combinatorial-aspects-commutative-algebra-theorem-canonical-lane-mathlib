import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean

structure HilbertFunctionPackage where
  gradedRing : Type u
  hilbertFunction : Nat → Nat
  polynomialGrowth : Prop
  numeratorDenominatorForm : Prop

structure HilbertFunctionEvidence (H : HilbertFunctionPackage) where
  polynomialGrowthClosed : H.polynomialGrowth
  numeratorDenominatorFormClosed : H.numeratorDenominatorForm

def HilbertFunctionClosed (H : HilbertFunctionPackage) : Prop :=
  H.polynomialGrowth ∧ H.numeratorDenominatorForm

theorem hilbert_function_closed_from_evidence (H : HilbertFunctionPackage) (E : HilbertFunctionEvidence H) : HilbertFunctionClosed H := by
  exact And.intro E.polynomialGrowthClosed E.numeratorDenominatorFormClosed

end CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean
end HautevilleHouse