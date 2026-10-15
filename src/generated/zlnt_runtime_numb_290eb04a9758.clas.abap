CLASS zlnt_runtime_numb_290eb04a9758 DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS calculate IMPORTING left TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a right TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a op TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLASS-METHODS compare IMPORTING left TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a right TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a op TYPE string RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS minmax IMPORTING left TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a right TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a op TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLASS-METHODS negate IMPORTING value TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLASS-METHODS finite IMPORTING value TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a RETURNING VALUE(result) TYPE f.
    CLASS-METHODS index IMPORTING value TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a RETURNING VALUE(result) TYPE i.
    CLASS-METHODS text IMPORTING value TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a RETURNING VALUE(result) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_numb_290eb04a9758 IMPLEMENTATION.
  METHOD finite.
    IF value IS NOT BOUND OR value->has = abap_false OR value->number_special <> 0.
      RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
    ENDIF.
    result = value->value.
  ENDMETHOD.

  METHOD calculate.
    DATA a TYPE f.
    DATA b TYPE f.
    CREATE OBJECT result.
    result->has = abap_true.
    IF left IS NOT BOUND OR right IS NOT BOUND.
      result->number_special = 1.
      RETURN.
    ENDIF.
    IF left->has = abap_false OR right->has = abap_false OR left->number_special = 1 OR right->number_special = 1.
      result->number_special = 1.
      RETURN.
    ENDIF.
    IF left->number_special <> 0 OR right->number_special <> 0.
      RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
    ENDIF.
    a = left->value.
    b = right->value.
    CASE op.
      WHEN '+'.
        result->value = a + b.
      WHEN '-'.
        result->value = a - b.
      WHEN '*'.
        result->value = a * b.
      WHEN '/'.
        IF b = 0.
          IF a = 0.
            result->number_special = 1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
          ENDIF.
        ELSE.
          result->value = a / b.
        ENDIF.
      WHEN '%'.
        IF b = 0.
          result->number_special = 1.
        ELSE.
          RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
        ENDIF.
      WHEN OTHERS.
        RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
    ENDCASE.
  ENDMETHOD.

  METHOD compare.
    DATA a TYPE f.
    DATA b TYPE f.
    IF left IS NOT BOUND OR right IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
    ENDIF.
    IF left->has = abap_false OR right->has = abap_false.
      RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
    ENDIF.
    IF left->number_special = 1 OR right->number_special = 1.
      result = xsdbool( op = '!=' ).
      RETURN.
    ENDIF.
    IF left->number_special <> 0 OR right->number_special <> 0.
      RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
    ENDIF.
    a = left->value.
    b = right->value.
    CASE op.
      WHEN '=='.
        result = xsdbool( a = b ).
      WHEN '!='.
        result = xsdbool( a <> b ).
      WHEN '<'.
        result = xsdbool( a < b ).
      WHEN '>'.
        result = xsdbool( a > b ).
      WHEN '<='.
        result = xsdbool( a <= b ).
      WHEN '>='.
        result = xsdbool( a >= b ).
      WHEN OTHERS.
        RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
    ENDCASE.
  ENDMETHOD.

  METHOD minmax.
    IF left IS NOT BOUND OR right IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
    ENDIF.
    IF left->number_special = 1.
      result = left.
    ELSEIF right->number_special = 1.
      result = right.
    ELSE.
      IF left->number_special <> 0 OR right->number_special <> 0 OR left->value = 0 AND right->value = 0.
        RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
      ENDIF.
      result = left.
      IF op = 'min' AND right->value < left->value OR op = 'max' AND right->value > left->value.
        result = right.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD negate.
    CREATE OBJECT result.
    result->has = abap_true.
    IF value IS NOT BOUND.
      result->number_special = 1.
      RETURN.
    ENDIF.
    IF value->has = abap_false.
      result->number_special = 1.
      RETURN.
    ENDIF.
    result->number_special = value->number_special.
    CASE value->number_special.
      WHEN 0.
        result->value = - value->value.
      WHEN 2.
        result->number_special = 3.
      WHEN 3.
        result->number_special = 2.
    ENDCASE.
  ENDMETHOD.

  METHOD index.
    IF value IS NOT BOUND OR value->has = abap_false OR value->number_special = 1.
      RETURN.
    ENDIF.
    IF value->number_special = 2 OR value->value > 2147483647.
      result = 2147483647.
    ELSEIF value->number_special = 3 OR value->value < -2147483648.
      result = -2147483648.
    ELSE.
      result = trunc( value->value ).
    ENDIF.
  ENDMETHOD.

  METHOD text.
    IF value IS NOT BOUND OR value->has = abap_false.
      result = 'undefined'.
      RETURN.
    ENDIF.
    CASE value->number_special.
      WHEN 1.
        result = 'NaN'.
      WHEN 2.
        result = 'Infinity'.
      WHEN 3.
        result = '-Infinity'.
      WHEN OTHERS.
        IF abs( value->value ) > 9007199254740991 OR value->value <> trunc( value->value ).
          RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
        ENDIF.
        DATA integral TYPE int8.
        integral = value->value.
        result = |{ integral }|.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
