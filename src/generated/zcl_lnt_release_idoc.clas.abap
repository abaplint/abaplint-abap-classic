* TS: src/rules/release_idoc.ts:12:1 ReleaseIdoc
CLASS zcl_lnt_release_idoc DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_release_idoc_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_rl_id_ts_rl_idc RETURNING VALUE(result) TYPE REF TO zcl_lnt_release_idoc_conf.
    METHODS st_cn_in_sr_rl_rl_id_ts_rl_idc IMPORTING i_conf TYPE REF TO zcl_lnt_release_idoc_conf.
    METHODS in_in_sr_rl_rls_idc_ts_rls_idc IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_release_idoc.
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
CLASS zcl_lnt_release_idoc IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_release_idoc_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |release_idoc|.
    DATA t4 TYPE string.
    t4 = |Release iDoc|.
    DATA t6 TYPE string.
    t6 = |Checks idoc types and segments are set to status released|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t8 i_good_example = t10 i_extended_information = t12 i_tags = t14 i_pragma = t16 i_pseudo_comment = t18 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t20 ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t21 ).
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t22 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t23) = |key|.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t23 p1 = t24 ).
    DATA(t25) = |title|.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t25 p1 = t26 ).
    ENDIF.
    DATA(t27) = |shortDescription|.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t27 p1 = t28 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |Idoc type/segement status must be set to released|.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_rl_id_ts_rl_idc.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_rl_id_ts_rl_idc.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_rls_idc_ts_rls_idc.
    DATA(t1) = i_reg_d009.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zif_lnt_file.
    DATA t3 TYPE REF TO zif_lnt_file.
    t3 = t1->get_xml_file( ).
    t2 = t3.
    DATA(t5) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t5 = xsdbool( t2 IS INITIAL ).
    IF t5 = abap_true.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t12.
      result = t12.
      RETURN.
    ENDIF.
    DATA t13 TYPE abap_bool.
    t13 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_table ).
    IF t13 = abap_true.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE i( ).
      DATA t18 TYPE string.
      DATA t19 TYPE REF TO zif_lnt_file.
      t19 = t2.
      t18 = t19->get_raw( ).
      DATA(t21) = |<SEGMENTDEFINITION>|.
      DATA(t22) = strlen( t18 ).
      IF t21 IS INITIAL.
        t17 = 0.
      ELSE.
        FIND t21 IN t18 MATCH OFFSET t17.
        IF sy-subrc <> 0.
          t17 = -1.
        ENDIF.
      ENDIF.
      DATA(t23) = 0.
      t16 = xsdbool( t17 >= t23 ).
      t15 = xsdbool( t16 = abap_false ).
      IF t15 = abap_true.
        DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t25.
        result = t25.
        RETURN.
      ENDIF.
    ELSE.
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE abap_bool.
      t27 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_idoc ).
      t26 = xsdbool( t27 = abap_false ).
      IF t26 = abap_true.
        DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t29.
        result = t29.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = VALUE i( ).
    DATA t33 TYPE string.
    DATA t34 TYPE REF TO zif_lnt_file.
    t34 = t2.
    t33 = t34->get_raw( ).
    DATA(t36) = |<CLOSED>X</CLOSED>|.
    DATA(t37) = strlen( t33 ).
    IF t36 IS INITIAL.
      t32 = 0.
    ELSE.
      FIND t36 IN t33 MATCH OFFSET t32.
      IF sy-subrc <> 0.
        t32 = -1.
      ENDIF.
    ENDIF.
    DATA(t38) = 0.
    t31 = xsdbool( t32 >= t38 ).
    t30 = xsdbool( t31 = abap_false ).
    IF t30 = abap_true.
      DATA t41 TYPE REF TO zcl_lnt_position.
      DATA(t42) = CONV f( 1 ).
      DATA(t43) = CONV f( 1 ).
      DATA(t44) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t44->has = abap_true.
      t44->value = t43.
      t41 = NEW zcl_lnt_position( i_row = t42 i_col = t44 ).
      DATA t46 TYPE REF TO zcl_lnt_issue.
      DATA t47 TYPE REF TO zif_lnt_file.
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t49 TYPE REF TO zif_lnt_union_17d1aaf2.
      t49 ?= t1.
      t48 = t49->get_files( ).
      DATA t51 TYPE REF TO object.
      t48->load( ).
      READ TABLE t48->items INDEX 1 INTO t51.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t51 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t52 ?= t51.
        DATA t53 TYPE REF TO object.
        t53 = t52->as_ref( ).
        t47 ?= t53.
      ELSE.
        t47 ?= t51.
      ENDIF.
      DATA(t55) = |Idoc type/segement status must be set to released|.
      DATA(t56) = VALUE string( ).
      DATA t57 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t58 TYPE string.
      t58 = |release_idoc|.
      DATA t60 TYPE string.
      t60 = |Release iDoc|.
      DATA t62 TYPE string.
      t62 = |Checks idoc types and segments are set to status released|.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t57 = NEW zcl_lnt_irule_metadata( i_key = t58 i_title = t60 i_short_description = t62 i_bad_example = t64 i_good_example = t66 i_extended_information = t68 i_tags = t70 i_pragma = t72 i_pseudo_comment = t74 ).
      CREATE OBJECT t57->zlnt_view_ownkeys_b0e8086400eb.
      t57->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t76 ).
      DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t57->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t77 ).
      ENDIF.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t57->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t78 ).
      ENDIF.
      CREATE OBJECT t57->zlnt_json_ownkeys_70e5fd461788.
      t57->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t79) = |key|.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = t79 p1 = t80 ).
      DATA(t81) = |title|.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t57->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = t81 p1 = t82 ).
      ENDIF.
      DATA(t83) = |shortDescription|.
      DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t57->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = t83 p1 = t84 ).
      ENDIF.
      t56 = t57->key.
      DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t85 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      DATA t87 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t46 = zcl_lnt_issue=>at_position( i_file = t47 i_start = t41 i_message_26cb = t55 i_key = t56 i_severity = t85 i_fix = t87 ).
      DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t90.
      t89 = t90.
      t89->load( ).
      APPEND t46 TO t89->items.
      t89->save( ).
      result = t89.
      RETURN.
    ELSE.
      DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t94.
      result = t94.

    ENDIF.
  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_release_idoc_conf( me->gt_cn_in_sr_rl_rl_id_ts_rl_idc( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_release_idoc_conf( me->gt_cn_in_sr_rl_rl_id_ts_rl_idc( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_release_idoc_conf.
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
        t2 = NEW zcl_lnt_release_idoc_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_rl_id_ts_rl_idc( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA t2 TYPE REF TO zcl_lnt_release_idoc.
    DATA(t3) = i_reg_f149.
    t2 = me->in_in_sr_rl_rls_idc_ts_rls_idc( i_reg_d009 = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1680_f009769b508b.
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
