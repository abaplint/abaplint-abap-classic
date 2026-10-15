* TS: src/rules/description_empty.ts:14:1 DescriptionEmpty
CLASS zcl_lnt_description_empty DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_description_empty_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS get_description IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_ds_em_ts_ds_emp RETURNING VALUE(result) TYPE REF TO zcl_lnt_description_empty_conf.
    METHODS st_cn_in_sr_rl_ds_em_ts_ds_emp IMPORTING i_conf TYPE REF TO zcl_lnt_description_empty_conf.
    METHODS in_in_sr_rl_dsc_emp_ts_dsc_emp IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_description_empty.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
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
CLASS zcl_lnt_description_empty IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_description_empty_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    DATA(t3) = |description_empty|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Description in class must exist|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Ensures descriptions in class metadata exist.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    t14 = t15.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    t18 = t19.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t8 i_good_example = t10 i_extended_information = t12 i_tags = t14 i_pragma = t16 i_pseudo_comment = t18 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t20 ).
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t21 ).
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t22 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t23) = |key|.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t23 p1 = t24 ).
    ENDIF.
    DATA(t25) = |title|.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t25 p1 = t26 ).
    ENDIF.
    DATA(t27) = |shortDescription|.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t27 p1 = t28 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = i_name.
    DATA t2 TYPE string.
    DATA(t3) = |Description empty in |.
    DATA(t4) = t1.
    DATA(t5) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    result = t2.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ds_em_ts_ds_emp.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ds_em_ts_ds_emp.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_dsc_emp_ts_dsc_emp.
    DATA(t1) = i_reg_d009.
    DATA(t2) = me.
    result = t2.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_class ).
    t4 = t5.
    IF t5 = abap_false.
      DATA t7 TYPE abap_bool.
      DATA(t8) = t1.
      t7 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_ob_interface ).
      t4 = t7.
    ENDIF.
    IF t4 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t11 TYPE REF TO zif_lnt_union_291f04b3.
      DATA(t12) = t1.
      t11 ?= t12.
      t10 = t11->get_description( ).
      t9 = t10.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      t13 = t14.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = t9.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      DATA(t18) = abap_true.
      IF t18 = abap_true.
        DATA(t19) = ||.
        DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t20->has = abap_true.
        t20->value = t19.
        t17 = t20.
      ELSE.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t21.
        t17 = t21.
      ENDIF.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE abap_bool( ).
      IF t16 IS BOUND.
        t22 = t16->has.
      ENDIF.
      IF t17 IS BOUND.
        t23 = t17->has.
      ENDIF.
      IF t22 = t23.
        IF t22 = abap_false.
          t15 = abap_true.
        ELSEIF t16->value = t17->value.
          t15 = abap_true.
        ENDIF.
      ENDIF.
      IF t15 = abap_true.
        DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t24.
        DATA(t25) = abap_true.
        IF t25 = abap_true.
          DATA t26 TYPE string.
          DATA t27 TYPE string.
          DATA t28 TYPE string.
          DATA t29 TYPE REF TO zif_lnt_union_291f04b3.
          DATA(t30) = t1.
          t29 ?= t30.
          t28 = t29->get_name( ).
          t27 = t28.
          DATA t31 TYPE string.
          DATA(t32) = |Description empty in |.
          DATA(t33) = t27.
          DATA(t34) = strlen( t32 ).
          t31 = |{ t32 }{ t33 }|.
          t26 = t31.
          DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t35->has = abap_true.
          t35->value = t26.
          t24 = t35.
        ELSE.
          DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t36.
          t24 = t36.
        ENDIF.
        t13 = t24.
      ELSE.
        DATA(t37) = VALUE abap_bool( ).
        DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t39) = t9.
        t38 = t39.
        DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t41.
        t40 = t41.
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = t38.
        IF t43 IS INITIAL.
          t42 = abap_true.
        ELSEIF t43->has = abap_false.
          t42 = abap_true.
        ENDIF.
        t37 = t42.
        IF t37 = abap_true.
          DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t44.
          DATA(t45) = abap_true.
          IF t45 = abap_true.
            DATA t46 TYPE string.
            DATA t47 TYPE string.
            DATA t48 TYPE string.
            DATA t49 TYPE string.
            DATA t50 TYPE REF TO zif_lnt_union_291f04b3.
            DATA(t51) = t1.
            t50 ?= t51.
            t49 = t50->get_name( ).
            DATA(t52) = |, class XML file not found|.
            DATA(t53) = strlen( t49 ).
            t48 = |{ t49 }{ t52 }|.
            t47 = t48.
            DATA t54 TYPE string.
            DATA(t55) = |Description empty in |.
            DATA(t56) = t47.
            DATA(t57) = strlen( t55 ).
            t54 = |{ t55 }{ t56 }|.
            t46 = t54.
            DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t58->has = abap_true.
            t58->value = t46.
            t44 = t58.
          ELSE.
            DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t59.
            t44 = t59.
          ENDIF.
          t13 = t44.
        ENDIF.
      ENDIF.
      DATA(t60) = VALUE abap_bool( ).
      DATA(t61) = t13.
      IF t61 IS BOUND.
        IF t61->has = abap_true.
          t60 = xsdbool( strlen( t61->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t60 = abap_true.
        DATA t62 TYPE REF TO zcl_lnt_position.
        DATA t63 TYPE REF TO zcl_lnt_position.
        DATA(t64) = CONV f( 1 ).
        DATA(t65) = CONV f( 1 ).
        DATA(t66) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t66->has = abap_true.
        t66->value = t65.
        t63 = NEW zcl_lnt_position( i_row = t64 i_col = t66 ).
        t62 = t63.
        DATA t67 TYPE REF TO zcl_lnt_issue.
        CLEAR t67.
        DATA t68 TYPE REF TO zcl_lnt_issue.
        CLEAR t68.
        DATA t69 TYPE REF TO zif_lnt_file.
        CLEAR t69.
        DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t71 TYPE REF TO zif_lnt_union_291f04b3.
        DATA(t72) = t1.
        t71 ?= t72.
        t70 = t71->get_files( ).
        DATA t73 TYPE REF TO object.
        CLEAR t73.
        t70->load( ).
        CLEAR t73.
        READ TABLE t70->items INDEX 1 INTO t73.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        CLEAR t69.
        IF t73 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t74 ?= t73.
          DATA t75 TYPE REF TO object.
          t75 = t74->as_ref( ).
          t69 ?= t75.
        ELSE.
          t69 ?= t73.
        ENDIF.
        DATA(t76) = t62.
        DATA t77 TYPE string.
        DATA(t78) = t13.
        t77 = t78->value.
        DATA(t79) = VALUE string( ).
        DATA t80 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t81 TYPE string.
        DATA(t82) = |description_empty|.
        t81 = t82.
        DATA t83 TYPE string.
        DATA(t84) = |Description in class must exist|.
        t83 = t84.
        DATA t85 TYPE string.
        DATA(t86) = |Ensures descriptions in class metadata exist.|.
        t85 = t86.
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
        DATA t93 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t94 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t94.
        t93 = t94.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t96.
        t95 = t96.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        t97 = t98.
        t80 = NEW zcl_lnt_irule_metadata( i_key = t81 i_title = t83 i_short_description = t85 i_bad_example = t87 i_good_example = t89 i_extended_information = t91 i_tags = t93 i_pragma = t95 i_pseudo_comment = t97 ).
        CREATE OBJECT t80->zlnt_view_ownkeys_b0e8086400eb.
        t80->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t99 ).
        ENDIF.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t100 ).
        ENDIF.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t101 ).
        ENDIF.
        CREATE OBJECT t80->zlnt_json_ownkeys_70e5fd461788.
        t80->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t102) = |key|.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t102 p1 = t103 ).
        ENDIF.
        DATA(t104) = |title|.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t104 p1 = t105 ).
        ENDIF.
        DATA(t106) = |shortDescription|.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t107.
        IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t106 p1 = t107 ).
        ENDIF.
        t79 = t80->key.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t109) = me->conf.
        t108 = t109->zlnt_view_read_sr_15c06369f827( ).
        DATA t110 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t110.
        t68 = zcl_lnt_issue=>at_position( i_file = t69 i_start = t76 i_message_26cb = t77 i_key = t79 i_severity = t108 i_fix = t110 ).
        t67 = t68.
        DATA(t111) = t2.
        DATA(t112) = t67.
        t111->load( ).
        APPEND t112 TO t111->items.
        t111->save( ).
      ENDIF.
    ENDIF.
    DATA(t113) = t2.
    result = t113.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_description_empty_conf( me->gt_cn_in_sr_rl_ds_em_ts_ds_emp( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_description_empty_conf( me->gt_cn_in_sr_rl_ds_em_ts_ds_emp( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_description_empty_conf.
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
        t2 = NEW zcl_lnt_description_empty_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ds_em_ts_ds_emp( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_description_empty.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_dsc_emp_ts_dsc_emp( i_reg_d009 = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1479_f2178c816668.
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
