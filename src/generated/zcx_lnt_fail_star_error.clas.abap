* TS: src/abap/2_statements/combi.ts:818:1 FailStarError
CLASS zcx_lnt_fail_star_error DEFINITION PUBLIC INHERITING FROM zcl_lnt_builtin_e8b3bd7e CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor IMPORTING i_message_26cb TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcx_lnt_fail_star_error IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_message_26cb.
    DATA(t2) = t1.
    super->constructor( i_message_26cb = t2 ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_b425d82119de=>zlnt_member_d1_2d6b79a5b052ba.
  ENDMETHOD.
ENDCLASS.
