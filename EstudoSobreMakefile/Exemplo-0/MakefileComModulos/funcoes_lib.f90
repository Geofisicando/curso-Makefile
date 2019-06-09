MODULE funcoes_lib

IMPLICIT NONE

CONTAINS


      FUNCTION soma(a,b)
              REAL, INTENT(IN):: a
              REAL, INTENT(IN):: b
              REAL:: soma

              soma = a+b

      END FUNCTION

END MODULE

