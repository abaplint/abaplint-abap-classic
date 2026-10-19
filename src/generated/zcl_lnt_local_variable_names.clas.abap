* TS: src/rules/local_variable_names.ts:22:1 LocalVariableNames
CLASS zcl_lnt_local_variable_names DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_lcl_vrbl_nms_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_expected TYPE string i_actual TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_lc_vr_nm_ts_lc_vr_nm RETURNING VALUE(result) TYPE REF TO zcl_lnt_lcl_vrbl_nms_cnf.
    METHODS s_c_i_s_r_lc_vr_nm_ts_lc_vr_nm IMPORTING i_conf TYPE REF TO zcl_lnt_lcl_vrbl_nms_cnf.
    METHODS r_p_i_s_r_lc_vr_nm_ts_lc_vr_nm IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_locals IMPORTING i_structure TYPE REF TO zcl_lnt_structure_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_name IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_file TYPE REF TO zcl_lnt_abap_file i_expected TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_local_variable_names IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_lcl_vrbl_nms_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |\nAllows you to enforce a pattern, such as a prefix, for loca|.
    t7 = t7 && |l variables, constants and field symbols.\nRegexes are case-i|.
    t7 = t7 && |nsensitive.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |Naming| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = |FORM bar.\n  DATA foo.\nENDFORM.|.
    t20 = t24.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = |FORM bar.\n  DATA lv_foo.\nENDFORM.|.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |local_variable_names| i_title = |Local variable naming conventions| i_short_description = t6 i_bad_example = t20 i_good_example = t30 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t38 ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t43 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t45 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t47 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t53 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t55 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = i_expected.
    DATA(t2) = i_actual.
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t5 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t10->has = abap_true.
    t10->value = |required|.
    t7 = t10.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    IF t5 IS BOUND.
      t12 = t5->has.
    ENDIF.
    IF t7 IS BOUND.
      t13 = t7->has.
    ENDIF.
    IF t12 = t13.
      IF t12 = abap_false.
        t4 = abap_true.
      ELSEIF t5->value = t7->value.
        t4 = abap_true.
      ENDIF.
    ENDIF.
    IF t4 = abap_true.
      DATA t15 TYPE string.
      DATA t16 TYPE string.
      DATA(t17) = |Local variable name does not match pattern |.
      DATA(t19) = strlen( t17 ).
      t16 = |{ t17 }{ t1 }|.
      DATA(t21) = strlen( t16 ).
      t15 = |{ t16 }{ |: | }|.
      DATA(t23) = strlen( t15 ).
      t3 = |{ t15 }{ t2 }|.
    ELSE.
      DATA t25 TYPE string.
      DATA t26 TYPE string.
      DATA(t27) = |Local variable name must not match pattern |.
      DATA(t29) = strlen( t27 ).
      t26 = |{ t27 }{ t1 }|.
      DATA(t31) = strlen( t26 ).
      t25 = |{ t26 }{ |: | }|.
      DATA(t33) = strlen( t25 ).
      t3 = |{ t25 }{ t2 }|.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD g_c_i_s_r_lc_vr_nm_ts_lc_vr_nm.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_lc_vr_nm_ts_lc_vr_nm.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_lc_vr_nm_ts_lc_vr_nm.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t5 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = VALUE abap_bool( ).
    IF t5 IS INITIAL.
      t10 = abap_true.
    ELSEIF t5->has = abap_false.
      t10 = abap_true.
    ENDIF.
    IF t10 = abap_true.
      DATA(t12) = me->conf.
      DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t16->has = abap_true.
      t16->value = |required|.
      t12->zlnt_view_write_s_9ebcbca32e92( p0 = t16 ).
    ENDIF.
    DATA t18 TYPE REF TO zcl_lnt_structure_node.
    t18 = t1->structure.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t18 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t33 TYPE REF TO zcl_lnt_structure_node.
    t33 = t18.
    DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d697_195ff21ba72a.
    t32 = t33->find_all_structures( i_type_9913 = t35 ).
    DATA t36 TYPE REF TO zcl_lnt_structure_node.
    DATA t37 TYPE REF TO object.
    DATA(t38) = VALUE i( ).
    DO.
      t32->load( ).
      IF t38 >= lines( t32->items ).
        EXIT.
      ENDIF.
      CLEAR t37.
      READ TABLE t32->items INDEX t38 + 1 INTO t37.
      t38 = t38 + 1.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      CLEAR t36.
      IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t39 ?= t37.
        DATA t40 TYPE REF TO object.
        t40 = t39->as_ref( ).
        t36 ?= t40.
      ELSE.
        t36 ?= t37.
      ENDIF.
      DATA(t41) = VALUE i( ).
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t42 = me->check_locals( i_structure = t36 i_file = t1 ).
      DATA t45 TYPE REF TO zcl_lnt_issue.
      CLEAR t45.
      DATA t46 TYPE REF TO object.
      CLEAR t46.
      DATA(t47) = VALUE i( ).
      DO.
        t42->load( ).
        IF t47 >= lines( t42->items ).
          EXIT.
        ENDIF.
        CLEAR t46.
        READ TABLE t42->items INDEX t47 + 1 INTO t46.
        t47 = t47 + 1.
        DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t48.
        CLEAR t45.
        IF t46 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t48 ?= t46.
          DATA t49 TYPE REF TO object.
          t49 = t48->as_ref( ).
          t45 ?= t49.
        ELSE.
          t45 ?= t46.
        ENDIF.
        t2->load( ).
        APPEND t45 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t41 = lines( t2->items ).
    ENDDO.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t55 TYPE REF TO zcl_lnt_structure_node.
    t55 = t18.
    DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d721_06b6159f9afc.
    t54 = t55->find_all_structures( i_type_9913 = t57 ).
    DATA t58 TYPE REF TO zcl_lnt_structure_node.
    DATA t59 TYPE REF TO object.
    DATA(t60) = VALUE i( ).
    DO.
      t54->load( ).
      IF t60 >= lines( t54->items ).
        EXIT.
      ENDIF.
      CLEAR t59.
      READ TABLE t54->items INDEX t60 + 1 INTO t59.
      t60 = t60 + 1.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t61.
      CLEAR t58.
      IF t59 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t61 ?= t59.
        DATA t62 TYPE REF TO object.
        t62 = t61->as_ref( ).
        t58 ?= t62.
      ELSE.
        t58 ?= t59.
      ENDIF.
      DATA(t63) = VALUE i( ).
      DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t64 = me->check_locals( i_structure = t58 i_file = t1 ).
      DATA t67 TYPE REF TO zcl_lnt_issue.
      CLEAR t67.
      DATA t68 TYPE REF TO object.
      CLEAR t68.
      DATA(t69) = VALUE i( ).
      DO.
        t64->load( ).
        IF t69 >= lines( t64->items ).
          EXIT.
        ENDIF.
        CLEAR t68.
        READ TABLE t64->items INDEX t69 + 1 INTO t68.
        t69 = t69 + 1.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        CLEAR t67.
        IF t68 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t70 ?= t68.
          DATA t71 TYPE REF TO object.
          t71 = t70->as_ref( ).
          t67 ?= t71.
        ELSE.
          t67 ?= t68.
        ENDIF.
        t2->load( ).
        APPEND t67 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t63 = lines( t2->items ).
    ENDDO.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t77 TYPE REF TO zcl_lnt_structure_node.
    t77 = t18.
    DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d699_5bd4c856ada5.
    t76 = t77->find_all_structures( i_type_9913 = t79 ).
    DATA t80 TYPE REF TO zcl_lnt_structure_node.
    DATA t81 TYPE REF TO object.
    DATA(t82) = VALUE i( ).
    DO.
      t76->load( ).
      IF t82 >= lines( t76->items ).
        EXIT.
      ENDIF.
      CLEAR t81.
      READ TABLE t76->items INDEX t82 + 1 INTO t81.
      t82 = t82 + 1.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t83.
      CLEAR t80.
      IF t81 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t83 ?= t81.
        DATA t84 TYPE REF TO object.
        t84 = t83->as_ref( ).
        t80 ?= t84.
      ELSE.
        t80 ?= t81.
      ENDIF.
      DATA(t85) = VALUE i( ).
      DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t86 = me->check_locals( i_structure = t80 i_file = t1 ).
      DATA t89 TYPE REF TO zcl_lnt_issue.
      CLEAR t89.
      DATA t90 TYPE REF TO object.
      CLEAR t90.
      DATA(t91) = VALUE i( ).
      DO.
        t86->load( ).
        IF t91 >= lines( t86->items ).
          EXIT.
        ENDIF.
        CLEAR t90.
        READ TABLE t86->items INDEX t91 + 1 INTO t90.
        t91 = t91 + 1.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        CLEAR t89.
        IF t90 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t92 ?= t90.
          DATA t93 TYPE REF TO object.
          t93 = t92->as_ref( ).
          t89 ?= t93.
        ELSE.
          t89 ?= t90.
        ENDIF.
        t2->load( ).
        APPEND t89 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t85 = lines( t2->items ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD check_locals.
    DATA(t1) = i_structure.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d437_1e504b4be960.
    t5 = t1->find_all_statements( i_type_9913 = t7 ).
    DATA t8 TYPE REF TO zcl_lnt_statement_node.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t5->load( ).
      IF t10 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t5->items INDEX t10 + 1 INTO t9.
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
      DATA t13 TYPE REF TO zcl_lnt_structure_node.
      t13 = t1->find_parent( i_node = t8 ).
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE abap_bool.
      t18 = xsdbool( t13 IS BOUND ).
      t17 = t18.
      IF t18 = abap_true.
        DATA t21 TYPE REF TO zif_lnt_structure.
        t21 = t13->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
        t17 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_sr_data ).
      ENDIF.
      IF t17 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
      t24 = t8->find_first_expression( i_type_9913 = t27 ).
      IF xsdbool( t24 IS BOUND ) = abap_true.
        DATA t37 TYPE REF TO zcl_lnt_abstract_token.
        t37 = t24->get_first_token( ).
        DATA t41 TYPE string.
        t41 = me->conf->zlnt_view_read_sr_2cb5fe9e0aa7( ).
        DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t45.
        DATA t48 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t48.
        CREATE OBJECT t48 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t41 flags = |i|.
        DATA t51 TYPE string.
        t51 = t37->str.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t61->has = abap_true.
        t61->value = t51.
        t58 = t61.
        DATA(t64) = me->conf.
        IF zcl_lnt_name_validator=>violates_rule( i_name = t58 i_pattern = t48 i_params_4c59 = t64 ) = abap_true.
          DATA(t65) = VALUE string( ).
          DATA t67 TYPE string.
          t67 = t41.
          DATA t69 TYPE string.
          t69 = t51.
          DATA(t71) = VALUE string( ).
          DATA(t72) = VALUE abap_bool( ).
          DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t73 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t75.
          DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t78->has = abap_true.
          t78->value = |required|.
          t75 = t78.
          DATA(t80) = VALUE abap_bool( ).
          DATA(t81) = VALUE abap_bool( ).
          IF t73 IS BOUND.
            t80 = t73->has.
          ENDIF.
          IF t75 IS BOUND.
            t81 = t75->has.
          ENDIF.
          IF t80 = t81.
            IF t80 = abap_false.
              t72 = abap_true.
            ELSEIF t73->value = t75->value.
              t72 = abap_true.
            ENDIF.
          ENDIF.
          IF t72 = abap_true.
            DATA t83 TYPE string.
            DATA t84 TYPE string.
            DATA(t85) = |Local variable name does not match pattern |.
            DATA(t87) = strlen( t85 ).
            t84 = |{ t85 }{ t67 }|.
            DATA(t89) = strlen( t84 ).
            t83 = |{ t84 }{ |: | }|.
            DATA(t91) = strlen( t83 ).
            t71 = |{ t83 }{ t69 }|.
          ELSE.
            DATA t93 TYPE string.
            DATA t94 TYPE string.
            DATA(t95) = |Local variable name must not match pattern |.
            DATA(t97) = strlen( t95 ).
            t94 = |{ t95 }{ t67 }|.
            DATA(t99) = strlen( t94 ).
            t93 = |{ t94 }{ |: | }|.
            DATA(t101) = strlen( t93 ).
            t71 = |{ t93 }{ t69 }|.
          ENDIF.
          t65 = t71.
          DATA t103 TYPE REF TO zcl_lnt_issue.
          CLEAR t103.
          DATA(t107) = VALUE string( ).
          DATA t108 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t108.
          DATA t113 TYPE string.
          DATA(t114) = |\nAllows you to enforce a pattern, such as a prefix, for loca|.
          t114 = t114 && |l variables, constants and field symbols.\nRegexes are case-i|.
          t114 = t114 && |nsensitive.|.
          t113 = t114.
          DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t115.
          DATA t119 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t119.
          t119->load( ).
          APPEND |Naming| TO t119->items.
          t119->save( ).
          t119->load( ).
          APPEND |SingleFile| TO t119->items.
          t119->save( ).
          t115 = t119.
          DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t127.
          DATA(t131) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t131->has = abap_true.
          t131->value = |FORM bar.\n  DATA foo.\nENDFORM.|.
          t127 = t131.
          DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t133.
          DATA(t137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t137->has = abap_true.
          t137->value = |FORM bar.\n  DATA lv_foo.\nENDFORM.|.
          t133 = t137.
          DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t139.
          DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t141.
          DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t143.
          t108 = NEW zcl_lnt_irule_metadata( i_key = |local_variable_names| i_title = |Local variable naming conventions| i_short_description = t113 i_bad_example = t127 i_good_example = t133 i_extended_information = t139 i_tags = t115 i_pragma = t141 i_pseudo_comment = t143 ).
          CREATE OBJECT t108->zlnt_view_ownkeys_b0e8086400eb.
          t108->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t145 ).
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t146.
          IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t146 ).
          ENDIF.
          DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t147.
          IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t147 ).
          ENDIF.
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t148.
          IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t148 ).
          ENDIF.
          DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t149.
          IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t149 ).
          ENDIF.
          DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t150.
          IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t150 ).
          ENDIF.
          CREATE OBJECT t108->zlnt_json_ownkeys_70e5fd461788.
          t108->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t152.
          t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t152 ).
          DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t154.
          IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t154 ).
          ENDIF.
          DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t156.
          IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t156 ).
          ENDIF.
          DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t158.
          IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t158 ).
          ENDIF.
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t160.
          IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t160 ).
          ENDIF.
          DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t162.
          IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t162 ).
          ENDIF.
          t107 = t108->key.
          DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t163 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t165 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t165.
          t103 = zcl_lnt_issue=>at_token( i_file = t2 i_token = t37 i_message_26cb = t65 i_key = t107 i_severity = t163 i_fix = t165 ).
          t45->load( ).
          APPEND t103 TO t45->items.
          t45->save( ).
        ENDIF.
        t3 = t3->concat( p0 = t45 ).
      ENDIF.
    ENDDO.
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t171) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
    t169 = t1->find_all_expressions( i_type_9913 = t171 ).
    DATA t172 TYPE REF TO zcl_lnt_expression_node.
    DATA t173 TYPE REF TO object.
    DATA(t174) = VALUE i( ).
    DO.
      t169->load( ).
      IF t174 >= lines( t169->items ).
        EXIT.
      ENDIF.
      CLEAR t173.
      READ TABLE t169->items INDEX t174 + 1 INTO t173.
      t174 = t174 + 1.
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t175.
      CLEAR t172.
      IF t173 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t175 ?= t173.
        DATA t176 TYPE REF TO object.
        t176 = t175->as_ref( ).
        t172 ?= t176.
      ELSE.
        t172 ?= t173.
      ENDIF.
      DATA t177 TYPE REF TO zcl_lnt_expression_node.
      DATA(t180) = zlnt_runtime_desc_78196487750d=>zlnt_member_d180_085bc4e4d844.
      t177 = t172->find_first_expression( i_type_9913 = t180 ).
      IF xsdbool( t177 IS BOUND ) = abap_true.
        DATA t190 TYPE REF TO zcl_lnt_abstract_token.
        t190 = t177->get_first_token( ).
        DATA t194 TYPE string.
        t194 = me->conf->zlnt_view_read_sr_2cb5fe9e0aa7( ).
        DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t198.
        DATA t201 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t201.
        CREATE OBJECT t201 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t194 flags = |i|.
        DATA t204 TYPE string.
        t204 = t190->str.
        DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t211.
        DATA(t214) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t214->has = abap_true.
        t214->value = t204.
        t211 = t214.
        DATA(t217) = me->conf.
        IF zcl_lnt_name_validator=>violates_rule( i_name = t211 i_pattern = t201 i_params_4c59 = t217 ) = abap_true.
          DATA(t218) = VALUE string( ).
          DATA t220 TYPE string.
          t220 = t194.
          DATA t222 TYPE string.
          t222 = t204.
          DATA(t224) = VALUE string( ).
          DATA(t225) = VALUE abap_bool( ).
          DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t226 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
          DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t228.
          DATA(t231) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t231->has = abap_true.
          t231->value = |required|.
          t228 = t231.
          DATA(t233) = VALUE abap_bool( ).
          DATA(t234) = VALUE abap_bool( ).
          IF t226 IS BOUND.
            t233 = t226->has.
          ENDIF.
          IF t228 IS BOUND.
            t234 = t228->has.
          ENDIF.
          IF t233 = t234.
            IF t233 = abap_false.
              t225 = abap_true.
            ELSEIF t226->value = t228->value.
              t225 = abap_true.
            ENDIF.
          ENDIF.
          IF t225 = abap_true.
            DATA t236 TYPE string.
            DATA t237 TYPE string.
            DATA(t238) = |Local variable name does not match pattern |.
            DATA(t240) = strlen( t238 ).
            t237 = |{ t238 }{ t220 }|.
            DATA(t242) = strlen( t237 ).
            t236 = |{ t237 }{ |: | }|.
            DATA(t244) = strlen( t236 ).
            t224 = |{ t236 }{ t222 }|.
          ELSE.
            DATA t246 TYPE string.
            DATA t247 TYPE string.
            DATA(t248) = |Local variable name must not match pattern |.
            DATA(t250) = strlen( t248 ).
            t247 = |{ t248 }{ t220 }|.
            DATA(t252) = strlen( t247 ).
            t246 = |{ t247 }{ |: | }|.
            DATA(t254) = strlen( t246 ).
            t224 = |{ t246 }{ t222 }|.
          ENDIF.
          t218 = t224.
          DATA t256 TYPE REF TO zcl_lnt_issue.
          CLEAR t256.
          DATA(t260) = VALUE string( ).
          DATA t261 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t261.
          DATA t266 TYPE string.
          DATA(t267) = |\nAllows you to enforce a pattern, such as a prefix, for loca|.
          t267 = t267 && |l variables, constants and field symbols.\nRegexes are case-i|.
          t267 = t267 && |nsensitive.|.
          t266 = t267.
          DATA t268 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t268.
          DATA t272 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t272.
          t272->load( ).
          APPEND |Naming| TO t272->items.
          t272->save( ).
          t272->load( ).
          APPEND |SingleFile| TO t272->items.
          t272->save( ).
          t268 = t272.
          DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t280.
          DATA(t284) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t284->has = abap_true.
          t284->value = |FORM bar.\n  DATA foo.\nENDFORM.|.
          t280 = t284.
          DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t286.
          DATA(t290) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t290->has = abap_true.
          t290->value = |FORM bar.\n  DATA lv_foo.\nENDFORM.|.
          t286 = t290.
          DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t292.
          DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t294.
          DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t296.
          t261 = NEW zcl_lnt_irule_metadata( i_key = |local_variable_names| i_title = |Local variable naming conventions| i_short_description = t266 i_bad_example = t280 i_good_example = t286 i_extended_information = t292 i_tags = t268 i_pragma = t294 i_pseudo_comment = t296 ).
          CREATE OBJECT t261->zlnt_view_ownkeys_b0e8086400eb.
          t261->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t298.
          t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t298 ).
          DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t299.
          IF t261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t299 ).
          ENDIF.
          DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t300.
          IF t261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t300 ).
          ENDIF.
          DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t301.
          IF t261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t301 ).
          ENDIF.
          DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t302.
          IF t261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t302 ).
          ENDIF.
          DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t303.
          IF t261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t303 ).
          ENDIF.
          CREATE OBJECT t261->zlnt_json_ownkeys_70e5fd461788.
          t261->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t305.
          t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t305 ).
          DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t307.
          IF t261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t307 ).
          ENDIF.
          DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t309.
          IF t261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t309 ).
          ENDIF.
          DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t311.
          IF t261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t311 ).
          ENDIF.
          DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t313.
          IF t261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t313 ).
          ENDIF.
          DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t315.
          IF t261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t315 ).
          ENDIF.
          t260 = t261->key.
          DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t316 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t318 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t318.
          t256 = zcl_lnt_issue=>at_token( i_file = t2 i_token = t190 i_message_26cb = t218 i_key = t260 i_severity = t316 i_fix = t318 ).
          t198->load( ).
          APPEND t256 TO t198->items.
          t198->save( ).
        ENDIF.
        t3 = t3->concat( p0 = t198 ).
      ENDIF.
    ENDDO.
    DATA t322 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t325) = zlnt_runtime_desc_78196487750d=>zlnt_member_d724_5dde4ab12008.
    t322 = t1->find_all_structures( i_type_9913 = t325 ).
    DATA t327 TYPE REF TO zcl_lnt_structure_node.
    DATA t328 TYPE REF TO object.
    DATA(t329) = VALUE i( ).
    DO.
      t322->load( ).
      IF t329 >= lines( t322->items ).
        EXIT.
      ENDIF.
      CLEAR t328.
      READ TABLE t322->items INDEX t329 + 1 INTO t328.
      t329 = t329 + 1.
      DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t330.
      CLEAR t327.
      IF t328 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t330 ?= t328.
        DATA t331 TYPE REF TO object.
        t331 = t330->as_ref( ).
        t327 ?= t331.
      ELSE.
        t327 ?= t328.
      ENDIF.
      DATA t333 TYPE REF TO zcl_lnt_statement_node.
      DATA(t335) = zlnt_runtime_desc_78196487750d=>zlnt_member_d438_3024048eff4c.
      t333 = t327->find_first_statement( i_type_9913 = t335 ).
      DATA t336 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t336.
      DATA t338 TYPE REF TO zcl_lnt_statement_node.
      t338 = t333.
      DATA t340 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t340.
      IF xsdbool( t338 IS INITIAL ) = abap_true.
        CLEAR t340.
      ELSE.
        DATA t345 TYPE REF TO zcl_lnt_statement_node.
        t345 = t338.
        DATA(t347) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
        t340 = t345->find_first_expression( i_type_9913 = t347 ).
      ENDIF.
      t336 = t340.
      IF xsdbool( t336 IS BOUND ) = abap_true.
        DATA t357 TYPE REF TO zcl_lnt_abstract_token.
        t357 = t336->get_first_token( ).
        DATA t361 TYPE string.
        t361 = me->conf->zlnt_view_read_sr_2cb5fe9e0aa7( ).
        DATA t365 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t365.
        DATA t368 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t368.
        CREATE OBJECT t368 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t361 flags = |i|.
        DATA t371 TYPE string.
        t371 = t357->str.
        DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t378.
        DATA(t381) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t381->has = abap_true.
        t381->value = t371.
        t378 = t381.
        DATA(t384) = me->conf.
        IF zcl_lnt_name_validator=>violates_rule( i_name = t378 i_pattern = t368 i_params_4c59 = t384 ) = abap_true.
          DATA(t385) = VALUE string( ).
          DATA t387 TYPE string.
          t387 = t361.
          DATA t389 TYPE string.
          t389 = t371.
          DATA(t391) = VALUE string( ).
          DATA(t392) = VALUE abap_bool( ).
          DATA t393 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t393 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
          DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t395.
          DATA(t398) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t398->has = abap_true.
          t398->value = |required|.
          t395 = t398.
          DATA(t400) = VALUE abap_bool( ).
          DATA(t401) = VALUE abap_bool( ).
          IF t393 IS BOUND.
            t400 = t393->has.
          ENDIF.
          IF t395 IS BOUND.
            t401 = t395->has.
          ENDIF.
          IF t400 = t401.
            IF t400 = abap_false.
              t392 = abap_true.
            ELSEIF t393->value = t395->value.
              t392 = abap_true.
            ENDIF.
          ENDIF.
          IF t392 = abap_true.
            DATA t403 TYPE string.
            DATA t404 TYPE string.
            DATA(t405) = |Local variable name does not match pattern |.
            DATA(t407) = strlen( t405 ).
            t404 = |{ t405 }{ t387 }|.
            DATA(t409) = strlen( t404 ).
            t403 = |{ t404 }{ |: | }|.
            DATA(t411) = strlen( t403 ).
            t391 = |{ t403 }{ t389 }|.
          ELSE.
            DATA t413 TYPE string.
            DATA t414 TYPE string.
            DATA(t415) = |Local variable name must not match pattern |.
            DATA(t417) = strlen( t415 ).
            t414 = |{ t415 }{ t387 }|.
            DATA(t419) = strlen( t414 ).
            t413 = |{ t414 }{ |: | }|.
            DATA(t421) = strlen( t413 ).
            t391 = |{ t413 }{ t389 }|.
          ENDIF.
          t385 = t391.
          DATA t423 TYPE REF TO zcl_lnt_issue.
          CLEAR t423.
          DATA(t427) = VALUE string( ).
          DATA t428 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t428.
          DATA t433 TYPE string.
          DATA(t434) = |\nAllows you to enforce a pattern, such as a prefix, for loca|.
          t434 = t434 && |l variables, constants and field symbols.\nRegexes are case-i|.
          t434 = t434 && |nsensitive.|.
          t433 = t434.
          DATA t435 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t435.
          DATA t439 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t439.
          t439->load( ).
          APPEND |Naming| TO t439->items.
          t439->save( ).
          t439->load( ).
          APPEND |SingleFile| TO t439->items.
          t439->save( ).
          t435 = t439.
          DATA t447 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t447.
          DATA(t451) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t451->has = abap_true.
          t451->value = |FORM bar.\n  DATA foo.\nENDFORM.|.
          t447 = t451.
          DATA t453 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t453.
          DATA(t457) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t457->has = abap_true.
          t457->value = |FORM bar.\n  DATA lv_foo.\nENDFORM.|.
          t453 = t457.
          DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t459.
          DATA t461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t461.
          DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t463.
          t428 = NEW zcl_lnt_irule_metadata( i_key = |local_variable_names| i_title = |Local variable naming conventions| i_short_description = t433 i_bad_example = t447 i_good_example = t453 i_extended_information = t459 i_tags = t435 i_pragma = t461 i_pseudo_comment = t463 ).
          CREATE OBJECT t428->zlnt_view_ownkeys_b0e8086400eb.
          t428->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t465.
          t428->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t465 ).
          DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t466.
          IF t428->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t428->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t466 ).
          ENDIF.
          DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t467.
          IF t428->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t428->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t467 ).
          ENDIF.
          DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t468.
          IF t428->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t428->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t468 ).
          ENDIF.
          DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t469.
          IF t428->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t428->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t469 ).
          ENDIF.
          DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t470.
          IF t428->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t428->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t470 ).
          ENDIF.
          CREATE OBJECT t428->zlnt_json_ownkeys_70e5fd461788.
          t428->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t472.
          t428->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t472 ).
          DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t474.
          IF t428->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t428->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t474 ).
          ENDIF.
          DATA t476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t476.
          IF t428->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t428->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t476 ).
          ENDIF.
          DATA t478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t478.
          IF t428->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t428->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t478 ).
          ENDIF.
          DATA t480 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t480.
          IF t428->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t428->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t480 ).
          ENDIF.
          DATA t482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t482.
          IF t428->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t428->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t482 ).
          ENDIF.
          t427 = t428->key.
          DATA t483 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t483 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t485 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t485.
          t423 = zcl_lnt_issue=>at_token( i_file = t2 i_token = t357 i_message_26cb = t385 i_key = t427 i_severity = t483 i_fix = t485 ).
          t365->load( ).
          APPEND t423 TO t365->items.
          t365->save( ).
        ENDIF.
        t3 = t3->concat( p0 = t365 ).
      ENDIF.
    ENDDO.
    DATA t489 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t491) = zlnt_runtime_desc_78196487750d=>zlnt_member_d498_bacf37b32951.
    t489 = t1->find_all_statements( i_type_9913 = t491 ).
    DATA t492 TYPE REF TO zcl_lnt_statement_node.
    DATA t493 TYPE REF TO object.
    DATA(t494) = VALUE i( ).
    DO.
      t489->load( ).
      IF t494 >= lines( t489->items ).
        EXIT.
      ENDIF.
      CLEAR t493.
      READ TABLE t489->items INDEX t494 + 1 INTO t493.
      t494 = t494 + 1.
      DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t495.
      CLEAR t492.
      IF t493 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t495 ?= t493.
        DATA t496 TYPE REF TO object.
        t496 = t495->as_ref( ).
        t492 ?= t496.
      ELSE.
        t492 ?= t493.
      ENDIF.
      DATA t497 TYPE REF TO zcl_lnt_expression_node.
      DATA(t500) = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
      t497 = t492->find_first_expression( i_type_9913 = t500 ).
      IF xsdbool( t497 IS BOUND ) = abap_true.
        DATA t510 TYPE REF TO zcl_lnt_abstract_token.
        t510 = t497->get_first_token( ).
        DATA t514 TYPE string.
        t514 = me->conf->zlnt_view_read_sr_6ea768f84b35( ).
        DATA t518 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t518.
        DATA t521 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t521.
        CREATE OBJECT t521 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t514 flags = |i|.
        DATA t524 TYPE string.
        t524 = t510->str.
        DATA t531 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t531.
        DATA(t534) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t534->has = abap_true.
        t534->value = t524.
        t531 = t534.
        DATA(t537) = me->conf.
        IF zcl_lnt_name_validator=>violates_rule( i_name = t531 i_pattern = t521 i_params_4c59 = t537 ) = abap_true.
          DATA(t538) = VALUE string( ).
          DATA t540 TYPE string.
          t540 = t514.
          DATA t542 TYPE string.
          t542 = t524.
          DATA(t544) = VALUE string( ).
          DATA(t545) = VALUE abap_bool( ).
          DATA t546 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t546 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
          DATA t548 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t548.
          DATA(t551) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t551->has = abap_true.
          t551->value = |required|.
          t548 = t551.
          DATA(t553) = VALUE abap_bool( ).
          DATA(t554) = VALUE abap_bool( ).
          IF t546 IS BOUND.
            t553 = t546->has.
          ENDIF.
          IF t548 IS BOUND.
            t554 = t548->has.
          ENDIF.
          IF t553 = t554.
            IF t553 = abap_false.
              t545 = abap_true.
            ELSEIF t546->value = t548->value.
              t545 = abap_true.
            ENDIF.
          ENDIF.
          IF t545 = abap_true.
            DATA t556 TYPE string.
            DATA t557 TYPE string.
            DATA(t558) = |Local variable name does not match pattern |.
            DATA(t560) = strlen( t558 ).
            t557 = |{ t558 }{ t540 }|.
            DATA(t562) = strlen( t557 ).
            t556 = |{ t557 }{ |: | }|.
            DATA(t564) = strlen( t556 ).
            t544 = |{ t556 }{ t542 }|.
          ELSE.
            DATA t566 TYPE string.
            DATA t567 TYPE string.
            DATA(t568) = |Local variable name must not match pattern |.
            DATA(t570) = strlen( t568 ).
            t567 = |{ t568 }{ t540 }|.
            DATA(t572) = strlen( t567 ).
            t566 = |{ t567 }{ |: | }|.
            DATA(t574) = strlen( t566 ).
            t544 = |{ t566 }{ t542 }|.
          ENDIF.
          t538 = t544.
          DATA t576 TYPE REF TO zcl_lnt_issue.
          CLEAR t576.
          DATA(t580) = VALUE string( ).
          DATA t581 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t581.
          DATA t586 TYPE string.
          DATA(t587) = |\nAllows you to enforce a pattern, such as a prefix, for loca|.
          t587 = t587 && |l variables, constants and field symbols.\nRegexes are case-i|.
          t587 = t587 && |nsensitive.|.
          t586 = t587.
          DATA t588 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t588.
          DATA t592 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t592.
          t592->load( ).
          APPEND |Naming| TO t592->items.
          t592->save( ).
          t592->load( ).
          APPEND |SingleFile| TO t592->items.
          t592->save( ).
          t588 = t592.
          DATA t600 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t600.
          DATA(t604) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t604->has = abap_true.
          t604->value = |FORM bar.\n  DATA foo.\nENDFORM.|.
          t600 = t604.
          DATA t606 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t606.
          DATA(t610) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t610->has = abap_true.
          t610->value = |FORM bar.\n  DATA lv_foo.\nENDFORM.|.
          t606 = t610.
          DATA t612 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t612.
          DATA t614 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t614.
          DATA t616 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t616.
          t581 = NEW zcl_lnt_irule_metadata( i_key = |local_variable_names| i_title = |Local variable naming conventions| i_short_description = t586 i_bad_example = t600 i_good_example = t606 i_extended_information = t612 i_tags = t588 i_pragma = t614 i_pseudo_comment = t616 ).
          CREATE OBJECT t581->zlnt_view_ownkeys_b0e8086400eb.
          t581->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t618.
          t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t618 ).
          DATA t619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t619.
          IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t619 ).
          ENDIF.
          DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t620.
          IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t620 ).
          ENDIF.
          DATA t621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t621.
          IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t621 ).
          ENDIF.
          DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t622.
          IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t622 ).
          ENDIF.
          DATA t623 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t623.
          IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t623 ).
          ENDIF.
          CREATE OBJECT t581->zlnt_json_ownkeys_70e5fd461788.
          t581->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t625.
          t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t625 ).
          DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t627.
          IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t627 ).
          ENDIF.
          DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t629.
          IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t629 ).
          ENDIF.
          DATA t631 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t631.
          IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t631 ).
          ENDIF.
          DATA t633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t633.
          IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t633 ).
          ENDIF.
          DATA t635 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t635.
          IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t635 ).
          ENDIF.
          t580 = t581->key.
          DATA t636 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t636 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t638 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t638.
          t576 = zcl_lnt_issue=>at_token( i_file = t2 i_token = t510 i_message_26cb = t538 i_key = t580 i_severity = t636 i_fix = t638 ).
          t518->load( ).
          APPEND t576 TO t518->items.
          t518->save( ).
        ENDIF.
        t3 = t3->concat( p0 = t518 ).
      ENDIF.
    ENDDO.
    DATA t642 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t644) = zlnt_runtime_desc_78196487750d=>zlnt_member_d193_7f7e5054ef0a.
    t642 = t1->find_all_expressions( i_type_9913 = t644 ).
    DATA t645 TYPE REF TO zcl_lnt_expression_node.
    DATA t646 TYPE REF TO object.
    DATA(t647) = VALUE i( ).
    DO.
      t642->load( ).
      IF t647 >= lines( t642->items ).
        EXIT.
      ENDIF.
      CLEAR t646.
      READ TABLE t642->items INDEX t647 + 1 INTO t646.
      t647 = t647 + 1.
      DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t648.
      CLEAR t645.
      IF t646 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t648 ?= t646.
        DATA t649 TYPE REF TO object.
        t649 = t648->as_ref( ).
        t645 ?= t649.
      ELSE.
        t645 ?= t646.
      ENDIF.
      DATA t650 TYPE REF TO zcl_lnt_expression_node.
      DATA(t653) = zlnt_runtime_desc_78196487750d=>zlnt_member_d181_df35d03977d7.
      t650 = t645->find_first_expression( i_type_9913 = t653 ).
      IF xsdbool( t650 IS BOUND ) = abap_true.
        DATA t663 TYPE REF TO zcl_lnt_abstract_token.
        t663 = t650->get_first_token( ).
        DATA t667 TYPE string.
        t667 = me->conf->zlnt_view_read_sr_6ea768f84b35( ).
        DATA t671 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t671.
        DATA t674 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t674.
        CREATE OBJECT t674 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t667 flags = |i|.
        DATA t677 TYPE string.
        t677 = t663->str.
        DATA t684 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t684.
        DATA(t687) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t687->has = abap_true.
        t687->value = t677.
        t684 = t687.
        DATA(t690) = me->conf.
        IF zcl_lnt_name_validator=>violates_rule( i_name = t684 i_pattern = t674 i_params_4c59 = t690 ) = abap_true.
          DATA(t691) = VALUE string( ).
          DATA t693 TYPE string.
          t693 = t667.
          DATA t695 TYPE string.
          t695 = t677.
          DATA(t697) = VALUE string( ).
          DATA(t698) = VALUE abap_bool( ).
          DATA t699 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t699 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
          DATA t701 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t701.
          DATA(t704) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t704->has = abap_true.
          t704->value = |required|.
          t701 = t704.
          DATA(t706) = VALUE abap_bool( ).
          DATA(t707) = VALUE abap_bool( ).
          IF t699 IS BOUND.
            t706 = t699->has.
          ENDIF.
          IF t701 IS BOUND.
            t707 = t701->has.
          ENDIF.
          IF t706 = t707.
            IF t706 = abap_false.
              t698 = abap_true.
            ELSEIF t699->value = t701->value.
              t698 = abap_true.
            ENDIF.
          ENDIF.
          IF t698 = abap_true.
            DATA t709 TYPE string.
            DATA t710 TYPE string.
            DATA(t711) = |Local variable name does not match pattern |.
            DATA(t713) = strlen( t711 ).
            t710 = |{ t711 }{ t693 }|.
            DATA(t715) = strlen( t710 ).
            t709 = |{ t710 }{ |: | }|.
            DATA(t717) = strlen( t709 ).
            t697 = |{ t709 }{ t695 }|.
          ELSE.
            DATA t719 TYPE string.
            DATA t720 TYPE string.
            DATA(t721) = |Local variable name must not match pattern |.
            DATA(t723) = strlen( t721 ).
            t720 = |{ t721 }{ t693 }|.
            DATA(t725) = strlen( t720 ).
            t719 = |{ t720 }{ |: | }|.
            DATA(t727) = strlen( t719 ).
            t697 = |{ t719 }{ t695 }|.
          ENDIF.
          t691 = t697.
          DATA t729 TYPE REF TO zcl_lnt_issue.
          CLEAR t729.
          DATA(t733) = VALUE string( ).
          DATA t734 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t734.
          DATA t739 TYPE string.
          DATA(t740) = |\nAllows you to enforce a pattern, such as a prefix, for loca|.
          t740 = t740 && |l variables, constants and field symbols.\nRegexes are case-i|.
          t740 = t740 && |nsensitive.|.
          t739 = t740.
          DATA t741 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t741.
          DATA t745 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t745.
          t745->load( ).
          APPEND |Naming| TO t745->items.
          t745->save( ).
          t745->load( ).
          APPEND |SingleFile| TO t745->items.
          t745->save( ).
          t741 = t745.
          DATA t753 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t753.
          DATA(t757) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t757->has = abap_true.
          t757->value = |FORM bar.\n  DATA foo.\nENDFORM.|.
          t753 = t757.
          DATA t759 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t759.
          DATA(t763) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t763->has = abap_true.
          t763->value = |FORM bar.\n  DATA lv_foo.\nENDFORM.|.
          t759 = t763.
          DATA t765 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t765.
          DATA t767 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t767.
          DATA t769 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t769.
          t734 = NEW zcl_lnt_irule_metadata( i_key = |local_variable_names| i_title = |Local variable naming conventions| i_short_description = t739 i_bad_example = t753 i_good_example = t759 i_extended_information = t765 i_tags = t741 i_pragma = t767 i_pseudo_comment = t769 ).
          CREATE OBJECT t734->zlnt_view_ownkeys_b0e8086400eb.
          t734->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t771 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t771.
          t734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t771 ).
          DATA t772 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t772.
          IF t734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t772 ).
          ENDIF.
          DATA t773 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t773.
          IF t734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t773 ).
          ENDIF.
          DATA t774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t774.
          IF t734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t774 ).
          ENDIF.
          DATA t775 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t775.
          IF t734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t775 ).
          ENDIF.
          DATA t776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t776.
          IF t734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t776 ).
          ENDIF.
          CREATE OBJECT t734->zlnt_json_ownkeys_70e5fd461788.
          t734->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t778 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t778.
          t734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t778 ).
          DATA t780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t780.
          IF t734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t780 ).
          ENDIF.
          DATA t782 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t782.
          IF t734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t782 ).
          ENDIF.
          DATA t784 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t784.
          IF t734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t784 ).
          ENDIF.
          DATA t786 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t786.
          IF t734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t786 ).
          ENDIF.
          DATA t788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t788.
          IF t734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t788 ).
          ENDIF.
          t733 = t734->key.
          DATA t789 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t789 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t791 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t791.
          t729 = zcl_lnt_issue=>at_token( i_file = t2 i_token = t663 i_message_26cb = t691 i_key = t733 i_severity = t789 i_fix = t791 ).
          t671->load( ).
          APPEND t729 TO t671->items.
          t671->save( ).
        ENDIF.
        t3 = t3->concat( p0 = t671 ).
      ENDIF.
    ENDDO.
    DATA t795 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t798) = zlnt_runtime_desc_78196487750d=>zlnt_member_d426_fb8ad08dadf9.
    t795 = t1->find_all_statements( i_type_9913 = t798 ).
    DATA t800 TYPE REF TO zcl_lnt_statement_node.
    DATA t801 TYPE REF TO object.
    DATA(t802) = VALUE i( ).
    DO.
      t795->load( ).
      IF t802 >= lines( t795->items ).
        EXIT.
      ENDIF.
      CLEAR t801.
      READ TABLE t795->items INDEX t802 + 1 INTO t801.
      t802 = t802 + 1.
      DATA t803 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t803.
      CLEAR t800.
      IF t801 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t803 ?= t801.
        DATA t804 TYPE REF TO object.
        t804 = t803->as_ref( ).
        t800 ?= t804.
      ELSE.
        t800 ?= t801.
      ENDIF.
      DATA t805 TYPE REF TO zcl_lnt_structure_node.
      t805 = t1->find_parent( i_node = t800 ).
      DATA t809 TYPE abap_bool.
      DATA t810 TYPE abap_bool.
      t810 = xsdbool( t805 IS BOUND ).
      t809 = t810.
      IF t810 = abap_true.
        DATA t813 TYPE REF TO zif_lnt_structure.
        t813 = t805->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
        t809 = xsdbool( t813 IS BOUND AND t813 IS INSTANCE OF zcl_lnt_sr_constants ).
      ENDIF.
      IF t809 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t816 TYPE REF TO zcl_lnt_expression_node.
      DATA(t819) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
      t816 = t800->find_first_expression( i_type_9913 = t819 ).
      IF xsdbool( t816 IS BOUND ) = abap_true.
        DATA t829 TYPE REF TO zcl_lnt_abstract_token.
        t829 = t816->get_first_token( ).
        DATA t833 TYPE string.
        t833 = me->conf->zlnt_view_read_sr_b54b84b45d72( ).
        DATA t837 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t837.
        DATA t840 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t840.
        CREATE OBJECT t840 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t833 flags = |i|.
        DATA t843 TYPE string.
        t843 = t829->str.
        DATA t850 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t850.
        DATA(t853) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t853->has = abap_true.
        t853->value = t843.
        t850 = t853.
        DATA(t856) = me->conf.
        IF zcl_lnt_name_validator=>violates_rule( i_name = t850 i_pattern = t840 i_params_4c59 = t856 ) = abap_true.
          DATA(t857) = VALUE string( ).
          DATA t859 TYPE string.
          t859 = t833.
          DATA t861 TYPE string.
          t861 = t843.
          DATA(t863) = VALUE string( ).
          DATA(t864) = VALUE abap_bool( ).
          DATA t865 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t865 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
          DATA t867 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t867.
          DATA(t870) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t870->has = abap_true.
          t870->value = |required|.
          t867 = t870.
          DATA(t872) = VALUE abap_bool( ).
          DATA(t873) = VALUE abap_bool( ).
          IF t865 IS BOUND.
            t872 = t865->has.
          ENDIF.
          IF t867 IS BOUND.
            t873 = t867->has.
          ENDIF.
          IF t872 = t873.
            IF t872 = abap_false.
              t864 = abap_true.
            ELSEIF t865->value = t867->value.
              t864 = abap_true.
            ENDIF.
          ENDIF.
          IF t864 = abap_true.
            DATA t875 TYPE string.
            DATA t876 TYPE string.
            DATA(t877) = |Local variable name does not match pattern |.
            DATA(t879) = strlen( t877 ).
            t876 = |{ t877 }{ t859 }|.
            DATA(t881) = strlen( t876 ).
            t875 = |{ t876 }{ |: | }|.
            DATA(t883) = strlen( t875 ).
            t863 = |{ t875 }{ t861 }|.
          ELSE.
            DATA t885 TYPE string.
            DATA t886 TYPE string.
            DATA(t887) = |Local variable name must not match pattern |.
            DATA(t889) = strlen( t887 ).
            t886 = |{ t887 }{ t859 }|.
            DATA(t891) = strlen( t886 ).
            t885 = |{ t886 }{ |: | }|.
            DATA(t893) = strlen( t885 ).
            t863 = |{ t885 }{ t861 }|.
          ENDIF.
          t857 = t863.
          DATA t895 TYPE REF TO zcl_lnt_issue.
          CLEAR t895.
          DATA(t899) = VALUE string( ).
          DATA t900 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t900.
          DATA t905 TYPE string.
          DATA(t906) = |\nAllows you to enforce a pattern, such as a prefix, for loca|.
          t906 = t906 && |l variables, constants and field symbols.\nRegexes are case-i|.
          t906 = t906 && |nsensitive.|.
          t905 = t906.
          DATA t907 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t907.
          DATA t911 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t911.
          t911->load( ).
          APPEND |Naming| TO t911->items.
          t911->save( ).
          t911->load( ).
          APPEND |SingleFile| TO t911->items.
          t911->save( ).
          t907 = t911.
          DATA t919 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t919.
          DATA(t923) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t923->has = abap_true.
          t923->value = |FORM bar.\n  DATA foo.\nENDFORM.|.
          t919 = t923.
          DATA t925 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t925.
          DATA(t929) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t929->has = abap_true.
          t929->value = |FORM bar.\n  DATA lv_foo.\nENDFORM.|.
          t925 = t929.
          DATA t931 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t931.
          DATA t933 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t933.
          DATA t935 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t935.
          t900 = NEW zcl_lnt_irule_metadata( i_key = |local_variable_names| i_title = |Local variable naming conventions| i_short_description = t905 i_bad_example = t919 i_good_example = t925 i_extended_information = t931 i_tags = t907 i_pragma = t933 i_pseudo_comment = t935 ).
          CREATE OBJECT t900->zlnt_view_ownkeys_b0e8086400eb.
          t900->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t937 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t937.
          t900->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t937 ).
          DATA t938 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t938.
          IF t900->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t900->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t938 ).
          ENDIF.
          DATA t939 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t939.
          IF t900->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t900->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t939 ).
          ENDIF.
          DATA t940 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t940.
          IF t900->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t900->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t940 ).
          ENDIF.
          DATA t941 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t941.
          IF t900->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t900->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t941 ).
          ENDIF.
          DATA t942 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t942.
          IF t900->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t900->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t942 ).
          ENDIF.
          CREATE OBJECT t900->zlnt_json_ownkeys_70e5fd461788.
          t900->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t944 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t944.
          t900->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t944 ).
          DATA t946 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t946.
          IF t900->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t900->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t946 ).
          ENDIF.
          DATA t948 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t948.
          IF t900->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t900->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t948 ).
          ENDIF.
          DATA t950 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t950.
          IF t900->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t900->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t950 ).
          ENDIF.
          DATA t952 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t952.
          IF t900->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t900->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t952 ).
          ENDIF.
          DATA t954 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t954.
          IF t900->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t900->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t954 ).
          ENDIF.
          t899 = t900->key.
          DATA t955 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t955 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t957 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t957.
          t895 = zcl_lnt_issue=>at_token( i_file = t2 i_token = t829 i_message_26cb = t857 i_key = t899 i_severity = t955 i_fix = t957 ).
          t837->load( ).
          APPEND t895 TO t837->items.
          t837->save( ).
        ENDIF.
        t3 = t3->concat( p0 = t837 ).
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD check_name.
    DATA(t1) = i_token.
    DATA(t2) = i_file.
    DATA(t3) = i_expected.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t7 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t7 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t3 flags = |i|.
    DATA t10 TYPE string.
    t10 = t1->str.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t20->has = abap_true.
    t20->value = t10.
    t17 = t20.
    DATA(t23) = me->conf.
    IF zcl_lnt_name_validator=>violates_rule( i_name = t17 i_pattern = t7 i_params_4c59 = t23 ) = abap_true.
      DATA(t24) = VALUE string( ).
      DATA t26 TYPE string.
      t26 = t3.
      DATA t28 TYPE string.
      t28 = t10.
      DATA(t30) = VALUE string( ).
      DATA(t31) = VALUE abap_bool( ).
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t32 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t37->has = abap_true.
      t37->value = |required|.
      t34 = t37.
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = VALUE abap_bool( ).
      IF t32 IS BOUND.
        t39 = t32->has.
      ENDIF.
      IF t34 IS BOUND.
        t40 = t34->has.
      ENDIF.
      IF t39 = t40.
        IF t39 = abap_false.
          t31 = abap_true.
        ELSEIF t32->value = t34->value.
          t31 = abap_true.
        ENDIF.
      ENDIF.
      IF t31 = abap_true.
        DATA t42 TYPE string.
        DATA t43 TYPE string.
        DATA(t44) = |Local variable name does not match pattern |.
        DATA(t46) = strlen( t44 ).
        t43 = |{ t44 }{ t26 }|.
        DATA(t48) = strlen( t43 ).
        t42 = |{ t43 }{ |: | }|.
        DATA(t50) = strlen( t42 ).
        t30 = |{ t42 }{ t28 }|.
      ELSE.
        DATA t52 TYPE string.
        DATA t53 TYPE string.
        DATA(t54) = |Local variable name must not match pattern |.
        DATA(t56) = strlen( t54 ).
        t53 = |{ t54 }{ t26 }|.
        DATA(t58) = strlen( t53 ).
        t52 = |{ t53 }{ |: | }|.
        DATA(t60) = strlen( t52 ).
        t30 = |{ t52 }{ t28 }|.
      ENDIF.
      t24 = t30.
      DATA t62 TYPE REF TO zcl_lnt_issue.
      DATA(t66) = VALUE string( ).
      DATA t67 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t72 TYPE string.
      DATA(t73) = |\nAllows you to enforce a pattern, such as a prefix, for loca|.
      t73 = t73 && |l variables, constants and field symbols.\nRegexes are case-i|.
      t73 = t73 && |nsensitive.|.
      t72 = t73.
      DATA t74 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t78.
      t78->load( ).
      APPEND |Naming| TO t78->items.
      t78->save( ).
      t78->load( ).
      APPEND |SingleFile| TO t78->items.
      t78->save( ).
      t74 = t78.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t90) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t90->has = abap_true.
      t90->value = |FORM bar.\n  DATA foo.\nENDFORM.|.
      t86 = t90.
      DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t96->has = abap_true.
      t96->value = |FORM bar.\n  DATA lv_foo.\nENDFORM.|.
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t67 = NEW zcl_lnt_irule_metadata( i_key = |local_variable_names| i_title = |Local variable naming conventions| i_short_description = t72 i_bad_example = t86 i_good_example = t96 i_extended_information = t98 i_tags = t74 i_pragma = t100 i_pseudo_comment = t102 ).
      CREATE OBJECT t67->zlnt_view_ownkeys_b0e8086400eb.
      t67->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t104 ).
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t105 ).
      ENDIF.
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t106 ).
      ENDIF.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t107 ).
      ENDIF.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t108 ).
      ENDIF.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t109 ).
      ENDIF.
      CREATE OBJECT t67->zlnt_json_ownkeys_70e5fd461788.
      t67->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t111 ).
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t113 ).
      ENDIF.
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t115 ).
      ENDIF.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t117 ).
      ENDIF.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t119 ).
      ENDIF.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t121 ).
      ENDIF.
      t66 = t67->key.
      DATA t124 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t62 = zcl_lnt_issue=>at_token( i_file = t2 i_token = t1 i_message_26cb = t24 i_key = t66 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t124 ).
      t4->load( ).
      APPEND t62 TO t4->items.
      t4->save( ).
    ENDIF.
    result = t4.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_lcl_vrbl_nms_cnf( me->g_c_i_s_r_lc_vr_nm_ts_lc_vr_nm( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_lcl_vrbl_nms_cnf( me->g_c_i_s_r_lc_vr_nm_ts_lc_vr_nm( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_lcl_vrbl_nms_cnf.
    IF i_conf IS BOUND.
      IF i_conf->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t1 ?= i_conf->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t1 IS NOT BOUND.
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t2 ?= i_conf->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t2->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t1 = NEW zcl_lnt_lcl_vrbl_nms_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_lc_vr_nm_ts_lc_vr_nm( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_lc_vr_nm_ts_lc_vr_nm( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1571_264dd87a7443.
  ENDMETHOD.
ENDCLASS.
