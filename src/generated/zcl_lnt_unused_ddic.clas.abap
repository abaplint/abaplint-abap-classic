* TS: src/rules/unused_ddic.ts:11:1 UnusedDDIC
CLASS zcl_lnt_unused_ddic DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_unused_ddic_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS in_in_sr_rl_uns_ddc_ts_uns_ddc IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_unused_ddic.
    METHODS gt_cn_in_sr_rl_un_dd_ts_un_ddc RETURNING VALUE(result) TYPE REF TO zcl_lnt_unused_ddic_conf.
    METHODS st_cn_in_sr_rl_un_dd_ts_un_ddc IMPORTING i_conf TYPE REF TO zcl_lnt_unused_ddic_conf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_bf6e IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unused_ddic IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_unused_ddic_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |unused_ddic|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Unused DDIC|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks the usage of DDIC objects|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Objects checked: DOMA + DTEL + TABL + TTYP + VIEW|.
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
      CREATE OBJECT t17.
      t15 = t17.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t18.
      t15 = t18.
    ENDIF.
    t14 = t15.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    t23 = t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    t25 = t26.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t19 i_good_example = t21 i_extended_information = t8 i_tags = t14 i_pragma = t23 i_pseudo_comment = t25 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t27 ).
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t28 ).
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t31 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t32) = |key|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    ENDIF.
    DATA(t34) = |title|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = |shortDescription|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |extendedInformation|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    DATA(t40) = |tags|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD in_in_sr_rl_uns_ddc_ts_uns_ddc.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_un_dd_ts_un_ddc.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_un_dd_ts_un_ddc.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE abap_bool.
    DATA(t7) = t1.
    t6 = xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_domain ).
    t5 = t6.
    IF t6 = abap_false.
      DATA t8 TYPE abap_bool.
      DATA(t9) = t1.
      t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_ob_table_type ).
      t5 = t8.
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      DATA t10 TYPE abap_bool.
      DATA(t11) = t1.
      t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_view ).
      t4 = t10.
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      DATA t12 TYPE abap_bool.
      DATA(t13) = t1.
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_table ).
      t3 = t12.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA t14 TYPE abap_bool.
      DATA(t15) = t1.
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_data_element ).
      t2 = t14.
    ENDIF.
    IF t2 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_object.
      DATA t18 TYPE REF TO zif_lnt_object.
      DATA t19 TYPE REF TO zif_lnt_union_864794cc.
      DATA(t20) = t1.
      t19 ?= t20.
      t18 ?= t19.
      t17 = t18.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t23 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t24) = t17.
      t23 = t24->get_identifier( ).
      t22 = t23.
      DATA t25 TYPE REF TO zif_lnt_ddic_references.
      DATA t26 TYPE REF TO zif_lnt_ddic_references.
      DATA(t27) = me->reg.
      t26 = t27->get_ddic_references( ).
      t25 = t26.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t30) = t25.
      DATA(t31) = t17.
      t29 = t30->list_where_used( i_obj_1ed0 = t31 ).
      t28 = t29.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t32.
      DATA t33 TYPE abap_bool.
      DATA t34 TYPE abap_bool.
      DATA(t35) = t22.
      t34 = xsdbool( t35 IS BOUND ).
      t33 = t34.
      IF t34 = abap_true.
        DATA t36 TYPE abap_bool.
        DATA t37 TYPE i.
        DATA(t38) = t28.
        t38->load( ).
        t37 = lines( t38->items ).
        DATA(t39) = 0.
        t36 = xsdbool( t37 = t39 ).
        t33 = t36.
      ENDIF.
      IF t33 = abap_true.
        DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t40.
        DATA t41 TYPE string.
        DATA t42 TYPE string.
        DATA t43 TYPE string.
        DATA t44 TYPE string.
        DATA t45 TYPE string.
        DATA(t46) = t17.
        t45 = t46->get_type( ).
        DATA(t47) = | |.
        DATA(t48) = strlen( t45 ).
        t44 = |{ t45 }{ t47 }|.
        DATA t49 TYPE string.
        DATA(t50) = t17.
        t49 = t50->get_name( ).
        DATA(t51) = strlen( t44 ).
        t43 = |{ t44 }{ t49 }|.
        DATA(t52) = | not statically referenced|.
        DATA(t53) = strlen( t43 ).
        t42 = |{ t43 }{ t52 }|.
        t41 = t42.
        DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t54.
        DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t56.
        t55 = t56.
        DATA(t57) = t55.
        DATA t58 TYPE REF TO zcl_lnt_issue.
        CLEAR t58.
        DATA t59 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t60) = t22.
        t59 = t60.
        DATA(t61) = t41.
        DATA(t62) = VALUE string( ).
        DATA t63 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t63.
        DATA t64 TYPE string.
        DATA(t65) = |unused_ddic|.
        t64 = t65.
        DATA t66 TYPE string.
        DATA(t67) = |Unused DDIC|.
        t66 = t67.
        DATA t68 TYPE string.
        DATA(t69) = |Checks the usage of DDIC objects|.
        t68 = t69.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t70.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        DATA(t72) = abap_true.
        IF t72 = abap_true.
          DATA(t73) = |Objects checked: DOMA + DTEL + TABL + TTYP + VIEW|.
          DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t74->has = abap_true.
          t74->value = t73.
          t71 = t74.
        ELSE.
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t75.
          t71 = t75.
        ENDIF.
        t70 = t71.
        DATA t76 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t76.
        DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t77.
        DATA(t78) = abap_true.
        IF t78 = abap_true.
          DATA t79 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t79.
          t77 = t79.
        ELSE.
          DATA t80 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t80.
          t77 = t80.
        ENDIF.
        t76 = t77.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        t81 = t82.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t84.
        t83 = t84.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t86.
        t85 = t86.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        t87 = t88.
        t63 = NEW zcl_lnt_irule_metadata( i_key = t64 i_title = t66 i_short_description = t68 i_bad_example = t81 i_good_example = t83 i_extended_information = t70 i_tags = t76 i_pragma = t85 i_pseudo_comment = t87 ).
        CREATE OBJECT t63->zlnt_view_ownkeys_b0e8086400eb.
        t63->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t89 ).
        ENDIF.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t90 ).
        ENDIF.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t91 ).
        ENDIF.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t92 ).
        ENDIF.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t93 ).
        ENDIF.
        CREATE OBJECT t63->zlnt_json_ownkeys_70e5fd461788.
        t63->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t94) = |key|.
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
        ENDIF.
        DATA(t96) = |title|.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t97.
        IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
        ENDIF.
        DATA(t98) = |shortDescription|.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
        ENDIF.
        DATA(t100) = |extendedInformation|.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
        ENDIF.
        DATA(t102) = |tags|.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = t102 p1 = t103 ).
        ENDIF.
        t62 = t63->key.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t105) = me->conf.
        t104 = t105->zlnt_view_read_sr_15c06369f827( ).
        DATA t106 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t106.
        t58 = zcl_lnt_issue=>at_identifier( i_identifier = t59 i_message_26cb = t61 i_key = t62 i_severity = t104 i_fix = t106 ).
        t57->load( ).
        APPEND t58 TO t57->items.
        t57->save( ).
        DATA(t107) = t55.
        t54 = t107.
        t40 = t54.
        t32 = t40.
      ELSE.
        DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t108.
        t32 = t108.
      ENDIF.
      t21 = t32.
      t16 = t21.
      result = t16.
      RETURN.
    ENDIF.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t109.
    result = t109.

  ENDMETHOD.

  METHOD check_bf6e.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t3 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t4) = t1.
    t3 = t4->get_identifier( ).
    t2 = t3.
    DATA t5 TYPE REF TO zif_lnt_ddic_references.
    DATA t6 TYPE REF TO zif_lnt_ddic_references.
    DATA(t7) = me->reg.
    t6 = t7->get_ddic_references( ).
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = t5.
    DATA(t11) = t1.
    t9 = t10->list_where_used( i_obj_1ed0 = t11 ).
    t8 = t9.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE abap_bool.
    DATA(t14) = t2.
    t13 = xsdbool( t14 IS BOUND ).
    t12 = t13.
    IF t13 = abap_true.
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE i.
      DATA(t17) = t8.
      t17->load( ).
      t16 = lines( t17->items ).
      DATA(t18) = 0.
      t15 = xsdbool( t16 = t18 ).
      t12 = t15.
    ENDIF.
    IF t12 = abap_true.
      DATA t19 TYPE string.
      DATA t20 TYPE string.
      DATA t21 TYPE string.
      DATA t22 TYPE string.
      DATA t23 TYPE string.
      DATA(t24) = t1.
      t23 = t24->get_type( ).
      DATA(t25) = | |.
      DATA(t26) = strlen( t23 ).
      t22 = |{ t23 }{ t25 }|.
      DATA t27 TYPE string.
      DATA(t28) = t1.
      t27 = t28->get_name( ).
      DATA(t29) = strlen( t22 ).
      t21 = |{ t22 }{ t27 }|.
      DATA(t30) = | not statically referenced|.
      DATA(t31) = strlen( t21 ).
      t20 = |{ t21 }{ t30 }|.
      t19 = t20.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t34.
      t33 = t34.
      DATA(t35) = t33.
      DATA t36 TYPE REF TO zcl_lnt_issue.
      CLEAR t36.
      DATA t37 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t38) = t2.
      t37 = t38.
      DATA(t39) = t19.
      DATA(t40) = VALUE string( ).
      DATA t41 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t41.
      DATA t42 TYPE string.
      DATA(t43) = |unused_ddic|.
      t42 = t43.
      DATA t44 TYPE string.
      DATA(t45) = |Unused DDIC|.
      t44 = t45.
      DATA t46 TYPE string.
      DATA(t47) = |Checks the usage of DDIC objects|.
      t46 = t47.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t48.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t49.
      DATA(t50) = abap_true.
      IF t50 = abap_true.
        DATA(t51) = |Objects checked: DOMA + DTEL + TABL + TTYP + VIEW|.
        DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t52->has = abap_true.
        t52->value = t51.
        t49 = t52.
      ELSE.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t53.
        t49 = t53.
      ENDIF.
      t48 = t49.
      DATA t54 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t54.
      DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t55.
      DATA(t56) = abap_true.
      IF t56 = abap_true.
        DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t57.
        t55 = t57.
      ELSE.
        DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t58.
        t55 = t58.
      ENDIF.
      t54 = t55.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t60.
      t59 = t60.
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t62.
      t61 = t62.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t64.
      t63 = t64.
      DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t66.
      t65 = t66.
      t41 = NEW zcl_lnt_irule_metadata( i_key = t42 i_title = t44 i_short_description = t46 i_bad_example = t59 i_good_example = t61 i_extended_information = t48 i_tags = t54 i_pragma = t63 i_pseudo_comment = t65 ).
      CREATE OBJECT t41->zlnt_view_ownkeys_b0e8086400eb.
      t41->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t67 ).
      ENDIF.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t68 ).
      ENDIF.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t69 ).
      ENDIF.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t70 ).
      ENDIF.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t71 ).
      ENDIF.
      CREATE OBJECT t41->zlnt_json_ownkeys_70e5fd461788.
      t41->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t72) = |key|.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t73.
      IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = t72 p1 = t73 ).
      ENDIF.
      DATA(t74) = |title|.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = t74 p1 = t75 ).
      ENDIF.
      DATA(t76) = |shortDescription|.
      DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t77.
      IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = t76 p1 = t77 ).
      ENDIF.
      DATA(t78) = |extendedInformation|.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = t78 p1 = t79 ).
      ENDIF.
      DATA(t80) = |tags|.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = t80 p1 = t81 ).
      ENDIF.
      t40 = t41->key.
      DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t83) = me->conf.
      t82 = t83->zlnt_view_read_sr_15c06369f827( ).
      DATA t84 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t84.
      t36 = zcl_lnt_issue=>at_identifier( i_identifier = t37 i_message_26cb = t39 i_key = t40 i_severity = t82 i_fix = t84 ).
      t35->load( ).
      APPEND t36 TO t35->items.
      t35->save( ).
      DATA(t85) = t33.
      t32 = t85.
      result = t32.
      RETURN.
    ENDIF.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t86.
    result = t86.

  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_unused_ddic.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_uns_ddc_ts_uns_ddc( i_reg_f149 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_unused_ddic_conf( me->gt_cn_in_sr_rl_un_dd_ts_un_ddc( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unused_ddic_conf( me->gt_cn_in_sr_rl_un_dd_ts_un_ddc( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_unused_ddic_conf.
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
        t2 = NEW zcl_lnt_unused_ddic_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_un_dd_ts_un_ddc( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1752_0bcde0f0a53e.
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
