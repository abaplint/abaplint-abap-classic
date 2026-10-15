* TS: src/rules/check_comments.ts.module module
CLASS zcl_lnt_check_comments_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA issue_type_namespace TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLASS-DATA zlnt_builtin_init_62c84a7d8f16 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_f2b87bb9dc67.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_check_comments_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_f2b87bb9dc67.
    IF zlnt_builtin_init_62c84a7d8f16 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_62c84a7d8f16 = abap_true.
    IF zcl_lnt_check_comments_module=>zlnt_builtin_init_62c84a7d8f16 = abap_false.
      zcl_lnt_check_comments_module=>zlnt_builtin_init_f2b87bb9dc67( ).
    ENDIF.
    DATA(t1) = NEW zlnt_runtime_map__abd6fd794ffb( ).
    zcl_lnt_check_comments_module=>issue_type_namespace = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLEAR t3.
    IF zcl_lnt_check_comments_module=>zlnt_builtin_init_62c84a7d8f16 = abap_false.
      zcl_lnt_check_comments_module=>zlnt_builtin_init_f2b87bb9dc67( ).
    ENDIF.
    t3 = zcl_lnt_check_comments_module=>issue_type_namespace.
    DATA(t4) = |0|.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA(t6) = |EndOfLine|.
    CLEAR t5.
    CREATE OBJECT t5.
    t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t5->sval = t6.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t7 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLEAR t8.
    IF zcl_lnt_check_comments_module=>zlnt_builtin_init_62c84a7d8f16 = abap_false.
      zcl_lnt_check_comments_module=>zlnt_builtin_init_f2b87bb9dc67( ).
    ENDIF.
    t8 = zcl_lnt_check_comments_module=>issue_type_namespace.
    DATA(t9) = |EndOfLine|.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = 0.
    CLEAR t10.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t10->nval = t11.
    t7 = t8->set( p0 = t9 p1 = t10 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1977_cae6fd807db4.
  ENDMETHOD.
ENDCLASS.
