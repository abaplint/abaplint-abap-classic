* TS: src/rules/line_break_style.ts:11:1 LineBreakStyle
CLASS zcl_lnt_line_break_style DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_line_break_style_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS i_i_sr_rl_ln_br_st_ts_ln_br_st IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_line_break_style.
    METHODS g_c_i_s_r_ln_br_st_ts_ln_br_st RETURNING VALUE(result) TYPE REF TO zcl_lnt_line_break_style_conf.
    METHODS s_c_i_s_r_ln_br_st_ts_ln_br_st IMPORTING i_conf TYPE REF TO zcl_lnt_line_break_style_conf.
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
CLASS zcl_lnt_line_break_style IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_line_break_style_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |line_break_style|.
    DATA t4 TYPE string.
    t4 = |Makes sure line breaks are consistent|.
    DATA t6 TYPE string.
    DATA(t7) = |Enforces LF as newlines in ABAP and XML files\n\nabapGit does |.
    t7 = t7 && |not work with CRLF|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |SMIM and W3MI files are not checked.|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |Whitespace|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    DATA(t23) = |SingleFile|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t28 i_extended_information = t8 i_tags = t14 i_pragma = t30 i_pseudo_comment = t32 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t34 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t38 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t39) = |key|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    DATA(t41) = |title|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |shortDescription|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |extendedInformation|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    DATA(t47) = |tags|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD i_i_sr_rl_ln_br_st_ts_ln_br_st.
    DATA(t1) = i_reg_d009.
    result = me.

  ENDMETHOD.

  METHOD g_c_i_s_r_ln_br_st_ts_ln_br_st.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_ln_br_st_ts_ln_br_st.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    t5 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_mime_object ).
    t4 = t5.
    IF t5 = abap_false.
      DATA t7 TYPE abap_bool.
      t7 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_web_mime ).
      t4 = t7.
    ENDIF.
    IF t4 = abap_true.
      result = t2.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t10 = t1->get_files( ).
    DATA t12 TYPE REF TO zif_lnt_file.
    DATA t13 TYPE REF TO object.
    DATA(t14) = VALUE i( ).
    DO.
      t10->load( ).
      IF t14 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t10->items INDEX t14 + 1 INTO t13.
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
      DATA t17 TYPE string.
      DATA t18 TYPE string.
      t18 = t12->get_filename( ).
      t17 = t18.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t23) = |.abap|.
      DATA(t24) = strlen( t17 ).
      DATA t25 TYPE i.
      DATA(t26) = VALUE i( ).
      DATA(t27) = VALUE string( ).
      t25 = strlen( t23 ).
      IF t25 = 0.
        t21 = abap_true.
      ELSEIF t25 <= t24.
        t26 = 0.
        t26 = t24 - t25.
        t27 = t17+t26(t25).
        IF t27 = t23.
          t21 = abap_true.
        ENDIF.
      ENDIF.
      t20 = t21.
      IF t21 = abap_false.
        DATA(t28) = VALUE abap_bool( ).
        DATA(t30) = |.xml|.
        DATA(t31) = strlen( t17 ).
        DATA t32 TYPE i.
        DATA(t33) = VALUE i( ).
        DATA(t34) = VALUE string( ).
        t32 = strlen( t30 ).
        IF t32 = 0.
          t28 = abap_true.
        ELSEIF t32 <= t31.
          t33 = 0.
          t33 = t31 - t32.
          t34 = t17+t33(t32).
          IF t34 = t30.
            t28 = abap_true.
          ENDIF.
        ENDIF.
        t20 = t28.
      ENDIF.
      IF t20 = abap_true.
        DATA(t35) = VALUE abap_bool( ).
        DATA(t37) = |.xslt.source.xml|.
        DATA(t38) = strlen( t17 ).
        DATA t39 TYPE i.
        DATA(t40) = VALUE i( ).
        DATA(t41) = VALUE string( ).
        t39 = strlen( t37 ).
        IF t39 = 0.
          t35 = abap_true.
        ELSEIF t39 <= t38.
          t40 = 0.
          t40 = t38 - t39.
          t41 = t17+t40(t39).
          IF t41 = t37.
            t35 = abap_true.
          ENDIF.
        ENDIF.
        IF t35 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t42 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t43 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t43 = t12->get_raw_rows( ).
        t42 = t43.
        DATA t45 TYPE i.
        t45 = 0.
        DO.
          DATA t47 TYPE abap_bool.
          DATA t49 TYPE i.
          t42->load( ).
          t49 = lines( t42->items ).
          t47 = xsdbool( t45 < t49 ).
          IF t47 = abap_false.
            EXIT.
          ENDIF.
          DATA(t51) = VALUE abap_bool( ).
          DATA(t52) = VALUE abap_bool( ).
          DATA(t53) = VALUE string( ).
          DATA(t55) = t45.
          t55 = t55 + 1.
          IF t42->has( t55 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t42->load( ).
          CLEAR t53.
          READ TABLE t42->items INDEX t55 INTO t53.
          DATA(t56) = |\r|.
          DATA(t57) = strlen( t53 ).
          DATA t58 TYPE i.
          DATA(t59) = VALUE i( ).
          DATA(t60) = VALUE string( ).
          t58 = strlen( t56 ).
          IF t58 = 0.
            t52 = abap_true.
          ELSEIF t58 <= t57.
            t59 = 0.
            t59 = t57 - t58.
            t60 = t53+t59(t58).
            IF t60 = t56.
              t52 = abap_true.
            ENDIF.
          ENDIF.
          t51 = xsdbool( t52 = abap_true ).
          IF t51 = abap_true.
            DATA(t63) = |Line contains carriage return|.
            DATA t65 TYPE REF TO zcl_lnt_issue.
            CLEAR t65.
            DATA t67 TYPE f.
            DATA t68 TYPE i.
            DATA(t70) = 1.
            t68 = t45 + t70.
            t67 = t68.
            DATA(t72) = VALUE string( ).
            DATA t73 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t73.
            DATA t74 TYPE string.
            t74 = |line_break_style|.
            DATA t76 TYPE string.
            t76 = |Makes sure line breaks are consistent|.
            DATA t78 TYPE string.
            DATA(t79) = |Enforces LF as newlines in ABAP and XML files\n\nabapGit does |.
            t79 = t79 && |not work with CRLF|.
            t78 = t79.
            DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t80.
            DATA(t83) = |SMIM and W3MI files are not checked.|.
            DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t84->has = abap_true.
            t84->value = t83.
            t80 = t84.
            DATA t86 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t86.
            DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t91 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t91.
            t90 = t91.
            DATA(t93) = |Whitespace|.
            t90->load( ).
            APPEND t93 TO t90->items.
            t90->save( ).
            DATA(t95) = |SingleFile|.
            t90->load( ).
            APPEND t95 TO t90->items.
            t90->save( ).
            t86 = t90.
            DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t98.
            DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t100.
            DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t102.
            DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t104.
            t73 = NEW zcl_lnt_irule_metadata( i_key = t74 i_title = t76 i_short_description = t78 i_bad_example = t98 i_good_example = t100 i_extended_information = t80 i_tags = t86 i_pragma = t102 i_pseudo_comment = t104 ).
            CREATE OBJECT t73->zlnt_view_ownkeys_b0e8086400eb.
            t73->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t106.
            t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t106 ).
            DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t107.
            IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t107 ).
            ENDIF.
            DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t108.
            IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t108 ).
            ENDIF.
            DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t109.
            IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t109 ).
            ENDIF.
            DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t110.
            IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t110 ).
            ENDIF.
            CREATE OBJECT t73->zlnt_json_ownkeys_70e5fd461788.
            t73->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t111) = |key|.
            DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t112.
            t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = t111 p1 = t112 ).
            DATA(t113) = |title|.
            DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t114.
            IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = t113 p1 = t114 ).
            ENDIF.
            DATA(t115) = |shortDescription|.
            DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t116.
            IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = t115 p1 = t116 ).
            ENDIF.
            DATA(t117) = |extendedInformation|.
            DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t118.
            IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = t117 p1 = t118 ).
            ENDIF.
            DATA(t119) = |tags|.
            DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t120.
            IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = t119 p1 = t120 ).
            ENDIF.
            t72 = t73->key.
            DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t121 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            t65 = zcl_lnt_issue=>at_row( i_file = t12 i_row = t67 i_message_26cb = t63 i_key = t72 i_severity = t121 ).
            t2->load( ).
            APPEND t65 TO t2->items.
            t2->save( ).
            EXIT.
          ENDIF.
          DATA t125 TYPE i.
          DATA(t127) = 1.
          t125 = t45 + t127.
          t45 = t125.
        ENDDO.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD initialize.
    DATA t2 TYPE REF TO zcl_lnt_line_break_style.
    DATA(t3) = i_reg_f149.
    t2 = me->i_i_sr_rl_ln_br_st_ts_ln_br_st( i_reg_d009 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_line_break_style_conf( me->g_c_i_s_r_ln_br_st_ts_ln_br_st( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_line_break_style_conf( me->g_c_i_s_r_ln_br_st_ts_ln_br_st( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_line_break_style_conf.
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
        t2 = NEW zcl_lnt_line_break_style_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_ln_br_st_ts_ln_br_st( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1561_aaad7837c35b.
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
