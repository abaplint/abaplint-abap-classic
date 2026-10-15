* TS: src/abap/5_syntax/expressions/select.ts.module module
CLASS zcl_lnt_select_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA is_simple TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLASS-DATA zlnt_builtin_init_c235efeb32fb TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_bca3e12ebc13.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_select_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_bca3e12ebc13.
    IF zlnt_builtin_init_c235efeb32fb = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_c235efeb32fb = abap_true.
    IF zcl_lnt_select_module=>zlnt_builtin_init_c235efeb32fb = abap_false.
      zcl_lnt_select_module=>zlnt_builtin_init_bca3e12ebc13( ).
    ENDIF.
    DATA t1 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t1.
    DATA(t2) = `^\w+$`.
    DATA(t3) = |^[A-Za-z0-9_]+$|.
    DATA(t4) = ||.
    CREATE OBJECT t1 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t3 flags = t4.
    t1->source = t2.
    zcl_lnt_select_module=>is_simple = t1.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1945_ff3956e22d70.
  ENDMETHOD.
ENDCLASS.
