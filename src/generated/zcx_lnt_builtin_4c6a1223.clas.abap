* TS: builtin.Error builtin.SyntaxError
CLASS zcx_lnt_builtin_4c6a1223 DEFINITION PUBLIC INHERITING FROM zcl_lnt_builtin_e8b3bd7e CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcx_lnt_builtin_4c6a1223 IMPLEMENTATION.
  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_b425d82119de=>zlnt_member_d5_fe178efb571dcf.
  ENDMETHOD.
ENDCLASS.
