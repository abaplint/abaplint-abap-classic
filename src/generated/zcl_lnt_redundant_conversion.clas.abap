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
    me->conf = NEW zcl_lnt_rdndnt_cnvrsn_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |redundant_conversion|.
    DATA t4 TYPE string.
    t4 = |Redundant Conversion|.
    DATA t6 TYPE string.
    t6 = |Find redundant CONV expressions|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Reports CONV expressions whose operand already has the conve|.
    t11 = t11 && |rsion's target type.|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |Quickfix|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t27) = |DATA text TYPE string.\ntext = CONV string( text ).|.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t27.
    t24 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t33) = |DATA text TYPE string.\ntext = text.|.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = t33.
    t30 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t47) = |key|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    DATA(t49) = |title|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |shortDescription|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |extendedInformation|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |tags|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |badExample|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |goodExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_rd_cn_ts_rd_cnv.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_rd_cn_ts_rd_cnv.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_rdn_cnv_ts_rdn_cnv.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_abap_release.
    DATA t6 TYPE REF TO zif_lnt_configuration.
    t6 = me->reg->get_config( ).
    t5 = t6->get_release( ).
    DATA t8 TYPE REF TO zcl_lnt_abap_release.
    DATA t9 TYPE REF TO zcl_lnt_abap_release.
    DATA t10 TYPE REF TO zlnt_runtime_map__201f3699a39e.
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
      t14 = me->reg->get_config( ).
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
    t18 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ).
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
    DATA t27 TYPE REF TO object.
    t27 = t1.
    t25 ?= t27.
    t23 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t24 i_object_19cd = t25 ).
    t22 = t23->run( ).
    t21 = t22.
    DATA t28 TYPE abap_bool.
    DATA t29 TYPE i.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t30 = t21->zlnt_view_read_sr_bd188c319c03( ).
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
    DATA t38 TYPE REF TO zcl_lnt_abap_object.
    DATA t40 TYPE REF TO object.
    t40 = t1.
    t38 ?= t40.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t41 = t38->parsed.
    t36 = t41.
    DATA t43 TYPE REF TO zcl_lnt_abap_file.
    DATA t44 TYPE REF TO object.
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
      DATA t52 TYPE REF TO zcl_lnt_structure_node.
      t52 = t43->structure.
      t48 = t52.
      DATA(t54) = VALUE abap_bool( ).
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      t54 = xsdbool( t48 IS INITIAL ).
      IF t54 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t62 TYPE REF TO zcl_lnt_structure_node.
      t62 = t48.
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
        DATA t74 TYPE REF TO zcl_lnt_abstract_token.
        t74 = t65->get_first_token( ).
        DATA t76 TYPE string.
        t76 = t74->str.
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
        DATA(t83) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
        t81 = t65->find_direct_expression( i_type_9913 = t83 ).
        t80 = t81.
        DATA t84 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t84.
        DATA t86 TYPE REF TO zcl_lnt_expression_node.
        DATA t87 TYPE REF TO zcl_lnt_expression_node.
        DATA(t89) = zlnt_runtime_desc_78196487750d=>zlnt_member_d143_3ba838dd8924.
        t87 = t65->find_direct_expression( i_type_9913 = t89 ).
        t86 = t87.
        DATA t90 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t90.
        DATA(t91) = xsdbool( t86 IS INITIAL ).
        IF t91 = abap_true.
          CLEAR t90.
        ELSE.
          DATA t94 TYPE REF TO zcl_lnt_expression_node.
          DATA t95 TYPE REF TO zcl_lnt_expression_node.
          t95 = t86.
          DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
          t94 = t95->find_direct_expression( i_type_9913 = t97 ).
          t90 = t94.
        ENDIF.
        t84 = t90.
        DATA(t98) = VALUE abap_bool( ).
        DATA(t99) = VALUE abap_bool( ).
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        t99 = xsdbool( t80 IS INITIAL ).
        t98 = t99.
        IF t99 = abap_false.
          DATA(t106) = VALUE abap_bool( ).
          DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t109.
          t106 = xsdbool( t84 IS INITIAL ).
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
        t115 = t21->zlnt_view_read_sr_b6b1d9e0c93e( ).
        DATA t117 TYPE REF TO zcl_lnt_position.
        CLEAR t117.
        DATA t121 TYPE REF TO zcl_lnt_abstract_token.
        t121 = t65->get_first_token( ).
        DATA t123 TYPE REF TO zcl_lnt_position.
        t123 = t121->start.
        t117 = t123.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t126.
        DATA t129 TYPE REF TO zcl_lnt_abstract_file.
        t129 = t43.
        DATA t131 TYPE string.
        t131 = t129->filename.
        DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t133->has = abap_true.
        t133->value = t131.
        t126 = t133.
        t114 = t115->lookup_position( i_p = t117 i_filename = t126 ).
        t113 = t114.
        DATA(t135) = VALUE abap_bool( ).
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t138.
        t135 = xsdbool( t113 IS INITIAL ).
        IF t135 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t142 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t142.
        DATA t144 TYPE REF TO zcl_lnt_ireference.
        CLEAR t144.
        DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t148 TYPE REF TO zcl_lnt_iscope_data.
        DATA t149 TYPE REF TO zif_lnt_spaghetti_scope_node.
        t149 = t113.
        t148 = t149->get_data( ).
        t147 = t148->references.
        t146 = t147.
        DATA t151 TYPE i.
        DATA t152 TYPE i.
        t146->load( ).
        t152 = lines( t146->items ).
        t151 = t152.
        DATA t154 TYPE i.
        t154 = 0.
        DATA t156 TYPE REF TO zcl_lnt_ireference.
        CLEAR t156.
        DO.
          DATA t158 TYPE abap_bool.
          t158 = xsdbool( t154 < t151 ).
          IF t158 = abap_false.
            EXIT.
          ENDIF.
          DATA t161 TYPE REF TO zcl_lnt_ireference.
          CLEAR t161.
          DATA t163 TYPE REF TO zcl_lnt_ireference.
          CLEAR t163.
          DATA t166 TYPE REF TO object.
          t166 = t146->get( p0 = t154 ).
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
          t161 = t163.
          DATA t169 TYPE abap_bool.
          DATA t170 TYPE abap_bool.
          DATA t171 TYPE string.
          t171 = t161->reference_type.
          DATA(t173) = |Inferred Type|.
          t170 = xsdbool( t171 = t173 ).
          t169 = t170.
          IF t170 = abap_true.
            DATA t174 TYPE abap_bool.
            DATA t175 TYPE REF TO zcl_lnt_position.
            DATA t177 TYPE REF TO zcl_lnt_fi_identifier.
            t177 = t161->position_7b94.
            DATA t181 TYPE REF TO zcl_lnt_abstract_token.
            t181 = t177->token.
            DATA t183 TYPE REF TO zcl_lnt_position.
            t183 = t181->start.
            t175 = t183.
            DATA t185 TYPE REF TO zcl_lnt_position.
            DATA t187 TYPE REF TO zcl_lnt_abstract_token.
            DATA t188 TYPE REF TO zcl_lnt_expression_node.
            t188 = t80.
            t187 = t188->get_first_token( ).
            DATA t190 TYPE REF TO zcl_lnt_position.
            t190 = t187->start.
            t185 = t190.
            t174 = t175->equals( i_p = t185 ).
            t169 = t174.
          ENDIF.
          IF t169 = abap_true.
            t156 = t161.
            EXIT.
          ENDIF.
          DATA t196 TYPE i.
          DATA(t198) = 1.
          t196 = t154 + t198.
          t154 = t196.
        ENDDO.
        t144 = t156.
        DATA t200 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t200.
        DATA(t201) = xsdbool( t144 IS INITIAL ).
        IF t201 = abap_true.
          CLEAR t200.
        ELSE.
          DATA t204 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t205 TYPE REF TO zcl_lnt_ireference.
          t205 = t144.
          t204 = t205->resolved.
          t200 = t204.
        ENDIF.
        t142 = t200.
        DATA t207 TYPE REF TO zcl_lnt_abstract_type.
        DATA t208 TYPE REF TO zcl_lnt_abstract_type.
        DATA t209 TYPE REF TO zcl_lnt_expression_node.
        t209 = t84.
        DATA t211 TYPE REF TO zif_lnt_spaghetti_scope_node.
        t211 = t113.
        t208 = me->source_type( i_source_75cf = t209 i_scope = t211 ).
        t207 = t208.
        DATA t213 TYPE abap_bool.
        DATA t214 TYPE abap_bool.
        t214 = xsdbool( t142 IS BOUND AND t142 IS INSTANCE OF zcl_lnt_typed_identifier ).
        t213 = xsdbool( t214 = abap_false ).
        IF t213 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t216) = VALUE abap_bool( ).
        DATA(t217) = VALUE abap_bool( ).
        DATA(t218) = VALUE abap_bool( ).
        DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t221.
        DATA(t223) = VALUE abap_bool( ).
        DATA(t224) = xsdbool( t207 IS INITIAL ).
        t223 = xsdbool( t224 = abap_false ).
        t218 = t223.
        t217 = t218.
        IF t218 = abap_true.
          DATA t226 TYPE abap_bool.
          DATA t227 TYPE REF TO zcl_lnt_abstract_type.
          DATA t229 TYPE REF TO zcl_lnt_typed_identifier.
          t229 ?= t142.
          DATA t231 TYPE REF TO zcl_lnt_abstract_type.
          t231 = t229->type_cba0.
          t227 = t231.
          DATA t233 TYPE REF TO zcl_lnt_abstract_type.
          t233 = t207.
          t226 = me->same_type( i_first = t227 i_second = t233 ).
          t217 = t226.
        ENDIF.
        t216 = t217.
        DATA t236 TYPE abap_bool.
        DATA t238 TYPE REF TO zcl_lnt_expression_node.
        t238 = t84.
        DATA t241 TYPE REF TO zif_lnt_spaghetti_scope_node.
        t241 = t113.
        DATA t243 TYPE REF TO zcl_lnt_abstract_type.
        DATA t245 TYPE REF TO zcl_lnt_typed_identifier.
        t245 ?= t142.
        DATA t247 TYPE REF TO zcl_lnt_abstract_type.
        t247 = t245->type_cba0.
        t243 = t247.
        t236 = me->arthmtc_uss_sm_trgt_typ( i_conversion = t65 i_body_source = t238 i_file = t43 i_scope = t241 i_conversion_type = t243 ).
        DATA t249 TYPE abap_bool.
        DATA t250 TYPE abap_bool.
        t250 = xsdbool( t216 = abap_false ).
        t249 = t250.
        IF t250 = abap_true.
          DATA t253 TYPE abap_bool.
          t253 = xsdbool( t236 = abap_false ).
          t249 = t253.
        ENDIF.
        IF t249 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t256 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t256.
        DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t259 = t65->get_direct_tokens( ).
        t258 = t259.
        DATA t261 TYPE i.
        DATA t262 TYPE i.
        t258->load( ).
        t262 = lines( t258->items ).
        t261 = t262.
        DATA t264 TYPE i.
        t264 = 0.
        DATA t266 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t266.
        DO.
          DATA t268 TYPE abap_bool.
          t268 = xsdbool( t264 < t261 ).
          IF t268 = abap_false.
            EXIT.
          ENDIF.
          DATA t271 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t271.
          DATA t273 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t273.
          DATA t276 TYPE REF TO object.
          t276 = t258->get( p0 = t264 ).
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
          t271 = t273.
          DATA t279 TYPE abap_bool.
          DATA t280 TYPE abap_bool.
          DATA t281 TYPE string.
          DATA t284 TYPE string.
          t284 = t271->str.
          t281 = t284.
          DATA(t286) = |)|.
          t280 = xsdbool( t281 = t286 ).
          t279 = t280.
          IF t280 = abap_true.
            DATA t287 TYPE abap_bool.
            DATA t288 TYPE REF TO zcl_lnt_position.
            DATA t291 TYPE REF TO zcl_lnt_position.
            t291 = t271->start.
            t288 = t291.
            DATA t293 TYPE REF TO zcl_lnt_position.
            DATA t295 TYPE REF TO zcl_lnt_abstract_token.
            DATA t296 TYPE REF TO zcl_lnt_expression_node.
            t296 = t84.
            t295 = t296->get_last_token( ).
            DATA t298 TYPE REF TO zcl_lnt_position.
            t298 = t295->start.
            t293 = t298.
            t287 = t288->is_after( i_p = t293 ).
            t279 = t287.
          ENDIF.
          IF t279 = abap_true.
            t266 = t271.
            EXIT.
          ENDIF.
          DATA t304 TYPE i.
          DATA(t306) = 1.
          t304 = t264 + t306.
          t264 = t304.
        ENDDO.
        t256 = t266.
        DATA(t308) = VALUE abap_bool( ).
        DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t311.
        t308 = xsdbool( t256 IS INITIAL ).
        IF t308 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t315) = VALUE abap_bool( ).
        DATA(t316) = VALUE abap_bool( ).
        DATA(t317) = VALUE abap_bool( ).
        DATA t319 TYPE REF TO zcl_lnt_expression_node.
        DATA t320 TYPE REF TO zcl_lnt_expression_node.
        t320 = t84.
        DATA(t322) = zlnt_runtime_desc_78196487750d=>zlnt_member_d91_10c609bb0b604f.
        t319 = t320->find_direct_expression( i_type_9913 = t322 ).
        DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t323.
        DATA(t325) = VALUE abap_bool( ).
        DATA(t326) = xsdbool( t319 IS INITIAL ).
        t325 = xsdbool( t326 = abap_false ).
        t317 = t325.
        t316 = t317.
        IF t317 = abap_false.
          DATA(t328) = VALUE abap_bool( ).
          DATA t330 TYPE REF TO zcl_lnt_abstract_token.
          DATA t331 TYPE REF TO zcl_lnt_expression_node.
          t331 = t84.
          DATA(t333) = |&&|.
          t330 = t331->find_direct_token_by_text( i_text = t333 ).
          DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t334.
          DATA(t336) = VALUE abap_bool( ).
          DATA(t337) = xsdbool( t330 IS INITIAL ).
          t336 = xsdbool( t337 = abap_false ).
          t328 = t336.
          t316 = t328.
        ENDIF.
        t315 = t316.
        DATA t340 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t340.
        DATA t341 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t341.
        DATA t343 TYPE REF TO zcl_lnt_position.
        DATA t344 TYPE REF TO zcl_lnt_abstract_token.
        DATA t345 TYPE REF TO zcl_lnt_abstract_token.
        DATA t346 TYPE REF TO zcl_lnt_expression_node.
        t346 = t84.
        t345 = t346->get_last_token( ).
        t344 = t345.
        DATA t348 TYPE REF TO zcl_lnt_position.
        DATA t349 TYPE f.
        DATA t351 TYPE REF TO zcl_lnt_position.
        t351 = t344->start.
        DATA t353 TYPE f.
        t353 = t351->row.
        t349 = t353.
        DATA t355 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t356 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t358 TYPE REF TO zcl_lnt_position.
        t358 = t344->start.
        DATA t360 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t360 = t358->col.
        t356 = t360.
        DATA t362 TYPE f.
        DATA t364 TYPE string.
        t364 = t344->str.
        t362 = strlen( t364 ).
        DATA(t367) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t367->has = abap_true.
        t367->value = t362.
        t355 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t356 right = t367 op = `+` ).
        t348 = NEW zcl_lnt_position( i_row = t349 i_col = t355 ).
        t343 = t348.
        DATA t368 TYPE REF TO zcl_lnt_position.
        DATA t369 TYPE REF TO zcl_lnt_abstract_token.
        t369 = t256.
        DATA t372 TYPE REF TO zcl_lnt_position.
        DATA t373 TYPE f.
        DATA t375 TYPE REF TO zcl_lnt_position.
        t375 = t369->start.
        DATA t377 TYPE f.
        t377 = t375->row.
        t373 = t377.
        DATA t379 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t380 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t382 TYPE REF TO zcl_lnt_position.
        t382 = t369->start.
        DATA t384 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t384 = t382->col.
        t380 = t384.
        DATA t386 TYPE f.
        DATA t388 TYPE string.
        t388 = t369->str.
        t386 = strlen( t388 ).
        DATA(t391) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t391->has = abap_true.
        t391->value = t386.
        t379 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t380 right = t391 op = `+` ).
        t372 = NEW zcl_lnt_position( i_row = t373 i_col = t379 ).
        t368 = t372.
        DATA(t392) = VALUE string( ).
        IF t315 = abap_true.
          t392 = |)|.
        ELSE.
          t392 = ||.
        ENDIF.
        t341 = zcl_lnt_edit_helper=>replace_range( i_file = t43 i_start = t343 i_end = t368 i_text = t392 ).
        DATA t396 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t396.
        DATA t398 TYPE REF TO zcl_lnt_position.
        DATA t400 TYPE REF TO zcl_lnt_abstract_token.
        t400 = t65->get_first_token( ).
        DATA t402 TYPE REF TO zcl_lnt_position.
        t402 = t400->start.
        t398 = t402.
        DATA t404 TYPE REF TO zcl_lnt_position.
        DATA t406 TYPE REF TO zcl_lnt_abstract_token.
        DATA t407 TYPE REF TO zcl_lnt_expression_node.
        t407 = t84.
        t406 = t407->get_first_token( ).
        DATA t409 TYPE REF TO zcl_lnt_position.
        t409 = t406->start.
        t404 = t409.
        DATA(t411) = VALUE string( ).
        IF t315 = abap_true.
          t411 = |(|.
        ELSE.
          t411 = ||.
        ENDIF.
        t396 = zcl_lnt_edit_helper=>replace_range( i_file = t43 i_start = t398 i_end = t404 i_text = t411 ).
        t340 = zcl_lnt_edit_helper=>merge( i_fix1 = t341 i_fix2 = t396 ).
        DATA t416 TYPE REF TO zcl_lnt_issue.
        CLEAR t416.
        DATA t418 TYPE REF TO zcl_lnt_position.
        DATA t420 TYPE REF TO zcl_lnt_abstract_token.
        t420 = t65->get_first_token( ).
        DATA t422 TYPE REF TO zcl_lnt_position.
        t422 = t420->start.
        t418 = t422.
        DATA t424 TYPE REF TO zcl_lnt_position.
        DATA t425 TYPE REF TO zcl_lnt_abstract_token.
        t425 = t256.
        DATA t428 TYPE REF TO zcl_lnt_position.
        DATA t429 TYPE f.
        DATA t431 TYPE REF TO zcl_lnt_position.
        t431 = t425->start.
        DATA t433 TYPE f.
        t433 = t431->row.
        t429 = t433.
        DATA t435 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t436 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t438 TYPE REF TO zcl_lnt_position.
        t438 = t425->start.
        DATA t440 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t440 = t438->col.
        t436 = t440.
        DATA t442 TYPE f.
        DATA t444 TYPE string.
        t444 = t425->str.
        t442 = strlen( t444 ).
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
        t451 = |redundant_conversion|.
        DATA t453 TYPE string.
        t453 = |Redundant Conversion|.
        DATA t455 TYPE string.
        t455 = |Find redundant CONV expressions|.
        DATA t457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t457.
        DATA(t460) = |Reports CONV expressions whose operand already has the conve|.
        t460 = t460 && |rsion's target type.|.
        DATA(t461) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t461->has = abap_true.
        t461->value = t460.
        t457 = t461.
        DATA t463 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t463.
        DATA t467 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t468 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t468.
        t467 = t468.
        DATA(t470) = |Quickfix|.
        t467->load( ).
        APPEND t470 TO t467->items.
        t467->save( ).
        t463 = t467.
        DATA t473 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t473.
        DATA(t476) = |DATA text TYPE string.\ntext = CONV string( text ).|.
        DATA(t477) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t477->has = abap_true.
        t477->value = t476.
        t473 = t477.
        DATA t479 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t479.
        DATA(t482) = |DATA text TYPE string.\ntext = text.|.
        DATA(t483) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t483->has = abap_true.
        t483->value = t482.
        t479 = t483.
        DATA t485 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t485.
        DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t487.
        t450 = NEW zcl_lnt_irule_metadata( i_key = t451 i_title = t453 i_short_description = t455 i_bad_example = t473 i_good_example = t479 i_extended_information = t457 i_tags = t463 i_pragma = t485 i_pseudo_comment = t487 ).
        CREATE OBJECT t450->zlnt_view_ownkeys_b0e8086400eb.
        t450->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t489.
        t450->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t489 ).
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
        t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = t496 p1 = t497 ).
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
        t510 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t512 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t512.
        t512 = t340.
        DATA t516 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t516.
        t416 = zcl_lnt_issue=>at_range( i_file = t43 i_start = t418 i_end = t424 i_message_26cb = t448 i_key = t449 i_severity = t510 i_fix = t512 i_alternative_fixes = t516 ).
        t34->load( ).
        APPEND t416 TO t34->items.
        t34->save( ).
      ENDDO.
    ENDDO.
    result = t34.

  ENDMETHOD.

  METHOD arthmtc_uss_sm_trgt_typ.
    DATA(t1) = i_conversion.
    DATA(t3) = i_file.
    DATA(t4) = i_scope.
    DATA(t5) = i_conversion_type.
    DATA(t6) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d91_10c609bb0b604f.
    t8 = i_body_source->find_direct_expression( i_type_9913 = t10 ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t6 = xsdbool( t8 IS INITIAL ).
    IF t6 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zcl_lnt_statement_node.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t22 = t3->statements.
    t18 = t22.
    DATA t24 TYPE i.
    DATA t25 TYPE i.
    t18->load( ).
    t25 = lines( t18->items ).
    t24 = t25.
    DATA t27 TYPE i.
    t27 = 0.
    DATA t29 TYPE REF TO zcl_lnt_statement_node.
    DO.
      DATA t31 TYPE abap_bool.
      t31 = xsdbool( t27 < t24 ).
      IF t31 = abap_false.
        EXIT.
      ENDIF.
      DATA t34 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t34.
      DATA t36 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t36.
      DATA t39 TYPE REF TO object.
      t39 = t18->get( p0 = t27 ).
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
      t34 = t36.
      DATA t42 TYPE abap_bool.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      t44 = t1->get_first_token( ).
      t42 = t34->includes_token( i_search_b3ca = t44 ).
      IF t42 = abap_true.
        t29 = t34.
        EXIT.
      ENDIF.
      DATA t50 TYPE i.
      DATA(t52) = 1.
      t50 = t27 + t52.
      t27 = t50.
    ENDDO.
    t16 = t29.
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = VALUE abap_bool( ).
    DATA t56 TYPE REF TO zif_lnt_statement.
    DATA t57 TYPE REF TO zcl_lnt_statement_node.
    t57 = t16.
    DATA t59 TYPE REF TO zif_lnt_statement.
    DATA(t60) = xsdbool( t57 IS INITIAL ).
    IF t60 = abap_true.
    ELSE.
      DATA t63 TYPE REF TO zif_lnt_statement.
      DATA t64 TYPE REF TO zcl_lnt_statement_node.
      t64 = t57.
      t63 = t64->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t59 = t63.
    ENDIF.
    t56 = t59.
    t55 = xsdbool( t56 IS BOUND AND t56 IS INSTANCE OF zcl_lnt_st_move ).
    t54 = xsdbool( t55 = abap_false ).
    IF t54 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t67 TYPE REF TO zcl_lnt_abstract_token.
    DATA t69 TYPE REF TO zcl_lnt_expression_node.
    DATA t70 TYPE REF TO zcl_lnt_expression_node.
    DATA t71 TYPE REF TO zcl_lnt_statement_node.
    t71 = t16.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t70 = t71->find_direct_expression( i_type_9913 = t73 ).
    t69 = t70.
    DATA t74 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t75) = xsdbool( t69 IS INITIAL ).
    IF t75 = abap_true.
    ELSE.
      DATA t78 TYPE REF TO zcl_lnt_abstract_token.
      DATA t79 TYPE REF TO zcl_lnt_expression_node.
      t79 = t69.
      t78 = t79->get_first_token( ).
      t74 = t78.
    ENDIF.
    t67 = t74.
    DATA(t81) = VALUE abap_bool( ).
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t81 = xsdbool( t67 IS INITIAL ).
    IF t81 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t89 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t91 TYPE REF TO zcl_lnt_ireference.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t95 TYPE REF TO zcl_lnt_iscope_data.
    t95 = t4->get_data( ).
    t94 = t95->references.
    t93 = t94.
    DATA t97 TYPE i.
    DATA t98 TYPE i.
    t93->load( ).
    t98 = lines( t93->items ).
    t97 = t98.
    DATA t100 TYPE i.
    t100 = 0.
    DATA t102 TYPE REF TO zcl_lnt_ireference.
    DO.
      DATA t104 TYPE abap_bool.
      t104 = xsdbool( t100 < t97 ).
      IF t104 = abap_false.
        EXIT.
      ENDIF.
      DATA t107 TYPE REF TO zcl_lnt_ireference.
      CLEAR t107.
      DATA t109 TYPE REF TO zcl_lnt_ireference.
      CLEAR t109.
      DATA t112 TYPE REF TO object.
      t112 = t93->get( p0 = t100 ).
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
      t107 = t109.
      DATA t115 TYPE abap_bool.
      DATA t116 TYPE abap_bool.
      DATA t117 TYPE string.
      t117 = t107->reference_type.
      DATA(t119) = |Write To|.
      t116 = xsdbool( t117 = t119 ).
      t115 = t116.
      IF t116 = abap_true.
        DATA t120 TYPE abap_bool.
        DATA t121 TYPE REF TO zcl_lnt_position.
        DATA t123 TYPE REF TO zcl_lnt_fi_identifier.
        t123 = t107->position_7b94.
        DATA t127 TYPE REF TO zcl_lnt_abstract_token.
        t127 = t123->token.
        DATA t129 TYPE REF TO zcl_lnt_position.
        t129 = t127->start.
        t121 = t129.
        DATA t131 TYPE REF TO zcl_lnt_position.
        DATA t135 TYPE REF TO zcl_lnt_position.
        t135 = t67->start.
        t131 = t135.
        t120 = t121->equals( i_p = t131 ).
        t115 = t120.
      ENDIF.
      IF t115 = abap_true.
        t102 = t107.
        EXIT.
      ENDIF.
      DATA t141 TYPE i.
      DATA(t143) = 1.
      t141 = t100 + t143.
      t100 = t141.
    ENDDO.
    t91 = t102.
    DATA t145 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t146) = xsdbool( t91 IS INITIAL ).
    IF t146 = abap_true.
    ELSE.
      DATA t149 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t150 TYPE REF TO zcl_lnt_ireference.
      t150 = t91.
      t149 = t150->resolved.
      t145 = t149.
    ENDIF.
    t89 = t145.
    DATA t152 TYPE abap_bool.
    DATA t153 TYPE abap_bool.
    t153 = xsdbool( t89 IS BOUND AND t89 IS INSTANCE OF zcl_lnt_typed_identifier ).
    t152 = t153.
    IF t153 = abap_true.
      DATA t155 TYPE abap_bool.
      DATA t157 TYPE REF TO zcl_lnt_abstract_type.
      DATA t159 TYPE REF TO zcl_lnt_typed_identifier.
      t159 ?= t89.
      DATA t161 TYPE REF TO zcl_lnt_abstract_type.
      t161 = t159->type_cba0.
      t157 = t161.
      t155 = me->same_type( i_first = t5 i_second = t157 ).
      t152 = t155.
    ENDIF.
    result = t152.

  ENDMETHOD.

  METHOD source_type.
    DATA(t1) = i_source_75cf.
    DATA(t2) = i_scope.
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = t1.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t8 = t6->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t11 TYPE REF TO object.
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
      t16 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_expression_node ).
      t15 = xsdbool( t16 = abap_false ).
      IF t15 = abap_true.
        CONTINUE.
      ELSE.
        DATA t18 TYPE abap_bool.
        DATA t19 TYPE REF TO zif_lnt_statement_runnable.
        DATA t20 TYPE REF TO zcl_lnt_expression_node.
        DATA t22 TYPE REF TO object.
        t22 = t10.
        t20 ?= t22.
        t19 = t20->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_field_chain ).
        IF t18 = abap_true.
          DATA t23 TYPE REF TO zcl_lnt_abstract_type.
          DATA t24 TYPE REF TO zcl_lnt_expression_node.
          DATA t26 TYPE REF TO object.
          t26 = t10.
          t24 ?= t26.
          t23 = me->field_chain_type( i_field_chain = t24 i_scope = t2 ).
          t3 = t23.
          DATA(t28) = VALUE abap_bool( ).
          DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t31.
          t28 = xsdbool( t3 IS INITIAL ).
          IF t28 = abap_true.
            CLEAR result.
            RETURN.
          ENDIF.
        ELSE.
          DATA t36 TYPE abap_bool.
          DATA t37 TYPE REF TO zif_lnt_statement_runnable.
          DATA t38 TYPE REF TO zcl_lnt_expression_node.
          DATA t40 TYPE REF TO object.
          t40 = t10.
          t38 ?= t40.
          t37 = t38->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t36 = xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_st_expres_constant ).
          IF t36 = abap_true.
            DATA t41 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t41.
            DATA t43 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t43.
            DATA t45 TYPE REF TO zcl_lnt_abstract_type.
            DATA t46 TYPE REF TO zcl_lnt_expression_node.
            DATA t48 TYPE REF TO object.
            t48 = t10.
            t46 ?= t48.
            t45 = zcl_lnt_sy_expres_constant=>run_syntax( i_node = t46 ).
            t43 = t45.
            t41 = me->infer( i_context = t3 i_found = t43 ).
            t3 = t41.
          ELSE.
            DATA t50 TYPE abap_bool.
            DATA t51 TYPE REF TO zif_lnt_statement_runnable.
            DATA t52 TYPE REF TO zcl_lnt_expression_node.
            DATA t54 TYPE REF TO object.
            t54 = t10.
            t52 ?= t54.
            t51 = t52->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
            t50 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_st_source ).
            IF t50 = abap_true.
              DATA t55 TYPE REF TO zcl_lnt_abstract_type.
              DATA t57 TYPE REF TO zcl_lnt_abstract_type.
              DATA t58 TYPE REF TO zcl_lnt_expression_node.
              DATA t60 TYPE REF TO object.
              t60 = t10.
              t58 ?= t60.
              t57 = me->source_type( i_source_75cf = t58 i_scope = t2 ).
              t55 = me->infer( i_context = t3 i_found = t57 ).
              t3 = t55.
            ELSE.
              DATA t62 TYPE abap_bool.
              DATA t63 TYPE REF TO zif_lnt_statement_runnable.
              DATA t64 TYPE REF TO zcl_lnt_expression_node.
              DATA t66 TYPE REF TO object.
              t66 = t10.
              t64 ?= t66.
              t63 = t64->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
              t62 = xsdbool( t63 IS BOUND AND t63 IS INSTANCE OF zcl_lnt_arith_operator ).
              IF t62 = abap_true.
                DATA t67 TYPE abap_bool.
                DATA t68 TYPE string.
                DATA t69 TYPE REF TO zcl_lnt_expression_node.
                DATA t71 TYPE REF TO object.
                t71 = t10.
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
                CLEAR result.
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t76 TYPE abap_bool.
    DATA t77 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t79) = |&&|.
    t77 = t1->find_direct_token_by_text( i_text = t79 ).
    t76 = xsdbool( t77 IS BOUND ).
    IF t76 = abap_true.
      DATA t80 TYPE REF TO zcl_lnt_string_type.
      DATA t81 TYPE REF TO zcl_lnt_abstract_type_data.
      t80 = zcl_lnt_string_type=>get_db65( i_input_967e = t81 ).
      result = t80.
      RETURN.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD field_chain_type.
    DATA(t1) = i_field_chain.
    DATA t3 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t5 TYPE REF TO zcl_lnt_ireference.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zcl_lnt_iscope_data.
    t9 = i_scope->get_data( ).
    t8 = t9->references.
    t7 = t8.
    DATA t11 TYPE i.
    DATA t12 TYPE i.
    t7->load( ).
    t12 = lines( t7->items ).
    t11 = t12.
    DATA t14 TYPE i.
    t14 = 0.
    DATA t16 TYPE REF TO zcl_lnt_ireference.
    DO.
      DATA t18 TYPE abap_bool.
      t18 = xsdbool( t14 < t11 ).
      IF t18 = abap_false.
        EXIT.
      ENDIF.
      DATA t21 TYPE REF TO zcl_lnt_ireference.
      CLEAR t21.
      DATA t23 TYPE REF TO zcl_lnt_ireference.
      CLEAR t23.
      DATA t26 TYPE REF TO object.
      t26 = t7->get( p0 = t14 ).
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
      t21 = t23.
      DATA t29 TYPE abap_bool.
      DATA t30 TYPE abap_bool.
      DATA t31 TYPE string.
      t31 = t21->reference_type.
      DATA(t33) = |Read From|.
      t30 = xsdbool( t31 = t33 ).
      t29 = t30.
      IF t30 = abap_true.
        DATA t34 TYPE abap_bool.
        DATA t35 TYPE REF TO zcl_lnt_position.
        DATA t37 TYPE REF TO zcl_lnt_fi_identifier.
        t37 = t21->position_7b94.
        DATA t41 TYPE REF TO zcl_lnt_abstract_token.
        t41 = t37->token.
        DATA t43 TYPE REF TO zcl_lnt_position.
        t43 = t41->start.
        t35 = t43.
        DATA t45 TYPE REF TO zcl_lnt_position.
        DATA t47 TYPE REF TO zcl_lnt_abstract_token.
        t47 = t1->get_first_token( ).
        DATA t49 TYPE REF TO zcl_lnt_position.
        t49 = t47->start.
        t45 = t49.
        t34 = t35->equals( i_p = t45 ).
        t29 = t34.
      ENDIF.
      IF t29 = abap_true.
        t16 = t21.
        EXIT.
      ENDIF.
      DATA t55 TYPE i.
      DATA(t57) = 1.
      t55 = t14 + t57.
      t14 = t55.
    ENDDO.
    t5 = t16.
    DATA t59 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t60) = xsdbool( t5 IS INITIAL ).
    IF t60 = abap_true.
    ELSE.
      DATA t63 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t64 TYPE REF TO zcl_lnt_ireference.
      t64 = t5.
      t63 = t64->resolved.
      t59 = t63.
    ENDIF.
    t3 = t59.
    DATA t66 TYPE abap_bool.
    DATA t67 TYPE abap_bool.
    t67 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_typed_identifier ).
    t66 = xsdbool( t67 = abap_false ).
    IF t66 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t70 TYPE REF TO zcl_lnt_abstract_type.
    DATA t75 TYPE REF TO zcl_lnt_typed_identifier.
    t75 ?= t3.
    DATA t77 TYPE REF TO zcl_lnt_abstract_type.
    t77 = t75->type_cba0.
    t70 = t77.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t82 TYPE REF TO zcl_lnt_abstract_node.
    t82 = t1.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t84 = t82->children.
    t81 = t84.
    t80 ?= t81.
    DATA t86 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t87 TYPE REF TO object.
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
      t93 = xsdbool( t86 IS BOUND AND t86 IS INSTANCE OF zcl_lnt_expression_node ).
      t92 = xsdbool( t93 = abap_false ).
      t91 = t92.
      IF t92 = abap_false.
        DATA t95 TYPE abap_bool.
        DATA t96 TYPE REF TO zif_lnt_statement_runnable.
        DATA t97 TYPE REF TO zcl_lnt_expression_node.
        DATA t99 TYPE REF TO object.
        t99 = t86.
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
        DATA t104 TYPE REF TO object.
        t104 = t86.
        t102 ?= t104.
        t101 = t102->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t100 = xsdbool( t101 IS BOUND AND t101 IS INSTANCE OF zcl_lnt_st_component_name ).
        IF t100 = abap_true.
          DATA t105 TYPE abap_bool.
          DATA(t106) = t70.
          t105 = xsdbool( t106 IS BOUND AND t106 IS INSTANCE OF zcl_lnt_ty_table_type ).
          IF t105 = abap_true.
            DATA t111 TYPE REF TO zcl_lnt_ty_table_type.
            t111 ?= t70.
            DATA t113 TYPE REF TO zcl_lnt_abstract_type.
            t113 = t111->row_type.
            t70 = t113.
          ENDIF.
          DATA t116 TYPE abap_bool.
          DATA t117 TYPE abap_bool.
          DATA(t118) = t70.
          t117 = xsdbool( t118 IS BOUND AND t118 IS INSTANCE OF zcl_lnt_structure_type ).
          t116 = xsdbool( t117 = abap_false ).
          IF t116 = abap_true.
            CLEAR result.
            RETURN.
          ENDIF.
          DATA t122 TYPE REF TO zcl_lnt_structure_type.
          t122 ?= t70.
          DATA t124 TYPE string.
          DATA t125 TYPE string.
          DATA t126 TYPE REF TO zcl_lnt_expression_node.
          DATA t128 TYPE REF TO object.
          t128 = t86.
          t126 ?= t128.
          t125 = t126->concat_tokens( ).
          t124 = t125.
          DATA t129 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t129.
          DATA t130 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
          t130 = t122->indexed.
          DATA t132 TYPE string.
          DATA(t134) = strlen( t124 ).
          t132 = t124.
          IF t132 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t132 TO UPPER CASE.
          ELSE.
            t132 = zlnt_runtime_uppe_91169605024d=>full( t132 ).
          ENDIF.
          t129 = t130->get( p0 = t132 ).
          t70 = t129.
        ELSE.
          CLEAR result.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    result = t70.

  ENDMETHOD.

  METHOD infer.
    DATA(t1) = i_context.
    DATA(t2) = i_found.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    t4 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_float_type ).
    t3 = t4.
    IF t4 = abap_true.
      DATA t6 TYPE abap_bool.
      t6 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_integer_type ).
      t3 = t6.
    ENDIF.
    IF t3 = abap_true.
      DATA t8 TYPE REF TO zcl_lnt_float_type.
      t8 ?= t1.
      result = t8.
      RETURN.
    ELSE.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE abap_bool.
      t11 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_integer_type ).
      t10 = t11.
      IF t11 = abap_true.
        DATA t13 TYPE abap_bool.
        t13 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_hex_type ).
        t10 = t13.
      ENDIF.
      IF t10 = abap_true.
        DATA t15 TYPE REF TO zcl_lnt_integer_type.
        t15 ?= t1.
        result = t15.
        RETURN.
      ELSE.
        DATA(t17) = VALUE abap_bool( ).
        DATA t18 TYPE abap_bool.
        DATA t19 TYPE abap_bool.
        t19 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_integer_type ).
        t18 = t19.
        IF t19 = abap_false.
          DATA t21 TYPE abap_bool.
          t21 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_float_type ).
          t18 = t21.
        ENDIF.
        t17 = t18.
        IF t18 = abap_true.
          DATA(t23) = VALUE abap_bool( ).
          DATA t24 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t25 TYPE REF TO zcl_lnt_abstract_type.
          t25 = t2.
          DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA(t28) = xsdbool( t25 IS INITIAL ).
          IF t28 = abap_true.
          ELSE.
            DATA t31 TYPE abap_bool.
            DATA t32 TYPE REF TO zcl_lnt_abstract_type.
            t32 = t25.
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
          DATA t37 TYPE REF TO zcl_lnt_abstract_type.
          DATA t38 TYPE REF TO zif_lnt_union_e92befca.
          DATA t39 TYPE REF TO zcl_lnt_abstract_type.
          t39 = t1.
          t38 ?= t39.
          t37 ?= t38.
          result = t37.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    result = t2.

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
    t8 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_unknown_type ).
    t7 = t8.
    IF t8 = abap_false.
      DATA t10 TYPE abap_bool.
      t10 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_unknown_type ).
      t7 = t10.
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      DATA t12 TYPE abap_bool.
      t12 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ).
      t6 = t12.
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      DATA t14 TYPE abap_bool.
      t14 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_void_type ).
      t5 = t14.
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      DATA t16 TYPE abap_bool.
      t16 = t1->is_generic( ).
      t4 = t16.
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      DATA t18 TYPE abap_bool.
      t18 = t2->is_generic( ).
      t3 = t18.
    ENDIF.
    IF t3 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA(t21) = VALUE abap_bool( ).
    DATA t22 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    t22 = t1->zlnt_builtin_clas_3f891b097658( ).
    DATA t24 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    t24 = t2->zlnt_builtin_clas_3f891b097658( ).
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t22 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t26->cval = t22.
    ENDIF.
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
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t29 TYPE abap_bool.
    DATA t30 TYPE abap_bool.
    t30 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_structure_type ).
    t29 = t30.
    IF t30 = abap_false.
      DATA t32 TYPE abap_bool.
      t32 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t29 = t32.
    ENDIF.
    IF t29 = abap_true.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t38 TYPE REF TO zif_lnt_union_2724f734.
      t38 ?= t1.
      t37 = t38->get_qualified_name( ).
      t36 = t37.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t41) = VALUE abap_bool( ).
      IF t36 IS INITIAL.
        t41 = abap_true.
      ELSEIF t36->has = abap_false.
        t41 = abap_true.
      ENDIF.
      IF t41 = abap_true.
      ELSE.
        DATA t44 TYPE string.
        DATA t45 TYPE string.
        t45 = t36->value.
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
      t34 = t40.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t52 = t2->get_qualified_name( ).
      t51 = t52.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t55) = VALUE abap_bool( ).
      IF t51 IS INITIAL.
        t55 = abap_true.
      ELSEIF t51->has = abap_false.
        t55 = abap_true.
      ENDIF.
      IF t55 = abap_true.
      ELSE.
        DATA t58 TYPE string.
        DATA t59 TYPE string.
        t59 = t51->value.
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
      t49 = t54.
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = VALUE abap_bool( ).
      DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t65 = t34.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t69) = VALUE abap_bool( ).
      DATA(t70) = VALUE abap_bool( ).
      IF t65 IS INITIAL.
        t70 = abap_true.
      ELSEIF t65->has = abap_false.
        t70 = abap_true.
      ENDIF.
      t69 = xsdbool( t70 = abap_false ).
      t64 = t69.
      t63 = t64.
      IF t64 = abap_true.
        DATA(t72) = VALUE abap_bool( ).
        DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t75 TYPE string.
        t75 = t34->value.
        DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t77->has = abap_true.
        t77->value = t75.
        t73 = t77.
        DATA(t80) = VALUE abap_bool( ).
        DATA(t81) = VALUE abap_bool( ).
        IF t73 IS BOUND.
          t80 = t73->has.
        ENDIF.
        IF t49 IS BOUND.
          t81 = t49->has.
        ENDIF.
        IF t80 = t81.
          IF t80 = abap_false.
            t72 = abap_true.
          ELSEIF t73->value = t49->value.
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
    t83 = t1->to_abap( ).
    DATA t85 TYPE string.
    t85 = t2->to_abap( ).
    t82 = xsdbool( t83 = t85 ).
    result = t82.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_rdndnt_cnvrsn_cnf( me->gt_cn_in_sr_rl_rd_cn_ts_rd_cnv( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_rdndnt_cnvrsn_cnf( me->gt_cn_in_sr_rl_rd_cn_ts_rd_cnv( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_rdndnt_cnvrsn_cnf.
    IF t1 IS BOUND.
      IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t1->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t1->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_rdndnt_cnvrsn_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_rd_cn_ts_rd_cnv( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA t2 TYPE REF TO zcl_lnt_redundant_conversion.
    DATA(t3) = i_reg_f149.
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
