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
    DATA(t1) = NEW zcl_lnt_no_dynamic_stuff_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |no_dynamic_stuff|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |No dynamic stuff|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Detects dynamic calls and other dynamic language constructs|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
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
      DATA(t21) = |SingleFile|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |Security|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      t17 = t24.
      t15 = t17.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t25.
      t15 = t25.
    ENDIF.
    t14 = t15.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |CALL METHOD (lv_class)=>(lv_method).\nCALL METHOD go_calendar|.
      t29 = t29 && |->('RESET_DAY_INFO').\nCALL FUNCTION lv_function_module.\nCREA|.
      t29 = t29 && |TE OBJECT ref TYPE (lv_class).\nASSIGN (lv_name) TO <fs>.\nSOR|.
      t29 = t29 && |T tab BY (lv_field).|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t27 = t31.
    ENDIF.
    t26 = t27.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA(t34) = abap_true.
    IF t34 = abap_true.
      DATA(t35) = |cl_class=>method( ).\ngo_calendar->reset_day_info( ).\nCALL FU|.
      t35 = t35 && |NCTION 'ZFOO'.\nCREATE OBJECT ref TYPE cl_class.\nASSIGN foo T|.
      t35 = t35 && |O <fs>.\nSORT tab BY field.|.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t35.
      t33 = t36.
    ELSE.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      t33 = t37.
    ENDIF.
    t32 = t33.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t32 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t49) = |key|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |title|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |shortDescription|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |extendedInformation|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |tags|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |badExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |goodExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_sr_rl_n_dy_st_ts_n_dy_st.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_sr_rl_n_dy_st_ts_n_dy_st.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_sr_rl_n_dy_st_ts_n_dy_st.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abap_file.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->statements.
    t4 = t7.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
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
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t16) = t9.
      t15 = me->check_bf6e( i_node = t16 ).
      t14 = t15.
      DATA(t17) = VALUE abap_bool( ).
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t19) = t14.
      t18 = t19.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      t20 = t21.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = t18.
      IF t24 IS INITIAL.
        t23 = abap_true.
      ELSEIF t24->has = abap_false.
        t23 = abap_true.
      ENDIF.
      t22 = xsdbool( t23 = abap_false ).
      t17 = t22.
      IF t17 = abap_true.
        DATA(t25) = t2.
        DATA t26 TYPE REF TO zcl_lnt_issue.
        CLEAR t26.
        DATA(t27) = t1.
        DATA(t28) = t9.
        DATA t29 TYPE string.
        DATA(t30) = |Dynamic |.
        DATA t31 TYPE string.
        DATA(t32) = t14.
        t31 = t32->value.
        DATA(t33) = strlen( t30 ).
        t29 = |{ t30 }{ t31 }|.
        DATA(t34) = VALUE string( ).
        DATA t35 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t35.
        DATA t36 TYPE string.
        DATA(t37) = |no_dynamic_stuff|.
        t36 = t37.
        DATA t38 TYPE string.
        DATA(t39) = |No dynamic stuff|.
        t38 = t39.
        DATA t40 TYPE string.
        DATA(t41) = |Detects dynamic calls and other dynamic language constructs|.
        t40 = t41.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t42.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        DATA(t44) = abap_true.
        IF t44 = abap_true.
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
          t43 = t46.
        ELSE.
          DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t47.
          t43 = t47.
        ENDIF.
        t42 = t43.
        DATA t48 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t48.
        DATA t49 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t49.
        DATA(t50) = abap_true.
        IF t50 = abap_true.
          DATA t51 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t53.
          t52 = t53.
          DATA(t54) = t52.
          DATA(t55) = |SingleFile|.
          t54->load( ).
          APPEND t55 TO t54->items.
          t54->save( ).
          DATA(t56) = t52.
          DATA(t57) = |Security|.
          t56->load( ).
          APPEND t57 TO t56->items.
          t56->save( ).
          DATA(t58) = t52.
          t51 = t58.
          t49 = t51.
        ELSE.
          DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t59.
          t49 = t59.
        ENDIF.
        t48 = t49.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        DATA(t62) = abap_true.
        IF t62 = abap_true.
          DATA(t63) = |CALL METHOD (lv_class)=>(lv_method).\nCALL METHOD go_calendar|.
          t63 = t63 && |->('RESET_DAY_INFO').\nCALL FUNCTION lv_function_module.\nCREA|.
          t63 = t63 && |TE OBJECT ref TYPE (lv_class).\nASSIGN (lv_name) TO <fs>.\nSOR|.
          t63 = t63 && |T tab BY (lv_field).|.
          DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t64->has = abap_true.
          t64->value = t63.
          t61 = t64.
        ELSE.
          DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t65.
          t61 = t65.
        ENDIF.
        t60 = t61.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
        DATA(t68) = abap_true.
        IF t68 = abap_true.
          DATA(t69) = |cl_class=>method( ).\ngo_calendar->reset_day_info( ).\nCALL FU|.
          t69 = t69 && |NCTION 'ZFOO'.\nCREATE OBJECT ref TYPE cl_class.\nASSIGN foo T|.
          t69 = t69 && |O <fs>.\nSORT tab BY field.|.
          DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t70->has = abap_true.
          t70->value = t69.
          t67 = t70.
        ELSE.
          DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t71.
          t67 = t71.
        ENDIF.
        t66 = t67.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t73.
        t72 = t73.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t75.
        t74 = t75.
        t35 = NEW zcl_lnt_irule_metadata( i_key = t36 i_title = t38 i_short_description = t40 i_bad_example = t60 i_good_example = t66 i_extended_information = t42 i_tags = t48 i_pragma = t72 i_pseudo_comment = t74 ).
        CREATE OBJECT t35->zlnt_view_ownkeys_b0e8086400eb.
        t35->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t76.
        IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t76 ).
        ENDIF.
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
        DATA(t83) = |key|.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t84.
        IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t83 p1 = t84 ).
        ENDIF.
        DATA(t85) = |title|.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t85 p1 = t86 ).
        ENDIF.
        DATA(t87) = |shortDescription|.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t87 p1 = t88 ).
        ENDIF.
        DATA(t89) = |extendedInformation|.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t89 p1 = t90 ).
        ENDIF.
        DATA(t91) = |tags|.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
        ENDIF.
        DATA(t93) = |badExample|.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t94.
        IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t93 p1 = t94 ).
        ENDIF.
        DATA(t95) = |goodExample|.
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t96.
        IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
        ENDIF.
        t34 = t35->key.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t98) = me->conf.
        t97 = t98->zlnt_view_read_sr_15c06369f827( ).
        DATA t99 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t99.
        DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t100.
        t26 = zcl_lnt_issue=>at_statement( i_file = t27 i_statement = t28 i_message_26cb = t29 i_key = t34 i_severity = t97 i_fix = t99 i_alternative_fixes = t100 ).
        t25->load( ).
        APPEND t26 TO t25->items.
        t25->save( ).
      ENDIF.
    ENDDO.
    DATA(t101) = t2.
    result = t101.

  ENDMETHOD.

  METHOD check_bf6e.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zif_lnt_statement.
    DATA t3 TYPE REF TO zif_lnt_statement.
    DATA(t4) = t1.
    t3 = t4->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t2 = t3.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE abap_bool.
    DATA(t8) = me->conf.
    t7 = t8->zlnt_view_read_sr_fb8ea0614667( ).
    DATA(t9) = abap_true.
    t6 = xsdbool( t7 = t9 ).
    t5 = t6.
    IF t6 = abap_true.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE abap_bool.
      DATA(t12) = t1.
      t11 = me->dynamic_method_source( i_node = t12 ).
      DATA(t13) = abap_true.
      t10 = xsdbool( t11 = t13 ).
      t5 = t10.
    ENDIF.
    IF t5 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      DATA(t15) = abap_true.
      IF t15 = abap_true.
        DATA(t16) = |method call|.
        DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t17->has = abap_true.
        t17->value = t16.
        t14 = t17.
      ELSE.
        DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t18.
        t14 = t18.
      ENDIF.
      result = t14.
      RETURN.
    ENDIF.
    DATA t19 TYPE abap_bool.
    DATA(t20) = t2.
    t19 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_st_call_function ).
    IF t19 = abap_true.
      DATA t21 TYPE abap_bool.
      DATA t22 TYPE abap_bool.
      DATA t23 TYPE abap_bool.
      DATA(t24) = me->conf.
      t23 = t24->zlnt_view_read_sr_1aa1aee07442( ).
      DATA(t25) = abap_true.
      t22 = xsdbool( t23 = t25 ).
      t21 = t22.
      IF t22 = abap_true.
        DATA(t26) = VALUE abap_bool( ).
        DATA t27 TYPE REF TO zcl_lnt_expression_node.
        DATA t28 TYPE REF TO zcl_lnt_expression_node.
        DATA(t29) = t1.
        DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d198_f214049174db.
        t28 = t29->find_direct_expression( i_type_9913 = t30 ).
        t27 = t28.
        DATA(t31) = VALUE abap_bool( ).
        DATA(t32) = VALUE abap_bool( ).
        DATA t33 TYPE REF TO zcl_lnt_expression_node.
        DATA(t34) = t27.
        t33 = t34.
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t36.
        t35 = t36.
        DATA(t37) = VALUE abap_bool( ).
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = t33.
        IF t39 IS INITIAL.
          t38 = abap_true.
        ENDIF.
        t37 = xsdbool( t38 = abap_false ).
        t32 = t37.
        t31 = t32.
        IF t32 = abap_true.
          DATA(t40) = VALUE abap_bool( ).
          DATA(t41) = VALUE abap_bool( ).
          DATA t42 TYPE REF TO zcl_lnt_expression_node.
          DATA t43 TYPE REF TO zcl_lnt_expression_node.
          DATA(t44) = t27.
          t43 = t44.
          t42 = t43.
          DATA(t45) = VALUE abap_bool( ).
          DATA t46 TYPE REF TO zcl_lnt_expression_node.
          DATA t47 TYPE REF TO zcl_lnt_expression_node.
          DATA(t48) = t42.
          DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
          t47 = t48->find_direct_expression( i_type_9913 = t49 ).
          t46 = t47.
          DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t51.
          t50 = t51.
          DATA(t52) = VALUE abap_bool( ).
          DATA(t53) = VALUE abap_bool( ).
          DATA(t54) = t46.
          IF t54 IS INITIAL.
            t53 = abap_true.
          ENDIF.
          t52 = xsdbool( t53 = abap_false ).
          t45 = t52.
          t41 = t45.
          DATA(t55) = abap_false.
          t40 = xsdbool( t41 = t55 ).
          t31 = t40.
        ENDIF.
        t26 = t31.
        t21 = t26.
      ENDIF.
      IF t21 = abap_true.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        DATA(t57) = abap_true.
        IF t57 = abap_true.
          DATA(t58) = |CALL FUNCTION|.
          DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t59->has = abap_true.
          t59->value = t58.
          t56 = t59.
        ELSE.
          DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t60.
          t56 = t60.
        ENDIF.
        result = t56.
        RETURN.
      ENDIF.
    ELSE.
      DATA t61 TYPE abap_bool.
      DATA(t62) = t2.
      t61 = xsdbool( t62 IS BOUND AND t62 IS INSTANCE OF zcl_lnt_call_database ).
      IF t61 = abap_true.
        DATA t63 TYPE abap_bool.
        DATA t64 TYPE abap_bool.
        DATA(t65) = me->conf.
        t64 = t65->zlnt_view_read_sr_3c14c98f75e2( ).
        DATA(t66) = abap_true.
        t63 = xsdbool( t64 = t66 ).
        IF t63 = abap_true.
          DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t67.
          DATA(t68) = abap_true.
          IF t68 = abap_true.
            DATA(t69) = |CALL DATABASE PROCEDURE|.
            DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t70->has = abap_true.
            t70->value = t69.
            t67 = t70.
          ELSE.
            DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t71.
            t67 = t71.
          ENDIF.
          result = t67.
          RETURN.
        ENDIF.
      ELSE.
        DATA t72 TYPE abap_bool.
        DATA(t73) = t2.
        t72 = xsdbool( t73 IS BOUND AND t73 IS INSTANCE OF zcl_lnt_st_call_transformation ).
        IF t72 = abap_true.
          DATA t74 TYPE abap_bool.
          DATA t75 TYPE abap_bool.
          DATA t76 TYPE abap_bool.
          DATA(t77) = me->conf.
          t76 = t77->zlnt_view_read_sr_2c8b1d76135f( ).
          DATA(t78) = abap_true.
          t75 = xsdbool( t76 = t78 ).
          t74 = t75.
          IF t75 = abap_true.
            DATA(t79) = VALUE abap_bool( ).
            DATA t80 TYPE REF TO zcl_lnt_statement_node.
            DATA(t81) = t1.
            t80 = t81.
            DATA(t82) = VALUE abap_bool( ).
            DATA t83 TYPE REF TO zcl_lnt_expression_node.
            DATA t84 TYPE REF TO zcl_lnt_expression_node.
            DATA(t85) = t80.
            DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
            t84 = t85->find_first_expression( i_type_9913 = t86 ).
            t83 = t84.
            DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t88.
            t87 = t88.
            DATA(t89) = VALUE abap_bool( ).
            DATA(t90) = VALUE abap_bool( ).
            DATA(t91) = t83.
            IF t91 IS INITIAL.
              t90 = abap_true.
            ENDIF.
            t89 = xsdbool( t90 = abap_false ).
            t82 = t89.
            t79 = t82.
            t74 = t79.
          ENDIF.
          IF t74 = abap_true.
            DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t92.
            DATA(t93) = abap_true.
            IF t93 = abap_true.
              DATA(t94) = |CALL TRANSFORMATION|.
              DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t95->has = abap_true.
              t95->value = t94.
              t92 = t95.
            ELSE.
              DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t96.
              t92 = t96.
            ENDIF.
            result = t92.
            RETURN.
          ENDIF.
        ELSE.
          DATA t97 TYPE abap_bool.
          DATA(t98) = t2.
          t97 = xsdbool( t98 IS BOUND AND t98 IS INSTANCE OF zcl_lnt_st_call_transaction ).
          IF t97 = abap_true.
            DATA t99 TYPE abap_bool.
            DATA t100 TYPE abap_bool.
            DATA t101 TYPE abap_bool.
            DATA(t102) = me->conf.
            t101 = t102->zlnt_view_read_sr_adaa47a875d1( ).
            DATA(t103) = abap_true.
            t100 = xsdbool( t101 = t103 ).
            t99 = t100.
            IF t100 = abap_true.
              DATA(t104) = VALUE abap_bool( ).
              DATA t105 TYPE REF TO zcl_lnt_expression_node.
              DATA t106 TYPE REF TO zcl_lnt_expression_node.
              DATA(t107) = t1.
              DATA(t108) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
              t106 = t107->find_direct_expression( i_type_9913 = t108 ).
              t105 = t106.
              DATA(t109) = VALUE abap_bool( ).
              DATA(t110) = VALUE abap_bool( ).
              DATA t111 TYPE REF TO zcl_lnt_expression_node.
              DATA(t112) = t105.
              t111 = t112.
              DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t114.
              t113 = t114.
              DATA(t115) = VALUE abap_bool( ).
              DATA(t116) = VALUE abap_bool( ).
              DATA(t117) = t111.
              IF t117 IS INITIAL.
                t116 = abap_true.
              ENDIF.
              t115 = xsdbool( t116 = abap_false ).
              t110 = t115.
              t109 = t110.
              IF t110 = abap_true.
                DATA(t118) = VALUE abap_bool( ).
                DATA(t119) = VALUE abap_bool( ).
                DATA t120 TYPE REF TO zcl_lnt_expression_node.
                DATA t121 TYPE REF TO zcl_lnt_expression_node.
                DATA(t122) = t105.
                t121 = t122.
                t120 = t121.
                DATA(t123) = VALUE abap_bool( ).
                DATA t124 TYPE REF TO zcl_lnt_expression_node.
                DATA t125 TYPE REF TO zcl_lnt_expression_node.
                DATA(t126) = t120.
                DATA(t127) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
                t125 = t126->find_direct_expression( i_type_9913 = t127 ).
                t124 = t125.
                DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t129.
                t128 = t129.
                DATA(t130) = VALUE abap_bool( ).
                DATA(t131) = VALUE abap_bool( ).
                DATA(t132) = t124.
                IF t132 IS INITIAL.
                  t131 = abap_true.
                ENDIF.
                t130 = xsdbool( t131 = abap_false ).
                t123 = t130.
                t119 = t123.
                DATA(t133) = abap_false.
                t118 = xsdbool( t119 = t133 ).
                t109 = t118.
              ENDIF.
              t104 = t109.
              t99 = t104.
            ENDIF.
            IF t99 = abap_true.
              DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t134.
              DATA(t135) = abap_true.
              IF t135 = abap_true.
                DATA(t136) = |CALL TRANSACTION|.
                DATA(t137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t137->has = abap_true.
                t137->value = t136.
                t134 = t137.
              ELSE.
                DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t138.
                t134 = t138.
              ENDIF.
              result = t134.
              RETURN.
            ENDIF.
          ELSE.
            DATA t139 TYPE abap_bool.
            DATA(t140) = t2.
            t139 = xsdbool( t140 IS BOUND AND t140 IS INSTANCE OF zcl_lnt_st_perform ).
            IF t139 = abap_true.
              DATA t141 TYPE abap_bool.
              DATA t142 TYPE abap_bool.
              DATA t143 TYPE abap_bool.
              DATA(t144) = me->conf.
              t143 = t144->zlnt_view_read_sr_ff61ffb1e7a9( ).
              DATA(t145) = abap_true.
              t142 = xsdbool( t143 = t145 ).
              t141 = t142.
              IF t142 = abap_true.
                DATA(t146) = VALUE abap_bool( ).
                DATA t147 TYPE REF TO zcl_lnt_statement_node.
                DATA(t148) = t1.
                t147 = t148.
                DATA(t149) = VALUE abap_bool( ).
                DATA t150 TYPE REF TO zcl_lnt_expression_node.
                DATA t151 TYPE REF TO zcl_lnt_expression_node.
                DATA(t152) = t147.
                DATA(t153) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
                t151 = t152->find_first_expression( i_type_9913 = t153 ).
                t150 = t151.
                DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t155.
                t154 = t155.
                DATA(t156) = VALUE abap_bool( ).
                DATA(t157) = VALUE abap_bool( ).
                DATA(t158) = t150.
                IF t158 IS INITIAL.
                  t157 = abap_true.
                ENDIF.
                t156 = xsdbool( t157 = abap_false ).
                t149 = t156.
                t146 = t149.
                t141 = t146.
              ENDIF.
              IF t141 = abap_true.
                DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t159.
                DATA(t160) = abap_true.
                IF t160 = abap_true.
                  DATA(t161) = |PERFORM|.
                  DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t162->has = abap_true.
                  t162->value = t161.
                  t159 = t162.
                ELSE.
                  DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t163.
                  t159 = t163.
                ENDIF.
                result = t159.
                RETURN.
              ENDIF.
            ELSE.
              DATA t164 TYPE abap_bool.
              DATA(t165) = t2.
              t164 = xsdbool( t165 IS BOUND AND t165 IS INSTANCE OF zcl_lnt_st_submit ).
              IF t164 = abap_true.
                DATA t166 TYPE abap_bool.
                DATA t167 TYPE abap_bool.
                DATA t168 TYPE abap_bool.
                DATA(t169) = me->conf.
                t168 = t169->zlnt_view_read_sr_8464bbf8098d( ).
                DATA(t170) = abap_true.
                t167 = xsdbool( t168 = t170 ).
                t166 = t167.
                IF t167 = abap_true.
                  DATA(t171) = VALUE abap_bool( ).
                  DATA t172 TYPE REF TO zcl_lnt_statement_node.
                  DATA(t173) = t1.
                  t172 = t173.
                  DATA(t174) = VALUE abap_bool( ).
                  DATA t175 TYPE REF TO zcl_lnt_expression_node.
                  DATA t176 TYPE REF TO zcl_lnt_expression_node.
                  DATA(t177) = t172.
                  DATA(t178) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
                  t176 = t177->find_first_expression( i_type_9913 = t178 ).
                  t175 = t176.
                  DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t180.
                  t179 = t180.
                  DATA(t181) = VALUE abap_bool( ).
                  DATA(t182) = VALUE abap_bool( ).
                  DATA(t183) = t175.
                  IF t183 IS INITIAL.
                    t182 = abap_true.
                  ENDIF.
                  t181 = xsdbool( t182 = abap_false ).
                  t174 = t181.
                  t171 = t174.
                  t166 = t171.
                ENDIF.
                IF t166 = abap_true.
                  DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t184.
                  DATA(t185) = abap_true.
                  IF t185 = abap_true.
                    DATA(t186) = |SUBMIT|.
                    DATA(t187) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t187->has = abap_true.
                    t187->value = t186.
                    t184 = t187.
                  ELSE.
                    DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t188.
                    t184 = t188.
                  ENDIF.
                  result = t184.
                  RETURN.
                ENDIF.
              ELSE.
                DATA t189 TYPE abap_bool.
                DATA(t190) = t2.
                t189 = xsdbool( t190 IS BOUND AND t190 IS INSTANCE OF zcl_lnt_st_create_object ).
                IF t189 = abap_true.
                  DATA t191 TYPE abap_bool.
                  DATA t192 TYPE abap_bool.
                  DATA t193 TYPE abap_bool.
                  DATA(t194) = me->conf.
                  t193 = t194->zlnt_view_read_sr_7bef0f540ca6( ).
                  DATA(t195) = abap_true.
                  t192 = xsdbool( t193 = t195 ).
                  t191 = t192.
                  IF t192 = abap_true.
                    DATA(t196) = VALUE abap_bool( ).
                    DATA t197 TYPE REF TO zcl_lnt_statement_node.
                    DATA(t198) = t1.
                    t197 = t198.
                    DATA(t199) = VALUE abap_bool( ).
                    DATA t200 TYPE REF TO zcl_lnt_expression_node.
                    DATA t201 TYPE REF TO zcl_lnt_expression_node.
                    DATA(t202) = t197.
                    DATA(t203) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
                    t201 = t202->find_first_expression( i_type_9913 = t203 ).
                    t200 = t201.
                    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t205.
                    t204 = t205.
                    DATA(t206) = VALUE abap_bool( ).
                    DATA(t207) = VALUE abap_bool( ).
                    DATA(t208) = t200.
                    IF t208 IS INITIAL.
                      t207 = abap_true.
                    ENDIF.
                    t206 = xsdbool( t207 = abap_false ).
                    t199 = t206.
                    t196 = t199.
                    t191 = t196.
                  ENDIF.
                  IF t191 = abap_true.
                    DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t209.
                    DATA(t210) = abap_true.
                    IF t210 = abap_true.
                      DATA(t211) = |CREATE OBJECT|.
                      DATA(t212) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t212->has = abap_true.
                      t212->value = t211.
                      t209 = t212.
                    ELSE.
                      DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t213.
                      t209 = t213.
                    ENDIF.
                    result = t209.
                    RETURN.
                  ENDIF.
                ELSE.
                  DATA t214 TYPE abap_bool.
                  DATA(t215) = t2.
                  t214 = xsdbool( t215 IS BOUND AND t215 IS INSTANCE OF zcl_lnt_st_create_data ).
                  IF t214 = abap_true.
                    DATA t216 TYPE abap_bool.
                    DATA t217 TYPE abap_bool.
                    DATA t218 TYPE abap_bool.
                    DATA(t219) = me->conf.
                    t218 = t219->zlnt_view_read_sr_3ed8d9644cd2( ).
                    DATA(t220) = abap_true.
                    t217 = xsdbool( t218 = t220 ).
                    t216 = t217.
                    IF t217 = abap_true.
                      DATA(t221) = VALUE abap_bool( ).
                      DATA t222 TYPE REF TO zcl_lnt_statement_node.
                      DATA(t223) = t1.
                      t222 = t223.
                      DATA(t224) = VALUE abap_bool( ).
                      DATA t225 TYPE REF TO zcl_lnt_expression_node.
                      DATA t226 TYPE REF TO zcl_lnt_expression_node.
                      DATA(t227) = t222.
                      DATA(t228) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
                      t226 = t227->find_first_expression( i_type_9913 = t228 ).
                      t225 = t226.
                      DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t230.
                      t229 = t230.
                      DATA(t231) = VALUE abap_bool( ).
                      DATA(t232) = VALUE abap_bool( ).
                      DATA(t233) = t225.
                      IF t233 IS INITIAL.
                        t232 = abap_true.
                      ENDIF.
                      t231 = xsdbool( t232 = abap_false ).
                      t224 = t231.
                      t221 = t224.
                      t216 = t221.
                    ENDIF.
                    IF t216 = abap_true.
                      DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t234.
                      DATA(t235) = abap_true.
                      IF t235 = abap_true.
                        DATA(t236) = |CREATE DATA|.
                        DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t237->has = abap_true.
                        t237->value = t236.
                        t234 = t237.
                      ELSE.
                        DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t238.
                        t234 = t238.
                      ENDIF.
                      result = t234.
                      RETURN.
                    ENDIF.
                  ELSE.
                    DATA t239 TYPE abap_bool.
                    DATA(t240) = t2.
                    t239 = xsdbool( t240 IS BOUND AND t240 IS INSTANCE OF zcl_lnt_st_get_badi ).
                    IF t239 = abap_true.
                      DATA t241 TYPE abap_bool.
                      DATA t242 TYPE abap_bool.
                      DATA t243 TYPE abap_bool.
                      DATA(t244) = me->conf.
                      t243 = t244->zlnt_view_read_sr_fb9e79bea3f9( ).
                      DATA(t245) = abap_true.
                      t242 = xsdbool( t243 = t245 ).
                      t241 = t242.
                      IF t242 = abap_true.
                        DATA(t246) = VALUE abap_bool( ).
                        DATA t247 TYPE REF TO zcl_lnt_statement_node.
                        DATA(t248) = t1.
                        t247 = t248.
                        DATA(t249) = VALUE abap_bool( ).
                        DATA t250 TYPE REF TO zcl_lnt_expression_node.
                        DATA t251 TYPE REF TO zcl_lnt_expression_node.
                        DATA(t252) = t247.
                        DATA(t253) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
                        t251 = t252->find_first_expression( i_type_9913 = t253 ).
                        t250 = t251.
                        DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t255.
                        t254 = t255.
                        DATA(t256) = VALUE abap_bool( ).
                        DATA(t257) = VALUE abap_bool( ).
                        DATA(t258) = t250.
                        IF t258 IS INITIAL.
                          t257 = abap_true.
                        ENDIF.
                        t256 = xsdbool( t257 = abap_false ).
                        t249 = t256.
                        t246 = t249.
                        t241 = t246.
                      ENDIF.
                      IF t241 = abap_true.
                        DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t259.
                        DATA(t260) = abap_true.
                        IF t260 = abap_true.
                          DATA(t261) = |GET BADI|.
                          DATA(t262) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t262->has = abap_true.
                          t262->value = t261.
                          t259 = t262.
                        ELSE.
                          DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t263.
                          t259 = t263.
                        ENDIF.
                        result = t259.
                        RETURN.
                      ENDIF.
                    ELSE.
                      DATA t264 TYPE abap_bool.
                      DATA t265 TYPE abap_bool.
                      DATA(t266) = t2.
                      t265 = xsdbool( t266 IS BOUND AND t266 IS INSTANCE OF zcl_lnt_st_assign ).
                      t264 = t265.
                      IF t265 = abap_false.
                        DATA t267 TYPE abap_bool.
                        DATA(t268) = t2.
                        t267 = xsdbool( t268 IS BOUND AND t268 IS INSTANCE OF zcl_lnt_assign_local_copy ).
                        t264 = t267.
                      ENDIF.
                      IF t264 = abap_true.
                        DATA t269 TYPE abap_bool.
                        DATA t270 TYPE abap_bool.
                        DATA t271 TYPE abap_bool.
                        DATA(t272) = me->conf.
                        t271 = t272->zlnt_view_read_sr_e4e7e2a91d00( ).
                        DATA(t273) = abap_true.
                        t270 = xsdbool( t271 = t273 ).
                        t269 = t270.
                        IF t270 = abap_true.
                          DATA(t274) = VALUE abap_bool( ).
                          DATA(t275) = VALUE abap_bool( ).
                          DATA t276 TYPE REF TO zcl_lnt_statement_node.
                          DATA(t277) = t1.
                          t276 = t277.
                          DATA(t278) = VALUE abap_bool( ).
                          DATA t279 TYPE REF TO zcl_lnt_expression_node.
                          DATA t280 TYPE REF TO zcl_lnt_expression_node.
                          DATA(t281) = t276.
                          DATA(t282) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
                          t280 = t281->find_first_expression( i_type_9913 = t282 ).
                          t279 = t280.
                          DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t284.
                          t283 = t284.
                          DATA(t285) = VALUE abap_bool( ).
                          DATA(t286) = VALUE abap_bool( ).
                          DATA(t287) = t279.
                          IF t287 IS INITIAL.
                            t286 = abap_true.
                          ENDIF.
                          t285 = xsdbool( t286 = abap_false ).
                          t278 = t285.
                          t275 = t278.
                          t274 = t275.
                          IF t275 = abap_false.
                            DATA(t288) = VALUE abap_bool( ).
                            DATA t289 TYPE REF TO zcl_lnt_statement_node.
                            DATA(t290) = t1.
                            t289 = t290.
                            DATA(t291) = VALUE abap_bool( ).
                            DATA t292 TYPE REF TO zcl_lnt_expression_node.
                            CLEAR t292.
                            DATA t293 TYPE REF TO zcl_lnt_expression_node.
                            CLEAR t293.
                            DATA t294 TYPE REF TO zcl_lnt_expression_node.
                            DATA t295 TYPE REF TO zcl_lnt_expression_node.
                            DATA(t296) = t289.
                            DATA(t297) = zlnt_runtime_desc_78196487750d=>zlnt_member_d98_aa488fc184edca.
                            t295 = t296->find_direct_expression( i_type_9913 = t297 ).
                            t294 = t295.
                            DATA t298 TYPE REF TO zcl_lnt_expression_node.
                            CLEAR t298.
                            DATA(t299) = VALUE abap_bool( ).
                            DATA(t300) = t294.
                            IF t300 IS INITIAL.
                              t299 = abap_true.
                            ENDIF.
                            IF t299 = abap_true.
                              DATA t301 TYPE REF TO zcl_lnt_expression_node.
                              CLEAR t301.
                              t298 = t301.
                            ELSE.
                              DATA t302 TYPE REF TO zcl_lnt_expression_node.
                              DATA t303 TYPE REF TO zcl_lnt_expression_node.
                              DATA(t304) = t294.
                              t303 = t304.
                              DATA(t305) = |COMPONENT|.
                              t302 = t303->find_expression_after_token( i_text = t305 ).
                              t298 = t302.
                            ENDIF.
                            t293 = t298.
                            t292 = t293.
                            DATA(t306) = VALUE abap_bool( ).
                            DATA(t307) = VALUE abap_bool( ).
                            DATA t308 TYPE REF TO zcl_lnt_expression_node.
                            DATA(t309) = t292.
                            t308 = t309.
                            DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t311.
                            t310 = t311.
                            DATA(t312) = VALUE abap_bool( ).
                            DATA(t313) = VALUE abap_bool( ).
                            DATA(t314) = t308.
                            IF t314 IS INITIAL.
                              t313 = abap_true.
                            ENDIF.
                            t312 = xsdbool( t313 = abap_false ).
                            t307 = t312.
                            t306 = t307.
                            IF t307 = abap_true.
                              DATA(t315) = VALUE abap_bool( ).
                              DATA(t316) = VALUE abap_bool( ).
                              DATA t317 TYPE REF TO zcl_lnt_expression_node.
                              DATA t318 TYPE REF TO zcl_lnt_expression_node.
                              DATA(t319) = t292.
                              t318 = t319.
                              t317 = t318.
                              DATA(t320) = VALUE abap_bool( ).
                              DATA t321 TYPE REF TO zcl_lnt_expression_node.
                              DATA t322 TYPE REF TO zcl_lnt_expression_node.
                              DATA(t323) = t317.
                              DATA(t324) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
                              t322 = t323->find_direct_expression( i_type_9913 = t324 ).
                              t321 = t322.
                              DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t326.
                              t325 = t326.
                              DATA(t327) = VALUE abap_bool( ).
                              DATA(t328) = VALUE abap_bool( ).
                              DATA(t329) = t321.
                              IF t329 IS INITIAL.
                                t328 = abap_true.
                              ENDIF.
                              t327 = xsdbool( t328 = abap_false ).
                              t320 = t327.
                              t316 = t320.
                              DATA(t330) = abap_false.
                              t315 = xsdbool( t316 = t330 ).
                              t306 = t315.
                            ENDIF.
                            t291 = t306.
                            t288 = t291.
                            t274 = t288.
                          ENDIF.
                          t269 = t274.
                        ENDIF.
                        IF t269 = abap_true.
                          DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t331.
                          DATA(t332) = abap_true.
                          IF t332 = abap_true.
                            DATA(t333) = |ASSIGN|.
                            DATA(t334) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t334->has = abap_true.
                            t334->value = t333.
                            t331 = t334.
                          ELSE.
                            DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t335.
                            t331 = t335.
                          ENDIF.
                          result = t331.
                          RETURN.
                        ENDIF.
                      ELSE.
                        DATA t336 TYPE abap_bool.
                        DATA(t337) = t2.
                        t336 = xsdbool( t337 IS BOUND AND t337 IS INSTANCE OF zcl_lnt_st_export ).
                        IF t336 = abap_true.
                          DATA t338 TYPE abap_bool.
                          DATA t339 TYPE abap_bool.
                          DATA t340 TYPE abap_bool.
                          DATA(t341) = me->conf.
                          t340 = t341->zlnt_view_read_sr_59dffc7fd079( ).
                          DATA(t342) = abap_true.
                          t339 = xsdbool( t340 = t342 ).
                          t338 = t339.
                          IF t339 = abap_true.
                            DATA(t343) = VALUE abap_bool( ).
                            DATA t344 TYPE REF TO zcl_lnt_statement_node.
                            DATA(t345) = t1.
                            t344 = t345.
                            DATA(t346) = VALUE abap_bool( ).
                            DATA t347 TYPE REF TO zcl_lnt_expression_node.
                            DATA t348 TYPE REF TO zcl_lnt_expression_node.
                            DATA(t349) = t344.
                            DATA(t350) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
                            t348 = t349->find_first_expression( i_type_9913 = t350 ).
                            t347 = t348.
                            DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t352.
                            t351 = t352.
                            DATA(t353) = VALUE abap_bool( ).
                            DATA(t354) = VALUE abap_bool( ).
                            DATA(t355) = t347.
                            IF t355 IS INITIAL.
                              t354 = abap_true.
                            ENDIF.
                            t353 = xsdbool( t354 = abap_false ).
                            t346 = t353.
                            t343 = t346.
                            t338 = t343.
                          ENDIF.
                          IF t338 = abap_true.
                            DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t356.
                            DATA(t357) = abap_true.
                            IF t357 = abap_true.
                              DATA(t358) = |EXPORT|.
                              DATA(t359) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t359->has = abap_true.
                              t359->value = t358.
                              t356 = t359.
                            ELSE.
                              DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t360.
                              t356 = t360.
                            ENDIF.
                            result = t356.
                            RETURN.
                          ENDIF.
                        ELSE.
                          DATA t361 TYPE abap_bool.
                          DATA(t362) = t2.
                          t361 = xsdbool( t362 IS BOUND AND t362 IS INSTANCE OF zcl_lnt_st_import ).
                          IF t361 = abap_true.
                            DATA t363 TYPE abap_bool.
                            DATA t364 TYPE abap_bool.
                            DATA t365 TYPE abap_bool.
                            DATA(t366) = me->conf.
                            t365 = t366->zlnt_view_read_sr_59dffc7fd079( ).
                            DATA(t367) = abap_true.
                            t364 = xsdbool( t365 = t367 ).
                            t363 = t364.
                            IF t364 = abap_true.
                              DATA(t368) = VALUE abap_bool( ).
                              DATA t369 TYPE REF TO zcl_lnt_statement_node.
                              DATA(t370) = t1.
                              t369 = t370.
                              DATA(t371) = VALUE abap_bool( ).
                              DATA t372 TYPE REF TO zcl_lnt_expression_node.
                              DATA t373 TYPE REF TO zcl_lnt_expression_node.
                              DATA(t374) = t369.
                              DATA(t375) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
                              t373 = t374->find_first_expression( i_type_9913 = t375 ).
                              t372 = t373.
                              DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t377.
                              t376 = t377.
                              DATA(t378) = VALUE abap_bool( ).
                              DATA(t379) = VALUE abap_bool( ).
                              DATA(t380) = t372.
                              IF t380 IS INITIAL.
                                t379 = abap_true.
                              ENDIF.
                              t378 = xsdbool( t379 = abap_false ).
                              t371 = t378.
                              t368 = t371.
                              t363 = t368.
                            ENDIF.
                            IF t363 = abap_true.
                              DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t381.
                              DATA(t382) = abap_true.
                              IF t382 = abap_true.
                                DATA(t383) = |IMPORT|.
                                DATA(t384) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                t384->has = abap_true.
                                t384->value = t383.
                                t381 = t384.
                              ELSE.
                                DATA t385 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t385.
                                t381 = t385.
                              ENDIF.
                              result = t381.
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
                            DATA(t394) = t2.
                            t393 = xsdbool( t394 IS BOUND AND t394 IS INSTANCE OF zcl_lnt_st_at ).
                            t392 = t393.
                            IF t393 = abap_false.
                              DATA t395 TYPE abap_bool.
                              DATA(t396) = t2.
                              t395 = xsdbool( t396 IS BOUND AND t396 IS INSTANCE OF zcl_lnt_st_delete_internal ).
                              t392 = t395.
                            ENDIF.
                            t391 = t392.
                            IF t392 = abap_false.
                              DATA t397 TYPE abap_bool.
                              DATA(t398) = t2.
                              t397 = xsdbool( t398 IS BOUND AND t398 IS INSTANCE OF zcl_lnt_st_insert_internal ).
                              t391 = t397.
                            ENDIF.
                            t390 = t391.
                            IF t391 = abap_false.
                              DATA t399 TYPE abap_bool.
                              DATA(t400) = t2.
                              t399 = xsdbool( t400 IS BOUND AND t400 IS INSTANCE OF zcl_lnt_st_loop ).
                              t390 = t399.
                            ENDIF.
                            t389 = t390.
                            IF t390 = abap_false.
                              DATA t401 TYPE abap_bool.
                              DATA(t402) = t2.
                              t401 = xsdbool( t402 IS BOUND AND t402 IS INSTANCE OF zcl_lnt_st_modify_internal ).
                              t389 = t401.
                            ENDIF.
                            t388 = t389.
                            IF t389 = abap_false.
                              DATA t403 TYPE abap_bool.
                              DATA(t404) = t2.
                              t403 = xsdbool( t404 IS BOUND AND t404 IS INSTANCE OF zcl_lnt_st_read_table ).
                              t388 = t403.
                            ENDIF.
                            t387 = t388.
                            IF t388 = abap_false.
                              DATA t405 TYPE abap_bool.
                              DATA(t406) = t2.
                              t405 = xsdbool( t406 IS BOUND AND t406 IS INSTANCE OF zcl_lnt_st_sort ).
                              t387 = t405.
                            ENDIF.
                            t386 = t387.
                            IF t387 = abap_false.
                              DATA t407 TYPE abap_bool.
                              DATA(t408) = t2.
                              t407 = xsdbool( t408 IS BOUND AND t408 IS INSTANCE OF zcl_lnt_sort_dataset ).
                              t386 = t407.
                            ENDIF.
                            IF t386 = abap_true.
                              DATA t409 TYPE abap_bool.
                              DATA t410 TYPE abap_bool.
                              DATA t411 TYPE abap_bool.
                              DATA(t412) = me->conf.
                              t411 = t412->zlnt_view_read_sr_510a60fc0d95( ).
                              DATA(t413) = abap_true.
                              t410 = xsdbool( t411 = t413 ).
                              t409 = t410.
                              IF t410 = abap_true.
                                DATA(t414) = VALUE abap_bool( ).
                                DATA t415 TYPE REF TO zcl_lnt_statement_node.
                                DATA(t416) = t1.
                                t415 = t416.
                                DATA(t417) = VALUE abap_bool( ).
                                DATA t418 TYPE REF TO zcl_lnt_expression_node.
                                DATA t419 TYPE REF TO zcl_lnt_expression_node.
                                DATA(t420) = t415.
                                DATA(t421) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
                                t419 = t420->find_first_expression( i_type_9913 = t421 ).
                                t418 = t419.
                                DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                CLEAR t423.
                                t422 = t423.
                                DATA(t424) = VALUE abap_bool( ).
                                DATA(t425) = VALUE abap_bool( ).
                                DATA(t426) = t418.
                                IF t426 IS INITIAL.
                                  t425 = abap_true.
                                ENDIF.
                                t424 = xsdbool( t425 = abap_false ).
                                t417 = t424.
                                t414 = t417.
                                t409 = t414.
                              ENDIF.
                              IF t409 = abap_true.
                                DATA t427 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t427.
                                DATA(t428) = abap_true.
                                IF t428 = abap_true.
                                  DATA(t429) = |internal table access|.
                                  DATA(t430) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                  t430->has = abap_true.
                                  t430->value = t429.
                                  t427 = t430.
                                ELSE.
                                  DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t431.
                                  t427 = t431.
                                ENDIF.
                                result = t427.
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
    DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t432.
    result = t432.

  ENDMETHOD.

  METHOD dynamic_method_source.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = t1.
    DATA(t4) = zlnt_runtime_desc_78196487750d=>zlnt_member_d237_6d1df3154820.
    t2 = t3->find_all_expressions( i_type_9913 = t4 ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
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
      DATA(t10) = VALUE abap_bool( ).
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      DATA(t13) = t5.
      DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
      t12 = t13->find_direct_expression( i_type_9913 = t14 ).
      t11 = t12.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      t15 = t16.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = t11.
      IF t19 IS INITIAL.
        t18 = abap_true.
      ENDIF.
      t17 = xsdbool( t18 = abap_false ).
      t10 = t17.
      IF t10 = abap_true.
        DATA(t20) = abap_true.
        result = t20.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t21) = abap_false.
    result = t21.

  ENDMETHOD.

  METHOD dynamic_assign_component.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = t1.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d98_aa488fc184edca.
    t5 = t6->find_direct_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t4.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t11.
      t8 = t11.
    ELSE.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA(t14) = t4.
      t13 = t14.
      DATA(t15) = |COMPONENT|.
      t12 = t13->find_expression_after_token( i_text = t15 ).
      t8 = t12.
    ENDIF.
    t3 = t8.
    t2 = t3.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = VALUE abap_bool( ).
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA(t19) = t2.
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    t20 = t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t18.
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    t22 = xsdbool( t23 = abap_false ).
    t17 = t22.
    t16 = t17.
    IF t17 = abap_true.
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      DATA(t29) = t2.
      t28 = t29.
      t27 = t28.
      DATA(t30) = VALUE abap_bool( ).
      DATA t31 TYPE REF TO zcl_lnt_expression_node.
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      DATA(t33) = t27.
      DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
      t32 = t33->find_direct_expression( i_type_9913 = t34 ).
      t31 = t32.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      t35 = t36.
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = t31.
      IF t39 IS INITIAL.
        t38 = abap_true.
      ENDIF.
      t37 = xsdbool( t38 = abap_false ).
      t30 = t37.
      t26 = t30.
      DATA(t40) = abap_false.
      t25 = xsdbool( t26 = t40 ).
      t16 = t25.
    ENDIF.
    result = t16.

  ENDMETHOD.

  METHOD has_dynamic.
    DATA(t1) = i_node.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t3.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    t9 = xsdbool( t10 = abap_false ).
    t2 = t9.
    result = t2.

  ENDMETHOD.

  METHOD not_literal.
    DATA(t1) = i_node.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t4.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t8 = xsdbool( t9 = abap_false ).
    t3 = t8.
    t2 = t3.
    IF t3 = abap_true.
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = VALUE abap_bool( ).
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = t1.
      t14 = t15.
      t13 = t14.
      DATA(t16) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      DATA(t19) = t13.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
      t18 = t19->find_direct_expression( i_type_9913 = t20 ).
      t17 = t18.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      t21 = t22.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = t17.
      IF t25 IS INITIAL.
        t24 = abap_true.
      ENDIF.
      t23 = xsdbool( t24 = abap_false ).
      t16 = t23.
      t12 = t16.
      DATA(t26) = abap_false.
      t11 = xsdbool( t12 = t26 ).
      t2 = t11.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD is_literal.
    DATA(t1) = i_node.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t3.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    t9 = xsdbool( t10 = abap_false ).
    t2 = t9.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_no_dynamic_stuff_conf( me->g_c_i_sr_rl_n_dy_st_ts_n_dy_st( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_no_dynamic_stuff_conf( me->g_c_i_sr_rl_n_dy_st_ts_n_dy_st( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_no_dynamic_stuff_conf.
    CLEAR t1.
    CLEAR t1.
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
          CLEAR t2.
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
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_sr_rl_n_dy_st_ts_n_dy_st( i_file = i_file ) ).
    result = t1.

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
