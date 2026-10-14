* TS: src/utils/excludeHelper.ts:1:1 ExcludeHelper
CLASS zcl_lnt_exclude_helper DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS is_excluded IMPORTING i_filename TYPE string i_exclude_patterns TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_exclude_helper IMPLEMENTATION.
  METHOD is_excluded.
    DATA(t1) = i_filename.
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_exclude_patterns ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    DATA t4 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t4.
    DATA t5 TYPE REF TO object.
    CLEAR t5.
    LOOP AT t3->items INTO t5.
      t4 ?= t5.
      DATA t6 TYPE abap_bool.
      DATA(t7) = CAST zlnt_runtime_rege_5a210f82384e( t4 ).
      DATA(t8) = t1.
      t6 = t7->test( p0 = t8 ).
      IF t6 = abap_true.
        DATA(t9) = abap_true.
        result = t9.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA(t10) = abap_false.
    result = t10.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1688_e51c7d007fbf.
  ENDMETHOD.
ENDCLASS.
