* TS: src/rules/redundant_conversion.ts:24:1 RedundantConversion
CLASS zcl_lnt_redundant_conversion DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_rdndnt_cnvrsn_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_rd_cn_ts_rd_cnv RETURNING VALUE(result) TYPE REF TO zcl_lnt_rdndnt_cnvrsn_cnf.
    METHODS st_cn_in_sr_rl_rd_cn_ts_rd_cnv IMPORTING i_conf TYPE REF TO zcl_lnt_rdndnt_cnvrsn_cnf.
    METHODS in_in_sr_rl_rdn_cnv_ts_rdn_cnv IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_redundant_conversion.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS arthmtc_uss_sm_trgt_typ IMPORTING i_conversion TYPE REF TO zcl_lnt_expression_node i_body_source TYPE REF TO zcl_lnt_expression_node i_file TYPE REF TO zcl_lnt_abap_file i_scope TYPE REF TO zif_lnt_spaghetti_scope_node
    i_conversion_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    METHODS source_type IMPORTING i_source_75cf TYPE REF TO zcl_lnt_expression_node i_scope TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS field_chain_type IMPORTING i_field_chain TYPE REF TO zcl_lnt_expression_node i_scope TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS infer IMPORTING i_context TYPE REF TO zcl_lnt_abstract_type i_found TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS same_type IMPORTING i_first TYPE REF TO zcl_lnt_abstract_type i_second TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_redundant_conversion IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_rdndnt_cnvrsn_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |redundant_conversion|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Redundant Conversion|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Find redundant CONV expressions|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Reports CONV expressions whose operand already has the conve|.
      t11 = t11 && |rsion's target type.|.
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
      DATA(t21) = |Quickfix|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      t17 = t22.
      t15 = t17.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t23.
      t15 = t23.
    ENDIF.
    t14 = t15.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA(t27) = |DATA text TYPE string.\ntext = CONV string( text ).|.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t27.
      t25 = t28.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t25 = t29.
    ENDIF.
    t24 = t25.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |DATA text TYPE string.\ntext = text.|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t33.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t31 = t35.
    ENDIF.
    t30 = t31.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t47) = |key|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    DATA(t49) = |title|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |shortDescription|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |extendedInformation|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |tags|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |badExample|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |goodExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_rd_cn_ts_rd_cnv.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_rd_cn_ts_rd_cnv.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_rdn_cnv_ts_rdn_cnv.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_abap_release.
    DATA t6 TYPE REF TO zif_lnt_configuration.
    DATA(t7) = me->reg.
    t6 = t7->get_config( ).
    t5 = t6->get_release( ).
    DATA t8 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t10.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t10 = zcl_lnt_version_module=>release_b8cd.
    DATA(t11) = |v740sp02|.
    t9 = t10->get( p0 = t11 ).
    t8 = t9.
    t4 = zcl_lnt_version_module=>release_at_least( i_running = t5 i_required = t8 ).
    t3 = xsdbool( t4 = abap_false ).
    t2 = t3.
    IF t3 = abap_true.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE REF TO zif_lnt_configuration.
      DATA(t15) = me->reg.
      t14 = t15->get_config( ).
      t13 = t14->is_open_abap( ).
      t12 = xsdbool( t13 = abap_false ).
      t2 = t12.
    ENDIF.
    IF t2 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t16.
      result = t16.
      RETURN.
    ENDIF.
    DATA t17 TYPE abap_bool.
    DATA t18 TYPE abap_bool.
    DATA(t19) = t1.
    t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_abap_object ).
    t17 = xsdbool( t18 = abap_false ).
    IF t17 = abap_true.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t20.
      result = t20.
      RETURN.
    ENDIF.
    DATA t21 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t22 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t23 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t24) = me->reg.
    DATA t25 TYPE REF TO zcl_lnt_abap_object.
    DATA(t26) = t1.
    DATA t27 TYPE REF TO object.
    t27 = t26.
    t25 ?= t27.
    t23 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t24 i_object_19cd = t25 ).
    t22 = t23->run( ).
    t21 = t22.
    DATA t28 TYPE abap_bool.
    DATA t29 TYPE i.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t31) = t21.
    t30 = t31->zlnt_view_read_sr_bd188c319c03( ).
    t30->load( ).
    t29 = lines( t30->items ).
    DATA(t32) = 0.
    t28 = xsdbool( t29 > t32 ).
    IF t28 = abap_true.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t33.
      result = t33.
      RETURN.
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t35.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zcl_lnt_abap_object.
    DATA t38 TYPE REF TO zcl_lnt_abap_object.
    DATA(t39) = t1.
    DATA t40 TYPE REF TO object.
    t40 = t39.
    t38 ?= t40.
    t37 = t38.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t42) = t37.
    t41 = t42->parsed.
    t36 = t41.
    DATA t43 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t43.
    DATA t44 TYPE REF TO object.
    CLEAR t44.
    DATA(t45) = VALUE i( ).
    DO.
      t36->load( ).
      IF t45 >= lines( t36->items ).
        EXIT.
      ENDIF.
      CLEAR t44.
      READ TABLE t36->items INDEX t45 + 1 INTO t44.
      t45 = t45 + 1.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      CLEAR t43.
      IF t44 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t46 ?= t44.
        DATA t47 TYPE REF TO object.
        t47 = t46->as_ref( ).
        t43 ?= t47.
      ELSE.
        t43 ?= t44.
      ENDIF.
      DATA t48 TYPE REF TO zcl_lnt_structure_node.
      DATA t49 TYPE REF TO zcl_lnt_structure_node.
      DATA t50 TYPE REF TO zcl_lnt_abap_file.
      DATA(t51) = t43.
      t50 = t51.
      DATA t52 TYPE REF TO zcl_lnt_structure_node.
      DATA(t53) = t50.
      t52 = t53->structure.
      t49 = t52.
      t48 = t49.
      DATA(t54) = VALUE abap_bool( ).
      DATA t55 TYPE REF TO zcl_lnt_structure_node.
      DATA(t56) = t48.
      t55 = t56.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t58.
      t57 = t58.
      DATA(t59) = VALUE abap_bool( ).
      DATA(t60) = t55.
      IF t60 IS INITIAL.
        t59 = abap_true.
      ENDIF.
      t54 = t59.
      IF t54 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t62 TYPE REF TO zcl_lnt_structure_node.
      DATA(t63) = t48.
      t62 = t63.
      DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t61 = t62->find_all_expressions( i_type_9913 = t64 ).
      DATA t65 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t65.
      DATA t66 TYPE REF TO object.
      CLEAR t66.
      DATA(t67) = VALUE i( ).
      DO.
        t61->load( ).
        IF t67 >= lines( t61->items ).
          EXIT.
        ENDIF.
        CLEAR t66.
        READ TABLE t61->items INDEX t67 + 1 INTO t66.
        t67 = t67 + 1.
        DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t68.
        CLEAR t65.
        IF t66 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t68 ?= t66.
          DATA t69 TYPE REF TO object.
          t69 = t68->as_ref( ).
          t65 ?= t69.
        ELSE.
          t65 ?= t66.
        ENDIF.
        DATA(t70) = VALUE abap_bool( ).
        DATA t71 TYPE string.
        DATA t72 TYPE string.
        DATA t73 TYPE REF TO zcl_lnt_abstract_token.
        DATA t74 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t75) = t65.
        t74 = t75->get_first_token( ).
        t73 = t74.
        DATA t76 TYPE string.
        DATA(t77) = t73.
        t76 = t77->str.
        t72 = t76.
        DATA(t78) = strlen( t72 ).
        t71 = t72.
        IF t71 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t71 TO UPPER CASE.
        ELSE.
          t71 = zlnt_runtime_uppe_91169605024d=>full( t71 ).
        ENDIF.
        DATA(t79) = |CONV|.
        t70 = xsdbool( t71 <> t79 ).
        IF t70 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t80 TYPE REF TO zcl_lnt_expression_node.
        DATA t81 TYPE REF TO zcl_lnt_expression_node.
        DATA(t82) = t65.
        DATA(t83) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
        t81 = t82->find_direct_expression( i_type_9913 = t83 ).
        t80 = t81.
        DATA t84 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t84.
        DATA t85 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t85.
        DATA t86 TYPE REF TO zcl_lnt_expression_node.
        DATA t87 TYPE REF TO zcl_lnt_expression_node.
        DATA(t88) = t65.
        DATA(t89) = zlnt_runtime_desc_78196487750d=>zlnt_member_d143_3ba838dd8924.
        t87 = t88->find_direct_expression( i_type_9913 = t89 ).
        t86 = t87.
        DATA t90 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t90.
        DATA(t91) = VALUE abap_bool( ).
        DATA(t92) = t86.
        IF t92 IS INITIAL.
          t91 = abap_true.
        ENDIF.
        IF t91 = abap_true.
          DATA t93 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t93.
          t90 = t93.
        ELSE.
          DATA t94 TYPE REF TO zcl_lnt_expression_node.
          DATA t95 TYPE REF TO zcl_lnt_expression_node.
          DATA(t96) = t86.
          t95 = t96.
          DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
          t94 = t95->find_direct_expression( i_type_9913 = t97 ).
          t90 = t94.
        ENDIF.
        t85 = t90.
        t84 = t85.
        DATA(t98) = VALUE abap_bool( ).
        DATA(t99) = VALUE abap_bool( ).
        DATA t100 TYPE REF TO zcl_lnt_expression_node.
        DATA(t101) = t80.
        t100 = t101.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        t102 = t103.
        DATA(t104) = VALUE abap_bool( ).
        DATA(t105) = t100.
        IF t105 IS INITIAL.
          t104 = abap_true.
        ENDIF.
        t99 = t104.
        t98 = t99.
        IF t99 = abap_false.
          DATA(t106) = VALUE abap_bool( ).
          DATA t107 TYPE REF TO zcl_lnt_expression_node.
          DATA(t108) = t84.
          t107 = t108.
          DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t110.
          t109 = t110.
          DATA(t111) = VALUE abap_bool( ).
          DATA(t112) = t107.
          IF t112 IS INITIAL.
            t111 = abap_true.
          ENDIF.
          t106 = t111.
          t98 = t106.
        ENDIF.
        IF t98 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t113 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t113.
        DATA t114 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t114.
        DATA t115 TYPE REF TO zif_lnt_spaghetti_scope.
        DATA(t116) = t21.
        t115 = t116->zlnt_view_read_sr_b6b1d9e0c93e( ).
        DATA t117 TYPE REF TO zcl_lnt_position.
        CLEAR t117.
        DATA(t118) = abap_true.
        IF t118 = abap_true.
          DATA t119 TYPE REF TO zcl_lnt_position.
          DATA t120 TYPE REF TO zcl_lnt_abstract_token.
          DATA t121 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t122) = t65.
          t121 = t122->get_first_token( ).
          t120 = t121.
          DATA t123 TYPE REF TO zcl_lnt_position.
          DATA(t124) = t120.
          t123 = t124->start.
          t119 = t123.
          t117 = t119.
        ELSE.
          DATA t125 TYPE REF TO zcl_lnt_position.
          CLEAR t125.
          t117 = t125.
        ENDIF.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t126.
        DATA(t127) = abap_true.
        IF t127 = abap_true.
          DATA t128 TYPE string.
          DATA t129 TYPE REF TO zcl_lnt_abstract_file.
          DATA(t130) = t43.
          t129 = t130.
          DATA t131 TYPE string.
          DATA(t132) = t129.
          t131 = t132->filename.
          t128 = t131.
          DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t133->has = abap_true.
          t133->value = t128.
          t126 = t133.
        ELSE.
          DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t134.
          t126 = t134.
        ENDIF.
        t114 = t115->lookup_position( i_p = t117 i_filename = t126 ).
        t113 = t114.
        DATA(t135) = VALUE abap_bool( ).
        DATA t136 TYPE REF TO zif_lnt_spaghetti_scope_node.
        DATA(t137) = t113.
        t136 = t137.
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t139.
        t138 = t139.
        DATA(t140) = VALUE abap_bool( ).
        DATA(t141) = t136.
        IF t141 IS INITIAL.
          t140 = abap_true.
        ENDIF.
        t135 = t140.
        IF t135 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t142 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t142.
        DATA t143 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t143.
        DATA t144 TYPE REF TO zcl_lnt_ireference.
        CLEAR t144.
        DATA t145 TYPE REF TO zcl_lnt_ireference.
        CLEAR t145.
        DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t148 TYPE REF TO zcl_lnt_iscope_data.
        DATA t149 TYPE REF TO zif_lnt_spaghetti_scope_node.
        DATA(t150) = t113.
        t149 = t150.
        t148 = t149->get_data( ).
        t147 = t148->references.
        t146 = t147.
        DATA t151 TYPE i.
        DATA t152 TYPE i.
        DATA(t153) = t146.
        t153->load( ).
        t152 = lines( t153->items ).
        t151 = t152.
        DATA t154 TYPE i.
        DATA(t155) = 0.
        t154 = t155.
        DATA t156 TYPE REF TO zcl_lnt_ireference.
        DATA t157 TYPE REF TO zcl_lnt_ireference.
        CLEAR t157.
        t156 = t157.
        DO.
          DATA t158 TYPE abap_bool.
          DATA(t159) = t154.
          DATA(t160) = t151.
          t158 = xsdbool( t159 < t160 ).
          IF t158 = abap_false.
            EXIT.
          ENDIF.
          DATA t161 TYPE REF TO zcl_lnt_ireference.
          CLEAR t161.
          DATA t162 TYPE REF TO zcl_lnt_ireference.
          CLEAR t162.
          DATA t163 TYPE REF TO zcl_lnt_ireference.
          CLEAR t163.
          DATA(t164) = t146.
          DATA(t165) = t154.
          DATA t166 TYPE REF TO object.
          t166 = t164->get( p0 = t165 ).
          DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t167.
          CLEAR t163.
          IF t166 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t167 ?= t166.
            DATA t168 TYPE REF TO object.
            t168 = t167->as_ref( ).
            t163 ?= t168.
          ELSE.
            t163 ?= t166.
          ENDIF.
          t162 = t163.
          t161 = t162.
          DATA t169 TYPE abap_bool.
          DATA t170 TYPE abap_bool.
          DATA t171 TYPE string.
          DATA(t172) = t161.
          t171 = t172->reference_type.
          DATA(t173) = |Inferred Type|.
          t170 = xsdbool( t171 = t173 ).
          t169 = t170.
          IF t170 = abap_true.
            DATA t174 TYPE abap_bool.
            DATA t175 TYPE REF TO zcl_lnt_position.
            DATA t176 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t177 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t178) = t161.
            t177 = t178->position_7b94.
            t176 = t177.
            DATA t179 TYPE REF TO zcl_lnt_position.
            DATA t180 TYPE REF TO zcl_lnt_abstract_token.
            DATA t181 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t182) = t176.
            t181 = t182->token.
            t180 = t181.
            DATA t183 TYPE REF TO zcl_lnt_position.
            DATA(t184) = t180.
            t183 = t184->start.
            t179 = t183.
            t175 = t179.
            DATA t185 TYPE REF TO zcl_lnt_position.
            DATA t186 TYPE REF TO zcl_lnt_abstract_token.
            DATA t187 TYPE REF TO zcl_lnt_abstract_token.
            DATA t188 TYPE REF TO zcl_lnt_expression_node.
            DATA(t189) = t80.
            t188 = t189.
            t187 = t188->get_first_token( ).
            t186 = t187.
            DATA t190 TYPE REF TO zcl_lnt_position.
            DATA(t191) = t186.
            t190 = t191->start.
            t185 = t190.
            t174 = t175->equals( i_p = t185 ).
            t169 = t174.
          ENDIF.
          IF t169 = abap_true.
            DATA t192 TYPE REF TO zcl_lnt_ireference.
            CLEAR t192.
            DATA(t193) = abap_true.
            IF t193 = abap_true.
              DATA(t194) = t161.
              t192 = t194.
            ELSE.
              DATA t195 TYPE REF TO zcl_lnt_ireference.
              CLEAR t195.
              t192 = t195.
            ENDIF.
            t156 = t192.
            EXIT.
          ENDIF.
          DATA t196 TYPE i.
          DATA(t197) = t154.
          DATA(t198) = 1.
          t196 = t197 + t198.
          t154 = t196.
        ENDDO.
        DATA(t199) = t156.
        t145 = t199.
        t144 = t145.
        DATA t200 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t200.
        DATA(t201) = VALUE abap_bool( ).
        DATA(t202) = t144.
        IF t202 IS INITIAL.
          t201 = abap_true.
        ENDIF.
        IF t201 = abap_true.
          DATA t203 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t203.
          t200 = t203.
        ELSE.
          DATA t204 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t205 TYPE REF TO zcl_lnt_ireference.
          DATA(t206) = t144.
          t205 = t206.
          t204 = t205->resolved.
          t200 = t204.
        ENDIF.
        t143 = t200.
        t142 = t143.
        DATA t207 TYPE REF TO zcl_lnt_abstract_type.
        DATA t208 TYPE REF TO zcl_lnt_abstract_type.
        DATA t209 TYPE REF TO zcl_lnt_expression_node.
        DATA(t210) = t84.
        t209 = t210.
        DATA t211 TYPE REF TO zif_lnt_spaghetti_scope_node.
        DATA(t212) = t113.
        t211 = t212.
        t208 = me->source_type( i_source_75cf = t209 i_scope = t211 ).
        t207 = t208.
        DATA t213 TYPE abap_bool.
        DATA t214 TYPE abap_bool.
        DATA(t215) = t142.
        t214 = xsdbool( t215 IS BOUND AND t215 IS INSTANCE OF zcl_lnt_typed_identifier ).
        t213 = xsdbool( t214 = abap_false ).
        IF t213 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t216) = VALUE abap_bool( ).
        DATA(t217) = VALUE abap_bool( ).
        DATA(t218) = VALUE abap_bool( ).
        DATA t219 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t220) = t207.
        t219 = t220.
        DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t222.
        t221 = t222.
        DATA(t223) = VALUE abap_bool( ).
        DATA(t224) = VALUE abap_bool( ).
        DATA(t225) = t219.
        IF t225 IS INITIAL.
          t224 = abap_true.
        ENDIF.
        t223 = xsdbool( t224 = abap_false ).
        t218 = t223.
        t217 = t218.
        IF t218 = abap_true.
          DATA t226 TYPE abap_bool.
          DATA t227 TYPE REF TO zcl_lnt_abstract_type.
          DATA t228 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t229 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t230) = t142.
          t229 ?= t230.
          t228 = t229.
          DATA t231 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t232) = t228.
          t231 = t232->type_cba0.
          t227 = t231.
          DATA t233 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t234) = t207.
          t233 = t234.
          t226 = me->same_type( i_first = t227 i_second = t233 ).
          t217 = t226.
        ENDIF.
        t216 = t217.
        DATA t235 TYPE abap_bool.
        DATA t236 TYPE abap_bool.
        DATA(t237) = t65.
        DATA t238 TYPE REF TO zcl_lnt_expression_node.
        DATA(t239) = t84.
        t238 = t239.
        DATA(t240) = t43.
        DATA t241 TYPE REF TO zif_lnt_spaghetti_scope_node.
        DATA(t242) = t113.
        t241 = t242.
        DATA t243 TYPE REF TO zcl_lnt_abstract_type.
        DATA t244 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t245 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t246) = t142.
        t245 ?= t246.
        t244 = t245.
        DATA t247 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t248) = t244.
        t247 = t248->type_cba0.
        t243 = t247.
        t236 = me->arthmtc_uss_sm_trgt_typ( i_conversion = t237 i_body_source = t238 i_file = t240 i_scope = t241 i_conversion_type = t243 ).
        t235 = t236.
        DATA t249 TYPE abap_bool.
        DATA t250 TYPE abap_bool.
        DATA(t251) = t216.
        DATA(t252) = abap_false.
        t250 = xsdbool( t251 = t252 ).
        t249 = t250.
        IF t250 = abap_true.
          DATA t253 TYPE abap_bool.
          DATA(t254) = t235.
          DATA(t255) = abap_false.
          t253 = xsdbool( t254 = t255 ).
          t249 = t253.
        ENDIF.
        IF t249 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t256 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t256.
        DATA t257 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t257.
        DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t260) = t65.
        t259 = t260->get_direct_tokens( ).
        t258 = t259.
        DATA t261 TYPE i.
        DATA t262 TYPE i.
        DATA(t263) = t258.
        t263->load( ).
        t262 = lines( t263->items ).
        t261 = t262.
        DATA t264 TYPE i.
        DATA(t265) = 0.
        t264 = t265.
        DATA t266 TYPE REF TO zcl_lnt_abstract_token.
        DATA t267 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t267.
        t266 = t267.
        DO.
          DATA t268 TYPE abap_bool.
          DATA(t269) = t264.
          DATA(t270) = t261.
          t268 = xsdbool( t269 < t270 ).
          IF t268 = abap_false.
            EXIT.
          ENDIF.
          DATA t271 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t271.
          DATA t272 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t272.
          DATA t273 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t273.
          DATA(t274) = t258.
          DATA(t275) = t264.
          DATA t276 TYPE REF TO object.
          t276 = t274->get( p0 = t275 ).
          DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t277.
          CLEAR t273.
          IF t276 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t277 ?= t276.
            DATA t278 TYPE REF TO object.
            t278 = t277->as_ref( ).
            t273 ?= t278.
          ELSE.
            t273 ?= t276.
          ENDIF.
          t272 = t273.
          t271 = t272.
          DATA t279 TYPE abap_bool.
          DATA t280 TYPE abap_bool.
          DATA t281 TYPE string.
          DATA t282 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t283) = t271.
          t282 = t283.
          DATA t284 TYPE string.
          DATA(t285) = t282.
          t284 = t285->str.
          t281 = t284.
          DATA(t286) = |)|.
          t280 = xsdbool( t281 = t286 ).
          t279 = t280.
          IF t280 = abap_true.
            DATA t287 TYPE abap_bool.
            DATA t288 TYPE REF TO zcl_lnt_position.
            DATA t289 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t290) = t271.
            t289 = t290.
            DATA t291 TYPE REF TO zcl_lnt_position.
            DATA(t292) = t289.
            t291 = t292->start.
            t288 = t291.
            DATA t293 TYPE REF TO zcl_lnt_position.
            DATA t294 TYPE REF TO zcl_lnt_abstract_token.
            DATA t295 TYPE REF TO zcl_lnt_abstract_token.
            DATA t296 TYPE REF TO zcl_lnt_expression_node.
            DATA(t297) = t84.
            t296 = t297.
            t295 = t296->get_last_token( ).
            t294 = t295.
            DATA t298 TYPE REF TO zcl_lnt_position.
            DATA(t299) = t294.
            t298 = t299->start.
            t293 = t298.
            t287 = t288->is_after( i_p = t293 ).
            t279 = t287.
          ENDIF.
          IF t279 = abap_true.
            DATA t300 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t300.
            DATA(t301) = abap_true.
            IF t301 = abap_true.
              DATA(t302) = t271.
              t300 = t302.
            ELSE.
              DATA t303 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t303.
              t300 = t303.
            ENDIF.
            t266 = t300.
            EXIT.
          ENDIF.
          DATA t304 TYPE i.
          DATA(t305) = t264.
          DATA(t306) = 1.
          t304 = t305 + t306.
          t264 = t304.
        ENDDO.
        DATA(t307) = t266.
        t257 = t307.
        t256 = t257.
        DATA(t308) = VALUE abap_bool( ).
        DATA t309 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t310) = t256.
        t309 = t310.
        DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t312.
        t311 = t312.
        DATA(t313) = VALUE abap_bool( ).
        DATA(t314) = t309.
        IF t314 IS INITIAL.
          t313 = abap_true.
        ENDIF.
        t308 = t313.
        IF t308 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t315) = VALUE abap_bool( ).
        DATA(t316) = VALUE abap_bool( ).
        DATA(t317) = VALUE abap_bool( ).
        DATA t318 TYPE REF TO zcl_lnt_expression_node.
        DATA t319 TYPE REF TO zcl_lnt_expression_node.
        DATA t320 TYPE REF TO zcl_lnt_expression_node.
        DATA(t321) = t84.
        t320 = t321.
        DATA(t322) = zlnt_runtime_desc_78196487750d=>zlnt_member_d91_10c609bb0b604f.
        t319 = t320->find_direct_expression( i_type_9913 = t322 ).
        t318 = t319.
        DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t324.
        t323 = t324.
        DATA(t325) = VALUE abap_bool( ).
        DATA(t326) = VALUE abap_bool( ).
        DATA(t327) = t318.
        IF t327 IS INITIAL.
          t326 = abap_true.
        ENDIF.
        t325 = xsdbool( t326 = abap_false ).
        t317 = t325.
        t316 = t317.
        IF t317 = abap_false.
          DATA(t328) = VALUE abap_bool( ).
          DATA t329 TYPE REF TO zcl_lnt_abstract_token.
          DATA t330 TYPE REF TO zcl_lnt_abstract_token.
          DATA t331 TYPE REF TO zcl_lnt_expression_node.
          DATA(t332) = t84.
          t331 = t332.
          DATA(t333) = |&&|.
          t330 = t331->find_direct_token_by_text( i_text = t333 ).
          t329 = t330.
          DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t335.
          t334 = t335.
          DATA(t336) = VALUE abap_bool( ).
          DATA(t337) = VALUE abap_bool( ).
          DATA(t338) = t329.
          IF t338 IS INITIAL.
            t337 = abap_true.
          ENDIF.
          t336 = xsdbool( t337 = abap_false ).
          t328 = t336.
          t316 = t328.
        ENDIF.
        t315 = t316.
        DATA t339 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t339.
        DATA t340 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t340.
        DATA t341 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t341.
        DATA(t342) = t43.
        DATA t343 TYPE REF TO zcl_lnt_position.
        DATA t344 TYPE REF TO zcl_lnt_abstract_token.
        DATA t345 TYPE REF TO zcl_lnt_abstract_token.
        DATA t346 TYPE REF TO zcl_lnt_expression_node.
        DATA(t347) = t84.
        t346 = t347.
        t345 = t346->get_last_token( ).
        t344 = t345.
        DATA t348 TYPE REF TO zcl_lnt_position.
        DATA t349 TYPE f.
        DATA t350 TYPE REF TO zcl_lnt_position.
        DATA t351 TYPE REF TO zcl_lnt_position.
        DATA(t352) = t344.
        t351 = t352->start.
        t350 = t351.
        DATA t353 TYPE f.
        DATA(t354) = t350.
        t353 = t354->row.
        t349 = t353.
        DATA t355 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t356 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t357 TYPE REF TO zcl_lnt_position.
        DATA t358 TYPE REF TO zcl_lnt_position.
        DATA(t359) = t344.
        t358 = t359->start.
        t357 = t358.
        DATA t360 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t361) = t357.
        t360 = t361->col.
        t356 = t360.
        DATA t362 TYPE f.
        DATA t363 TYPE i.
        DATA t364 TYPE string.
        DATA(t365) = t344.
        t364 = t365->str.
        DATA(t366) = strlen( t364 ).
        t363 = t366.
        t362 = t363.
        DATA(t367) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t367->has = abap_true.
        t367->value = t362.
        t355 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t356 right = t367 op = `+` ).
        t348 = NEW zcl_lnt_position( i_row = t349 i_col = t355 ).
        t343 = t348.
        DATA t368 TYPE REF TO zcl_lnt_position.
        DATA t369 TYPE REF TO zcl_lnt_abstract_token.
        DATA t370 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t371) = t256.
        t370 = t371.
        t369 = t370.
        DATA t372 TYPE REF TO zcl_lnt_position.
        DATA t373 TYPE f.
        DATA t374 TYPE REF TO zcl_lnt_position.
        DATA t375 TYPE REF TO zcl_lnt_position.
        DATA(t376) = t369.
        t375 = t376->start.
        t374 = t375.
        DATA t377 TYPE f.
        DATA(t378) = t374.
        t377 = t378->row.
        t373 = t377.
        DATA t379 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t380 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t381 TYPE REF TO zcl_lnt_position.
        DATA t382 TYPE REF TO zcl_lnt_position.
        DATA(t383) = t369.
        t382 = t383->start.
        t381 = t382.
        DATA t384 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t385) = t381.
        t384 = t385->col.
        t380 = t384.
        DATA t386 TYPE f.
        DATA t387 TYPE i.
        DATA t388 TYPE string.
        DATA(t389) = t369.
        t388 = t389->str.
        DATA(t390) = strlen( t388 ).
        t387 = t390.
        t386 = t387.
        DATA(t391) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t391->has = abap_true.
        t391->value = t386.
        t379 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t380 right = t391 op = `+` ).
        t372 = NEW zcl_lnt_position( i_row = t373 i_col = t379 ).
        t368 = t372.
        DATA(t392) = VALUE string( ).
        DATA(t393) = t315.
        IF t393 = abap_true.
          DATA(t394) = |)|.
          t392 = t394.
        ELSE.
          DATA(t395) = ||.
          t392 = t395.
        ENDIF.
        t341 = zcl_lnt_edit_helper=>replace_range( i_file = t342 i_start = t343 i_end = t368 i_text = t392 ).
        DATA t396 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t396.
        DATA(t397) = t43.
        DATA t398 TYPE REF TO zcl_lnt_position.
        DATA t399 TYPE REF TO zcl_lnt_abstract_token.
        DATA t400 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t401) = t65.
        t400 = t401->get_first_token( ).
        t399 = t400.
        DATA t402 TYPE REF TO zcl_lnt_position.
        DATA(t403) = t399.
        t402 = t403->start.
        t398 = t402.
        DATA t404 TYPE REF TO zcl_lnt_position.
        DATA t405 TYPE REF TO zcl_lnt_abstract_token.
        DATA t406 TYPE REF TO zcl_lnt_abstract_token.
        DATA t407 TYPE REF TO zcl_lnt_expression_node.
        DATA(t408) = t84.
        t407 = t408.
        t406 = t407->get_first_token( ).
        t405 = t406.
        DATA t409 TYPE REF TO zcl_lnt_position.
        DATA(t410) = t405.
        t409 = t410->start.
        t404 = t409.
        DATA(t411) = VALUE string( ).
        DATA(t412) = t315.
        IF t412 = abap_true.
          DATA(t413) = |(|.
          t411 = t413.
        ELSE.
          DATA(t414) = ||.
          t411 = t414.
        ENDIF.
        t396 = zcl_lnt_edit_helper=>replace_range( i_file = t397 i_start = t398 i_end = t404 i_text = t411 ).
        t340 = zcl_lnt_edit_helper=>merge( i_fix1 = t341 i_fix2 = t396 ).
        t339 = t340.
        DATA(t415) = t34.
        DATA t416 TYPE REF TO zcl_lnt_issue.
        CLEAR t416.
        DATA(t417) = t43.
        DATA t418 TYPE REF TO zcl_lnt_position.
        DATA t419 TYPE REF TO zcl_lnt_abstract_token.
        DATA t420 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t421) = t65.
        t420 = t421->get_first_token( ).
        t419 = t420.
        DATA t422 TYPE REF TO zcl_lnt_position.
        DATA(t423) = t419.
        t422 = t423->start.
        t418 = t422.
        DATA t424 TYPE REF TO zcl_lnt_position.
        DATA t425 TYPE REF TO zcl_lnt_abstract_token.
        DATA t426 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t427) = t256.
        t426 = t427.
        t425 = t426.
        DATA t428 TYPE REF TO zcl_lnt_position.
        DATA t429 TYPE f.
        DATA t430 TYPE REF TO zcl_lnt_position.
        DATA t431 TYPE REF TO zcl_lnt_position.
        DATA(t432) = t425.
        t431 = t432->start.
        t430 = t431.
        DATA t433 TYPE f.
        DATA(t434) = t430.
        t433 = t434->row.
        t429 = t433.
        DATA t435 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t436 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t437 TYPE REF TO zcl_lnt_position.
        DATA t438 TYPE REF TO zcl_lnt_position.
        DATA(t439) = t425.
        t438 = t439->start.
        t437 = t438.
        DATA t440 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t441) = t437.
        t440 = t441->col.
        t436 = t440.
        DATA t442 TYPE f.
        DATA t443 TYPE i.
        DATA t444 TYPE string.
        DATA(t445) = t425.
        t444 = t445->str.
        DATA(t446) = strlen( t444 ).
        t443 = t446.
        t442 = t443.
        DATA(t447) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t447->has = abap_true.
        t447->value = t442.
        t435 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t436 right = t447 op = `+` ).
        t428 = NEW zcl_lnt_position( i_row = t429 i_col = t435 ).
        t424 = t428.
        DATA(t448) = |Redundant CONV expression|.
        DATA(t449) = VALUE string( ).
        DATA t450 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t450.
        DATA t451 TYPE string.
        DATA(t452) = |redundant_conversion|.
        t451 = t452.
        DATA t453 TYPE string.
        DATA(t454) = |Redundant Conversion|.
        t453 = t454.
        DATA t455 TYPE string.
        DATA(t456) = |Find redundant CONV expressions|.
        t455 = t456.
        DATA t457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t457.
        DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t458.
        DATA(t459) = abap_true.
        IF t459 = abap_true.
          DATA(t460) = |Reports CONV expressions whose operand already has the conve|.
          t460 = t460 && |rsion's target type.|.
          DATA(t461) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t461->has = abap_true.
          t461->value = t460.
          t458 = t461.
        ELSE.
          DATA t462 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t462.
          t458 = t462.
        ENDIF.
        t457 = t458.
        DATA t463 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t463.
        DATA t464 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t464.
        DATA(t465) = abap_true.
        IF t465 = abap_true.
          DATA t466 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t467 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t468 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t468.
          t467 = t468.
          DATA(t469) = t467.
          DATA(t470) = |Quickfix|.
          t469->load( ).
          APPEND t470 TO t469->items.
          t469->save( ).
          DATA(t471) = t467.
          t466 = t471.
          t464 = t466.
        ELSE.
          DATA t472 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t472.
          t464 = t472.
        ENDIF.
        t463 = t464.
        DATA t473 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t473.
        DATA t474 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t474.
        DATA(t475) = abap_true.
        IF t475 = abap_true.
          DATA(t476) = |DATA text TYPE string.\ntext = CONV string( text ).|.
          DATA(t477) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t477->has = abap_true.
          t477->value = t476.
          t474 = t477.
        ELSE.
          DATA t478 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t478.
          t474 = t478.
        ENDIF.
        t473 = t474.
        DATA t479 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t479.
        DATA t480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t480.
        DATA(t481) = abap_true.
        IF t481 = abap_true.
          DATA(t482) = |DATA text TYPE string.\ntext = text.|.
          DATA(t483) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t483->has = abap_true.
          t483->value = t482.
          t480 = t483.
        ELSE.
          DATA t484 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t484.
          t480 = t484.
        ENDIF.
        t479 = t480.
        DATA t485 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t486.
        t485 = t486.
        DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t488 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t488.
        t487 = t488.
        t450 = NEW zcl_lnt_irule_metadata( i_key = t451 i_title = t453 i_short_description = t455 i_bad_example = t473 i_good_example = t479 i_extended_information = t457 i_tags = t463 i_pragma = t485 i_pseudo_comment = t487 ).
        CREATE OBJECT t450->zlnt_view_ownkeys_b0e8086400eb.
        t450->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t489.
        IF t450->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t450->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t489 ).
        ENDIF.
        DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t490.
        IF t450->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t450->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t490 ).
        ENDIF.
        DATA t491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t491.
        IF t450->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t450->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t491 ).
        ENDIF.
        DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t492.
        IF t450->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t450->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t492 ).
        ENDIF.
        DATA t493 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t493.
        IF t450->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t450->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t493 ).
        ENDIF.
        DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t494.
        IF t450->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t450->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t494 ).
        ENDIF.
        DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t495.
        IF t450->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t450->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t495 ).
        ENDIF.
        CREATE OBJECT t450->zlnt_json_ownkeys_70e5fd461788.
        t450->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t496) = |key|.
        DATA t497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t497.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = t496 p1 = t497 ).
        ENDIF.
        DATA(t498) = |title|.
        DATA t499 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t499.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = t498 p1 = t499 ).
        ENDIF.
        DATA(t500) = |shortDescription|.
        DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t501.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = t500 p1 = t501 ).
        ENDIF.
        DATA(t502) = |extendedInformation|.
        DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t503.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = t502 p1 = t503 ).
        ENDIF.
        DATA(t504) = |tags|.
        DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t505.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = t504 p1 = t505 ).
        ENDIF.
        DATA(t506) = |badExample|.
        DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t507.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = t506 p1 = t507 ).
        ENDIF.
        DATA(t508) = |goodExample|.
        DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t509.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = t508 p1 = t509 ).
        ENDIF.
        t449 = t450->key.
        DATA t510 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t511) = me->conf.
        t510 = t511->zlnt_view_read_sr_15c06369f827( ).
        DATA t512 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t512.
        DATA(t513) = abap_true.
        IF t513 = abap_true.
          DATA(t514) = t339.
          t512 = t514.
        ELSE.
          DATA t515 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t515.
          t512 = t515.
        ENDIF.
        DATA t516 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t516.
        t416 = zcl_lnt_issue=>at_range( i_file = t417 i_start = t418 i_end = t424 i_message_26cb = t448 i_key = t449 i_severity = t510 i_fix = t512 i_alternative_fixes = t516 ).
        t415->load( ).
        APPEND t416 TO t415->items.
        t415->save( ).
      ENDDO.
    ENDDO.
    DATA(t517) = t34.
    result = t517.

  ENDMETHOD.

  METHOD arthmtc_uss_sm_trgt_typ.
    DATA(t1) = i_conversion.
    DATA(t2) = i_body_source.
    DATA(t3) = i_file.
    DATA(t4) = i_scope.
    DATA(t5) = i_conversion_type.
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = t2.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d91_10c609bb0b604f.
    t8 = t9->find_direct_expression( i_type_9913 = t10 ).
    t7 = t8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t7.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t6 = t13.
    IF t6 = abap_true.
      DATA(t15) = abap_false.
      result = t15.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zcl_lnt_abap_file.
    DATA(t21) = t3.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t23) = t20.
    t22 = t23->statements.
    t19 = t22.
    t18 = t19.
    DATA t24 TYPE i.
    DATA t25 TYPE i.
    DATA(t26) = t18.
    t26->load( ).
    t25 = lines( t26->items ).
    t24 = t25.
    DATA t27 TYPE i.
    DATA(t28) = 0.
    t27 = t28.
    DATA t29 TYPE REF TO zcl_lnt_statement_node.
    DATA t30 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t30.
    t29 = t30.
    DO.
      DATA t31 TYPE abap_bool.
      DATA(t32) = t27.
      DATA(t33) = t24.
      t31 = xsdbool( t32 < t33 ).
      IF t31 = abap_false.
        EXIT.
      ENDIF.
      DATA t34 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t34.
      DATA t35 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t35.
      DATA t36 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t36.
      DATA(t37) = t18.
      DATA(t38) = t27.
      DATA t39 TYPE REF TO object.
      t39 = t37->get( p0 = t38 ).
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      CLEAR t36.
      IF t39 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t40 ?= t39.
        DATA t41 TYPE REF TO object.
        t41 = t40->as_ref( ).
        t36 ?= t41.
      ELSE.
        t36 ?= t39.
      ENDIF.
      t35 = t36.
      t34 = t35.
      DATA t42 TYPE abap_bool.
      DATA(t43) = t34.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t45) = t1.
      t44 = t45->get_first_token( ).
      t42 = t43->includes_token( i_search_b3ca = t44 ).
      IF t42 = abap_true.
        DATA t46 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t46.
        DATA(t47) = abap_true.
        IF t47 = abap_true.
          DATA(t48) = t34.
          t46 = t48.
        ELSE.
          DATA t49 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t49.
          t46 = t49.
        ENDIF.
        t29 = t46.
        EXIT.
      ENDIF.
      DATA t50 TYPE i.
      DATA(t51) = t27.
      DATA(t52) = 1.
      t50 = t51 + t52.
      t27 = t50.
    ENDDO.
    DATA(t53) = t29.
    t17 = t53.
    t16 = t17.
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = VALUE abap_bool( ).
    DATA t56 TYPE REF TO zif_lnt_statement.
    CLEAR t56.
    DATA t57 TYPE REF TO zcl_lnt_statement_node.
    DATA(t58) = t16.
    t57 = t58.
    DATA t59 TYPE REF TO zif_lnt_statement.
    CLEAR t59.
    DATA(t60) = VALUE abap_bool( ).
    DATA(t61) = t57.
    IF t61 IS INITIAL.
      t60 = abap_true.
    ENDIF.
    IF t60 = abap_true.
      DATA t62 TYPE REF TO zif_lnt_statement.
      CLEAR t62.
      t59 = t62.
    ELSE.
      DATA t63 TYPE REF TO zif_lnt_statement.
      DATA t64 TYPE REF TO zcl_lnt_statement_node.
      DATA(t65) = t57.
      t64 = t65.
      t63 = t64->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t59 = t63.
    ENDIF.
    t56 = t59.
    t55 = xsdbool( t56 IS BOUND AND t56 IS INSTANCE OF zcl_lnt_st_move ).
    t54 = xsdbool( t55 = abap_false ).
    IF t54 = abap_true.
      DATA(t66) = abap_false.
      result = t66.
      RETURN.
    ENDIF.
    DATA t67 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t67.
    DATA t68 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t68.
    DATA t69 TYPE REF TO zcl_lnt_expression_node.
    DATA t70 TYPE REF TO zcl_lnt_expression_node.
    DATA t71 TYPE REF TO zcl_lnt_statement_node.
    DATA(t72) = t16.
    t71 = t72.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t70 = t71->find_direct_expression( i_type_9913 = t73 ).
    t69 = t70.
    DATA t74 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t74.
    DATA(t75) = VALUE abap_bool( ).
    DATA(t76) = t69.
    IF t76 IS INITIAL.
      t75 = abap_true.
    ENDIF.
    IF t75 = abap_true.
      DATA t77 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t77.
      t74 = t77.
    ELSE.
      DATA t78 TYPE REF TO zcl_lnt_abstract_token.
      DATA t79 TYPE REF TO zcl_lnt_expression_node.
      DATA(t80) = t69.
      t79 = t80.
      t78 = t79->get_first_token( ).
      t74 = t78.
    ENDIF.
    t68 = t74.
    t67 = t68.
    DATA(t81) = VALUE abap_bool( ).
    DATA t82 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t83) = t67.
    t82 = t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    t84 = t85.
    DATA(t86) = VALUE abap_bool( ).
    DATA(t87) = t82.
    IF t87 IS INITIAL.
      t86 = abap_true.
    ENDIF.
    t81 = t86.
    IF t81 = abap_true.
      DATA(t88) = abap_false.
      result = t88.
      RETURN.
    ENDIF.
    DATA t89 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t89.
    DATA t90 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t90.
    DATA t91 TYPE REF TO zcl_lnt_ireference.
    CLEAR t91.
    DATA t92 TYPE REF TO zcl_lnt_ireference.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t95 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t96) = t4.
    t95 = t96->get_data( ).
    t94 = t95->references.
    t93 = t94.
    DATA t97 TYPE i.
    DATA t98 TYPE i.
    DATA(t99) = t93.
    t99->load( ).
    t98 = lines( t99->items ).
    t97 = t98.
    DATA t100 TYPE i.
    DATA(t101) = 0.
    t100 = t101.
    DATA t102 TYPE REF TO zcl_lnt_ireference.
    DATA t103 TYPE REF TO zcl_lnt_ireference.
    CLEAR t103.
    t102 = t103.
    DO.
      DATA t104 TYPE abap_bool.
      DATA(t105) = t100.
      DATA(t106) = t97.
      t104 = xsdbool( t105 < t106 ).
      IF t104 = abap_false.
        EXIT.
      ENDIF.
      DATA t107 TYPE REF TO zcl_lnt_ireference.
      CLEAR t107.
      DATA t108 TYPE REF TO zcl_lnt_ireference.
      CLEAR t108.
      DATA t109 TYPE REF TO zcl_lnt_ireference.
      CLEAR t109.
      DATA(t110) = t93.
      DATA(t111) = t100.
      DATA t112 TYPE REF TO object.
      t112 = t110->get( p0 = t111 ).
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t113.
      CLEAR t109.
      IF t112 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t113 ?= t112.
        DATA t114 TYPE REF TO object.
        t114 = t113->as_ref( ).
        t109 ?= t114.
      ELSE.
        t109 ?= t112.
      ENDIF.
      t108 = t109.
      t107 = t108.
      DATA t115 TYPE abap_bool.
      DATA t116 TYPE abap_bool.
      DATA t117 TYPE string.
      DATA(t118) = t107.
      t117 = t118->reference_type.
      DATA(t119) = |Write To|.
      t116 = xsdbool( t117 = t119 ).
      t115 = t116.
      IF t116 = abap_true.
        DATA t120 TYPE abap_bool.
        DATA t121 TYPE REF TO zcl_lnt_position.
        DATA t122 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t123 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t124) = t107.
        t123 = t124->position_7b94.
        t122 = t123.
        DATA t125 TYPE REF TO zcl_lnt_position.
        DATA t126 TYPE REF TO zcl_lnt_abstract_token.
        DATA t127 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t128) = t122.
        t127 = t128->token.
        t126 = t127.
        DATA t129 TYPE REF TO zcl_lnt_position.
        DATA(t130) = t126.
        t129 = t130->start.
        t125 = t129.
        t121 = t125.
        DATA t131 TYPE REF TO zcl_lnt_position.
        DATA t132 TYPE REF TO zcl_lnt_abstract_token.
        DATA t133 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t134) = t67.
        t133 = t134.
        t132 = t133.
        DATA t135 TYPE REF TO zcl_lnt_position.
        DATA(t136) = t132.
        t135 = t136->start.
        t131 = t135.
        t120 = t121->equals( i_p = t131 ).
        t115 = t120.
      ENDIF.
      IF t115 = abap_true.
        DATA t137 TYPE REF TO zcl_lnt_ireference.
        CLEAR t137.
        DATA(t138) = abap_true.
        IF t138 = abap_true.
          DATA(t139) = t107.
          t137 = t139.
        ELSE.
          DATA t140 TYPE REF TO zcl_lnt_ireference.
          CLEAR t140.
          t137 = t140.
        ENDIF.
        t102 = t137.
        EXIT.
      ENDIF.
      DATA t141 TYPE i.
      DATA(t142) = t100.
      DATA(t143) = 1.
      t141 = t142 + t143.
      t100 = t141.
    ENDDO.
    DATA(t144) = t102.
    t92 = t144.
    t91 = t92.
    DATA t145 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t145.
    DATA(t146) = VALUE abap_bool( ).
    DATA(t147) = t91.
    IF t147 IS INITIAL.
      t146 = abap_true.
    ENDIF.
    IF t146 = abap_true.
      DATA t148 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t148.
      t145 = t148.
    ELSE.
      DATA t149 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t150 TYPE REF TO zcl_lnt_ireference.
      DATA(t151) = t91.
      t150 = t151.
      t149 = t150->resolved.
      t145 = t149.
    ENDIF.
    t90 = t145.
    t89 = t90.
    DATA t152 TYPE abap_bool.
    DATA t153 TYPE abap_bool.
    DATA(t154) = t89.
    t153 = xsdbool( t154 IS BOUND AND t154 IS INSTANCE OF zcl_lnt_typed_identifier ).
    t152 = t153.
    IF t153 = abap_true.
      DATA t155 TYPE abap_bool.
      DATA(t156) = t5.
      DATA t157 TYPE REF TO zcl_lnt_abstract_type.
      DATA t158 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t159 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t160) = t89.
      t159 ?= t160.
      t158 = t159.
      DATA t161 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t162) = t158.
      t161 = t162->type_cba0.
      t157 = t161.
      t155 = me->same_type( i_first = t156 i_second = t157 ).
      t152 = t155.
    ENDIF.
    result = t152.

  ENDMETHOD.

  METHOD source_type.
    DATA(t1) = i_source_75cf.
    DATA(t2) = i_scope.
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE abap_bool.
      DATA(t17) = t10.
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_expression_node ).
      t15 = xsdbool( t16 = abap_false ).
      IF t15 = abap_true.
        CONTINUE.
      ELSE.
        DATA t18 TYPE abap_bool.
        DATA t19 TYPE REF TO zif_lnt_statement_runnable.
        DATA t20 TYPE REF TO zcl_lnt_expression_node.
        DATA(t21) = t10.
        DATA t22 TYPE REF TO object.
        t22 = t21.
        t20 ?= t22.
        t19 = t20->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_field_chain ).
        IF t18 = abap_true.
          DATA t23 TYPE REF TO zcl_lnt_abstract_type.
          DATA t24 TYPE REF TO zcl_lnt_expression_node.
          DATA(t25) = t10.
          DATA t26 TYPE REF TO object.
          t26 = t25.
          t24 ?= t26.
          DATA(t27) = t2.
          t23 = me->field_chain_type( i_field_chain = t24 i_scope = t27 ).
          t3 = t23.
          DATA(t28) = VALUE abap_bool( ).
          DATA t29 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t30) = t3.
          t29 = t30.
          DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t32.
          t31 = t32.
          DATA(t33) = VALUE abap_bool( ).
          DATA(t34) = t29.
          IF t34 IS INITIAL.
            t33 = abap_true.
          ENDIF.
          t28 = t33.
          IF t28 = abap_true.
            DATA t35 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t35.
            result = t35.
            RETURN.
          ENDIF.
        ELSE.
          DATA t36 TYPE abap_bool.
          DATA t37 TYPE REF TO zif_lnt_statement_runnable.
          DATA t38 TYPE REF TO zcl_lnt_expression_node.
          DATA(t39) = t10.
          DATA t40 TYPE REF TO object.
          t40 = t39.
          t38 ?= t40.
          t37 = t38->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t36 = xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_st_expres_constant ).
          IF t36 = abap_true.
            DATA t41 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t41.
            DATA(t42) = t3.
            DATA t43 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t43.
            DATA(t44) = abap_true.
            IF t44 = abap_true.
              DATA t45 TYPE REF TO zcl_lnt_abstract_type.
              DATA t46 TYPE REF TO zcl_lnt_expression_node.
              DATA(t47) = t10.
              DATA t48 TYPE REF TO object.
              t48 = t47.
              t46 ?= t48.
              t45 = zcl_lnt_sy_expres_constant=>run_syntax( i_node = t46 ).
              t43 = t45.
            ELSE.
              DATA t49 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t49.
              t43 = t49.
            ENDIF.
            t41 = me->infer( i_context = t42 i_found = t43 ).
            t3 = t41.
          ELSE.
            DATA t50 TYPE abap_bool.
            DATA t51 TYPE REF TO zif_lnt_statement_runnable.
            DATA t52 TYPE REF TO zcl_lnt_expression_node.
            DATA(t53) = t10.
            DATA t54 TYPE REF TO object.
            t54 = t53.
            t52 ?= t54.
            t51 = t52->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
            t50 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_st_source ).
            IF t50 = abap_true.
              DATA t55 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t56) = t3.
              DATA t57 TYPE REF TO zcl_lnt_abstract_type.
              DATA t58 TYPE REF TO zcl_lnt_expression_node.
              DATA(t59) = t10.
              DATA t60 TYPE REF TO object.
              t60 = t59.
              t58 ?= t60.
              DATA(t61) = t2.
              t57 = me->source_type( i_source_75cf = t58 i_scope = t61 ).
              t55 = me->infer( i_context = t56 i_found = t57 ).
              t3 = t55.
            ELSE.
              DATA t62 TYPE abap_bool.
              DATA t63 TYPE REF TO zif_lnt_statement_runnable.
              DATA t64 TYPE REF TO zcl_lnt_expression_node.
              DATA(t65) = t10.
              DATA t66 TYPE REF TO object.
              t66 = t65.
              t64 ?= t66.
              t63 = t64->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
              t62 = xsdbool( t63 IS BOUND AND t63 IS INSTANCE OF zcl_lnt_arith_operator ).
              IF t62 = abap_true.
                DATA t67 TYPE abap_bool.
                DATA t68 TYPE string.
                DATA t69 TYPE REF TO zcl_lnt_expression_node.
                DATA(t70) = t10.
                DATA t71 TYPE REF TO object.
                t71 = t70.
                t69 ?= t71.
                t68 = t69->concat_tokens( ).
                DATA(t72) = |**|.
                t67 = xsdbool( t68 = t72 ).
                IF t67 = abap_true.
                  DATA t73 TYPE REF TO zcl_lnt_float_type.
                  DATA t74 TYPE REF TO zcl_lnt_abstract_type_data.
                  CLEAR t74.
                  t73 = NEW zcl_lnt_float_type( i_input_967e = t74 ).
                  t3 = t73.
                ENDIF.
              ELSE.
                DATA t75 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t75.
                result = t75.
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t76 TYPE abap_bool.
    DATA t77 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t78) = t1.
    DATA(t79) = |&&|.
    t77 = t78->find_direct_token_by_text( i_text = t79 ).
    t76 = xsdbool( t77 IS BOUND ).
    IF t76 = abap_true.
      DATA t80 TYPE REF TO zcl_lnt_string_type.
      DATA t81 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t81.
      t80 = zcl_lnt_string_type=>get_db65( i_input_967e = t81 ).
      result = t80.
      RETURN.
    ENDIF.
    DATA(t82) = t3.
    result = t82.

  ENDMETHOD.

  METHOD field_chain_type.
    DATA(t1) = i_field_chain.
    DATA(t2) = i_scope.
    DATA t3 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_ireference.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_ireference.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t10) = t2.
    t9 = t10->get_data( ).
    t8 = t9->references.
    t7 = t8.
    DATA t11 TYPE i.
    DATA t12 TYPE i.
    DATA(t13) = t7.
    t13->load( ).
    t12 = lines( t13->items ).
    t11 = t12.
    DATA t14 TYPE i.
    DATA(t15) = 0.
    t14 = t15.
    DATA t16 TYPE REF TO zcl_lnt_ireference.
    DATA t17 TYPE REF TO zcl_lnt_ireference.
    CLEAR t17.
    t16 = t17.
    DO.
      DATA t18 TYPE abap_bool.
      DATA(t19) = t14.
      DATA(t20) = t11.
      t18 = xsdbool( t19 < t20 ).
      IF t18 = abap_false.
        EXIT.
      ENDIF.
      DATA t21 TYPE REF TO zcl_lnt_ireference.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_ireference.
      CLEAR t22.
      DATA t23 TYPE REF TO zcl_lnt_ireference.
      CLEAR t23.
      DATA(t24) = t7.
      DATA(t25) = t14.
      DATA t26 TYPE REF TO object.
      t26 = t24->get( p0 = t25 ).
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t23.
      IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t26.
        DATA t28 TYPE REF TO object.
        t28 = t27->as_ref( ).
        t23 ?= t28.
      ELSE.
        t23 ?= t26.
      ENDIF.
      t22 = t23.
      t21 = t22.
      DATA t29 TYPE abap_bool.
      DATA t30 TYPE abap_bool.
      DATA t31 TYPE string.
      DATA(t32) = t21.
      t31 = t32->reference_type.
      DATA(t33) = |Read From|.
      t30 = xsdbool( t31 = t33 ).
      t29 = t30.
      IF t30 = abap_true.
        DATA t34 TYPE abap_bool.
        DATA t35 TYPE REF TO zcl_lnt_position.
        DATA t36 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t37 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t38) = t21.
        t37 = t38->position_7b94.
        t36 = t37.
        DATA t39 TYPE REF TO zcl_lnt_position.
        DATA t40 TYPE REF TO zcl_lnt_abstract_token.
        DATA t41 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t42) = t36.
        t41 = t42->token.
        t40 = t41.
        DATA t43 TYPE REF TO zcl_lnt_position.
        DATA(t44) = t40.
        t43 = t44->start.
        t39 = t43.
        t35 = t39.
        DATA t45 TYPE REF TO zcl_lnt_position.
        DATA t46 TYPE REF TO zcl_lnt_abstract_token.
        DATA t47 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t48) = t1.
        t47 = t48->get_first_token( ).
        t46 = t47.
        DATA t49 TYPE REF TO zcl_lnt_position.
        DATA(t50) = t46.
        t49 = t50->start.
        t45 = t49.
        t34 = t35->equals( i_p = t45 ).
        t29 = t34.
      ENDIF.
      IF t29 = abap_true.
        DATA t51 TYPE REF TO zcl_lnt_ireference.
        CLEAR t51.
        DATA(t52) = abap_true.
        IF t52 = abap_true.
          DATA(t53) = t21.
          t51 = t53.
        ELSE.
          DATA t54 TYPE REF TO zcl_lnt_ireference.
          CLEAR t54.
          t51 = t54.
        ENDIF.
        t16 = t51.
        EXIT.
      ENDIF.
      DATA t55 TYPE i.
      DATA(t56) = t14.
      DATA(t57) = 1.
      t55 = t56 + t57.
      t14 = t55.
    ENDDO.
    DATA(t58) = t16.
    t6 = t58.
    t5 = t6.
    DATA t59 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t59.
    DATA(t60) = VALUE abap_bool( ).
    DATA(t61) = t5.
    IF t61 IS INITIAL.
      t60 = abap_true.
    ENDIF.
    IF t60 = abap_true.
      DATA t62 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t62.
      t59 = t62.
    ELSE.
      DATA t63 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t64 TYPE REF TO zcl_lnt_ireference.
      DATA(t65) = t5.
      t64 = t65.
      t63 = t64->resolved.
      t59 = t63.
    ENDIF.
    t4 = t59.
    t3 = t4.
    DATA t66 TYPE abap_bool.
    DATA t67 TYPE abap_bool.
    DATA(t68) = t3.
    t67 = xsdbool( t68 IS BOUND AND t68 IS INSTANCE OF zcl_lnt_typed_identifier ).
    t66 = xsdbool( t67 = abap_false ).
    IF t66 = abap_true.
      DATA t69 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t69.
      result = t69.
      RETURN.
    ENDIF.
    DATA t70 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t70.
    DATA t71 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t71.
    DATA(t72) = abap_true.
    IF t72 = abap_true.
      DATA t73 TYPE REF TO zcl_lnt_abstract_type.
      DATA t74 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t75 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t76) = t3.
      t75 ?= t76.
      t74 = t75.
      DATA t77 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t78) = t74.
      t77 = t78->type_cba0.
      t73 = t77.
      t71 = t73.
    ELSE.
      DATA t79 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t79.
      t71 = t79.
    ENDIF.
    t70 = t71.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t82 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t83) = t1.
    t82 = t83.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t85) = t82.
    t84 = t85->children.
    t81 = t84.
    t80 ?= t81.
    DATA t86 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t86.
    DATA t87 TYPE REF TO object.
    CLEAR t87.
    DATA(t88) = VALUE i( ).
    DO.
      t80->load( ).
      IF t88 >= lines( t80->items ).
        EXIT.
      ENDIF.
      CLEAR t87.
      READ TABLE t80->items INDEX t88 + 1 INTO t87.
      t88 = t88 + 1.
      DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t89.
      CLEAR t86.
      IF t87 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t89 ?= t87.
        DATA t90 TYPE REF TO object.
        t90 = t89->as_ref( ).
        t86 ?= t90.
      ELSE.
        t86 ?= t87.
      ENDIF.
      DATA t91 TYPE abap_bool.
      DATA t92 TYPE abap_bool.
      DATA t93 TYPE abap_bool.
      DATA(t94) = t86.
      t93 = xsdbool( t94 IS BOUND AND t94 IS INSTANCE OF zcl_lnt_expression_node ).
      t92 = xsdbool( t93 = abap_false ).
      t91 = t92.
      IF t92 = abap_false.
        DATA t95 TYPE abap_bool.
        DATA t96 TYPE REF TO zif_lnt_statement_runnable.
        DATA t97 TYPE REF TO zcl_lnt_expression_node.
        DATA(t98) = t86.
        DATA t99 TYPE REF TO object.
        t99 = t98.
        t97 ?= t99.
        t96 = t97->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t95 = xsdbool( t96 IS BOUND AND t96 IS INSTANCE OF zcl_lnt_st_source_field ).
        t91 = t95.
      ENDIF.
      IF t91 = abap_true.
        CONTINUE.
      ELSE.
        DATA t100 TYPE abap_bool.
        DATA t101 TYPE REF TO zif_lnt_statement_runnable.
        DATA t102 TYPE REF TO zcl_lnt_expression_node.
        DATA(t103) = t86.
        DATA t104 TYPE REF TO object.
        t104 = t103.
        t102 ?= t104.
        t101 = t102->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t100 = xsdbool( t101 IS BOUND AND t101 IS INSTANCE OF zcl_lnt_st_component_name ).
        IF t100 = abap_true.
          DATA t105 TYPE abap_bool.
          DATA(t106) = t70.
          t105 = xsdbool( t106 IS BOUND AND t106 IS INSTANCE OF zcl_lnt_ty_table_type ).
          IF t105 = abap_true.
            DATA t107 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t107.
            DATA(t108) = abap_true.
            IF t108 = abap_true.
              DATA t109 TYPE REF TO zcl_lnt_abstract_type.
              DATA t110 TYPE REF TO zcl_lnt_ty_table_type.
              DATA t111 TYPE REF TO zcl_lnt_ty_table_type.
              DATA(t112) = t70.
              t111 ?= t112.
              t110 = t111.
              DATA t113 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t114) = t110.
              t113 = t114->row_type.
              t109 = t113.
              t107 = t109.
            ELSE.
              DATA t115 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t115.
              t107 = t115.
            ENDIF.
            t70 = t107.
          ENDIF.
          DATA t116 TYPE abap_bool.
          DATA t117 TYPE abap_bool.
          DATA(t118) = t70.
          t117 = xsdbool( t118 IS BOUND AND t118 IS INSTANCE OF zcl_lnt_structure_type ).
          t116 = xsdbool( t117 = abap_false ).
          IF t116 = abap_true.
            DATA t119 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t119.
            result = t119.
            RETURN.
          ENDIF.
          DATA t120 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t120.
          DATA t121 TYPE REF TO zcl_lnt_structure_type.
          DATA t122 TYPE REF TO zcl_lnt_structure_type.
          DATA(t123) = t70.
          t122 ?= t123.
          t121 = t122.
          DATA t124 TYPE string.
          DATA t125 TYPE string.
          DATA t126 TYPE REF TO zcl_lnt_expression_node.
          DATA(t127) = t86.
          DATA t128 TYPE REF TO object.
          t128 = t127.
          t126 ?= t128.
          t125 = t126->concat_tokens( ).
          t124 = t125.
          DATA t129 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t129.
          DATA t130 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
          DATA(t131) = t121.
          t130 = t131->indexed.
          DATA t132 TYPE string.
          DATA(t133) = t124.
          DATA(t134) = strlen( t133 ).
          t132 = t133.
          IF t132 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t132 TO UPPER CASE.
          ELSE.
            t132 = zlnt_runtime_uppe_91169605024d=>full( t132 ).
          ENDIF.
          t129 = t130->get( p0 = t132 ).
          t120 = t129.
          t70 = t120.
        ELSE.
          DATA t135 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t135.
          result = t135.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t136) = t70.
    result = t136.

  ENDMETHOD.

  METHOD infer.
    DATA(t1) = i_context.
    DATA(t2) = i_found.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA(t5) = t1.
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_float_type ).
    t3 = t4.
    IF t4 = abap_true.
      DATA t6 TYPE abap_bool.
      DATA(t7) = t2.
      t6 = xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_integer_type ).
      t3 = t6.
    ENDIF.
    IF t3 = abap_true.
      DATA t8 TYPE REF TO zcl_lnt_float_type.
      DATA(t9) = t1.
      t8 ?= t9.
      result = t8.
      RETURN.
    ELSE.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE abap_bool.
      DATA(t12) = t1.
      t11 = xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_integer_type ).
      t10 = t11.
      IF t11 = abap_true.
        DATA t13 TYPE abap_bool.
        DATA(t14) = t2.
        t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_hex_type ).
        t10 = t13.
      ENDIF.
      IF t10 = abap_true.
        DATA t15 TYPE REF TO zcl_lnt_integer_type.
        DATA(t16) = t1.
        t15 ?= t16.
        result = t15.
        RETURN.
      ELSE.
        DATA(t17) = VALUE abap_bool( ).
        DATA t18 TYPE abap_bool.
        DATA t19 TYPE abap_bool.
        DATA(t20) = t1.
        t19 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_integer_type ).
        t18 = t19.
        IF t19 = abap_false.
          DATA t21 TYPE abap_bool.
          DATA(t22) = t1.
          t21 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_float_type ).
          t18 = t21.
        ENDIF.
        t17 = t18.
        IF t18 = abap_true.
          DATA(t23) = VALUE abap_bool( ).
          DATA t24 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t24.
          DATA t25 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t26) = t2.
          t25 = t26.
          DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t27.
          DATA(t28) = VALUE abap_bool( ).
          DATA(t29) = t25.
          IF t29 IS INITIAL.
            t28 = abap_true.
          ENDIF.
          IF t28 = abap_true.
            DATA t30 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t30.
            t27 = t30.
          ELSE.
            DATA t31 TYPE abap_bool.
            DATA t32 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t33) = t25.
            t32 = t33.
            t31 = t32->is_generic( ).
            DATA(t34) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t34->has = abap_true.
            t34->value = t31.
            t27 = t34.
          ENDIF.
          t24 = t27.
          IF t24 IS BOUND.
            IF t24->has = abap_true.
              t23 = xsdbool( t24->value IS NOT INITIAL ).
            ENDIF.
          ENDIF.
          t17 = t23.
        ENDIF.
        IF t17 = abap_true.
          DATA t35 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t35.
          DATA(t36) = abap_true.
          IF t36 = abap_true.
            DATA t37 TYPE REF TO zcl_lnt_abstract_type.
            DATA t38 TYPE REF TO zif_lnt_union_e92befca.
            DATA t39 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t40) = t1.
            t39 = t40.
            t38 ?= t39.
            t37 ?= t38.
            t35 = t37.
          ELSE.
            DATA t41 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t41.
            t35 = t41.
          ENDIF.
          result = t35.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t42) = t2.
    result = t42.

  ENDMETHOD.

  METHOD same_type.
    DATA(t1) = i_first.
    DATA(t2) = i_second.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE abap_bool.
    DATA t8 TYPE abap_bool.
    DATA(t9) = t1.
    t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_unknown_type ).
    t7 = t8.
    IF t8 = abap_false.
      DATA t10 TYPE abap_bool.
      DATA(t11) = t2.
      t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_unknown_type ).
      t7 = t10.
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      DATA t12 TYPE abap_bool.
      DATA(t13) = t1.
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_void_type ).
      t6 = t12.
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      DATA t14 TYPE abap_bool.
      DATA(t15) = t2.
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_void_type ).
      t5 = t14.
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      DATA t16 TYPE abap_bool.
      DATA(t17) = t1.
      t16 = t17->is_generic( ).
      t4 = t16.
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      DATA t18 TYPE abap_bool.
      DATA(t19) = t2.
      t18 = t19->is_generic( ).
      t3 = t18.
    ENDIF.
    IF t3 = abap_true.
      DATA(t20) = abap_false.
      result = t20.
      RETURN.
    ENDIF.
    DATA(t21) = VALUE abap_bool( ).
    DATA t22 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t23) = t1.
    t22 = t23->zlnt_builtin_clas_3f891b097658( ).
    DATA t24 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t25) = t2.
    t24 = t25->zlnt_builtin_clas_3f891b097658( ).
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    CLEAR t26.
    IF t22 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t26->cval = t22.
    ENDIF.
    CLEAR t27.
    IF t24 IS BOUND.
      CREATE OBJECT t27.
      t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t27->cval = t24.
    ENDIF.
    IF t26 IS BOUND.
      t21 = t26->strict_equals( t27 ).
    ELSE.
      t21 = xsdbool( t27 IS NOT BOUND ).
    ENDIF.
    t21 = xsdbool( t21 = abap_false ).
    IF t21 = abap_true.
      DATA(t28) = abap_false.
      result = t28.
      RETURN.
    ENDIF.
    DATA t29 TYPE abap_bool.
    DATA t30 TYPE abap_bool.
    DATA(t31) = t1.
    t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_structure_type ).
    t29 = t30.
    IF t30 = abap_false.
      DATA t32 TYPE abap_bool.
      DATA(t33) = t1.
      t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t29 = t32.
    ENDIF.
    IF t29 = abap_true.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t38 TYPE REF TO zif_lnt_union_2724f734.
      DATA(t39) = t1.
      t38 ?= t39.
      t37 = t38->get_qualified_name( ).
      t36 = t37.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t40.
      DATA(t41) = VALUE abap_bool( ).
      DATA(t42) = t36.
      IF t42 IS INITIAL.
        t41 = abap_true.
      ELSEIF t42->has = abap_false.
        t41 = abap_true.
      ENDIF.
      IF t41 = abap_true.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        t40 = t43.
      ELSE.
        DATA t44 TYPE string.
        DATA t45 TYPE string.
        DATA(t46) = t36.
        t45 = t46->value.
        DATA(t47) = strlen( t45 ).
        t44 = t45.
        IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t44 TO UPPER CASE.
        ELSE.
          t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
        ENDIF.
        DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t48->has = abap_true.
        t48->value = t44.
        t40 = t48.
      ENDIF.
      t35 = t40.
      t34 = t35.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t49.
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t50.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t53) = t2.
      t52 = t53->get_qualified_name( ).
      t51 = t52.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = t51.
      IF t56 IS INITIAL.
        t55 = abap_true.
      ELSEIF t56->has = abap_false.
        t55 = abap_true.
      ENDIF.
      IF t55 = abap_true.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t57.
        t54 = t57.
      ELSE.
        DATA t58 TYPE string.
        DATA t59 TYPE string.
        DATA(t60) = t51.
        t59 = t60->value.
        DATA(t61) = strlen( t59 ).
        t58 = t59.
        IF t58 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t58 TO UPPER CASE.
        ELSE.
          t58 = zlnt_runtime_uppe_91169605024d=>full( t58 ).
        ENDIF.
        DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t62->has = abap_true.
        t62->value = t58.
        t54 = t62.
      ENDIF.
      t50 = t54.
      t49 = t50.
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = VALUE abap_bool( ).
      DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t66) = t34.
      t65 = t66.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      t67 = t68.
      DATA(t69) = VALUE abap_bool( ).
      DATA(t70) = VALUE abap_bool( ).
      DATA(t71) = t65.
      IF t71 IS INITIAL.
        t70 = abap_true.
      ELSEIF t71->has = abap_false.
        t70 = abap_true.
      ENDIF.
      t69 = xsdbool( t70 = abap_false ).
      t64 = t69.
      t63 = t64.
      IF t64 = abap_true.
        DATA(t72) = VALUE abap_bool( ).
        DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t73.
        DATA(t74) = abap_true.
        IF t74 = abap_true.
          DATA t75 TYPE string.
          DATA(t76) = t34.
          t75 = t76->value.
          DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t77->has = abap_true.
          t77->value = t75.
          t73 = t77.
        ELSE.
          DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t78.
          t73 = t78.
        ENDIF.
        DATA(t79) = t49.
        DATA(t80) = VALUE abap_bool( ).
        DATA(t81) = VALUE abap_bool( ).
        IF t73 IS BOUND.
          t80 = t73->has.
        ENDIF.
        IF t79 IS BOUND.
          t81 = t79->has.
        ENDIF.
        IF t80 = t81.
          IF t80 = abap_false.
            t72 = abap_true.
          ELSEIF t73->value = t79->value.
            t72 = abap_true.
          ENDIF.
        ENDIF.
        t63 = t72.
      ENDIF.
      result = t63.
      RETURN.
    ENDIF.
    DATA t82 TYPE abap_bool.
    DATA t83 TYPE string.
    DATA(t84) = t1.
    t83 = t84->to_abap( ).
    DATA t85 TYPE string.
    DATA(t86) = t2.
    t85 = t86->to_abap( ).
    t82 = xsdbool( t83 = t85 ).
    result = t82.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_rdndnt_cnvrsn_cnf( me->gt_cn_in_sr_rl_rd_cn_ts_rd_cnv( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_rdndnt_cnvrsn_cnf( me->gt_cn_in_sr_rl_rd_cn_ts_rd_cnv( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_rdndnt_cnvrsn_cnf.
    CLEAR t2.
    DATA(t3) = t1.
    CLEAR t2.
    IF t3 IS BOUND.
      IF t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t3->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t4.
          IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t3->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_rdndnt_cnvrsn_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_rd_cn_ts_rd_cnv( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_redundant_conversion.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_rdn_cnv_ts_rdn_cnv( i_reg_f149 = t3 ).
    result = t2.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1678_d60f33b1f86f.
  ENDMETHOD.

  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config.
    me->get_config( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~set_config.
    me->set_config( i_conf = i_conf ).
  ENDMETHOD.

  METHOD zif_lnt_rule~initialize.
    result = me->initialize( i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~run.
    result = me->run( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value( ).
  ENDMETHOD.
ENDCLASS.
