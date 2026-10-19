* TS: src/abap/5_syntax/expressions/_check_database_fields.ts.module module
CLASS zcl_lnt_chck_dtbs_flds_mdl DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS check_database_fields IMPORTING i_fields_62af TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_db_sources TYPE REF TO zlnt_runtime_arra_b72089862d0f i_input_967e TYPE REF TO zcl_lnt_syntax_input i_token TYPE REF TO zcl_lnt_abstract_token.
    CLASS-DATA zlnt_builtin_init_776300767909 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_1b997ceffb15.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_chck_dtbs_flds_mdl IMPLEMENTATION.
  METHOD check_database_fields.
    DATA(t1) = i_fields_62af.
    DATA(t2) = i_db_sources.
    DATA(t3) = i_input_967e.
    DATA(t4) = i_token.
    t2->load( ).
    IF xsdbool( lines( t2->items ) > 1 ) = abap_true.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zif_lnt_union_c74a232f.
    DATA t10 TYPE REF TO zif_lnt_union_c74a232f.
    t2->load( ).
    READ TABLE t2->items INDEX 1 INTO t10.
    t9 = t10.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t9 IS INITIAL ) = abap_true.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_abstract_type.
    DATA t21 TYPE REF TO zif_lnt_union_c74a232f.
    t21 = t9.
    DATA t27 TYPE REF TO zif_lnt_registry.
    t27 = t3->scope->reg.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t19 = t21->parse_type( i_reg_f149 = t27 i_data_element = t29 i_description = t30 ).
    DATA t31 TYPE abap_bool.
    DATA t32 TYPE abap_bool.
    t32 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_void_type ).
    t31 = t32.
    IF t32 = abap_false.
      t31 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_unknown_type ).
    ENDIF.
    IF t31 = abap_true.
      RETURN.
    ENDIF.
    IF xsdbool( xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_structure_type ) = abap_false ) = abap_true.
      DATA t40 TYPE string.
      DATA(t41) = |checkFields, expected structure, |.
      DATA t42 TYPE string.
      t42 = t19->zlnt_builtin_clas_3f891b097658( )->name.
      DATA(t45) = strlen( t41 ).
      t40 = |{ t41 }{ t42 }|.
      DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t46 = t3->issues.
      DATA t48 TYPE REF TO zcl_lnt_issue.
      DATA t52 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t48 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t4 i_message_26cb = t40 i_fix = t52 ).
      t46->load( ).
      APPEND t48 TO t46->items.
      t46->save( ).
      RETURN.
    ENDIF.
    DATA(t54) = VALUE string( ).
    t1->dense( ).
    DATA(t55) = VALUE i( ).
    DO.
      t1->load( ).
      IF t55 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t54.
      READ TABLE t1->items INDEX t55 + 1 INTO t54.
      IF t1->has( t55 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t55 = t55 + 1.
      IF xsdbool( t54 = |*| ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t59 TYPE abap_bool.
      DATA t60 TYPE abap_bool.
      DATA t61 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t61.
      CREATE OBJECT t61 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[A-Z_][A-Za-z0-9_]*$| flags = |i|.
      t61->source = `^[A-Z_]\w*$`.
      t60 = t61->test( p0 = t54 ).
      t59 = t60.
      IF t60 = abap_true.
        DATA t70 TYPE REF TO zcl_lnt_structure_type.
        t70 ?= t19.
        DATA t72 TYPE string.
        t72 = t54.
        DATA t74 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t74.
        DATA t75 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        t75 = t70->indexed.
        DATA t77 TYPE string.
        DATA(t79) = strlen( t72 ).
        t77 = t72.
        IF t77 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t77 TO UPPER CASE.
        ELSE.
          t77 = zlnt_runtime_uppe_91169605024d=>full( t77 ).
        ENDIF.
        t74 = t75->get( p0 = t77 ).
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t80.
        t59 = xsdbool( t74 IS INITIAL ).
      ENDIF.
      IF t59 = abap_true.
        DATA t85 TYPE string.
        DATA t86 TYPE string.
        DATA(t87) = |checkFields, field |.
        DATA(t89) = strlen( t87 ).
        t86 = |{ t87 }{ t54 }|.
        DATA(t91) = strlen( t86 ).
        t85 = |{ t86 }{ | not found| }|.
        DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t92 = t3->issues.
        DATA t94 TYPE REF TO zcl_lnt_issue.
        DATA t98 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t98.
        t94 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t4 i_message_26cb = t85 i_fix = t98 ).
        t92->load( ).
        APPEND t94 TO t92->items.
        t92->save( ).
        RETURN.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD zlnt_builtin_init_1b997ceffb15.
    IF zlnt_builtin_init_776300767909 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_776300767909 = abap_true.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1927_4952c207ac2f.
  ENDMETHOD.
ENDCLASS.
