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
    me->all = NEW zlnt_runtime_map__df7ea9ca9d2a( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `all`.
    me->all = NEW zlnt_runtime_map__df7ea9ca9d2a( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `all`.
    me->parse( i_node = t1 i_input_967e = t2 ).
  ENDMETHOD.

  METHOD get_all.
    DATA t1 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t2 TYPE REF TO zcl_lnt_generator_98c19d71.
    t2 = NEW zcl_lnt_generator_98c19d71( i_outer = me ).
    t1 ?= t2.
    result = t1.

  ENDMETHOD.

  METHOD get_by_name.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zif_lnt_method_definition.
    DATA(t11) = me->all.
    DATA t12 TYPE string.
    DATA t13 TYPE string.
    t13 = t1->value.
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
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
    t4 = i_node->find_all_statements( i_type_9913 = t6 ).
    t3 = t4.
    DATA t8 TYPE REF TO zcl_lnt_statement_node.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t3->load( ).
      IF t10 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t3->items INDEX t10 + 1 INTO t9.
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
      DATA(t14) = 3.
      me->add_51c1( i_def = t8 i_visibility_5c1f = t14 i_input_967e = t2 ).
    ENDDO.
  ENDMETHOD.

  METHOD parse.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d700_0943ee7a14b4.
    t4 = t1->find_direct_structure( i_type_9913 = t6 ).
    DATA(t7) = VALUE abap_bool( ).
    t7 = xsdbool( t4 IS BOUND ).
    IF t7 = abap_true.
      me->parse_interface( i_node = t1 i_input_967e = t2 ).
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA t12 TYPE REF TO zcl_lnt_structure_node.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e.
    t12 = t1->find_direct_structure( i_type_9913 = t14 ).
    t11 = t12.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = VALUE abap_bool( ).
    t16 = xsdbool( t11 IS BOUND ).
    t15 = xsdbool( t16 = abap_false ).
    IF t15 = abap_true.
      DATA t18 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t19 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t22) = |MethodDefinitions, expected ClassDefinition as part of input|.
      t22 = t22 && | node|.
      DATA(t23) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t23->has = abap_true.
      t23->value = t22.
      t20 = t23.
      t19 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t20 ).
      t18 = NEW #( ).
      t18->payload = t19.
      CLEAR t18->source_value.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t26 TYPE REF TO object.
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
      RAISE EXCEPTION t18.
    ENDIF.
    DATA t28 TYPE REF TO zcl_lnt_structure_node.
    DATA t29 TYPE REF TO zcl_lnt_structure_node.
    t29 = t11.
    DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d718_3ac015f16676.
    t28 = t29->find_direct_structure( i_type_9913 = t31 ).
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t35 TYPE REF TO zcl_lnt_structure_node.
    t35 = t28.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t38) = xsdbool( t35 IS INITIAL ).
    IF t38 = abap_true.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t42 TYPE REF TO zcl_lnt_structure_node.
      t42 = t35.
      DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
      t41 = t42->find_all_statements( i_type_9913 = t44 ).
      t37 = t41.
    ENDIF.
    t33 = t37.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t46) = VALUE abap_bool( ).
    t46 = xsdbool( t33 IS BOUND ).
    IF t46 = abap_true.
      t45 = t33.
    ELSE.
      DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t50.
      t45 = t50.
    ENDIF.
    t32 = t45.
    DATA t51 TYPE REF TO zcl_lnt_statement_node.
    DATA t52 TYPE REF TO object.
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
      DATA(t57) = 1.
      me->add_51c1( i_def = t51 i_visibility_5c1f = t57 i_input_967e = t2 ).
    ENDDO.
    DATA t60 TYPE REF TO zcl_lnt_structure_node.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d717_78ede11c0134.
    t60 = t1->find_direct_structure( i_type_9913 = t62 ).
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t66 TYPE REF TO zcl_lnt_structure_node.
    t66 = t60.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t69) = xsdbool( t66 IS INITIAL ).
    IF t69 = abap_true.
    ELSE.
      DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t73 TYPE REF TO zcl_lnt_structure_node.
      t73 = t66.
      DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
      t72 = t73->find_all_statements( i_type_9913 = t75 ).
      t68 = t72.
    ENDIF.
    t64 = t68.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t77) = VALUE abap_bool( ).
    t77 = xsdbool( t64 IS BOUND ).
    IF t77 = abap_true.
      t76 = t64.
    ELSE.
      DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t81.
      t76 = t81.
    ENDIF.
    t63 = t76.
    DATA t82 TYPE REF TO zcl_lnt_statement_node.
    DATA t83 TYPE REF TO object.
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
      DATA(t88) = 2.
      me->add_51c1( i_def = t82 i_visibility_5c1f = t88 i_input_967e = t2 ).
    ENDDO.
    DATA t91 TYPE REF TO zcl_lnt_structure_node.
    DATA(t93) = zlnt_runtime_desc_78196487750d=>zlnt_member_d716_74fc3af0c6d3.
    t91 = t1->find_direct_structure( i_type_9913 = t93 ).
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t97 TYPE REF TO zcl_lnt_structure_node.
    t97 = t91.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t100) = xsdbool( t97 IS INITIAL ).
    IF t100 = abap_true.
    ELSE.
      DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t104 TYPE REF TO zcl_lnt_structure_node.
      t104 = t97.
      DATA(t106) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
      t103 = t104->find_all_statements( i_type_9913 = t106 ).
      t99 = t103.
    ENDIF.
    t95 = t99.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t108) = VALUE abap_bool( ).
    t108 = xsdbool( t95 IS BOUND ).
    IF t108 = abap_true.
      t107 = t95.
    ELSE.
      DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t112.
      t107 = t112.
    ENDIF.
    t94 = t107.
    DATA t113 TYPE REF TO zcl_lnt_statement_node.
    DATA t114 TYPE REF TO object.
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
      DATA(t119) = 3.
      me->add_51c1( i_def = t113 i_visibility_5c1f = t119 i_input_967e = t2 ).
    ENDDO.
  ENDMETHOD.

  METHOD add_51c1.
    DATA(t1) = i_def.
    DATA(t3) = i_input_967e.
    DATA t4 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    TRY.
        DATA t5 TYPE REF TO zcl_lnt_method_definition.
        DATA t6 TYPE REF TO zcl_lnt_method_definition.
        DATA(t8) = VALUE f( ).
        t8 = i_visibility_5c1f.
        t6 = NEW zcl_lnt_method_definition( i_node = t1 i_visibility_5c1f = t8 i_input_967e = t3 ).
        t5 = t6.
        DATA t11 TYPE REF TO zlnt_runtime_map__df7ea9ca9d2a.
        DATA(t12) = me->all.
        DATA(t13) = VALUE string( ).
        DATA(t14) = VALUE string( ).
        DATA t15 TYPE REF TO zcl_lnt_fi_identifier.
        t15 = t5.
        DATA(t17) = VALUE string( ).
        DATA(t18) = VALUE string( ).
        DATA(t19) = VALUE string( ).
        DATA t21 TYPE REF TO zcl_lnt_abstract_token.
        t21 = t15->token.
        DATA(t23) = VALUE string( ).
        t23 = t21->str.
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
          t33 = t18.
          DATA(t35) = VALUE string( ).
          DATA(t37) = 1.
          DATA(t38) = VALUE i( ).
          t38 = strlen( t33 ).
          DATA(t41) = strlen( t33 ).
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
            t35 = t33+t37(t38).
          ENDIF.
          t32 = t35.
          t18 = t32.
        ENDIF.
        t17 = t18.
        t14 = t17.
        DATA(t43) = strlen( t14 ).
        t13 = t14.
        IF t13 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t13 TO UPPER CASE.
        ELSE.
          t13 = zlnt_runtime_uppe_91169605024d=>full( t13 ).
        ENDIF.
        t11 = t12->set( p0 = t13 p1 = t5 ).
      CATCH zlnt_exception_cl_30eec8e8805d INTO t4.
        DATA(t45) = t4->payload.
        DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t46 = t3->issues.
        DATA t48 TYPE REF TO zcl_lnt_issue.
        DATA t50 TYPE REF TO zcl_lnt_abstract_token.
        t50 = t1->get_first_token( ).
        DATA(t52) = VALUE string( ).
        t52 = t45->message_25cb.
        DATA t54 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t48 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t50 i_message_26cb = t52 i_fix = t54 ).
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
