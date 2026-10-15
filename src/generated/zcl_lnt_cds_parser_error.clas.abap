* TS: src/rules/cds_parser_error.ts:11:1 CDSParserError
CLASS zcl_lnt_cds_parser_error DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_cds_parser_error_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_cd_pr_er_ts_cd_pr_er RETURNING VALUE(result) TYPE REF TO zcl_lnt_cds_parser_error_conf.
    METHODS s_c_i_s_r_cd_pr_er_ts_cd_pr_er IMPORTING i_conf TYPE REF TO zcl_lnt_cds_parser_error_conf.
    METHODS i_i_sr_rl_cd_pr_er_ts_cd_pr_er IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS r_i_sr_rl_cd_pr_er_ts_cd_pr_er IMPORTING i_object_19cd TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
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
CLASS zcl_lnt_cds_parser_error IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_cds_parser_error_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |cds_parser_error|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |CDS Parser Error|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |CDS parsing|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Parses CDS and issues parser errors|.
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
      DATA(t21) = |Syntax|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |SingleFile|.
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
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t28 i_extended_information = t8 i_tags = t14 i_pragma = t30 i_pseudo_comment = t32 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t38 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t39) = |key|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |title|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |shortDescription|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |extendedInformation|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    DATA(t47) = |tags|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_cd_pr_er_ts_cd_pr_er.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_cd_pr_er_ts_cd_pr_er.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD i_i_sr_rl_cd_pr_er_ts_cd_pr_er.
    DATA(t1) = i_reg_d009.
    DATA(t2) = me.
    result = t2.

  ENDMETHOD.

  METHOD r_i_sr_rl_cd_pr_er_ts_cd_pr_er.
    DATA(t1) = i_object_19cd.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE string.
    DATA(t8) = t1.
    t7 = t8->get_type( ).
    DATA(t9) = |DDLS|.
    t6 = xsdbool( t7 = t9 ).
    t5 = t6.
    IF t6 = abap_true.
      DATA t10 TYPE abap_bool.
      DATA(t11) = t1.
      t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_ob_data_definition ).
      t5 = t10.
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE string.
      DATA(t15) = t1.
      t14 = t15->get_type( ).
      DATA(t16) = |DDLX|.
      t13 = xsdbool( t14 = t16 ).
      t12 = t13.
      IF t13 = abap_true.
        DATA t17 TYPE abap_bool.
        DATA(t18) = t1.
        t17 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_cds_metadata_extension ).
        t12 = t17.
      ENDIF.
      t4 = t12.
    ENDIF.
    IF t4 = abap_true.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t21 TYPE REF TO zif_lnt_union_ce65ceec.
      DATA(t22) = t1.
      t21 ?= t22.
      t20 = t21->has_parser_error( ).
      t19 = t20.
      DATA t23 TYPE REF TO zif_lnt_file.
      DATA t24 TYPE REF TO zif_lnt_file.
      DATA t25 TYPE REF TO zif_lnt_union_ce65ceec.
      DATA(t26) = t1.
      t25 ?= t26.
      t24 = t25->find_source_file( ).
      t23 = t24.
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = t19.
      DATA t30 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t30.
      DATA(t31) = abap_true.
      IF t31 = abap_true.
        DATA(t32) = abap_true.
        DATA(t33) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t33->has = abap_true.
        t33->value = t32.
        t30 = t33.
      ELSE.
        DATA t34 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t34.
        t30 = t34.
      ENDIF.
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = VALUE abap_bool( ).
      IF t29 IS BOUND.
        t35 = t29->has.
      ENDIF.
      IF t30 IS BOUND.
        t36 = t30->has.
      ENDIF.
      IF t35 = t36.
        IF t35 = abap_false.
          t28 = abap_true.
        ELSEIF t29->value = t30->value.
          t28 = abap_true.
        ENDIF.
      ENDIF.
      t27 = t28.
      IF t28 = abap_true.
        DATA t37 TYPE abap_bool.
        DATA(t38) = t23.
        t37 = xsdbool( t38 IS BOUND ).
        t27 = t37.
      ENDIF.
      IF t27 = abap_true.
        DATA(t39) = VALUE string( ).
        DATA(t40) = VALUE string( ).
        DATA t41 TYPE abap_bool.
        DATA t42 TYPE i.
        DATA t43 TYPE string.
        DATA t44 TYPE REF TO zif_lnt_file.
        DATA(t45) = t23.
        t44 = t45.
        t43 = t44->get_raw( ).
        DATA(t46) = strlen( t43 ).
        t42 = t46.
        DATA(t47) = 0.
        t41 = xsdbool( t42 = t47 ).
        IF t41 = abap_true.
          DATA(t48) = |, empty file|.
          t40 = t48.
        ELSE.
          DATA(t49) = ||.
          t40 = t49.
        ENDIF.
        t39 = t40.
        DATA t50 TYPE string.
        DATA t51 TYPE string.
        DATA(t52) = |CDS Parser error|.
        DATA(t53) = t39.
        DATA(t54) = strlen( t52 ).
        t51 = |{ t52 }{ t53 }|.
        t50 = t51.
        DATA(t55) = t2.
        DATA t56 TYPE REF TO zcl_lnt_issue.
        CLEAR t56.
        DATA t57 TYPE REF TO zif_lnt_file.
        DATA(t58) = t23.
        t57 = t58.
        DATA(t59) = CONV f( 1 ).
        DATA(t60) = t50.
        DATA(t61) = VALUE string( ).
        DATA t62 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t62.
        DATA t63 TYPE string.
        DATA(t64) = |cds_parser_error|.
        t63 = t64.
        DATA t65 TYPE string.
        DATA(t66) = |CDS Parser Error|.
        t65 = t66.
        DATA t67 TYPE string.
        DATA(t68) = |CDS parsing|.
        t67 = t68.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t70.
        DATA(t71) = abap_true.
        IF t71 = abap_true.
          DATA(t72) = |Parses CDS and issues parser errors|.
          DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t73->has = abap_true.
          t73->value = t72.
          t70 = t73.
        ELSE.
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t74.
          t70 = t74.
        ENDIF.
        t69 = t70.
        DATA t75 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t75.
        DATA t76 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t76.
        DATA(t77) = abap_true.
        IF t77 = abap_true.
          DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t79 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t80 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t80.
          t79 = t80.
          DATA(t81) = t79.
          DATA(t82) = |Syntax|.
          t81->load( ).
          APPEND t82 TO t81->items.
          t81->save( ).
          DATA(t83) = t79.
          DATA(t84) = |SingleFile|.
          t83->load( ).
          APPEND t84 TO t83->items.
          t83->save( ).
          DATA(t85) = t79.
          t78 = t85.
          t76 = t78.
        ELSE.
          DATA t86 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t86.
          t76 = t86.
        ENDIF.
        t75 = t76.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        t87 = t88.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        t89 = t90.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t92.
        t91 = t92.
        DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t94.
        t93 = t94.
        t62 = NEW zcl_lnt_irule_metadata( i_key = t63 i_title = t65 i_short_description = t67 i_bad_example = t87 i_good_example = t89 i_extended_information = t69 i_tags = t75 i_pragma = t91 i_pseudo_comment = t93 ).
        CREATE OBJECT t62->zlnt_view_ownkeys_b0e8086400eb.
        t62->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t95 ).
        ENDIF.
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t96.
        IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t96 ).
        ENDIF.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t97.
        IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t97 ).
        ENDIF.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t98 ).
        ENDIF.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t99 ).
        ENDIF.
        CREATE OBJECT t62->zlnt_json_ownkeys_70e5fd461788.
        t62->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t100) = |key|.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
        ENDIF.
        DATA(t102) = |title|.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = t102 p1 = t103 ).
        ENDIF.
        DATA(t104) = |shortDescription|.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = t104 p1 = t105 ).
        ENDIF.
        DATA(t106) = |extendedInformation|.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t107.
        IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = t106 p1 = t107 ).
        ENDIF.
        DATA(t108) = |tags|.
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t109.
        IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = t108 p1 = t109 ).
        ENDIF.
        t61 = t62->key.
        DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t111) = CAST zcl_lnt_cds_parser_error_conf( me->g_c_i_s_r_cd_pr_er_ts_cd_pr_er( ) ).
        t110 = t111->zlnt_view_read_sr_15c06369f827( ).
        t56 = zcl_lnt_issue=>at_row( i_file = t57 i_row = t59 i_message_26cb = t60 i_key = t61 i_severity = t110 ).
        t55->load( ).
        APPEND t56 TO t55->items.
        t55->save( ).
      ENDIF.
    ENDIF.
    DATA(t112) = t2.
    result = t112.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_cds_parser_error_conf( me->g_c_i_s_r_cd_pr_er_ts_cd_pr_er( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cds_parser_error_conf( me->g_c_i_s_r_cd_pr_er_ts_cd_pr_er( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_cds_parser_error_conf.
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
        t2 = NEW zcl_lnt_cds_parser_error_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_cd_pr_er_ts_cd_pr_er( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zif_lnt_rule.
    DATA(t3) = t1.
    t2 = me->i_i_sr_rl_cd_pr_er_ts_cd_pr_er( i_reg_d009 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = t1.
    t2 = me->r_i_sr_rl_cd_pr_er_ts_cd_pr_er( i_object_19cd = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1428_d470d509fb8d.
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
