* TS: src/abap/5_syntax/expressions/data_definition.ts:9:1 DataDefinition
CLASS zcl_lnt_sy_data_definition DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_data_definition IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE abap_bool.
    DATA(t8) = t3.
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t10) = t1.
      DATA(t11) = t2.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      t9 = zcl_lnt_sy_type_table=>run_syntax( i_node = t10 i_input_967e = t11 i_qualified_name_prefix = t12 ).
      result = t9.
      RETURN.
    ENDIF.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA(t15) = t1.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d150_582536089a5b.
    t14 = t15->find_first_expression( i_type_9913 = t16 ).
    t13 = t14.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    t17 = t18.
    DATA t19 TYPE abap_bool.
    DATA(t20) = t13.
    t19 = xsdbool( t20 IS BOUND ).
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t22 TYPE REF TO zcl_lnt_basic_types.
      DATA(t23) = t2.
      t22 = NEW zcl_lnt_basic_types( i_input_967e = t23 ).
      DATA(t24) = t1.
      t21 = t22->find_value( i_node = t24 ).
      t17 = t21.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    DATA(t27) = t1.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    t26 = t27->find_first_expression( i_type_9913 = t28 ).
    t25 = t26.
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    DATA(t31) = t1.
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d153_a3333d63766c.
    t30 = t31->find_first_expression( i_type_9913 = t32 ).
    t29 = t30.
    DATA t33 TYPE abap_bool.
    DATA t34 TYPE abap_bool.
    DATA(t35) = t29.
    t34 = xsdbool( t35 IS BOUND ).
    t33 = t34.
    IF t34 = abap_true.
      DATA t36 TYPE abap_bool.
      DATA(t37) = t25.
      t36 = xsdbool( t37 IS BOUND ).
      t33 = t36.
    ENDIF.
    IF t33 = abap_true.
      DATA t38 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t38.
      DATA(t39) = abap_true.
      IF t39 = abap_true.
        DATA t40 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t40.
        DATA t41 TYPE REF TO zcl_lnt_abstract_token.
        DATA t42 TYPE REF TO zcl_lnt_expression_node.
        DATA(t43) = t25.
        t42 = t43.
        t41 = t42->get_first_token( ).
        DATA t44 TYPE string.
        DATA(t45) = t2.
        t44 = t45->filename.
        DATA t46 TYPE REF TO zcl_lnt_void_type.
        CLEAR t46.
        DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t47.
        DATA(t48) = abap_true.
        IF t48 = abap_true.
          DATA(t49) = |DataDefinition, TypeStructure|.
          DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t50->has = abap_true.
          t50->value = t49.
          t47 = t50.
        ELSE.
          DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t51.
          t47 = t51.
        ENDIF.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        t46 = zcl_lnt_void_type=>get_db65( i_voided = t47 i_qualified_name = t52 ).
        DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t53.
        DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t54.
        t40 = NEW zcl_lnt_typed_identifier( i_token = t41 i_filename = t44 i_type_9913 = t46 i_meta = t53 i_value = t54 ).
        t38 = t40.
      ELSE.
        DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t55.
        t38 = t55.
      ENDIF.
      result = t38.
      RETURN.
    ENDIF.
    DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t57 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t58 TYPE REF TO zcl_lnt_basic_types.
    DATA(t59) = t2.
    t58 = NEW zcl_lnt_basic_types( i_input_967e = t59 ).
    DATA(t60) = t1.
    DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t61.
    t57 = t58->simple_type( i_node = t60 i_qualified_name_prefix = t61 ).
    t56 = t57.
    DATA t62 TYPE abap_bool.
    DATA(t63) = t56.
    t62 = xsdbool( t63 IS BOUND ).
    IF t62 = abap_true.
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = t17.
      IF t65 IS BOUND.
        IF t65->has = abap_true.
          t64 = xsdbool( strlen( t65->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t64 = abap_true.
        DATA t66 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t66.
        DATA(t67) = abap_true.
        IF t67 = abap_true.
          DATA t68 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t68.
          DATA t69 TYPE REF TO zcl_lnt_abstract_token.
          DATA t70 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t71 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t72) = t56.
          t71 = t72.
          t70 = t71.
          DATA t73 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t74) = t70.
          t73 = t74->token.
          t69 = t73.
          DATA t75 TYPE string.
          DATA(t76) = t2.
          t75 = t76->filename.
          DATA t77 TYPE REF TO zcl_lnt_abstract_type.
          DATA t78 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t79 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t80) = t56.
          t79 = t80.
          t78 = t79.
          DATA t81 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t82) = t78.
          t81 = t82->type_cba0.
          t77 = t81.
          DATA t83 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t83.
          DATA(t84) = abap_true.
          IF t84 = abap_true.
            DATA t85 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t86 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t87 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t88) = t56.
            t87 = t88.
            t86 = t87.
            DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA(t90) = t86.
            t89 = t90->meta.
            t85 = t89.
            t83 = t85.
          ELSE.
            DATA t91 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t91.
            t83 = t91.
          ENDIF.
          DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t92.
          DATA(t93) = abap_true.
          IF t93 = abap_true.
            DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t94.
            DATA t95 TYPE string.
            DATA(t96) = t17.
            t95 = t96->value.
            CLEAR t94.
            CREATE OBJECT t94.
            t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t94->sval = t95.
            t92 = t94.
          ELSE.
            DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t97.
            t92 = t97.
          ENDIF.
          t68 = NEW zcl_lnt_typed_identifier( i_token = t69 i_filename = t75 i_type_9913 = t77 i_meta = t83 i_value = t92 ).
          t66 = t68.
        ELSE.
          DATA t98 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t98.
          t66 = t98.
        ENDIF.
        result = t66.
        RETURN.
      ELSE.
        DATA t99 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t99.
        DATA(t100) = abap_true.
        IF t100 = abap_true.
          DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t102) = t56.
          t101 = t102.
          t99 = t101.
        ELSE.
          DATA t103 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t103.
          t99 = t103.
        ENDIF.
        result = t99.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t104 TYPE abap_bool.
    DATA(t105) = t25.
    t104 = xsdbool( t105 IS BOUND ).
    IF t104 = abap_true.
      DATA t106 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t106.
      DATA(t107) = abap_true.
      IF t107 = abap_true.
        DATA t108 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t109 TYPE REF TO zcl_lnt_abstract_token.
        DATA t110 TYPE REF TO zcl_lnt_expression_node.
        DATA(t111) = t25.
        t110 = t111.
        t109 = t110->get_first_token( ).
        DATA t112 TYPE string.
        DATA(t113) = t2.
        t112 = t113->filename.
        DATA t114 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t115) = |DataDefinition, fallback|.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t116.
        t114 = NEW zcl_lnt_unknown_type( i_error = t115 i_qualified_name = t116 ).
        DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t117.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t118.
        t108 = NEW zcl_lnt_typed_identifier( i_token = t109 i_filename = t112 i_type_9913 = t114 i_meta = t117 i_value = t118 ).
        t106 = t108.
      ELSE.
        DATA t119 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t119.
        t106 = t119.
      ENDIF.
      result = t106.
      RETURN.
    ENDIF.
    DATA t120 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t120.
    result = t120.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d797_7c876f6e1490.
  ENDMETHOD.
ENDCLASS.
