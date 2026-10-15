* TS: src/rules/select_single_full_key.ts:22:1 SelectSingleFullKey
CLASS zcl_lnt_select_single_full_key DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_slct_sngl_fll_ky_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS i_i_s_r_s_s_f_k_ts_sl_sn_fl_ky IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_select_single_full_key.
    METHODS g_c_i_s_r_s_s_f_k_t_s_sn_fl_ky RETURNING VALUE(result) TYPE REF TO zcl_lnt_slct_sngl_fll_ky_cnf.
    METHODS s_c_i_s_r_s_s_f_k_t_s_sn_fl_ky IMPORTING i_conf TYPE REF TO zcl_lnt_slct_sngl_fll_ky_cnf.
    METHODS build_fix IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_fix.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_reference IMPORTING i_position_a3fd TYPE REF TO zcl_lnt_position i_spaghetti TYPE REF TO zif_lnt_spaghetti_scope i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
CLASS zcl_lnt_select_single_full_key IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_slct_sngl_fll_ky_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |select_single_full_key|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Detect SELECT SINGLE which are possibily not unique|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Detect SELECT SINGLE which are possibily not unique|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Table definitions must be known, ie. inside the errorNamespa|.
      t11 = t11 && |ce\n\nIf the statement contains a JOIN it is not checked|.
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
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA(t17) = |EC CI_NOORDER|.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t17.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t15 = t19.
    ENDIF.
    t14 = t15.
    DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t25.
      t24 = t25.
      DATA(t26) = t24.
      DATA(t27) = |Quickfix|.
      t26->load( ).
      APPEND t27 TO t26->items.
      t26->save( ).
      DATA(t28) = t24.
      t23 = t28.
      t21 = t23.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t29.
      t21 = t29.
    ENDIF.
    t20 = t21.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t30 i_good_example = t32 i_extended_information = t8 i_tags = t20 i_pragma = t34 i_pseudo_comment = t14 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t42) = |key|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    ENDIF.
    DATA(t44) = |title|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = |shortDescription|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |extendedInformation|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |pseudoComment|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |tags|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD i_i_s_r_s_s_f_k_ts_sl_sn_fl_ky.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

  ENDMETHOD.

  METHOD g_c_i_s_r_s_s_f_k_t_s_sn_fl_ky.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_slct_sngl_fll_ky_cnf.
    DATA(t3) = me->conf.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      DATA(t8) = NEW zcl_lnt_slct_sngl_fll_ky_cnf( ).
      me->conf = t8.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    ENDIF.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t12) = me->conf.
    t11 = t12->zlnt_view_read_sr_fcd7d4ea2872( ).
    t10 = t11.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t10.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ELSEIF t16->has = abap_false.
      t15 = abap_true.
    ENDIF.
    t9 = t15.
    IF t9 = abap_true.
      DATA(t17) = me->conf.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA(t19) = abap_true.
      IF t19 = abap_true.
        DATA(t20) = abap_true.
        DATA(t21) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t21->has = abap_true.
        t21->value = t20.
        t18 = t21.
      ELSE.
        DATA t22 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t22.
        t18 = t22.
      ENDIF.
      t17->zlnt_view_write_s_068e17972032( p0 = t18 ).
    ENDIF.
    DATA(t23) = me->conf.
    result = t23.

  ENDMETHOD.

  METHOD s_c_i_s_r_s_s_f_k_t_s_sn_fl_ky.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD build_fix.
    DATA(t1) = i_file.
    DATA(t2) = i_statement.
    DATA t3 TYPE REF TO zcl_lnt_fix.
    DATA t4 TYPE string.
    DATA(t5) = |Add "#EC CI_NOORDER|.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t7 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t8) = t1.
    DATA t9 TYPE REF TO zcl_lnt_position.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t12) = t2.
    t11 = t12->get_last_token( ).
    t10 = t11.
    DATA t13 TYPE REF TO zcl_lnt_position.
    DATA(t14) = t10.
    t13 = t14->start.
    t9 = t13.
    DATA(t15) = | "#EC CI_NOORDER|.
    t7 = zcl_lnt_edit_helper=>insert_at( i_file = t8 i_pos = t9 i_text = t15 ).
    t6 = t7.
    t3 = NEW zcl_lnt_fix( i_description = t4 i_edit = t6 ).
    CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
    t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t16 ).
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t17 ).
    ENDIF.
    CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
    t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t18) = |description|.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t18 p1 = t19 ).
    ENDIF.
    DATA(t20) = |edit|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t20 p1 = t21 ).
    ENDIF.
    result = t3.

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
    DATA t6 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t7 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t8 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t9) = me->reg.
    DATA t10 TYPE REF TO zcl_lnt_abap_object.
    DATA(t11) = t1.
    DATA t12 TYPE REF TO object.
    t12 = t11.
    t10 ?= t12.
    t8 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t9 i_object_19cd = t10 ).
    t7 = t8->run( ).
    t6 = t7.
    DATA t13 TYPE abap_bool.
    DATA t14 TYPE i.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = t6.
    t15 = t16->zlnt_view_read_sr_bd188c319c03( ).
    t15->load( ).
    t14 = lines( t15->items ).
    DATA(t17) = 0.
    t13 = xsdbool( t14 > t17 ).
    IF t13 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t18.
      result = t18.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    t19 = t20.
    DATA t21 TYPE string.
    DATA(t22) = |SELECT SINGLE possibily not unique|.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zcl_lnt_abap_object.
    DATA t25 TYPE REF TO zcl_lnt_abap_object.
    DATA(t26) = t1.
    DATA t27 TYPE REF TO object.
    t27 = t26.
    t25 ?= t27.
    t24 = t25.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t29) = t24.
    t28 = t29->parsed.
    t23 = t28.
    DATA t30 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t30.
    DATA t31 TYPE REF TO object.
    CLEAR t31.
    DATA(t32) = VALUE i( ).
    DO.
      t23->load( ).
      IF t32 >= lines( t23->items ).
        EXIT.
      ENDIF.
      CLEAR t31.
      READ TABLE t23->items INDEX t32 + 1 INTO t31.
      t32 = t32 + 1.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      CLEAR t30.
      IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t33 ?= t31.
        DATA t34 TYPE REF TO object.
        t34 = t33->as_ref( ).
        t30 ?= t34.
      ELSE.
        t30 ?= t31.
      ENDIF.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t37 TYPE REF TO zcl_lnt_abap_file.
      DATA(t38) = t30.
      t37 = t38.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t40) = t37.
      t39 = t40->statements.
      t36 = t39.
      t35 = t36.
      DATA t41 TYPE i.
      DATA(t42) = 0.
      t41 = t42.
      DO.
        DATA t43 TYPE abap_bool.
        DATA(t44) = t41.
        DATA t45 TYPE i.
        DATA(t46) = t35.
        t46->load( ).
        t45 = lines( t46->items ).
        t43 = xsdbool( t44 < t45 ).
        IF t43 = abap_false.
          EXIT.
        ENDIF.
        DATA t47 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t47.
        DATA t48 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t48.
        DATA(t49) = t35.
        DATA(t50) = t41.
        t50 = t50 + 1.
        DATA t51 TYPE REF TO object.
        CLEAR t51.
        t49->load( ).
        CLEAR t51.
        READ TABLE t49->items INDEX t50 INTO t51.
        DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t52.
        CLEAR t48.
        IF t51 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t52 ?= t51.
          DATA t53 TYPE REF TO object.
          t53 = t52->as_ref( ).
          t48 ?= t53.
        ELSE.
          t48 ?= t51.
        ENDIF.
        t47 = t48.
        DATA t54 TYPE abap_bool.
        DATA t55 TYPE abap_bool.
        DATA t56 TYPE REF TO zif_lnt_statement.
        DATA(t57) = t47.
        t56 = t57->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t55 = xsdbool( t56 IS BOUND AND t56 IS INSTANCE OF zcl_lnt_st_statem_select ).
        t54 = xsdbool( t55 = abap_false ).
        IF t54 = abap_true.
          DATA t58 TYPE i.
          DATA(t59) = t41.
          DATA(t60) = 1.
          t58 = t59 + t60.
          t41 = t58.
          CONTINUE.
        ELSE.
          DATA t61 TYPE abap_bool.
          DATA t62 TYPE REF TO zcl_lnt_expression_node.
          DATA(t63) = t47.
          DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d320_7be18f722ddf.
          t62 = t63->find_first_expression( i_type_9913 = t64 ).
          t61 = xsdbool( t62 IS BOUND ).
          IF t61 = abap_true.
            DATA t65 TYPE i.
            DATA(t66) = t41.
            DATA(t67) = 1.
            t65 = t66 + t67.
            t41 = t65.
            CONTINUE.
          ELSE.
            DATA(t68) = VALUE abap_bool( ).
            DATA t69 TYPE REF TO zcl_lnt_position.
            DATA t70 TYPE REF TO zcl_lnt_position.
            DATA(t71) = t47.
            DATA(t72) = |SELECT|.
            DATA(t73) = |SINGLE|.
            t70 = t71->find_token_sequence_position( i_first = t72 i_second = t73 ).
            t69 = t70.
            DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t75.
            t74 = t75.
            DATA(t76) = VALUE abap_bool( ).
            DATA(t77) = t69.
            IF t77 IS INITIAL.
              t76 = abap_true.
            ENDIF.
            t68 = t76.
            IF t68 = abap_true.
              DATA t78 TYPE i.
              DATA(t79) = t41.
              DATA(t80) = 1.
              t78 = t79 + t80.
              t41 = t78.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t81 TYPE REF TO zcl_lnt_expression_node.
        DATA t82 TYPE REF TO zcl_lnt_expression_node.
        DATA(t83) = t47.
        DATA(t84) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
        t82 = t83->find_first_expression( i_type_9913 = t84 ).
        t81 = t82.
        DATA(t85) = VALUE abap_bool( ).
        DATA t86 TYPE REF TO zcl_lnt_expression_node.
        DATA(t87) = t81.
        t86 = t87.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        t88 = t89.
        DATA(t90) = VALUE abap_bool( ).
        DATA(t91) = t86.
        IF t91 IS INITIAL.
          t90 = abap_true.
        ENDIF.
        t85 = t90.
        IF t85 = abap_true.
          DATA t92 TYPE i.
          DATA(t93) = t41.
          DATA(t94) = 1.
          t92 = t93 + t94.
          t41 = t92.
          CONTINUE.
        ENDIF.
        DATA t95 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t95.
        DATA t96 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t96.
        DATA(t97) = t35.
        DATA t98 TYPE i.
        DATA(t99) = t41.
        DATA(t100) = 1.
        t98 = t99 + t100.
        t98 = t98 + 1.
        DATA t101 TYPE REF TO object.
        CLEAR t101.
        t97->load( ).
        CLEAR t101.
        READ TABLE t97->items INDEX t98 INTO t101.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        CLEAR t96.
        IF t101 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t102 ?= t101.
          DATA t103 TYPE REF TO object.
          t103 = t102->as_ref( ).
          t96 ?= t103.
        ELSE.
          t96 ?= t101.
        ENDIF.
        t95 = t96.
        DATA(t104) = VALUE abap_bool( ).
        DATA(t105) = VALUE abap_bool( ).
        DATA t106 TYPE REF TO zif_lnt_statement.
        CLEAR t106.
        DATA t107 TYPE REF TO zcl_lnt_statement_node.
        DATA(t108) = t95.
        t107 = t108.
        DATA t109 TYPE REF TO zif_lnt_statement.
        CLEAR t109.
        DATA(t110) = VALUE abap_bool( ).
        DATA(t111) = t107.
        IF t111 IS INITIAL.
          t110 = abap_true.
        ENDIF.
        IF t110 = abap_true.
          DATA t112 TYPE REF TO zif_lnt_statement.
          CLEAR t112.
          t109 = t112.
        ELSE.
          DATA t113 TYPE REF TO zif_lnt_statement.
          DATA(t114) = t107.
          t113 = t114->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t109 = t113.
        ENDIF.
        t106 = t109.
        t105 = xsdbool( t106 IS BOUND AND t106 IS INSTANCE OF zcl_lnt_st_comment ).
        t104 = t105.
        IF t105 = abap_true.
          DATA(t115) = VALUE abap_bool( ).
          DATA(t116) = VALUE i( ).
          DATA t117 TYPE string.
          DATA(t118) = t95.
          t117 = t118->concat_tokens( ).
          DATA(t119) = VALUE string( ).
          DATA(t120) = VALUE string( ).
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t121.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          DATA t123 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t123.
          DATA t124 TYPE string.
          DATA(t125) = |select_single_full_key|.
          t124 = t125.
          DATA t126 TYPE string.
          DATA(t127) = |Detect SELECT SINGLE which are possibily not unique|.
          t126 = t127.
          DATA t128 TYPE string.
          DATA(t129) = |Detect SELECT SINGLE which are possibily not unique|.
          t128 = t129.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t130.
          DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t131.
          DATA(t132) = abap_true.
          IF t132 = abap_true.
            DATA(t133) = |Table definitions must be known, ie. inside the errorNamespa|.
            t133 = t133 && |ce\n\nIf the statement contains a JOIN it is not checked|.
            DATA(t134) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t134->has = abap_true.
            t134->value = t133.
            t131 = t134.
          ELSE.
            DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t135.
            t131 = t135.
          ENDIF.
          t130 = t131.
          DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t136.
          DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t137.
          DATA(t138) = abap_true.
          IF t138 = abap_true.
            DATA(t139) = |EC CI_NOORDER|.
            DATA(t140) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t140->has = abap_true.
            t140->value = t139.
            t137 = t140.
          ELSE.
            DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t141.
            t137 = t141.
          ENDIF.
          t136 = t137.
          DATA t142 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t142.
          DATA t143 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t143.
          DATA(t144) = abap_true.
          IF t144 = abap_true.
            DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t146 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t147 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t147.
            t146 = t147.
            DATA(t148) = t146.
            DATA(t149) = |Quickfix|.
            t148->load( ).
            APPEND t149 TO t148->items.
            t148->save( ).
            DATA(t150) = t146.
            t145 = t150.
            t143 = t145.
          ELSE.
            DATA t151 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t151.
            t143 = t151.
          ENDIF.
          t142 = t143.
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t153.
          t152 = t153.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t155.
          t154 = t155.
          DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t157.
          t156 = t157.
          t123 = NEW zcl_lnt_irule_metadata( i_key = t124 i_title = t126 i_short_description = t128 i_bad_example = t152 i_good_example = t154 i_extended_information = t130 i_tags = t142 i_pragma = t156 i_pseudo_comment = t136 ).
          CREATE OBJECT t123->zlnt_view_ownkeys_b0e8086400eb.
          t123->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t158.
          IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t158 ).
          ENDIF.
          DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t159.
          IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t159 ).
          ENDIF.
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t160.
          IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t160 ).
          ENDIF.
          DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t161.
          IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t161 ).
          ENDIF.
          DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t162.
          IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t162 ).
          ENDIF.
          DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t163.
          IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t163 ).
          ENDIF.
          CREATE OBJECT t123->zlnt_json_ownkeys_70e5fd461788.
          t123->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t164) = |key|.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t165.
          IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t164 p1 = t165 ).
          ENDIF.
          DATA(t166) = |title|.
          DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t167.
          IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
          ENDIF.
          DATA(t168) = |shortDescription|.
          DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t169.
          IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
          ENDIF.
          DATA(t170) = |extendedInformation|.
          DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t171.
          IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
          ENDIF.
          DATA(t172) = |pseudoComment|.
          DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t173.
          IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
          ENDIF.
          DATA(t174) = |tags|.
          DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t175.
          IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
          ENDIF.
          t122 = t123->pseudo_comment.
          t121 = t122.
          DATA(t176) = VALUE string( ).
          DATA(t177) = VALUE abap_bool( ).
          DATA(t178) = t121.
          IF t178 IS INITIAL.
            t177 = abap_true.
          ELSEIF t178->has = abap_false.
            t177 = abap_true.
          ENDIF.
          IF t177 = abap_true.
            DATA(t179) = |undefined|.
            t176 = t179.
          ELSE.
            DATA t180 TYPE string.
            DATA(t181) = t121.
            t180 = t181->value.
            t176 = t180.
          ENDIF.
          t120 = t176.
          DATA(t182) = ||.
          DATA(t183) = strlen( t120 ).
          t119 = |{ t120 }{ t182 }|.
          DATA(t184) = strlen( t117 ).
          IF t119 IS INITIAL.
            t116 = 0.
          ELSE.
            FIND t119 IN t117 MATCH OFFSET t116.
            IF sy-subrc <> 0.
              t116 = -1.
            ENDIF.
          ENDIF.
          DATA(t185) = 0.
          t115 = xsdbool( t116 >= t185 ).
          t104 = t115.
        ENDIF.
        IF t104 = abap_true.
          DATA(t186) = VALUE abap_bool( ).
          DATA t187 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA(t188) = CAST zcl_lnt_slct_sngl_fll_ky_cnf( me->g_c_i_s_r_s_s_f_k_t_s_sn_fl_ky( ) ).
          t187 = t188->zlnt_view_read_sr_fcd7d4ea2872( ).
          DATA t189 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t189.
          DATA(t190) = abap_true.
          IF t190 = abap_true.
            DATA(t191) = abap_true.
            DATA(t192) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t192->has = abap_true.
            t192->value = t191.
            t189 = t192.
          ELSE.
            DATA t193 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t193.
            t189 = t193.
          ENDIF.
          DATA(t194) = VALUE abap_bool( ).
          DATA(t195) = VALUE abap_bool( ).
          IF t187 IS BOUND.
            t194 = t187->has.
          ENDIF.
          IF t189 IS BOUND.
            t195 = t189->has.
          ENDIF.
          IF t194 = t195.
            IF t194 = abap_false.
              t186 = abap_true.
            ELSEIF t187->value = t189->value.
              t186 = abap_true.
            ENDIF.
          ENDIF.
          IF t186 = abap_true.
            t186 = abap_false.
          ELSE.
            t186 = abap_true.
          ENDIF.
          IF t186 = abap_true.
            DATA(t196) = t19.
            DATA t197 TYPE REF TO zcl_lnt_issue.
            CLEAR t197.
            DATA(t198) = t30.
            DATA(t199) = t47.
            DATA(t200) = |Pseudo comment not allowed|.
            DATA(t201) = VALUE string( ).
            DATA t202 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t202.
            DATA t203 TYPE string.
            DATA(t204) = |select_single_full_key|.
            t203 = t204.
            DATA t205 TYPE string.
            DATA(t206) = |Detect SELECT SINGLE which are possibily not unique|.
            t205 = t206.
            DATA t207 TYPE string.
            DATA(t208) = |Detect SELECT SINGLE which are possibily not unique|.
            t207 = t208.
            DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t209.
            DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t210.
            DATA(t211) = abap_true.
            IF t211 = abap_true.
              DATA(t212) = |Table definitions must be known, ie. inside the errorNamespa|.
              t212 = t212 && |ce\n\nIf the statement contains a JOIN it is not checked|.
              DATA(t213) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t213->has = abap_true.
              t213->value = t212.
              t210 = t213.
            ELSE.
              DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t214.
              t210 = t214.
            ENDIF.
            t209 = t210.
            DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t215.
            DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t216.
            DATA(t217) = abap_true.
            IF t217 = abap_true.
              DATA(t218) = |EC CI_NOORDER|.
              DATA(t219) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t219->has = abap_true.
              t219->value = t218.
              t216 = t219.
            ELSE.
              DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t220.
              t216 = t220.
            ENDIF.
            t215 = t216.
            DATA t221 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t221.
            DATA t222 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t222.
            DATA(t223) = abap_true.
            IF t223 = abap_true.
              DATA t224 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t225 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t226 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t226.
              t225 = t226.
              DATA(t227) = t225.
              DATA(t228) = |Quickfix|.
              t227->load( ).
              APPEND t228 TO t227->items.
              t227->save( ).
              DATA(t229) = t225.
              t224 = t229.
              t222 = t224.
            ELSE.
              DATA t230 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t230.
              t222 = t230.
            ENDIF.
            t221 = t222.
            DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t232.
            t231 = t232.
            DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t234.
            t233 = t234.
            DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t236.
            t235 = t236.
            t202 = NEW zcl_lnt_irule_metadata( i_key = t203 i_title = t205 i_short_description = t207 i_bad_example = t231 i_good_example = t233 i_extended_information = t209 i_tags = t221 i_pragma = t235 i_pseudo_comment = t215 ).
            CREATE OBJECT t202->zlnt_view_ownkeys_b0e8086400eb.
            t202->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t237.
            IF t202->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t237 ).
            ENDIF.
            DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t238.
            IF t202->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t238 ).
            ENDIF.
            DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t239.
            IF t202->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t239 ).
            ENDIF.
            DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t240.
            IF t202->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t240 ).
            ENDIF.
            DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t241.
            IF t202->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t241 ).
            ENDIF.
            DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t242.
            IF t202->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t242 ).
            ENDIF.
            CREATE OBJECT t202->zlnt_json_ownkeys_70e5fd461788.
            t202->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t243) = |key|.
            DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t244.
            IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = t243 p1 = t244 ).
            ENDIF.
            DATA(t245) = |title|.
            DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t246.
            IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = t245 p1 = t246 ).
            ENDIF.
            DATA(t247) = |shortDescription|.
            DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t248.
            IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = t247 p1 = t248 ).
            ENDIF.
            DATA(t249) = |extendedInformation|.
            DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t250.
            IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = t249 p1 = t250 ).
            ENDIF.
            DATA(t251) = |pseudoComment|.
            DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t252.
            IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = t251 p1 = t252 ).
            ENDIF.
            DATA(t253) = |tags|.
            DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t254.
            IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = t253 p1 = t254 ).
            ENDIF.
            t201 = t202->key.
            DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t256) = CAST zcl_lnt_slct_sngl_fll_ky_cnf( me->g_c_i_s_r_s_s_f_k_t_s_sn_fl_ky( ) ).
            t255 = t256->zlnt_view_read_sr_15c06369f827( ).
            DATA t257 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t257.
            DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t258.
            t197 = zcl_lnt_issue=>at_statement( i_file = t198 i_statement = t199 i_message_26cb = t200 i_key = t201 i_severity = t255 i_fix = t257 i_alternative_fixes = t258 ).
            t196->load( ).
            APPEND t197 TO t196->items.
            t196->save( ).
          ENDIF.
          DATA t259 TYPE i.
          DATA(t260) = t41.
          DATA(t261) = 1.
          t259 = t260 + t261.
          t41 = t259.
          CONTINUE.
        ENDIF.
        DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t262.
        DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t263.
        DATA t264 TYPE REF TO zcl_lnt_position.
        DATA t265 TYPE REF TO zcl_lnt_position.
        DATA t266 TYPE REF TO zcl_lnt_abstract_token.
        DATA t267 TYPE REF TO zcl_lnt_abstract_token.
        DATA t268 TYPE REF TO zcl_lnt_expression_node.
        DATA(t269) = t81.
        t268 = t269.
        t267 = t268->get_first_token( ).
        t266 = t267.
        DATA t270 TYPE REF TO zcl_lnt_position.
        DATA(t271) = t266.
        t270 = t271->start.
        t265 = t270.
        t264 = t265.
        DATA t272 TYPE REF TO zif_lnt_spaghetti_scope.
        DATA t273 TYPE REF TO zif_lnt_spaghetti_scope.
        DATA(t274) = t6.
        t273 = t274->zlnt_view_read_sr_b6b1d9e0c93e( ).
        t272 = t273.
        DATA t275 TYPE REF TO zcl_lnt_abap_file.
        DATA(t276) = t30.
        t275 = t276.
        DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t277.
        DATA t278 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t278.
        DATA t279 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t279.
        DATA(t280) = t272.
        DATA t281 TYPE REF TO zcl_lnt_position.
        CLEAR t281.
        DATA(t282) = abap_true.
        IF t282 = abap_true.
          DATA(t283) = t264.
          t281 = t283.
        ELSE.
          DATA t284 TYPE REF TO zcl_lnt_position.
          CLEAR t284.
          t281 = t284.
        ENDIF.
        DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t285.
        DATA(t286) = abap_true.
        IF t286 = abap_true.
          DATA t287 TYPE string.
          DATA t288 TYPE REF TO zcl_lnt_abstract_file.
          DATA(t289) = t275.
          t288 = t289.
          DATA t290 TYPE string.
          DATA(t291) = t288.
          t290 = t291->filename.
          t287 = t290.
          DATA(t292) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t292->has = abap_true.
          t292->value = t287.
          t285 = t292.
        ELSE.
          DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t293.
          t285 = t293.
        ENDIF.
        t279 = t280->lookup_position( i_p = t281 i_filename = t285 ).
        t278 = t279.
        DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t294.
        DATA t295 TYPE REF TO zif_lnt_spaghetti_scope_node.
        DATA(t296) = t278.
        t295 = t296.
        DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t297.
        DATA(t298) = VALUE abap_bool( ).
        DATA(t299) = t295.
        IF t299 IS INITIAL.
          t298 = abap_true.
        ENDIF.
        IF t298 = abap_true.
          DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t300.
          t297 = t300.
        ELSE.
          DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t302 TYPE REF TO zif_lnt_spaghetti_scope_node.
          DATA(t303) = t295.
          t302 = t303.
          DATA(t304) = t264.
          t301 = t302->find_table_reference( i_pos = t304 ).
          t297 = t301.
        ENDIF.
        t294 = t297.
        t277 = t294.
        t263 = t277.
        t262 = t263.
        DATA t305 TYPE REF TO zcl_lnt_table.
        CLEAR t305.
        DATA t306 TYPE REF TO zcl_lnt_table.
        CLEAR t306.
        DATA t307 TYPE REF TO zif_lnt_object.
        CLEAR t307.
        DATA(t308) = me->reg.
        DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t309.
        DATA(t310) = abap_true.
        IF t310 = abap_true.
          DATA(t311) = |TABL|.
          DATA(t312) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t312->has = abap_true.
          t312->value = t311.
          t309 = t312.
        ELSE.
          DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t313.
          t309 = t313.
        ENDIF.
        DATA(t314) = t262.
        t307 = t308->get_object( i_type_9913 = t309 i_name = t314 ).
        DATA t315 TYPE REF TO object.
        t315 = t307.
        t306 ?= t315.
        t305 = t306.
        DATA(t316) = VALUE abap_bool( ).
        DATA t317 TYPE REF TO zcl_lnt_table.
        DATA(t318) = t305.
        t317 = t318.
        DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t320.
        t319 = t320.
        DATA(t321) = VALUE abap_bool( ).
        DATA(t322) = t317.
        IF t322 IS INITIAL.
          t321 = abap_true.
        ENDIF.
        t316 = t321.
        IF t316 = abap_true.
          DATA t323 TYPE i.
          DATA(t324) = t41.
          DATA(t325) = 1.
          t323 = t324 + t325.
          t41 = t323.
          CONTINUE.
        ENDIF.
        DATA t326 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t327 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t328 TYPE REF TO zcl_lnt_table.
        DATA(t329) = t305.
        t328 = t329.
        DATA(t330) = me->reg.
        t327 = t328->list_keys( i_reg_f149 = t330 ).
        t326 = t327.
        DATA t331 TYPE REF TO zcl_lnt_expression_node.
        DATA t332 TYPE REF TO zcl_lnt_expression_node.
        DATA(t333) = t47.
        DATA(t334) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
        t332 = t333->find_first_expression( i_type_9913 = t334 ).
        t331 = t332.
        DATA t335 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        DATA(t336) = NEW zlnt_runtime_set__1827558fd4c7( ).
        t335 = t336.
        DATA(t337) = t326.
        DATA(t338) = VALUE string( ).
        t337->dense( ).
        DATA(t339) = VALUE i( ).
        DO.
          t337->load( ).
          IF t339 >= lines( t337->items ).
            EXIT.
          ENDIF.
          CLEAR t338.
          READ TABLE t337->items INDEX t339 + 1 INTO t338.
          IF t337->has( t339 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t339 = t339 + 1.
          DATA t340 TYPE abap_bool.
          DATA(t341) = t338.
          DATA(t342) = |MANDT|.
          t340 = xsdbool( t341 = t342 ).
          IF t340 = abap_true.
            CONTINUE.
          ENDIF.
          DATA t343 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
          DATA(t344) = t335.
          DATA(t345) = t338.
          t343 = t344->add( p0 = t345 ).
        ENDDO.
        DATA t346 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t346.
        DATA t347 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t347.
        DATA t348 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t348.
        DATA t349 TYPE REF TO zcl_lnt_expression_node.
        DATA(t350) = t331.
        t349 = t350.
        DATA t351 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t351.
        DATA(t352) = VALUE abap_bool( ).
        DATA(t353) = t349.
        IF t353 IS INITIAL.
          t352 = abap_true.
        ENDIF.
        IF t352 = abap_true.
          DATA t354 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t354.
          t351 = t354.
        ELSE.
          DATA t355 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t356 TYPE REF TO zcl_lnt_expression_node.
          DATA(t357) = t349.
          t356 = t357.
          DATA(t358) = zlnt_runtime_desc_78196487750d=>zlnt_member_d301_61c04e5b3781.
          t355 = t356->find_all_expressions_recursive( i_type_9913 = t358 ).
          t351 = t355.
        ENDIF.
        t348 = t351.
        t347 = t348.
        DATA t359 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t359.
        DATA t360 TYPE abap_bool.
        DATA(t361) = t347.
        t360 = xsdbool( t361 IS BOUND ).
        IF t360 = abap_true.
          DATA t362 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t363) = t347.
          t362 = t363.
          t359 = t362.
        ELSE.
          DATA t364 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t364.
          t359 = t364.
        ENDIF.
        t346 = t359.
        DATA t365 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t365.
        DATA t366 TYPE REF TO object.
        CLEAR t366.
        DATA(t367) = VALUE i( ).
        DO.
          t346->load( ).
          IF t367 >= lines( t346->items ).
            EXIT.
          ENDIF.
          CLEAR t366.
          READ TABLE t346->items INDEX t367 + 1 INTO t366.
          t367 = t367 + 1.
          DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t368.
          CLEAR t365.
          IF t366 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t368 ?= t366.
            DATA t369 TYPE REF TO object.
            t369 = t368->as_ref( ).
            t365 ?= t369.
          ELSE.
            t365 ?= t366.
          ENDIF.
          DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t370.
          DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t371.
          DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t372.
          DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t373.
          DATA t374 TYPE REF TO zcl_lnt_expression_node.
          DATA t375 TYPE REF TO zcl_lnt_expression_node.
          DATA(t376) = t365.
          DATA(t377) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
          t375 = t376->find_direct_expression( i_type_9913 = t377 ).
          t374 = t375.
          DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t378.
          DATA(t379) = VALUE abap_bool( ).
          DATA(t380) = t374.
          IF t380 IS INITIAL.
            t379 = abap_true.
          ENDIF.
          IF t379 = abap_true.
            DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t381.
            t378 = t381.
          ELSE.
            DATA t382 TYPE string.
            DATA t383 TYPE REF TO zcl_lnt_expression_node.
            DATA(t384) = t374.
            t383 = t384.
            t382 = t383->concat_tokens( ).
            DATA(t385) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t385->has = abap_true.
            t385->value = t382.
            t378 = t385.
          ENDIF.
          t373 = t378.
          t372 = t373.
          DATA t386 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t386.
          DATA(t387) = VALUE abap_bool( ).
          DATA(t388) = t372.
          IF t388 IS INITIAL.
            t387 = abap_true.
          ELSEIF t388->has = abap_false.
            t387 = abap_true.
          ENDIF.
          IF t387 = abap_true.
            DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t389.
            t386 = t389.
          ELSE.
            DATA t390 TYPE string.
            DATA t391 TYPE string.
            DATA(t392) = t372.
            t391 = t392->value.
            DATA(t393) = strlen( t391 ).
            t390 = t391.
            IF t390 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t390 TO UPPER CASE.
            ELSE.
              t390 = zlnt_runtime_uppe_91169605024d=>full( t390 ).
            ENDIF.
            DATA(t394) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t394->has = abap_true.
            t394->value = t390.
            t386 = t394.
          ENDIF.
          t371 = t386.
          t370 = t371.
          DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t395.
          DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t396.
          DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t397.
          DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t398.
          DATA t399 TYPE REF TO zcl_lnt_expression_node.
          DATA t400 TYPE REF TO zcl_lnt_expression_node.
          DATA(t401) = t365.
          DATA(t402) = zlnt_runtime_desc_78196487750d=>zlnt_member_d298_782c2da798c9.
          t400 = t401->find_direct_expression( i_type_9913 = t402 ).
          t399 = t400.
          DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t403.
          DATA(t404) = VALUE abap_bool( ).
          DATA(t405) = t399.
          IF t405 IS INITIAL.
            t404 = abap_true.
          ENDIF.
          IF t404 = abap_true.
            DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t406.
            t403 = t406.
          ELSE.
            DATA t407 TYPE string.
            DATA t408 TYPE REF TO zcl_lnt_expression_node.
            DATA(t409) = t399.
            t408 = t409.
            t407 = t408->concat_tokens( ).
            DATA(t410) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t410->has = abap_true.
            t410->value = t407.
            t403 = t410.
          ENDIF.
          t398 = t403.
          t397 = t398.
          DATA t411 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t411.
          DATA(t412) = VALUE abap_bool( ).
          DATA(t413) = t397.
          IF t413 IS INITIAL.
            t412 = abap_true.
          ELSEIF t413->has = abap_false.
            t412 = abap_true.
          ENDIF.
          IF t412 = abap_true.
            DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t414.
            t411 = t414.
          ELSE.
            DATA t415 TYPE string.
            DATA t416 TYPE string.
            DATA(t417) = t397.
            t416 = t417->value.
            DATA(t418) = strlen( t416 ).
            t415 = t416.
            IF t415 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t415 TO UPPER CASE.
            ELSE.
              t415 = zlnt_runtime_uppe_91169605024d=>full( t415 ).
            ENDIF.
            DATA(t419) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t419->has = abap_true.
            t419->value = t415.
            t411 = t419.
          ENDIF.
          t396 = t411.
          t395 = t396.
          DATA(t420) = VALUE abap_bool( ).
          DATA(t421) = VALUE abap_bool( ).
          DATA(t422) = t370.
          IF t422 IS BOUND.
            IF t422->has = abap_true.
              t421 = xsdbool( strlen( t422->value ) > 0 ).
            ENDIF.
          ENDIF.
          t420 = t421.
          IF t421 = abap_true.
            DATA(t423) = VALUE abap_bool( ).
            DATA(t424) = VALUE abap_bool( ).
            DATA(t425) = t395.
            DATA t426 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t426.
            DATA(t427) = abap_true.
            IF t427 = abap_true.
              DATA(t428) = |=|.
              DATA(t429) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t429->has = abap_true.
              t429->value = t428.
              t426 = t429.
            ELSE.
              DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t430.
              t426 = t430.
            ENDIF.
            DATA(t431) = VALUE abap_bool( ).
            DATA(t432) = VALUE abap_bool( ).
            IF t425 IS BOUND.
              t431 = t425->has.
            ENDIF.
            IF t426 IS BOUND.
              t432 = t426->has.
            ENDIF.
            IF t431 = t432.
              IF t431 = abap_false.
                t424 = abap_true.
              ELSEIF t425->value = t426->value.
                t424 = abap_true.
              ENDIF.
            ENDIF.
            t423 = t424.
            IF t424 = abap_false.
              DATA(t433) = VALUE abap_bool( ).
              DATA(t434) = t395.
              DATA t435 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t435.
              DATA(t436) = abap_true.
              IF t436 = abap_true.
                DATA(t437) = |EQ|.
                DATA(t438) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t438->has = abap_true.
                t438->value = t437.
                t435 = t438.
              ELSE.
                DATA t439 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t439.
                t435 = t439.
              ENDIF.
              DATA(t440) = VALUE abap_bool( ).
              DATA(t441) = VALUE abap_bool( ).
              IF t434 IS BOUND.
                t440 = t434->has.
              ENDIF.
              IF t435 IS BOUND.
                t441 = t435->has.
              ENDIF.
              IF t440 = t441.
                IF t440 = abap_false.
                  t433 = abap_true.
                ELSEIF t434->value = t435->value.
                  t433 = abap_true.
                ENDIF.
              ENDIF.
              t423 = t433.
            ENDIF.
            t420 = t423.
          ENDIF.
          IF t420 = abap_true.
            DATA t442 TYPE abap_bool.
            DATA(t443) = t335.
            DATA t444 TYPE string.
            DATA(t445) = t370.
            t444 = t445->value.
            t442 = t443->delete( p0 = t444 ).
          ENDIF.
        ENDDO.
        DATA t446 TYPE abap_bool.
        DATA t447 TYPE i.
        DATA(t448) = t335.
        t447 = t448->size( ).
        DATA(t449) = 0.
        t446 = xsdbool( t447 > t449 ).
        IF t446 = abap_true.
          DATA t450 TYPE REF TO zcl_lnt_fix.
          CLEAR t450.
          DATA t451 TYPE REF TO zcl_lnt_fix.
          CLEAR t451.
          DATA t452 TYPE REF TO zcl_lnt_abap_file.
          DATA(t453) = t30.
          t452 = t453.
          DATA t454 TYPE REF TO zcl_lnt_statement_node.
          DATA(t455) = t47.
          t454 = t455.
          DATA t456 TYPE REF TO zcl_lnt_fix.
          DATA t457 TYPE string.
          DATA(t458) = |Add "#EC CI_NOORDER|.
          t457 = t458.
          DATA t459 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t460 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t461) = t452.
          DATA t462 TYPE REF TO zcl_lnt_position.
          DATA t463 TYPE REF TO zcl_lnt_abstract_token.
          DATA t464 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t465) = t454.
          t464 = t465->get_last_token( ).
          t463 = t464.
          DATA t466 TYPE REF TO zcl_lnt_position.
          DATA(t467) = t463.
          t466 = t467->start.
          t462 = t466.
          DATA(t468) = | "#EC CI_NOORDER|.
          t460 = zcl_lnt_edit_helper=>insert_at( i_file = t461 i_pos = t462 i_text = t468 ).
          t459 = t460.
          t456 = NEW zcl_lnt_fix( i_description = t457 i_edit = t459 ).
          CREATE OBJECT t456->zlnt_view_ownkeys_b0e8086400eb.
          t456->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t469.
          IF t456->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t456->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t469 ).
          ENDIF.
          DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t470.
          IF t456->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t456->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t470 ).
          ENDIF.
          CREATE OBJECT t456->zlnt_json_ownkeys_70e5fd461788.
          t456->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t471) = |description|.
          DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t472.
          IF t456->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t456->zlnt_json_ownkeys_70e5fd461788->put( p0 = t471 p1 = t472 ).
          ENDIF.
          DATA(t473) = |edit|.
          DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t474.
          IF t456->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t456->zlnt_json_ownkeys_70e5fd461788->put( p0 = t473 p1 = t474 ).
          ENDIF.
          t451 = t456.
          t450 = t451.
          DATA(t475) = t19.
          DATA t476 TYPE REF TO zcl_lnt_issue.
          CLEAR t476.
          DATA(t477) = t30.
          DATA(t478) = t47.
          DATA(t479) = t21.
          DATA(t480) = VALUE string( ).
          DATA t481 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t481.
          DATA t482 TYPE string.
          DATA(t483) = |select_single_full_key|.
          t482 = t483.
          DATA t484 TYPE string.
          DATA(t485) = |Detect SELECT SINGLE which are possibily not unique|.
          t484 = t485.
          DATA t486 TYPE string.
          DATA(t487) = |Detect SELECT SINGLE which are possibily not unique|.
          t486 = t487.
          DATA t488 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t488.
          DATA t489 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t489.
          DATA(t490) = abap_true.
          IF t490 = abap_true.
            DATA(t491) = |Table definitions must be known, ie. inside the errorNamespa|.
            t491 = t491 && |ce\n\nIf the statement contains a JOIN it is not checked|.
            DATA(t492) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t492->has = abap_true.
            t492->value = t491.
            t489 = t492.
          ELSE.
            DATA t493 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t493.
            t489 = t493.
          ENDIF.
          t488 = t489.
          DATA t494 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t494.
          DATA t495 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t495.
          DATA(t496) = abap_true.
          IF t496 = abap_true.
            DATA(t497) = |EC CI_NOORDER|.
            DATA(t498) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t498->has = abap_true.
            t498->value = t497.
            t495 = t498.
          ELSE.
            DATA t499 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t499.
            t495 = t499.
          ENDIF.
          t494 = t495.
          DATA t500 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t500.
          DATA t501 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t501.
          DATA(t502) = abap_true.
          IF t502 = abap_true.
            DATA t503 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t504 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t505 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t505.
            t504 = t505.
            DATA(t506) = t504.
            DATA(t507) = |Quickfix|.
            t506->load( ).
            APPEND t507 TO t506->items.
            t506->save( ).
            DATA(t508) = t504.
            t503 = t508.
            t501 = t503.
          ELSE.
            DATA t509 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t509.
            t501 = t509.
          ENDIF.
          t500 = t501.
          DATA t510 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t511 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t511.
          t510 = t511.
          DATA t512 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t513 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t513.
          t512 = t513.
          DATA t514 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t515.
          t514 = t515.
          t481 = NEW zcl_lnt_irule_metadata( i_key = t482 i_title = t484 i_short_description = t486 i_bad_example = t510 i_good_example = t512 i_extended_information = t488 i_tags = t500 i_pragma = t514 i_pseudo_comment = t494 ).
          CREATE OBJECT t481->zlnt_view_ownkeys_b0e8086400eb.
          t481->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t516.
          IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t516 ).
          ENDIF.
          DATA t517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t517.
          IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t517 ).
          ENDIF.
          DATA t518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t518.
          IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t518 ).
          ENDIF.
          DATA t519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t519.
          IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t519 ).
          ENDIF.
          DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t520.
          IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t520 ).
          ENDIF.
          DATA t521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t521.
          IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t521 ).
          ENDIF.
          CREATE OBJECT t481->zlnt_json_ownkeys_70e5fd461788.
          t481->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t522) = |key|.
          DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t523.
          IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = t522 p1 = t523 ).
          ENDIF.
          DATA(t524) = |title|.
          DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t525.
          IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = t524 p1 = t525 ).
          ENDIF.
          DATA(t526) = |shortDescription|.
          DATA t527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t527.
          IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = t526 p1 = t527 ).
          ENDIF.
          DATA(t528) = |extendedInformation|.
          DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t529.
          IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = t528 p1 = t529 ).
          ENDIF.
          DATA(t530) = |pseudoComment|.
          DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t531.
          IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = t530 p1 = t531 ).
          ENDIF.
          DATA(t532) = |tags|.
          DATA t533 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t533.
          IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = t532 p1 = t533 ).
          ENDIF.
          t480 = t481->key.
          DATA t534 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t535) = CAST zcl_lnt_slct_sngl_fll_ky_cnf( me->g_c_i_s_r_s_s_f_k_t_s_sn_fl_ky( ) ).
          t534 = t535->zlnt_view_read_sr_15c06369f827( ).
          DATA t536 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t536.
          DATA t537 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t537.
          DATA(t538) = abap_true.
          IF t538 = abap_true.
            DATA t539 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t540 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t541 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CREATE OBJECT t541.
            t540 = t541.
            DATA(t542) = t540.
            DATA(t543) = t450.
            t542->load( ).
            APPEND t543 TO t542->items.
            t542->save( ).
            DATA(t544) = t540.
            t539 = t544.
            t537 = t539.
          ELSE.
            DATA t545 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t545.
            t537 = t545.
          ENDIF.
          t476 = zcl_lnt_issue=>at_statement( i_file = t477 i_statement = t478 i_message_26cb = t479 i_key = t480 i_severity = t534 i_fix = t536 i_alternative_fixes = t537 ).
          t475->load( ).
          APPEND t476 TO t475->items.
          t475->save( ).
        ENDIF.
        DATA t546 TYPE i.
        DATA(t547) = t41.
        DATA(t548) = 1.
        t546 = t547 + t548.
        t41 = t546.
      ENDDO.
    ENDDO.
    DATA(t549) = t19.
    result = t549.

  ENDMETHOD.

  METHOD find_reference.
    DATA(t1) = i_position_a3fd.
    DATA(t2) = i_spaghetti.
    DATA(t3) = i_file.
    DATA t4 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t5.
    DATA(t6) = t2.
    DATA t7 TYPE REF TO zcl_lnt_position.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = t1.
      t7 = t9.
    ELSE.
      DATA t10 TYPE REF TO zcl_lnt_position.
      CLEAR t10.
      t7 = t10.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA(t12) = abap_true.
    IF t12 = abap_true.
      DATA t13 TYPE string.
      DATA t14 TYPE REF TO zcl_lnt_abstract_file.
      DATA(t15) = t3.
      t14 = t15.
      DATA t16 TYPE string.
      DATA(t17) = t14.
      t16 = t17->filename.
      t13 = t16.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t13.
      t11 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t11 = t19.
    ENDIF.
    t5 = t6->lookup_position( i_p = t7 i_filename = t11 ).
    t4 = t5.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t22) = t4.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = t21.
    IF t25 IS INITIAL.
      t24 = abap_true.
    ENDIF.
    IF t24 = abap_true.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      t23 = t26.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t28 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA(t29) = t21.
      t28 = t29.
      DATA(t30) = t1.
      t27 = t28->find_table_reference( i_pos = t30 ).
      t23 = t27.
    ENDIF.
    t20 = t23.
    result = t20.

  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_select_single_full_key.
    DATA(t3) = t1.
    t2 = me->i_i_s_r_s_s_f_k_ts_sl_sn_fl_ky( i_reg_f149 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_slct_sngl_fll_ky_cnf( me->g_c_i_s_r_s_s_f_k_t_s_sn_fl_ky( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_slct_sngl_fll_ky_cnf( me->g_c_i_s_r_s_s_f_k_t_s_sn_fl_ky( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_slct_sngl_fll_ky_cnf.
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
        IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
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
        t2 = NEW zcl_lnt_slct_sngl_fll_ky_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_s_s_f_k_t_s_sn_fl_ky( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1690_199bc9d874b2.
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
