* TS: src/rules/no_dynamic_stuff.ts:39:1 NoDynamicStuff
CLASS zcl_lnt_no_dynamic_stuff DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_no_dynamic_stuff_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_sr_rl_n_dy_st_ts_n_dy_st RETURNING VALUE(result) TYPE REF TO zcl_lnt_no_dynamic_stuff_conf.
    METHODS s_c_i_sr_rl_n_dy_st_ts_n_dy_st IMPORTING i_conf TYPE REF TO zcl_lnt_no_dynamic_stuff_conf.
    METHODS r_p_i_sr_rl_n_dy_st_ts_n_dy_st IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_bf6e IMPORTING i_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS dynamic_method_source IMPORTING i_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS dynamic_assign_component IMPORTING i_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS has_dynamic IMPORTING i_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS not_literal IMPORTING i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_literal IMPORTING i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_no_dynamic_stuff IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_no_dynamic_stuff_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Dynamic constructs cannot be checked statically, they are no|.
    t11 = t11 && |t found by\nwhere-used lists and refactorings, and they can i|.
    t11 = t11 && |ntroduce injection vulnerabilities.\n\nDynamic tokens are also|.
    t11 = t11 && | reported when containing a literal, eg. CALL METHOD go_cale|.
    t11 = t11 && |ndar->('RESET_DAY_INFO'),\nthe syntax check does not resolve |.
    t11 = t11 && |these either, so they behave like any other dynamic token.\n\n|.
    t11 = t11 && |Dynamic SQL is reported by rule dangerous_statement.|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Security| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t29) = |CALL METHOD (lv_class)=>(lv_method).\nCALL METHOD go_calendar|.
    t29 = t29 && |->('RESET_DAY_INFO').\nCALL FUNCTION lv_function_module.\nCREA|.
    t29 = t29 && |TE OBJECT ref TYPE (lv_class).\nASSIGN (lv_name) TO <fs>.\nSOR|.
    t29 = t29 && |T tab BY (lv_field).|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA(t35) = |cl_class=>method( ).\ngo_calendar->reset_day_info( ).\nCALL FU|.
    t35 = t35 && |NCTION 'ZFOO'.\nCREATE OBJECT ref TYPE cl_class.\nASSIGN foo T|.
    t35 = t35 && |O <fs>.\nSORT tab BY field.|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |no_dynamic_stuff| i_title = |No dynamic stuff| i_short_description = |Detects dynamic calls and other dynamic language constructs| i_bad_example = t26 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t50 ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_sr_rl_n_dy_st_ts_n_dy_st.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_sr_rl_n_dy_st_ts_n_dy_st.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_sr_rl_n_dy_st_ts_n_dy_st.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->statements.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t4->load( ).
      IF t11 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t4->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t14 = me->check_bf6e( i_node = t9 ).
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t18 = t14.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      DATA(t23) = VALUE abap_bool( ).
      IF t18 IS INITIAL.
        t23 = abap_true.
      ELSEIF t18->has = abap_false.
        t23 = abap_true.
      ENDIF.
      IF xsdbool( t23 = abap_false ) = abap_true.
        DATA t26 TYPE REF TO zcl_lnt_issue.
        CLEAR t26.
        DATA t29 TYPE string.
        DATA(t30) = |Dynamic |.
        DATA t31 TYPE string.
        t31 = t14->value.
        DATA(t33) = strlen( t30 ).
        t29 = |{ t30 }{ t31 }|.
        DATA(t34) = VALUE string( ).
        DATA t35 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t35.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t42.
        DATA(t45) = |Dynamic constructs cannot be checked statically, they are no|.
        t45 = t45 && |t found by\nwhere-used lists and refactorings, and they can i|.
        t45 = t45 && |ntroduce injection vulnerabilities.\n\nDynamic tokens are also|.
        t45 = t45 && | reported when containing a literal, eg. CALL METHOD go_cale|.
        t45 = t45 && |ndar->('RESET_DAY_INFO'),\nthe syntax check does not resolve |.
        t45 = t45 && |these either, so they behave like any other dynamic token.\n\n|.
        t45 = t45 && |Dynamic SQL is reported by rule dangerous_statement.|.
        DATA(t46) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t46->has = abap_true.
        t46->value = t45.
        t42 = t46.
        DATA t48 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t48.
        DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t52.
        t52->load( ).
        APPEND |SingleFile| TO t52->items.
        t52->save( ).
        t52->load( ).
        APPEND |Security| TO t52->items.
        t52->save( ).
        t48 = t52.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        DATA(t63) = |CALL METHOD (lv_class)=>(lv_method).\nCALL METHOD go_calendar|.
        t63 = t63 && |->('RESET_DAY_INFO').\nCALL FUNCTION lv_function_module.\nCREA|.
        t63 = t63 && |TE OBJECT ref TYPE (lv_class).\nASSIGN (lv_name) TO <fs>.\nSOR|.
        t63 = t63 && |T tab BY (lv_field).|.
        DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t64->has = abap_true.
        t64->value = t63.
        t60 = t64.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        DATA(t69) = |cl_class=>method( ).\ngo_calendar->reset_day_info( ).\nCALL FU|.
        t69 = t69 && |NCTION 'ZFOO'.\nCREATE OBJECT ref TYPE cl_class.\nASSIGN foo T|.
        t69 = t69 && |O <fs>.\nSORT tab BY field.|.
        DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t70->has = abap_true.
        t70->value = t69.
        t66 = t70.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        t35 = NEW zcl_lnt_irule_metadata( i_key = |no_dynamic_stuff| i_title = |No dynamic stuff| i_short_description = |Detects dynamic calls and other dynamic language constructs| i_bad_example = t60 i_good_example = t66 i_extended_information = t42 i_tags = t48 i_pragma = t72 i_pseudo_comment = t74 ).
        CREATE OBJECT t35->zlnt_view_ownkeys_b0e8086400eb.
        t35->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t76.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t76 ).
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t77.
        IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t77 ).
        ENDIF.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t78 ).
        ENDIF.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t79 ).
        ENDIF.
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t80.
        IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t80 ).
        ENDIF.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t81 ).
        ENDIF.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t82 ).
        ENDIF.
        CREATE OBJECT t35->zlnt_json_ownkeys_70e5fd461788.
        t35->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t84.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t84 ).
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t86 ).
        ENDIF.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t88 ).
        ENDIF.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t90 ).
        ENDIF.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t92 ).
        ENDIF.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t94.
        IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t94 ).
        ENDIF.
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t96.
        IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t96 ).
        ENDIF.
        t34 = t35->key.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t97 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t99 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t99.
        DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t100.
        t26 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t9 i_message_26cb = t29 i_key = t34 i_severity = t97 i_fix = t99 i_alternative_fixes = t100 ).
        t2->load( ).
        APPEND t26 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD check_bf6e.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zif_lnt_statement.
    t2 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE abap_bool.
    t7 = me->conf->zlnt_view_read_sr_fb8ea0614667( ).
    t6 = xsdbool( t7 = abap_true ).
    t5 = t6.
    IF t6 = abap_true.
      DATA t11 TYPE abap_bool.
      t11 = me->dynamic_method_source( i_node = t1 ).
      t5 = xsdbool( t11 = abap_true ).
    ENDIF.
    IF t5 = abap_true.
      DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t17->has = abap_true.
      t17->value = |method call|.
      result = t17.
      RETURN.
    ENDIF.
    IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_call_function ) = abap_true.
      DATA t21 TYPE abap_bool.
      DATA t22 TYPE abap_bool.
      DATA t23 TYPE abap_bool.
      t23 = me->conf->zlnt_view_read_sr_1aa1aee07442( ).
      t22 = xsdbool( t23 = abap_true ).
      t21 = t22.
      IF t22 = abap_true.
        DATA t27 TYPE REF TO zcl_lnt_expression_node.
        DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d198_f214049174db.
        t27 = t1->find_direct_expression( i_type_9913 = t30 ).
        DATA(t31) = VALUE abap_bool( ).
        DATA(t32) = VALUE abap_bool( ).
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t32 = xsdbool( xsdbool( t27 IS INITIAL ) = abap_false ).
        t31 = t32.
        IF t32 = abap_true.
          DATA t47 TYPE REF TO zcl_lnt_expression_node.
          DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
          t47 = t27->find_direct_expression( i_type_9913 = t49 ).
          DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t31 = xsdbool( xsdbool( xsdbool( t47 IS INITIAL ) = abap_false ) = abap_false ).
        ENDIF.
        t21 = t31.
      ENDIF.
      IF t21 = abap_true.
        DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t59->has = abap_true.
        t59->value = |CALL FUNCTION|.
        result = t59.
        RETURN.
      ENDIF.
    ELSE.
      IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_call_database ) = abap_true.
        DATA t64 TYPE abap_bool.
        t64 = me->conf->zlnt_view_read_sr_3c14c98f75e2( ).
        IF xsdbool( t64 = abap_true ) = abap_true.
          DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t70->has = abap_true.
          t70->value = |CALL DATABASE PROCEDURE|.
          result = t70.
          RETURN.
        ENDIF.
      ELSE.
        IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_call_transformation ) = abap_true.
          DATA t74 TYPE abap_bool.
          DATA t75 TYPE abap_bool.
          DATA t76 TYPE abap_bool.
          t76 = me->conf->zlnt_view_read_sr_2c8b1d76135f( ).
          t75 = xsdbool( t76 = abap_true ).
          t74 = t75.
          IF t75 = abap_true.
            DATA t84 TYPE REF TO zcl_lnt_expression_node.
            DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
            t84 = t1->find_first_expression( i_type_9913 = t86 ).
            DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t74 = xsdbool( xsdbool( t84 IS INITIAL ) = abap_false ).
          ENDIF.
          IF t74 = abap_true.
            DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t95->has = abap_true.
            t95->value = |CALL TRANSFORMATION|.
            result = t95.
            RETURN.
          ENDIF.
        ELSE.
          IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_call_transaction ) = abap_true.
            DATA t99 TYPE abap_bool.
            DATA t100 TYPE abap_bool.
            DATA t101 TYPE abap_bool.
            t101 = me->conf->zlnt_view_read_sr_adaa47a875d1( ).
            t100 = xsdbool( t101 = abap_true ).
            t99 = t100.
            IF t100 = abap_true.
              DATA t105 TYPE REF TO zcl_lnt_expression_node.
              DATA(t108) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
              t105 = t1->find_direct_expression( i_type_9913 = t108 ).
              DATA(t109) = VALUE abap_bool( ).
              DATA(t110) = VALUE abap_bool( ).
              DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t110 = xsdbool( xsdbool( t105 IS INITIAL ) = abap_false ).
              t109 = t110.
              IF t110 = abap_true.
                DATA t125 TYPE REF TO zcl_lnt_expression_node.
                DATA(t127) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
                t125 = t105->find_direct_expression( i_type_9913 = t127 ).
                DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t109 = xsdbool( xsdbool( xsdbool( t125 IS INITIAL ) = abap_false ) = abap_false ).
              ENDIF.
              t99 = t109.
            ENDIF.
            IF t99 = abap_true.
              DATA(t137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t137->has = abap_true.
              t137->value = |CALL TRANSACTION|.
              result = t137.
              RETURN.
            ENDIF.
          ELSE.
            IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_perform ) = abap_true.
              DATA t141 TYPE abap_bool.
              DATA t142 TYPE abap_bool.
              DATA t143 TYPE abap_bool.
              t143 = me->conf->zlnt_view_read_sr_ff61ffb1e7a9( ).
              t142 = xsdbool( t143 = abap_true ).
              t141 = t142.
              IF t142 = abap_true.
                DATA t151 TYPE REF TO zcl_lnt_expression_node.
                DATA(t153) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
                t151 = t1->find_first_expression( i_type_9913 = t153 ).
                DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t141 = xsdbool( xsdbool( t151 IS INITIAL ) = abap_false ).
              ENDIF.
              IF t141 = abap_true.
                DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t162->has = abap_true.
                t162->value = |PERFORM|.
                result = t162.
                RETURN.
              ENDIF.
            ELSE.
              IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_submit ) = abap_true.
                DATA t166 TYPE abap_bool.
                DATA t167 TYPE abap_bool.
                DATA t168 TYPE abap_bool.
                t168 = me->conf->zlnt_view_read_sr_8464bbf8098d( ).
                t167 = xsdbool( t168 = abap_true ).
                t166 = t167.
                IF t167 = abap_true.
                  DATA t176 TYPE REF TO zcl_lnt_expression_node.
                  DATA(t178) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
                  t176 = t1->find_first_expression( i_type_9913 = t178 ).
                  DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t166 = xsdbool( xsdbool( t176 IS INITIAL ) = abap_false ).
                ENDIF.
                IF t166 = abap_true.
                  DATA(t187) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t187->has = abap_true.
                  t187->value = |SUBMIT|.
                  result = t187.
                  RETURN.
                ENDIF.
              ELSE.
                IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_create_object ) = abap_true.
                  DATA t191 TYPE abap_bool.
                  DATA t192 TYPE abap_bool.
                  DATA t193 TYPE abap_bool.
                  t193 = me->conf->zlnt_view_read_sr_7bef0f540ca6( ).
                  t192 = xsdbool( t193 = abap_true ).
                  t191 = t192.
                  IF t192 = abap_true.
                    DATA t201 TYPE REF TO zcl_lnt_expression_node.
                    DATA(t203) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
                    t201 = t1->find_first_expression( i_type_9913 = t203 ).
                    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t191 = xsdbool( xsdbool( t201 IS INITIAL ) = abap_false ).
                  ENDIF.
                  IF t191 = abap_true.
                    DATA(t212) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t212->has = abap_true.
                    t212->value = |CREATE OBJECT|.
                    result = t212.
                    RETURN.
                  ENDIF.
                ELSE.
                  IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_create_data ) = abap_true.
                    DATA t216 TYPE abap_bool.
                    DATA t217 TYPE abap_bool.
                    DATA t218 TYPE abap_bool.
                    t218 = me->conf->zlnt_view_read_sr_3ed8d9644cd2( ).
                    t217 = xsdbool( t218 = abap_true ).
                    t216 = t217.
                    IF t217 = abap_true.
                      DATA t226 TYPE REF TO zcl_lnt_expression_node.
                      DATA(t228) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
                      t226 = t1->find_first_expression( i_type_9913 = t228 ).
                      DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t216 = xsdbool( xsdbool( t226 IS INITIAL ) = abap_false ).
                    ENDIF.
                    IF t216 = abap_true.
                      DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t237->has = abap_true.
                      t237->value = |CREATE DATA|.
                      result = t237.
                      RETURN.
                    ENDIF.
                  ELSE.
                    IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_get_badi ) = abap_true.
                      DATA t241 TYPE abap_bool.
                      DATA t242 TYPE abap_bool.
                      DATA t243 TYPE abap_bool.
                      t243 = me->conf->zlnt_view_read_sr_fb9e79bea3f9( ).
                      t242 = xsdbool( t243 = abap_true ).
                      t241 = t242.
                      IF t242 = abap_true.
                        DATA t251 TYPE REF TO zcl_lnt_expression_node.
                        DATA(t253) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
                        t251 = t1->find_first_expression( i_type_9913 = t253 ).
                        DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        t241 = xsdbool( xsdbool( t251 IS INITIAL ) = abap_false ).
                      ENDIF.
                      IF t241 = abap_true.
                        DATA(t262) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t262->has = abap_true.
                        t262->value = |GET BADI|.
                        result = t262.
                        RETURN.
                      ENDIF.
                    ELSE.
                      DATA t264 TYPE abap_bool.
                      DATA t265 TYPE abap_bool.
                      t265 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_assign ).
                      t264 = t265.
                      IF t265 = abap_false.
                        t264 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_assign_local_copy ).
                      ENDIF.
                      IF t264 = abap_true.
                        DATA t269 TYPE abap_bool.
                        DATA t270 TYPE abap_bool.
                        DATA t271 TYPE abap_bool.
                        t271 = me->conf->zlnt_view_read_sr_e4e7e2a91d00( ).
                        t270 = xsdbool( t271 = abap_true ).
                        t269 = t270.
                        IF t270 = abap_true.
                          DATA(t274) = VALUE abap_bool( ).
                          DATA(t275) = VALUE abap_bool( ).
                          DATA t280 TYPE REF TO zcl_lnt_expression_node.
                          DATA(t282) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
                          t280 = t1->find_first_expression( i_type_9913 = t282 ).
                          DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          t275 = xsdbool( xsdbool( t280 IS INITIAL ) = abap_false ).
                          t274 = t275.
                          IF t275 = abap_false.
                            DATA t292 TYPE REF TO zcl_lnt_expression_node.
                            DATA t294 TYPE REF TO zcl_lnt_expression_node.
                            DATA(t297) = zlnt_runtime_desc_78196487750d=>zlnt_member_d98_aa488fc184edca.
                            t294 = t1->find_direct_expression( i_type_9913 = t297 ).
                            DATA t298 TYPE REF TO zcl_lnt_expression_node.
                            IF xsdbool( t294 IS INITIAL ) = abap_true.
                            ELSE.
                              t298 = t294->find_expression_after_token( i_text = |COMPONENT| ).
                            ENDIF.
                            t292 = t298.
                            DATA(t306) = VALUE abap_bool( ).
                            DATA(t307) = VALUE abap_bool( ).
                            DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            t307 = xsdbool( xsdbool( t292 IS INITIAL ) = abap_false ).
                            t306 = t307.
                            IF t307 = abap_true.
                              DATA t322 TYPE REF TO zcl_lnt_expression_node.
                              DATA(t324) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
                              t322 = t292->find_direct_expression( i_type_9913 = t324 ).
                              DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              t306 = xsdbool( xsdbool( xsdbool( t322 IS INITIAL ) = abap_false ) = abap_false ).
                            ENDIF.
                            t274 = t306.
                          ENDIF.
                          t269 = t274.
                        ENDIF.
                        IF t269 = abap_true.
                          DATA(t334) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t334->has = abap_true.
                          t334->value = |ASSIGN|.
                          result = t334.
                          RETURN.
                        ENDIF.
                      ELSE.
                        IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_export ) = abap_true.
                          DATA t338 TYPE abap_bool.
                          DATA t339 TYPE abap_bool.
                          DATA t340 TYPE abap_bool.
                          t340 = me->conf->zlnt_view_read_sr_59dffc7fd079( ).
                          t339 = xsdbool( t340 = abap_true ).
                          t338 = t339.
                          IF t339 = abap_true.
                            DATA t348 TYPE REF TO zcl_lnt_expression_node.
                            DATA(t350) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
                            t348 = t1->find_first_expression( i_type_9913 = t350 ).
                            DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            t338 = xsdbool( xsdbool( t348 IS INITIAL ) = abap_false ).
                          ENDIF.
                          IF t338 = abap_true.
                            DATA(t359) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t359->has = abap_true.
                            t359->value = |EXPORT|.
                            result = t359.
                            RETURN.
                          ENDIF.
                        ELSE.
                          IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_import ) = abap_true.
                            DATA t363 TYPE abap_bool.
                            DATA t364 TYPE abap_bool.
                            DATA t365 TYPE abap_bool.
                            t365 = me->conf->zlnt_view_read_sr_59dffc7fd079( ).
                            t364 = xsdbool( t365 = abap_true ).
                            t363 = t364.
                            IF t364 = abap_true.
                              DATA t373 TYPE REF TO zcl_lnt_expression_node.
                              DATA(t375) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
                              t373 = t1->find_first_expression( i_type_9913 = t375 ).
                              DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              t363 = xsdbool( xsdbool( t373 IS INITIAL ) = abap_false ).
                            ENDIF.
                            IF t363 = abap_true.
                              DATA(t384) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t384->has = abap_true.
                              t384->value = |IMPORT|.
                              result = t384.
                              RETURN.
                            ENDIF.
                          ELSE.
                            DATA(t386) = VALUE abap_bool( ).
                            DATA(t387) = VALUE abap_bool( ).
                            DATA(t388) = VALUE abap_bool( ).
                            DATA(t389) = VALUE abap_bool( ).
                            DATA(t390) = VALUE abap_bool( ).
                            DATA(t391) = VALUE abap_bool( ).
                            DATA t392 TYPE abap_bool.
                            DATA t393 TYPE abap_bool.
                            t393 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_at ).
                            t392 = t393.
                            IF t393 = abap_false.
                              t392 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_delete_internal ).
                            ENDIF.
                            t391 = t392.
                            IF t392 = abap_false.
                              t391 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_insert_internal ).
                            ENDIF.
                            t390 = t391.
                            IF t391 = abap_false.
                              t390 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_loop ).
                            ENDIF.
                            t389 = t390.
                            IF t390 = abap_false.
                              t389 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_modify_internal ).
                            ENDIF.
                            t388 = t389.
                            IF t389 = abap_false.
                              t388 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_read_table ).
                            ENDIF.
                            t387 = t388.
                            IF t388 = abap_false.
                              t387 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_sort ).
                            ENDIF.
                            t386 = t387.
                            IF t387 = abap_false.
                              t386 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_sort_dataset ).
                            ENDIF.
                            IF t386 = abap_true.
                              DATA t409 TYPE abap_bool.
                              DATA t410 TYPE abap_bool.
                              DATA t411 TYPE abap_bool.
                              t411 = me->conf->zlnt_view_read_sr_510a60fc0d95( ).
                              t410 = xsdbool( t411 = abap_true ).
                              t409 = t410.
                              IF t410 = abap_true.
                                DATA t419 TYPE REF TO zcl_lnt_expression_node.
                                DATA(t421) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
                                t419 = t1->find_first_expression( i_type_9913 = t421 ).
                                DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                t409 = xsdbool( xsdbool( t419 IS INITIAL ) = abap_false ).
                              ENDIF.
                              IF t409 = abap_true.
                                DATA(t430) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                t430->has = abap_true.
                                t430->value = |internal table access|.
                                result = t430.
                                RETURN.
                              ENDIF.
                            ENDIF.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD dynamic_method_source.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = zlnt_runtime_desc_78196487750d=>zlnt_member_d237_6d1df3154820.
    t2 = i_node->find_all_expressions( i_type_9913 = t4 ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO object.
    DATA(t7) = VALUE i( ).
    DO.
      t2->load( ).
      IF t7 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t2->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
      t12 = t5->find_direct_expression( i_type_9913 = t14 ).
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      IF xsdbool( xsdbool( t12 IS INITIAL ) = abap_false ) = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD dynamic_assign_component.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d98_aa488fc184edca.
    t4 = i_node->find_direct_expression( i_type_9913 = t7 ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
    ELSE.
      t8 = t4->find_expression_after_token( i_text = |COMPONENT| ).
    ENDIF.
    t2 = t8.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = VALUE abap_bool( ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t17 = xsdbool( xsdbool( t2 IS INITIAL ) = abap_false ).
    t16 = t17.
    IF t17 = abap_true.
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
      t32 = t2->find_direct_expression( i_type_9913 = t34 ).
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t16 = xsdbool( xsdbool( xsdbool( t32 IS INITIAL ) = abap_false ) = abap_false ).
    ENDIF.
    result = t16.

  ENDMETHOD.

  METHOD has_dynamic.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t4 = i_node->find_first_expression( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    result = xsdbool( xsdbool( t4 IS INITIAL ) = abap_false ).

  ENDMETHOD.

  METHOD not_literal.
    DATA(t1) = i_node.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = xsdbool( xsdbool( t1 IS INITIAL ) = abap_false ).
    t2 = t3.
    IF t3 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
      t18 = t1->find_direct_expression( i_type_9913 = t20 ).
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t2 = xsdbool( xsdbool( xsdbool( t18 IS INITIAL ) = abap_false ) = abap_false ).
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD is_literal.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    t4 = i_node->find_direct_expression( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    result = xsdbool( xsdbool( t4 IS INITIAL ) = abap_false ).

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_no_dynamic_stuff_conf( me->g_c_i_sr_rl_n_dy_st_ts_n_dy_st( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_no_dynamic_stuff_conf( me->g_c_i_sr_rl_n_dy_st_ts_n_dy_st( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_no_dynamic_stuff_conf.
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
        t1 = NEW zcl_lnt_no_dynamic_stuff_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_sr_rl_n_dy_st_ts_n_dy_st( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_sr_rl_n_dy_st_ts_n_dy_st( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1611_fab3198c1882.
  ENDMETHOD.
ENDCLASS.
