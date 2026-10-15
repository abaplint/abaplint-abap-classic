* TS: src/rules/cds_association_name.ts:12:1 CDSAssociationName
CLASS zcl_lnt_cds_association_name DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_cds_assctn_nm_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_cd_as_nm_ts_cd_as_nm RETURNING VALUE(result) TYPE REF TO zcl_lnt_cds_assctn_nm_cnf.
    METHODS s_c_i_s_r_cd_as_nm_ts_cd_as_nm IMPORTING i_conf TYPE REF TO zcl_lnt_cds_assctn_nm_cnf.
    METHODS i_i_sr_rl_cd_as_nm_ts_cd_as_nm IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS r_i_sr_rl_cd_as_nm_ts_cd_as_nm IMPORTING i_o TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
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
ENDCLASS.
CLASS zcl_lnt_cds_association_name IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_cds_assctn_nm_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |cds_association_name|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |CDS Association Name|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |CDS association names should start with an underscore|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |By convention, CDS association names must start with an unde|.
      t11 = t11 && |rscore character.\n\nhttps://help.sap.com/docs/abap-cloud/abap|.
      t11 = t11 && |-data-models/cds-associations|.
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
      DATA(t21) = |SingleFile|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |Naming|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      t17 = t24.
      t15 = t17.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t25.
      t15 = t25.
    ENDIF.
    t14 = t15.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |define view entity test as select from source\n  association |.
      t29 = t29 && |[1..1] to target as Assoc on Assoc.id = source.id\n\{ key id \}|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t27 = t31.
    ENDIF.
    t26 = t27.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA(t34) = abap_true.
    IF t34 = abap_true.
      DATA(t35) = |define view entity test as select from source\n  association |.
      t35 = t35 && |[1..1] to target as _Assoc on _Assoc.id = source.id\n\{ key id|.
      t35 = t35 && | \}|.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t35.
      t33 = t36.
    ELSE.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      t33 = t37.
    ENDIF.
    t32 = t33.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t32 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t49) = |key|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |title|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |shortDescription|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |extendedInformation|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |tags|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |badExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |goodExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_cd_as_nm_ts_cd_as_nm.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_cd_as_nm_ts_cd_as_nm.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD i_i_sr_rl_cd_as_nm_ts_cd_as_nm.
    DATA(t1) = i_reg_d009.
    DATA(t2) = me.
    result = t2.

  ENDMETHOD.

  METHOD r_i_sr_rl_cd_as_nm_ts_cd_as_nm.
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
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t52 TYPE REF TO zcl_lnt_expression_node.
    DATA(t53) = t11.
    t52 = t53.
    DATA(t54) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1095_9dff9bf77964.
    t51 = t52->find_all_expressions( i_type_9913 = t54 ).
    DATA t55 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t55.
    DATA t56 TYPE REF TO object.
    CLEAR t56.
    DATA(t57) = VALUE i( ).
    DO.
      t51->load( ).
      IF t57 >= lines( t51->items ).
        EXIT.
      ENDIF.
      CLEAR t56.
      READ TABLE t51->items INDEX t57 + 1 INTO t56.
      t57 = t57 + 1.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t58.
      CLEAR t55.
      IF t56 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t58 ?= t56.
        DATA t59 TYPE REF TO object.
        t59 = t58->as_ref( ).
        t55 ?= t59.
      ELSE.
        t55 ?= t56.
      ENDIF.
      DATA t60 TYPE REF TO zcl_lnt_expression_node.
      DATA t61 TYPE REF TO zcl_lnt_expression_node.
      DATA(t62) = t55.
      DATA(t63) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
      t61 = t62->find_first_expression( i_type_9913 = t63 ).
      t60 = t61.
      DATA(t64) = VALUE abap_bool( ).
      DATA t65 TYPE REF TO zcl_lnt_expression_node.
      DATA(t66) = t60.
      t65 = t66.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      t67 = t68.
      DATA(t69) = VALUE abap_bool( ).
      DATA(t70) = t65.
      IF t70 IS INITIAL.
        t69 = abap_true.
      ENDIF.
      t64 = t69.
      IF t64 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t71 TYPE REF TO zcl_lnt_expression_node.
      DATA t72 TYPE REF TO zcl_lnt_expression_node.
      DATA t73 TYPE REF TO zcl_lnt_expression_node.
      DATA(t74) = t60.
      t73 = t74.
      DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
      t72 = t73->find_direct_expression( i_type_9913 = t75 ).
      t71 = t72.
      DATA(t76) = VALUE abap_bool( ).
      DATA t77 TYPE REF TO zcl_lnt_expression_node.
      DATA(t78) = t71.
      t77 = t78.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      t79 = t80.
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = t77.
      IF t82 IS INITIAL.
        t81 = abap_true.
      ENDIF.
      t76 = t81.
      IF t76 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t83 TYPE string.
      DATA t84 TYPE string.
      DATA t85 TYPE REF TO zcl_lnt_abstract_token.
      DATA t86 TYPE REF TO zcl_lnt_abstract_token.
      DATA t87 TYPE REF TO zcl_lnt_expression_node.
      DATA(t88) = t71.
      t87 = t88.
      t86 = t87->get_first_token( ).
      t85 = t86.
      DATA t89 TYPE string.
      DATA(t90) = t85.
      t89 = t90->str.
      t84 = t89.
      t83 = t84.
      DATA(t91) = VALUE abap_bool( ).
      DATA(t92) = VALUE abap_bool( ).
      DATA(t93) = t83.
      DATA(t94) = |_|.
      DATA(t95) = strlen( t93 ).
      DATA t96 TYPE i.
      DATA(t97) = VALUE i( ).
      DATA(t98) = VALUE string( ).
      t96 = strlen( t94 ).
      IF t96 = 0.
        t92 = abap_true.
      ELSEIF t96 <= t95.
        t97 = 0.
        t98 = t93+t97(t96).
        IF t98 = t94.
          t92 = abap_true.
        ENDIF.
      ENDIF.
      t91 = xsdbool( t92 = abap_false ).
      IF t91 = abap_true.
        DATA t99 TYPE REF TO zcl_lnt_abstract_token.
        DATA t100 TYPE REF TO zcl_lnt_abstract_token.
        DATA t101 TYPE REF TO zcl_lnt_expression_node.
        DATA(t102) = t71.
        t101 = t102.
        t100 = t101->get_first_token( ).
        t99 = t100.
        DATA t103 TYPE string.
        DATA t104 TYPE string.
        DATA t105 TYPE string.
        DATA(t106) = |CDS association name "|.
        DATA(t107) = t83.
        DATA(t108) = strlen( t106 ).
        t105 = |{ t106 }{ t107 }|.
        DATA(t109) = |" should start with an underscore|.
        DATA(t110) = strlen( t105 ).
        t104 = |{ t105 }{ t109 }|.
        t103 = t104.
        DATA(t111) = t49.
        DATA t112 TYPE REF TO zcl_lnt_issue.
        CLEAR t112.
        DATA t113 TYPE REF TO zif_lnt_file.
        DATA(t114) = t36.
        t113 = t114.
        DATA(t115) = t99.
        DATA(t116) = t103.
        DATA(t117) = VALUE string( ).
        DATA t118 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t118.
        DATA t119 TYPE string.
        DATA(t120) = |cds_association_name|.
        t119 = t120.
        DATA t121 TYPE string.
        DATA(t122) = |CDS Association Name|.
        t121 = t122.
        DATA t123 TYPE string.
        DATA(t124) = |CDS association names should start with an underscore|.
        t123 = t124.
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t125.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t126.
        DATA(t127) = abap_true.
        IF t127 = abap_true.
          DATA(t128) = |By convention, CDS association names must start with an unde|.
          t128 = t128 && |rscore character.\n\nhttps://help.sap.com/docs/abap-cloud/abap|.
          t128 = t128 && |-data-models/cds-associations|.
          DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t129->has = abap_true.
          t129->value = t128.
          t126 = t129.
        ELSE.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t130.
          t126 = t130.
        ENDIF.
        t125 = t126.
        DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t131.
        DATA t132 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t132.
        DATA(t133) = abap_true.
        IF t133 = abap_true.
          DATA t134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t136 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t136.
          t135 = t136.
          DATA(t137) = t135.
          DATA(t138) = |SingleFile|.
          t137->load( ).
          APPEND t138 TO t137->items.
          t137->save( ).
          DATA(t139) = t135.
          DATA(t140) = |Naming|.
          t139->load( ).
          APPEND t140 TO t139->items.
          t139->save( ).
          DATA(t141) = t135.
          t134 = t141.
          t132 = t134.
        ELSE.
          DATA t142 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t142.
          t132 = t142.
        ENDIF.
        t131 = t132.
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t143.
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t144.
        DATA(t145) = abap_true.
        IF t145 = abap_true.
          DATA(t146) = |define view entity test as select from source\n  association |.
          t146 = t146 && |[1..1] to target as Assoc on Assoc.id = source.id\n\{ key id \}|.
          DATA(t147) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t147->has = abap_true.
          t147->value = t146.
          t144 = t147.
        ELSE.
          DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t148.
          t144 = t148.
        ENDIF.
        t143 = t144.
        DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t149.
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t150.
        DATA(t151) = abap_true.
        IF t151 = abap_true.
          DATA(t152) = |define view entity test as select from source\n  association |.
          t152 = t152 && |[1..1] to target as _Assoc on _Assoc.id = source.id\n\{ key id|.
          t152 = t152 && | \}|.
          DATA(t153) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t153->has = abap_true.
          t153->value = t152.
          t150 = t153.
        ELSE.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t154.
          t150 = t154.
        ENDIF.
        t149 = t150.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t156.
        t155 = t156.
        DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t158.
        t157 = t158.
        t118 = NEW zcl_lnt_irule_metadata( i_key = t119 i_title = t121 i_short_description = t123 i_bad_example = t143 i_good_example = t149 i_extended_information = t125 i_tags = t131 i_pragma = t155 i_pseudo_comment = t157 ).
        CREATE OBJECT t118->zlnt_view_ownkeys_b0e8086400eb.
        t118->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t159 ).
        ENDIF.
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t160 ).
        ENDIF.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t161 ).
        ENDIF.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t162 ).
        ENDIF.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t163 ).
        ENDIF.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t164 ).
        ENDIF.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t165 ).
        ENDIF.
        CREATE OBJECT t118->zlnt_json_ownkeys_70e5fd461788.
        t118->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t166) = |key|.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
        ENDIF.
        DATA(t168) = |title|.
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t169.
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
        ENDIF.
        DATA(t170) = |shortDescription|.
        DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t171.
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
        ENDIF.
        DATA(t172) = |extendedInformation|.
        DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t173.
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
        ENDIF.
        DATA(t174) = |tags|.
        DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t175.
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
        ENDIF.
        DATA(t176) = |badExample|.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
        ENDIF.
        DATA(t178) = |goodExample|.
        DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t179.
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t178 p1 = t179 ).
        ENDIF.
        t117 = t118->key.
        DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t181) = CAST zcl_lnt_cds_assctn_nm_cnf( me->g_c_i_s_r_cd_as_nm_ts_cd_as_nm( ) ).
        t180 = t181->zlnt_view_read_sr_15c06369f827( ).
        DATA t182 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t182.
        t112 = zcl_lnt_issue=>at_token( i_file = t113 i_token = t115 i_message_26cb = t116 i_key = t117 i_severity = t180 i_fix = t182 ).
        t111->load( ).
        APPEND t112 TO t111->items.
        t111->save( ).
      ENDIF.
    ENDDO.
    DATA(t183) = t49.
    result = t183.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_cds_assctn_nm_cnf( me->g_c_i_s_r_cd_as_nm_ts_cd_as_nm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cds_assctn_nm_cnf( me->g_c_i_s_r_cd_as_nm_ts_cd_as_nm( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_cds_assctn_nm_cnf.
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
        t2 = NEW zcl_lnt_cds_assctn_nm_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_cd_as_nm_ts_cd_as_nm( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zif_lnt_rule.
    DATA(t3) = t1.
    t2 = me->i_i_sr_rl_cd_as_nm_ts_cd_as_nm( i_reg_d009 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = t1.
    t2 = me->r_i_sr_rl_cd_as_nm_ts_cd_as_nm( i_o = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1416_a6ea51b9635c.
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
