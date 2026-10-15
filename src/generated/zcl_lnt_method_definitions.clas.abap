* TS: src/abap/types/method_definitions.ts:10:1 MethodDefinitions
CLASS zcl_lnt_method_definitions DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_method_definitions.
    DATA all TYPE REF TO zlnt_runtime_map__df7ea9ca9d2a.
    METHODS constructor IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS get_all RETURNING VALUE(result) TYPE REF TO zif_lnt_generator_0f59ca3c.
    METHODS get_by_name IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zif_lnt_method_definition.
    METHODS parse_interface IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS parse IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS add_51c1 IMPORTING i_def TYPE REF TO zcl_lnt_statement_node i_visibility_5c1f TYPE i i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_method_definitions IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_map__df7ea9ca9d2a.
    DATA t4 TYPE REF TO zlnt_runtime_map__df7ea9ca9d2a.
    DATA(t5) = NEW zlnt_runtime_map__df7ea9ca9d2a( ).
    t4 = t5.
    DATA(t6) = t4.
    t3 = t6.
    me->all = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `all`.
    DATA t7 TYPE REF TO zlnt_runtime_map__df7ea9ca9d2a.
    DATA t8 TYPE REF TO zlnt_runtime_map__df7ea9ca9d2a.
    DATA(t9) = NEW zlnt_runtime_map__df7ea9ca9d2a( ).
    t8 = t9.
    DATA(t10) = t8.
    t7 = t10.
    me->all = t7.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `all`.
    DATA(t11) = t1.
    DATA(t12) = t2.
    me->parse( i_node = t11 i_input_967e = t12 ).
  ENDMETHOD.

  METHOD get_all.
    DATA t1 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t2 TYPE REF TO zcl_lnt_generator_98c19d71.
    DATA(t3) = me.
    t2 = NEW zcl_lnt_generator_98c19d71( i_outer = t3 ).
    t1 ?= t2.
    result = t1.

  ENDMETHOD.

  METHOD get_by_name.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zif_lnt_method_definition.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zif_lnt_method_definition.
    CLEAR t10.
    DATA(t11) = me->all.
    DATA t12 TYPE string.
    DATA t13 TYPE string.
    DATA(t14) = t1.
    t13 = t14->value.
    DATA(t15) = strlen( t13 ).
    t12 = t13.
    IF t12 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t12 TO UPPER CASE.
    ELSE.
      t12 = zlnt_runtime_uppe_91169605024d=>full( t12 ).
    ENDIF.
    t10 = t11->get( p0 = t12 ).
    result = t10.

  ENDMETHOD.

  METHOD parse_interface.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
    t4 = t5->find_all_statements( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = t3.
    DATA t8 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t7->load( ).
      IF t10 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t7->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA(t13) = t8.
      DATA(t14) = 3.
      DATA(t15) = t2.
      me->add_51c1( i_def = t13 i_visibility_5c1f = t14 i_input_967e = t15 ).
    ENDDO.
  ENDMETHOD.

  METHOD parse.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t4.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d700_0943ee7a14b4.
    t4 = t5->find_direct_structure( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA(t9) = t1.
      DATA(t10) = t2.
      me->parse_interface( i_node = t9 i_input_967e = t10 ).
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t12.
    DATA(t13) = t1.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e.
    t12 = t13->find_direct_structure( i_type_9913 = t14 ).
    t11 = t12.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t11.
    t16 = xsdbool( t17 IS BOUND ).
    t15 = xsdbool( t16 = abap_false ).
    IF t15 = abap_true.
      DATA t18 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      DATA(t21) = abap_true.
      IF t21 = abap_true.
        DATA(t22) = |MethodDefinitions, expected ClassDefinition as part of input|.
        t22 = t22 && | node|.
        DATA(t23) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t23->has = abap_true.
        t23->value = t22.
        t20 = t23.
      ELSE.
        DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t24.
        t20 = t24.
      ENDIF.
      t19 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t20 ).
      t18 = NEW #( ).
      t18->payload = t19.
      CLEAR t18->source_value.
      IF t19 IS BOUND.
        DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t25.
        DATA t26 TYPE REF TO object.
        CLEAR t26.
        CLEAR t25.
        t26 = t19.
        TRY.
            t18->source_value ?= t26.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t18->source_value IS NOT BOUND.
          TRY.
              t25 ?= t19.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t25 IS BOUND.
            t18->source_value = t25->source( ).
          ENDIF.
          IF t18->source_value IS NOT BOUND.
            CREATE OBJECT t18->source_value.
            t18->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t18->source_value->oval = t19.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t18.
    ENDIF.
    DATA t27 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t27.
    DATA t28 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t28.
    DATA t29 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t29.
    DATA(t30) = t11.
    t29 = t30.
    DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d718_3ac015f16676.
    t28 = t29->find_direct_structure( i_type_9913 = t31 ).
    t27 = t28.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t34.
    DATA t35 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t35.
    DATA(t36) = t27.
    t35 = t36.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t37.
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = t35.
    IF t39 IS INITIAL.
      t38 = abap_true.
    ENDIF.
    IF t38 = abap_true.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t40.
      t37 = t40.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t41.
      DATA t42 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t42.
      DATA(t43) = t35.
      t42 = t43.
      DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
      t41 = t42->find_all_statements( i_type_9913 = t44 ).
      t37 = t41.
    ENDIF.
    t34 = t37.
    t33 = t34.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t45.
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = t33.
    t46 = xsdbool( t47 IS BOUND ).
    IF t46 = abap_true.
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t48.
      DATA(t49) = t33.
      t48 = t49.
      t45 = t48.
    ELSE.
      DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t50.
      CREATE OBJECT t50.
      t45 = t50.
    ENDIF.
    t32 = t45.
    DATA t51 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t51.
    DATA t52 TYPE REF TO object.
    CLEAR t52.
    DATA(t53) = VALUE i( ).
    DO.
      t32->load( ).
      IF t53 >= lines( t32->items ).
        EXIT.
      ENDIF.
      CLEAR t52.
      READ TABLE t32->items INDEX t53 + 1 INTO t52.
      t53 = t53 + 1.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      CLEAR t51.
      IF t52 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t54 ?= t52.
        DATA t55 TYPE REF TO object.
        CLEAR t55.
        t55 = t54->as_ref( ).
        t51 ?= t55.
      ELSE.
        t51 ?= t52.
      ENDIF.
      DATA(t56) = t51.
      DATA(t57) = 1.
      DATA(t58) = t2.
      me->add_51c1( i_def = t56 i_visibility_5c1f = t57 i_input_967e = t58 ).
    ENDDO.
    DATA t59 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t59.
    DATA t60 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t60.
    DATA(t61) = t1.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d717_78ede11c0134.
    t60 = t61->find_direct_structure( i_type_9913 = t62 ).
    t59 = t60.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t65.
    DATA t66 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t66.
    DATA(t67) = t59.
    t66 = t67.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t68.
    DATA(t69) = VALUE abap_bool( ).
    DATA(t70) = t66.
    IF t70 IS INITIAL.
      t69 = abap_true.
    ENDIF.
    IF t69 = abap_true.
      DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t71.
      t68 = t71.
    ELSE.
      DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t72.
      DATA t73 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t73.
      DATA(t74) = t66.
      t73 = t74.
      DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
      t72 = t73->find_all_statements( i_type_9913 = t75 ).
      t68 = t72.
    ENDIF.
    t65 = t68.
    t64 = t65.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t76.
    DATA(t77) = VALUE abap_bool( ).
    DATA(t78) = t64.
    t77 = xsdbool( t78 IS BOUND ).
    IF t77 = abap_true.
      DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t79.
      DATA(t80) = t64.
      t79 = t80.
      t76 = t79.
    ELSE.
      DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t81.
      CREATE OBJECT t81.
      t76 = t81.
    ENDIF.
    t63 = t76.
    DATA t82 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t82.
    DATA t83 TYPE REF TO object.
    CLEAR t83.
    DATA(t84) = VALUE i( ).
    DO.
      t63->load( ).
      IF t84 >= lines( t63->items ).
        EXIT.
      ENDIF.
      CLEAR t83.
      READ TABLE t63->items INDEX t84 + 1 INTO t83.
      t84 = t84 + 1.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t85.
      CLEAR t82.
      IF t83 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t85 ?= t83.
        DATA t86 TYPE REF TO object.
        CLEAR t86.
        t86 = t85->as_ref( ).
        t82 ?= t86.
      ELSE.
        t82 ?= t83.
      ENDIF.
      DATA(t87) = t82.
      DATA(t88) = 2.
      DATA(t89) = t2.
      me->add_51c1( i_def = t87 i_visibility_5c1f = t88 i_input_967e = t89 ).
    ENDDO.
    DATA t90 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t90.
    DATA t91 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t91.
    DATA(t92) = t1.
    DATA(t93) = zlnt_runtime_desc_78196487750d=>zlnt_member_d716_74fc3af0c6d3.
    t91 = t92->find_direct_structure( i_type_9913 = t93 ).
    t90 = t91.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t95.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t96.
    DATA t97 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t97.
    DATA(t98) = t90.
    t97 = t98.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t99.
    DATA(t100) = VALUE abap_bool( ).
    DATA(t101) = t97.
    IF t101 IS INITIAL.
      t100 = abap_true.
    ENDIF.
    IF t100 = abap_true.
      DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t102.
      t99 = t102.
    ELSE.
      DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t103.
      DATA t104 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t104.
      DATA(t105) = t97.
      t104 = t105.
      DATA(t106) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
      t103 = t104->find_all_statements( i_type_9913 = t106 ).
      t99 = t103.
    ENDIF.
    t96 = t99.
    t95 = t96.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t107.
    DATA(t108) = VALUE abap_bool( ).
    DATA(t109) = t95.
    t108 = xsdbool( t109 IS BOUND ).
    IF t108 = abap_true.
      DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t110.
      DATA(t111) = t95.
      t110 = t111.
      t107 = t110.
    ELSE.
      DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t112.
      CREATE OBJECT t112.
      t107 = t112.
    ENDIF.
    t94 = t107.
    DATA t113 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t113.
    DATA t114 TYPE REF TO object.
    CLEAR t114.
    DATA(t115) = VALUE i( ).
    DO.
      t94->load( ).
      IF t115 >= lines( t94->items ).
        EXIT.
      ENDIF.
      CLEAR t114.
      READ TABLE t94->items INDEX t115 + 1 INTO t114.
      t115 = t115 + 1.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      CLEAR t113.
      IF t114 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t116 ?= t114.
        DATA t117 TYPE REF TO object.
        CLEAR t117.
        t117 = t116->as_ref( ).
        t113 ?= t117.
      ELSE.
        t113 ?= t114.
      ENDIF.
      DATA(t118) = t113.
      DATA(t119) = 3.
      DATA(t120) = t2.
      me->add_51c1( i_def = t118 i_visibility_5c1f = t119 i_input_967e = t120 ).
    ENDDO.
  ENDMETHOD.

  METHOD add_51c1.
    DATA(t1) = i_def.
    DATA(t2) = i_visibility_5c1f.
    DATA(t3) = i_input_967e.
    DATA t4 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t4.
    TRY.
        DATA t5 TYPE REF TO zcl_lnt_method_definition.
        CLEAR t5.
        DATA t6 TYPE REF TO zcl_lnt_method_definition.
        CLEAR t6.
        DATA(t7) = t1.
        DATA(t8) = VALUE f( ).
        DATA(t9) = t2.
        t8 = t9.
        DATA(t10) = t3.
        t6 = NEW zcl_lnt_method_definition( i_node = t7 i_visibility_5c1f = t8 i_input_967e = t10 ).
        t5 = t6.
        DATA t11 TYPE REF TO zlnt_runtime_map__df7ea9ca9d2a.
        CLEAR t11.
        DATA(t12) = me->all.
        DATA(t13) = VALUE string( ).
        DATA(t14) = VALUE string( ).
        DATA t15 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t15.
        DATA(t16) = t5.
        t15 = t16.
        DATA(t17) = VALUE string( ).
        DATA(t18) = VALUE string( ).
        DATA(t19) = VALUE string( ).
        DATA t20 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t20.
        DATA t21 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t21.
        DATA(t22) = t15.
        t21 = t22->token.
        t20 = t21.
        DATA(t23) = VALUE string( ).
        DATA(t24) = t20.
        t23 = t24->str.
        t19 = t23.
        t18 = t19.
        DATA(t25) = VALUE abap_bool( ).
        DATA(t26) = VALUE string( ).
        DATA(t27) = t18.
        DATA(t28) = 0.
        DATA(t29) = 1.
        DATA(t30) = strlen( t27 ).
        IF t28 < 0.
          t28 = t28 + t30.
          IF t28 < 0.
            t28 = 0.
          ENDIF.
        ENDIF.
        IF t28 > t30 OR t29 <= 0.
          CLEAR t26.
        ELSE.
          IF t29 > t30 - t28.
            t29 = t30 - t28.
          ENDIF.
          t26 = t27+t28(t29).
        ENDIF.
        DATA(t31) = |!|.
        t25 = xsdbool( t26 = t31 ).
        IF t25 = abap_true.
          DATA(t32) = VALUE string( ).
          DATA(t33) = VALUE string( ).
          DATA(t34) = t18.
          t33 = t34.
          DATA(t35) = VALUE string( ).
          DATA(t36) = t33.
          DATA(t37) = 1.
          DATA(t38) = VALUE i( ).
          DATA(t39) = t33.
          DATA(t40) = strlen( t39 ).
          t38 = t40.
          DATA(t41) = strlen( t36 ).
          IF t37 < 0.
            t37 = t37 + t41.
            IF t37 < 0.
              t37 = 0.
            ENDIF.
          ENDIF.
          IF t37 > t41 OR t38 <= 0.
            CLEAR t35.
          ELSE.
            IF t38 > t41 - t37.
              t38 = t41 - t37.
            ENDIF.
            t35 = t36+t37(t38).
          ENDIF.
          t32 = t35.
          t18 = t32.
        ENDIF.
        DATA(t42) = t18.
        t17 = t42.
        t14 = t17.
        DATA(t43) = strlen( t14 ).
        t13 = t14.
        IF t13 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t13 TO UPPER CASE.
        ELSE.
          t13 = zlnt_runtime_uppe_91169605024d=>full( t13 ).
        ENDIF.
        DATA(t44) = t5.
        t11 = t12->set( p0 = t13 p1 = t44 ).
      CATCH zlnt_exception_cl_30eec8e8805d INTO t4.
        DATA(t45) = t4->payload.
        DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t46.
        DATA(t47) = t3.
        t46 = t47->issues.
        DATA t48 TYPE REF TO zcl_lnt_issue.
        CLEAR t48.
        DATA(t49) = t3.
        DATA t50 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t50.
        DATA(t51) = t1.
        t50 = t51->get_first_token( ).
        DATA(t52) = VALUE string( ).
        DATA(t53) = t45.
        t52 = t53->message_25cb.
        DATA t54 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t54.
        t48 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t49 i_token = t50 i_message_26cb = t52 i_fix = t54 ).
        t46->load( ).
        APPEND t48 TO t46->items.
        t46->save( ).
    ENDTRY.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1063_f4e3a2ea6cf6.
  ENDMETHOD.

  METHOD zif_lnt_method_definitions~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definitions~get_all.
    result = me->get_all( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definitions~get_by_name.
    result = me->get_by_name( i_name = i_name ).
  ENDMETHOD.
ENDCLASS.
