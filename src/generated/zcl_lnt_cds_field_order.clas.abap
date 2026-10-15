* TS: src/rules/cds_field_order.ts:13:1 CDSFieldOrder
CLASS zcl_lnt_cds_field_order DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_cds_field_order_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_cd_fl_or_ts_cd_fl_or RETURNING VALUE(result) TYPE REF TO zcl_lnt_cds_field_order_conf.
    METHODS s_c_i_s_r_cd_fl_or_ts_cd_fl_or IMPORTING i_conf TYPE REF TO zcl_lnt_cds_field_order_conf.
    METHODS i_i_sr_rl_cd_fl_or_ts_cd_fl_or IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS r_i_sr_rl_cd_fl_or_ts_cd_fl_or IMPORTING i_o TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_association_names IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    METHODS is_association_element IMPORTING i_element TYPE REF TO zcl_lnt_expression_node i_association_names TYPE REF TO zlnt_runtime_set__1827558fd4c7 RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_7ed9498cda68 TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_cds_field_order IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_cds_field_order_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |cds_field_order|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |CDS Field Order|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that CDS key fields are listed first and associations|.
    t7 = t7 && | last in the field list|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t13.
      t12 = t13.
      DATA(t14) = t12.
      DATA(t15) = |SingleFile|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      t11 = t16.
      t9 = t11.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t17.
      t9 = t17.
    ENDIF.
    t8 = t9.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA(t21) = |define view entity test as select from source\n  association |.
      t21 = t21 && |[1..1] to target as _Assoc on _Assoc.id = source.id\n\{\n  fiel|.
      t21 = t21 && |d1,\n  key id,\n  _Assoc\n\}|.
      DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t22->has = abap_true.
      t22->value = t21.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t19 = t23.
    ENDIF.
    t18 = t19.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA(t27) = |define view entity test as select from source\n  association |.
      t27 = t27 && |[1..1] to target as _Assoc on _Assoc.id = source.id\n\{\n  key |.
      t27 = t27 && |id,\n  field1,\n  _Assoc\n\}|.
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
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t18 i_good_example = t24 i_extended_information = t30 i_tags = t8 i_pragma = t32 i_pseudo_comment = t34 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t41 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t42) = |key|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    ENDIF.
    DATA(t44) = |title|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = |shortDescription|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |tags|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |badExample|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |goodExample|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_cd_fl_or_ts_cd_fl_or.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_cd_fl_or_ts_cd_fl_or.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD i_i_sr_rl_cd_fl_or_ts_cd_fl_or.
    DATA(t1) = i_reg_d009.
    DATA(t2) = me.
    result = t2.

  ENDMETHOD.

  METHOD r_i_sr_rl_cd_fl_or_ts_cd_fl_or.
    DATA(t1) = i_o.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE string.
    DATA(t5) = t1.
    t4 = t5->get_type( ).
    DATA(t6) = |DDLS|.
    t3 = xsdbool( t4 <> t6 ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t7 TYPE abap_bool.
      DATA t8 TYPE abap_bool.
      DATA(t9) = t1.
      t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_ob_data_definition ).
      t7 = xsdbool( t8 = abap_false ).
      t2 = t7.
    ENDIF.
    IF t2 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t10.
      result = t10.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA t14 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA(t15) = t1.
    DATA t16 TYPE REF TO object.
    t16 = t15.
    t14 ?= t16.
    t13 = t14.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA t19 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA(t20) = t13.
    t19 = t20->parsed_data.
    t18 = t19.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = t18.
    IF t23 IS INITIAL.
      t22 = abap_true.
    ENDIF.
    IF t22 = abap_true.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t24.
      t21 = t24.
    ELSE.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      DATA t26 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA(t27) = t18.
      t26 = t27.
      t25 = t26->tree.
      t21 = t25.
    ENDIF.
    t17 = t21.
    t12 = t17.
    t11 = t12.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    DATA(t30) = t11.
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
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t35.
      result = t35.
      RETURN.
    ENDIF.
    DATA t36 TYPE REF TO zif_lnt_file.
    DATA t37 TYPE REF TO zif_lnt_file.
    DATA t38 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA(t39) = t1.
    DATA t40 TYPE REF TO object.
    t40 = t39.
    t38 ?= t40.
    t37 = t38->find_source_file( ).
    t36 = t37.
    DATA(t41) = VALUE abap_bool( ).
    DATA t42 TYPE REF TO zif_lnt_file.
    DATA(t43) = t36.
    t42 = t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    t44 = t45.
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = t42.
    IF t47 IS INITIAL.
      t46 = abap_true.
    ENDIF.
    t41 = t46.
    IF t41 = abap_true.
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t48.
      result = t48.
      RETURN.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t50.
    t49 = t50.
    DATA t51 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA t52 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA t53 TYPE REF TO zcl_lnt_expression_node.
    DATA(t54) = t11.
    t53 = t54.
    t52 = me->get_association_names( i_tree = t53 ).
    t51 = t52.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t56 TYPE REF TO zcl_lnt_expression_node.
    DATA(t57) = t11.
    t56 = t57.
    DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1112_606bcf340c7d.
    t55 = t56->find_all_expressions( i_type_9913 = t58 ).
    DATA t59 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t59.
    DATA t60 TYPE REF TO object.
    CLEAR t60.
    DATA(t61) = VALUE i( ).
    DO.
      t55->load( ).
      IF t61 >= lines( t55->items ).
        EXIT.
      ENDIF.
      CLEAR t60.
      READ TABLE t55->items INDEX t61 + 1 INTO t60.
      t61 = t61 + 1.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      CLEAR t59.
      IF t60 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t62 ?= t60.
        DATA t63 TYPE REF TO object.
        t63 = t62->as_ref( ).
        t59 ?= t63.
      ELSE.
        t59 ?= t60.
      ENDIF.
      DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t66) = t59.
      DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
      t65 = t66->find_direct_expressions( i_type_9913 = t67 ).
      t64 = t65.
      DATA t68 TYPE abap_bool.
      DATA t69 TYPE i.
      DATA(t70) = t64.
      t70->load( ).
      t69 = lines( t70->items ).
      DATA(t71) = 0.
      t68 = xsdbool( t69 = t71 ).
      IF t68 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t72 TYPE abap_bool.
      DATA(t73) = abap_false.
      t72 = t73.
      DATA t74 TYPE abap_bool.
      DATA(t75) = abap_false.
      t74 = t75.
      DATA(t76) = t64.
      DATA t77 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t77.
      DATA t78 TYPE REF TO object.
      CLEAR t78.
      DATA(t79) = VALUE i( ).
      DO.
        t76->load( ).
        IF t79 >= lines( t76->items ).
          EXIT.
        ENDIF.
        CLEAR t78.
        READ TABLE t76->items INDEX t79 + 1 INTO t78.
        t79 = t79 + 1.
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t80.
        CLEAR t77.
        IF t78 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t80 ?= t78.
          DATA t81 TYPE REF TO object.
          t81 = t80->as_ref( ).
          t77 ?= t81.
        ELSE.
          t77 ?= t78.
        ENDIF.
        DATA(t82) = VALUE abap_bool( ).
        DATA(t83) = VALUE abap_bool( ).
        DATA t84 TYPE REF TO zcl_lnt_abstract_token.
        DATA t85 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t86) = t77.
        DATA(t87) = |KEY|.
        t85 = t86->find_direct_token_by_text( i_text = t87 ).
        t84 = t85.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        t88 = t89.
        DATA(t90) = VALUE abap_bool( ).
        DATA(t91) = VALUE abap_bool( ).
        DATA(t92) = t84.
        IF t92 IS INITIAL.
          t91 = abap_true.
        ENDIF.
        t90 = xsdbool( t91 = abap_false ).
        t83 = t90.
        t82 = t83.
        DATA(t93) = VALUE abap_bool( ).
        DATA(t94) = VALUE abap_bool( ).
        DATA t95 TYPE REF TO zcl_lnt_expression_node.
        DATA(t96) = t77.
        t95 = t96.
        DATA t97 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        DATA(t98) = t51.
        t97 = t98.
        DATA(t99) = VALUE abap_bool( ).
        DATA(t100) = VALUE string( ).
        DATA(t101) = VALUE string( ).
        DATA t102 TYPE string.
        DATA t103 TYPE string.
        DATA(t104) = t95.
        t103 = t104->concat_tokens( ).
        DATA t105 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t105.
        DATA(t106) = `^(KEY|VIRTUAL)\s+`.
        DATA(t107) = |^(KEY\|VIRTUAL)[\t\n|.
        DATA t108 TYPE c LENGTH 1.
        CLEAR t108.
        t108 = cl_abap_conv_in_ce=>uccpi( 11 ).
        CONCATENATE t107 t108 INTO t107 RESPECTING BLANKS.
        DATA t109 TYPE c LENGTH 1.
        CLEAR t109.
        t109 = cl_abap_conv_in_ce=>uccpi( 12 ).
        CONCATENATE t107 t109 INTO t107 RESPECTING BLANKS.
        t107 = t107 && |\r    - |.
        DATA t110 TYPE c LENGTH 1.
        CLEAR t110.
        t110 = cl_abap_conv_in_ce=>uccpi( 8232 ).
        CONCATENATE t107 t110 INTO t107 RESPECTING BLANKS.
        DATA t111 TYPE c LENGTH 1.
        CLEAR t111.
        t111 = cl_abap_conv_in_ce=>uccpi( 8233 ).
        CONCATENATE t107 t111 INTO t107 RESPECTING BLANKS.
        t107 = t107 && |  　|.
        DATA t112 TYPE c LENGTH 1.
        CLEAR t112.
        t112 = cl_abap_conv_in_ce=>uccpi( 65279 ).
        CONCATENATE t107 t112 INTO t107 RESPECTING BLANKS.
        t107 = t107 && |]+|.
        DATA(t113) = |i|.
        CREATE OBJECT t105 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t107 flags = t113.
        t105->source = t106.
        DATA(t114) = ||.
        DATA(t115) = strlen( t103 ).
        t102 = t105->replace( p0 = t103 p1 = t114 ).
        DATA(t116) = strlen( t102 ).
        DATA t117 TYPE i.
        DATA t118 TYPE i.
        t117 = 0.
        t118 = t116.
        DATA(t119) = VALUE i( ).
        DATA(t120) = VALUE i( ).
        DATA(t121) = VALUE string( ).
        WHILE t117 < t118.
          t120 = t117.
          t121 = t102+t120(1).
          DATA t122 TYPE c LENGTH 1.
          CLEAR t122.
          DATA(t123) = VALUE xstring( ).
          DATA t124 TYPE x LENGTH 1.
          CLEAR t124.
          DATA t125 TYPE x LENGTH 1.
          CLEAR t125.
          DATA(t126) = VALUE i( ).
          t122 = t121.
          t119 = cl_abap_conv_out_ce=>uccpi( t122 ).
          IF t119 >= 255.
            IF zlnt_builtin_code_7ed9498cda68 IS NOT BOUND.
              zlnt_builtin_code_7ed9498cda68 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_7ed9498cda68->convert( EXPORTING data = t121 IMPORTING buffer = t123 ).
            t124 = t123(1).
            t125 = t123+1(1).
            t119 = t124.
            t126 = t125.
            t119 = t119 + t126 * 256.
          ENDIF.
          IF t119 = 9 OR t119 = 10 OR t119 = 11 OR t119 = 12 OR t119 = 13 OR t119 = 32 OR t119 = 160 OR t119 = 5760 OR t119 = 8232 OR t119 = 8233 OR t119 = 8239 OR t119 = 8287 OR t119 = 12288 OR t119 = 65279 OR t119 >= 8192 AND t119 <= 8202.
            t117 = t117 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        DATA(t127) = VALUE i( ).
        DATA(t128) = VALUE i( ).
        DATA(t129) = VALUE string( ).
        WHILE t118 > t117.
          t128 = t118 - 1.
          t129 = t102+t128(1).
          DATA t130 TYPE c LENGTH 1.
          CLEAR t130.
          DATA(t131) = VALUE xstring( ).
          DATA t132 TYPE x LENGTH 1.
          CLEAR t132.
          DATA t133 TYPE x LENGTH 1.
          CLEAR t133.
          DATA(t134) = VALUE i( ).
          t130 = t129.
          t127 = cl_abap_conv_out_ce=>uccpi( t130 ).
          IF t127 >= 255.
            IF zlnt_builtin_code_7ed9498cda68 IS NOT BOUND.
              zlnt_builtin_code_7ed9498cda68 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_7ed9498cda68->convert( EXPORTING data = t129 IMPORTING buffer = t131 ).
            t132 = t131(1).
            t133 = t131+1(1).
            t127 = t132.
            t134 = t133.
            t127 = t127 + t134 * 256.
          ENDIF.
          IF t127 = 9 OR t127 = 10 OR t127 = 11 OR t127 = 12 OR t127 = 13 OR t127 = 32 OR t127 = 160 OR t127 = 5760 OR t127 = 8232 OR t127 = 8233 OR t127 = 8239 OR t127 = 8287 OR t127 = 12288 OR t127 = 65279 OR t127 >= 8192 AND t127 <= 8202.
            t118 = t118 - 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t118 > t117.
          t116 = t118 - t117.
          t101 = t102+t117(t116).
        ELSE.
          CLEAR t101.
        ENDIF.
        t100 = t101.
        DATA(t135) = VALUE string( ).
        DATA(t136) = VALUE string( ).
        DATA t137 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t138 TYPE string.
        DATA(t139) = t100.
        t138 = t139.
        DATA t140 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t141) = t138.
        DATA t142 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t142.
        DATA(t143) = `[\s.,:(]+`.
        DATA(t144) = |[\t\n|.
        DATA t145 TYPE c LENGTH 1.
        CLEAR t145.
        t145 = cl_abap_conv_in_ce=>uccpi( 11 ).
        CONCATENATE t144 t145 INTO t144 RESPECTING BLANKS.
        DATA t146 TYPE c LENGTH 1.
        CLEAR t146.
        t146 = cl_abap_conv_in_ce=>uccpi( 12 ).
        CONCATENATE t144 t146 INTO t144 RESPECTING BLANKS.
        t144 = t144 && |\r    - |.
        DATA t147 TYPE c LENGTH 1.
        CLEAR t147.
        t147 = cl_abap_conv_in_ce=>uccpi( 8232 ).
        CONCATENATE t144 t147 INTO t144 RESPECTING BLANKS.
        DATA t148 TYPE c LENGTH 1.
        CLEAR t148.
        t148 = cl_abap_conv_in_ce=>uccpi( 8233 ).
        CONCATENATE t144 t148 INTO t144 RESPECTING BLANKS.
        t144 = t144 && |  　|.
        DATA t149 TYPE c LENGTH 1.
        CLEAR t149.
        t149 = cl_abap_conv_in_ce=>uccpi( 65279 ).
        CONCATENATE t144 t149 INTO t144 RESPECTING BLANKS.
        t144 = t144 && |.,:(]+|.
        DATA(t150) = ||.
        CREATE OBJECT t142 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t144 flags = t150.
        t142->source = t143.
        DATA(t151) = CONV f( '4294967295' ).
        DATA(t152) = strlen( t141 ).
        t140 = zlnt_runtime_stri_248d3505915c=>split( text = t141 pattern = t142 limit = t151 ).
        t137 = t140.
        IF t137->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t137->load( ).
        CLEAR t136.
        READ TABLE t137->items INDEX 1 INTO t136.
        t135 = t136.
        DATA(t153) = VALUE abap_bool( ).
        DATA(t154) = t97.
        DATA t155 TYPE string.
        DATA(t156) = t135.
        DATA(t157) = strlen( t156 ).
        t155 = t156.
        IF t155 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t155 TO UPPER CASE.
        ELSE.
          t155 = zlnt_runtime_uppe_91169605024d=>full( t155 ).
        ENDIF.
        t153 = t154->has( p0 = t155 ).
        t99 = t153.
        t94 = t99.
        t93 = t94.
        DATA t158 TYPE abap_bool.
        DATA(t159) = t82.
        t158 = t159.
        IF t159 = abap_true.
          DATA(t160) = t72.
          t158 = t160.
        ENDIF.
        IF t158 = abap_true.
          DATA t161 TYPE string.
          DATA(t162) = |Key fields must be listed before non-key fields|.
          t161 = t162.
          DATA(t163) = t49.
          DATA t164 TYPE REF TO zcl_lnt_issue.
          CLEAR t164.
          DATA t165 TYPE REF TO zif_lnt_file.
          DATA(t166) = t36.
          t165 = t166.
          DATA t167 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t168) = t77.
          t167 = t168->get_first_token( ).
          DATA(t169) = t161.
          DATA(t170) = VALUE string( ).
          DATA t171 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t171.
          DATA t172 TYPE string.
          DATA(t173) = |cds_field_order|.
          t172 = t173.
          DATA t174 TYPE string.
          DATA(t175) = |CDS Field Order|.
          t174 = t175.
          DATA t176 TYPE string.
          DATA(t177) = |Checks that CDS key fields are listed first and associations|.
          t177 = t177 && | last in the field list|.
          t176 = t177.
          DATA t178 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t178.
          DATA t179 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t179.
          DATA(t180) = abap_true.
          IF t180 = abap_true.
            DATA t181 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t182 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t183 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t183.
            t182 = t183.
            DATA(t184) = t182.
            DATA(t185) = |SingleFile|.
            t184->load( ).
            APPEND t185 TO t184->items.
            t184->save( ).
            DATA(t186) = t182.
            t181 = t186.
            t179 = t181.
          ELSE.
            DATA t187 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t187.
            t179 = t187.
          ENDIF.
          t178 = t179.
          DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t188.
          DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t189.
          DATA(t190) = abap_true.
          IF t190 = abap_true.
            DATA(t191) = |define view entity test as select from source\n  association |.
            t191 = t191 && |[1..1] to target as _Assoc on _Assoc.id = source.id\n\{\n  fiel|.
            t191 = t191 && |d1,\n  key id,\n  _Assoc\n\}|.
            DATA(t192) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t192->has = abap_true.
            t192->value = t191.
            t189 = t192.
          ELSE.
            DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t193.
            t189 = t193.
          ENDIF.
          t188 = t189.
          DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t194.
          DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t195.
          DATA(t196) = abap_true.
          IF t196 = abap_true.
            DATA(t197) = |define view entity test as select from source\n  association |.
            t197 = t197 && |[1..1] to target as _Assoc on _Assoc.id = source.id\n\{\n  key |.
            t197 = t197 && |id,\n  field1,\n  _Assoc\n\}|.
            DATA(t198) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t198->has = abap_true.
            t198->value = t197.
            t195 = t198.
          ELSE.
            DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t199.
            t195 = t199.
          ENDIF.
          t194 = t195.
          DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t201.
          t200 = t201.
          DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t203.
          t202 = t203.
          DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t205.
          t204 = t205.
          t171 = NEW zcl_lnt_irule_metadata( i_key = t172 i_title = t174 i_short_description = t176 i_bad_example = t188 i_good_example = t194 i_extended_information = t200 i_tags = t178 i_pragma = t202 i_pseudo_comment = t204 ).
          CREATE OBJECT t171->zlnt_view_ownkeys_b0e8086400eb.
          t171->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t206.
          IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t206 ).
          ENDIF.
          DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t207.
          IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t207 ).
          ENDIF.
          DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t208.
          IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t208 ).
          ENDIF.
          DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t209.
          IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t209 ).
          ENDIF.
          DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t210.
          IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t210 ).
          ENDIF.
          DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t211.
          IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t211 ).
          ENDIF.
          CREATE OBJECT t171->zlnt_json_ownkeys_70e5fd461788.
          t171->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t212) = |key|.
          DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t213.
          IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t212 p1 = t213 ).
          ENDIF.
          DATA(t214) = |title|.
          DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t215.
          IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t214 p1 = t215 ).
          ENDIF.
          DATA(t216) = |shortDescription|.
          DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t217.
          IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t216 p1 = t217 ).
          ENDIF.
          DATA(t218) = |tags|.
          DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t219.
          IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t218 p1 = t219 ).
          ENDIF.
          DATA(t220) = |badExample|.
          DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t221.
          IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t220 p1 = t221 ).
          ENDIF.
          DATA(t222) = |goodExample|.
          DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t223.
          IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t222 p1 = t223 ).
          ENDIF.
          t170 = t171->key.
          DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t225) = CAST zcl_lnt_cds_field_order_conf( me->g_c_i_s_r_cd_fl_or_ts_cd_fl_or( ) ).
          t224 = t225->zlnt_view_read_sr_15c06369f827( ).
          DATA t226 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t226.
          t164 = zcl_lnt_issue=>at_token( i_file = t165 i_token = t167 i_message_26cb = t169 i_key = t170 i_severity = t224 i_fix = t226 ).
          t163->load( ).
          APPEND t164 TO t163->items.
          t163->save( ).
        ENDIF.
        DATA t227 TYPE abap_bool.
        DATA t228 TYPE abap_bool.
        DATA(t229) = t93.
        t228 = xsdbool( t229 = abap_false ).
        t227 = t228.
        IF t228 = abap_true.
          DATA(t230) = t74.
          t227 = t230.
        ENDIF.
        IF t227 = abap_true.
          DATA t231 TYPE string.
          DATA(t232) = |Associations must be listed last in the field list|.
          t231 = t232.
          DATA(t233) = t49.
          DATA t234 TYPE REF TO zcl_lnt_issue.
          CLEAR t234.
          DATA t235 TYPE REF TO zif_lnt_file.
          DATA(t236) = t36.
          t235 = t236.
          DATA t237 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t238) = t77.
          t237 = t238->get_first_token( ).
          DATA(t239) = t231.
          DATA(t240) = VALUE string( ).
          DATA t241 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t241.
          DATA t242 TYPE string.
          DATA(t243) = |cds_field_order|.
          t242 = t243.
          DATA t244 TYPE string.
          DATA(t245) = |CDS Field Order|.
          t244 = t245.
          DATA t246 TYPE string.
          DATA(t247) = |Checks that CDS key fields are listed first and associations|.
          t247 = t247 && | last in the field list|.
          t246 = t247.
          DATA t248 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t248.
          DATA t249 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t249.
          DATA(t250) = abap_true.
          IF t250 = abap_true.
            DATA t251 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t252 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t253 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t253.
            t252 = t253.
            DATA(t254) = t252.
            DATA(t255) = |SingleFile|.
            t254->load( ).
            APPEND t255 TO t254->items.
            t254->save( ).
            DATA(t256) = t252.
            t251 = t256.
            t249 = t251.
          ELSE.
            DATA t257 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t257.
            t249 = t257.
          ENDIF.
          t248 = t249.
          DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t258.
          DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t259.
          DATA(t260) = abap_true.
          IF t260 = abap_true.
            DATA(t261) = |define view entity test as select from source\n  association |.
            t261 = t261 && |[1..1] to target as _Assoc on _Assoc.id = source.id\n\{\n  fiel|.
            t261 = t261 && |d1,\n  key id,\n  _Assoc\n\}|.
            DATA(t262) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t262->has = abap_true.
            t262->value = t261.
            t259 = t262.
          ELSE.
            DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t263.
            t259 = t263.
          ENDIF.
          t258 = t259.
          DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t264.
          DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t265.
          DATA(t266) = abap_true.
          IF t266 = abap_true.
            DATA(t267) = |define view entity test as select from source\n  association |.
            t267 = t267 && |[1..1] to target as _Assoc on _Assoc.id = source.id\n\{\n  key |.
            t267 = t267 && |id,\n  field1,\n  _Assoc\n\}|.
            DATA(t268) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t268->has = abap_true.
            t268->value = t267.
            t265 = t268.
          ELSE.
            DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t269.
            t265 = t269.
          ENDIF.
          t264 = t265.
          DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t271.
          t270 = t271.
          DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t273.
          t272 = t273.
          DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t275.
          t274 = t275.
          t241 = NEW zcl_lnt_irule_metadata( i_key = t242 i_title = t244 i_short_description = t246 i_bad_example = t258 i_good_example = t264 i_extended_information = t270 i_tags = t248 i_pragma = t272 i_pseudo_comment = t274 ).
          CREATE OBJECT t241->zlnt_view_ownkeys_b0e8086400eb.
          t241->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t276.
          IF t241->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t241->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t276 ).
          ENDIF.
          DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t277.
          IF t241->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t241->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t277 ).
          ENDIF.
          DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t278.
          IF t241->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t241->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t278 ).
          ENDIF.
          DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t279.
          IF t241->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t241->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t279 ).
          ENDIF.
          DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t280.
          IF t241->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t241->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t280 ).
          ENDIF.
          DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t281.
          IF t241->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t241->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t281 ).
          ENDIF.
          CREATE OBJECT t241->zlnt_json_ownkeys_70e5fd461788.
          t241->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t282) = |key|.
          DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t283.
          IF t241->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t241->zlnt_json_ownkeys_70e5fd461788->put( p0 = t282 p1 = t283 ).
          ENDIF.
          DATA(t284) = |title|.
          DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t285.
          IF t241->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t241->zlnt_json_ownkeys_70e5fd461788->put( p0 = t284 p1 = t285 ).
          ENDIF.
          DATA(t286) = |shortDescription|.
          DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t287.
          IF t241->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t241->zlnt_json_ownkeys_70e5fd461788->put( p0 = t286 p1 = t287 ).
          ENDIF.
          DATA(t288) = |tags|.
          DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t289.
          IF t241->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t241->zlnt_json_ownkeys_70e5fd461788->put( p0 = t288 p1 = t289 ).
          ENDIF.
          DATA(t290) = |badExample|.
          DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t291.
          IF t241->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t241->zlnt_json_ownkeys_70e5fd461788->put( p0 = t290 p1 = t291 ).
          ENDIF.
          DATA(t292) = |goodExample|.
          DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t293.
          IF t241->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t241->zlnt_json_ownkeys_70e5fd461788->put( p0 = t292 p1 = t293 ).
          ENDIF.
          t240 = t241->key.
          DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t295) = CAST zcl_lnt_cds_field_order_conf( me->g_c_i_s_r_cd_fl_or_ts_cd_fl_or( ) ).
          t294 = t295->zlnt_view_read_sr_15c06369f827( ).
          DATA t296 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t296.
          t234 = zcl_lnt_issue=>at_token( i_file = t235 i_token = t237 i_message_26cb = t239 i_key = t240 i_severity = t294 i_fix = t296 ).
          t233->load( ).
          APPEND t234 TO t233->items.
          t233->save( ).
        ENDIF.
        DATA t297 TYPE abap_bool.
        DATA(t298) = t82.
        t297 = xsdbool( t298 = abap_false ).
        IF t297 = abap_true.
          DATA(t299) = abap_true.
          t72 = t299.
        ENDIF.
        DATA(t300) = t93.
        IF t300 = abap_true.
          DATA(t301) = abap_true.
          t74 = t301.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t302) = t49.
    result = t302.

  ENDMETHOD.

  METHOD get_association_names.
    DATA(t1) = i_tree.
    DATA t2 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t3) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = t6.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t12) = t1.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1095_9dff9bf77964.
    t11 = t12->find_all_expressions( i_type_9913 = t13 ).
    t9 = t10->concat( p0 = t11 ).
    t8 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = t8.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t18) = t1.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1096_358eab8a400f.
    t17 = t18->find_all_expressions( i_type_9913 = t19 ).
    t15 = t16->concat( p0 = t17 ).
    t14 = t15.
    DATA(t20) = t14.
    t5 = t20.
    t4 = t5.
    DATA(t21) = t4.
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t22.
    DATA t23 TYPE REF TO object.
    CLEAR t23.
    DATA(t24) = VALUE i( ).
    DO.
      t21->load( ).
      IF t24 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t21->items INDEX t24 + 1 INTO t23.
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
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      DATA(t29) = t22.
      DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1092_b2702bebb604.
      t28 = t29->find_direct_expression( i_type_9913 = t30 ).
      t27 = t28.
      DATA(t31) = VALUE abap_bool( ).
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      DATA(t33) = t27.
      t32 = t33.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      t34 = t35.
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = t32.
      IF t37 IS INITIAL.
        t36 = abap_true.
      ENDIF.
      t31 = t36.
      IF t31 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t38 TYPE REF TO zcl_lnt_expression_node.
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      DATA t40 TYPE REF TO zcl_lnt_expression_node.
      DATA(t41) = t27.
      t40 = t41.
      DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
      t39 = t40->find_direct_expression( i_type_9913 = t42 ).
      t38 = t39.
      DATA t43 TYPE abap_bool.
      DATA(t44) = t38.
      t43 = xsdbool( t44 IS BOUND ).
      IF t43 = abap_true.
        DATA t45 TYPE REF TO zcl_lnt_expression_node.
        DATA t46 TYPE REF TO zcl_lnt_expression_node.
        DATA t47 TYPE REF TO zcl_lnt_expression_node.
        DATA(t48) = t38.
        t47 = t48.
        DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
        t46 = t47->find_direct_expression( i_type_9913 = t49 ).
        t45 = t46.
        DATA t50 TYPE abap_bool.
        DATA(t51) = t45.
        t50 = xsdbool( t51 IS BOUND ).
        IF t50 = abap_true.
          DATA t52 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
          CLEAR t52.
          DATA(t53) = t2.
          DATA t54 TYPE string.
          DATA t55 TYPE string.
          DATA t56 TYPE REF TO zcl_lnt_abstract_token.
          DATA t57 TYPE REF TO zcl_lnt_abstract_token.
          DATA t58 TYPE REF TO zcl_lnt_expression_node.
          DATA(t59) = t45.
          t58 = t59.
          t57 = t58->get_first_token( ).
          t56 = t57.
          DATA t60 TYPE string.
          DATA(t61) = t56.
          t60 = t61->str.
          t55 = t60.
          DATA(t62) = strlen( t55 ).
          t54 = t55.
          IF t54 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t54 TO UPPER CASE.
          ELSE.
            t54 = zlnt_runtime_uppe_91169605024d=>full( t54 ).
          ENDIF.
          t52 = t53->add( p0 = t54 ).
        ENDIF.
      ELSE.
        DATA t63 TYPE string.
        DATA t64 TYPE string.
        DATA t65 TYPE REF TO zcl_lnt_abstract_token.
        DATA t66 TYPE REF TO zcl_lnt_abstract_token.
        DATA t67 TYPE REF TO zcl_lnt_expression_node.
        DATA(t68) = t27.
        t67 = t68.
        t66 = t67->get_first_token( ).
        t65 = t66.
        DATA t69 TYPE string.
        DATA(t70) = t65.
        t69 = t70->str.
        t64 = t69.
        t63 = t64.
        DATA t71 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t71.
        DATA(t72) = t2.
        DATA t73 TYPE string.
        DATA(t74) = t63.
        DATA(t75) = strlen( t74 ).
        t73 = t74.
        IF t73 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t73 TO UPPER CASE.
        ELSE.
          t73 = zlnt_runtime_uppe_91169605024d=>full( t73 ).
        ENDIF.
        t71 = t72->add( p0 = t73 ).
      ENDIF.
    ENDDO.
    DATA(t76) = t2.
    result = t76.

  ENDMETHOD.

  METHOD is_association_element.
    DATA(t1) = i_element.
    DATA(t2) = i_association_names.
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    DATA(t7) = t1.
    t6 = t7->concat_tokens( ).
    DATA t8 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t8.
    DATA(t9) = `^(KEY|VIRTUAL)\s+`.
    DATA(t10) = |^(KEY\|VIRTUAL)[\t\n|.
    DATA t11 TYPE c LENGTH 1.
    CLEAR t11.
    t11 = cl_abap_conv_in_ce=>uccpi( 11 ).
    CONCATENATE t10 t11 INTO t10 RESPECTING BLANKS.
    DATA t12 TYPE c LENGTH 1.
    CLEAR t12.
    t12 = cl_abap_conv_in_ce=>uccpi( 12 ).
    CONCATENATE t10 t12 INTO t10 RESPECTING BLANKS.
    t10 = t10 && |\r    - |.
    DATA t13 TYPE c LENGTH 1.
    CLEAR t13.
    t13 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t10 t13 INTO t10 RESPECTING BLANKS.
    DATA t14 TYPE c LENGTH 1.
    CLEAR t14.
    t14 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t10 t14 INTO t10 RESPECTING BLANKS.
    t10 = t10 && |  　|.
    DATA t15 TYPE c LENGTH 1.
    CLEAR t15.
    t15 = cl_abap_conv_in_ce=>uccpi( 65279 ).
    CONCATENATE t10 t15 INTO t10 RESPECTING BLANKS.
    t10 = t10 && |]+|.
    DATA(t16) = |i|.
    CREATE OBJECT t8 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t10 flags = t16.
    t8->source = t9.
    DATA(t17) = ||.
    DATA(t18) = strlen( t6 ).
    t5 = t8->replace( p0 = t6 p1 = t17 ).
    DATA(t19) = strlen( t5 ).
    DATA t20 TYPE i.
    DATA t21 TYPE i.
    t20 = 0.
    t21 = t19.
    DATA(t22) = VALUE i( ).
    DATA(t23) = VALUE i( ).
    DATA(t24) = VALUE string( ).
    WHILE t20 < t21.
      t23 = t20.
      t24 = t5+t23(1).
      DATA t25 TYPE c LENGTH 1.
      CLEAR t25.
      DATA(t26) = VALUE xstring( ).
      DATA t27 TYPE x LENGTH 1.
      CLEAR t27.
      DATA t28 TYPE x LENGTH 1.
      CLEAR t28.
      DATA(t29) = VALUE i( ).
      t25 = t24.
      t22 = cl_abap_conv_out_ce=>uccpi( t25 ).
      IF t22 >= 255.
        IF zlnt_builtin_code_7ed9498cda68 IS NOT BOUND.
          zlnt_builtin_code_7ed9498cda68 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
        ENDIF.
        zlnt_builtin_code_7ed9498cda68->convert( EXPORTING data = t24 IMPORTING buffer = t26 ).
        t27 = t26(1).
        t28 = t26+1(1).
        t22 = t27.
        t29 = t28.
        t22 = t22 + t29 * 256.
      ENDIF.
      IF t22 = 9 OR t22 = 10 OR t22 = 11 OR t22 = 12 OR t22 = 13 OR t22 = 32 OR t22 = 160 OR t22 = 5760 OR t22 = 8232 OR t22 = 8233 OR t22 = 8239 OR t22 = 8287 OR t22 = 12288 OR t22 = 65279 OR t22 >= 8192 AND t22 <= 8202.
        t20 = t20 + 1.
      ELSE.
        EXIT.
      ENDIF.
    ENDWHILE.
    DATA(t30) = VALUE i( ).
    DATA(t31) = VALUE i( ).
    DATA(t32) = VALUE string( ).
    WHILE t21 > t20.
      t31 = t21 - 1.
      t32 = t5+t31(1).
      DATA t33 TYPE c LENGTH 1.
      CLEAR t33.
      DATA(t34) = VALUE xstring( ).
      DATA t35 TYPE x LENGTH 1.
      CLEAR t35.
      DATA t36 TYPE x LENGTH 1.
      CLEAR t36.
      DATA(t37) = VALUE i( ).
      t33 = t32.
      t30 = cl_abap_conv_out_ce=>uccpi( t33 ).
      IF t30 >= 255.
        IF zlnt_builtin_code_7ed9498cda68 IS NOT BOUND.
          zlnt_builtin_code_7ed9498cda68 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
        ENDIF.
        zlnt_builtin_code_7ed9498cda68->convert( EXPORTING data = t32 IMPORTING buffer = t34 ).
        t35 = t34(1).
        t36 = t34+1(1).
        t30 = t35.
        t37 = t36.
        t30 = t30 + t37 * 256.
      ENDIF.
      IF t30 = 9 OR t30 = 10 OR t30 = 11 OR t30 = 12 OR t30 = 13 OR t30 = 32 OR t30 = 160 OR t30 = 5760 OR t30 = 8232 OR t30 = 8233 OR t30 = 8239 OR t30 = 8287 OR t30 = 12288 OR t30 = 65279 OR t30 >= 8192 AND t30 <= 8202.
        t21 = t21 - 1.
      ELSE.
        EXIT.
      ENDIF.
    ENDWHILE.
    IF t21 > t20.
      t19 = t21 - t20.
      t4 = t5+t20(t19).
    ELSE.
      CLEAR t4.
    ENDIF.
    t3 = t4.
    DATA(t38) = VALUE string( ).
    DATA(t39) = VALUE string( ).
    DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t41 TYPE string.
    DATA(t42) = t3.
    t41 = t42.
    DATA t43 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t44) = t41.
    DATA t45 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t45.
    DATA(t46) = `[\s.,:(]+`.
    DATA(t47) = |[\t\n|.
    DATA t48 TYPE c LENGTH 1.
    CLEAR t48.
    t48 = cl_abap_conv_in_ce=>uccpi( 11 ).
    CONCATENATE t47 t48 INTO t47 RESPECTING BLANKS.
    DATA t49 TYPE c LENGTH 1.
    CLEAR t49.
    t49 = cl_abap_conv_in_ce=>uccpi( 12 ).
    CONCATENATE t47 t49 INTO t47 RESPECTING BLANKS.
    t47 = t47 && |\r    - |.
    DATA t50 TYPE c LENGTH 1.
    CLEAR t50.
    t50 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t47 t50 INTO t47 RESPECTING BLANKS.
    DATA t51 TYPE c LENGTH 1.
    CLEAR t51.
    t51 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t47 t51 INTO t47 RESPECTING BLANKS.
    t47 = t47 && |  　|.
    DATA t52 TYPE c LENGTH 1.
    CLEAR t52.
    t52 = cl_abap_conv_in_ce=>uccpi( 65279 ).
    CONCATENATE t47 t52 INTO t47 RESPECTING BLANKS.
    t47 = t47 && |.,:(]+|.
    DATA(t53) = ||.
    CREATE OBJECT t45 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t47 flags = t53.
    t45->source = t46.
    DATA(t54) = CONV f( '4294967295' ).
    DATA(t55) = strlen( t44 ).
    t43 = zlnt_runtime_stri_248d3505915c=>split( text = t44 pattern = t45 limit = t54 ).
    t40 = t43.
    IF t40->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t40->load( ).
    CLEAR t39.
    READ TABLE t40->items INDEX 1 INTO t39.
    t38 = t39.
    DATA(t56) = VALUE abap_bool( ).
    DATA(t57) = t2.
    DATA t58 TYPE string.
    DATA(t59) = t38.
    DATA(t60) = strlen( t59 ).
    t58 = t59.
    IF t58 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t58 TO UPPER CASE.
    ELSE.
      t58 = zlnt_runtime_uppe_91169605024d=>full( t58 ).
    ENDIF.
    t56 = t57->has( p0 = t58 ).
    result = t56.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_cds_field_order_conf( me->g_c_i_s_r_cd_fl_or_ts_cd_fl_or( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cds_field_order_conf( me->g_c_i_s_r_cd_fl_or_ts_cd_fl_or( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_cds_field_order_conf.
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
        t2 = NEW zcl_lnt_cds_field_order_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_cd_fl_or_ts_cd_fl_or( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zif_lnt_rule.
    DATA(t3) = t1.
    t2 = me->i_i_sr_rl_cd_fl_or_ts_cd_fl_or( i_reg_d009 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = t1.
    t2 = me->r_i_sr_rl_cd_fl_or_ts_cd_fl_or( i_o = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1422_4c7331b4bbb7.
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
