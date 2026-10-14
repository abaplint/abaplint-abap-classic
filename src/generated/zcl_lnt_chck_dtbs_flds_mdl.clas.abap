* TS: src/abap/5_syntax/expressions/_check_database_fields.ts.module module
CLASS zcl_lnt_chck_dtbs_flds_mdl DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS check_database_fields IMPORTING i_fields_62af TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_db_sources TYPE REF TO zlnt_runtime_arra_b72089862d0f i_input_967e TYPE REF TO zcl_lnt_syntax_input i_token TYPE REF TO zcl_lnt_abstract_token.
    CLASS-DATA zlnt_builtin_init_776300767909 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_1b997ceffb15.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_chck_dtbs_flds_mdl IMPLEMENTATION.
  METHOD check_database_fields.
    DATA(t1) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_fields_62af ).
    DATA(t2) = CAST zlnt_runtime_arra_b72089862d0f( i_db_sources ).
    DATA(t3) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t4) = CAST zcl_lnt_abstract_token( i_token ).
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE i.
    DATA(t7) = CAST zlnt_runtime_arra_b72089862d0f( t2 ).
    t6 = lines( t7->items ).
    DATA(t8) = 1.
    t5 = xsdbool( t6 > t8 ).
    IF t5 = abap_true.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zif_lnt_union_c74a232f.
    DATA t10 TYPE REF TO zif_lnt_union_c74a232f.
    CLEAR t10.
    DATA(t11) = CAST zlnt_runtime_arra_b72089862d0f( t2 ).
    READ TABLE t11->items INDEX 1 INTO t10.
    t9 = t10.
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zif_lnt_union_c74a232f.
    DATA(t14) = CAST zif_lnt_union_c74a232f( t9 ).
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    t15 = t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = CAST zif_lnt_union_c74a232f( t13 ).
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
    DATA(t22) = CAST zif_lnt_union_c74a232f( t9 ).
    t21 = t22.
    DATA t23 TYPE REF TO zif_lnt_registry.
    DATA t24 TYPE REF TO zcl_lnt_current_scope.
    DATA t25 TYPE REF TO zcl_lnt_current_scope.
    DATA(t26) = CAST zcl_lnt_syntax_input( t3 ).
    t25 = t26->scope.
    t24 = t25.
    DATA t27 TYPE REF TO zif_lnt_registry.
    DATA(t28) = CAST zcl_lnt_current_scope( t24 ).
    t27 = t28->reg.
    t23 = t27.
    t20 = t21->parse_type( i_reg_f149 = t23 ).
    t19 = t20.
    DATA t29 TYPE abap_bool.
    DATA t30 TYPE abap_bool.
    DATA(t31) = CAST zcl_lnt_abstract_type( t19 ).
    t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_void_type ).
    t29 = t30.
    IF t30 = abap_false.
      DATA t32 TYPE abap_bool.
      DATA(t33) = CAST zcl_lnt_abstract_type( t19 ).
      t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_unknown_type ).
      t29 = t32.
    ENDIF.
    IF t29 = abap_true.
      RETURN.
    ENDIF.
    DATA t34 TYPE abap_bool.
    DATA t35 TYPE abap_bool.
    DATA(t36) = CAST zcl_lnt_abstract_type( t19 ).
    t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_structure_type ).
    t34 = xsdbool( t35 = abap_false ).
    IF t34 = abap_true.
      DATA t37 TYPE string.
      DATA t38 TYPE string.
      DATA(t39) = |checkFields, expected structure, |.
      DATA t40 TYPE string.
      DATA t41 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      DATA(t42) = CAST zcl_lnt_abstract_type( t19 ).
      t41 = t42->zlnt_builtin_clas_3f891b097658( ).
      t40 = t41->name.
      DATA(t43) = strlen( t39 ).
      t38 = |{ t39 }{ t40 }|.
      t37 = t38.
      DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t45) = CAST zcl_lnt_syntax_input( t3 ).
      t44 = t45->issues.
      DATA t46 TYPE REF TO zcl_lnt_issue.
      DATA(t47) = CAST zcl_lnt_syntax_input( t3 ).
      DATA(t48) = CAST zcl_lnt_abstract_token( t4 ).
      DATA(t49) = t37.
      DATA t50 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t50.
      t46 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t47 i_token = t48 i_message_26cb = t49 i_fix = t50 ).
      APPEND t46 TO t44->items.
      RETURN.
    ENDIF.
    DATA(t51) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1 ).
    DATA(t52) = VALUE string( ).
    LOOP AT t51->items INTO t52.
      DATA t53 TYPE abap_bool.
      DATA(t54) = t52.
      DATA(t55) = |*|.
      t53 = xsdbool( t54 = t55 ).
      IF t53 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t56 TYPE abap_bool.
      DATA t57 TYPE abap_bool.
      DATA t58 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t58.
      DATA(t59) = `^[A-Z_]\w*$`.
      DATA(t60) = |^[A-Z_][A-Za-z0-9_]*$|.
      DATA(t61) = |i|.
      CREATE OBJECT t58 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t60 flags = t61.
      t58->source = t59.
      DATA(t62) = t52.
      t57 = t58->test( p0 = t62 ).
      t56 = t57.
      IF t57 = abap_true.
        DATA(t63) = VALUE abap_bool( ).
        DATA t64 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t64.
        DATA t65 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t65.
        DATA t66 TYPE REF TO zcl_lnt_structure_type.
        DATA t67 TYPE REF TO zcl_lnt_structure_type.
        DATA(t68) = CAST zcl_lnt_abstract_type( t19 ).
        t67 ?= t68.
        t66 = t67.
        DATA t69 TYPE string.
        DATA(t70) = t52.
        t69 = t70.
        DATA t71 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t71.
        DATA t72 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA(t73) = CAST zcl_lnt_structure_type( t66 ).
        t72 = t73->indexed.
        DATA t74 TYPE string.
        DATA(t75) = t69.
        DATA(t76) = strlen( t75 ).
        t74 = t75.
        IF t74 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t74 TO UPPER CASE.
        ELSE.
          t74 = zlnt_runtime_uppe_91169605024d=>full( t74 ).
        ENDIF.
        t71 = t72->get( p0 = t74 ).
        t65 = t71.
        t64 = t65.
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        t77 = t78.
        DATA(t79) = VALUE abap_bool( ).
        DATA(t80) = CAST zcl_lnt_abstract_type( t64 ).
        IF t80 IS INITIAL.
          t79 = abap_true.
        ENDIF.
        t63 = t79.
        t56 = t63.
      ENDIF.
      IF t56 = abap_true.
        DATA t81 TYPE string.
        DATA t82 TYPE string.
        DATA t83 TYPE string.
        DATA(t84) = |checkFields, field |.
        DATA(t85) = t52.
        DATA(t86) = strlen( t84 ).
        t83 = |{ t84 }{ t85 }|.
        DATA(t87) = | not found|.
        DATA(t88) = strlen( t83 ).
        t82 = |{ t83 }{ t87 }|.
        t81 = t82.
        DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t90) = CAST zcl_lnt_syntax_input( t3 ).
        t89 = t90->issues.
        DATA t91 TYPE REF TO zcl_lnt_issue.
        DATA(t92) = CAST zcl_lnt_syntax_input( t3 ).
        DATA(t93) = CAST zcl_lnt_abstract_token( t4 ).
        DATA(t94) = t81.
        DATA t95 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t95.
        t91 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t92 i_token = t93 i_message_26cb = t94 i_fix = t95 ).
        APPEND t91 TO t89->items.
        RETURN.
      ENDIF.
    ENDLOOP.
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

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1835_cdbf48a9e9f1.
  ENDMETHOD.
ENDCLASS.
