* TS: src/rules/unused_types.ts:55:1 UnusedTypes
CLASS zcl_lnt_unused_types DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_unused_types_conf.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA workarea TYPE REF TO zcl_lnt_rl_unused_types_wrk_ar.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_rl_un_ty_ts_un_ty_fb96 RETURNING VALUE(result) TYPE REF TO zcl_lnt_unused_types_conf.
    METHODS s_c_i_s_rl_un_ty_ts_un_ty_63cc IMPORTING i_conf TYPE REF TO zcl_lnt_unused_types_conf.
    METHODS in_in_sr_rl_uns_typ_ts_uns_typ IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_unused_types.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS suppressedby_pseudo IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE abap_bool.
    METHODS traverse IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object i_add_81da TYPE abap_bool.
    METHODS check_node IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object i_add_81da TYPE abap_bool RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build_fix IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
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
CLASS zcl_lnt_unused_types IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_unused_types_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |unused_types|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Unused types|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for unused TYPE definitions|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Unused types are not reported if the object contains parser |.
      t11 = t11 && |or syntax errors.|.
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
      DATA(t27) = |##NEEDED|.
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
      DATA(t33) = |EC NEEDED|.
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
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t36 i_good_example = t38 i_extended_information = t8 i_tags = t14 i_pragma = t24 i_pseudo_comment = t30 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t46 ).
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
    DATA(t57) = |pragma|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |pseudoComment|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_rl_un_ty_ts_un_ty_fb96.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_rl_un_ty_ts_un_ty_63cc.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t6) = me->conf.
    t5 = t6->zlnt_view_read_sr_2667dd143927( ).
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
      CLEAR t12.
      DATA(t13) = abap_true.
      IF t13 = abap_true.
        DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t14.
        t12 = t14.
      ELSE.
        DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t15.
        t12 = t15.
      ENDIF.
      t11->zlnt_view_write_s_b18bb92e9271( p0 = t12 ).
    ENDIF.
  ENDMETHOD.

  METHOD in_in_sr_rl_uns_typ_ts_uns_typ.
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
    DATA(t4) = t1.
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_abap_object ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t5.
      CREATE OBJECT t5.
      result = t5.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t8.
    DATA(t9) = t1.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    t10 = t9.
    t8 ?= t10.
    t7 = t8.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA(t12) = t7.
    t11 = t12->parsed.
    t6 = t11.
    DATA t13 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t13.
    DATA t14 TYPE REF TO object.
    CLEAR t14.
    DATA(t15) = VALUE i( ).
    DO.
      t6->load( ).
      IF t15 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t14.
      READ TABLE t6->items INDEX t15 + 1 INTO t14.
      t15 = t15 + 1.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      CLEAR t13.
      IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t16 ?= t14.
        DATA t17 TYPE REF TO object.
        CLEAR t17.
        t17 = t16->as_ref( ).
        t13 ?= t17.
      ELSE.
        t13 ?= t14.
      ENDIF.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t19.
      DATA(t20) = t13.
      t19 = t20.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t21.
      DATA(t22) = t19.
      t21 = t22->statements.
      t18 = t21.
      DATA t23 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t23.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      DATA(t25) = VALUE i( ).
      DO.
        t18->load( ).
        IF t25 >= lines( t18->items ).
          EXIT.
        ENDIF.
        CLEAR t24.
        READ TABLE t18->items INDEX t25 + 1 INTO t24.
        t25 = t25 + 1.
        DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t26.
        CLEAR t23.
        IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t26 ?= t24.
          DATA t27 TYPE REF TO object.
          CLEAR t27.
          t27 = t26->as_ref( ).
          t23 ?= t27.
        ELSE.
          t23 ?= t24.
        ENDIF.
        DATA(t28) = VALUE abap_bool( ).
        DATA t29 TYPE REF TO zif_lnt_statement.
        CLEAR t29.
        DATA(t30) = t23.
        t29 = t30->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_unknown ).
        IF t28 = abap_true.
          DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t31.
          CREATE OBJECT t31.
          result = t31.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t32 TYPE REF TO zcl_lnt_isyntax_result.
    CLEAR t32.
    DATA t33 TYPE REF TO zcl_lnt_isyntax_result.
    CLEAR t33.
    DATA t34 TYPE REF TO zcl_lnt_syntax_logic.
    CLEAR t34.
    DATA(t35) = me->reg.
    DATA t36 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t36.
    DATA(t37) = t1.
    DATA t38 TYPE REF TO object.
    CLEAR t38.
    t38 = t37.
    t36 ?= t38.
    t34 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t35 i_object_19cd = t36 ).
    t33 = t34->run( ).
    t32 = t33.
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = VALUE i( ).
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t41.
    DATA(t42) = t32.
    t41 = t42->zlnt_view_read_sr_bd188c319c03( ).
    t41->load( ).
    t40 = lines( t41->items ).
    DATA(t43) = 0.
    t39 = xsdbool( t40 > t43 ).
    IF t39 = abap_true.
      DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t44.
      CREATE OBJECT t44.
      result = t44.
      RETURN.
    ENDIF.
    DATA(t45) = NEW zcl_lnt_rl_unused_types_wrk_ar( ).
    me->workarea = t45.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `workarea`.
    DATA t46 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t46.
    DATA t47 TYPE REF TO zif_lnt_spaghetti_scope.
    CLEAR t47.
    DATA(t48) = t32.
    t47 = t48->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t46 = t47->get_top( ).
    DATA t49 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t49.
    DATA(t50) = t1.
    DATA t51 TYPE REF TO object.
    CLEAR t51.
    t51 = t50.
    t49 ?= t51.
    DATA(t52) = abap_true.
    me->traverse( i_node = t46 i_obj_1ed0 = t49 i_add_81da = t52 ).
    DATA t53 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t53.
    DATA t54 TYPE REF TO zif_lnt_spaghetti_scope.
    CLEAR t54.
    DATA(t55) = t32.
    t54 = t55->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t53 = t54->get_top( ).
    DATA t56 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t56.
    DATA(t57) = t1.
    DATA t58 TYPE REF TO object.
    CLEAR t58.
    t58 = t57.
    t56 ?= t58.
    DATA(t59) = abap_false.
    me->traverse( i_node = t53 i_obj_1ed0 = t56 i_add_81da = t59 ).
    DATA(t60) = VALUE abap_bool( ).
    DATA(t61) = VALUE i( ).
    DATA(t62) = VALUE f( ).
    DATA t63 TYPE REF TO zcl_lnt_rl_unused_types_wrk_ar.
    CLEAR t63.
    DATA(t64) = me->workarea.
    t63 = t64.
    DATA(t65) = VALUE f( ).
    DATA(t66) = VALUE i( ).
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t67.
    DATA(t68) = t63.
    t67 = t68->workarea.
    t67->load( ).
    t66 = lines( t67->items ).
    t65 = t66.
    t62 = t65.
    t61 = t62.
    DATA(t69) = 0.
    t60 = xsdbool( t61 = t69 ).
    IF t60 = abap_true.
      DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t70.
      CREATE OBJECT t70.
      result = t70.
      RETURN.
    ENDIF.
    DATA t71 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t71.
    DATA t72 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t72.
    DATA t73 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t73.
    DATA(t74) = me->reg.
    t73 = t74->get_objects( ).
    t72 = t73->iterate( ).
    t71 = t72.
    DO.
      DATA(t75) = abap_true.
      IF t75 = abap_false.
        EXIT.
      ENDIF.
      DATA t76 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t76.
      DATA t77 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t77.
      DATA(t78) = t71.
      t77 = t78->next( ).
      t76 = t77.
      DATA(t79) = VALUE abap_bool( ).
      DATA(t80) = t76.
      t79 = t80->done.
      IF t79 = abap_true.
        EXIT.
      ENDIF.
      DATA t81 TYPE REF TO zif_lnt_object.
      CLEAR t81.
      DATA t82 TYPE REF TO zif_lnt_object.
      CLEAR t82.
      DATA t83 TYPE REF TO zif_lnt_object.
      CLEAR t83.
      DATA(t84) = t76.
      t83 = t84->value.
      t82 = t83.
      t81 = t82.
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = VALUE abap_bool( ).
      DATA(t88) = abap_false.
      t87 = t88.
      DATA t89 TYPE REF TO cx_root.
      CLEAR t89.
      TRY.
          DATA(t90) = VALUE abap_bool( ).
          DATA(t91) = t81.
          DATA t92 TYPE REF TO zif_lnt_object.
          CLEAR t92.
          DATA t93 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t93.
          DATA(t94) = t1.
          DATA t95 TYPE REF TO object.
          CLEAR t95.
          t95 = t94.
          t93 ?= t95.
          t92 ?= t93.
          DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t96.
          DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t97.
          CLEAR t96.
          IF t91 IS BOUND.
            DATA t98 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t98.
            DATA t99 TYPE REF TO object.
            CLEAR t99.
            CLEAR t98.
            t99 = t91.
            TRY.
                t96 ?= t99.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t96 IS NOT BOUND.
              TRY.
                  t98 ?= t91.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t98 IS BOUND.
                t96 = t98->source( ).
              ENDIF.
              IF t96 IS NOT BOUND.
                CREATE OBJECT t96.
                t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t96->oval = t91.
              ENDIF.
            ENDIF.
          ENDIF.
          CLEAR t97.
          IF t92 IS BOUND.
            DATA t100 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t100.
            DATA t101 TYPE REF TO object.
            CLEAR t101.
            CLEAR t100.
            t101 = t92.
            TRY.
                t97 ?= t101.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t97 IS NOT BOUND.
              TRY.
                  t100 ?= t92.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t100 IS BOUND.
                t97 = t100->source( ).
              ENDIF.
              IF t97 IS NOT BOUND.
                CREATE OBJECT t97.
                t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t97->oval = t92.
              ENDIF.
            ENDIF.
          ENDIF.
          IF t96 IS BOUND.
            t90 = t96->strict_equals( t97 ).
          ELSE.
            t90 = xsdbool( t97 IS NOT BOUND ).
          ENDIF.
          t86 = t90.
          DATA(t102) = abap_true.
          t87 = t102.
        CATCH cx_root INTO t89.
          DATA(t103) = VALUE abap_bool( ).
          DATA(t104) = t87.
          t103 = xsdbool( t104 = abap_false ).
          IF t103 = abap_true.
            DATA(t105) = t71.
            t105->close( ).
          ENDIF.
          RAISE EXCEPTION t89.
      ENDTRY.
      DATA(t106) = VALUE abap_bool( ).
      DATA(t107) = t87.
      t106 = xsdbool( t107 = abap_false ).
      IF t106 = abap_true.
        DATA(t108) = t71.
        t108->close( ).
      ENDIF.
      DATA(t109) = t86.
      t85 = t109.
      IF t85 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t110) = VALUE abap_bool( ).
        DATA(t111) = VALUE abap_bool( ).
        DATA(t112) = VALUE abap_bool( ).
        DATA(t113) = abap_false.
        t112 = t113.
        DATA t114 TYPE REF TO cx_root.
        CLEAR t114.
        TRY.
            DATA(t115) = VALUE abap_bool( ).
            DATA(t116) = t81.
            t115 = xsdbool( t116 IS BOUND AND t116 IS INSTANCE OF zcl_lnt_abap_object ).
            t111 = t115.
            DATA(t117) = abap_true.
            t112 = t117.
          CATCH cx_root INTO t114.
            DATA(t118) = VALUE abap_bool( ).
            DATA(t119) = t112.
            t118 = xsdbool( t119 = abap_false ).
            IF t118 = abap_true.
              DATA(t120) = t71.
              t120->close( ).
            ENDIF.
            RAISE EXCEPTION t114.
        ENDTRY.
        DATA(t121) = VALUE abap_bool( ).
        DATA(t122) = t112.
        t121 = xsdbool( t122 = abap_false ).
        IF t121 = abap_true.
          DATA(t123) = t71.
          t123->close( ).
        ENDIF.
        DATA(t124) = t111.
        t110 = t124.
        IF t110 = abap_true.
          DATA(t125) = VALUE abap_bool( ).
          DATA(t126) = VALUE abap_bool( ).
          DATA(t127) = VALUE abap_bool( ).
          DATA(t128) = abap_false.
          t127 = t128.
          DATA t129 TYPE REF TO cx_root.
          CLEAR t129.
          TRY.
              DATA(t130) = VALUE abap_bool( ).
              DATA(t131) = me->reg.
              DATA t132 TYPE REF TO zcl_lnt_abap_object.
              CLEAR t132.
              DATA(t133) = t81.
              DATA t134 TYPE REF TO object.
              CLEAR t134.
              t134 = t133.
              t132 ?= t134.
              t130 = t131->is_dependency( i_obj_1ed0 = t132 ).
              t126 = t130.
              DATA(t135) = abap_true.
              t127 = t135.
            CATCH cx_root INTO t129.
              DATA(t136) = VALUE abap_bool( ).
              DATA(t137) = t127.
              t136 = xsdbool( t137 = abap_false ).
              IF t136 = abap_true.
                DATA(t138) = t71.
                t138->close( ).
              ENDIF.
              RAISE EXCEPTION t129.
          ENDTRY.
          DATA(t139) = VALUE abap_bool( ).
          DATA(t140) = t127.
          t139 = xsdbool( t140 = abap_false ).
          IF t139 = abap_true.
            DATA(t141) = t71.
            t141->close( ).
          ENDIF.
          DATA(t142) = t126.
          t125 = t142.
          IF t125 = abap_true.
            CONTINUE.
          ENDIF.
          DATA t143 TYPE REF TO zcl_lnt_isyntax_result.
          CLEAR t143.
          DATA t144 TYPE REF TO zcl_lnt_isyntax_result.
          CLEAR t144.
          DATA t145 TYPE REF TO zcl_lnt_isyntax_result.
          CLEAR t145.
          DATA(t146) = VALUE abap_bool( ).
          DATA(t147) = abap_false.
          t146 = t147.
          DATA t148 TYPE REF TO cx_root.
          CLEAR t148.
          TRY.
              DATA t149 TYPE REF TO zcl_lnt_isyntax_result.
              CLEAR t149.
              DATA t150 TYPE REF TO zcl_lnt_syntax_logic.
              CLEAR t150.
              DATA(t151) = me->reg.
              DATA t152 TYPE REF TO zcl_lnt_abap_object.
              CLEAR t152.
              DATA(t153) = t81.
              DATA t154 TYPE REF TO object.
              CLEAR t154.
              t154 = t153.
              t152 ?= t154.
              t150 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t151 i_object_19cd = t152 ).
              t149 = t150->run( ).
              t145 = t149.
              DATA(t155) = abap_true.
              t146 = t155.
            CATCH cx_root INTO t148.
              DATA(t156) = VALUE abap_bool( ).
              DATA(t157) = t146.
              t156 = xsdbool( t157 = abap_false ).
              IF t156 = abap_true.
                DATA(t158) = t71.
                t158->close( ).
              ENDIF.
              RAISE EXCEPTION t148.
          ENDTRY.
          DATA(t159) = VALUE abap_bool( ).
          DATA(t160) = t146.
          t159 = xsdbool( t160 = abap_false ).
          IF t159 = abap_true.
            DATA(t161) = t71.
            t161->close( ).
          ENDIF.
          DATA(t162) = t145.
          t144 = t162.
          t143 = t144.
          DATA(t163) = VALUE abap_bool( ).
          DATA(t164) = abap_false.
          t163 = t164.
          DATA t165 TYPE REF TO cx_root.
          CLEAR t165.
          TRY.
              DATA t166 TYPE REF TO zif_lnt_spaghetti_scope_node.
              CLEAR t166.
              DATA t167 TYPE REF TO zif_lnt_spaghetti_scope.
              CLEAR t167.
              DATA(t168) = t143.
              t167 = t168->zlnt_view_read_sr_b6b1d9e0c93e( ).
              t166 = t167->get_top( ).
              DATA t169 TYPE REF TO zcl_lnt_abap_object.
              CLEAR t169.
              DATA(t170) = t81.
              DATA t171 TYPE REF TO object.
              CLEAR t171.
              t171 = t170.
              t169 ?= t171.
              DATA(t172) = abap_false.
              me->traverse( i_node = t166 i_obj_1ed0 = t169 i_add_81da = t172 ).
              DATA(t173) = abap_true.
              t163 = t173.
            CATCH cx_root INTO t165.
              DATA(t174) = VALUE abap_bool( ).
              DATA(t175) = t163.
              t174 = xsdbool( t175 = abap_false ).
              IF t174 = abap_true.
                DATA(t176) = t71.
                t176->close( ).
              ENDIF.
              RAISE EXCEPTION t165.
          ENDTRY.
          DATA(t177) = VALUE abap_bool( ).
          DATA(t178) = t163.
          t177 = xsdbool( t178 = abap_false ).
          IF t177 = abap_true.
            DATA(t179) = t71.
            t179->close( ).
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t180) = VALUE abap_bool( ).
      DATA(t181) = VALUE abap_bool( ).
      DATA(t182) = VALUE abap_bool( ).
      DATA(t183) = abap_false.
      t182 = t183.
      DATA t184 TYPE REF TO cx_root.
      CLEAR t184.
      TRY.
          DATA(t185) = VALUE abap_bool( ).
          DATA(t186) = VALUE f( ).
          DATA t187 TYPE REF TO zcl_lnt_rl_unused_types_wrk_ar.
          CLEAR t187.
          DATA(t188) = me->workarea.
          t187 = t188.
          DATA(t189) = VALUE f( ).
          DATA(t190) = VALUE i( ).
          DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t191.
          DATA(t192) = t187.
          t191 = t192->workarea.
          t191->load( ).
          t190 = lines( t191->items ).
          t189 = t190.
          t186 = t189.
          DATA(t193) = CONV f( 0 ).
          t185 = xsdbool( t186 = t193 ).
          t181 = t185.
          DATA(t194) = abap_true.
          t182 = t194.
        CATCH cx_root INTO t184.
          DATA(t195) = VALUE abap_bool( ).
          DATA(t196) = t182.
          t195 = xsdbool( t196 = abap_false ).
          IF t195 = abap_true.
            DATA(t197) = t71.
            t197->close( ).
          ENDIF.
          RAISE EXCEPTION t184.
      ENDTRY.
      DATA(t198) = VALUE abap_bool( ).
      DATA(t199) = t182.
      t198 = xsdbool( t199 = abap_false ).
      IF t198 = abap_true.
        DATA(t200) = t71.
        t200->close( ).
      ENDIF.
      DATA(t201) = t181.
      t180 = t201.
      IF t180 = abap_true.
        DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t202.
        DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t203.
        DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t204.
        DATA(t205) = VALUE abap_bool( ).
        DATA(t206) = abap_false.
        t205 = t206.
        DATA t207 TYPE REF TO cx_root.
        CLEAR t207.
        TRY.
            DATA t208 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t208.
            CREATE OBJECT t208.
            t204 = t208.
            DATA(t209) = abap_true.
            t205 = t209.
          CATCH cx_root INTO t207.
            DATA(t210) = VALUE abap_bool( ).
            DATA(t211) = t205.
            t210 = xsdbool( t211 = abap_false ).
            IF t210 = abap_true.
              DATA(t212) = t71.
              t212->close( ).
            ENDIF.
            RAISE EXCEPTION t207.
        ENDTRY.
        DATA(t213) = VALUE abap_bool( ).
        DATA(t214) = t205.
        t213 = xsdbool( t214 = abap_false ).
        IF t213 = abap_true.
          DATA(t215) = t71.
          t215->close( ).
        ENDIF.
        DATA(t216) = t204.
        t203 = t216.
        t202 = t203.
        DATA(t217) = t71.
        t217->close( ).
        DATA(t218) = t202.
        result = t218.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t219.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t220.
    CREATE OBJECT t220.
    t219 = t220.
    DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t221.
    DATA t222 TYPE REF TO zcl_lnt_rl_unused_types_wrk_ar.
    CLEAR t222.
    DATA(t223) = me->workarea.
    t222 = t223.
    DATA t224 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t224.
    DATA(t225) = t222.
    t224 = t225->workarea.
    t221 = t224.
    DATA t226 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t226.
    DATA t227 TYPE REF TO object.
    CLEAR t227.
    DATA(t228) = VALUE i( ).
    DO.
      t221->load( ).
      IF t228 >= lines( t221->items ).
        EXIT.
      ENDIF.
      CLEAR t227.
      READ TABLE t221->items INDEX t228 + 1 INTO t227.
      t228 = t228 + 1.
      DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t229.
      CLEAR t226.
      IF t227 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t229 ?= t227.
        DATA t230 TYPE REF TO object.
        CLEAR t230.
        t230 = t229->as_ref( ).
        t226 ?= t230.
      ELSE.
        t226 ?= t227.
      ENDIF.
      DATA(t231) = VALUE string( ).
      DATA(t232) = VALUE string( ).
      DATA(t233) = VALUE string( ).
      DATA(t234) = |Type "|.
      DATA(t235) = VALUE string( ).
      DATA t236 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t236.
      DATA(t237) = t226.
      t236 = t237.
      DATA(t238) = VALUE string( ).
      DATA(t239) = VALUE string( ).
      DATA(t240) = VALUE string( ).
      DATA t241 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t241.
      DATA t242 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t242.
      DATA(t243) = t236.
      t242 = t243->token.
      t241 = t242.
      DATA(t244) = VALUE string( ).
      DATA(t245) = t241.
      t244 = t245->str.
      t240 = t244.
      t239 = t240.
      DATA(t246) = VALUE abap_bool( ).
      DATA(t247) = VALUE string( ).
      DATA(t248) = t239.
      DATA(t249) = 0.
      DATA(t250) = 1.
      DATA(t251) = strlen( t248 ).
      IF t249 < 0.
        t249 = t249 + t251.
        IF t249 < 0.
          t249 = 0.
        ENDIF.
      ENDIF.
      IF t249 > t251 OR t250 <= 0.
        CLEAR t247.
      ELSE.
        IF t250 > t251 - t249.
          t250 = t251 - t249.
        ENDIF.
        t247 = t248+t249(t250).
      ENDIF.
      DATA(t252) = |!|.
      t246 = xsdbool( t247 = t252 ).
      IF t246 = abap_true.
        DATA(t253) = VALUE string( ).
        DATA(t254) = VALUE string( ).
        DATA(t255) = t239.
        t254 = t255.
        DATA(t256) = VALUE string( ).
        DATA(t257) = t254.
        DATA(t258) = 1.
        DATA(t259) = VALUE i( ).
        DATA(t260) = t254.
        DATA(t261) = strlen( t260 ).
        t259 = t261.
        DATA(t262) = strlen( t257 ).
        IF t258 < 0.
          t258 = t258 + t262.
          IF t258 < 0.
            t258 = 0.
          ENDIF.
        ENDIF.
        IF t258 > t262 OR t259 <= 0.
          CLEAR t256.
        ELSE.
          IF t259 > t262 - t258.
            t259 = t262 - t258.
          ENDIF.
          t256 = t257+t258(t259).
        ENDIF.
        t253 = t256.
        t239 = t253.
      ENDIF.
      DATA(t263) = t239.
      t238 = t263.
      t235 = t238.
      DATA(t264) = strlen( t234 ).
      t233 = |{ t234 }{ t235 }|.
      DATA(t265) = |" not used|.
      DATA(t266) = strlen( t233 ).
      t232 = |{ t233 }{ t265 }|.
      t231 = t232.
      DATA t267 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t267.
      DATA t268 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t268.
      DATA t269 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t269.
      DATA(t270) = t1.
      DATA t271 TYPE REF TO object.
      CLEAR t271.
      t271 = t270.
      t269 ?= t271.
      DATA(t272) = VALUE string( ).
      DATA t273 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t273.
      DATA(t274) = t226.
      t273 = t274.
      DATA(t275) = VALUE string( ).
      DATA(t276) = t273.
      t275 = t276->filename.
      t272 = t275.
      t268 = t269->get_abap_file_by_name( i_filename = t272 ).
      t267 = t268.
      DATA(t277) = VALUE abap_bool( ).
      DATA t278 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t278.
      DATA(t279) = t267.
      t278 = t279.
      DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t280.
      DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t281.
      t280 = t281.
      DATA(t282) = VALUE abap_bool( ).
      DATA(t283) = t278.
      IF t283 IS INITIAL.
        t282 = abap_true.
      ENDIF.
      t277 = t282.
      IF t277 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t284 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t284.
      DATA t285 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t285.
      DATA t286 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t286.
      DATA t287 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t287.
      DATA(t288) = t226.
      t287 = t288.
      DATA t289 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t289.
      DATA(t290) = t287.
      t289 = t290->token.
      t286 = t289.
      DATA t291 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t291.
      DATA(t292) = abap_true.
      IF t292 = abap_true.
        DATA t293 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t293.
        DATA(t294) = t267.
        t293 = t294.
        t291 = t293.
      ELSE.
        DATA t295 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t295.
        t291 = t295.
      ENDIF.
      t285 = zcl_lnt_edit_helper=>find_statement( i_token = t286 i_file = t291 ).
      t284 = t285.
      DATA(t296) = VALUE abap_bool( ).
      DATA t297 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t297.
      DATA(t298) = t284.
      t297 = t298.
      DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t299.
      DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t300.
      t299 = t300.
      DATA(t301) = VALUE abap_bool( ).
      DATA(t302) = t297.
      IF t302 IS INITIAL.
        t301 = abap_true.
      ENDIF.
      t296 = t301.
      IF t296 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t303) = VALUE abap_bool( ).
      DATA(t304) = VALUE abap_bool( ).
      DATA(t305) = abap_false.
      t304 = t305.
      DATA t306 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t306.
      DATA t307 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t307.
      DATA t308 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t308.
      DATA(t309) = t284.
      t308 = t309.
      t307 = t308.
      DATA t310 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t310.
      DATA(t311) = t307.
      t310 = t311->pragmas.
      t306 = t310.
      DATA t312 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t312.
      DATA t313 TYPE REF TO object.
      CLEAR t313.
      DATA(t314) = VALUE i( ).
      DO.
        t306->load( ).
        IF t314 >= lines( t306->items ).
          EXIT.
        ENDIF.
        CLEAR t313.
        READ TABLE t306->items INDEX t314 + 1 INTO t313.
        t314 = t314 + 1.
        DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t315.
        CLEAR t312.
        IF t313 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t315 ?= t313.
          DATA t316 TYPE REF TO object.
          CLEAR t316.
          t316 = t315->as_ref( ).
          t312 ?= t316.
        ELSE.
          t312 ?= t313.
        ENDIF.
        DATA(t317) = VALUE abap_bool( ).
        DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t318.
        DATA(t319) = abap_true.
        IF t319 = abap_true.
          DATA(t320) = VALUE string( ).
          DATA t321 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t321.
          DATA(t322) = t312.
          t321 = t322.
          DATA(t323) = VALUE string( ).
          DATA(t324) = t321.
          t323 = t324->str.
          t320 = t323.
          DATA(t325) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t325->has = abap_true.
          t325->value = t320.
          t318 = t325.
        ELSE.
          DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t326.
          t318 = t326.
        ENDIF.
        DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t327.
        DATA t328 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t328.
        DATA(t329) = VALUE string( ).
        DATA(t330) = |unused_types|.
        t329 = t330.
        DATA(t331) = VALUE string( ).
        DATA(t332) = |Unused types|.
        t331 = t332.
        DATA(t333) = VALUE string( ).
        DATA(t334) = |Checks for unused TYPE definitions|.
        t333 = t334.
        DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t335.
        DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t336.
        DATA(t337) = abap_true.
        IF t337 = abap_true.
          DATA(t338) = |Unused types are not reported if the object contains parser |.
          t338 = t338 && |or syntax errors.|.
          DATA(t339) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t339->has = abap_true.
          t339->value = t338.
          t336 = t339.
        ELSE.
          DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t340.
          t336 = t340.
        ENDIF.
        t335 = t336.
        DATA t341 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t341.
        DATA t342 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t342.
        DATA(t343) = abap_true.
        IF t343 = abap_true.
          DATA t344 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t344.
          DATA t345 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t345.
          DATA t346 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t346.
          CREATE OBJECT t346.
          t345 = t346.
          DATA(t347) = t345.
          DATA(t348) = |Quickfix|.
          t347->load( ).
          APPEND t348 TO t347->items.
          t347->save( ).
          DATA(t349) = t345.
          t344 = t349.
          t342 = t344.
        ELSE.
          DATA t350 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t350.
          t342 = t350.
        ENDIF.
        t341 = t342.
        DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t351.
        DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t352.
        DATA(t353) = abap_true.
        IF t353 = abap_true.
          DATA(t354) = |##NEEDED|.
          DATA(t355) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t355->has = abap_true.
          t355->value = t354.
          t352 = t355.
        ELSE.
          DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t356.
          t352 = t356.
        ENDIF.
        t351 = t352.
        DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t357.
        DATA t358 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t358.
        DATA(t359) = abap_true.
        IF t359 = abap_true.
          DATA(t360) = |EC NEEDED|.
          DATA(t361) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t361->has = abap_true.
          t361->value = t360.
          t358 = t361.
        ELSE.
          DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t362.
          t358 = t362.
        ENDIF.
        t357 = t358.
        DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t363.
        DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t364.
        t363 = t364.
        DATA t365 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t365.
        DATA t366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t366.
        t365 = t366.
        t328 = NEW zcl_lnt_irule_metadata( i_key = t329 i_title = t331 i_short_description = t333 i_bad_example = t363 i_good_example = t365 i_extended_information = t335 i_tags = t341 i_pragma = t351 i_pseudo_comment = t357 ).
        CREATE OBJECT t328->zlnt_view_ownkeys_b0e8086400eb.
        t328->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t367.
        IF t328->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t328->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t367 ).
        ENDIF.
        DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t368.
        IF t328->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t328->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t368 ).
        ENDIF.
        DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t369.
        IF t328->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t328->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t369 ).
        ENDIF.
        DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t370.
        IF t328->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t328->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t370 ).
        ENDIF.
        DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t371.
        IF t328->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t328->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t371 ).
        ENDIF.
        DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t372.
        IF t328->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t328->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t372 ).
        ENDIF.
        DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t373.
        IF t328->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t328->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t373 ).
        ENDIF.
        CREATE OBJECT t328->zlnt_json_ownkeys_70e5fd461788.
        t328->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t374) = |key|.
        DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t375.
        IF t328->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t328->zlnt_json_ownkeys_70e5fd461788->put( p0 = t374 p1 = t375 ).
        ENDIF.
        DATA(t376) = |title|.
        DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t377.
        IF t328->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t328->zlnt_json_ownkeys_70e5fd461788->put( p0 = t376 p1 = t377 ).
        ENDIF.
        DATA(t378) = |shortDescription|.
        DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t379.
        IF t328->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t328->zlnt_json_ownkeys_70e5fd461788->put( p0 = t378 p1 = t379 ).
        ENDIF.
        DATA(t380) = |extendedInformation|.
        DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t381.
        IF t328->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t328->zlnt_json_ownkeys_70e5fd461788->put( p0 = t380 p1 = t381 ).
        ENDIF.
        DATA(t382) = |tags|.
        DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t383.
        IF t328->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t328->zlnt_json_ownkeys_70e5fd461788->put( p0 = t382 p1 = t383 ).
        ENDIF.
        DATA(t384) = |pragma|.
        DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t385.
        IF t328->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t328->zlnt_json_ownkeys_70e5fd461788->put( p0 = t384 p1 = t385 ).
        ENDIF.
        DATA(t386) = |pseudoComment|.
        DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t387.
        IF t328->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t328->zlnt_json_ownkeys_70e5fd461788->put( p0 = t386 p1 = t387 ).
        ENDIF.
        t327 = t328->pragma.
        DATA(t388) = VALUE abap_bool( ).
        DATA(t389) = VALUE abap_bool( ).
        IF t318 IS BOUND.
          t388 = t318->has.
        ENDIF.
        IF t327 IS BOUND.
          t389 = t327->has.
        ENDIF.
        IF t388 = t389.
          IF t388 = abap_false.
            t317 = abap_true.
          ELSEIF t318->value = t327->value.
            t317 = abap_true.
          ENDIF.
        ENDIF.
        IF t317 = abap_true.
          DATA(t390) = abap_true.
          t304 = t390.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t391) = t304.
      t303 = t391.
      IF t303 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t392) = VALUE abap_bool( ).
        DATA t393 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t393.
        DATA(t394) = abap_true.
        IF t394 = abap_true.
          DATA t395 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t395.
          DATA(t396) = t284.
          t395 = t396.
          t393 = t395.
        ELSE.
          DATA t397 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t397.
          t393 = t397.
        ENDIF.
        DATA t398 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t398.
        DATA(t399) = t267.
        t398 = t399.
        t392 = me->suppressedby_pseudo( i_statement = t393 i_file = t398 ).
        IF t392 = abap_true.
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA t400 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t400.
      DATA t401 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t401.
      DATA t402 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t402.
      DATA t403 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t403.
      DATA(t404) = t267.
      t403 = t404.
      t402 = t403.
      DATA t405 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t405.
      DATA t406 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t406.
      DATA(t407) = t284.
      t406 = t407.
      t405 = t406.
      DATA t408 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t408.
      DATA(t409) = VALUE abap_bool( ).
      DATA(t410) = VALUE i( ).
      DATA(t411) = VALUE string( ).
      DATA(t412) = VALUE string( ).
      DATA(t413) = t405.
      t412 = t413->concat_tokens( ).
      DATA(t414) = strlen( t412 ).
      t411 = t412.
      IF t411 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t411 TO UPPER CASE.
      ELSE.
        t411 = zlnt_runtime_uppe_91169605024d=>full( t411 ).
      ENDIF.
      DATA(t415) = |BEGIN OF|.
      DATA(t416) = strlen( t411 ).
      IF t415 IS INITIAL.
        t410 = 0.
      ELSE.
        FIND t415 IN t411 MATCH OFFSET t410.
        IF sy-subrc <> 0.
          t410 = -1.
        ENDIF.
      ENDIF.
      DATA(t417) = 0.
      t409 = xsdbool( t410 >= t417 ).
      IF t409 = abap_true.
        DATA t418 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t418.
        t408 = t418.
      ELSE.
        DATA t419 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t419.
        DATA(t420) = abap_true.
        IF t420 = abap_true.
          DATA t421 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t421.
          DATA(t422) = t402.
          DATA(t423) = t405.
          t421 = zcl_lnt_edit_helper=>delete_statement( i_file = t422 i_statement = t423 ).
          t419 = t421.
        ELSE.
          DATA t424 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t424.
          t419 = t424.
        ENDIF.
        t408 = t419.
      ENDIF.
      t401 = t408.
      t400 = t401.
      DATA(t425) = t219.
      DATA t426 TYPE REF TO zcl_lnt_issue.
      CLEAR t426.
      DATA(t427) = t226.
      DATA(t428) = t231.
      DATA(t429) = VALUE string( ).
      DATA t430 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t430.
      DATA(t431) = VALUE string( ).
      DATA(t432) = |unused_types|.
      t431 = t432.
      DATA(t433) = VALUE string( ).
      DATA(t434) = |Unused types|.
      t433 = t434.
      DATA(t435) = VALUE string( ).
      DATA(t436) = |Checks for unused TYPE definitions|.
      t435 = t436.
      DATA t437 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t437.
      DATA t438 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t438.
      DATA(t439) = abap_true.
      IF t439 = abap_true.
        DATA(t440) = |Unused types are not reported if the object contains parser |.
        t440 = t440 && |or syntax errors.|.
        DATA(t441) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t441->has = abap_true.
        t441->value = t440.
        t438 = t441.
      ELSE.
        DATA t442 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t442.
        t438 = t442.
      ENDIF.
      t437 = t438.
      DATA t443 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t443.
      DATA t444 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t444.
      DATA(t445) = abap_true.
      IF t445 = abap_true.
        DATA t446 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t446.
        DATA t447 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t447.
        DATA t448 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t448.
        CREATE OBJECT t448.
        t447 = t448.
        DATA(t449) = t447.
        DATA(t450) = |Quickfix|.
        t449->load( ).
        APPEND t450 TO t449->items.
        t449->save( ).
        DATA(t451) = t447.
        t446 = t451.
        t444 = t446.
      ELSE.
        DATA t452 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t452.
        t444 = t452.
      ENDIF.
      t443 = t444.
      DATA t453 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t453.
      DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t454.
      DATA(t455) = abap_true.
      IF t455 = abap_true.
        DATA(t456) = |##NEEDED|.
        DATA(t457) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t457->has = abap_true.
        t457->value = t456.
        t454 = t457.
      ELSE.
        DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t458.
        t454 = t458.
      ENDIF.
      t453 = t454.
      DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t459.
      DATA t460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t460.
      DATA(t461) = abap_true.
      IF t461 = abap_true.
        DATA(t462) = |EC NEEDED|.
        DATA(t463) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t463->has = abap_true.
        t463->value = t462.
        t460 = t463.
      ELSE.
        DATA t464 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t464.
        t460 = t464.
      ENDIF.
      t459 = t460.
      DATA t465 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t465.
      DATA t466 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t466.
      t465 = t466.
      DATA t467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t467.
      DATA t468 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t468.
      t467 = t468.
      t430 = NEW zcl_lnt_irule_metadata( i_key = t431 i_title = t433 i_short_description = t435 i_bad_example = t465 i_good_example = t467 i_extended_information = t437 i_tags = t443 i_pragma = t453 i_pseudo_comment = t459 ).
      CREATE OBJECT t430->zlnt_view_ownkeys_b0e8086400eb.
      t430->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t469.
      IF t430->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t430->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t469 ).
      ENDIF.
      DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t470.
      IF t430->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t430->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t470 ).
      ENDIF.
      DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t471.
      IF t430->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t430->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t471 ).
      ENDIF.
      DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t472.
      IF t430->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t430->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t472 ).
      ENDIF.
      DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t473.
      IF t430->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t430->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t473 ).
      ENDIF.
      DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t474.
      IF t430->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t430->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t474 ).
      ENDIF.
      DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t475.
      IF t430->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t430->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t475 ).
      ENDIF.
      CREATE OBJECT t430->zlnt_json_ownkeys_70e5fd461788.
      t430->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t476) = |key|.
      DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t477.
      IF t430->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t430->zlnt_json_ownkeys_70e5fd461788->put( p0 = t476 p1 = t477 ).
      ENDIF.
      DATA(t478) = |title|.
      DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t479.
      IF t430->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t430->zlnt_json_ownkeys_70e5fd461788->put( p0 = t478 p1 = t479 ).
      ENDIF.
      DATA(t480) = |shortDescription|.
      DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t481.
      IF t430->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t430->zlnt_json_ownkeys_70e5fd461788->put( p0 = t480 p1 = t481 ).
      ENDIF.
      DATA(t482) = |extendedInformation|.
      DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t483.
      IF t430->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t430->zlnt_json_ownkeys_70e5fd461788->put( p0 = t482 p1 = t483 ).
      ENDIF.
      DATA(t484) = |tags|.
      DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t485.
      IF t430->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t430->zlnt_json_ownkeys_70e5fd461788->put( p0 = t484 p1 = t485 ).
      ENDIF.
      DATA(t486) = |pragma|.
      DATA t487 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t487.
      IF t430->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t430->zlnt_json_ownkeys_70e5fd461788->put( p0 = t486 p1 = t487 ).
      ENDIF.
      DATA(t488) = |pseudoComment|.
      DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t489.
      IF t430->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t430->zlnt_json_ownkeys_70e5fd461788->put( p0 = t488 p1 = t489 ).
      ENDIF.
      t429 = t430->key.
      DATA t490 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t490.
      DATA(t491) = me->conf.
      t490 = t491->zlnt_view_read_sr_15c06369f827( ).
      DATA(t492) = t400.
      t426 = zcl_lnt_issue=>at_identifier( i_identifier = t427 i_message_26cb = t428 i_key = t429 i_severity = t490 i_fix = t492 ).
      t425->load( ).
      APPEND t426 TO t425->items.
      t425->save( ).
    ENDDO.
    DATA(t493) = t219.
    result = t493.

  ENDMETHOD.

  METHOD suppressedby_pseudo.
    DATA(t1) = i_statement.
    DATA(t2) = i_file.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t4.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      DATA(t10) = abap_false.
      result = t10.
      RETURN.
    ENDIF.
    DATA(t11) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t12.
    DATA(t13) = t2.
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    t14 = t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t12.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    t11 = t16.
    IF t11 = abap_true.
      DATA(t18) = abap_false.
      result = t18.
      RETURN.
    ENDIF.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = abap_false.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t21.
    DATA t22 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t22.
    DATA(t23) = t2.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t24.
    DATA(t25) = t22.
    t24 = t25->statements.
    t21 = t24.
    DATA t26 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t26.
    DATA t27 TYPE REF TO object.
    CLEAR t27.
    DATA(t28) = VALUE i( ).
    DO.
      t21->load( ).
      IF t28 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t27.
      READ TABLE t21->items INDEX t28 + 1 INTO t27.
      t28 = t28 + 1.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      CLEAR t26.
      IF t27 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t29 ?= t27.
        DATA t30 TYPE REF TO object.
        CLEAR t30.
        t30 = t29->as_ref( ).
        t26 ?= t30.
      ELSE.
        t26 ?= t27.
      ENDIF.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = t19.
      DATA(t34) = abap_true.
      t32 = xsdbool( t33 = t34 ).
      t31 = t32.
      IF t32 = abap_true.
        DATA(t35) = VALUE abap_bool( ).
        DATA t36 TYPE REF TO zif_lnt_statement.
        CLEAR t36.
        DATA(t37) = t26.
        t36 = t37->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_st_comment ).
        t31 = t35.
      ENDIF.
      IF t31 = abap_true.
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = VALUE i( ).
        DATA(t40) = VALUE string( ).
        DATA(t41) = t26.
        t40 = t41->concat_tokens( ).
        DATA(t42) = VALUE string( ).
        DATA(t43) = VALUE string( ).
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t44.
        DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t45.
        DATA t46 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t46.
        DATA(t47) = VALUE string( ).
        DATA(t48) = |unused_types|.
        t47 = t48.
        DATA(t49) = VALUE string( ).
        DATA(t50) = |Unused types|.
        t49 = t50.
        DATA(t51) = VALUE string( ).
        DATA(t52) = |Checks for unused TYPE definitions|.
        t51 = t52.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t53.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t54.
        DATA(t55) = abap_true.
        IF t55 = abap_true.
          DATA(t56) = |Unused types are not reported if the object contains parser |.
          t56 = t56 && |or syntax errors.|.
          DATA(t57) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t57->has = abap_true.
          t57->value = t56.
          t54 = t57.
        ELSE.
          DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t58.
          t54 = t58.
        ENDIF.
        t53 = t54.
        DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t59.
        DATA t60 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t60.
        DATA(t61) = abap_true.
        IF t61 = abap_true.
          DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t62.
          DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t63.
          DATA t64 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t64.
          CREATE OBJECT t64.
          t63 = t64.
          DATA(t65) = t63.
          DATA(t66) = |Quickfix|.
          t65->load( ).
          APPEND t66 TO t65->items.
          t65->save( ).
          DATA(t67) = t63.
          t62 = t67.
          t60 = t62.
        ELSE.
          DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t68.
          t60 = t68.
        ENDIF.
        t59 = t60.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t70.
        DATA(t71) = abap_true.
        IF t71 = abap_true.
          DATA(t72) = |##NEEDED|.
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
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t75.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        DATA(t77) = abap_true.
        IF t77 = abap_true.
          DATA(t78) = |EC NEEDED|.
          DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t79->has = abap_true.
          t79->value = t78.
          t76 = t79.
        ELSE.
          DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t80.
          t76 = t80.
        ENDIF.
        t75 = t76.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        t81 = t82.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t83.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t84.
        t83 = t84.
        t46 = NEW zcl_lnt_irule_metadata( i_key = t47 i_title = t49 i_short_description = t51 i_bad_example = t81 i_good_example = t83 i_extended_information = t53 i_tags = t59 i_pragma = t69 i_pseudo_comment = t75 ).
        CREATE OBJECT t46->zlnt_view_ownkeys_b0e8086400eb.
        t46->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t85 ).
        ENDIF.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t86 ).
        ENDIF.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t87 ).
        ENDIF.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t88 ).
        ENDIF.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t89 ).
        ENDIF.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t90 ).
        ENDIF.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t91 ).
        ENDIF.
        CREATE OBJECT t46->zlnt_json_ownkeys_70e5fd461788.
        t46->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t92) = |key|.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t92 p1 = t93 ).
        ENDIF.
        DATA(t94) = |title|.
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
        ENDIF.
        DATA(t96) = |shortDescription|.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t97.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
        ENDIF.
        DATA(t98) = |extendedInformation|.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
        ENDIF.
        DATA(t100) = |tags|.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
        ENDIF.
        DATA(t102) = |pragma|.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t102 p1 = t103 ).
        ENDIF.
        DATA(t104) = |pseudoComment|.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t104 p1 = t105 ).
        ENDIF.
        t45 = t46->pseudo_comment.
        t44 = t45.
        DATA(t106) = VALUE string( ).
        DATA(t107) = VALUE abap_bool( ).
        DATA(t108) = t44.
        IF t108 IS INITIAL.
          t107 = abap_true.
        ELSEIF t108->has = abap_false.
          t107 = abap_true.
        ENDIF.
        IF t107 = abap_true.
          DATA(t109) = |undefined|.
          t106 = t109.
        ELSE.
          DATA(t110) = VALUE string( ).
          DATA(t111) = t44.
          t110 = t111->value.
          t106 = t110.
        ENDIF.
        t43 = t106.
        DATA(t112) = ||.
        DATA(t113) = strlen( t43 ).
        t42 = |{ t43 }{ t112 }|.
        DATA(t114) = strlen( t40 ).
        IF t42 IS INITIAL.
          t39 = 0.
        ELSE.
          FIND t42 IN t40 MATCH OFFSET t39.
          IF sy-subrc <> 0.
            t39 = -1.
          ENDIF.
        ENDIF.
        DATA(t115) = 0.
        t38 = xsdbool( t39 >= t115 ).
        result = t38.
        RETURN.
      ENDIF.
      DATA(t116) = VALUE abap_bool( ).
      DATA(t117) = t26.
      DATA t118 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t118.
      DATA(t119) = t1.
      t118 = t119.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t120.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t121.
      CLEAR t120.
      IF t117 IS BOUND.
        DATA t122 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t122.
        DATA t123 TYPE REF TO object.
        CLEAR t123.
        CLEAR t122.
        t123 = t117.
        TRY.
            t120 ?= t123.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t120 IS NOT BOUND.
          TRY.
              t122 ?= t117.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t122 IS BOUND.
            t120 = t122->source( ).
          ENDIF.
          IF t120 IS NOT BOUND.
            CREATE OBJECT t120.
            t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t120->oval = t117.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t121.
      IF t118 IS BOUND.
        DATA t124 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t124.
        DATA t125 TYPE REF TO object.
        CLEAR t125.
        CLEAR t124.
        t125 = t118.
        TRY.
            t121 ?= t125.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t121 IS NOT BOUND.
          TRY.
              t124 ?= t118.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t124 IS BOUND.
            t121 = t124->source( ).
          ENDIF.
          IF t121 IS NOT BOUND.
            CREATE OBJECT t121.
            t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t121->oval = t118.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t120 IS BOUND.
        t116 = t120->strict_equals( t121 ).
      ELSE.
        t116 = xsdbool( t121 IS NOT BOUND ).
      ENDIF.
      IF t116 = abap_true.
        DATA(t126) = abap_true.
        t19 = t126.
      ENDIF.
    ENDDO.
    DATA(t127) = abap_false.
    result = t127.

  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_node.
    DATA(t2) = i_obj_1ed0.
    DATA(t3) = i_add_81da.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE string.
    DATA t6 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t7) = t1.
    t6 = t7->get_identifier( ).
    t5 = t6->stype.
    DATA(t8) = |_builtin|.
    t4 = xsdbool( t5 <> t8 ).
    IF t4 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t10) = t1.
      DATA(t11) = t2.
      DATA(t12) = t3.
      t9 = me->check_node( i_node = t10 i_obj_1ed0 = t11 i_add_81da = t12 ).
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t14) = t1.
    t13 = t14->get_children( ).
    DATA t15 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t15.
    DATA t16 TYPE REF TO object.
    CLEAR t16.
    DATA(t17) = VALUE i( ).
    DO.
      t13->load( ).
      IF t17 >= lines( t13->items ).
        EXIT.
      ENDIF.
      CLEAR t16.
      READ TABLE t13->items INDEX t17 + 1 INTO t16.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t15.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t16.
        DATA t19 TYPE REF TO object.
        t19 = t18->as_ref( ).
        t15 ?= t19.
      ELSE.
        t15 ?= t16.
      ENDIF.
      DATA(t20) = t15.
      DATA(t21) = t2.
      DATA(t22) = t3.
      me->traverse( i_node = t20 i_obj_1ed0 = t21 i_add_81da = t22 ).
    ENDDO.
  ENDMETHOD.

  METHOD check_node.
    DATA(t1) = i_node.
    DATA(t2) = i_obj_1ed0.
    DATA(t3) = i_add_81da.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE abap_bool.
    DATA(t7) = t3.
    DATA(t8) = abap_true.
    t6 = xsdbool( t7 = t8 ).
    IF t6 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA t10 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA t11 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t12) = t1.
      t11 = t12->get_data( ).
      t10 = t11->types.
      t9 = t10.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t14) = t9.
      t13 = t14->keys( ).
      DATA(t15) = VALUE string( ).
      t13->dense( ).
      DATA(t16) = VALUE i( ).
      DO.
        t13->load( ).
        IF t16 >= lines( t13->items ).
          EXIT.
        ENDIF.
        CLEAR t15.
        READ TABLE t13->items INDEX t16 + 1 INTO t15.
        IF t13->has( t16 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t16 = t16 + 1.
        DATA t17 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t18 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t19) = t9.
        DATA(t20) = t15.
        t18 = t19->get( p0 = t20 ).
        t17 = t18.
        DATA t21 TYPE abap_bool.
        DATA t22 TYPE abap_bool.
        DATA(t23) = t2.
        DATA t24 TYPE string.
        DATA t25 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t26 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t27) = t17.
        t26 = t27.
        t25 = t26.
        DATA t28 TYPE string.
        DATA(t29) = t25.
        t28 = t29->filename.
        t24 = t28.
        t22 = t23->contains_file( i_filename = t24 ).
        DATA(t30) = abap_false.
        t21 = xsdbool( t22 = t30 ).
        IF t21 = abap_true.
          CONTINUE.
        ELSE.
          DATA(t31) = VALUE abap_bool( ).
          DATA t32 TYPE abap_bool.
          DATA t33 TYPE abap_bool.
          DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t35) = me->conf.
          t34 = t35->zlnt_view_read_sr_2667dd143927( ).
          t33 = xsdbool( t34 IS BOUND ).
          t32 = t33.
          IF t33 = abap_true.
            DATA t36 TYPE abap_bool.
            DATA t37 TYPE i.
            DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA(t40) = me->conf.
            t39 = t40->zlnt_view_read_sr_2667dd143927( ).
            t38 = t39.
            t38->load( ).
            t37 = lines( t38->items ).
            DATA(t41) = 0.
            t36 = xsdbool( t37 > t41 ).
            t32 = t36.
          ENDIF.
          t31 = t32.
          IF t32 = abap_true.
            DATA(t42) = VALUE abap_bool( ).
            DATA t43 TYPE abap_bool.
            DATA(t44) = abap_false.
            t43 = t44.
            DATA t45 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t46 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA(t47) = me->conf.
            t46 = t47->zlnt_view_read_sr_2667dd143927( ).
            t45 = t46.
            DATA(t48) = VALUE string( ).
            t45->dense( ).
            DATA(t49) = VALUE i( ).
            DO.
              t45->load( ).
              IF t49 >= lines( t45->items ).
                EXIT.
              ENDIF.
              CLEAR t48.
              READ TABLE t45->items INDEX t49 + 1 INTO t48.
              IF t45->has( t49 ) = abap_false.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t49 = t49 + 1.
              DATA(t50) = VALUE abap_bool( ).
              DATA t51 TYPE string.
              DATA(t52) = t48.
              DATA(t53) = strlen( t52 ).
              t51 = t52.
              IF t51 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t51 TO UPPER CASE.
              ELSE.
                t51 = zlnt_runtime_uppe_91169605024d=>full( t51 ).
              ENDIF.
              DATA(t54) = t15.
              t50 = xsdbool( t51 = t54 ).
              IF t50 = abap_true.
                DATA(t55) = abap_true.
                t43 = t55.
                EXIT.
              ENDIF.
            ENDDO.
            DATA(t56) = t43.
            t42 = t56.
            t31 = t42.
          ENDIF.
          IF t31 = abap_true.
            CONTINUE.
          ELSE.
            DATA(t57) = VALUE abap_bool( ).
            DATA(t58) = t15.
            DATA(t59) = VALUE string( ).
            DATA(t60) = VALUE string( ).
            DATA t61 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t62 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t63) = t17.
            t62 = t63.
            t61 = t62.
            DATA(t64) = VALUE string( ).
            DATA t65 TYPE string.
            DATA t66 TYPE string.
            DATA t67 TYPE REF TO zcl_lnt_abstract_token.
            DATA t68 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t69) = t61.
            t68 = t69->token.
            t67 = t68.
            DATA t70 TYPE string.
            DATA(t71) = t67.
            t70 = t71->str.
            t66 = t70.
            t65 = t66.
            DATA(t72) = VALUE abap_bool( ).
            DATA(t73) = VALUE string( ).
            DATA(t74) = t65.
            DATA(t75) = 0.
            DATA(t76) = 1.
            DATA(t77) = strlen( t74 ).
            IF t75 < 0.
              t75 = t75 + t77.
              IF t75 < 0.
                t75 = 0.
              ENDIF.
            ENDIF.
            IF t75 > t77 OR t76 <= 0.
              CLEAR t73.
            ELSE.
              IF t76 > t77 - t75.
                t76 = t77 - t75.
              ENDIF.
              t73 = t74+t75(t76).
            ENDIF.
            DATA(t78) = |!|.
            t72 = xsdbool( t73 = t78 ).
            IF t72 = abap_true.
              DATA(t79) = VALUE string( ).
              DATA t80 TYPE string.
              DATA(t81) = t65.
              t80 = t81.
              DATA(t82) = VALUE string( ).
              DATA(t83) = t80.
              DATA(t84) = 1.
              DATA t85 TYPE i.
              DATA(t86) = t80.
              DATA(t87) = strlen( t86 ).
              t85 = t87.
              DATA(t88) = strlen( t83 ).
              IF t84 < 0.
                t84 = t84 + t88.
                IF t84 < 0.
                  t84 = 0.
                ENDIF.
              ENDIF.
              IF t84 > t88 OR t85 <= 0.
                CLEAR t82.
              ELSE.
                IF t85 > t88 - t84.
                  t85 = t88 - t84.
                ENDIF.
                t82 = t83+t84(t85).
              ENDIF.
              t79 = t82.
              t65 = t79.
            ENDIF.
            DATA(t89) = t65.
            t64 = t89.
            t60 = t64.
            DATA(t90) = strlen( t60 ).
            t59 = t60.
            IF t59 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t59 TO UPPER CASE.
            ELSE.
              t59 = zlnt_runtime_uppe_91169605024d=>full( t59 ).
            ENDIF.
            t57 = xsdbool( t58 <> t59 ).
            IF t57 = abap_true.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA(t91) = me->workarea.
        DATA t92 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t93) = t17.
        t92 = t93.
        t91->push( i_id = t92 ).
      ENDDO.
    ENDIF.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t95 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t96) = t1.
    t95 = t96->get_data( ).
    t94 = t95->references.
    DATA t97 TYPE REF TO zcl_lnt_ireference.
    CLEAR t97.
    DATA t98 TYPE REF TO object.
    CLEAR t98.
    DATA(t99) = VALUE i( ).
    DO.
      t94->load( ).
      IF t99 >= lines( t94->items ).
        EXIT.
      ENDIF.
      CLEAR t98.
      READ TABLE t94->items INDEX t99 + 1 INTO t98.
      t99 = t99 + 1.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t100.
      CLEAR t97.
      IF t98 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t100 ?= t98.
        DATA t101 TYPE REF TO object.
        t101 = t100->as_ref( ).
        t97 ?= t101.
      ELSE.
        t97 ?= t98.
      ENDIF.
      DATA t102 TYPE abap_bool.
      DATA t103 TYPE abap_bool.
      DATA t104 TYPE string.
      DATA(t105) = t97.
      t104 = t105->reference_type.
      DATA(t106) = |Type|.
      t103 = xsdbool( t104 = t106 ).
      t102 = t103.
      IF t103 = abap_true.
        DATA t107 TYPE abap_bool.
        DATA t108 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t109) = t97.
        t108 = t109->resolved.
        t107 = xsdbool( t108 IS BOUND ).
        t102 = t107.
      ENDIF.
      IF t102 = abap_true.
        DATA(t110) = me->workarea.
        DATA t111 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t112 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t113) = t97.
        t112 = t113->resolved.
        t111 = t112.
        t110->remove_if_exists( i_id = t111 ).
      ENDIF.
    ENDDO.
    DATA(t114) = t4.
    result = t114.

  ENDMETHOD.

  METHOD build_fix.
    DATA(t1) = i_file.
    DATA(t2) = i_statement.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE i( ).
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    DATA(t7) = t2.
    t6 = t7->concat_tokens( ).
    DATA(t8) = strlen( t6 ).
    t5 = t6.
    IF t5 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t5 TO UPPER CASE.
    ELSE.
      t5 = zlnt_runtime_uppe_91169605024d=>full( t5 ).
    ENDIF.
    DATA(t9) = |BEGIN OF|.
    DATA(t10) = strlen( t5 ).
    IF t9 IS INITIAL.
      t4 = 0.
    ELSE.
      FIND t9 IN t5 MATCH OFFSET t4.
      IF sy-subrc <> 0.
        t4 = -1.
      ENDIF.
    ENDIF.
    DATA(t11) = 0.
    t3 = xsdbool( t4 >= t11 ).
    IF t3 = abap_true.
      DATA t12 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t12.
      result = t12.
      RETURN.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t13.
    DATA(t14) = abap_true.
    IF t14 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t16) = t1.
      DATA(t17) = t2.
      t15 = zcl_lnt_edit_helper=>delete_statement( i_file = t16 i_statement = t17 ).
      t13 = t15.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t18.
      t13 = t18.
    ENDIF.
    result = t13.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_unused_types_conf( me->g_c_i_s_rl_un_ty_ts_un_ty_fb96( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unused_types_conf( me->g_c_i_s_rl_un_ty_ts_un_ty_fb96( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_unused_types_conf.
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
        t2 = NEW zcl_lnt_unused_types_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_rl_un_ty_ts_un_ty_63cc( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_unused_types.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_uns_typ_ts_uns_typ( i_reg_f149 = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1760_9ea46fbb9129.
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
