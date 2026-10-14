* TS: src/abap/types/method_definitions.ts:10:1 MethodDefinitions
CLASS zcl_lnt_method_definitions DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_method_definitions.
    DATA all TYPE REF TO zlnt_runtime_map__df7ea9ca9d2a.
    METHODS constructor IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS get_all RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_by_name IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zif_lnt_method_definition.
    METHODS parse_interface IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS parse IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS add_51c1 IMPORTING i_def TYPE REF TO zcl_lnt_statement_node i_visibility_5c1f TYPE i i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_method_definitions IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_structure_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zlnt_runtime_map__df7ea9ca9d2a.
    DATA t4 TYPE REF TO zlnt_runtime_map__df7ea9ca9d2a.
    DATA(t5) = NEW zlnt_runtime_map__df7ea9ca9d2a(  ).
    t4 = t5.
    DATA(t6) = CAST zlnt_runtime_map__df7ea9ca9d2a( t4 ).
    t3 = t6.
    me->all = t3.
    DATA t7 TYPE REF TO zlnt_runtime_map__df7ea9ca9d2a.
    DATA t8 TYPE REF TO zlnt_runtime_map__df7ea9ca9d2a.
    DATA(t9) = NEW zlnt_runtime_map__df7ea9ca9d2a(  ).
    t8 = t9.
    DATA(t10) = CAST zlnt_runtime_map__df7ea9ca9d2a( t8 ).
    t7 = t10.
    me->all = t7.
    DATA(t11) = CAST zcl_lnt_structure_node( t1 ).
    DATA(t12) = CAST zcl_lnt_syntax_input( t2 ).
    me->parse( i_node = t11 i_input_967e = t12 ).
  ENDMETHOD.
  METHOD get_all.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t4) = CAST zlnt_runtime_map__df7ea9ca9d2a( me->all ).
    t3 = t4->keys(  ).
    DATA(t5) = VALUE string( ).
    LOOP AT t3->items INTO t5.
      DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA t7 TYPE REF TO zif_lnt_method_definition.
      DATA t8 TYPE REF TO zif_lnt_method_definition.
      DATA(t9) = CAST zlnt_runtime_map__df7ea9ca9d2a( me->all ).
      DATA(t10) = t5.
      t8 = t9->get( p0 = t10 ).
      t7 = t8.
      APPEND t7 TO t6->items.
    ENDLOOP.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    result = t11.

  ENDMETHOD.
  METHOD get_by_name.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_name ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
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
    DATA(t11) = CAST zlnt_runtime_map__df7ea9ca9d2a( me->all ).
    DATA t12 TYPE string.
    DATA t13 TYPE string.
    DATA(t14) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
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
    DATA(t1) = CAST zcl_lnt_structure_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = CAST zcl_lnt_structure_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d536_087fe30efad2 ).
    t4 = t5->find_all_statements( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    DATA t8 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    LOOP AT t7->items INTO t9.
      t8 ?= t9.
      DATA(t10) = CAST zcl_lnt_statement_node( t8 ).
      DATA(t11) = 3.
      DATA(t12) = CAST zcl_lnt_syntax_input( t2 ).
      me->add_51c1( i_def = t10 i_visibility_5c1f = t11 i_input_967e = t12 ).
    ENDLOOP.
  ENDMETHOD.
  METHOD parse.
    DATA(t1) = CAST zcl_lnt_structure_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_structure_node.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA(t5) = CAST zcl_lnt_structure_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d683_aa96b8bd10e1 ).
    t4 = t5->find_direct_structure( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE abap_bool.
    DATA(t8) = CAST zcl_lnt_structure_node( t3 ).
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA(t9) = CAST zcl_lnt_structure_node( t1 ).
      DATA(t10) = CAST zcl_lnt_syntax_input( t2 ).
      me->parse_interface( i_node = t9 i_input_967e = t10 ).
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA t12 TYPE REF TO zcl_lnt_structure_node.
    DATA(t13) = CAST zcl_lnt_structure_node( t1 ).
    DATA(t14) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d684_dd4b0670faf6 ).
    t12 = t13->find_direct_structure( i_type_9913 = t14 ).
    t11 = t12.
    DATA t15 TYPE abap_bool.
    DATA t16 TYPE abap_bool.
    DATA(t17) = CAST zcl_lnt_structure_node( t11 ).
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
      RAISE EXCEPTION t18.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_structure_node.
    DATA t26 TYPE REF TO zcl_lnt_structure_node.
    DATA t27 TYPE REF TO zcl_lnt_structure_node.
    DATA(t28) = CAST zcl_lnt_structure_node( t11 ).
    t27 = t28.
    DATA(t29) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e ).
    t26 = t27->find_direct_structure( i_type_9913 = t29 ).
    t25 = t26.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t32.
    DATA t33 TYPE REF TO zcl_lnt_structure_node.
    DATA(t34) = CAST zcl_lnt_structure_node( t25 ).
    t33 = t34.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t35.
    DATA(t36) = VALUE abap_bool( ).
    DATA(t37) = CAST zcl_lnt_structure_node( t33 ).
    IF t37 IS INITIAL.
      t36 = abap_true.
    ENDIF.
    IF t36 = abap_true.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t38.
      t35 = t38.
    ELSE.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t40 TYPE REF TO zcl_lnt_structure_node.
      DATA(t41) = CAST zcl_lnt_structure_node( t33 ).
      t40 = t41.
      DATA(t42) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d536_087fe30efad2 ).
      t39 = t40->find_all_statements( i_type_9913 = t42 ).
      t35 = t39.
    ENDIF.
    t32 = t35.
    t31 = t32.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t43.
    DATA t44 TYPE abap_bool.
    DATA(t45) = CAST zlnt_runtime_arra_c22708faf2e3( t31 ).
    t44 = xsdbool( t45 IS BOUND ).
    IF t44 = abap_true.
      DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t31 ).
      t46 = t47.
      t43 = t46.
    ELSE.
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t48.
      t43 = t48.
    ENDIF.
    t30 = t43.
    DATA t49 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t49.
    DATA t50 TYPE REF TO object.
    CLEAR t50.
    LOOP AT t30->items INTO t50.
      t49 ?= t50.
      DATA(t51) = CAST zcl_lnt_statement_node( t49 ).
      DATA(t52) = 1.
      DATA(t53) = CAST zcl_lnt_syntax_input( t2 ).
      me->add_51c1( i_def = t51 i_visibility_5c1f = t52 i_input_967e = t53 ).
    ENDLOOP.
    DATA t54 TYPE REF TO zcl_lnt_structure_node.
    DATA t55 TYPE REF TO zcl_lnt_structure_node.
    DATA(t56) = CAST zcl_lnt_structure_node( t1 ).
    DATA(t57) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d700_0943ee7a14b4 ).
    t55 = t56->find_direct_structure( i_type_9913 = t57 ).
    t54 = t55.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t60.
    DATA t61 TYPE REF TO zcl_lnt_structure_node.
    DATA(t62) = CAST zcl_lnt_structure_node( t54 ).
    t61 = t62.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t63.
    DATA(t64) = VALUE abap_bool( ).
    DATA(t65) = CAST zcl_lnt_structure_node( t61 ).
    IF t65 IS INITIAL.
      t64 = abap_true.
    ENDIF.
    IF t64 = abap_true.
      DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t66.
      t63 = t66.
    ELSE.
      DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t68 TYPE REF TO zcl_lnt_structure_node.
      DATA(t69) = CAST zcl_lnt_structure_node( t61 ).
      t68 = t69.
      DATA(t70) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d536_087fe30efad2 ).
      t67 = t68->find_all_statements( i_type_9913 = t70 ).
      t63 = t67.
    ENDIF.
    t60 = t63.
    t59 = t60.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t71.
    DATA t72 TYPE abap_bool.
    DATA(t73) = CAST zlnt_runtime_arra_c22708faf2e3( t59 ).
    t72 = xsdbool( t73 IS BOUND ).
    IF t72 = abap_true.
      DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t75) = CAST zlnt_runtime_arra_c22708faf2e3( t59 ).
      t74 = t75.
      t71 = t74.
    ELSE.
      DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t76.
      t71 = t76.
    ENDIF.
    t58 = t71.
    DATA t77 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t77.
    DATA t78 TYPE REF TO object.
    CLEAR t78.
    LOOP AT t58->items INTO t78.
      t77 ?= t78.
      DATA(t79) = CAST zcl_lnt_statement_node( t77 ).
      DATA(t80) = 2.
      DATA(t81) = CAST zcl_lnt_syntax_input( t2 ).
      me->add_51c1( i_def = t79 i_visibility_5c1f = t80 i_input_967e = t81 ).
    ENDLOOP.
    DATA t82 TYPE REF TO zcl_lnt_structure_node.
    DATA t83 TYPE REF TO zcl_lnt_structure_node.
    DATA(t84) = CAST zcl_lnt_structure_node( t1 ).
    DATA(t85) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d699_5bd4c856ada5 ).
    t83 = t84->find_direct_structure( i_type_9913 = t85 ).
    t82 = t83.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t88.
    DATA t89 TYPE REF TO zcl_lnt_structure_node.
    DATA(t90) = CAST zcl_lnt_structure_node( t82 ).
    t89 = t90.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t91.
    DATA(t92) = VALUE abap_bool( ).
    DATA(t93) = CAST zcl_lnt_structure_node( t89 ).
    IF t93 IS INITIAL.
      t92 = abap_true.
    ENDIF.
    IF t92 = abap_true.
      DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t94.
      t91 = t94.
    ELSE.
      DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t96 TYPE REF TO zcl_lnt_structure_node.
      DATA(t97) = CAST zcl_lnt_structure_node( t89 ).
      t96 = t97.
      DATA(t98) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d536_087fe30efad2 ).
      t95 = t96->find_all_statements( i_type_9913 = t98 ).
      t91 = t95.
    ENDIF.
    t88 = t91.
    t87 = t88.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t99.
    DATA t100 TYPE abap_bool.
    DATA(t101) = CAST zlnt_runtime_arra_c22708faf2e3( t87 ).
    t100 = xsdbool( t101 IS BOUND ).
    IF t100 = abap_true.
      DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t103) = CAST zlnt_runtime_arra_c22708faf2e3( t87 ).
      t102 = t103.
      t99 = t102.
    ELSE.
      DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t104.
      t99 = t104.
    ENDIF.
    t86 = t99.
    DATA t105 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t105.
    DATA t106 TYPE REF TO object.
    CLEAR t106.
    LOOP AT t86->items INTO t106.
      t105 ?= t106.
      DATA(t107) = CAST zcl_lnt_statement_node( t105 ).
      DATA(t108) = 3.
      DATA(t109) = CAST zcl_lnt_syntax_input( t2 ).
      me->add_51c1( i_def = t107 i_visibility_5c1f = t108 i_input_967e = t109 ).
    ENDLOOP.
  ENDMETHOD.
  METHOD add_51c1.
    DATA(t1) = CAST zcl_lnt_statement_node( i_def ).
    DATA(t2) = i_visibility_5c1f.
    DATA(t3) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t4 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t4.
    TRY.
        DATA t5 TYPE REF TO zcl_lnt_method_definition.
        CLEAR t5.
        DATA t6 TYPE REF TO zcl_lnt_method_definition.
        CLEAR t6.
        DATA(t7) = CAST zcl_lnt_statement_node( t1 ).
        DATA(t8) = VALUE int8( ).
        DATA(t9) = t2.
        t8 = t9.
        DATA(t10) = CAST zcl_lnt_syntax_input( t3 ).
        t6 = NEW zcl_lnt_method_definition( i_node = t7 i_visibility_5c1f = t8 i_input_967e = t10 ).
        t5 = t6.
        DATA t11 TYPE REF TO zlnt_runtime_map__df7ea9ca9d2a.
        CLEAR t11.
        DATA(t12) = CAST zlnt_runtime_map__df7ea9ca9d2a( me->all ).
        DATA(t13) = VALUE string( ).
        DATA(t14) = VALUE string( ).
        DATA t15 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t15.
        DATA(t16) = CAST zcl_lnt_method_definition( t5 ).
        t15 = t16.
        DATA(t17) = VALUE string( ).
        DATA(t18) = VALUE string( ).
        DATA(t19) = VALUE string( ).
        DATA t20 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t20.
        DATA t21 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t21.
        DATA(t22) = CAST zcl_lnt_fi_identifier( t15 ).
        t21 = t22->token.
        t20 = t21.
        DATA(t23) = VALUE string( ).
        DATA(t24) = CAST zcl_lnt_abstract_token( t20 ).
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
        DATA(t44) = CAST zcl_lnt_method_definition( t5 ).
        t11 = t12->set( p0 = t13 p1 = t44 ).
      CATCH zlnt_exception_cl_30eec8e8805d INTO t4.
        DATA(t45) = CAST zcl_lnt_builtin_e8b3bd7e( t4->payload ).
        DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t46.
        DATA(t47) = CAST zcl_lnt_syntax_input( t3 ).
        t46 = t47->issues.
        DATA t48 TYPE REF TO zcl_lnt_issue.
        CLEAR t48.
        DATA(t49) = CAST zcl_lnt_syntax_input( t3 ).
        DATA t50 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t50.
        DATA(t51) = CAST zcl_lnt_statement_node( t1 ).
        t50 = t51->get_first_token(  ).
        DATA(t52) = VALUE string( ).
        DATA(t53) = CAST zcl_lnt_builtin_e8b3bd7e( t45 ).
        t52 = t53->message_25cb.
        DATA t54 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t54.
        t48 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t49 i_token = t50 i_message_26cb = t52 i_fix = t54 ).
        APPEND t48 TO t46->items.
    ENDTRY.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1041_e7fb389676c4.
  ENDMETHOD.
  METHOD zif_lnt_method_definitions~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_method_definitions~get_all.
    result = me->get_all(  ).
  ENDMETHOD.
  METHOD zif_lnt_method_definitions~get_by_name.
    result = me->get_by_name(  i_name = i_name ).
  ENDMETHOD.
ENDCLASS.
