* TS: src/rules/forbidden_void_type.ts:22:1 ForbiddenVoidType
CLASS zcl_lnt_forbidden_void_type DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_frbddn_vd_typ_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_fr_vd_ty_ts_fr_vd_ty RETURNING VALUE(result) TYPE REF TO zcl_lnt_frbddn_vd_typ_cnf.
    METHODS s_c_i_s_r_fr_vd_ty_ts_fr_vd_ty IMPORTING i_conf TYPE REF TO zcl_lnt_frbddn_vd_typ_cnf.
    METHODS i_i_sr_rl_fr_vd_ty_ts_fr_vd_ty IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_forbidden_void_type.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS traverse IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_forbidden_type IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_forbidden_name IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE abap_bool.
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
CLASS zcl_lnt_forbidden_void_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_frbddn_vd_typ_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |forbidden_void_type|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Forbidden Void Types|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Avoid usage of specified void types.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Inspiration:\nBOOLEAN, BOOLE_D, CHAR01, CHAR1, CHAR10, CHAR12|.
      t11 = t11 && |, CHAR128, CHAR2, CHAR20, CHAR4, CHAR70,\nDATS, TIMS, DATUM, |.
      t11 = t11 && |FLAG, INT4, NUMC3, NUMC4, SAP_BOOL, TEXT25, TEXT80, X255, XF|.
      t11 = t11 && |ELD|.
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
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    t14 = t15.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t19.
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    t22 = t23.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t14 i_good_example = t16 i_extended_information = t8 i_tags = t18 i_pragma = t20 i_pseudo_comment = t22 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t24 ).
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t25 ).
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t26 ).
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t27 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t28) = |key|.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t28 p1 = t29 ).
    ENDIF.
    DATA(t30) = |title|.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
    ENDIF.
    DATA(t32) = |shortDescription|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    ENDIF.
    DATA(t34) = |extendedInformation|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_fr_vd_ty_ts_fr_vd_ty.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_fr_vd_ty_ts_fr_vd_ty.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t6) = me->conf.
    t5 = t6->zlnt_view_read_sr_b42982868281( ).
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t4.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t3 = t9.
    IF t3 = abap_true.
      DATA(t11) = me->conf.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t12.
      t11->zlnt_view_write_s_664d83bee218( p0 = t12 ).
    ENDIF.
  ENDMETHOD.

  METHOD i_i_sr_rl_fr_vd_ty_ts_fr_vd_ty.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA(t5) = t1.
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_abap_object ).
    t3 = xsdbool( t4 = abap_false ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t6 TYPE abap_bool.
      DATA t7 TYPE i.
      DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t9) = me->conf.
      t8 = t9->zlnt_view_read_sr_b42982868281( ).
      t8->load( ).
      t7 = lines( t8->items ).
      DATA(t10) = 0.
      t6 = xsdbool( t7 = t10 ).
      t2 = t6.
    ENDIF.
    IF t2 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t11.
      result = t11.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t14 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t15 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t16 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t17) = me->reg.
    DATA t18 TYPE REF TO zcl_lnt_abap_object.
    DATA(t19) = t1.
    DATA t20 TYPE REF TO object.
    t20 = t19.
    t18 ?= t20.
    t16 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t17 i_object_19cd = t18 ).
    t15 = t16->run( ).
    t14 = t15->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t13 = t14->get_top( ).
    t12 = me->traverse( i_node = t13 ).
    result = t12.

  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Forbidden void type: |.
    t4 = t5.
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE string.
    DATA t8 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t9) = t1.
    t8 = t9->get_identifier( ).
    t7 = t8->stype.
    DATA(t10) = |_builtin|.
    t6 = xsdbool( t7 <> t10 ).
    IF t6 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t12 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t13) = t1.
      t12 = t13->get_data( ).
      t11 = t12->references.
      DATA t14 TYPE REF TO zcl_lnt_ireference.
      CLEAR t14.
      DATA t15 TYPE REF TO object.
      CLEAR t15.
      DATA(t16) = VALUE i( ).
      DO.
        t11->load( ).
        IF t16 >= lines( t11->items ).
          EXIT.
        ENDIF.
        CLEAR t15.
        READ TABLE t11->items INDEX t16 + 1 INTO t15.
        t16 = t16 + 1.
        DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t17.
        CLEAR t14.
        IF t15 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t17 ?= t15.
          DATA t18 TYPE REF TO object.
          t18 = t17->as_ref( ).
          t14 ?= t18.
        ELSE.
          t14 ?= t15.
        ENDIF.
        DATA(t19) = VALUE abap_bool( ).
        DATA t20 TYPE abap_bool.
        DATA t21 TYPE abap_bool.
        DATA t22 TYPE string.
        DATA(t23) = t14.
        t22 = t23->reference_type.
        DATA(t24) = |Object (Void)|.
        t21 = xsdbool( t22 = t24 ).
        t20 = t21.
        IF t21 = abap_true.
          DATA(t25) = VALUE abap_bool( ).
          DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t26.
          DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t27.
          DATA t28 TYPE REF TO zcl_lnt_ireference_extras.
          DATA t29 TYPE REF TO zcl_lnt_ireference_extras.
          DATA(t30) = t14.
          t29 = t30->extra.
          t28 = t29.
          DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t31.
          DATA(t32) = VALUE abap_bool( ).
          DATA(t33) = t28.
          IF t33 IS INITIAL.
            t32 = abap_true.
          ENDIF.
          IF t32 = abap_true.
            DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t34.
            t31 = t34.
          ELSE.
            DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t36 TYPE REF TO zcl_lnt_ireference_extras.
            DATA(t37) = t28.
            t36 = t37.
            t35 = t36->oo_name.
            t31 = t35.
          ENDIF.
          t27 = t31.
          t26 = t27.
          DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t39.
          t38 = t39.
          DATA(t40) = VALUE abap_bool( ).
          DATA(t41) = VALUE abap_bool( ).
          DATA(t42) = t26.
          IF t42 IS INITIAL.
            t41 = abap_true.
          ELSEIF t42->has = abap_false.
            t41 = abap_true.
          ENDIF.
          t40 = xsdbool( t41 = abap_false ).
          t25 = t40.
          t20 = t25.
        ENDIF.
        t19 = t20.
        IF t20 = abap_true.
          DATA(t43) = VALUE abap_bool( ).
          DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t44.
          DATA(t45) = abap_true.
          IF t45 = abap_true.
            DATA(t46) = VALUE string( ).
            DATA t47 TYPE REF TO zcl_lnt_ireference_extras.
            DATA t48 TYPE REF TO zcl_lnt_ireference_extras.
            DATA t49 TYPE REF TO zcl_lnt_ireference_extras.
            DATA(t50) = t14.
            t49 = t50->extra.
            t48 = t49.
            t47 = t48.
            DATA(t51) = VALUE string( ).
            DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t52.
            DATA(t53) = VALUE abap_bool( ).
            DATA(t54) = t47.
            IF t54 IS INITIAL.
              t53 = abap_true.
            ENDIF.
            IF t53 = abap_true.
              DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t55.
              t52 = t55.
            ELSE.
              DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t57) = t47.
              t56 = t57->oo_name.
              t52 = t56.
            ENDIF.
            t51 = t52->value.
            t46 = t51.
            DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t58->has = abap_true.
            t58->value = t46.
            t44 = t58.
          ELSE.
            DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t59.
            t44 = t59.
          ENDIF.
          t43 = me->is_forbidden_name( i_name = t44 ).
          t19 = t43.
        ENDIF.
        IF t19 = abap_true.
          DATA(t60) = t2.
          DATA t61 TYPE REF TO zcl_lnt_issue.
          CLEAR t61.
          DATA t62 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t63) = t14.
          t62 = t63->position_7b94.
          DATA(t64) = VALUE string( ).
          DATA(t65) = t4.
          DATA(t66) = VALUE string( ).
          DATA t67 TYPE REF TO zcl_lnt_ireference_extras.
          DATA t68 TYPE REF TO zcl_lnt_ireference_extras.
          DATA t69 TYPE REF TO zcl_lnt_ireference_extras.
          DATA(t70) = t14.
          t69 = t70->extra.
          t68 = t69.
          t67 = t68.
          DATA(t71) = VALUE string( ).
          DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t72.
          DATA(t73) = VALUE abap_bool( ).
          DATA(t74) = t67.
          IF t74 IS INITIAL.
            t73 = abap_true.
          ENDIF.
          IF t73 = abap_true.
            DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t75.
            t72 = t75.
          ELSE.
            DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t77) = t67.
            t76 = t77->oo_name.
            t72 = t76.
          ENDIF.
          t71 = t72->value.
          t66 = t71.
          DATA(t78) = strlen( t65 ).
          t64 = |{ t65 }{ t66 }|.
          DATA(t79) = VALUE string( ).
          DATA t80 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t80.
          DATA t81 TYPE string.
          DATA(t82) = |forbidden_void_type|.
          t81 = t82.
          DATA t83 TYPE string.
          DATA(t84) = |Forbidden Void Types|.
          t83 = t84.
          DATA t85 TYPE string.
          DATA(t86) = |Avoid usage of specified void types.|.
          t85 = t86.
          DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t87.
          DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t88.
          DATA(t89) = abap_true.
          IF t89 = abap_true.
            DATA(t90) = |Inspiration:\nBOOLEAN, BOOLE_D, CHAR01, CHAR1, CHAR10, CHAR12|.
            t90 = t90 && |, CHAR128, CHAR2, CHAR20, CHAR4, CHAR70,\nDATS, TIMS, DATUM, |.
            t90 = t90 && |FLAG, INT4, NUMC3, NUMC4, SAP_BOOL, TEXT25, TEXT80, X255, XF|.
            t90 = t90 && |ELD|.
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
          DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t94.
          t93 = t94.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t96.
          t95 = t96.
          DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t98.
          t97 = t98.
          DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          t99 = t100.
          DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t102.
          t101 = t102.
          t80 = NEW zcl_lnt_irule_metadata( i_key = t81 i_title = t83 i_short_description = t85 i_bad_example = t93 i_good_example = t95 i_extended_information = t87 i_tags = t97 i_pragma = t99 i_pseudo_comment = t101 ).
          CREATE OBJECT t80->zlnt_view_ownkeys_b0e8086400eb.
          t80->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t103.
          IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t103 ).
          ENDIF.
          DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t104.
          IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t104 ).
          ENDIF.
          DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t105.
          IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t105 ).
          ENDIF.
          DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t106.
          IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t106 ).
          ENDIF.
          CREATE OBJECT t80->zlnt_json_ownkeys_70e5fd461788.
          t80->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t107) = |key|.
          DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t108.
          IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t107 p1 = t108 ).
          ENDIF.
          DATA(t109) = |title|.
          DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t110.
          IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t109 p1 = t110 ).
          ENDIF.
          DATA(t111) = |shortDescription|.
          DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t112.
          IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t111 p1 = t112 ).
          ENDIF.
          DATA(t113) = |extendedInformation|.
          DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t114.
          IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t113 p1 = t114 ).
          ENDIF.
          t79 = t80->key.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t116) = me->conf.
          t115 = t116->zlnt_view_read_sr_15c06369f827( ).
          DATA t117 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t117.
          t61 = zcl_lnt_issue=>at_identifier( i_identifier = t62 i_message_26cb = t64 i_key = t79 i_severity = t115 i_fix = t117 ).
          t60->load( ).
          APPEND t61 TO t60->items.
          t60->save( ).
        ENDIF.
        DATA(t118) = VALUE abap_bool( ).
        DATA t119 TYPE abap_bool.
        DATA t120 TYPE abap_bool.
        DATA t121 TYPE string.
        DATA(t122) = t14.
        t121 = t122->reference_type.
        DATA(t123) = |Type (Void)|.
        t120 = xsdbool( t121 = t123 ).
        t119 = t120.
        IF t120 = abap_false.
          DATA t124 TYPE abap_bool.
          DATA t125 TYPE string.
          DATA(t126) = t14.
          t125 = t126->reference_type.
          DATA(t127) = |Table (Void)|.
          t124 = xsdbool( t125 = t127 ).
          t119 = t124.
        ENDIF.
        t118 = t119.
        IF t119 = abap_true.
          DATA(t128) = VALUE abap_bool( ).
          DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t129.
          DATA(t130) = abap_true.
          IF t130 = abap_true.
            DATA(t131) = VALUE string( ).
            DATA t132 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t133 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t134) = t14.
            t133 = t134->position_7b94.
            t132 = t133.
            DATA(t135) = VALUE string( ).
            DATA t136 TYPE string.
            DATA t137 TYPE string.
            DATA t138 TYPE REF TO zcl_lnt_abstract_token.
            DATA t139 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t140) = t132.
            t139 = t140->token.
            t138 = t139.
            DATA t141 TYPE string.
            DATA(t142) = t138.
            t141 = t142->str.
            t137 = t141.
            t136 = t137.
            DATA(t143) = VALUE abap_bool( ).
            DATA(t144) = VALUE string( ).
            DATA(t145) = t136.
            DATA(t146) = 0.
            DATA(t147) = 1.
            DATA(t148) = strlen( t145 ).
            IF t146 < 0.
              t146 = t146 + t148.
              IF t146 < 0.
                t146 = 0.
              ENDIF.
            ENDIF.
            IF t146 > t148 OR t147 <= 0.
              CLEAR t144.
            ELSE.
              IF t147 > t148 - t146.
                t147 = t148 - t146.
              ENDIF.
              t144 = t145+t146(t147).
            ENDIF.
            DATA(t149) = |!|.
            t143 = xsdbool( t144 = t149 ).
            IF t143 = abap_true.
              DATA(t150) = VALUE string( ).
              DATA t151 TYPE string.
              DATA(t152) = t136.
              t151 = t152.
              DATA(t153) = VALUE string( ).
              DATA(t154) = t151.
              DATA(t155) = 1.
              DATA t156 TYPE i.
              DATA(t157) = t151.
              DATA(t158) = strlen( t157 ).
              t156 = t158.
              DATA(t159) = strlen( t154 ).
              IF t155 < 0.
                t155 = t155 + t159.
                IF t155 < 0.
                  t155 = 0.
                ENDIF.
              ENDIF.
              IF t155 > t159 OR t156 <= 0.
                CLEAR t153.
              ELSE.
                IF t156 > t159 - t155.
                  t156 = t159 - t155.
                ENDIF.
                t153 = t154+t155(t156).
              ENDIF.
              t150 = t153.
              t136 = t150.
            ENDIF.
            DATA(t160) = t136.
            t135 = t160.
            t131 = t135.
            DATA(t161) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t161->has = abap_true.
            t161->value = t131.
            t129 = t161.
          ELSE.
            DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t162.
            t129 = t162.
          ENDIF.
          t128 = me->is_forbidden_name( i_name = t129 ).
          t118 = t128.
        ENDIF.
        IF t118 = abap_true.
          DATA(t163) = t2.
          DATA t164 TYPE REF TO zcl_lnt_issue.
          CLEAR t164.
          DATA t165 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t166) = t14.
          t165 = t166->position_7b94.
          DATA(t167) = VALUE string( ).
          DATA(t168) = t4.
          DATA(t169) = VALUE string( ).
          DATA t170 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t171 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t172) = t14.
          t171 = t172->position_7b94.
          t170 = t171.
          DATA(t173) = VALUE string( ).
          DATA t174 TYPE string.
          DATA t175 TYPE string.
          DATA t176 TYPE REF TO zcl_lnt_abstract_token.
          DATA t177 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t178) = t170.
          t177 = t178->token.
          t176 = t177.
          DATA t179 TYPE string.
          DATA(t180) = t176.
          t179 = t180->str.
          t175 = t179.
          t174 = t175.
          DATA(t181) = VALUE abap_bool( ).
          DATA(t182) = VALUE string( ).
          DATA(t183) = t174.
          DATA(t184) = 0.
          DATA(t185) = 1.
          DATA(t186) = strlen( t183 ).
          IF t184 < 0.
            t184 = t184 + t186.
            IF t184 < 0.
              t184 = 0.
            ENDIF.
          ENDIF.
          IF t184 > t186 OR t185 <= 0.
            CLEAR t182.
          ELSE.
            IF t185 > t186 - t184.
              t185 = t186 - t184.
            ENDIF.
            t182 = t183+t184(t185).
          ENDIF.
          DATA(t187) = |!|.
          t181 = xsdbool( t182 = t187 ).
          IF t181 = abap_true.
            DATA(t188) = VALUE string( ).
            DATA t189 TYPE string.
            DATA(t190) = t174.
            t189 = t190.
            DATA(t191) = VALUE string( ).
            DATA(t192) = t189.
            DATA(t193) = 1.
            DATA t194 TYPE i.
            DATA(t195) = t189.
            DATA(t196) = strlen( t195 ).
            t194 = t196.
            DATA(t197) = strlen( t192 ).
            IF t193 < 0.
              t193 = t193 + t197.
              IF t193 < 0.
                t193 = 0.
              ENDIF.
            ENDIF.
            IF t193 > t197 OR t194 <= 0.
              CLEAR t191.
            ELSE.
              IF t194 > t197 - t193.
                t194 = t197 - t193.
              ENDIF.
              t191 = t192+t193(t194).
            ENDIF.
            t188 = t191.
            t174 = t188.
          ENDIF.
          DATA(t198) = t174.
          t173 = t198.
          t169 = t173.
          DATA(t199) = strlen( t168 ).
          t167 = |{ t168 }{ t169 }|.
          DATA(t200) = VALUE string( ).
          DATA t201 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t201.
          DATA t202 TYPE string.
          DATA(t203) = |forbidden_void_type|.
          t202 = t203.
          DATA t204 TYPE string.
          DATA(t205) = |Forbidden Void Types|.
          t204 = t205.
          DATA t206 TYPE string.
          DATA(t207) = |Avoid usage of specified void types.|.
          t206 = t207.
          DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t208.
          DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t209.
          DATA(t210) = abap_true.
          IF t210 = abap_true.
            DATA(t211) = |Inspiration:\nBOOLEAN, BOOLE_D, CHAR01, CHAR1, CHAR10, CHAR12|.
            t211 = t211 && |, CHAR128, CHAR2, CHAR20, CHAR4, CHAR70,\nDATS, TIMS, DATUM, |.
            t211 = t211 && |FLAG, INT4, NUMC3, NUMC4, SAP_BOOL, TEXT25, TEXT80, X255, XF|.
            t211 = t211 && |ELD|.
            DATA(t212) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t212->has = abap_true.
            t212->value = t211.
            t209 = t212.
          ELSE.
            DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t213.
            t209 = t213.
          ENDIF.
          t208 = t209.
          DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t215.
          t214 = t215.
          DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t217.
          t216 = t217.
          DATA t218 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t219 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t219.
          t218 = t219.
          DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t221.
          t220 = t221.
          DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t223.
          t222 = t223.
          t201 = NEW zcl_lnt_irule_metadata( i_key = t202 i_title = t204 i_short_description = t206 i_bad_example = t214 i_good_example = t216 i_extended_information = t208 i_tags = t218 i_pragma = t220 i_pseudo_comment = t222 ).
          CREATE OBJECT t201->zlnt_view_ownkeys_b0e8086400eb.
          t201->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t224.
          IF t201->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t224 ).
          ENDIF.
          DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t225.
          IF t201->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t225 ).
          ENDIF.
          DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t226.
          IF t201->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t226 ).
          ENDIF.
          DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t227.
          IF t201->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t227 ).
          ENDIF.
          CREATE OBJECT t201->zlnt_json_ownkeys_70e5fd461788.
          t201->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t228) = |key|.
          DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t229.
          IF t201->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t201->zlnt_json_ownkeys_70e5fd461788->put( p0 = t228 p1 = t229 ).
          ENDIF.
          DATA(t230) = |title|.
          DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t231.
          IF t201->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t201->zlnt_json_ownkeys_70e5fd461788->put( p0 = t230 p1 = t231 ).
          ENDIF.
          DATA(t232) = |shortDescription|.
          DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t233.
          IF t201->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t201->zlnt_json_ownkeys_70e5fd461788->put( p0 = t232 p1 = t233 ).
          ENDIF.
          DATA(t234) = |extendedInformation|.
          DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t235.
          IF t201->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t201->zlnt_json_ownkeys_70e5fd461788->put( p0 = t234 p1 = t235 ).
          ENDIF.
          t200 = t201->key.
          DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t237) = me->conf.
          t236 = t237->zlnt_view_read_sr_15c06369f827( ).
          DATA t238 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t238.
          t164 = zcl_lnt_issue=>at_identifier( i_identifier = t165 i_message_26cb = t167 i_key = t200 i_severity = t236 i_fix = t238 ).
          t163->load( ).
          APPEND t164 TO t163->items.
          t163->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t239 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t240) = t1.
    t239 = t240->get_children( ).
    DATA t241 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t241.
    DATA t242 TYPE REF TO object.
    CLEAR t242.
    DATA(t243) = VALUE i( ).
    DO.
      t239->load( ).
      IF t243 >= lines( t239->items ).
        EXIT.
      ENDIF.
      CLEAR t242.
      READ TABLE t239->items INDEX t243 + 1 INTO t242.
      t243 = t243 + 1.
      DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t244.
      CLEAR t241.
      IF t242 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t244 ?= t242.
        DATA t245 TYPE REF TO object.
        t245 = t244->as_ref( ).
        t241 ?= t245.
      ELSE.
        t241 ?= t242.
      ENDIF.
      DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t247) = t2.
      DATA t248 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t249) = t241.
      t248 = me->traverse( i_node = t249 ).
      t246 = t247->concat( p0 = t248 ).
      t2 = t246.
    ENDDO.
    DATA(t250) = t2.
    result = t250.

  ENDMETHOD.

  METHOD is_forbidden_type.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = t1.
    t2 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_structure_type ).
    IF t2 = abap_true.
      DATA(t4) = VALUE abap_bool( ).
      DATA(t5) = VALUE abap_bool( ).
      DATA(t6) = abap_false.
      t5 = t6.
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t7.
      DATA t8 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t9.
      DATA(t10) = t1.
      t9 ?= t10.
      t8 = t9.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t11.
      DATA(t12) = t8.
      t11 = t12->components.
      t7 = t11.
      DATA t13 TYPE REF TO zcl_lnt_istructure_component.
      CLEAR t13.
      DATA t14 TYPE REF TO object.
      CLEAR t14.
      DATA(t15) = VALUE i( ).
      DO.
        t7->load( ).
        IF t15 >= lines( t7->items ).
          EXIT.
        ENDIF.
        CLEAR t14.
        READ TABLE t7->items INDEX t15 + 1 INTO t14.
        t15 = t15 + 1.
        DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t16.
        CLEAR t13.
        IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t16 ?= t14.
          CLEAR t13.
          IF t16 IS BOUND.
            IF t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t13 ?= t16->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t13 IS NOT BOUND.
              IF t16->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t16->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t16->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t16->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t17.
                IF t16->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t17 ?= t16->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t17->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA(t18) = VALUE string( ).
              DATA t19 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t19.
              DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t20.
              DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t21.
              t13 = NEW zcl_lnt_istructure_component( view_source = t16 i_name = t18 i_type_9913 = t19 i_as_include = t20 i_suffix = t21 ).
            ENDIF.
          ENDIF.
        ELSE.
          t13 ?= t14.
        ENDIF.
        DATA(t22) = VALUE abap_bool( ).
        DATA t23 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t23.
        DATA(t24) = t13.
        t23 = t24->zlnt_view_read_sr_455340cd1e80( ).
        t22 = me->is_forbidden_type( i_type_9913 = t23 ).
        IF t22 = abap_true.
          DATA(t25) = abap_true.
          t5 = t25.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t26) = t5.
      t4 = t26.
      result = t4.
      RETURN.
    ELSE.
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = t1.
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_void_type ).
      t27 = xsdbool( t28 = abap_false ).
      IF t27 = abap_true.
        DATA(t30) = abap_false.
        result = t30.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    DATA t33 TYPE REF TO zcl_lnt_void_type.
    CLEAR t33.
    DATA t34 TYPE REF TO zcl_lnt_void_type.
    CLEAR t34.
    DATA(t35) = t1.
    t34 ?= t35.
    t33 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t36.
    DATA(t37) = t33.
    t36 = t37->voided.
    t32 = t36.
    t31 = t32.
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = t31.
    t38 = me->is_forbidden_name( i_name = t39 ).
    result = t38.

  ENDMETHOD.

  METHOD is_forbidden_name.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA(t9) = abap_false.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t11) = me->conf.
    t10 = t11->zlnt_view_read_sr_b42982868281( ).
    DATA(t12) = VALUE string( ).
    t10->dense( ).
    DATA(t13) = VALUE i( ).
    DO.
      t10->load( ).
      IF t13 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t10->items INDEX t13 + 1 INTO t12.
      IF t10->has( t13 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA t15 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t15.
      DATA(t16) = t12.
      DATA(t17) = |i|.
      CREATE OBJECT t15 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t16 flags = t17.
      t14 = t15.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = t14.
      DATA(t21) = VALUE string( ).
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t23) = t1.
      t22 = t23.
      DATA(t24) = VALUE string( ).
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = t22.
      IF t26 IS INITIAL.
        t25 = abap_true.
      ELSEIF t26->has = abap_false.
        t25 = abap_true.
      ENDIF.
      IF t25 = abap_true.
        DATA(t27) = |undefined|.
        t24 = t27.
      ELSE.
        DATA t28 TYPE string.
        DATA(t29) = t22.
        t28 = t29->value.
        t24 = t28.
      ENDIF.
      t21 = t24.
      t19 = t20->test( p0 = t21 ).
      t18 = t19.
      DATA t30 TYPE abap_bool.
      DATA(t31) = t18.
      DATA(t32) = abap_true.
      t30 = xsdbool( t31 = t32 ).
      IF t30 = abap_true.
        DATA(t33) = abap_true.
        result = t33.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t34) = abap_false.
    result = t34.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_frbddn_vd_typ_cnf( me->g_c_i_s_r_fr_vd_ty_ts_fr_vd_ty( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_frbddn_vd_typ_cnf( me->g_c_i_s_r_fr_vd_ty_ts_fr_vd_ty( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_frbddn_vd_typ_cnf.
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
        t2 = NEW zcl_lnt_frbddn_vd_typ_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_fr_vd_ty_ts_fr_vd_ty( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_forbidden_void_type.
    DATA(t3) = t1.
    t2 = me->i_i_sr_rl_fr_vd_ty_ts_fr_vd_ty( i_reg_f149 = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1510_520873557365.
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
