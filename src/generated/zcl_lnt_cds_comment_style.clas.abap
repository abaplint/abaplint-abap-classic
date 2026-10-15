* TS: src/rules/cds_comment_style.ts:13:1 CDSCommentStyle
CLASS zcl_lnt_cds_comment_style DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_cds_comment_style_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_cd_cm_st_ts_cd_cm_st RETURNING VALUE(result) TYPE REF TO zcl_lnt_cds_comment_style_conf.
    METHODS s_c_i_s_r_cd_cm_st_ts_cd_cm_st IMPORTING i_conf TYPE REF TO zcl_lnt_cds_comment_style_conf.
    METHODS i_i_sr_rl_cd_cm_st_ts_cd_cm_st IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS r_i_sr_rl_cd_cm_st_ts_cd_cm_st IMPORTING i_object_19cd TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
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
CLASS zcl_lnt_cds_comment_style IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_cds_comment_style_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |cds_comment_style|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |CDS Comment Style|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Check for obsolete comment style|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Check for obsolete comment style\n\nComments starting with "--|.
      t11 = t11 && |" are considered obsolete\n\nhttps://help.sap.com/doc/abapdocu|.
      t11 = t11 && |_latest_index_htm/latest/en-us/abencds_general_syntax_rules.|.
      t11 = t11 && |html|.
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
      DATA(t27) = |-- this is a comment|.
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
      DATA(t33) = |// this is a comment|.
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

  METHOD g_c_i_s_r_cd_cm_st_ts_cd_cm_st.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_cd_cm_st_ts_cd_cm_st.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD i_i_sr_rl_cd_cm_st_ts_cd_cm_st.
    DATA(t1) = i_reg_d009.
    DATA(t2) = me.
    result = t2.

  ENDMETHOD.

  METHOD r_i_sr_rl_cd_cm_st_ts_cd_cm_st.
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
      DATA t19 TYPE REF TO zif_lnt_file.
      DATA t20 TYPE REF TO zif_lnt_file.
      DATA t21 TYPE REF TO zif_lnt_union_ce65ceec.
      DATA(t22) = t1.
      t21 ?= t22.
      t20 = t21->find_source_file( ).
      t19 = t20.
      DATA(t23) = VALUE abap_bool( ).
      DATA t24 TYPE REF TO zif_lnt_file.
      DATA(t25) = t19.
      t24 = t25.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      t26 = t27.
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = t24.
      IF t29 IS INITIAL.
        t28 = abap_true.
      ENDIF.
      t23 = t28.
      IF t23 = abap_true.
        DATA(t30) = t2.
        result = t30.
        RETURN.
      ENDIF.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t33 TYPE REF TO zif_lnt_file.
      DATA(t34) = t19.
      t33 = t34.
      t32 = zcl_lnt_cds_lexer=>run( i_file = t33 ).
      t31 = t32.
      DATA(t35) = t31.
      DATA t36 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t36.
      DATA t37 TYPE REF TO object.
      CLEAR t37.
      DATA(t38) = VALUE i( ).
      DO.
        t35->load( ).
        IF t38 >= lines( t35->items ).
          EXIT.
        ENDIF.
        CLEAR t37.
        READ TABLE t35->items INDEX t38 + 1 INTO t37.
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
        DATA t41 TYPE abap_bool.
        DATA t42 TYPE abap_bool.
        DATA(t43) = t36.
        t42 = xsdbool( t43 IS BOUND AND t43 IS INSTANCE OF zcl_lnt_lx_comment ).
        t41 = t42.
        IF t42 = abap_true.
          DATA(t44) = VALUE abap_bool( ).
          DATA t45 TYPE string.
          DATA t46 TYPE REF TO zcl_lnt_abstract_token.
          DATA t47 TYPE REF TO zcl_lnt_lx_comment.
          DATA(t48) = t36.
          t47 ?= t48.
          t46 = t47.
          DATA t49 TYPE string.
          DATA(t50) = t46.
          t49 = t50->str.
          t45 = t49.
          DATA(t51) = |--|.
          DATA(t52) = strlen( t45 ).
          DATA t53 TYPE i.
          DATA(t54) = VALUE i( ).
          DATA(t55) = VALUE string( ).
          t53 = strlen( t51 ).
          IF t53 = 0.
            t44 = abap_true.
          ELSEIF t53 <= t52.
            t54 = 0.
            t55 = t45+t54(t53).
            IF t55 = t51.
              t44 = abap_true.
            ENDIF.
          ENDIF.
          t41 = t44.
        ENDIF.
        IF t41 = abap_true.
          DATA(t56) = t2.
          DATA t57 TYPE REF TO zcl_lnt_issue.
          CLEAR t57.
          DATA t58 TYPE REF TO zif_lnt_file.
          DATA(t59) = t19.
          t58 = t59.
          DATA t60 TYPE REF TO zcl_lnt_lx_comment.
          DATA(t61) = t36.
          t60 ?= t61.
          DATA(t62) = |Use "//" for comments instead of "--"|.
          DATA(t63) = VALUE string( ).
          DATA t64 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t64.
          DATA t65 TYPE string.
          DATA(t66) = |cds_comment_style|.
          t65 = t66.
          DATA t67 TYPE string.
          DATA(t68) = |CDS Comment Style|.
          t67 = t68.
          DATA t69 TYPE string.
          DATA(t70) = |Check for obsolete comment style|.
          t69 = t70.
          DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t71.
          DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t72.
          DATA(t73) = abap_true.
          IF t73 = abap_true.
            DATA(t74) = |Check for obsolete comment style\n\nComments starting with "--|.
            t74 = t74 && |" are considered obsolete\n\nhttps://help.sap.com/doc/abapdocu|.
            t74 = t74 && |_latest_index_htm/latest/en-us/abencds_general_syntax_rules.|.
            t74 = t74 && |html|.
            DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t75->has = abap_true.
            t75->value = t74.
            t72 = t75.
          ELSE.
            DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t76.
            t72 = t76.
          ENDIF.
          t71 = t72.
          DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t77.
          DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t78.
          DATA(t79) = abap_true.
          IF t79 = abap_true.
            DATA t80 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t81 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t82 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t82.
            t81 = t82.
            DATA(t83) = t81.
            DATA(t84) = |SingleFile|.
            t83->load( ).
            APPEND t84 TO t83->items.
            t83->save( ).
            DATA(t85) = t81.
            t80 = t85.
            t78 = t80.
          ELSE.
            DATA t86 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t86.
            t78 = t86.
          ENDIF.
          t77 = t78.
          DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t87.
          DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t88.
          DATA(t89) = abap_true.
          IF t89 = abap_true.
            DATA(t90) = |-- this is a comment|.
            DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t91->has = abap_true.
            t91->value = t90.
            t88 = t91.
          ELSE.
            DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t92.
            t88 = t92.
          ENDIF.
          t87 = t88.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t93.
          DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t94.
          DATA(t95) = abap_true.
          IF t95 = abap_true.
            DATA(t96) = |// this is a comment|.
            DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t97->has = abap_true.
            t97->value = t96.
            t94 = t97.
          ELSE.
            DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t98.
            t94 = t98.
          ENDIF.
          t93 = t94.
          DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          t99 = t100.
          DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t102.
          t101 = t102.
          t64 = NEW zcl_lnt_irule_metadata( i_key = t65 i_title = t67 i_short_description = t69 i_bad_example = t87 i_good_example = t93 i_extended_information = t71 i_tags = t77 i_pragma = t99 i_pseudo_comment = t101 ).
          CREATE OBJECT t64->zlnt_view_ownkeys_b0e8086400eb.
          t64->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t103.
          IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t103 ).
          ENDIF.
          DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t104.
          IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t104 ).
          ENDIF.
          DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t105.
          IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t105 ).
          ENDIF.
          DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t106.
          IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t106 ).
          ENDIF.
          DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t107.
          IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t107 ).
          ENDIF.
          DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t108.
          IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t108 ).
          ENDIF.
          DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t109.
          IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t109 ).
          ENDIF.
          CREATE OBJECT t64->zlnt_json_ownkeys_70e5fd461788.
          t64->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t110) = |key|.
          DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t111.
          IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
          ENDIF.
          DATA(t112) = |title|.
          DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t113.
          IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
          ENDIF.
          DATA(t114) = |shortDescription|.
          DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t115.
          IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t114 p1 = t115 ).
          ENDIF.
          DATA(t116) = |extendedInformation|.
          DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t117.
          IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t116 p1 = t117 ).
          ENDIF.
          DATA(t118) = |tags|.
          DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t119.
          IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t118 p1 = t119 ).
          ENDIF.
          DATA(t120) = |badExample|.
          DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t121.
          IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t120 p1 = t121 ).
          ENDIF.
          DATA(t122) = |goodExample|.
          DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t123.
          IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t122 p1 = t123 ).
          ENDIF.
          t63 = t64->key.
          DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t125) = CAST zcl_lnt_cds_comment_style_conf( me->g_c_i_s_r_cd_cm_st_ts_cd_cm_st( ) ).
          t124 = t125->zlnt_view_read_sr_15c06369f827( ).
          DATA t126 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t126.
          t57 = zcl_lnt_issue=>at_token( i_file = t58 i_token = t60 i_message_26cb = t62 i_key = t63 i_severity = t124 i_fix = t126 ).
          t56->load( ).
          APPEND t57 TO t56->items.
          t56->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA(t127) = t2.
    result = t127.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_cds_comment_style_conf( me->g_c_i_s_r_cd_cm_st_ts_cd_cm_st( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cds_comment_style_conf( me->g_c_i_s_r_cd_cm_st_ts_cd_cm_st( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_cds_comment_style_conf.
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
        t2 = NEW zcl_lnt_cds_comment_style_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_cd_cm_st_ts_cd_cm_st( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zif_lnt_rule.
    DATA(t3) = t1.
    t2 = me->i_i_sr_rl_cd_cm_st_ts_cd_cm_st( i_reg_d009 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = t1.
    t2 = me->r_i_sr_rl_cd_cm_st_ts_cd_cm_st( i_object_19cd = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1420_48100aa1e6f0.
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
