import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean

structure PolyhedralFan where
  lattice : Type u
  cones : List (Set (lattice))
  fanProperty : Prop
  simplicialFan : Prop

structure PolyhedralFanEvidence (P : PolyhedralFan) where
  fanPropertyClosed : P.fanProperty
  simplicialFanClosed : P.simplicialFan
  conesFinite : Fintype P.cones

def PolyhedralFanClosed (P : PolyhedralFan) : Prop :=
  P.fanProperty ∧ P.simplicialFan ∧ Fintype P.cones

theorem polyhedral_fan_closed_from_evidence (P : PolyhedralFan)
    (E : PolyhedralFanEvidence P) : PolyhedralFanClosed P := by
  exact And.intro E.fanPropertyClosed (And.intro E.simplicialFanClosed E.conesFinite)

end HautevilleHouse.CombinatorialAspectsCommutativeAlgebraTheoremCanonicalLaneLean
end HautevilleHouse