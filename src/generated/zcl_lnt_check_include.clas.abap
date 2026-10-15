* TS: src/rules/check_include.ts:15:1 CheckInclude
CLASS zcl_lnt_check_include DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_check_include_conf.
    DATA graph TYPE REF TO zcl_lnt_include_graph.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_ch_in_ts_ch_inc RETURNING VALUE(result) TYPE REF TO zcl_lnt_check_include_conf.
    METHODS st_cn_in_sr_rl_ch_in_ts_ch_inc IMPORTING i_conf TYPE REF TO zcl_lnt_check_include_conf.
    METHODS in_in_sr_rl_chc_inc_ts_chc_inc IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_check_include.
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
CLASS zcl_lnt_check_include IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_check_include_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |check_include|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Check INCLUDEs|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks INCLUDE statements|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |\n* Reports unused includes\n* Errors if the includes are not |.
      t11 = t11 && |found\n* Error if including a main program\n* Skips ZX* includ|.
      t11 = t11 && |es|.
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
      t17 = t22.
      t15 = t17.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t23.
      t15 = t23.
    ENDIF.
    t14 = t15.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
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
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t26 i_extended_information = t8 i_tags = t14 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t37) = |key|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    ENDIF.
    DATA(t39) = |title|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |shortDescription|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |extendedInformation|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |tags|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ch_in_ts_ch_inc.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ch_in_ts_ch_inc.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_chc_inc_ts_chc_inc.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA t3 TYPE REF TO zcl_lnt_include_graph.
    CLEAR t3.
    DATA(t4) = me->reg.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = VALUE string( ).
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t10) = CAST zcl_lnt_check_include_conf( me->gt_cn_in_sr_rl_ch_in_ts_ch_inc( ) ).
      t9 = t10->zlnt_view_read_sr_15c06369f827( ).
      t8 = t9.
      DATA(t11) = VALUE string( ).
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = t8.
      IF t13 IS BOUND.
        IF t13->has = abap_true.
          t12 = xsdbool( strlen( t13->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t12 = abap_true.
        DATA t14 TYPE string.
        DATA(t15) = t8.
        t14 = t15->value.
        t11 = t14.
      ELSE.
        DATA(t16) = |Error|.
        t11 = t16.
      ENDIF.
      t7 = t11.
      DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t17->has = abap_true.
      t17->value = t7.
      t5 = t17.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      t5 = t18.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA t23 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t24) = CAST zcl_lnt_check_include_conf( me->gt_cn_in_sr_rl_ch_in_ts_ch_inc( ) ).
      t23 = t24->zlnt_view_read_sr_84e079e03f3d( ).
      IF t23 IS BOUND.
        IF t23->has = abap_true.
          t22 = xsdbool( t23->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t21 = t22.
      IF t22 = abap_false.
        DATA(t25) = abap_false.
        t21 = t25.
      ENDIF.
      DATA(t26) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t26->has = abap_true.
      t26->value = t21.
      t19 = t26.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t27.
      t19 = t27.
    ENDIF.
    t3 = NEW zcl_lnt_include_graph( i_reg_f149 = t4 i_severity = t5 i_allow_unused = t19 ).
    me->graph = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `graph`.
    DATA(t28) = me.
    result = t28.

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
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE abap_bool.
    DATA t8 TYPE abap_bool.
    DATA(t9) = t1.
    t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_ob_program ).
    t7 = t8.
    IF t8 = abap_true.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE abap_bool.
      DATA t12 TYPE REF TO zcl_lnt_ob_program.
      DATA t13 TYPE REF TO zcl_lnt_ob_program.
      DATA(t14) = t1.
      DATA t15 TYPE REF TO object.
      t15 = t14.
      t13 ?= t15.
      t12 = t13.
      DATA t16 TYPE abap_bool.
      DATA(t17) = t12.
      t17->parse_xml( ).
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE REF TO zcl_lnt_shape_d77da4ed.
      DATA t20 TYPE REF TO zcl_lnt_shape_d77da4ed.
      DATA(t21) = t12.
      t20 = t21->parsed_xml.
      t19 = t20.
      t18 = t19->is_include.
      t16 = t18.
      t11 = t16.
      DATA(t22) = abap_true.
      t10 = xsdbool( t11 = t22 ).
      t7 = t10.
    ENDIF.
    t6 = t7.
    IF t7 = abap_true.
      DATA(t23) = VALUE abap_bool( ).
      DATA t24 TYPE string.
      DATA t25 TYPE REF TO zcl_lnt_abstract_object.
      DATA t26 TYPE REF TO zcl_lnt_ob_program.
      DATA(t27) = t1.
      DATA t28 TYPE REF TO object.
      t28 = t27.
      t26 ?= t28.
      t25 = t26.
      DATA t29 TYPE string.
      DATA(t30) = t25.
      t29 = t30->name.
      t24 = t29.
      DATA(t31) = |ZX|.
      DATA(t32) = strlen( t24 ).
      DATA t33 TYPE i.
      DATA(t34) = VALUE i( ).
      DATA(t35) = VALUE string( ).
      t33 = strlen( t31 ).
      IF t33 = 0.
        t23 = abap_true.
      ELSEIF t33 <= t32.
        t34 = 0.
        t35 = t24+t34(t33).
        IF t35 = t31.
          t23 = abap_true.
        ENDIF.
      ENDIF.
      t6 = t23.
    ENDIF.
    IF t6 = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t36.
      result = t36.
      RETURN.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    t37 = t38.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zcl_lnt_abap_object.
    DATA t41 TYPE REF TO zcl_lnt_abap_object.
    DATA(t42) = t1.
    DATA t43 TYPE REF TO object.
    t43 = t42.
    t41 ?= t43.
    t40 = t41.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t45) = t40.
    t44 = t45->parsed.
    t39 = t44.
    DATA t46 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t46.
    DATA t47 TYPE REF TO object.
    CLEAR t47.
    DATA(t48) = VALUE i( ).
    DO.
      t39->load( ).
      IF t48 >= lines( t39->items ).
        EXIT.
      ENDIF.
      CLEAR t47.
      READ TABLE t39->items INDEX t48 + 1 INTO t47.
      t48 = t48 + 1.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      CLEAR t46.
      IF t47 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t49 ?= t47.
        DATA t50 TYPE REF TO object.
        t50 = t49->as_ref( ).
        t46 ?= t50.
      ELSE.
        t46 ?= t47.
      ENDIF.
      DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t52) = t37.
      DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t54) = me->graph.
      DATA(t55) = t46.
      t53 = t54->get_issues_file( i_file = t55 ).
      t51 = t52->concat( p0 = t53 ).
      t37 = t51.
    ENDDO.
    DATA(t56) = t37.
    result = t56.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_check_include_conf( me->gt_cn_in_sr_rl_ch_in_ts_ch_inc( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_check_include_conf( me->gt_cn_in_sr_rl_ch_in_ts_ch_inc( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_check_include_conf.
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
        t2 = NEW zcl_lnt_check_include_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ch_in_ts_ch_inc( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_check_include.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_chc_inc_ts_chc_inc( i_reg_f149 = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1440_0e47f0303afa.
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
