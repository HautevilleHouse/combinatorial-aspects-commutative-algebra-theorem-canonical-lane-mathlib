import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean

structure HilbertSeriesRationalityPackage where
  gradedRing : Type u
  seriesRepr : Type v
  rationalityProof : Prop
  ehrhartAnalog : Prop

structure HilbertSeriesRationalityEvidence (H : HilbertSeriesRationalityPackage) where
  rationalityProofClosed : H.rationalityProof
  ehrhartAnalogClosed : H.ehrhartAnalog

def HilbertSeriesRationalityClosed (H : HilbertSeriesRationalityPackage) : Prop :=
  H.rationalityProof ∧ H.ehrhartAnalog

theorem hilbert_series_rationality_closed_from_evidence
    (H : HilbertSeriesRationalityPackage) (E : HilbertSeriesRationalityEvidence H) :
    HilbertSeriesRationalityClosed H := by
  exact And.intro E.rationalityProofClosed E.ehrhartAnalogClosed

end CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean
end HautevilleHouse