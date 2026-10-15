* TS: src/rules/prefix_is_current_class.ts:21:1 PrefixIsCurrentClass
CLASS zcl_lnt_prfx_is_crrnt_clss DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prfx_is_crrnt_clss_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_p_i_c_c_t_p_is_cr_cl RETURNING VALUE(result) TYPE REF TO zcl_lnt_prfx_is_crrnt_clss_cnf.
    METHODS s_c_i_s_r_p_i_c_c_t_p_is_cr_cl IMPORTING i_conf TYPE REF TO zcl_lnt_prfx_is_crrnt_clss_cnf.
    METHODS r_p_i_s_r_p_i_c_c_t_p_is_cr_cl IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_interfaces IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_classes IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_static_references IMPORTING i_s TYPE REF TO zcl_lnt_statement_node i_class_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build_shadowed_names IMPORTING i_struc TYPE REF TO zcl_lnt_structure_node i_impl TYPE REF TO zcl_lnt_structure_node i_class_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__da87443eb676.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prfx_is_crrnt_clss IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_prfx_is_crrnt_clss_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |prefix_is_current_class|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Prefix is current class|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Reports errors if the current class or interface references |.
    t7 = t7 && |itself with "current_class=>"|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#omit-the-self-reference-me-when-calling-an-instance|.
      t11 = t11 && |-attribute-or-method|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t9 = t13.
    ENDIF.
    t8 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = t18.
      DATA(t21) = |Styleguide|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |Quickfix|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      DATA(t25) = |SingleFile|.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
      DATA(t26) = t18.
      t17 = t26.
      t15 = t17.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t27.
      t15 = t27.
    ENDIF.
    t14 = t15.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = |METHOD run.\n  zcl_current=>helper( ).\n  me->do_work( ).\nENDM|.
      t31 = t31 && |ETHOD.|.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t31.
      t29 = t32.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t29 = t33.
    ENDIF.
    t28 = t29.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    DATA(t36) = abap_true.
    IF t36 = abap_true.
      DATA(t37) = |METHOD run.\n  helper( ).\n  do_work( ).\nENDMETHOD.|.
      DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t38->has = abap_true.
      t38->value = t37.
      t35 = t38.
    ELSE.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t39.
      t35 = t39.
    ENDIF.
    t34 = t35.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t28 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t50 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t51) = |key|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |title|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |shortDescription|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |extendedInformation|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |tags|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |badExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |goodExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_p_i_c_c_t_p_is_cr_cl.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_p_i_c_c_t_p_is_cr_cl.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_p_i_c_c_t_p_is_cr_cl.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    t3 = me->check_classes( i_file = t4 ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t1.
    t5 = me->check_interfaces( i_file = t6 ).
    t2 = t3->concat( p0 = t5 ).
    result = t2.

  ENDMETHOD.

  METHOD check_interfaces.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zcl_lnt_structure_node.
    DATA t3 TYPE REF TO zcl_lnt_structure_node.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_structure_node.
    DATA(t7) = t4.
    t6 = t7->structure.
    t3 = t6.
    t2 = t3.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zcl_lnt_structure_node.
    DATA(t10) = t2.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t9.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t8 = t13.
    IF t8 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      result = t15.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t17.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    DATA(t20) = t2.
    t19 = t20.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d700_0943ee7a14b4.
    t18 = t19->find_direct_structures( i_type_9913 = t21 ).
    DATA t22 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t22.
    DATA t23 TYPE REF TO object.
    CLEAR t23.
    DATA(t24) = VALUE i( ).
    DO.
      t18->load( ).
      IF t24 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t18->items INDEX t24 + 1 INTO t23.
      t24 = t24 + 1.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t22.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t23.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t22 ?= t26.
      ELSE.
        t22 ?= t23.
      ENDIF.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t31.
      DATA t32 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t32.
      DATA t33 TYPE REF TO zcl_lnt_expression_node.
      DATA t34 TYPE REF TO zcl_lnt_expression_node.
      DATA(t35) = t22.
      DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2.
      t34 = t35->find_first_expression( i_type_9913 = t36 ).
      t33 = t34.
      DATA t37 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t37.
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = t33.
      IF t39 IS INITIAL.
        t38 = abap_true.
      ENDIF.
      IF t38 = abap_true.
        DATA t40 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t40.
        t37 = t40.
      ELSE.
        DATA t41 TYPE REF TO zcl_lnt_abstract_token.
        DATA t42 TYPE REF TO zcl_lnt_expression_node.
        DATA(t43) = t33.
        t42 = t43.
        t41 = t42->get_first_token( ).
        t37 = t41.
      ENDIF.
      t32 = t37.
      t31 = t32.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      DATA(t45) = VALUE abap_bool( ).
      DATA(t46) = t31.
      IF t46 IS INITIAL.
        t45 = abap_true.
      ENDIF.
      IF t45 = abap_true.
        DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t47.
        t44 = t47.
      ELSE.
        DATA t48 TYPE string.
        DATA t49 TYPE REF TO zcl_lnt_abstract_token.
        DATA t50 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t51) = t31.
        t50 = t51.
        t49 = t50.
        DATA t52 TYPE string.
        DATA(t53) = t49.
        t52 = t53->str.
        t48 = t52.
        DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t54->has = abap_true.
        t54->value = t48.
        t44 = t54.
      ENDIF.
      t30 = t44.
      t29 = t30.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = t29.
      IF t57 IS INITIAL.
        t56 = abap_true.
      ELSEIF t57->has = abap_false.
        t56 = abap_true.
      ENDIF.
      IF t56 = abap_true.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        t55 = t58.
      ELSE.
        DATA t59 TYPE string.
        DATA t60 TYPE string.
        DATA(t61) = t29.
        t60 = t61->value.
        DATA(t62) = strlen( t60 ).
        t59 = t60.
        IF t59 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t59 TO UPPER CASE.
        ELSE.
          t59 = zlnt_runtime_uppe_91169605024d=>full( t59 ).
        ENDIF.
        DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t63->has = abap_true.
        t63->value = t59.
        t55 = t63.
      ENDIF.
      t28 = t55.
      t27 = t28.
      DATA(t64) = VALUE abap_bool( ).
      DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t66) = t27.
      t65 = t66.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      t67 = t68.
      DATA(t69) = VALUE abap_bool( ).
      DATA(t70) = t65.
      IF t70 IS INITIAL.
        t69 = abap_true.
      ELSEIF t70->has = abap_false.
        t69 = abap_true.
      ENDIF.
      t64 = t69.
      IF t64 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t71 TYPE string.
      DATA t72 TYPE string.
      DATA t73 TYPE string.
      DATA(t74) = t27.
      t73 = t74->value.
      DATA(t75) = |=>|.
      DATA(t76) = strlen( t73 ).
      t72 = |{ t73 }{ t75 }|.
      t71 = t72.
      DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t78) = t22.
      DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
      t77 = t78->find_all_expressions( i_type_9913 = t79 ).
      DATA t80 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t80.
      DATA t81 TYPE REF TO object.
      CLEAR t81.
      DATA(t82) = VALUE i( ).
      DO.
        t77->load( ).
        IF t82 >= lines( t77->items ).
          EXIT.
        ENDIF.
        CLEAR t81.
        READ TABLE t77->items INDEX t82 + 1 INTO t81.
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
        DATA(t85) = VALUE string( ).
        DATA t86 TYPE string.
        DATA t87 TYPE string.
        DATA(t88) = t80.
        t87 = t88->concat_tokens( ).
        DATA(t89) = strlen( t87 ).
        t86 = t87.
        IF t86 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t86 TO UPPER CASE.
        ELSE.
          t86 = zlnt_runtime_uppe_91169605024d=>full( t86 ).
        ENDIF.
        t85 = t86.
        DATA(t90) = VALUE abap_bool( ).
        DATA(t91) = t85.
        DATA(t92) = t71.
        DATA(t93) = strlen( t91 ).
        DATA t94 TYPE i.
        DATA(t95) = VALUE i( ).
        DATA(t96) = VALUE string( ).
        t94 = strlen( t92 ).
        IF t94 = 0.
          t90 = abap_true.
        ELSEIF t94 <= t93.
          t95 = 0.
          t96 = t91+t95(t94).
          IF t96 = t92.
            t90 = abap_true.
          ENDIF.
        ENDIF.
        IF t90 = abap_true.
          DATA t97 TYPE REF TO zcl_lnt_abstract_token.
          DATA t98 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t99) = t80.
          DATA(t100) = |=>|.
          t98 = t99->find_direct_token_by_text( i_text = t100 ).
          t97 = t98.
          DATA(t101) = VALUE abap_bool( ).
          DATA t102 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t103) = t97.
          t102 = t103.
          DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t105.
          t104 = t105.
          DATA(t106) = VALUE abap_bool( ).
          DATA(t107) = t102.
          IF t107 IS INITIAL.
            t106 = abap_true.
          ENDIF.
          t101 = t106.
          IF t101 = abap_true.
            CONTINUE.
          ENDIF.
          DATA t108 TYPE REF TO zcl_lnt_position.
          DATA t109 TYPE REF TO zcl_lnt_position.
          DATA t110 TYPE f.
          DATA t111 TYPE REF TO zcl_lnt_abstract_token.
          DATA t112 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t113) = t97.
          t112 = t113.
          t111 = t112.
          DATA t114 TYPE f.
          DATA t115 TYPE REF TO zcl_lnt_position.
          DATA t116 TYPE REF TO zcl_lnt_position.
          DATA(t117) = t111.
          t116 = t117->start.
          t115 = t116.
          DATA t118 TYPE f.
          DATA(t119) = t115.
          t118 = t119->row.
          t114 = t118.
          t110 = t114.
          DATA t120 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t121 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t122 TYPE REF TO zcl_lnt_abstract_token.
          DATA t123 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t124) = t97.
          t123 = t124.
          t122 = t123.
          DATA t125 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t126 TYPE REF TO zcl_lnt_position.
          DATA t127 TYPE REF TO zcl_lnt_position.
          DATA(t128) = t122.
          t127 = t128->start.
          t126 = t127.
          DATA t129 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t130) = t126.
          t129 = t130->col.
          t125 = t129.
          t121 = t125.
          DATA t131 TYPE f.
          DATA t132 TYPE i.
          DATA t133 TYPE string.
          DATA(t134) = t27.
          t133 = t134->value.
          DATA(t135) = strlen( t133 ).
          t132 = t135.
          t131 = t132.
          DATA(t136) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t136->has = abap_true.
          t136->value = t131.
          t120 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t121 right = t136 op = `-` ).
          t109 = NEW zcl_lnt_position( i_row = t110 i_col = t120 ).
          t108 = t109.
          DATA t137 TYPE REF TO zcl_lnt_position.
          DATA t138 TYPE REF TO zcl_lnt_position.
          DATA t139 TYPE f.
          DATA t140 TYPE REF TO zcl_lnt_abstract_token.
          DATA t141 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t142) = t97.
          t141 = t142.
          t140 = t141.
          DATA t143 TYPE f.
          DATA t144 TYPE REF TO zcl_lnt_position.
          DATA t145 TYPE REF TO zcl_lnt_position.
          DATA(t146) = t140.
          t145 = t146->start.
          t144 = t145.
          DATA t147 TYPE f.
          DATA(t148) = t144.
          t147 = t148->row.
          t143 = t147.
          t139 = t143.
          DATA t149 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t150 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t151 TYPE REF TO zcl_lnt_abstract_token.
          DATA t152 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t153) = t97.
          t152 = t153.
          t151 = t152.
          DATA t154 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t155 TYPE REF TO zcl_lnt_position.
          DATA t156 TYPE REF TO zcl_lnt_position.
          DATA(t157) = t151.
          t156 = t157->start.
          t155 = t156.
          DATA t158 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t159) = t155.
          t158 = t159->col.
          t154 = t158.
          t150 = t154.
          DATA(t160) = CONV f( 2 ).
          DATA(t161) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t161->has = abap_true.
          t161->value = t160.
          t149 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t150 right = t161 op = `+` ).
          t138 = NEW zcl_lnt_position( i_row = t139 i_col = t149 ).
          t137 = t138.
          DATA t162 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t163 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t164) = t1.
          DATA(t165) = t108.
          DATA(t166) = t137.
          t163 = zcl_lnt_edit_helper=>delete_range( i_file = t164 i_start = t165 i_end = t166 ).
          t162 = t163.
          DATA(t167) = t16.
          DATA t168 TYPE REF TO zcl_lnt_issue.
          CLEAR t168.
          DATA(t169) = t1.
          DATA t170 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t171) = t80.
          t170 = t171->get_first_token( ).
          DATA(t172) = |Reference to current interface can be omitted|.
          DATA(t173) = VALUE string( ).
          DATA t174 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t174.
          DATA t175 TYPE string.
          DATA(t176) = |prefix_is_current_class|.
          t175 = t176.
          DATA t177 TYPE string.
          DATA(t178) = |Prefix is current class|.
          t177 = t178.
          DATA t179 TYPE string.
          DATA(t180) = |Reports errors if the current class or interface references |.
          t180 = t180 && |itself with "current_class=>"|.
          t179 = t180.
          DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t181.
          DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t182.
          DATA(t183) = abap_true.
          IF t183 = abap_true.
            DATA(t184) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
            t184 = t184 && |nABAP.md#omit-the-self-reference-me-when-calling-an-instance|.
            t184 = t184 && |-attribute-or-method|.
            DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t185->has = abap_true.
            t185->value = t184.
            t182 = t185.
          ELSE.
            DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t186.
            t182 = t186.
          ENDIF.
          t181 = t182.
          DATA t187 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t187.
          DATA t188 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t188.
          DATA(t189) = abap_true.
          IF t189 = abap_true.
            DATA t190 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t191 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t192 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t192.
            t191 = t192.
            DATA(t193) = t191.
            DATA(t194) = |Styleguide|.
            t193->load( ).
            APPEND t194 TO t193->items.
            t193->save( ).
            DATA(t195) = t191.
            DATA(t196) = |Quickfix|.
            t195->load( ).
            APPEND t196 TO t195->items.
            t195->save( ).
            DATA(t197) = t191.
            DATA(t198) = |SingleFile|.
            t197->load( ).
            APPEND t198 TO t197->items.
            t197->save( ).
            DATA(t199) = t191.
            t190 = t199.
            t188 = t190.
          ELSE.
            DATA t200 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t200.
            t188 = t200.
          ENDIF.
          t187 = t188.
          DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t201.
          DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t202.
          DATA(t203) = abap_true.
          IF t203 = abap_true.
            DATA(t204) = |METHOD run.\n  zcl_current=>helper( ).\n  me->do_work( ).\nENDM|.
            t204 = t204 && |ETHOD.|.
            DATA(t205) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t205->has = abap_true.
            t205->value = t204.
            t202 = t205.
          ELSE.
            DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t206.
            t202 = t206.
          ENDIF.
          t201 = t202.
          DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t207.
          DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t208.
          DATA(t209) = abap_true.
          IF t209 = abap_true.
            DATA(t210) = |METHOD run.\n  helper( ).\n  do_work( ).\nENDMETHOD.|.
            DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t211->has = abap_true.
            t211->value = t210.
            t208 = t211.
          ELSE.
            DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t212.
            t208 = t212.
          ENDIF.
          t207 = t208.
          DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t214.
          t213 = t214.
          DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t216.
          t215 = t216.
          t174 = NEW zcl_lnt_irule_metadata( i_key = t175 i_title = t177 i_short_description = t179 i_bad_example = t201 i_good_example = t207 i_extended_information = t181 i_tags = t187 i_pragma = t213 i_pseudo_comment = t215 ).
          CREATE OBJECT t174->zlnt_view_ownkeys_b0e8086400eb.
          t174->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t217.
          IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t217 ).
          ENDIF.
          DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t218.
          IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t218 ).
          ENDIF.
          DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t219.
          IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t219 ).
          ENDIF.
          DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t220.
          IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t220 ).
          ENDIF.
          DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t221.
          IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t221 ).
          ENDIF.
          DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t222.
          IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t222 ).
          ENDIF.
          DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t223.
          IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t223 ).
          ENDIF.
          CREATE OBJECT t174->zlnt_json_ownkeys_70e5fd461788.
          t174->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t224) = |key|.
          DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t225.
          IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t224 p1 = t225 ).
          ENDIF.
          DATA(t226) = |title|.
          DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t227.
          IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t226 p1 = t227 ).
          ENDIF.
          DATA(t228) = |shortDescription|.
          DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t229.
          IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t228 p1 = t229 ).
          ENDIF.
          DATA(t230) = |extendedInformation|.
          DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t231.
          IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t230 p1 = t231 ).
          ENDIF.
          DATA(t232) = |tags|.
          DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t233.
          IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t232 p1 = t233 ).
          ENDIF.
          DATA(t234) = |badExample|.
          DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t235.
          IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t234 p1 = t235 ).
          ENDIF.
          DATA(t236) = |goodExample|.
          DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t237.
          IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t236 p1 = t237 ).
          ENDIF.
          t173 = t174->key.
          DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t239) = me->conf.
          t238 = t239->zlnt_view_read_sr_15c06369f827( ).
          DATA t240 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t240.
          DATA(t241) = abap_true.
          IF t241 = abap_true.
            DATA(t242) = t162.
            t240 = t242.
          ELSE.
            DATA t243 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t243.
            t240 = t243.
          ENDIF.
          t168 = zcl_lnt_issue=>at_token( i_file = t169 i_token = t170 i_message_26cb = t172 i_key = t173 i_severity = t238 i_fix = t240 ).
          t167->load( ).
          APPEND t168 TO t167->items.
          t167->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t244) = t16.
    result = t244.

  ENDMETHOD.

  METHOD check_classes.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zcl_lnt_structure_node.
    DATA t3 TYPE REF TO zcl_lnt_structure_node.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_structure_node.
    DATA(t7) = t4.
    t6 = t7->structure.
    t3 = t6.
    t2 = t3.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zcl_lnt_structure_node.
    DATA(t10) = t2.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t9.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t8 = t13.
    IF t8 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      result = t15.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t17.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    DATA(t21) = t2.
    t20 = t21.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d702_c1c9b120591c.
    t19 = t20->find_direct_structures( i_type_9913 = t22 ).
    t18 = t19.
    DATA(t23) = VALUE i( ).
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE REF TO zcl_lnt_structure_node.
    DATA(t26) = t2.
    t25 = t26.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e.
    t24 = t25->find_direct_structures( i_type_9913 = t27 ).
    DATA t28 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t28.
    DATA t29 TYPE REF TO object.
    CLEAR t29.
    DATA(t30) = VALUE i( ).
    DO.
      t24->load( ).
      IF t30 >= lines( t24->items ).
        EXIT.
      ENDIF.
      CLEAR t29.
      READ TABLE t24->items INDEX t30 + 1 INTO t29.
      t30 = t30 + 1.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      CLEAR t28.
      IF t29 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t31 ?= t29.
        DATA t32 TYPE REF TO object.
        t32 = t31->as_ref( ).
        t28 ?= t32.
      ELSE.
        t28 ?= t29.
      ENDIF.
      DATA(t33) = t18.
      DATA(t34) = t28.
      t33->load( ).
      APPEND t34 TO t33->items.
      t33->save( ).
    ENDDO.
    DATA t35 TYPE i.
    DATA(t36) = t18.
    t36->load( ).
    t35 = lines( t36->items ).
    t23 = t35.
    DATA t37 TYPE string.
    DATA(t38) = |ME->|.
    t37 = t38.
    DATA(t39) = t18.
    DATA t40 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t40.
    DATA t41 TYPE REF TO object.
    CLEAR t41.
    DATA(t42) = VALUE i( ).
    DO.
      t39->load( ).
      IF t42 >= lines( t39->items ).
        EXIT.
      ENDIF.
      CLEAR t41.
      READ TABLE t39->items INDEX t42 + 1 INTO t41.
      t42 = t42 + 1.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t43.
      CLEAR t40.
      IF t41 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t43 ?= t41.
        DATA t44 TYPE REF TO object.
        t44 = t43->as_ref( ).
        t40 ?= t44.
      ELSE.
        t40 ?= t41.
      ENDIF.
      DATA(t45) = VALUE string( ).
      DATA t46 TYPE string.
      DATA t47 TYPE string.
      DATA t48 TYPE REF TO zcl_lnt_abstract_token.
      DATA t49 TYPE REF TO zcl_lnt_abstract_token.
      DATA t50 TYPE REF TO zcl_lnt_expression_node.
      DATA t51 TYPE REF TO zcl_lnt_expression_node.
      DATA(t52) = t40.
      DATA(t53) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t51 = t52->find_first_expression( i_type_9913 = t53 ).
      t50 = t51.
      t49 = t50->get_first_token( ).
      t48 = t49.
      DATA t54 TYPE string.
      DATA(t55) = t48.
      t54 = t55->str.
      t47 = t54.
      DATA(t56) = strlen( t47 ).
      t46 = t47.
      IF t46 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t46 TO UPPER CASE.
      ELSE.
        t46 = zlnt_runtime_uppe_91169605024d=>full( t46 ).
      ENDIF.
      t45 = t46.
      DATA t57 TYPE string.
      DATA t58 TYPE string.
      DATA(t59) = t45.
      DATA(t60) = |=>|.
      DATA(t61) = strlen( t59 ).
      t58 = |{ t59 }{ t60 }|.
      t57 = t58.
      DATA t62 TYPE REF TO zlnt_runtime_map__da87443eb676.
      DATA t63 TYPE REF TO zlnt_runtime_map__da87443eb676.
      DATA t64 TYPE REF TO zcl_lnt_structure_node.
      DATA(t65) = t2.
      t64 = t65.
      DATA(t66) = t40.
      DATA(t67) = t45.
      t63 = me->build_shadowed_names( i_struc = t64 i_impl = t66 i_class_name = t67 ).
      t62 = t63.
      DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t69) = t40.
      t68 = t69->find_all_statement_nodes( ).
      DATA t70 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t70.
      DATA t71 TYPE REF TO object.
      CLEAR t71.
      DATA(t72) = VALUE i( ).
      DO.
        t68->load( ).
        IF t72 >= lines( t68->items ).
          EXIT.
        ENDIF.
        CLEAR t71.
        READ TABLE t68->items INDEX t72 + 1 INTO t71.
        t72 = t72 + 1.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        CLEAR t70.
        IF t71 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t73 ?= t71.
          DATA t74 TYPE REF TO object.
          t74 = t73->as_ref( ).
          t70 ?= t74.
        ELSE.
          t70 ?= t71.
        ENDIF.
        DATA(t75) = VALUE string( ).
        DATA t76 TYPE string.
        DATA t77 TYPE string.
        DATA(t78) = t70.
        t77 = t78->cnct_tkns_wtht_strng_and_cmmnt( ).
        DATA(t79) = strlen( t77 ).
        t76 = t77.
        IF t76 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t76 TO UPPER CASE.
        ELSE.
          t76 = zlnt_runtime_uppe_91169605024d=>full( t76 ).
        ENDIF.
        t75 = t76.
        DATA(t80) = VALUE abap_bool( ).
        DATA(t81) = VALUE i( ).
        DATA(t82) = t75.
        DATA(t83) = t57.
        DATA(t84) = strlen( t82 ).
        IF t83 IS INITIAL.
          t81 = 0.
        ELSE.
          FIND t83 IN t82 MATCH OFFSET t81.
          IF sy-subrc <> 0.
            t81 = -1.
          ENDIF.
        ENDIF.
        DATA(t85) = 0.
        t80 = xsdbool( t81 >= t85 ).
        IF t80 = abap_true.
          DATA t86 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
          DATA t87 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
          DATA(t88) = t62.
          DATA(t89) = t70.
          t87 = t88->get( p0 = t89 ).
          t86 = t87.
          DATA t90 TYPE REF TO zcl_lnt_shape_5bd99ac8.
          CLEAR t90.
          DATA t91 TYPE REF TO zcl_lnt_shape_5bd99ac8.
          CLEAR t91.
          DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t94) = t70.
          DATA(t95) = t45.
          t93 = me->find_static_references( i_s = t94 i_class_name = t95 ).
          t92 = t93.
          DATA t96 TYPE i.
          DATA t97 TYPE i.
          DATA(t98) = t92.
          t98->load( ).
          t97 = lines( t98->items ).
          t96 = t97.
          DATA t99 TYPE i.
          DATA(t100) = 0.
          t99 = t100.
          DATA t101 TYPE REF TO zcl_lnt_shape_5bd99ac8.
          DATA t102 TYPE REF TO zcl_lnt_shape_5bd99ac8.
          CLEAR t102.
          t101 = t102.
          DO.
            DATA t103 TYPE abap_bool.
            DATA(t104) = t99.
            DATA(t105) = t96.
            t103 = xsdbool( t104 < t105 ).
            IF t103 = abap_false.
              EXIT.
            ENDIF.
            DATA t106 TYPE REF TO zcl_lnt_shape_5bd99ac8.
            CLEAR t106.
            DATA t107 TYPE REF TO zcl_lnt_shape_5bd99ac8.
            CLEAR t107.
            DATA t108 TYPE REF TO zcl_lnt_shape_5bd99ac8.
            CLEAR t108.
            DATA(t109) = t92.
            DATA(t110) = t99.
            DATA t111 TYPE REF TO object.
            t111 = t109->get( p0 = t110 ).
            DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t112.
            CLEAR t108.
            IF t111 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t112 ?= t111.
              DATA t113 TYPE REF TO object.
              t113 = t112->as_ref( ).
              t108 ?= t113.
            ELSE.
              t108 ?= t111.
            ENDIF.
            t107 = t108.
            t106 = t107.
            DATA(t114) = VALUE abap_bool( ).
            DATA(t115) = VALUE abap_bool( ).
            DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t118) = t106.
            t117 = t118->member.
            t116 = t117.
            DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t120.
            t119 = t120.
            DATA(t121) = VALUE abap_bool( ).
            DATA(t122) = t116.
            IF t122 IS INITIAL.
              t121 = abap_true.
            ELSEIF t122->has = abap_false.
              t121 = abap_true.
            ENDIF.
            t115 = t121.
            t114 = t115.
            IF t115 = abap_false.
              DATA(t123) = VALUE abap_bool( ).
              DATA t124 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t124.
              DATA t125 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
              DATA(t126) = t86.
              t125 = t126.
              DATA t127 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t127.
              DATA(t128) = VALUE abap_bool( ).
              DATA(t129) = t125.
              IF t129 IS INITIAL.
                t128 = abap_true.
              ENDIF.
              IF t128 = abap_true.
                DATA t130 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t130.
                t127 = t130.
              ELSE.
                DATA t131 TYPE abap_bool.
                DATA t132 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
                DATA(t133) = t125.
                t132 = t133.
                DATA t134 TYPE string.
                DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t136) = t106.
                t135 = t136->member.
                t134 = t135->value.
                t131 = t132->has( p0 = t134 ).
                DATA(t137) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t137->has = abap_true.
                t137->value = t131.
                t127 = t137.
              ENDIF.
              t124 = t127.
              DATA t138 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t138.
              DATA(t139) = abap_true.
              IF t139 = abap_true.
                DATA(t140) = abap_true.
                DATA(t141) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t141->has = abap_true.
                t141->value = t140.
                t138 = t141.
              ELSE.
                DATA t142 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t142.
                t138 = t142.
              ENDIF.
              DATA(t143) = VALUE abap_bool( ).
              DATA(t144) = VALUE abap_bool( ).
              IF t124 IS BOUND.
                t143 = t124->has.
              ENDIF.
              IF t138 IS BOUND.
                t144 = t138->has.
              ENDIF.
              IF t143 = t144.
                IF t143 = abap_false.
                  t123 = abap_true.
                ELSEIF t124->value = t138->value.
                  t123 = abap_true.
                ENDIF.
              ENDIF.
              IF t123 = abap_true.
                t123 = abap_false.
              ELSE.
                t123 = abap_true.
              ENDIF.
              t114 = t123.
            ENDIF.
            IF t114 = abap_true.
              DATA t145 TYPE REF TO zcl_lnt_shape_5bd99ac8.
              CLEAR t145.
              DATA(t146) = abap_true.
              IF t146 = abap_true.
                DATA(t147) = t106.
                t145 = t147.
              ELSE.
                DATA t148 TYPE REF TO zcl_lnt_shape_5bd99ac8.
                CLEAR t148.
                t145 = t148.
              ENDIF.
              t101 = t145.
              EXIT.
            ENDIF.
            DATA t149 TYPE i.
            DATA(t150) = t99.
            DATA(t151) = 1.
            t149 = t150 + t151.
            t99 = t149.
          ENDDO.
          DATA(t152) = t101.
          t91 = t152.
          t90 = t91.
          DATA t153 TYPE abap_bool.
          DATA(t154) = t90.
          t153 = xsdbool( t154 IS BOUND ).
          IF t153 = abap_true.
            DATA t155 TYPE REF TO zcl_lnt_position.
            DATA t156 TYPE REF TO zcl_lnt_position.
            DATA t157 TYPE REF TO zcl_lnt_shape_5bd99ac8.
            DATA(t158) = t90.
            t157 = t158.
            t156 = t157->pos.
            t155 = t156.
            DATA t159 TYPE REF TO zcl_lnt_position.
            DATA t160 TYPE REF TO zcl_lnt_position.
            DATA t161 TYPE f.
            DATA t162 TYPE REF TO zcl_lnt_position.
            DATA(t163) = t155.
            t162 = t163.
            DATA t164 TYPE f.
            DATA(t165) = t162.
            t164 = t165->row.
            t161 = t164.
            DATA t166 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t167 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t168 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t169 TYPE REF TO zcl_lnt_position.
            DATA(t170) = t155.
            t169 = t170.
            DATA t171 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t172) = t169.
            t171 = t172->col.
            t168 = t171.
            DATA t173 TYPE f.
            DATA t174 TYPE i.
            DATA(t175) = t45.
            DATA(t176) = strlen( t175 ).
            t174 = t176.
            t173 = t174.
            DATA(t177) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t177->has = abap_true.
            t177->value = t173.
            t167 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t168 right = t177 op = `+` ).
            DATA(t178) = CONV f( 2 ).
            DATA(t179) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t179->has = abap_true.
            t179->value = t178.
            t166 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t167 right = t179 op = `+` ).
            t160 = NEW zcl_lnt_position( i_row = t161 i_col = t166 ).
            t159 = t160.
            DATA t180 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA t181 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA(t182) = t1.
            DATA(t183) = t155.
            DATA(t184) = t159.
            t181 = zcl_lnt_edit_helper=>delete_range( i_file = t182 i_start = t183 i_end = t184 ).
            t180 = t181.
            DATA(t185) = t16.
            DATA t186 TYPE REF TO zcl_lnt_issue.
            CLEAR t186.
            DATA(t187) = t1.
            DATA(t188) = t155.
            DATA(t189) = t159.
            DATA t190 TYPE string.
            DATA t191 TYPE string.
            DATA(t192) = |Reference to current class can be omitted: "|.
            DATA(t193) = t57.
            DATA(t194) = strlen( t192 ).
            t191 = |{ t192 }{ t193 }|.
            DATA(t195) = |"|.
            DATA(t196) = strlen( t191 ).
            t190 = |{ t191 }{ t195 }|.
            DATA(t197) = VALUE string( ).
            DATA t198 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t198.
            DATA t199 TYPE string.
            DATA(t200) = |prefix_is_current_class|.
            t199 = t200.
            DATA t201 TYPE string.
            DATA(t202) = |Prefix is current class|.
            t201 = t202.
            DATA t203 TYPE string.
            DATA(t204) = |Reports errors if the current class or interface references |.
            t204 = t204 && |itself with "current_class=>"|.
            t203 = t204.
            DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t205.
            DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t206.
            DATA(t207) = abap_true.
            IF t207 = abap_true.
              DATA(t208) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
              t208 = t208 && |nABAP.md#omit-the-self-reference-me-when-calling-an-instance|.
              t208 = t208 && |-attribute-or-method|.
              DATA(t209) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t209->has = abap_true.
              t209->value = t208.
              t206 = t209.
            ELSE.
              DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t210.
              t206 = t210.
            ENDIF.
            t205 = t206.
            DATA t211 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t211.
            DATA t212 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t212.
            DATA(t213) = abap_true.
            IF t213 = abap_true.
              DATA t214 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t215 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t216 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t216.
              t215 = t216.
              DATA(t217) = t215.
              DATA(t218) = |Styleguide|.
              t217->load( ).
              APPEND t218 TO t217->items.
              t217->save( ).
              DATA(t219) = t215.
              DATA(t220) = |Quickfix|.
              t219->load( ).
              APPEND t220 TO t219->items.
              t219->save( ).
              DATA(t221) = t215.
              DATA(t222) = |SingleFile|.
              t221->load( ).
              APPEND t222 TO t221->items.
              t221->save( ).
              DATA(t223) = t215.
              t214 = t223.
              t212 = t214.
            ELSE.
              DATA t224 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t224.
              t212 = t224.
            ENDIF.
            t211 = t212.
            DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t225.
            DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t226.
            DATA(t227) = abap_true.
            IF t227 = abap_true.
              DATA(t228) = |METHOD run.\n  zcl_current=>helper( ).\n  me->do_work( ).\nENDM|.
              t228 = t228 && |ETHOD.|.
              DATA(t229) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t229->has = abap_true.
              t229->value = t228.
              t226 = t229.
            ELSE.
              DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t230.
              t226 = t230.
            ENDIF.
            t225 = t226.
            DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t231.
            DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t232.
            DATA(t233) = abap_true.
            IF t233 = abap_true.
              DATA(t234) = |METHOD run.\n  helper( ).\n  do_work( ).\nENDMETHOD.|.
              DATA(t235) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t235->has = abap_true.
              t235->value = t234.
              t232 = t235.
            ELSE.
              DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t236.
              t232 = t236.
            ENDIF.
            t231 = t232.
            DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t238.
            t237 = t238.
            DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t240.
            t239 = t240.
            t198 = NEW zcl_lnt_irule_metadata( i_key = t199 i_title = t201 i_short_description = t203 i_bad_example = t225 i_good_example = t231 i_extended_information = t205 i_tags = t211 i_pragma = t237 i_pseudo_comment = t239 ).
            CREATE OBJECT t198->zlnt_view_ownkeys_b0e8086400eb.
            t198->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t241.
            IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t241 ).
            ENDIF.
            DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t242.
            IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t242 ).
            ENDIF.
            DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t243.
            IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t243 ).
            ENDIF.
            DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t244.
            IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t244 ).
            ENDIF.
            DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t245.
            IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t245 ).
            ENDIF.
            DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t246.
            IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t246 ).
            ENDIF.
            DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t247.
            IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t247 ).
            ENDIF.
            CREATE OBJECT t198->zlnt_json_ownkeys_70e5fd461788.
            t198->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t248) = |key|.
            DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t249.
            IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = t248 p1 = t249 ).
            ENDIF.
            DATA(t250) = |title|.
            DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t251.
            IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = t250 p1 = t251 ).
            ENDIF.
            DATA(t252) = |shortDescription|.
            DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t253.
            IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = t252 p1 = t253 ).
            ENDIF.
            DATA(t254) = |extendedInformation|.
            DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t255.
            IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = t254 p1 = t255 ).
            ENDIF.
            DATA(t256) = |tags|.
            DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t257.
            IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = t256 p1 = t257 ).
            ENDIF.
            DATA(t258) = |badExample|.
            DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t259.
            IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = t258 p1 = t259 ).
            ENDIF.
            DATA(t260) = |goodExample|.
            DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t261.
            IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = t260 p1 = t261 ).
            ENDIF.
            t197 = t198->key.
            DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t263) = me->conf.
            t262 = t263->zlnt_view_read_sr_15c06369f827( ).
            DATA t264 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t264.
            DATA(t265) = abap_true.
            IF t265 = abap_true.
              DATA(t266) = t180.
              t264 = t266.
            ELSE.
              DATA t267 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t267.
              t264 = t267.
            ENDIF.
            DATA t268 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t268.
            t186 = zcl_lnt_issue=>at_range( i_file = t187 i_start = t188 i_end = t189 i_message_26cb = t190 i_key = t197 i_severity = t262 i_fix = t264 i_alternative_fixes = t268 ).
            t185->load( ).
            APPEND t186 TO t185->items.
            t185->save( ).
          ENDIF.
        ELSE.
          DATA(t269) = VALUE abap_bool( ).
          DATA t270 TYPE abap_bool.
          DATA t271 TYPE abap_bool.
          DATA t272 TYPE abap_bool.
          DATA(t273) = me->conf.
          t272 = t273->zlnt_view_read_sr_c6cd031b1202( ).
          DATA(t274) = abap_true.
          t271 = xsdbool( t272 = t274 ).
          t270 = t271.
          IF t271 = abap_true.
            DATA(t275) = VALUE abap_bool( ).
            DATA(t276) = VALUE i( ).
            DATA(t277) = t75.
            DATA(t278) = t37.
            DATA(t279) = strlen( t277 ).
            IF t278 IS INITIAL.
              t276 = 0.
            ELSE.
              FIND t278 IN t277 MATCH OFFSET t276.
              IF sy-subrc <> 0.
                t276 = -1.
              ENDIF.
            ENDIF.
            DATA(t280) = 0.
            t275 = xsdbool( t276 >= t280 ).
            t270 = t275.
          ENDIF.
          t269 = t270.
          IF t270 = abap_true.
            DATA t281 TYPE abap_bool.
            DATA t282 TYPE REF TO zcl_lnt_expression_node.
            DATA(t283) = t70.
            DATA(t284) = zlnt_runtime_desc_78196487750d=>zlnt_member_d221_0c54ed92df99.
            t282 = t283->find_first_expression( i_type_9913 = t284 ).
            t281 = xsdbool( t282 IS BOUND ).
            t269 = t281.
          ENDIF.
          IF t269 = abap_true.
            DATA t285 TYPE REF TO zcl_lnt_position.
            DATA t286 TYPE REF TO zcl_lnt_position.
            DATA(t287) = t70.
            DATA(t288) = |me|.
            DATA(t289) = |->|.
            t286 = t287->find_token_sequence_position( i_first = t288 i_second = t289 ).
            t285 = t286.
            DATA t290 TYPE abap_bool.
            DATA(t291) = t285.
            t290 = xsdbool( t291 IS BOUND ).
            IF t290 = abap_true.
              DATA t292 TYPE REF TO zcl_lnt_position.
              DATA t293 TYPE REF TO zcl_lnt_position.
              DATA t294 TYPE f.
              DATA t295 TYPE REF TO zcl_lnt_position.
              DATA t296 TYPE REF TO zcl_lnt_position.
              DATA(t297) = t285.
              t296 = t297.
              t295 = t296.
              DATA t298 TYPE f.
              DATA(t299) = t295.
              t298 = t299->row.
              t294 = t298.
              DATA t300 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA t301 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA t302 TYPE REF TO zcl_lnt_position.
              DATA t303 TYPE REF TO zcl_lnt_position.
              DATA(t304) = t285.
              t303 = t304.
              t302 = t303.
              DATA t305 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA(t306) = t302.
              t305 = t306->col.
              t301 = t305.
              DATA(t307) = CONV f( 4 ).
              DATA(t308) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t308->has = abap_true.
              t308->value = t307.
              t300 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t301 right = t308 op = `+` ).
              t293 = NEW zcl_lnt_position( i_row = t294 i_col = t300 ).
              t292 = t293.
              DATA t309 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              DATA t310 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              DATA(t311) = t1.
              DATA t312 TYPE REF TO zcl_lnt_position.
              DATA(t313) = t285.
              t312 = t313.
              DATA(t314) = t292.
              t310 = zcl_lnt_edit_helper=>delete_range( i_file = t311 i_start = t312 i_end = t314 ).
              t309 = t310.
              DATA(t315) = t16.
              DATA t316 TYPE REF TO zcl_lnt_issue.
              CLEAR t316.
              DATA(t317) = t1.
              DATA t318 TYPE REF TO zcl_lnt_position.
              DATA(t319) = t285.
              t318 = t319.
              DATA(t320) = t292.
              DATA(t321) = |Omit 'me->' in instance calls|.
              DATA(t322) = VALUE string( ).
              DATA t323 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t323.
              DATA t324 TYPE string.
              DATA(t325) = |prefix_is_current_class|.
              t324 = t325.
              DATA t326 TYPE string.
              DATA(t327) = |Prefix is current class|.
              t326 = t327.
              DATA t328 TYPE string.
              DATA(t329) = |Reports errors if the current class or interface references |.
              t329 = t329 && |itself with "current_class=>"|.
              t328 = t329.
              DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t330.
              DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t331.
              DATA(t332) = abap_true.
              IF t332 = abap_true.
                DATA(t333) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
                t333 = t333 && |nABAP.md#omit-the-self-reference-me-when-calling-an-instance|.
                t333 = t333 && |-attribute-or-method|.
                DATA(t334) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t334->has = abap_true.
                t334->value = t333.
                t331 = t334.
              ELSE.
                DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t335.
                t331 = t335.
              ENDIF.
              t330 = t331.
              DATA t336 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t336.
              DATA t337 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t337.
              DATA(t338) = abap_true.
              IF t338 = abap_true.
                DATA t339 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t340 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t341 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t341.
                t340 = t341.
                DATA(t342) = t340.
                DATA(t343) = |Styleguide|.
                t342->load( ).
                APPEND t343 TO t342->items.
                t342->save( ).
                DATA(t344) = t340.
                DATA(t345) = |Quickfix|.
                t344->load( ).
                APPEND t345 TO t344->items.
                t344->save( ).
                DATA(t346) = t340.
                DATA(t347) = |SingleFile|.
                t346->load( ).
                APPEND t347 TO t346->items.
                t346->save( ).
                DATA(t348) = t340.
                t339 = t348.
                t337 = t339.
              ELSE.
                DATA t349 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t349.
                t337 = t349.
              ENDIF.
              t336 = t337.
              DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t350.
              DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t351.
              DATA(t352) = abap_true.
              IF t352 = abap_true.
                DATA(t353) = |METHOD run.\n  zcl_current=>helper( ).\n  me->do_work( ).\nENDM|.
                t353 = t353 && |ETHOD.|.
                DATA(t354) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t354->has = abap_true.
                t354->value = t353.
                t351 = t354.
              ELSE.
                DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t355.
                t351 = t355.
              ENDIF.
              t350 = t351.
              DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t356.
              DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t357.
              DATA(t358) = abap_true.
              IF t358 = abap_true.
                DATA(t359) = |METHOD run.\n  helper( ).\n  do_work( ).\nENDMETHOD.|.
                DATA(t360) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t360->has = abap_true.
                t360->value = t359.
                t357 = t360.
              ELSE.
                DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t361.
                t357 = t361.
              ENDIF.
              t356 = t357.
              DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t363.
              t362 = t363.
              DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t365 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t365.
              t364 = t365.
              t323 = NEW zcl_lnt_irule_metadata( i_key = t324 i_title = t326 i_short_description = t328 i_bad_example = t350 i_good_example = t356 i_extended_information = t330 i_tags = t336 i_pragma = t362 i_pseudo_comment = t364 ).
              CREATE OBJECT t323->zlnt_view_ownkeys_b0e8086400eb.
              t323->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t366.
              IF t323->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t323->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t366 ).
              ENDIF.
              DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t367.
              IF t323->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t323->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t367 ).
              ENDIF.
              DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t368.
              IF t323->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t323->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t368 ).
              ENDIF.
              DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t369.
              IF t323->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t323->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t369 ).
              ENDIF.
              DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t370.
              IF t323->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t323->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t370 ).
              ENDIF.
              DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t371.
              IF t323->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t323->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t371 ).
              ENDIF.
              DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t372.
              IF t323->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t323->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t372 ).
              ENDIF.
              CREATE OBJECT t323->zlnt_json_ownkeys_70e5fd461788.
              t323->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t373) = |key|.
              DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t374.
              IF t323->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t323->zlnt_json_ownkeys_70e5fd461788->put( p0 = t373 p1 = t374 ).
              ENDIF.
              DATA(t375) = |title|.
              DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t376.
              IF t323->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t323->zlnt_json_ownkeys_70e5fd461788->put( p0 = t375 p1 = t376 ).
              ENDIF.
              DATA(t377) = |shortDescription|.
              DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t378.
              IF t323->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t323->zlnt_json_ownkeys_70e5fd461788->put( p0 = t377 p1 = t378 ).
              ENDIF.
              DATA(t379) = |extendedInformation|.
              DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t380.
              IF t323->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t323->zlnt_json_ownkeys_70e5fd461788->put( p0 = t379 p1 = t380 ).
              ENDIF.
              DATA(t381) = |tags|.
              DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t382.
              IF t323->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t323->zlnt_json_ownkeys_70e5fd461788->put( p0 = t381 p1 = t382 ).
              ENDIF.
              DATA(t383) = |badExample|.
              DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t384.
              IF t323->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t323->zlnt_json_ownkeys_70e5fd461788->put( p0 = t383 p1 = t384 ).
              ENDIF.
              DATA(t385) = |goodExample|.
              DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t386.
              IF t323->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t323->zlnt_json_ownkeys_70e5fd461788->put( p0 = t385 p1 = t386 ).
              ENDIF.
              t322 = t323->key.
              DATA t387 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t388) = me->conf.
              t387 = t388->zlnt_view_read_sr_15c06369f827( ).
              DATA t389 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t389.
              DATA(t390) = abap_true.
              IF t390 = abap_true.
                DATA(t391) = t309.
                t389 = t391.
              ELSE.
                DATA t392 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t392.
                t389 = t392.
              ENDIF.
              DATA t393 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t393.
              t316 = zcl_lnt_issue=>at_range( i_file = t317 i_start = t318 i_end = t320 i_message_26cb = t321 i_key = t322 i_severity = t387 i_fix = t389 i_alternative_fixes = t393 ).
              t315->load( ).
              APPEND t316 TO t315->items.
              t315->save( ).
            ENDIF.
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t394) = t16.
    result = t394.

  ENDMETHOD.

  METHOD find_static_references.
    DATA(t1) = i_s.
    DATA(t2) = i_class_name.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = t1.
    t9 = t10->get_tokens( ).
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t11.
    DATA t12 TYPE REF TO object.
    CLEAR t12.
    DATA(t13) = VALUE i( ).
    DO.
      t9->load( ).
      IF t13 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t9->items INDEX t13 + 1 INTO t12.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t11.
      IF t12 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t12.
        DATA t15 TYPE REF TO object.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      DATA t16 TYPE abap_bool.
      DATA t17 TYPE abap_bool.
      DATA(t18) = t11.
      t17 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_lx_comment ).
      t16 = xsdbool( t17 = abap_false ).
      IF t16 = abap_true.
        DATA(t19) = t7.
        DATA(t20) = t11.
        t19->load( ).
        APPEND t20 TO t19->items.
        t19->save( ).
      ENDIF.
    ENDDO.
    DATA(t21) = t7.
    t6 = t21.
    t5 = t6.
    DATA t22 TYPE i.
    DATA(t23) = 0.
    t22 = t23.
    DO.
      DATA t24 TYPE abap_bool.
      DATA(t25) = t22.
      DATA t26 TYPE i.
      DATA t27 TYPE i.
      DATA(t28) = t5.
      t28->load( ).
      t27 = lines( t28->items ).
      DATA(t29) = 1.
      t26 = t27 - t29.
      t24 = xsdbool( t25 < t26 ).
      IF t24 = abap_false.
        EXIT.
      ENDIF.
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = VALUE string( ).
      DATA(t33) = VALUE string( ).
      DATA t34 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t34.
      DATA t35 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t35.
      DATA(t36) = t5.
      DATA(t37) = t22.
      t37 = t37 + 1.
      DATA t38 TYPE REF TO object.
      CLEAR t38.
      t36->load( ).
      CLEAR t38.
      READ TABLE t36->items INDEX t37 INTO t38.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      CLEAR t35.
      IF t38 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t39 ?= t38.
        DATA t40 TYPE REF TO object.
        t40 = t39->as_ref( ).
        t35 ?= t40.
      ELSE.
        t35 ?= t38.
      ENDIF.
      t34 = t35.
      DATA t41 TYPE string.
      DATA(t42) = t34.
      t41 = t42->str.
      t33 = t41.
      DATA(t43) = strlen( t33 ).
      t32 = t33.
      IF t32 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t32 TO UPPER CASE.
      ELSE.
        t32 = zlnt_runtime_uppe_91169605024d=>full( t32 ).
      ENDIF.
      DATA(t44) = t2.
      t31 = xsdbool( t32 = t44 ).
      t30 = t31.
      IF t31 = abap_true.
        DATA(t45) = VALUE abap_bool( ).
        DATA(t46) = VALUE string( ).
        DATA t47 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t47.
        DATA t48 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t48.
        DATA(t49) = t5.
        DATA t50 TYPE i.
        DATA(t51) = t22.
        DATA(t52) = 1.
        t50 = t51 + t52.
        t50 = t50 + 1.
        DATA t53 TYPE REF TO object.
        CLEAR t53.
        t49->load( ).
        CLEAR t53.
        READ TABLE t49->items INDEX t50 INTO t53.
        DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t54.
        CLEAR t48.
        IF t53 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t54 ?= t53.
          DATA t55 TYPE REF TO object.
          t55 = t54->as_ref( ).
          t48 ?= t55.
        ELSE.
          t48 ?= t53.
        ENDIF.
        t47 = t48.
        DATA t56 TYPE string.
        DATA(t57) = t47.
        t56 = t57->str.
        t46 = t56.
        DATA(t58) = |=>|.
        t45 = xsdbool( t46 = t58 ).
        t30 = t45.
      ENDIF.
      IF t30 = abap_true.
        DATA(t59) = t3.
        DATA t60 TYPE REF TO zcl_lnt_shape_5bd99ac8.
        CLEAR t60.
        DATA t61 TYPE REF TO zcl_lnt_position.
        CLEAR t61.
        DATA t62 TYPE REF TO zcl_lnt_position.
        CLEAR t62.
        DATA(t63) = abap_true.
        IF t63 = abap_true.
          DATA t64 TYPE REF TO zcl_lnt_position.
          CLEAR t64.
          DATA t65 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t65.
          DATA t66 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t66.
          DATA(t67) = t5.
          DATA(t68) = t22.
          t68 = t68 + 1.
          DATA t69 TYPE REF TO object.
          CLEAR t69.
          t67->load( ).
          CLEAR t69.
          READ TABLE t67->items INDEX t68 INTO t69.
          DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t70.
          CLEAR t66.
          IF t69 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t70 ?= t69.
            DATA t71 TYPE REF TO object.
            t71 = t70->as_ref( ).
            t66 ?= t71.
          ELSE.
            t66 ?= t69.
          ENDIF.
          t65 = t66.
          DATA t72 TYPE REF TO zcl_lnt_position.
          DATA(t73) = t65.
          t72 = t73->start.
          t64 = t72.
          t62 = t64.
        ELSE.
          DATA t74 TYPE REF TO zcl_lnt_position.
          CLEAR t74.
          t62 = t74.
        ENDIF.
        t61 = t62.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t75.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t77.
        DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t78.
        DATA t79 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t79.
        DATA t80 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t80.
        DATA(t81) = t5.
        DATA t82 TYPE i.
        DATA(t83) = t22.
        DATA(t84) = 2.
        t82 = t83 + t84.
        DATA t85 TYPE REF TO object.
        t85 = t81->get( p0 = t82 ).
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        CLEAR t80.
        IF t85 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t86 ?= t85.
          DATA t87 TYPE REF TO object.
          t87 = t86->as_ref( ).
          t80 ?= t87.
        ELSE.
          t80 ?= t85.
        ENDIF.
        t79 = t80.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        DATA(t89) = VALUE abap_bool( ).
        DATA(t90) = t79.
        IF t90 IS INITIAL.
          t89 = abap_true.
        ENDIF.
        IF t89 = abap_true.
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t91.
          t88 = t91.
        ELSE.
          DATA t92 TYPE string.
          DATA t93 TYPE REF TO zcl_lnt_abstract_token.
          DATA t94 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t95) = t79.
          t94 = t95.
          t93 = t94.
          DATA t96 TYPE string.
          DATA(t97) = t93.
          t96 = t97->str.
          t92 = t96.
          DATA(t98) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t98->has = abap_true.
          t98->value = t92.
          t88 = t98.
        ENDIF.
        t78 = t88.
        t77 = t78.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t99.
        DATA(t100) = VALUE abap_bool( ).
        DATA(t101) = t77.
        IF t101 IS INITIAL.
          t100 = abap_true.
        ELSEIF t101->has = abap_false.
          t100 = abap_true.
        ENDIF.
        IF t100 = abap_true.
          DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t102.
          t99 = t102.
        ELSE.
          DATA t103 TYPE string.
          DATA t104 TYPE string.
          DATA(t105) = t77.
          t104 = t105->value.
          DATA(t106) = strlen( t104 ).
          t103 = t104.
          IF t103 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t103 TO UPPER CASE.
          ELSE.
            t103 = zlnt_runtime_uppe_91169605024d=>full( t103 ).
          ENDIF.
          DATA(t107) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t107->has = abap_true.
          t107->value = t103.
          t99 = t107.
        ENDIF.
        t76 = t99.
        t75 = t76.
        t60 = NEW zcl_lnt_shape_5bd99ac8( i_pos = t61 i_member = t75 ).
        CREATE OBJECT t60->zlnt_view_ownkeys_b0e8086400eb.
        t60->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pos` p1 = t108 ).
        ENDIF.
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t109.
        IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `member` p1 = t109 ).
        ENDIF.
        CREATE OBJECT t60->zlnt_json_ownkeys_70e5fd461788.
        t60->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t110) = |pos|.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
        ENDIF.
        DATA(t112) = |member|.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
        ENDIF.
        t59->load( ).
        APPEND t60 TO t59->items.
        t59->save( ).
      ENDIF.
      DATA t114 TYPE i.
      DATA(t115) = t22.
      DATA(t116) = 1.
      t114 = t115 + t116.
      t22 = t114.
    ENDDO.
    DATA(t117) = t3.
    result = t117.

  ENDMETHOD.

  METHOD build_shadowed_names.
    DATA(t1) = i_struc.
    DATA(t2) = i_impl.
    DATA(t3) = i_class_name.
    DATA t4 TYPE REF TO zlnt_runtime_map__da87443eb676.
    DATA(t5) = NEW zlnt_runtime_map__da87443eb676( ).
    t4 = t5.
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE abap_bool.
    DATA t8 TYPE REF TO zif_lnt_structure.
    DATA(t9) = t2.
    t8 = t9->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
    t7 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_sr_clss_implmnttn ).
    t6 = xsdbool( t7 = abap_false ).
    IF t6 = abap_true.
      DATA(t10) = t4.
      result = t10.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t15) = t1.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e.
    t14 = t15->find_direct_structures( i_type_9913 = t16 ).
    t13 = t14.
    DATA t17 TYPE i.
    DATA t18 TYPE i.
    DATA(t19) = t13.
    t19->load( ).
    t18 = lines( t19->items ).
    t17 = t18.
    DATA t20 TYPE i.
    DATA(t21) = 0.
    t20 = t21.
    DATA t22 TYPE REF TO zcl_lnt_structure_node.
    DATA t23 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t23.
    t22 = t23.
    DO.
      DATA t24 TYPE abap_bool.
      DATA(t25) = t20.
      DATA(t26) = t17.
      t24 = xsdbool( t25 < t26 ).
      IF t24 = abap_false.
        EXIT.
      ENDIF.
      DATA t27 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t27.
      DATA t28 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t28.
      DATA t29 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t29.
      DATA(t30) = t13.
      DATA(t31) = t20.
      DATA t32 TYPE REF TO object.
      t32 = t30->get( p0 = t31 ).
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      CLEAR t29.
      IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t33 ?= t32.
        DATA t34 TYPE REF TO object.
        t34 = t33->as_ref( ).
        t29 ?= t34.
      ELSE.
        t29 ?= t32.
      ENDIF.
      t28 = t29.
      t27 = t28.
      DATA(t35) = VALUE abap_bool( ).
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t38.
      DATA t39 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t39.
      DATA t40 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t40.
      DATA t41 TYPE REF TO zcl_lnt_expression_node.
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      DATA(t43) = t27.
      DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t42 = t43->find_first_expression( i_type_9913 = t44 ).
      t41 = t42.
      DATA t45 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t45.
      DATA(t46) = VALUE abap_bool( ).
      DATA(t47) = t41.
      IF t47 IS INITIAL.
        t46 = abap_true.
      ENDIF.
      IF t46 = abap_true.
        DATA t48 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t48.
        t45 = t48.
      ELSE.
        DATA t49 TYPE REF TO zcl_lnt_abstract_token.
        DATA t50 TYPE REF TO zcl_lnt_expression_node.
        DATA(t51) = t41.
        t50 = t51.
        t49 = t50->get_first_token( ).
        t45 = t49.
      ENDIF.
      t40 = t45.
      t39 = t40.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t52.
      DATA(t53) = VALUE abap_bool( ).
      DATA(t54) = t39.
      IF t54 IS INITIAL.
        t53 = abap_true.
      ENDIF.
      IF t53 = abap_true.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        t52 = t55.
      ELSE.
        DATA t56 TYPE string.
        DATA t57 TYPE REF TO zcl_lnt_abstract_token.
        DATA t58 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t59) = t39.
        t58 = t59.
        t57 = t58.
        DATA t60 TYPE string.
        DATA(t61) = t57.
        t60 = t61->str.
        t56 = t60.
        DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t62->has = abap_true.
        t62->value = t56.
        t52 = t62.
      ENDIF.
      t38 = t52.
      t37 = t38.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t63.
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = t37.
      IF t65 IS INITIAL.
        t64 = abap_true.
      ELSEIF t65->has = abap_false.
        t64 = abap_true.
      ENDIF.
      IF t64 = abap_true.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        t63 = t66.
      ELSE.
        DATA t67 TYPE string.
        DATA t68 TYPE string.
        DATA(t69) = t37.
        t68 = t69->value.
        DATA(t70) = strlen( t68 ).
        t67 = t68.
        IF t67 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t67 TO UPPER CASE.
        ELSE.
          t67 = zlnt_runtime_uppe_91169605024d=>full( t67 ).
        ENDIF.
        DATA(t71) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t71->has = abap_true.
        t71->value = t67.
        t63 = t71.
      ENDIF.
      t36 = t63.
      DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t72.
      DATA(t73) = abap_true.
      IF t73 = abap_true.
        DATA(t74) = t3.
        DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t75->has = abap_true.
        t75->value = t74.
        t72 = t75.
      ELSE.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        t72 = t76.
      ENDIF.
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = VALUE abap_bool( ).
      IF t36 IS BOUND.
        t77 = t36->has.
      ENDIF.
      IF t72 IS BOUND.
        t78 = t72->has.
      ENDIF.
      IF t77 = t78.
        IF t77 = abap_false.
          t35 = abap_true.
        ELSEIF t36->value = t72->value.
          t35 = abap_true.
        ENDIF.
      ENDIF.
      IF t35 = abap_true.
        DATA t79 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t79.
        DATA(t80) = abap_true.
        IF t80 = abap_true.
          DATA(t81) = t27.
          t79 = t81.
        ELSE.
          DATA t82 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t82.
          t79 = t82.
        ENDIF.
        t22 = t79.
        EXIT.
      ENDIF.
      DATA t83 TYPE i.
      DATA(t84) = t20.
      DATA(t85) = 1.
      t83 = t84 + t85.
      t20 = t83.
    ENDDO.
    DATA(t86) = t22.
    t12 = t86.
    t11 = t12.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t88) = t2.
    DATA(t89) = zlnt_runtime_desc_78196487750d=>zlnt_member_d721_06b6159f9afc.
    t87 = t88->find_all_structures_recursive( i_type_9913 = t89 ).
    DATA t90 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t90.
    DATA t91 TYPE REF TO object.
    CLEAR t91.
    DATA(t92) = VALUE i( ).
    DO.
      t87->load( ).
      IF t92 >= lines( t87->items ).
        EXIT.
      ENDIF.
      CLEAR t91.
      READ TABLE t87->items INDEX t92 + 1 INTO t91.
      t92 = t92 + 1.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t93.
      CLEAR t90.
      IF t91 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t93 ?= t91.
        DATA t94 TYPE REF TO object.
        t94 = t93->as_ref( ).
        t90 ?= t94.
      ELSE.
        t90 ?= t91.
      ENDIF.
      DATA t95 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t96) = NEW zlnt_runtime_set__1827558fd4c7( ).
      t95 = t96.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t97.
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t98.
      DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t99.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t100.
      DATA t101 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t101.
      DATA t102 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t102.
      DATA t103 TYPE REF TO zcl_lnt_statement_node.
      DATA t104 TYPE REF TO zcl_lnt_statement_node.
      DATA(t105) = t90.
      DATA(t106) = zlnt_runtime_desc_78196487750d=>zlnt_member_d554_9e796f7b9641.
      t104 = t105->find_first_statement( i_type_9913 = t106 ).
      t103 = t104.
      DATA t107 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t107.
      DATA(t108) = VALUE abap_bool( ).
      DATA(t109) = t103.
      IF t109 IS INITIAL.
        t108 = abap_true.
      ENDIF.
      IF t108 = abap_true.
        DATA t110 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t110.
        t107 = t110.
      ELSE.
        DATA t111 TYPE REF TO zcl_lnt_expression_node.
        DATA t112 TYPE REF TO zcl_lnt_statement_node.
        DATA(t113) = t103.
        t112 = t113.
        DATA(t114) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
        t111 = t112->find_first_expression( i_type_9913 = t114 ).
        t107 = t111.
      ENDIF.
      t102 = t107.
      t101 = t102.
      DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t115.
      DATA(t116) = VALUE abap_bool( ).
      DATA(t117) = t101.
      IF t117 IS INITIAL.
        t116 = abap_true.
      ENDIF.
      IF t116 = abap_true.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t118.
        t115 = t118.
      ELSE.
        DATA t119 TYPE string.
        DATA t120 TYPE REF TO zcl_lnt_expression_node.
        DATA(t121) = t101.
        t120 = t121.
        t119 = t120->concat_tokens( ).
        DATA(t122) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t122->has = abap_true.
        t122->value = t119.
        t115 = t122.
      ENDIF.
      t100 = t115.
      t99 = t100.
      DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t123.
      DATA(t124) = VALUE abap_bool( ).
      DATA(t125) = t99.
      IF t125 IS INITIAL.
        t124 = abap_true.
      ELSEIF t125->has = abap_false.
        t124 = abap_true.
      ENDIF.
      IF t124 = abap_true.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t126.
        t123 = t126.
      ELSE.
        DATA t127 TYPE string.
        DATA t128 TYPE string.
        DATA(t129) = t99.
        t128 = t129->value.
        DATA(t130) = strlen( t128 ).
        t127 = t128.
        IF t127 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t127 TO UPPER CASE.
        ELSE.
          t127 = zlnt_runtime_uppe_91169605024d=>full( t127 ).
        ENDIF.
        DATA(t131) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t131->has = abap_true.
        t131->value = t127.
        t123 = t131.
      ENDIF.
      t98 = t123.
      t97 = t98.
      DATA(t132) = VALUE abap_bool( ).
      DATA(t133) = VALUE abap_bool( ).
      DATA t134 TYPE REF TO zcl_lnt_structure_node.
      DATA(t135) = t11.
      t134 = t135.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t137.
      t136 = t137.
      DATA(t138) = VALUE abap_bool( ).
      DATA(t139) = VALUE abap_bool( ).
      DATA(t140) = t134.
      IF t140 IS INITIAL.
        t139 = abap_true.
      ENDIF.
      t138 = xsdbool( t139 = abap_false ).
      t133 = t138.
      t132 = t133.
      IF t133 = abap_true.
        DATA(t141) = VALUE abap_bool( ).
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t143) = t97.
        t142 = t143.
        DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t145.
        t144 = t145.
        DATA(t146) = VALUE abap_bool( ).
        DATA(t147) = VALUE abap_bool( ).
        DATA(t148) = t142.
        IF t148 IS INITIAL.
          t147 = abap_true.
        ELSEIF t148->has = abap_false.
          t147 = abap_true.
        ENDIF.
        t146 = xsdbool( t147 = abap_false ).
        t141 = t146.
        t132 = t141.
      ENDIF.
      IF t132 = abap_true.
        DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t150 TYPE REF TO zcl_lnt_structure_node.
        DATA(t151) = t11.
        t150 = t151.
        DATA(t152) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
        t149 = t150->find_all_statements( i_type_9913 = t152 ).
        DATA t153 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t153.
        DATA t154 TYPE REF TO object.
        CLEAR t154.
        DATA(t155) = VALUE i( ).
        DO.
          t149->load( ).
          IF t155 >= lines( t149->items ).
            EXIT.
          ENDIF.
          CLEAR t154.
          READ TABLE t149->items INDEX t155 + 1 INTO t154.
          t155 = t155 + 1.
          DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t156.
          CLEAR t153.
          IF t154 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t156 ?= t154.
            DATA t157 TYPE REF TO object.
            t157 = t156->as_ref( ).
            t153 ?= t157.
          ELSE.
            t153 ?= t154.
          ENDIF.
          DATA(t158) = VALUE abap_bool( ).
          DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t159.
          DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t160.
          DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t161.
          DATA t162 TYPE REF TO zcl_lnt_expression_node.
          DATA t163 TYPE REF TO zcl_lnt_expression_node.
          DATA(t164) = t153.
          DATA(t165) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
          t163 = t164->find_first_expression( i_type_9913 = t165 ).
          t162 = t163.
          DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t166.
          DATA(t167) = VALUE abap_bool( ).
          DATA(t168) = t162.
          IF t168 IS INITIAL.
            t167 = abap_true.
          ENDIF.
          IF t167 = abap_true.
            DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t169.
            t166 = t169.
          ELSE.
            DATA t170 TYPE string.
            DATA t171 TYPE REF TO zcl_lnt_expression_node.
            DATA(t172) = t162.
            t171 = t172.
            t170 = t171->concat_tokens( ).
            DATA(t173) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t173->has = abap_true.
            t173->value = t170.
            t166 = t173.
          ENDIF.
          t161 = t166.
          t160 = t161.
          DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t174.
          DATA(t175) = VALUE abap_bool( ).
          DATA(t176) = t160.
          IF t176 IS INITIAL.
            t175 = abap_true.
          ELSEIF t176->has = abap_false.
            t175 = abap_true.
          ENDIF.
          IF t175 = abap_true.
            DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t177.
            t174 = t177.
          ELSE.
            DATA t178 TYPE string.
            DATA t179 TYPE string.
            DATA(t180) = t160.
            t179 = t180->value.
            DATA(t181) = strlen( t179 ).
            t178 = t179.
            IF t178 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t178 TO UPPER CASE.
            ELSE.
              t178 = zlnt_runtime_uppe_91169605024d=>full( t178 ).
            ENDIF.
            DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t182->has = abap_true.
            t182->value = t178.
            t174 = t182.
          ENDIF.
          t159 = t174.
          DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t183.
          DATA(t184) = abap_true.
          IF t184 = abap_true.
            DATA t185 TYPE string.
            DATA(t186) = t97.
            t185 = t186->value.
            DATA(t187) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t187->has = abap_true.
            t187->value = t185.
            t183 = t187.
          ELSE.
            DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t188.
            t183 = t188.
          ENDIF.
          DATA(t189) = VALUE abap_bool( ).
          DATA(t190) = VALUE abap_bool( ).
          IF t159 IS BOUND.
            t189 = t159->has.
          ENDIF.
          IF t183 IS BOUND.
            t190 = t183->has.
          ENDIF.
          IF t189 = t190.
            IF t189 = abap_false.
              t158 = abap_true.
            ELSEIF t159->value = t183->value.
              t158 = abap_true.
            ENDIF.
          ENDIF.
          IF t158 = abap_true.
            DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t192) = t153.
            DATA(t193) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
            t191 = t192->find_all_expressions( i_type_9913 = t193 ).
            DATA t194 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t194.
            DATA t195 TYPE REF TO object.
            CLEAR t195.
            DATA(t196) = VALUE i( ).
            DO.
              t191->load( ).
              IF t196 >= lines( t191->items ).
                EXIT.
              ENDIF.
              CLEAR t195.
              READ TABLE t191->items INDEX t196 + 1 INTO t195.
              t196 = t196 + 1.
              DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t197.
              CLEAR t194.
              IF t195 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t197 ?= t195.
                DATA t198 TYPE REF TO object.
                t198 = t197->as_ref( ).
                t194 ?= t198.
              ELSE.
                t194 ?= t195.
              ENDIF.
              DATA t199 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
              CLEAR t199.
              DATA(t200) = t95.
              DATA t201 TYPE string.
              DATA t202 TYPE string.
              DATA(t203) = t194.
              t202 = t203->concat_tokens( ).
              DATA(t204) = strlen( t202 ).
              t201 = t202.
              IF t201 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t201 TO UPPER CASE.
              ELSE.
                t201 = zlnt_runtime_uppe_91169605024d=>full( t201 ).
              ENDIF.
              t199 = t200->add( p0 = t201 ).
            ENDDO.
            EXIT.
          ENDIF.
        ENDDO.
      ENDIF.
      DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t206) = t90.
      DATA(t207) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
      t205 = t206->find_all_expressions( i_type_9913 = t207 ).
      DATA t208 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t208.
      DATA t209 TYPE REF TO object.
      CLEAR t209.
      DATA(t210) = VALUE i( ).
      DO.
        t205->load( ).
        IF t210 >= lines( t205->items ).
          EXIT.
        ENDIF.
        CLEAR t209.
        READ TABLE t205->items INDEX t210 + 1 INTO t209.
        t210 = t210 + 1.
        DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t211.
        CLEAR t208.
        IF t209 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t211 ?= t209.
          DATA t212 TYPE REF TO object.
          t212 = t211->as_ref( ).
          t208 ?= t212.
        ELSE.
          t208 ?= t209.
        ENDIF.
        DATA t213 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t213.
        DATA(t214) = t95.
        DATA t215 TYPE string.
        DATA t216 TYPE string.
        DATA(t217) = t208.
        t216 = t217->concat_tokens( ).
        DATA(t218) = strlen( t216 ).
        t215 = t216.
        IF t215 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t215 TO UPPER CASE.
        ELSE.
          t215 = zlnt_runtime_uppe_91169605024d=>full( t215 ).
        ENDIF.
        t213 = t214->add( p0 = t215 ).
      ENDDO.
      DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t220) = t90.
      DATA(t221) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t219 = t220->find_all_expressions( i_type_9913 = t221 ).
      DATA t222 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t222.
      DATA t223 TYPE REF TO object.
      CLEAR t223.
      DATA(t224) = VALUE i( ).
      DO.
        t219->load( ).
        IF t224 >= lines( t219->items ).
          EXIT.
        ENDIF.
        CLEAR t223.
        READ TABLE t219->items INDEX t224 + 1 INTO t223.
        t224 = t224 + 1.
        DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t225.
        CLEAR t222.
        IF t223 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t225 ?= t223.
          DATA t226 TYPE REF TO object.
          t226 = t225->as_ref( ).
          t222 ?= t226.
        ELSE.
          t222 ?= t223.
        ENDIF.
        DATA t227 TYPE REF TO zcl_lnt_expression_node.
        DATA t228 TYPE REF TO zcl_lnt_expression_node.
        DATA(t229) = t222.
        DATA(t230) = zlnt_runtime_desc_78196487750d=>zlnt_member_d180_085bc4e4d844.
        t228 = t229->find_first_expression( i_type_9913 = t230 ).
        t227 = t228.
        DATA t231 TYPE abap_bool.
        DATA(t232) = t227.
        t231 = xsdbool( t232 IS BOUND ).
        IF t231 = abap_true.
          DATA t233 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
          CLEAR t233.
          DATA(t234) = t95.
          DATA t235 TYPE string.
          DATA t236 TYPE string.
          DATA t237 TYPE REF TO zcl_lnt_expression_node.
          DATA(t238) = t227.
          t237 = t238.
          t236 = t237->concat_tokens( ).
          DATA(t239) = strlen( t236 ).
          t235 = t236.
          IF t235 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t235 TO UPPER CASE.
          ELSE.
            t235 = zlnt_runtime_uppe_91169605024d=>full( t235 ).
          ENDIF.
          t233 = t234->add( p0 = t235 ).
        ENDIF.
      ENDDO.
      DATA t240 TYPE abap_bool.
      DATA t241 TYPE i.
      DATA(t242) = t95.
      t241 = t242->size( ).
      DATA(t243) = 0.
      t240 = xsdbool( t241 = t243 ).
      IF t240 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t245) = t90.
      t244 = t245->find_all_statement_nodes( ).
      DATA t246 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t246.
      DATA t247 TYPE REF TO object.
      CLEAR t247.
      DATA(t248) = VALUE i( ).
      DO.
        t244->load( ).
        IF t248 >= lines( t244->items ).
          EXIT.
        ENDIF.
        CLEAR t247.
        READ TABLE t244->items INDEX t248 + 1 INTO t247.
        t248 = t248 + 1.
        DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t249.
        CLEAR t246.
        IF t247 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t249 ?= t247.
          DATA t250 TYPE REF TO object.
          t250 = t249->as_ref( ).
          t246 ?= t250.
        ELSE.
          t246 ?= t247.
        ENDIF.
        DATA t251 TYPE REF TO zlnt_runtime_map__da87443eb676.
        DATA(t252) = t4.
        DATA(t253) = t246.
        DATA(t254) = t95.
        t251 = t252->set( p0 = t253 p1 = t254 ).
      ENDDO.
    ENDDO.
    DATA(t255) = t4.
    result = t255.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_prfx_is_crrnt_clss_cnf( me->g_c_i_s_r_p_i_c_c_t_p_is_cr_cl( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_prfx_is_crrnt_clss_cnf( me->g_c_i_s_r_p_i_c_c_t_p_is_cr_cl( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prfx_is_crrnt_clss_cnf.
    CLEAR t1.
    CLEAR t1.
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
          CLEAR t2.
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
        t1 = NEW zcl_lnt_prfx_is_crrnt_clss_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_p_i_c_c_t_p_is_cr_cl( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_p_i_c_c_t_p_is_cr_cl( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1672_86bacaf40b83.
  ENDMETHOD.
ENDCLASS.
