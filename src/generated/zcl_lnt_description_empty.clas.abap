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
    me->conf = NEW zcl_lnt_description_empty_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |description_empty| i_title = |Description in class must exist| i_short_description = |Ensures descriptions in class metadata exist.| i_bad_example = t8 i_good_example = t10 i_extended_information = t12 i_tags = t14 i_pragma = t16 i_pseudo_comment = t18 ).
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
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t24 ).
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t26 ).
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t28 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t3) = |Description empty in |.
    DATA(t5) = strlen( t3 ).
    result = |{ t3 }{ i_name }|.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ds_em_ts_ds_emp.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ds_em_ts_ds_emp.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_dsc_emp_ts_dsc_emp.
    DATA(t1) = i_reg_d009.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    t5 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_class ).
    t4 = t5.
    IF t5 = abap_false.
      t4 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_interface ).
    ENDIF.
    IF t4 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t11 TYPE REF TO zif_lnt_union_291f04b3.
      t11 ?= t1.
      t9 = t11->get_description( ).
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t15) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = ||.
      t17 = t20.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE abap_bool( ).
      IF t9 IS BOUND.
        t22 = t9->has.
      ENDIF.
      IF t17 IS BOUND.
        t23 = t17->has.
      ENDIF.
      IF t22 = t23.
        IF t22 = abap_false.
          t15 = abap_true.
        ELSEIF t9->value = t17->value.
          t15 = abap_true.
        ENDIF.
      ENDIF.
      IF t15 = abap_true.
        DATA t28 TYPE string.
        DATA t29 TYPE REF TO zif_lnt_union_291f04b3.
        t29 ?= t1.
        t28 = t29->get_name( ).
        DATA t31 TYPE string.
        DATA(t32) = |Description empty in |.
        DATA(t34) = strlen( t32 ).
        t31 = |{ t32 }{ t28 }|.
        DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t35->has = abap_true.
        t35->value = t31.
        t13 = t35.
      ELSE.
        DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t38 = t9.
        DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t42) = VALUE abap_bool( ).
        IF t38 IS INITIAL.
          t42 = abap_true.
        ELSEIF t38->has = abap_false.
          t42 = abap_true.
        ENDIF.
        IF t42 = abap_true.
          DATA t48 TYPE string.
          DATA t49 TYPE string.
          DATA t50 TYPE REF TO zif_lnt_union_291f04b3.
          t50 ?= t1.
          t49 = t50->get_name( ).
          DATA(t53) = strlen( t49 ).
          t48 = |{ t49 }{ |, class XML file not found| }|.
          DATA t54 TYPE string.
          DATA(t55) = |Description empty in |.
          DATA(t57) = strlen( t55 ).
          t54 = |{ t55 }{ t48 }|.
          DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t58->has = abap_true.
          t58->value = t54.
          t13 = t58.
        ENDIF.
      ENDIF.
      DATA(t60) = VALUE abap_bool( ).
      IF t13 IS BOUND.
        IF t13->has = abap_true.
          t60 = xsdbool( strlen( t13->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t60 = abap_true.
        DATA t63 TYPE REF TO zcl_lnt_position.
        DATA(t66) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t66->has = abap_true.
        t66->value = CONV f( 1 ).
        t63 = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t66 ).
        DATA t68 TYPE REF TO zcl_lnt_issue.
        DATA t69 TYPE REF TO zif_lnt_file.
        DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t71 TYPE REF TO zif_lnt_union_291f04b3.
        t71 ?= t1.
        t70 = t71->get_files( ).
        DATA t73 TYPE REF TO object.
        t70->load( ).
        READ TABLE t70->items INDEX 1 INTO t73.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t73 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t74 ?= t73.
          DATA t75 TYPE REF TO object.
          t75 = t74->as_ref( ).
          t69 ?= t75.
        ELSE.
          t69 ?= t73.
        ENDIF.
        DATA t77 TYPE string.
        t77 = t13->value.
        DATA(t79) = VALUE string( ).
        DATA t80 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t93 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t80 = NEW zcl_lnt_irule_metadata( i_key = |description_empty| i_title = |Description in class must exist| i_short_description = |Ensures descriptions in class metadata exist.| i_bad_example = t87 i_good_example = t89 i_extended_information = t91 i_tags = t93 i_pragma = t95 i_pseudo_comment = t97 ).
        CREATE OBJECT t80->zlnt_view_ownkeys_b0e8086400eb.
        t80->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t99 ).
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t100 ).
        ENDIF.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t101 ).
        ENDIF.
        CREATE OBJECT t80->zlnt_json_ownkeys_70e5fd461788.
        t80->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t103 ).
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t105 ).
        ENDIF.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t107 ).
        ENDIF.
        t79 = t80->key.
        DATA t110 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t68 = zcl_lnt_issue=>at_position( i_file = t69 i_start = t63 i_message_26cb = t77 i_key = t79 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t110 ).
        t2->load( ).
        APPEND t68 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_description_empty_conf( me->gt_cn_in_sr_rl_ds_em_ts_ds_emp( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_description_empty_conf( me->gt_cn_in_sr_rl_ds_em_ts_ds_emp( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_description_empty_conf.
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
        t2 = NEW zcl_lnt_description_empty_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ds_em_ts_ds_emp( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->in_in_sr_rl_dsc_emp_ts_dsc_emp( i_reg_d009 = t3 ).

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
