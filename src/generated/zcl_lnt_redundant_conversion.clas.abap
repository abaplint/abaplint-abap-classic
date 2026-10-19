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
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Reports CONV expressions whose operand already has the conve|.
    t11 = t11 && |rsion's target type.|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = |DATA text TYPE string.\ntext = CONV string( text ).|.
    t24 = t28.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = |DATA text TYPE string.\ntext = text.|.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |redundant_conversion| i_title = |Redundant Conversion| i_short_description = |Find redundant CONV expressions| i_bad_example = t24 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
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
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t48 ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t50 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t60 ).
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
    DATA t5 TYPE REF TO zcl_lnt_abap_release.
    t5 = me->reg->get_config( )->get_release( ).
    DATA t10 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t10 = zcl_lnt_version_module=>release_b8cd.
    t3 = xsdbool( zcl_lnt_version_module=>release_at_least( i_running = t5 i_required = t10->get( p0 = |v740sp02| ) ) = abap_false ).
    t2 = t3.
    IF t3 = abap_true.
      DATA t13 TYPE abap_bool.
      t13 = me->reg->get_config( )->is_open_abap( ).
      t2 = xsdbool( t13 = abap_false ).
    ENDIF.
    IF t2 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t21 TYPE REF TO zcl_lnt_isyntax_result.
    DATA(t24) = me->reg.
    DATA t25 TYPE REF TO zcl_lnt_abap_object.
    DATA t27 TYPE REF TO object.
    t27 = t1.
    t25 ?= t27.
    t21 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t24 i_object_19cd = t25 )->run( ).
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t30 = t21->zlnt_view_read_sr_bd188c319c03( ).
    t30->load( ).
    IF xsdbool( lines( t30->items ) > 0 ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t34.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t38 TYPE REF TO zcl_lnt_abap_object.
    DATA t40 TYPE REF TO object.
    t40 = t1.
    t38 ?= t40.
    t36 = t38->parsed.
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
      t48 = t43->structure.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      IF xsdbool( t48 IS INITIAL ) = abap_true.
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
        DATA t71 TYPE string.
        DATA t72 TYPE string.
        t72 = t65->get_first_token( )->str.
        DATA(t78) = strlen( t72 ).
        t71 = t72.
        IF t71 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t71 TO UPPER CASE.
        ELSE.
          t71 = zlnt_runtime_uppe_91169605024d=>full( t71 ).
        ENDIF.
        IF xsdbool( t71 <> |CONV| ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t80 TYPE REF TO zcl_lnt_expression_node.
        DATA(t83) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
        t80 = t65->find_direct_expression( i_type_9913 = t83 ).
        DATA t84 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t84.
        DATA t86 TYPE REF TO zcl_lnt_expression_node.
        DATA(t89) = zlnt_runtime_desc_78196487750d=>zlnt_member_d143_3ba838dd8924.
        t86 = t65->find_direct_expression( i_type_9913 = t89 ).
        DATA t90 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t90.
        IF xsdbool( t86 IS INITIAL ) = abap_true.
          CLEAR t90.
        ELSE.
          DATA t95 TYPE REF TO zcl_lnt_expression_node.
          t95 = t86.
          DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
          t90 = t95->find_direct_expression( i_type_9913 = t97 ).
        ENDIF.
        t84 = t90.
        DATA(t98) = VALUE abap_bool( ).
        DATA(t99) = VALUE abap_bool( ).
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        t99 = xsdbool( t80 IS INITIAL ).
        t98 = t99.
        IF t99 = abap_false.
          DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t109.
          t98 = xsdbool( t84 IS INITIAL ).
        ENDIF.
        IF t98 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t113 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t113.
        DATA t115 TYPE REF TO zif_lnt_spaghetti_scope.
        t115 = t21->zlnt_view_read_sr_b6b1d9e0c93e( ).
        DATA t117 TYPE REF TO zcl_lnt_position.
        CLEAR t117.
        t117 = t65->get_first_token( )->start.
        DATA t129 TYPE REF TO zcl_lnt_abstract_file.
        t129 = t43.
        DATA t131 TYPE string.
        t131 = t129->filename.
        DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t133->has = abap_true.
        t133->value = t131.
        t113 = t115->lookup_position( i_p = t117 i_filename = t133 ).
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t138.
        IF xsdbool( t113 IS INITIAL ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t142 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t142.
        DATA t144 TYPE REF TO zcl_lnt_ireference.
        CLEAR t144.
        DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t146 = t113->get_data( )->references.
        DATA t151 TYPE i.
        t146->load( ).
        t151 = lines( t146->items ).
        DATA t154 TYPE i.
        t154 = 0.
        DATA t156 TYPE REF TO zcl_lnt_ireference.
        CLEAR t156.
        DO.
          IF xsdbool( t154 < t151 ) = abap_false.
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
          t170 = xsdbool( t161->reference_type = |Inferred Type| ).
          t169 = t170.
          IF t170 = abap_true.
            DATA t175 TYPE REF TO zcl_lnt_position.
            t175 = t161->position_7b94->token->start.
            DATA t190 TYPE REF TO zcl_lnt_position.
            t190 = t80->get_first_token( )->start.
            t169 = t175->equals( i_p = t190 ).
          ENDIF.
          IF t169 = abap_true.
            t156 = t161.
            EXIT.
          ENDIF.
          DATA(t198) = 1.
          t154 = t154 + t198.
        ENDDO.
        t144 = t156.
        DATA t200 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t200.
        IF xsdbool( t144 IS INITIAL ) = abap_true.
          CLEAR t200.
        ELSE.
          t200 = t144->resolved.
        ENDIF.
        t142 = t200.
        DATA t207 TYPE REF TO zcl_lnt_abstract_type.
        t207 = me->source_type( i_source_75cf = t84 i_scope = t113 ).
        IF xsdbool( xsdbool( t142 IS BOUND AND t142 IS INSTANCE OF zcl_lnt_typed_identifier ) = abap_false ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t216) = VALUE abap_bool( ).
        DATA(t217) = VALUE abap_bool( ).
        DATA(t218) = VALUE abap_bool( ).
        DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t221.
        t218 = xsdbool( xsdbool( t207 IS INITIAL ) = abap_false ).
        t217 = t218.
        IF t218 = abap_true.
          DATA t227 TYPE REF TO zcl_lnt_abstract_type.
          DATA t229 TYPE REF TO zcl_lnt_typed_identifier.
          t229 ?= t142.
          t227 = t229->type_cba0.
          t217 = me->same_type( i_first = t227 i_second = t207 ).
        ENDIF.
        t216 = t217.
        DATA t236 TYPE abap_bool.
        DATA t238 TYPE REF TO zcl_lnt_expression_node.
        t238 = t84.
        DATA t241 TYPE REF TO zif_lnt_spaghetti_scope_node.
        t241 = t113.
        DATA t245 TYPE REF TO zcl_lnt_typed_identifier.
        t245 ?= t142.
        DATA t247 TYPE REF TO zcl_lnt_abstract_type.
        t247 = t245->type_cba0.
        t236 = me->arthmtc_uss_sm_trgt_typ( i_conversion = t65 i_body_source = t238 i_file = t43 i_scope = t241 i_conversion_type = t247 ).
        DATA t249 TYPE abap_bool.
        DATA t250 TYPE abap_bool.
        t250 = xsdbool( t216 = abap_false ).
        t249 = t250.
        IF t250 = abap_true.
          t249 = xsdbool( t236 = abap_false ).
        ENDIF.
        IF t249 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t256 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t256.
        DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t258 = t65->get_direct_tokens( ).
        DATA t261 TYPE i.
        t258->load( ).
        t261 = lines( t258->items ).
        DATA t264 TYPE i.
        t264 = 0.
        DATA t266 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t266.
        DO.
          IF xsdbool( t264 < t261 ) = abap_false.
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
          t280 = xsdbool( t271->str = |)| ).
          t279 = t280.
          IF t280 = abap_true.
            DATA t288 TYPE REF TO zcl_lnt_position.
            t288 = t271->start.
            DATA t298 TYPE REF TO zcl_lnt_position.
            t298 = t84->get_last_token( )->start.
            t279 = t288->is_after( i_p = t298 ).
          ENDIF.
          IF t279 = abap_true.
            t266 = t271.
            EXIT.
          ENDIF.
          DATA(t306) = 1.
          t264 = t264 + t306.
        ENDDO.
        t256 = t266.
        DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t311.
        IF xsdbool( t256 IS INITIAL ) = abap_true.
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
        t317 = xsdbool( xsdbool( t319 IS INITIAL ) = abap_false ).
        t316 = t317.
        IF t317 = abap_false.
          DATA t330 TYPE REF TO zcl_lnt_abstract_token.
          t330 = t84->find_direct_token_by_text( i_text = |&&| ).
          DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t334.
          t316 = xsdbool( xsdbool( t330 IS INITIAL ) = abap_false ).
        ENDIF.
        t315 = t316.
        DATA t340 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t340.
        DATA t341 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t341.
        DATA t343 TYPE REF TO zcl_lnt_position.
        DATA t344 TYPE REF TO zcl_lnt_abstract_token.
        t344 = t84->get_last_token( ).
        DATA t349 TYPE f.
        t349 = t344->start->row.
        DATA t356 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t356 = t344->start->col.
        DATA t362 TYPE f.
        t362 = strlen( t344->str ).
        DATA(t367) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t367->has = abap_true.
        t367->value = t362.
        t343 = NEW zcl_lnt_position( i_row = t349 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t356 right = t367 op = `+` ) ).
        DATA t368 TYPE REF TO zcl_lnt_position.
        DATA t369 TYPE REF TO zcl_lnt_abstract_token.
        t369 = t256.
        DATA t373 TYPE f.
        t373 = t369->start->row.
        DATA t380 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t380 = t369->start->col.
        DATA t386 TYPE f.
        t386 = strlen( t369->str ).
        DATA(t391) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t391->has = abap_true.
        t391->value = t386.
        t368 = NEW zcl_lnt_position( i_row = t373 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t380 right = t391 op = `+` ) ).
        DATA(t392) = VALUE string( ).
        IF t315 = abap_true.
          t392 = |)|.
        ELSE.
          t392 = ||.
        ENDIF.
        t341 = zcl_lnt_edit_helper=>replace_range( i_file = t43 i_start = t343 i_end = t368 i_text = t392 ).
        DATA t398 TYPE REF TO zcl_lnt_position.
        t398 = t65->get_first_token( )->start.
        DATA t404 TYPE REF TO zcl_lnt_position.
        t404 = t84->get_first_token( )->start.
        DATA(t411) = VALUE string( ).
        IF t315 = abap_true.
          t411 = |(|.
        ELSE.
          t411 = ||.
        ENDIF.
        t340 = zcl_lnt_edit_helper=>merge( i_fix1 = t341 i_fix2 = zcl_lnt_edit_helper=>replace_range( i_file = t43 i_start = t398 i_end = t404 i_text = t411 ) ).
        DATA t416 TYPE REF TO zcl_lnt_issue.
        CLEAR t416.
        DATA t418 TYPE REF TO zcl_lnt_position.
        t418 = t65->get_first_token( )->start.
        DATA t424 TYPE REF TO zcl_lnt_position.
        DATA t425 TYPE REF TO zcl_lnt_abstract_token.
        t425 = t256.
        DATA t429 TYPE f.
        t429 = t425->start->row.
        DATA t436 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t436 = t425->start->col.
        DATA t442 TYPE f.
        t442 = strlen( t425->str ).
        DATA(t447) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t447->has = abap_true.
        t447->value = t442.
        t424 = NEW zcl_lnt_position( i_row = t429 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t436 right = t447 op = `+` ) ).
        DATA(t449) = VALUE string( ).
        DATA t450 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t450.
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
        CREATE OBJECT t467.
        t467->load( ).
        APPEND |Quickfix| TO t467->items.
        t467->save( ).
        t463 = t467.
        DATA t473 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t473.
        DATA(t477) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t477->has = abap_true.
        t477->value = |DATA text TYPE string.\ntext = CONV string( text ).|.
        t473 = t477.
        DATA t479 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t479.
        DATA(t483) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t483->has = abap_true.
        t483->value = |DATA text TYPE string.\ntext = text.|.
        t479 = t483.
        DATA t485 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t485.
        DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t487.
        t450 = NEW zcl_lnt_irule_metadata( i_key = |redundant_conversion| i_title = |Redundant Conversion| i_short_description = |Find redundant CONV expressions| i_bad_example = t473 i_good_example = t479 i_extended_information = t457 i_tags = t463 i_pragma = t485 i_pseudo_comment = t487 ).
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
        DATA t497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t497.
        t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t497 ).
        DATA t499 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t499.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t499 ).
        ENDIF.
        DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t501.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t501 ).
        ENDIF.
        DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t503.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t503 ).
        ENDIF.
        DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t505.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t505 ).
        ENDIF.
        DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t507.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t507 ).
        ENDIF.
        DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t509.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t509 ).
        ENDIF.
        t449 = t450->key.
        DATA t510 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t510 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t512 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t512.
        t512 = t340.
        DATA t516 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t516.
        t416 = zcl_lnt_issue=>at_range( i_file = t43 i_start = t418 i_end = t424 i_message_26cb = |Redundant CONV expression| i_key = t449 i_severity = t510 i_fix = t512 i_alternative_fixes = t516 ).
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
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d91_10c609bb0b604f.
    t8 = i_body_source->find_direct_expression( i_type_9913 = t10 ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t8 IS INITIAL ) = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zcl_lnt_statement_node.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t18 = t3->statements.
    DATA t24 TYPE i.
    t18->load( ).
    t24 = lines( t18->items ).
    DATA t27 TYPE i.
    t27 = 0.
    DATA t29 TYPE REF TO zcl_lnt_statement_node.
    DO.
      IF xsdbool( t27 < t24 ) = abap_false.
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
      IF t34->includes_token( i_search_b3ca = t1->get_first_token( ) ) = abap_true.
        t29 = t34.
        EXIT.
      ENDIF.
      DATA(t52) = 1.
      t27 = t27 + t52.
    ENDDO.
    t16 = t29.
    DATA t56 TYPE REF TO zif_lnt_statement.
    DATA t57 TYPE REF TO zcl_lnt_statement_node.
    t57 = t16.
    DATA t59 TYPE REF TO zif_lnt_statement.
    IF xsdbool( t57 IS INITIAL ) = abap_true.
    ELSE.
      t59 = t57->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    ENDIF.
    t56 = t59.
    IF xsdbool( xsdbool( t56 IS BOUND AND t56 IS INSTANCE OF zcl_lnt_st_move ) = abap_false ) = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t67 TYPE REF TO zcl_lnt_abstract_token.
    DATA t69 TYPE REF TO zcl_lnt_expression_node.
    DATA t71 TYPE REF TO zcl_lnt_statement_node.
    t71 = t16.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t69 = t71->find_direct_expression( i_type_9913 = t73 ).
    DATA t74 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t69 IS INITIAL ) = abap_true.
    ELSE.
      t74 = t69->get_first_token( ).
    ENDIF.
    t67 = t74.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t67 IS INITIAL ) = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t89 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t91 TYPE REF TO zcl_lnt_ireference.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t93 = t4->get_data( )->references.
    DATA t97 TYPE i.
    t93->load( ).
    t97 = lines( t93->items ).
    DATA t100 TYPE i.
    t100 = 0.
    DATA t102 TYPE REF TO zcl_lnt_ireference.
    DO.
      IF xsdbool( t100 < t97 ) = abap_false.
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
      t116 = xsdbool( t107->reference_type = |Write To| ).
      t115 = t116.
      IF t116 = abap_true.
        DATA t121 TYPE REF TO zcl_lnt_position.
        t121 = t107->position_7b94->token->start.
        DATA t131 TYPE REF TO zcl_lnt_position.
        t131 = t67->start.
        t115 = t121->equals( i_p = t131 ).
      ENDIF.
      IF t115 = abap_true.
        t102 = t107.
        EXIT.
      ENDIF.
      DATA(t143) = 1.
      t100 = t100 + t143.
    ENDDO.
    t91 = t102.
    DATA t145 TYPE REF TO zcl_lnt_fi_identifier.
    IF xsdbool( t91 IS INITIAL ) = abap_true.
    ELSE.
      t145 = t91->resolved.
    ENDIF.
    t89 = t145.
    DATA t152 TYPE abap_bool.
    DATA t153 TYPE abap_bool.
    t153 = xsdbool( t89 IS BOUND AND t89 IS INSTANCE OF zcl_lnt_typed_identifier ).
    t152 = t153.
    IF t153 = abap_true.
      DATA t157 TYPE REF TO zcl_lnt_abstract_type.
      DATA t159 TYPE REF TO zcl_lnt_typed_identifier.
      t159 ?= t89.
      t157 = t159->type_cba0.
      t152 = me->same_type( i_first = t5 i_second = t157 ).
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
    t5 = t6->children.
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
      IF xsdbool( xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_expression_node ) = abap_false ) = abap_true.
        CONTINUE.
      ELSE.
        DATA t19 TYPE REF TO zif_lnt_statement_runnable.
        DATA t20 TYPE REF TO zcl_lnt_expression_node.
        DATA t22 TYPE REF TO object.
        t22 = t10.
        t20 ?= t22.
        t19 = t20->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        IF xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_field_chain ) = abap_true.
          DATA t24 TYPE REF TO zcl_lnt_expression_node.
          DATA t26 TYPE REF TO object.
          t26 = t10.
          t24 ?= t26.
          t3 = me->field_chain_type( i_field_chain = t24 i_scope = t2 ).
          DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t31.
          IF xsdbool( t3 IS INITIAL ) = abap_true.
            CLEAR result.
            RETURN.
          ENDIF.
        ELSE.
          DATA t37 TYPE REF TO zif_lnt_statement_runnable.
          DATA t38 TYPE REF TO zcl_lnt_expression_node.
          DATA t40 TYPE REF TO object.
          t40 = t10.
          t38 ?= t40.
          t37 = t38->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          IF xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_st_expres_constant ) = abap_true.
            DATA t46 TYPE REF TO zcl_lnt_expression_node.
            DATA t48 TYPE REF TO object.
            t48 = t10.
            t46 ?= t48.
            t3 = me->infer( i_context = t3 i_found = zcl_lnt_sy_expres_constant=>run_syntax( i_node = t46 ) ).
          ELSE.
            DATA t51 TYPE REF TO zif_lnt_statement_runnable.
            DATA t52 TYPE REF TO zcl_lnt_expression_node.
            DATA t54 TYPE REF TO object.
            t54 = t10.
            t52 ?= t54.
            t51 = t52->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
            IF xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_st_source ) = abap_true.
              DATA t58 TYPE REF TO zcl_lnt_expression_node.
              DATA t60 TYPE REF TO object.
              t60 = t10.
              t58 ?= t60.
              t3 = me->infer( i_context = t3 i_found = me->source_type( i_source_75cf = t58 i_scope = t2 ) ).
            ELSE.
              DATA t63 TYPE REF TO zif_lnt_statement_runnable.
              DATA t64 TYPE REF TO zcl_lnt_expression_node.
              DATA t66 TYPE REF TO object.
              t66 = t10.
              t64 ?= t66.
              t63 = t64->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
              IF xsdbool( t63 IS BOUND AND t63 IS INSTANCE OF zcl_lnt_arith_operator ) = abap_true.
                DATA t69 TYPE REF TO zcl_lnt_expression_node.
                DATA t71 TYPE REF TO object.
                t71 = t10.
                t69 ?= t71.
                IF xsdbool( t69->concat_tokens( ) = |**| ) = abap_true.
                  DATA t74 TYPE REF TO zcl_lnt_abstract_type_data.
                  CLEAR t74.
                  t3 = NEW zcl_lnt_float_type( i_input_967e = t74 ).
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
    DATA t77 TYPE REF TO zcl_lnt_abstract_token.
    t77 = t1->find_direct_token_by_text( i_text = |&&| ).
    IF xsdbool( t77 IS BOUND ) = abap_true.
      DATA t81 TYPE REF TO zcl_lnt_abstract_type_data.
      result = zcl_lnt_string_type=>get_db65( i_input_967e = t81 ).
      RETURN.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD field_chain_type.
    DATA(t1) = i_field_chain.
    DATA t3 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t5 TYPE REF TO zcl_lnt_ireference.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = i_scope->get_data( )->references.
    DATA t11 TYPE i.
    t7->load( ).
    t11 = lines( t7->items ).
    DATA t14 TYPE i.
    t14 = 0.
    DATA t16 TYPE REF TO zcl_lnt_ireference.
    DO.
      IF xsdbool( t14 < t11 ) = abap_false.
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
      t30 = xsdbool( t21->reference_type = |Read From| ).
      t29 = t30.
      IF t30 = abap_true.
        DATA t35 TYPE REF TO zcl_lnt_position.
        t35 = t21->position_7b94->token->start.
        DATA t49 TYPE REF TO zcl_lnt_position.
        t49 = t1->get_first_token( )->start.
        t29 = t35->equals( i_p = t49 ).
      ENDIF.
      IF t29 = abap_true.
        t16 = t21.
        EXIT.
      ENDIF.
      DATA(t57) = 1.
      t14 = t14 + t57.
    ENDDO.
    t5 = t16.
    DATA t59 TYPE REF TO zcl_lnt_fi_identifier.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
    ELSE.
      t59 = t5->resolved.
    ENDIF.
    t3 = t59.
    IF xsdbool( xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_typed_identifier ) = abap_false ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t70 TYPE REF TO zcl_lnt_abstract_type.
    DATA t75 TYPE REF TO zcl_lnt_typed_identifier.
    t75 ?= t3.
    t70 = t75->type_cba0.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t82 TYPE REF TO zcl_lnt_abstract_node.
    t82 = t1.
    t81 = t82->children.
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
      t92 = xsdbool( xsdbool( t86 IS BOUND AND t86 IS INSTANCE OF zcl_lnt_expression_node ) = abap_false ).
      t91 = t92.
      IF t92 = abap_false.
        DATA t96 TYPE REF TO zif_lnt_statement_runnable.
        DATA t97 TYPE REF TO zcl_lnt_expression_node.
        DATA t99 TYPE REF TO object.
        t99 = t86.
        t97 ?= t99.
        t96 = t97->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t91 = xsdbool( t96 IS BOUND AND t96 IS INSTANCE OF zcl_lnt_st_source_field ).
      ENDIF.
      IF t91 = abap_true.
        CONTINUE.
      ELSE.
        DATA t101 TYPE REF TO zif_lnt_statement_runnable.
        DATA t102 TYPE REF TO zcl_lnt_expression_node.
        DATA t104 TYPE REF TO object.
        t104 = t86.
        t102 ?= t104.
        t101 = t102->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        IF xsdbool( t101 IS BOUND AND t101 IS INSTANCE OF zcl_lnt_st_component_name ) = abap_true.
          DATA(t106) = t70.
          IF xsdbool( t106 IS BOUND AND t106 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_true.
            DATA t111 TYPE REF TO zcl_lnt_ty_table_type.
            t111 ?= t70.
            t70 = t111->row_type.
          ENDIF.
          DATA(t118) = t70.
          IF xsdbool( xsdbool( t118 IS BOUND AND t118 IS INSTANCE OF zcl_lnt_structure_type ) = abap_false ) = abap_true.
            CLEAR result.
            RETURN.
          ENDIF.
          DATA t122 TYPE REF TO zcl_lnt_structure_type.
          t122 ?= t70.
          DATA t124 TYPE string.
          DATA t126 TYPE REF TO zcl_lnt_expression_node.
          DATA t128 TYPE REF TO object.
          t128 = t86.
          t126 ?= t128.
          t124 = t126->concat_tokens( ).
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
          t70 = t130->get( p0 = t132 ).
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
      t3 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_integer_type ).
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
        t10 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_hex_type ).
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
          t18 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_float_type ).
        ENDIF.
        t17 = t18.
        IF t18 = abap_true.
          DATA(t23) = VALUE abap_bool( ).
          DATA t24 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t25 TYPE REF TO zcl_lnt_abstract_type.
          t25 = t2.
          DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          IF xsdbool( t25 IS INITIAL ) = abap_true.
          ELSE.
            DATA t31 TYPE abap_bool.
            t31 = t25->is_generic( ).
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
      t7 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_unknown_type ).
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      t6 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ).
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      t5 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_void_type ).
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      t4 = t1->is_generic( ).
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      t3 = t2->is_generic( ).
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
      t29 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ty_table_type ).
    ENDIF.
    IF t29 = abap_true.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t38 TYPE REF TO zif_lnt_union_2724f734.
      t38 ?= t1.
      t36 = t38->get_qualified_name( ).
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
      t51 = t2->get_qualified_name( ).
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
      DATA(t70) = VALUE abap_bool( ).
      IF t65 IS INITIAL.
        t70 = abap_true.
      ELSEIF t65->has = abap_false.
        t70 = abap_true.
      ENDIF.
      t64 = xsdbool( t70 = abap_false ).
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
    result = xsdbool( t1->to_abap( ) = t2->to_abap( ) ).

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
    DATA(t3) = i_reg_f149.
    result = me->in_in_sr_rl_rdn_cnv_ts_rdn_cnv( i_reg_f149 = t3 ).

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
