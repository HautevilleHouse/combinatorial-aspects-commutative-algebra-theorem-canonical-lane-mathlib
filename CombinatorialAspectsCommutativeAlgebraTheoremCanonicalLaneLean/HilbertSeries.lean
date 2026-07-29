import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean

structure HilbertSeriesPackage where
  gradedModule : Type
  dimension : ℕ
  generatingFunctionCoeffs : List ℤ
  rationalFunctionForm : Prop
  rationalFunctionFormTerm : rationalFunctionForm

structure HilbertSeriesEvidence (H : HilbertSeriesPackage) where
  rationalFunctionFormClosed : H.rationalFunctionForm

def HilbertSeriesClosed (H : HilbertSeriesPackage) : Prop :=
  H.rationalFunctionForm

theorem hilbert_series_closed_from_evidence (H : HilbertSeriesPackage)
  (E : HilbertSeriesEvidence H) : HilbertSeriesClosed H := by
  exact E.rationalFunctionFormClosed

end CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean
end HautevilleHouse
