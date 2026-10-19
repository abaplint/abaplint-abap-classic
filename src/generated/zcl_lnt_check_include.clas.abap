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
    me->conf = NEW zcl_lnt_check_include_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |\n* Reports unused includes\n* Errors if the includes are not |.
    t11 = t11 && |found\n* Error if including a main program\n* Skips ZX* includ|.
    t11 = t11 && |es|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Syntax| TO t18->items.
    t18->save( ).
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |check_include| i_title = |Check INCLUDEs| i_short_description = |Checks INCLUDE statements| i_bad_example = t24 i_good_example = t26 i_extended_information = t8 i_tags = t18 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t38 ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t40 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t42 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t44 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ch_in_ts_ch_inc.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ch_in_ts_ch_inc.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_chc_inc_ts_chc_inc.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t4) = me->reg.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t8 = CAST zcl_lnt_check_include_conf( me->gt_cn_in_sr_rl_ch_in_ts_ch_inc( ) )->zlnt_view_read_sr_15c06369f827( ).
    DATA(t11) = VALUE string( ).
    DATA(t12) = VALUE abap_bool( ).
    IF t8 IS BOUND.
      IF t8->has = abap_true.
        t12 = xsdbool( strlen( t8->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t12 = abap_true.
      t11 = t8->value.
    ELSE.
      t11 = |Error|.
    ENDIF.
    DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t17->has = abap_true.
    t17->value = t11.
    t5 = t17.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = VALUE abap_bool( ).
    DATA t23 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t23 = CAST zcl_lnt_check_include_conf( me->gt_cn_in_sr_rl_ch_in_ts_ch_inc( ) )->zlnt_view_read_sr_84e079e03f3d( ).
    IF t23 IS BOUND.
      IF t23->has = abap_true.
        t22 = xsdbool( t23->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    t21 = t22.
    IF t22 = abap_false.
      t21 = abap_false.
    ENDIF.
    DATA(t26) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t26->has = abap_true.
    t26->value = t21.
    me->graph = NEW zcl_lnt_include_graph( i_reg_f149 = t4 i_severity = t5 i_allow_unused = t26 ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `graph`.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE abap_bool.
    DATA t8 TYPE abap_bool.
    t8 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_program ).
    t7 = t8.
    IF t8 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_ob_program.
      DATA t13 TYPE REF TO zcl_lnt_ob_program.
      DATA t15 TYPE REF TO object.
      t15 = t1.
      t13 ?= t15.
      t12 = t13.
      t12->parse_xml( ).
      t7 = xsdbool( t12->parsed_xml->is_include = abap_true ).
    ENDIF.
    t6 = t7.
    IF t7 = abap_true.
      DATA(t23) = VALUE abap_bool( ).
      DATA t24 TYPE string.
      DATA t25 TYPE REF TO zcl_lnt_abstract_object.
      DATA t26 TYPE REF TO zcl_lnt_ob_program.
      DATA t28 TYPE REF TO object.
      t28 = t1.
      t26 ?= t28.
      t25 = t26.
      t24 = t25->name.
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
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t41 TYPE REF TO zcl_lnt_abap_object.
    DATA t43 TYPE REF TO object.
    t43 = t1.
    t41 ?= t43.
    t39 = t41->parsed.
    DATA t46 TYPE REF TO zcl_lnt_abap_file.
    DATA t47 TYPE REF TO object.
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
      t37 = t37->concat( p0 = me->graph->get_issues_file( i_file = t46 ) ).
    ENDDO.
    result = t37.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_check_include_conf( me->gt_cn_in_sr_rl_ch_in_ts_ch_inc( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_check_include_conf( me->gt_cn_in_sr_rl_ch_in_ts_ch_inc( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_check_include_conf.
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
        t2 = NEW zcl_lnt_check_include_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ch_in_ts_ch_inc( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->in_in_sr_rl_chc_inc_ts_chc_inc( i_reg_f149 = t3 ).

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
