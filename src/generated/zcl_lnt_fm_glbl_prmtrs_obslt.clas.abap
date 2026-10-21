* TS: src/rules/fm_global_parameters_obsolete.ts:12:1 FMGlobalParametersObsolete
CLASS zcl_lnt_fm_glbl_prmtrs_obslt DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_fm_glbl_prmt_obslt_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS i_i_s_r_f_g_p_o_ts_fm_gl_pr_ob IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_fm_glbl_prmtrs_obslt.
    METHODS g_c_i_s_r_f_g_p_o_t_f_gl_pr_ob RETURNING VALUE(result) TYPE REF TO zcl_lnt_fm_glbl_prmt_obslt_cnf.
    METHODS s_c_i_s_r_f_g_p_o_t_f_gl_pr_ob IMPORTING i_conf TYPE REF TO zcl_lnt_fm_glbl_prmt_obslt_cnf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
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
CLASS zcl_lnt_fm_glbl_prmtrs_obslt IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_fm_glbl_prmt_obslt_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
    t11 = t11 && |-US/abenglobal_parameters_obsolete.html|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t14.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |fm_global_parameters_obsolete| i_title = |FM Global Parameters Obsolete| i_short_description = |Check for function modules with global parameters| i_bad_example = t19 i_good_example = t21 i_extended_information = t8 i_tags = t14 i_pragma = t23 i_pseudo_comment = t25 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t27 ).
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t28 ).
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t31 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t33 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t35 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t37 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t39 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t41 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD i_i_s_r_f_g_p_o_ts_fm_gl_pr_ob.
    DATA(t1) = i_reg_d009.
    result = me.

  ENDMETHOD.

  METHOD g_c_i_s_r_f_g_p_o_t_f_gl_pr_ob.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_f_g_p_o_t_f_gl_pr_ob.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_function_group ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zcl_lnt_function_group.
    t9 ?= t1.
    t8 = t9->get_modules( ).
    DATA t12 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    DATA t13 TYPE REF TO object.
    DATA(t14) = VALUE i( ).
    DO.
      t8->load( ).
      IF t14 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t8->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      CLEAR t12.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t15 ?= t13.
        DATA t16 TYPE REF TO object.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      IF xsdbool( t12->global_parameters = abap_true ) = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_abap_file.
        DATA t26 TYPE REF TO zcl_lnt_function_group.
        t26 ?= t1.
        t24 = t26->get_main_abap_file( ).
        DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t32.
        IF xsdbool( t24 IS INITIAL ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t37 TYPE string.
        DATA t38 TYPE string.
        DATA(t39) = |Function Module "|.
        DATA t40 TYPE string.
        t40 = t12->name.
        DATA(t45) = strlen( t39 ).
        t38 = |{ t39 }{ t40 }|.
        DATA(t47) = strlen( t38 ).
        t37 = |{ t38 }{ |" uses obsolete global parameters| }|.
        DATA t49 TYPE REF TO zcl_lnt_issue.
        CLEAR t49.
        DATA t50 TYPE REF TO zcl_lnt_abap_file.
        t50 = t24.
        DATA t52 TYPE REF TO zcl_lnt_position.
        DATA(t55) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t55->has = abap_true.
        t55->value = CONV f( 1 ).
        t52 = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t55 ).
        DATA(t57) = VALUE string( ).
        DATA t58 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t65.
        DATA(t68) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
        t68 = t68 && |-US/abenglobal_parameters_obsolete.html|.
        DATA(t69) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t69->has = abap_true.
        t69->value = t68.
        t65 = t69.
        DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t71.
        CREATE OBJECT t71.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t78.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        t58 = NEW zcl_lnt_irule_metadata( i_key = |fm_global_parameters_obsolete| i_title = |FM Global Parameters Obsolete| i_short_description = |Check for function modules with global parameters| i_bad_example = t76 i_good_example = t78 i_extended_information = t65 i_tags = t71 i_pragma = t80 i_pseudo_comment = t82 ).
        CREATE OBJECT t58->zlnt_view_ownkeys_b0e8086400eb.
        t58->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t84.
        t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t84 ).
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t85 ).
        ENDIF.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t86 ).
        ENDIF.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t87 ).
        ENDIF.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t88 ).
        ENDIF.
        CREATE OBJECT t58->zlnt_json_ownkeys_70e5fd461788.
        t58->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t90 ).
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t92 ).
        ENDIF.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t94.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t94 ).
        ENDIF.
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t96.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t96 ).
        ENDIF.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t98 ).
        ENDIF.
        t57 = t58->key.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t99 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t101 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t101.
        t49 = zcl_lnt_issue=>at_position( i_file = t50 i_start = t52 i_message_26cb = t37 i_key = t57 i_severity = t99 i_fix = t101 ).
        t6->load( ).
        APPEND t49 TO t6->items.
        t6->save( ).
      ENDIF.
    ENDDO.
    result = t6.

  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->i_i_s_r_f_g_p_o_ts_fm_gl_pr_ob( i_reg_d009 = t3 ).

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_fm_glbl_prmt_obslt_cnf( me->g_c_i_s_r_f_g_p_o_t_f_gl_pr_ob( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_fm_glbl_prmt_obslt_cnf( me->g_c_i_s_r_f_g_p_o_t_f_gl_pr_ob( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_fm_glbl_prmt_obslt_cnf.
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
        t2 = NEW zcl_lnt_fm_glbl_prmt_obslt_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_f_g_p_o_t_f_gl_pr_ob( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1504_696a1b4a4ab3.
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
