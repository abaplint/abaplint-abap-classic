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
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE i.
    DATA(t7) = t2.
    t7->load( ).
    t6 = lines( t7->items ).
    DATA(t8) = 1.
    t5 = xsdbool( t6 > t8 ).
    IF t5 = abap_true.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zif_lnt_union_c74a232f.
    DATA t10 TYPE REF TO zif_lnt_union_c74a232f.
    CLEAR t10.
    DATA(t11) = t2.
    t11->load( ).
    CLEAR t10.
    READ TABLE t11->items INDEX 1 INTO t10.
    t9 = t10.
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zif_lnt_union_c74a232f.
    DATA(t14) = t9.
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    t15 = t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = t13.
    IF t18 IS INITIAL.
      t17 = abap_true.
    ENDIF.
    t12 = t17.
    IF t12 = abap_true.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_abstract_type.
    DATA t20 TYPE REF TO zcl_lnt_abstract_type.
    DATA t21 TYPE REF TO zif_lnt_union_c74a232f.
    DATA(t22) = t9.
    t21 = t22.
    DATA t23 TYPE REF TO zif_lnt_registry.
    DATA t24 TYPE REF TO zcl_lnt_current_scope.
    DATA t25 TYPE REF TO zcl_lnt_current_scope.
    DATA(t26) = t3.
    t25 = t26->scope.
    t24 = t25.
    DATA t27 TYPE REF TO zif_lnt_registry.
    DATA(t28) = t24.
    t27 = t28->reg.
    t23 = t27.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    t20 = t21->parse_type( i_reg_f149 = t23 i_data_element = t29 i_description = t30 ).
    t19 = t20.
    DATA t31 TYPE abap_bool.
    DATA t32 TYPE abap_bool.
    DATA(t33) = t19.
    t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_void_type ).
    t31 = t32.
    IF t32 = abap_false.
      DATA t34 TYPE abap_bool.
      DATA(t35) = t19.
      t34 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_unknown_type ).
      t31 = t34.
    ENDIF.
    IF t31 = abap_true.
      RETURN.
    ENDIF.
    DATA t36 TYPE abap_bool.
    DATA t37 TYPE abap_bool.
    DATA(t38) = t19.
    t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_structure_type ).
    t36 = xsdbool( t37 = abap_false ).
    IF t36 = abap_true.
      DATA t39 TYPE string.
      DATA t40 TYPE string.
      DATA(t41) = |checkFields, expected structure, |.
      DATA t42 TYPE string.
      DATA t43 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      DATA(t44) = t19.
      t43 = t44->zlnt_builtin_clas_3f891b097658( ).
      t42 = t43->name.
      DATA(t45) = strlen( t41 ).
      t40 = |{ t41 }{ t42 }|.
      t39 = t40.
      DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t47) = t3.
      t46 = t47->issues.
      DATA t48 TYPE REF TO zcl_lnt_issue.
      DATA(t49) = t3.
      DATA(t50) = t4.
      DATA(t51) = t39.
      DATA t52 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t52.
      t48 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t49 i_token = t50 i_message_26cb = t51 i_fix = t52 ).
      t46->load( ).
      APPEND t48 TO t46->items.
      t46->save( ).
      RETURN.
    ENDIF.
    DATA(t53) = t1.
    DATA(t54) = VALUE string( ).
    t53->dense( ).
    DATA(t55) = VALUE i( ).
    DO.
      t53->load( ).
      IF t55 >= lines( t53->items ).
        EXIT.
      ENDIF.
      CLEAR t54.
      READ TABLE t53->items INDEX t55 + 1 INTO t54.
      IF t53->has( t55 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t55 = t55 + 1.
      DATA t56 TYPE abap_bool.
      DATA(t57) = t54.
      DATA(t58) = |*|.
      t56 = xsdbool( t57 = t58 ).
      IF t56 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t59 TYPE abap_bool.
      DATA t60 TYPE abap_bool.
      DATA t61 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t61.
      DATA(t62) = `^[A-Z_]\w*$`.
      DATA(t63) = |^[A-Z_][A-Za-z0-9_]*$|.
      DATA(t64) = |i|.
      CREATE OBJECT t61 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t63 flags = t64.
      t61->source = t62.
      DATA(t65) = t54.
      t60 = t61->test( p0 = t65 ).
      t59 = t60.
      IF t60 = abap_true.
        DATA(t66) = VALUE abap_bool( ).
        DATA t67 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t67.
        DATA t68 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t68.
        DATA t69 TYPE REF TO zcl_lnt_structure_type.
        DATA t70 TYPE REF TO zcl_lnt_structure_type.
        DATA(t71) = t19.
        t70 ?= t71.
        t69 = t70.
        DATA t72 TYPE string.
        DATA(t73) = t54.
        t72 = t73.
        DATA t74 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t74.
        DATA t75 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA(t76) = t69.
        t75 = t76->indexed.
        DATA t77 TYPE string.
        DATA(t78) = t72.
        DATA(t79) = strlen( t78 ).
        t77 = t78.
        IF t77 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t77 TO UPPER CASE.
        ELSE.
          t77 = zlnt_runtime_uppe_91169605024d=>full( t77 ).
        ENDIF.
        t74 = t75->get( p0 = t77 ).
        t68 = t74.
        t67 = t68.
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        t80 = t81.
        DATA(t82) = VALUE abap_bool( ).
        DATA(t83) = t67.
        IF t83 IS INITIAL.
          t82 = abap_true.
        ENDIF.
        t66 = t82.
        t59 = t66.
      ENDIF.
      IF t59 = abap_true.
        DATA t84 TYPE string.
        DATA t85 TYPE string.
        DATA t86 TYPE string.
        DATA(t87) = |checkFields, field |.
        DATA(t88) = t54.
        DATA(t89) = strlen( t87 ).
        t86 = |{ t87 }{ t88 }|.
        DATA(t90) = | not found|.
        DATA(t91) = strlen( t86 ).
        t85 = |{ t86 }{ t90 }|.
        t84 = t85.
        DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t93) = t3.
        t92 = t93->issues.
        DATA t94 TYPE REF TO zcl_lnt_issue.
        DATA(t95) = t3.
        DATA(t96) = t4.
        DATA(t97) = t84.
        DATA t98 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t98.
        t94 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t95 i_token = t96 i_message_26cb = t97 i_fix = t98 ).
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
