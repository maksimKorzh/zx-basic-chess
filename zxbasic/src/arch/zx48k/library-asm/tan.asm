#include once <stackf.asm>

    push namespace core

TAN: ; Computes TAN using ROM FP-CALC
    call __FPSTACK_PUSH

    rst 28h	; ROM CALC
    defb 21h ; TAN
    defb 38h ; END CALC

    jp __FPSTACK_POP

    pop namespace

