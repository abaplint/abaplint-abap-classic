* TS: src/rules/identical_form_names.ts:13:1 IdenticalFormNames
CLASS zcl_lnt_identical_form_names DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_idntcl_frm_nms_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_id_fr_nm_ts_id_fr_nm RETURNING VALUE(result) TYPE REF TO zcl_lnt_idntcl_frm_nms_cnf.
    METHODS s_c_i_s_r_id_fr_nm_ts_id_fr_nm IMPORTING i_conf TYPE REF TO zcl_lnt_idntcl_frm_nms_cnf.
    METHODS i_i_sr_rl_id_fr_nm_ts_id_fr_nm IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_identical_form_names.
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
CLASS zcl_lnt_identical_form_names IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_idntcl_frm_nms_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |identical_form_names|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Identical FORM names|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Detects identically named FORMs|.
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
      DATA(t15) = |Syntax|.
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
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t18 i_good_example = t20 i_extended_information = t22 i_tags = t8 i_pragma = t24 i_pseudo_comment = t26 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t28 ).
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t30 ).
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
    DATA(t38) = |tags|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_id_fr_nm_ts_id_fr_nm.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_id_fr_nm_ts_id_fr_nm.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD i_i_sr_rl_id_fr_nm_ts_id_fr_nm.
    DATA(t1) = i_reg_d009.
    DATA(t2) = me.
    result = t2.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t1.
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_abap_object ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t5.
      result = t5.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t9.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zcl_lnt_abap_object.
    DATA t12 TYPE REF TO zcl_lnt_abap_object.
    DATA(t13) = t1.
    DATA t14 TYPE REF TO object.
    t14 = t13.
    t12 ?= t14.
    t11 = t12.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = t11.
    t15 = t16->parsed.
    t10 = t15.
    DATA t17 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t17.
    DATA t18 TYPE REF TO object.
    CLEAR t18.
    DATA(t19) = VALUE i( ).
    DO.
      t10->load( ).
      IF t19 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t18.
      READ TABLE t10->items INDEX t19 + 1 INTO t18.
      t19 = t19 + 1.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      CLEAR t17.
      IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t20 ?= t18.
        DATA t21 TYPE REF TO object.
        t21 = t20->as_ref( ).
        t17 ?= t21.
      ELSE.
        t17 ?= t18.
      ENDIF.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t23 TYPE REF TO zif_lnt_abap_file_information.
      DATA t24 TYPE REF TO zcl_lnt_abap_file.
      DATA(t25) = t17.
      t24 = t25.
      DATA t26 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t27) = t24.
      t26 = t27->info.
      t23 = t26.
      t22 = t23->list_form_definitions( ).
      DATA t28 TYPE REF TO zcl_lnt_info_form_definition.
      CLEAR t28.
      DATA t29 TYPE REF TO object.
      CLEAR t29.
      DATA(t30) = VALUE i( ).
      DO.
        t22->load( ).
        IF t30 >= lines( t22->items ).
          EXIT.
        ENDIF.
        CLEAR t29.
        READ TABLE t22->items INDEX t30 + 1 INTO t29.
        t30 = t30 + 1.
        DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t31.
        CLEAR t28.
        IF t29 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t31 ?= t29.
          DATA t32 TYPE REF TO object.
          t32 = t31->as_ref( ).
          t28 ?= t32.
        ELSE.
          t28 ?= t29.
        ENDIF.
        DATA(t33) = VALUE string( ).
        DATA t34 TYPE string.
        DATA t35 TYPE string.
        DATA(t36) = t28.
        t35 = t36->name.
        DATA(t37) = strlen( t35 ).
        t34 = t35.
        IF t34 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t34 TO UPPER CASE.
        ELSE.
          t34 = zlnt_runtime_uppe_91169605024d=>full( t34 ).
        ENDIF.
        t33 = t34.
        DATA t38 TYPE abap_bool.
        DATA t39 TYPE i.
        DATA(t40) = t8.
        DATA(t41) = t33.
        t39 = t40->indexof( p0 = t41 ).
        DATA(t42) = 0.
        t38 = xsdbool( t39 >= t42 ).
        IF t38 = abap_true.
          DATA t43 TYPE string.
          DATA t44 TYPE string.
          DATA t45 TYPE string.
          DATA(t46) = |Identical FORM Names: "|.
          DATA(t47) = t33.
          DATA(t48) = strlen( t46 ).
          t45 = |{ t46 }{ t47 }|.
          DATA(t49) = |"|.
          DATA(t50) = strlen( t45 ).
          t44 = |{ t45 }{ t49 }|.
          t43 = t44.
          DATA t51 TYPE REF TO zcl_lnt_issue.
          CLEAR t51.
          DATA t52 TYPE REF TO zcl_lnt_issue.
          CLEAR t52.
          DATA t53 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t54) = t28.
          t53 = t54->identifier.
          DATA(t55) = t43.
          DATA(t56) = VALUE string( ).
          DATA t57 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t57.
          DATA t58 TYPE string.
          DATA(t59) = |identical_form_names|.
          t58 = t59.
          DATA t60 TYPE string.
          DATA(t61) = |Identical FORM names|.
          t60 = t61.
          DATA t62 TYPE string.
          DATA(t63) = |Detects identically named FORMs|.
          t62 = t63.
          DATA t64 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t64.
          DATA t65 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t65.
          DATA(t66) = abap_true.
          IF t66 = abap_true.
            DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t69.
            t68 = t69.
            DATA(t70) = t68.
            DATA(t71) = |Syntax|.
            t70->load( ).
            APPEND t71 TO t70->items.
            t70->save( ).
            DATA(t72) = t68.
            t67 = t72.
            t65 = t67.
          ELSE.
            DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t73.
            t65 = t73.
          ENDIF.
          t64 = t65.
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t75.
          t74 = t75.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t77.
          t76 = t77.
          DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t79.
          t78 = t79.
          DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t81.
          t80 = t81.
          DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t83.
          t82 = t83.
          t57 = NEW zcl_lnt_irule_metadata( i_key = t58 i_title = t60 i_short_description = t62 i_bad_example = t74 i_good_example = t76 i_extended_information = t78 i_tags = t64 i_pragma = t80 i_pseudo_comment = t82 ).
          CREATE OBJECT t57->zlnt_view_ownkeys_b0e8086400eb.
          t57->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t84.
          IF t57->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t84 ).
          ENDIF.
          DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t85.
          IF t57->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t85 ).
          ENDIF.
          DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t86.
          IF t57->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t86 ).
          ENDIF.
          DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t87.
          IF t57->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t87 ).
          ENDIF.
          CREATE OBJECT t57->zlnt_json_ownkeys_70e5fd461788.
          t57->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t88) = |key|.
          DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t89.
          IF t57->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = t88 p1 = t89 ).
          ENDIF.
          DATA(t90) = |title|.
          DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t91.
          IF t57->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = t90 p1 = t91 ).
          ENDIF.
          DATA(t92) = |shortDescription|.
          DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t93.
          IF t57->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = t92 p1 = t93 ).
          ENDIF.
          DATA(t94) = |tags|.
          DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t95.
          IF t57->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
          ENDIF.
          t56 = t57->key.
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t97) = me->conf.
          t96 = t97->zlnt_view_read_sr_15c06369f827( ).
          DATA t98 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t98.
          t52 = zcl_lnt_issue=>at_identifier( i_identifier = t53 i_message_26cb = t55 i_key = t56 i_severity = t96 i_fix = t98 ).
          t51 = t52.
          DATA(t99) = t6.
          DATA(t100) = t51.
          t99->load( ).
          APPEND t100 TO t99->items.
          t99->save( ).
        ELSE.
          DATA(t101) = t8.
          DATA(t102) = t33.
          t101->load( ).
          APPEND t102 TO t101->items.
          t101->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t103) = t6.
    result = t103.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_idntcl_frm_nms_cnf( me->g_c_i_s_r_id_fr_nm_ts_id_fr_nm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_idntcl_frm_nms_cnf( me->g_c_i_s_r_id_fr_nm_ts_id_fr_nm( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_idntcl_frm_nms_cnf.
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
        t2 = NEW zcl_lnt_idntcl_frm_nms_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_id_fr_nm_ts_id_fr_nm( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_identical_form_names.
    DATA(t3) = t1.
    t2 = me->i_i_sr_rl_id_fr_nm_ts_id_fr_nm( i_reg_d009 = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1531_286a3b445269.
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
