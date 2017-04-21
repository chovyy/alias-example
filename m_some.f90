MODULE m_some

IMPLICIT NONE

CONTAINS

SUBROUTINE something(a, b)

  INTEGER, INTENT(inout) :: a, b

  !$kgen begin_callsite alias
  a = a + 1
  b = a + b

  WRITE (*,*) 'a: ', a
  WRITE (*,*) 'b: ', b
  !$kgen end_callsite alias


END SUBROUTINE something

END MODULE m_some
