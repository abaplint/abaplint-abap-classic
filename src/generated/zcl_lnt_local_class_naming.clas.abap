* TS: src/rules/local_class_naming.ts:19:1 LocalClassNaming
CLASS zcl_lnt_local_class_naming DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_lcl_clss_nmng_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_expected TYPE string i_actual TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_lc_cl_nm_ts_lc_cl_nm RETURNING VALUE(result) TYPE REF TO zcl_lnt_lcl_clss_nmng_cnf.
    METHODS s_c_i_s_r_lc_cl_nm_ts_lc_cl_nm IMPORTING i_conf TYPE REF TO zcl_lnt_lcl_clss_nmng_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_local_class_naming IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_lcl_clss_nmng_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Allows you to enforce a pattern, such as a prefix, for local|.
    t7 = t7 && | class names.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |Naming| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = |CLASS helper DEFINITION.\nENDCLASS.|.
    t20 = t24.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = |CLASS lcl_helper DEFINITION.\nENDCLASS.|.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |local_class_naming| i_title = |Local class naming conventions| i_short_description = t6 i_bad_example = t20 i_good_example = t30 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t38 ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t43 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t45 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t47 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t53 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t55 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = i_expected.
    DATA(t2) = i_actual.
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t5 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t10->has = abap_true.
    t10->value = |required|.
    t7 = t10.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    IF t5 IS BOUND.
      t12 = t5->has.
    ENDIF.
    IF t7 IS BOUND.
      t13 = t7->has.
    ENDIF.
    IF t12 = t13.
      IF t12 = abap_false.
        t4 = abap_true.
      ELSEIF t5->value = t7->value.
        t4 = abap_true.
      ENDIF.
    ENDIF.
    IF t4 = abap_true.
      DATA t15 TYPE string.
      DATA t16 TYPE string.
      DATA(t17) = |Local class name does not match pattern |.
      DATA(t19) = strlen( t17 ).
      t16 = |{ t17 }{ t1 }|.
      DATA(t21) = strlen( t16 ).
      t15 = |{ t16 }{ |: | }|.
      DATA(t23) = strlen( t15 ).
      t3 = |{ t15 }{ t2 }|.
    ELSE.
      DATA t25 TYPE string.
      DATA t26 TYPE string.
      DATA(t27) = |Local class name must not match pattern |.
      DATA(t29) = strlen( t27 ).
      t26 = |{ t27 }{ t1 }|.
      DATA(t31) = strlen( t26 ).
      t25 = |{ t26 }{ |: | }|.
      DATA(t33) = strlen( t25 ).
      t3 = |{ t25 }{ t2 }|.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD g_c_i_s_r_lc_cl_nm_ts_lc_cl_nm.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_lc_cl_nm_ts_lc_cl_nm.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t6 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = VALUE abap_bool( ).
    IF t6 IS INITIAL.
      t11 = abap_true.
    ELSEIF t6->has = abap_false.
      t11 = abap_true.
    ENDIF.
    IF t11 = abap_true.
      DATA(t13) = me->conf.
      DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t17->has = abap_true.
      t17->value = |required|.
      t13->zlnt_view_write_s_9ebcbca32e92( p0 = t17 ).
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_ddic.
    DATA(t21) = me->reg.
    t19 = NEW zcl_lnt_ddic( i_reg_f149 = t21 ).
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t22 = t1->info->list_class_definitions( ).
    DATA t28 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t29 TYPE REF TO object.
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
      DATA(t33) = VALUE abap_bool( ).
      DATA t34 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t34 = t28->is_global.
      IF t34 IS BOUND.
        IF t34->has = abap_true.
          t33 = xsdbool( t34->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t33 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t36 TYPE string.
      t36 = t28->name.
      DATA t39 TYPE string.
      t39 = ||.
      DATA(t41) = VALUE abap_bool( ).
      DATA t42 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t42 = t28->is_for_testing.
      IF t42 IS BOUND.
        IF t42->has = abap_true.
          t41 = xsdbool( t42->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t41 = abap_true.
        t39 = me->conf->zlnt_view_read_sr_36836f083356( ).
      ELSE.
        IF t19->is_exception( i_def = t28 i_obj_ac26 = t2 ) = abap_true.
          t39 = me->conf->zlnt_view_read_sr_90291641a6c3( ).
        ELSE.
          t39 = me->conf->zlnt_view_read_sr_eaedc4fec3fa( ).
        ENDIF.
      ENDIF.
      DATA t57 TYPE abap_bool.
      DATA t58 TYPE abap_bool.
      DATA t59 TYPE string.
      t59 = t39.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t61.
      t58 = abap_false.
      t57 = t58.
      IF t58 = abap_false.
        t57 = xsdbool( strlen( t39 ) = 0 ).
      ENDIF.
      IF t57 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t70 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t70.
      CREATE OBJECT t70 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t39 flags = |i|.
      DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t74.
      DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t77->has = abap_true.
      t77->value = t36.
      t74 = t77.
      DATA(t80) = me->conf.
      IF zcl_lnt_name_validator=>violates_rule( i_name = t74 i_pattern = t70 i_params_4c59 = t80 ) = abap_true.
        DATA t82 TYPE REF TO zcl_lnt_issue.
        CLEAR t82.
        DATA t83 TYPE REF TO zcl_lnt_fi_identifier.
        t83 = t28->identifier.
        DATA(t85) = VALUE string( ).
        DATA t86 TYPE string.
        t86 = t39.
        DATA t88 TYPE string.
        t88 = t36.
        DATA(t90) = VALUE string( ).
        DATA(t91) = VALUE abap_bool( ).
        DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t92 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t97->has = abap_true.
        t97->value = |required|.
        t94 = t97.
        DATA(t99) = VALUE abap_bool( ).
        DATA(t100) = VALUE abap_bool( ).
        IF t92 IS BOUND.
          t99 = t92->has.
        ENDIF.
        IF t94 IS BOUND.
          t100 = t94->has.
        ENDIF.
        IF t99 = t100.
          IF t99 = abap_false.
            t91 = abap_true.
          ELSEIF t92->value = t94->value.
            t91 = abap_true.
          ENDIF.
        ENDIF.
        IF t91 = abap_true.
          DATA t102 TYPE string.
          DATA t103 TYPE string.
          DATA(t104) = |Local class name does not match pattern |.
          DATA(t106) = strlen( t104 ).
          t103 = |{ t104 }{ t86 }|.
          DATA(t108) = strlen( t103 ).
          t102 = |{ t103 }{ |: | }|.
          DATA(t110) = strlen( t102 ).
          t90 = |{ t102 }{ t88 }|.
        ELSE.
          DATA t112 TYPE string.
          DATA t113 TYPE string.
          DATA(t114) = |Local class name must not match pattern |.
          DATA(t116) = strlen( t114 ).
          t113 = |{ t114 }{ t86 }|.
          DATA(t118) = strlen( t113 ).
          t112 = |{ t113 }{ |: | }|.
          DATA(t120) = strlen( t112 ).
          t90 = |{ t112 }{ t88 }|.
        ENDIF.
        t85 = t90.
        DATA(t121) = VALUE string( ).
        DATA t122 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t127 TYPE string.
        DATA(t128) = |Allows you to enforce a pattern, such as a prefix, for local|.
        t128 = t128 && | class names.|.
        t127 = t128.
        DATA t129 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t129.
        DATA t133 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t133.
        t133->load( ).
        APPEND |Naming| TO t133->items.
        t133->save( ).
        t133->load( ).
        APPEND |SingleFile| TO t133->items.
        t133->save( ).
        t129 = t133.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t141.
        DATA(t145) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t145->has = abap_true.
        t145->value = |CLASS helper DEFINITION.\nENDCLASS.|.
        t141 = t145.
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t147.
        DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t151->has = abap_true.
        t151->value = |CLASS lcl_helper DEFINITION.\nENDCLASS.|.
        t147 = t151.
        DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t153.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t155.
        DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t157.
        t122 = NEW zcl_lnt_irule_metadata( i_key = |local_class_naming| i_title = |Local class naming conventions| i_short_description = t127 i_bad_example = t141 i_good_example = t147 i_extended_information = t153 i_tags = t129 i_pragma = t155 i_pseudo_comment = t157 ).
        CREATE OBJECT t122->zlnt_view_ownkeys_b0e8086400eb.
        t122->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t159 ).
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t160 ).
        ENDIF.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t161 ).
        ENDIF.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t162 ).
        ENDIF.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t163 ).
        ENDIF.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t164 ).
        ENDIF.
        CREATE OBJECT t122->zlnt_json_ownkeys_70e5fd461788.
        t122->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t166.
        t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t166 ).
        DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t168.
        IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t168 ).
        ENDIF.
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t170.
        IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t170 ).
        ENDIF.
        DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t172.
        IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t172 ).
        ENDIF.
        DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t174.
        IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t174 ).
        ENDIF.
        DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t176.
        IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t176 ).
        ENDIF.
        t121 = t122->key.
        DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t177 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t179 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t179.
        t82 = zcl_lnt_issue=>at_identifier( i_identifier = t83 i_message_26cb = t85 i_key = t121 i_severity = t177 i_fix = t179 ).
        t3->load( ).
        APPEND t82 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_lcl_clss_nmng_cnf( me->g_c_i_s_r_lc_cl_nm_ts_lc_cl_nm( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_lcl_clss_nmng_cnf( me->g_c_i_s_r_lc_cl_nm_ts_lc_cl_nm( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_lcl_clss_nmng_cnf.
    IF i_conf IS BOUND.
      IF i_conf->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t1 ?= i_conf->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t1 IS NOT BOUND.
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t2 ?= i_conf->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t2->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t1 = NEW zcl_lnt_lcl_clss_nmng_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_lc_cl_nm_ts_lc_cl_nm( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1567_56e3793ba388.
  ENDMETHOD.
ENDCLASS.
