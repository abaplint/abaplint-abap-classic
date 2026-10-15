* TS: src/rules/unused_variables.ts:70:1 UnusedVariables
CLASS zcl_lnt_unused_variables DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_unused_variables_conf.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA workarea TYPE REF TO zcl_lnt_rl_unused_variabl_w_ar.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_un_vr_ts_un_vrb RETURNING VALUE(result) TYPE REF TO zcl_lnt_unused_variables_conf.
    METHODS st_cn_in_sr_rl_un_vr_ts_un_vrb IMPORTING i_conf TYPE REF TO zcl_lnt_unused_variables_conf.
    METHODS in_in_sr_rl_uns_vrb_ts_uns_vrb IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_unused_variables.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_uses IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object.
    METHODS build_workarea IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object.
    METHODS build_issues IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS suppressedby_pseudo IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_statement_index TYPE i i_v TYPE REF TO zcl_lnt_typed_identifier i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE abap_bool.
    METHODS find_file IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_file.
    METHODS build_fix IMPORTING i_v TYPE REF TO zcl_lnt_typed_identifier i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
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
CLASS zcl_lnt_unused_variables IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_unused_variables_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |unused_variables|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Unused variables|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for unused variables and constants|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Skips event parameters.\n\nNote that this currently does not w|.
      t11 = t11 && |ork if the source code uses macros.\n\nUnused variables are no|.
      t11 = t11 && |t reported if the object contains parser or syntax errors.\n\n|.
      t11 = t11 && |Errors found in INCLUDES are reported for the main program.|.
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
      DATA(t21) = |Quickfix|.
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
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA(t27) = |##NEEDED|.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t27.
      t25 = t28.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t25 = t29.
    ENDIF.
    t24 = t25.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |EC NEEDED|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t33.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t31 = t35.
    ENDIF.
    t30 = t31.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    DATA(t38) = abap_true.
    IF t38 = abap_true.
      DATA(t39) = |DATA: BEGIN OF blah1,\n      test  TYPE string,\n      test2 T|.
      t39 = t39 && |YPE string,\n    END OF blah1.|.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t39.
      t37 = t40.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      t37 = t41.
    ENDIF.
    t36 = t37.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    DATA(t44) = abap_true.
    IF t44 = abap_true.
      DATA(t45) = |DATA: BEGIN OF blah2 ##NEEDED,\n      test  TYPE string,\n    |.
      t45 = t45 && |  test2 TYPE string,\n    END OF blah2.|.
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
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t36 i_good_example = t42 i_extended_information = t8 i_tags = t14 i_pragma = t24 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t52 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t53 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t54 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t55 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t56 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t57) = |key|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |title|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |shortDescription|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |extendedInformation|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    DATA(t65) = |tags|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    DATA(t67) = |pragma|.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t67 p1 = t68 ).
    ENDIF.
    DATA(t69) = |pseudoComment|.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t69 p1 = t70 ).
    ENDIF.
    DATA(t71) = |badExample|.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t71 p1 = t72 ).
    ENDIF.
    DATA(t73) = |goodExample|.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_un_vr_ts_un_vrb.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_un_vr_ts_un_vrb.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t6) = me->conf.
    t5 = t6->zlnt_view_read_sr_e492ba7f19da( ).
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t4.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t3 = t9.
    IF t3 = abap_true.
      DATA(t11) = me->conf.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t12.
      DATA(t13) = abap_true.
      IF t13 = abap_true.
        DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t14.
        t12 = t14.
      ELSE.
        DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t15.
        t12 = t15.
      ENDIF.
      t11->zlnt_view_write_s_f3e8c7b51ce1( p0 = t12 ).
    ENDIF.
  ENDMETHOD.

  METHOD in_in_sr_rl_uns_vrb_ts_uns_vrb.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = t1.
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_abap_object ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t5.
      CREATE OBJECT t5.
      result = t5.
      RETURN.
    ELSE.
      DATA(t6) = VALUE abap_bool( ).
      DATA(t7) = t1.
      t6 = xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_ob_interface ).
      IF t6 = abap_true.
        DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t8.
        CREATE OBJECT t8.
        result = t8.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t11.
    DATA(t12) = t1.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    t13 = t12.
    t11 ?= t13.
    t10 = t11.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t14.
    DATA(t15) = t10.
    t14 = t15->parsed.
    t9 = t14.
    DATA t16 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t16.
    DATA t17 TYPE REF TO object.
    CLEAR t17.
    DATA(t18) = VALUE i( ).
    DO.
      t9->load( ).
      IF t18 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t17.
      READ TABLE t9->items INDEX t18 + 1 INTO t17.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t16.
      IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t17.
        DATA t20 TYPE REF TO object.
        CLEAR t20.
        t20 = t19->as_ref( ).
        t16 ?= t20.
      ELSE.
        t16 ?= t17.
      ENDIF.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t22.
      DATA(t23) = t16.
      t22 = t23.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t24.
      DATA(t25) = t22.
      t24 = t25->statements.
      t21 = t24.
      DATA t26 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t26.
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      DATA(t28) = VALUE i( ).
      DO.
        t21->load( ).
        IF t28 >= lines( t21->items ).
          EXIT.
        ENDIF.
        CLEAR t27.
        READ TABLE t21->items INDEX t28 + 1 INTO t27.
        t28 = t28 + 1.
        DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t29.
        CLEAR t26.
        IF t27 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t29 ?= t27.
          DATA t30 TYPE REF TO object.
          CLEAR t30.
          t30 = t29->as_ref( ).
          t26 ?= t30.
        ELSE.
          t26 ?= t27.
        ENDIF.
        DATA(t31) = VALUE abap_bool( ).
        DATA t32 TYPE REF TO zif_lnt_statement.
        CLEAR t32.
        DATA(t33) = t26.
        t32 = t33->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_unknown ).
        IF t31 = abap_true.
          DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t34.
          CREATE OBJECT t34.
          result = t34.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t35 TYPE REF TO zcl_lnt_isyntax_result.
    CLEAR t35.
    DATA t36 TYPE REF TO zcl_lnt_isyntax_result.
    CLEAR t36.
    DATA t37 TYPE REF TO zcl_lnt_syntax_logic.
    CLEAR t37.
    DATA(t38) = me->reg.
    DATA t39 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t39.
    DATA(t40) = t1.
    DATA t41 TYPE REF TO object.
    CLEAR t41.
    t41 = t40.
    t39 ?= t41.
    t37 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t38 i_object_19cd = t39 ).
    t36 = t37->run( ).
    t35 = t36.
    DATA(t42) = VALUE abap_bool( ).
    DATA(t43) = VALUE i( ).
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t44.
    DATA(t45) = t35.
    t44 = t45->zlnt_view_read_sr_bd188c319c03( ).
    t44->load( ).
    t43 = lines( t44->items ).
    DATA(t46) = 0.
    t42 = xsdbool( t43 > t46 ).
    IF t42 = abap_true.
      DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t47.
      CREATE OBJECT t47.
      result = t47.
      RETURN.
    ENDIF.
    DATA(t48) = NEW zcl_lnt_rl_unused_variabl_w_ar( ).
    me->workarea = t48.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `workarea`.
    DATA t49 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t49.
    DATA t50 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t50.
    DATA t51 TYPE REF TO zif_lnt_spaghetti_scope.
    CLEAR t51.
    DATA(t52) = t35.
    t51 = t52->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t50 = t51->get_top( ).
    t49 = t50.
    DATA(t53) = t49.
    DATA t54 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t54.
    DATA(t55) = t1.
    DATA t56 TYPE REF TO object.
    CLEAR t56.
    t56 = t55.
    t54 ?= t56.
    me->build_workarea( i_node = t53 i_obj_1ed0 = t54 ).
    DATA(t57) = VALUE abap_bool( ).
    DATA(t58) = VALUE i( ).
    DATA(t59) = VALUE f( ).
    DATA t60 TYPE REF TO zcl_lnt_rl_unused_variabl_w_ar.
    CLEAR t60.
    DATA(t61) = me->workarea.
    t60 = t61.
    DATA(t62) = VALUE f( ).
    DATA(t63) = VALUE i( ).
    DATA t64 TYPE REF TO zlnt_runtime_map__eb808f96a04f.
    CLEAR t64.
    DATA(t65) = t60.
    t64 = t65->workarea.
    t63 = t64->size( ).
    t62 = t63.
    t59 = t62.
    t58 = t59.
    DATA(t66) = 0.
    t57 = xsdbool( t58 = t66 ).
    IF t57 = abap_true.
      DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t67.
      DATA t68 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t68.
      DATA(t69) = t1.
      DATA t70 TYPE REF TO object.
      CLEAR t70.
      t70 = t69.
      t68 ?= t70.
      t67 = me->build_issues( i_obj_1ed0 = t68 ).
      result = t67.
      RETURN.
    ENDIF.
    DATA(t71) = t49.
    DATA t72 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t72.
    DATA(t73) = t1.
    DATA t74 TYPE REF TO object.
    CLEAR t74.
    t74 = t73.
    t72 ?= t74.
    me->find_uses( i_node = t71 i_obj_1ed0 = t72 ).
    DATA t75 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t75.
    DATA t76 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t76.
    DATA t77 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t77.
    DATA(t78) = me->reg.
    t77 = t78->get_objects( ).
    t76 = t77->iterate( ).
    t75 = t76.
    DO.
      DATA(t79) = abap_true.
      IF t79 = abap_false.
        EXIT.
      ENDIF.
      DATA t80 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t80.
      DATA t81 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t81.
      DATA(t82) = t75.
      t81 = t82->next( ).
      t80 = t81.
      DATA(t83) = VALUE abap_bool( ).
      DATA(t84) = t80.
      t83 = t84->done.
      IF t83 = abap_true.
        EXIT.
      ENDIF.
      DATA t85 TYPE REF TO zif_lnt_object.
      CLEAR t85.
      DATA t86 TYPE REF TO zif_lnt_object.
      CLEAR t86.
      DATA t87 TYPE REF TO zif_lnt_object.
      CLEAR t87.
      DATA(t88) = t80.
      t87 = t88->value.
      t86 = t87.
      t85 = t86.
      DATA(t89) = VALUE abap_bool( ).
      DATA(t90) = VALUE abap_bool( ).
      DATA(t91) = VALUE abap_bool( ).
      DATA(t92) = abap_false.
      t91 = t92.
      DATA t93 TYPE REF TO cx_root.
      CLEAR t93.
      TRY.
          DATA(t94) = VALUE abap_bool( ).
          DATA(t95) = t85.
          DATA t96 TYPE REF TO zif_lnt_object.
          CLEAR t96.
          DATA t97 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t97.
          DATA(t98) = t1.
          DATA t99 TYPE REF TO object.
          CLEAR t99.
          t99 = t98.
          t97 ?= t99.
          t96 ?= t97.
          DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t100.
          DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t101.
          CLEAR t100.
          IF t95 IS BOUND.
            DATA t102 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t102.
            DATA t103 TYPE REF TO object.
            CLEAR t103.
            CLEAR t102.
            t103 = t95.
            TRY.
                t100 ?= t103.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t100 IS NOT BOUND.
              TRY.
                  t102 ?= t95.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t102 IS BOUND.
                t100 = t102->source( ).
              ENDIF.
              IF t100 IS NOT BOUND.
                CREATE OBJECT t100.
                t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t100->oval = t95.
              ENDIF.
            ENDIF.
          ENDIF.
          CLEAR t101.
          IF t96 IS BOUND.
            DATA t104 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t104.
            DATA t105 TYPE REF TO object.
            CLEAR t105.
            CLEAR t104.
            t105 = t96.
            TRY.
                t101 ?= t105.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t101 IS NOT BOUND.
              TRY.
                  t104 ?= t96.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t104 IS BOUND.
                t101 = t104->source( ).
              ENDIF.
              IF t101 IS NOT BOUND.
                CREATE OBJECT t101.
                t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t101->oval = t96.
              ENDIF.
            ENDIF.
          ENDIF.
          IF t100 IS BOUND.
            t94 = t100->strict_equals( t101 ).
          ELSE.
            t94 = xsdbool( t101 IS NOT BOUND ).
          ENDIF.
          t90 = t94.
          DATA(t106) = abap_true.
          t91 = t106.
        CATCH cx_root INTO t93.
          DATA(t107) = VALUE abap_bool( ).
          DATA(t108) = t91.
          t107 = xsdbool( t108 = abap_false ).
          IF t107 = abap_true.
            DATA(t109) = t75.
            t109->close( ).
          ENDIF.
          RAISE EXCEPTION t93.
      ENDTRY.
      DATA(t110) = VALUE abap_bool( ).
      DATA(t111) = t91.
      t110 = xsdbool( t111 = abap_false ).
      IF t110 = abap_true.
        DATA(t112) = t75.
        t112->close( ).
      ENDIF.
      DATA(t113) = t90.
      t89 = t113.
      IF t89 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t114) = VALUE abap_bool( ).
        DATA(t115) = VALUE abap_bool( ).
        DATA(t116) = VALUE abap_bool( ).
        DATA(t117) = abap_false.
        t116 = t117.
        DATA t118 TYPE REF TO cx_root.
        CLEAR t118.
        TRY.
            DATA(t119) = VALUE abap_bool( ).
            DATA(t120) = t85.
            t119 = xsdbool( t120 IS BOUND AND t120 IS INSTANCE OF zcl_lnt_abap_object ).
            t115 = t119.
            DATA(t121) = abap_true.
            t116 = t121.
          CATCH cx_root INTO t118.
            DATA(t122) = VALUE abap_bool( ).
            DATA(t123) = t116.
            t122 = xsdbool( t123 = abap_false ).
            IF t122 = abap_true.
              DATA(t124) = t75.
              t124->close( ).
            ENDIF.
            RAISE EXCEPTION t118.
        ENDTRY.
        DATA(t125) = VALUE abap_bool( ).
        DATA(t126) = t116.
        t125 = xsdbool( t126 = abap_false ).
        IF t125 = abap_true.
          DATA(t127) = t75.
          t127->close( ).
        ENDIF.
        DATA(t128) = t115.
        t114 = t128.
        IF t114 = abap_true.
          DATA(t129) = VALUE abap_bool( ).
          DATA(t130) = VALUE abap_bool( ).
          DATA(t131) = VALUE abap_bool( ).
          DATA(t132) = abap_false.
          t131 = t132.
          DATA t133 TYPE REF TO cx_root.
          CLEAR t133.
          TRY.
              DATA(t134) = VALUE abap_bool( ).
              DATA(t135) = me->reg.
              DATA t136 TYPE REF TO zcl_lnt_abap_object.
              CLEAR t136.
              DATA(t137) = t85.
              DATA t138 TYPE REF TO object.
              CLEAR t138.
              t138 = t137.
              t136 ?= t138.
              t134 = t135->is_dependency( i_obj_1ed0 = t136 ).
              t130 = t134.
              DATA(t139) = abap_true.
              t131 = t139.
            CATCH cx_root INTO t133.
              DATA(t140) = VALUE abap_bool( ).
              DATA(t141) = t131.
              t140 = xsdbool( t141 = abap_false ).
              IF t140 = abap_true.
                DATA(t142) = t75.
                t142->close( ).
              ENDIF.
              RAISE EXCEPTION t133.
          ENDTRY.
          DATA(t143) = VALUE abap_bool( ).
          DATA(t144) = t131.
          t143 = xsdbool( t144 = abap_false ).
          IF t143 = abap_true.
            DATA(t145) = t75.
            t145->close( ).
          ENDIF.
          DATA(t146) = t130.
          t129 = t146.
          IF t129 = abap_true.
            CONTINUE.
          ENDIF.
          DATA t147 TYPE REF TO zcl_lnt_isyntax_result.
          CLEAR t147.
          DATA t148 TYPE REF TO zcl_lnt_isyntax_result.
          CLEAR t148.
          DATA t149 TYPE REF TO zcl_lnt_isyntax_result.
          CLEAR t149.
          DATA(t150) = VALUE abap_bool( ).
          DATA(t151) = abap_false.
          t150 = t151.
          DATA t152 TYPE REF TO cx_root.
          CLEAR t152.
          TRY.
              DATA t153 TYPE REF TO zcl_lnt_isyntax_result.
              CLEAR t153.
              DATA t154 TYPE REF TO zcl_lnt_syntax_logic.
              CLEAR t154.
              DATA(t155) = me->reg.
              DATA t156 TYPE REF TO zcl_lnt_abap_object.
              CLEAR t156.
              DATA(t157) = t85.
              DATA t158 TYPE REF TO object.
              CLEAR t158.
              t158 = t157.
              t156 ?= t158.
              t154 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t155 i_object_19cd = t156 ).
              t153 = t154->run( ).
              t149 = t153.
              DATA(t159) = abap_true.
              t150 = t159.
            CATCH cx_root INTO t152.
              DATA(t160) = VALUE abap_bool( ).
              DATA(t161) = t150.
              t160 = xsdbool( t161 = abap_false ).
              IF t160 = abap_true.
                DATA(t162) = t75.
                t162->close( ).
              ENDIF.
              RAISE EXCEPTION t152.
          ENDTRY.
          DATA(t163) = VALUE abap_bool( ).
          DATA(t164) = t150.
          t163 = xsdbool( t164 = abap_false ).
          IF t163 = abap_true.
            DATA(t165) = t75.
            t165->close( ).
          ENDIF.
          DATA(t166) = t149.
          t148 = t166.
          t147 = t148.
          DATA(t167) = VALUE abap_bool( ).
          DATA(t168) = abap_false.
          t167 = t168.
          DATA t169 TYPE REF TO cx_root.
          CLEAR t169.
          TRY.
              DATA t170 TYPE REF TO zif_lnt_spaghetti_scope_node.
              CLEAR t170.
              DATA t171 TYPE REF TO zif_lnt_spaghetti_scope.
              CLEAR t171.
              DATA(t172) = t147.
              t171 = t172->zlnt_view_read_sr_b6b1d9e0c93e( ).
              t170 = t171->get_top( ).
              DATA t173 TYPE REF TO zcl_lnt_abap_object.
              CLEAR t173.
              DATA(t174) = t85.
              DATA t175 TYPE REF TO object.
              CLEAR t175.
              t175 = t174.
              t173 ?= t175.
              me->find_uses( i_node = t170 i_obj_1ed0 = t173 ).
              DATA(t176) = abap_true.
              t167 = t176.
            CATCH cx_root INTO t169.
              DATA(t177) = VALUE abap_bool( ).
              DATA(t178) = t167.
              t177 = xsdbool( t178 = abap_false ).
              IF t177 = abap_true.
                DATA(t179) = t75.
                t179->close( ).
              ENDIF.
              RAISE EXCEPTION t169.
          ENDTRY.
          DATA(t180) = VALUE abap_bool( ).
          DATA(t181) = t167.
          t180 = xsdbool( t181 = abap_false ).
          IF t180 = abap_true.
            DATA(t182) = t75.
            t182->close( ).
          ENDIF.
          DATA(t183) = VALUE abap_bool( ).
          DATA(t184) = VALUE abap_bool( ).
          DATA(t185) = VALUE abap_bool( ).
          DATA(t186) = abap_false.
          t185 = t186.
          DATA t187 TYPE REF TO cx_root.
          CLEAR t187.
          TRY.
              DATA(t188) = VALUE abap_bool( ).
              DATA(t189) = VALUE f( ).
              DATA t190 TYPE REF TO zcl_lnt_rl_unused_variabl_w_ar.
              CLEAR t190.
              DATA(t191) = me->workarea.
              t190 = t191.
              DATA(t192) = VALUE f( ).
              DATA(t193) = VALUE i( ).
              DATA t194 TYPE REF TO zlnt_runtime_map__eb808f96a04f.
              CLEAR t194.
              DATA(t195) = t190.
              t194 = t195->workarea.
              t193 = t194->size( ).
              t192 = t193.
              t189 = t192.
              DATA(t196) = CONV f( 0 ).
              t188 = xsdbool( t189 = t196 ).
              t184 = t188.
              DATA(t197) = abap_true.
              t185 = t197.
            CATCH cx_root INTO t187.
              DATA(t198) = VALUE abap_bool( ).
              DATA(t199) = t185.
              t198 = xsdbool( t199 = abap_false ).
              IF t198 = abap_true.
                DATA(t200) = t75.
                t200->close( ).
              ENDIF.
              RAISE EXCEPTION t187.
          ENDTRY.
          DATA(t201) = VALUE abap_bool( ).
          DATA(t202) = t185.
          t201 = xsdbool( t202 = abap_false ).
          IF t201 = abap_true.
            DATA(t203) = t75.
            t203->close( ).
          ENDIF.
          DATA(t204) = t184.
          t183 = t204.
          IF t183 = abap_true.
            DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t205.
            DATA t206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t206.
            DATA t207 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t207.
            DATA(t208) = VALUE abap_bool( ).
            DATA(t209) = abap_false.
            t208 = t209.
            DATA t210 TYPE REF TO cx_root.
            CLEAR t210.
            TRY.
                DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t211.
                DATA t212 TYPE REF TO zcl_lnt_abap_object.
                CLEAR t212.
                DATA(t213) = t1.
                DATA t214 TYPE REF TO object.
                CLEAR t214.
                t214 = t213.
                t212 ?= t214.
                t211 = me->build_issues( i_obj_1ed0 = t212 ).
                t207 = t211.
                DATA(t215) = abap_true.
                t208 = t215.
              CATCH cx_root INTO t210.
                DATA(t216) = VALUE abap_bool( ).
                DATA(t217) = t208.
                t216 = xsdbool( t217 = abap_false ).
                IF t216 = abap_true.
                  DATA(t218) = t75.
                  t218->close( ).
                ENDIF.
                RAISE EXCEPTION t210.
            ENDTRY.
            DATA(t219) = VALUE abap_bool( ).
            DATA(t220) = t208.
            t219 = xsdbool( t220 = abap_false ).
            IF t219 = abap_true.
              DATA(t221) = t75.
              t221->close( ).
            ENDIF.
            DATA(t222) = t207.
            t206 = t222.
            t205 = t206.
            DATA(t223) = t75.
            t223->close( ).
            DATA(t224) = t205.
            result = t224.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t225 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t225.
    DATA t226 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t226.
    DATA(t227) = t1.
    DATA t228 TYPE REF TO object.
    CLEAR t228.
    t228 = t227.
    t226 ?= t228.
    t225 = me->build_issues( i_obj_1ed0 = t226 ).
    result = t225.

  ENDMETHOD.

  METHOD find_uses.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_node.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t5) = t1.
    t4 = t5->get_data( ).
    t3 = t4->references.
    DATA t6 TYPE REF TO zcl_lnt_ireference.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE string.
      DATA(t15) = t6.
      t14 = t15->reference_type.
      DATA(t16) = |Read From|.
      t13 = xsdbool( t14 = t16 ).
      t12 = t13.
      IF t13 = abap_false.
        DATA t17 TYPE abap_bool.
        DATA t18 TYPE string.
        DATA(t19) = t6.
        t18 = t19->reference_type.
        DATA(t20) = |Write To|.
        t17 = xsdbool( t18 = t20 ).
        t12 = t17.
      ENDIF.
      t11 = t12.
      IF t12 = abap_false.
        DATA t21 TYPE abap_bool.
        DATA t22 TYPE string.
        DATA(t23) = t6.
        t22 = t23->reference_type.
        DATA(t24) = |Type|.
        t21 = xsdbool( t22 = t24 ).
        t11 = t21.
      ENDIF.
      IF t11 = abap_true.
        DATA t25 TYPE REF TO zcl_lnt_rl_unused_variabl_w_ar.
        DATA(t26) = me->workarea.
        t25 = t26.
        DATA t27 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t28 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t29) = t6.
        t28 = t29->resolved.
        t27 = t28.
        DATA(t30) = VALUE abap_bool( ).
        DATA t31 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t32) = t27.
        t31 = t32.
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t34.
        t33 = t34.
        DATA(t35) = VALUE abap_bool( ).
        DATA(t36) = t31.
        IF t36 IS INITIAL.
          t35 = abap_true.
        ENDIF.
        t30 = t35.
        IF t30 = abap_true.
        ELSE.
          DATA(t37) = VALUE string( ).
          DATA(t38) = VALUE string( ).
          DATA t39 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t40 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t41) = t27.
          t40 = t41.
          t39 = t40.
          DATA(t42) = VALUE string( ).
          DATA t43 TYPE REF TO zcl_lnt_position.
          DATA t44 TYPE REF TO zcl_lnt_position.
          DATA t45 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t46) = t39.
          t45 = t46.
          DATA t47 TYPE REF TO zcl_lnt_position.
          DATA t48 TYPE REF TO zcl_lnt_abstract_token.
          DATA t49 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t50) = t45.
          t49 = t50->token.
          t48 = t49.
          DATA t51 TYPE REF TO zcl_lnt_position.
          DATA(t52) = t48.
          t51 = t52->start.
          t47 = t51.
          t44 = t47.
          t43 = t44.
          DATA(t53) = VALUE string( ).
          DATA(t54) = VALUE string( ).
          DATA(t55) = VALUE string( ).
          DATA t56 TYPE string.
          DATA t57 TYPE string.
          DATA t58 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t59) = t39.
          t58 = t59.
          DATA t60 TYPE string.
          DATA(t61) = t58.
          t60 = t61->filename.
          t57 = t60.
          DATA(t62) = |,|.
          DATA(t63) = strlen( t57 ).
          t56 = |{ t57 }{ t62 }|.
          DATA(t64) = VALUE string( ).
          DATA t65 TYPE f.
          DATA t66 TYPE REF TO zcl_lnt_position.
          DATA(t67) = t43.
          t66 = t67.
          DATA t68 TYPE f.
          DATA(t69) = t66.
          t68 = t69->row.
          t65 = t68.
          IF t65 <> trunc( t65 ) OR t65 > range_safe_integer OR t65 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t70) = CONV int8( t65 ).
          t64 = |{ t70 }|.
          DATA(t71) = strlen( t56 ).
          t55 = |{ t56 }{ t64 }|.
          DATA(t72) = |,|.
          DATA(t73) = strlen( t55 ).
          t54 = |{ t55 }{ t72 }|.
          DATA t74 TYPE string.
          DATA t75 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t76 TYPE REF TO zcl_lnt_position.
          DATA(t77) = t43.
          t76 = t77.
          DATA t78 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t79) = t76.
          t78 = t79->col.
          t75 = t78.
          t74 = zlnt_runtime_numb_290eb04a9758=>text( t75 ).
          DATA(t80) = strlen( t54 ).
          t53 = |{ t54 }{ t74 }|.
          t42 = t53.
          t38 = t42.
          t37 = t38.
          DATA t81 TYPE REF TO zcl_lnt_shape_3488a94d.
          DATA t82 TYPE REF TO zcl_lnt_shape_3488a94d.
          DATA t83 TYPE REF TO zlnt_runtime_map__eb808f96a04f.
          DATA(t84) = t25.
          t83 = t84->workarea.
          DATA(t85) = t37.
          t82 = t83->get( p0 = t85 ).
          t81 = t82.
          DATA(t86) = VALUE abap_bool( ).
          DATA t87 TYPE REF TO zcl_lnt_shape_3488a94d.
          DATA(t88) = t81.
          t87 = t88.
          DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t90.
          t89 = t90.
          DATA(t91) = VALUE abap_bool( ).
          DATA(t92) = VALUE abap_bool( ).
          DATA(t93) = t87.
          IF t93 IS INITIAL.
            t92 = abap_true.
          ENDIF.
          t91 = xsdbool( t92 = abap_false ).
          t86 = t91.
          IF t86 = abap_true.
            DATA t94 TYPE REF TO zcl_lnt_shape_3488a94d.
            DATA(t95) = t81.
            t94 = t95.
            DATA t96 TYPE f.
            DATA t97 TYPE f.
            DATA t98 TYPE REF TO zcl_lnt_shape_3488a94d.
            DATA(t99) = t81.
            t98 = t99.
            t97 = t98->count.
            DATA(t100) = CONV f( 1 ).
            t96 = t97 - t100.
            t94->count = t96.
            DELETE t94->zlnt_record_delet_0597644d88b4 WHERE table_line = `count`.
            DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t101.
            IF t94->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t94->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `count` p1 = t101 ).
            ENDIF.
            DATA(t102) = |count|.
            DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t103.
            IF t94->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = t102 p1 = t103 ).
            ENDIF.
            DATA t104 TYPE abap_bool.
            DATA t105 TYPE f.
            DATA t106 TYPE REF TO zcl_lnt_shape_3488a94d.
            DATA(t107) = t81.
            t106 = t107.
            t105 = t106->count.
            DATA(t108) = CONV f( 0 ).
            t104 = xsdbool( t105 = t108 ).
            IF t104 = abap_true.
              DATA t109 TYPE abap_bool.
              DATA t110 TYPE REF TO zlnt_runtime_map__eb808f96a04f.
              DATA(t111) = t25.
              t110 = t111->workarea.
              DATA(t112) = t37.
              DELETE t110->entries WHERE k = t112.
              t109 = xsdbool( sy-subrc = 0 ).
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t114) = t1.
    t113 = t114->get_children( ).
    DATA t115 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t115.
    DATA t116 TYPE REF TO object.
    CLEAR t116.
    DATA(t117) = VALUE i( ).
    DO.
      t113->load( ).
      IF t117 >= lines( t113->items ).
        EXIT.
      ENDIF.
      CLEAR t116.
      READ TABLE t113->items INDEX t117 + 1 INTO t116.
      t117 = t117 + 1.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      CLEAR t115.
      IF t116 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t118 ?= t116.
        DATA t119 TYPE REF TO object.
        t119 = t118->as_ref( ).
        t115 ?= t119.
      ELSE.
        t115 ?= t116.
      ENDIF.
      DATA(t120) = t115.
      DATA(t121) = t2.
      me->find_uses( i_node = t120 i_obj_1ed0 = t121 ).
    ENDDO.
  ENDMETHOD.

  METHOD build_workarea.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_node.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA t5 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t6) = t1.
    t5 = t6->get_identifier( ).
    t4 = t5->stype.
    t3 = t4.
    DATA t7 TYPE abap_bool.
    DATA(t8) = t3.
    DATA(t9) = |open_sql|.
    t7 = xsdbool( t8 = t9 ).
    IF t7 = abap_true.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = t1.
    t10 = t11->get_children( ).
    DATA t12 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
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
      DATA(t17) = t12.
      DATA(t18) = t2.
      me->build_workarea( i_node = t17 i_obj_1ed0 = t18 ).
    ENDDO.
    DATA t19 TYPE abap_bool.
    DATA(t20) = t3.
    DATA(t21) = |_builtin|.
    t19 = xsdbool( t20 <> t21 ).
    IF t19 = abap_true.
      DATA t22 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA t23 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA t24 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t25) = t1.
      t24 = t25->get_data( ).
      t23 = t24->vars.
      t22 = t23.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t27) = t22.
      t26 = t27->keys( ).
      DATA(t28) = VALUE string( ).
      t26->dense( ).
      DATA(t29) = VALUE i( ).
      DO.
        t26->load( ).
        IF t29 >= lines( t26->items ).
          EXIT.
        ENDIF.
        CLEAR t28.
        READ TABLE t26->items INDEX t29 + 1 INTO t28.
        IF t26->has( t29 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t29 = t29 + 1.
        DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t33 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t34 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t35) = t22.
        DATA(t36) = t28.
        t34 = t35->get( p0 = t36 ).
        t33 = t34.
        t32 = t33.
        DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t38) = t32.
        t37 = t38->meta.
        t31 = t37.
        t30 = t31.
        DATA(t39) = VALUE abap_bool( ).
        DATA t40 TYPE abap_bool.
        DATA t41 TYPE abap_bool.
        DATA t42 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t43) = me->conf.
        t42 = t43->zlnt_view_read_sr_e492ba7f19da( ).
        t41 = xsdbool( t42 IS BOUND ).
        t40 = t41.
        IF t41 = abap_true.
          DATA t44 TYPE abap_bool.
          DATA t45 TYPE i.
          DATA t46 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t47 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t48) = me->conf.
          t47 = t48->zlnt_view_read_sr_e492ba7f19da( ).
          t46 = t47.
          t46->load( ).
          t45 = lines( t46->items ).
          DATA(t49) = 0.
          t44 = xsdbool( t45 > t49 ).
          t40 = t44.
        ENDIF.
        t39 = t40.
        IF t40 = abap_true.
          DATA(t50) = VALUE abap_bool( ).
          DATA t51 TYPE abap_bool.
          DATA(t52) = abap_false.
          t51 = t52.
          DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t54 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t55) = me->conf.
          t54 = t55->zlnt_view_read_sr_e492ba7f19da( ).
          t53 = t54.
          DATA(t56) = VALUE string( ).
          t53->dense( ).
          DATA(t57) = VALUE i( ).
          DO.
            t53->load( ).
            IF t57 >= lines( t53->items ).
              EXIT.
            ENDIF.
            CLEAR t56.
            READ TABLE t53->items INDEX t57 + 1 INTO t56.
            IF t53->has( t57 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t57 = t57 + 1.
            DATA(t58) = VALUE abap_bool( ).
            DATA t59 TYPE string.
            DATA(t60) = t56.
            DATA(t61) = strlen( t60 ).
            t59 = t60.
            IF t59 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t59 TO UPPER CASE.
            ELSE.
              t59 = zlnt_runtime_uppe_91169605024d=>full( t59 ).
            ENDIF.
            DATA(t62) = t28.
            t58 = xsdbool( t59 = t62 ).
            IF t58 = abap_true.
              DATA(t63) = abap_true.
              t51 = t63.
              EXIT.
            ENDIF.
          ENDDO.
          DATA(t64) = t51.
          t50 = t64.
          t39 = t50.
        ENDIF.
        IF t39 = abap_true.
          CONTINUE.
        ELSE.
          DATA t65 TYPE abap_bool.
          DATA t66 TYPE abap_bool.
          DATA t67 TYPE abap_bool.
          DATA(t68) = me->conf.
          t67 = t68->zlnt_view_read_sr_68c11a06ca38( ).
          DATA(t69) = abap_true.
          t66 = xsdbool( t67 = t69 ).
          t65 = t66.
          IF t66 = abap_true.
            DATA t70 TYPE abap_bool.
            DATA(t71) = t30.
            DATA(t72) = |abstract|.
            t70 = t71->includes( p0 = t72 ).
            t65 = t70.
          ENDIF.
          IF t65 = abap_true.
            CONTINUE.
          ELSE.
            DATA(t73) = VALUE abap_bool( ).
            DATA(t74) = VALUE abap_bool( ).
            DATA t75 TYPE abap_bool.
            DATA t76 TYPE abap_bool.
            DATA(t77) = t28.
            DATA(t78) = |ME|.
            t76 = xsdbool( t77 = t78 ).
            t75 = t76.
            IF t76 = abap_false.
              DATA t79 TYPE abap_bool.
              DATA(t80) = t28.
              DATA(t81) = |SUPER|.
              t79 = xsdbool( t80 = t81 ).
              t75 = t79.
            ENDIF.
            t74 = t75.
            IF t75 = abap_false.
              DATA t82 TYPE abap_bool.
              DATA(t83) = t30.
              DATA(t84) = |selection_screen_tab|.
              t82 = t83->includes( p0 = t84 ).
              t74 = t82.
            ENDIF.
            t73 = t74.
            IF t74 = abap_false.
              DATA t85 TYPE abap_bool.
              DATA(t86) = t30.
              DATA(t87) = |event_parameter|.
              t85 = t86->includes( p0 = t87 ).
              t73 = t85.
            ENDIF.
            IF t73 = abap_true.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t88 TYPE abap_bool.
        DATA t89 TYPE abap_bool.
        DATA(t90) = t30.
        DATA(t91) = |inline|.
        t89 = t90->includes( p0 = t91 ).
        t88 = t89.
        DATA t92 TYPE REF TO zcl_lnt_rl_unused_variabl_w_ar.
        DATA(t93) = me->workarea.
        t92 = t93.
        DATA t94 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t95 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t96 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t97) = t22.
        DATA(t98) = t28.
        t96 = t97->get( p0 = t98 ).
        t95 = t96.
        t94 = t95.
        DATA t99 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t99.
        DATA t100 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t100.
        DATA(t101) = abap_true.
        IF t101 = abap_true.
          DATA(t102) = VALUE f( ).
          DATA(t103) = VALUE i( ).
          DATA(t104) = t88.
          IF t104 = abap_true.
            DATA(t105) = 2.
            t103 = t105.
          ELSE.
            DATA(t106) = 1.
            t103 = t106.
          ENDIF.
          t102 = t103.
          DATA(t107) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t107->has = abap_true.
          t107->value = t102.
          t100 = t107.
        ELSE.
          DATA t108 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t108.
          t100 = t108.
        ENDIF.
        t99 = t100.
        DATA(t109) = VALUE abap_bool( ).
        DATA(t110) = t99.
        IF t110 IS INITIAL.
          t109 = abap_true.
        ELSEIF t110->has = abap_false.
          t109 = abap_true.
        ENDIF.
        IF t109 = abap_true.
          DATA t111 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t111.
          DATA(t112) = abap_true.
          IF t112 = abap_true.
            DATA(t113) = CONV f( 1 ).
            DATA(t114) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t114->has = abap_true.
            t114->value = t113.
            t111 = t114.
          ELSE.
            DATA t115 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t115.
            t111 = t115.
          ENDIF.
          t99 = t111.
        ENDIF.
        DATA(t116) = VALUE string( ).
        DATA(t117) = VALUE string( ).
        DATA t118 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t119) = t94.
        t118 = t119.
        DATA(t120) = VALUE string( ).
        DATA t121 TYPE REF TO zcl_lnt_position.
        DATA t122 TYPE REF TO zcl_lnt_position.
        DATA t123 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t124) = t118.
        t123 = t124.
        DATA t125 TYPE REF TO zcl_lnt_position.
        DATA t126 TYPE REF TO zcl_lnt_abstract_token.
        DATA t127 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t128) = t123.
        t127 = t128->token.
        t126 = t127.
        DATA t129 TYPE REF TO zcl_lnt_position.
        DATA(t130) = t126.
        t129 = t130->start.
        t125 = t129.
        t122 = t125.
        t121 = t122.
        DATA(t131) = VALUE string( ).
        DATA(t132) = VALUE string( ).
        DATA(t133) = VALUE string( ).
        DATA t134 TYPE string.
        DATA t135 TYPE string.
        DATA t136 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t137) = t118.
        t136 = t137.
        DATA t138 TYPE string.
        DATA(t139) = t136.
        t138 = t139->filename.
        t135 = t138.
        DATA(t140) = |,|.
        DATA(t141) = strlen( t135 ).
        t134 = |{ t135 }{ t140 }|.
        DATA(t142) = VALUE string( ).
        DATA t143 TYPE f.
        DATA t144 TYPE REF TO zcl_lnt_position.
        DATA(t145) = t121.
        t144 = t145.
        DATA t146 TYPE f.
        DATA(t147) = t144.
        t146 = t147->row.
        t143 = t146.
        IF t143 <> trunc( t143 ) OR t143 > range_safe_integer OR t143 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t148) = CONV int8( t143 ).
        t142 = |{ t148 }|.
        DATA(t149) = strlen( t134 ).
        t133 = |{ t134 }{ t142 }|.
        DATA(t150) = |,|.
        DATA(t151) = strlen( t133 ).
        t132 = |{ t133 }{ t150 }|.
        DATA t152 TYPE string.
        DATA t153 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t154 TYPE REF TO zcl_lnt_position.
        DATA(t155) = t121.
        t154 = t155.
        DATA t156 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t157) = t154.
        t156 = t157->col.
        t153 = t156.
        t152 = zlnt_runtime_numb_290eb04a9758=>text( t153 ).
        DATA(t158) = strlen( t132 ).
        t131 = |{ t132 }{ t152 }|.
        t120 = t131.
        t117 = t120.
        t116 = t117.
        DATA t159 TYPE abap_bool.
        DATA t160 TYPE REF TO zlnt_runtime_map__eb808f96a04f.
        DATA(t161) = t92.
        t160 = t161->workarea.
        DATA(t162) = t116.
        t159 = t160->has( p0 = t162 ).
        IF t159 = abap_true.
        ELSE.
          DATA t163 TYPE REF TO zlnt_runtime_map__eb808f96a04f.
          CLEAR t163.
          DATA t164 TYPE REF TO zlnt_runtime_map__eb808f96a04f.
          DATA(t165) = t92.
          t164 = t165->workarea.
          DATA(t166) = t116.
          DATA t167 TYPE REF TO zcl_lnt_shape_3488a94d.
          CLEAR t167.
          DATA t168 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t168.
          DATA t169 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t169.
          DATA(t170) = abap_true.
          IF t170 = abap_true.
            DATA(t171) = t94.
            t169 = t171.
          ELSE.
            DATA t172 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t172.
            t169 = t172.
          ENDIF.
          t168 = t169.
          DATA(t173) = VALUE f( ).
          DATA(t174) = VALUE f( ).
          DATA(t175) = t99.
          IF t175->number_special <> 0.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t174 = t175->value.
          t173 = t174.
          t167 = NEW zcl_lnt_shape_3488a94d( i_id = t168 i_count = t173 ).
          CREATE OBJECT t167->zlnt_view_ownkeys_b0e8086400eb.
          t167->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t176.
          IF t167->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t167->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `id` p1 = t176 ).
          ENDIF.
          DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t177.
          IF t167->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t167->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `count` p1 = t177 ).
          ENDIF.
          CREATE OBJECT t167->zlnt_json_ownkeys_70e5fd461788.
          t167->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t178) = |id|.
          DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t179.
          IF t167->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t167->zlnt_json_ownkeys_70e5fd461788->put( p0 = t178 p1 = t179 ).
          ENDIF.
          DATA(t180) = |count|.
          DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t181.
          IF t167->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t167->zlnt_json_ownkeys_70e5fd461788->put( p0 = t180 p1 = t181 ).
          ENDIF.
          t163 = t164->set( p0 = t166 p1 = t167 ).
        ENDIF.
      ENDDO.
    ENDIF.
  ENDMETHOD.

  METHOD build_issues.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t5.
    DATA t6 TYPE string.
    DATA(t7) = |unused_variables|.
    t6 = t7.
    DATA t8 TYPE string.
    DATA(t9) = |Unused variables|.
    t8 = t9.
    DATA t10 TYPE string.
    DATA(t11) = |Checks for unused variables and constants|.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    DATA(t14) = abap_true.
    IF t14 = abap_true.
      DATA(t15) = |Skips event parameters.\n\nNote that this currently does not w|.
      t15 = t15 && |ork if the source code uses macros.\n\nUnused variables are no|.
      t15 = t15 && |t reported if the object contains parser or syntax errors.\n\n|.
      t15 = t15 && |Errors found in INCLUDES are reported for the main program.|.
      DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t16->has = abap_true.
      t16->value = t15.
      t13 = t16.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      t13 = t17.
    ENDIF.
    t12 = t13.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t23.
      t22 = t23.
      DATA(t24) = t22.
      DATA(t25) = |Quickfix|.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
      DATA(t26) = t22.
      t21 = t26.
      t19 = t21.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t27.
      t19 = t27.
    ENDIF.
    t18 = t19.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = |##NEEDED|.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t31.
      t29 = t32.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t29 = t33.
    ENDIF.
    t28 = t29.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    DATA(t36) = abap_true.
    IF t36 = abap_true.
      DATA(t37) = |EC NEEDED|.
      DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t38->has = abap_true.
      t38->value = t37.
      t35 = t38.
    ELSE.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t39.
      t35 = t39.
    ENDIF.
    t34 = t35.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    DATA(t42) = abap_true.
    IF t42 = abap_true.
      DATA(t43) = |DATA: BEGIN OF blah1,\n      test  TYPE string,\n      test2 T|.
      t43 = t43 && |YPE string,\n    END OF blah1.|.
      DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t44->has = abap_true.
      t44->value = t43.
      t41 = t44.
    ELSE.
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t45.
      t41 = t45.
    ENDIF.
    t40 = t41.
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t47.
    DATA(t48) = abap_true.
    IF t48 = abap_true.
      DATA(t49) = |DATA: BEGIN OF blah2 ##NEEDED,\n      test  TYPE string,\n    |.
      t49 = t49 && |  test2 TYPE string,\n    END OF blah2.|.
      DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t50->has = abap_true.
      t50->value = t49.
      t47 = t50.
    ELSE.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      t47 = t51.
    ENDIF.
    t46 = t47.
    t5 = NEW zcl_lnt_irule_metadata( i_key = t6 i_title = t8 i_short_description = t10 i_bad_example = t40 i_good_example = t46 i_extended_information = t12 i_tags = t18 i_pragma = t28 i_pseudo_comment = t34 ).
    CREATE OBJECT t5->zlnt_view_ownkeys_b0e8086400eb.
    t5->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t52 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t53 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t54 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t55 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t56 ).
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t57 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t58 ).
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t59 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t60 ).
    ENDIF.
    CREATE OBJECT t5->zlnt_json_ownkeys_70e5fd461788.
    t5->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t61) = |key|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |title|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    DATA(t65) = |shortDescription|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    DATA(t67) = |extendedInformation|.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t67 p1 = t68 ).
    ENDIF.
    DATA(t69) = |tags|.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t69 p1 = t70 ).
    ENDIF.
    DATA(t71) = |pragma|.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t71 p1 = t72 ).
    ENDIF.
    DATA(t73) = |pseudoComment|.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
    ENDIF.
    DATA(t75) = |badExample|.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t75 p1 = t76 ).
    ENDIF.
    DATA(t77) = |goodExample|.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t77 p1 = t78 ).
    ENDIF.
    t4 = t5.
    DATA(t79) = VALUE string( ).
    DATA(t80) = VALUE string( ).
    DATA(t81) = VALUE string( ).
    DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t84) = t4.
    t83 = t84->pragma.
    t82 = t83.
    DATA(t85) = VALUE string( ).
    DATA(t86) = VALUE abap_bool( ).
    DATA(t87) = t82.
    IF t87 IS INITIAL.
      t86 = abap_true.
    ELSEIF t87->has = abap_false.
      t86 = abap_true.
    ENDIF.
    IF t86 = abap_true.
      DATA(t88) = |undefined|.
      t85 = t88.
    ELSE.
      DATA t89 TYPE string.
      DATA(t90) = t82.
      t89 = t90->value.
      t85 = t89.
    ENDIF.
    t81 = t85.
    DATA(t91) = ||.
    DATA(t92) = strlen( t81 ).
    t80 = |{ t81 }{ t91 }|.
    t79 = t80.
    DATA t93 TYPE REF TO zlnt_runtime_map__36824941f28a.
    DATA(t94) = NEW zlnt_runtime_map__36824941f28a( ).
    t93 = t94.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t96 TYPE REF TO zcl_lnt_rl_unused_variabl_w_ar.
    DATA(t97) = me->workarea.
    t96 = t97.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t100.
    t99 = t100.
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t103) = t99.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t105 TYPE REF TO zlnt_runtime_map__eb808f96a04f.
    DATA(t106) = t96.
    t105 = t106->workarea.
    t104 = t105->values( ).
    t102 = t103->concat( p0 = t104 ).
    t101 = t102.
    DATA(t107) = t101.
    t98 = t107.
    t95 = t98.
    DATA t108 TYPE REF TO zcl_lnt_shape_3488a94d.
    CLEAR t108.
    DATA t109 TYPE REF TO object.
    CLEAR t109.
    DATA(t110) = VALUE i( ).
    DO.
      t95->load( ).
      IF t110 >= lines( t95->items ).
        EXIT.
      ENDIF.
      CLEAR t109.
      READ TABLE t95->items INDEX t110 + 1 INTO t109.
      t110 = t110 + 1.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t111.
      CLEAR t108.
      IF t109 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t111 ?= t109.
        DATA t112 TYPE REF TO object.
        t112 = t111->as_ref( ).
        t108 ?= t112.
      ELSE.
        t108 ?= t109.
      ENDIF.
      DATA t113 TYPE string.
      DATA t114 TYPE string.
      DATA t115 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t116 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t117) = t108.
      t116 = t117->id.
      t115 = t116.
      DATA t118 TYPE string.
      DATA(t119) = t115.
      t118 = t119->filename.
      t114 = t118.
      t113 = t114.
      DATA t120 TYPE abap_bool.
      DATA t121 TYPE abap_bool.
      DATA(t122) = me->reg.
      DATA(t123) = t113.
      t121 = t122->is_file_dependency( i_filename = t123 ).
      DATA(t124) = abap_true.
      t120 = xsdbool( t121 = t124 ).
      IF t120 = abap_true.
        CONTINUE.
      ELSE.
        DATA t125 TYPE abap_bool.
        DATA t126 TYPE abap_bool.
        DATA t127 TYPE abap_bool.
        DATA(t128) = t1.
        t127 = xsdbool( t128 IS BOUND AND t128 IS INSTANCE OF zcl_lnt_ob_program ).
        DATA(t129) = abap_false.
        t126 = xsdbool( t127 = t129 ).
        t125 = t126.
        IF t126 = abap_true.
          DATA t130 TYPE abap_bool.
          DATA t131 TYPE abap_bool.
          DATA(t132) = t1.
          DATA(t133) = t113.
          t131 = t132->contains_file( i_filename = t133 ).
          DATA(t134) = abap_false.
          t130 = xsdbool( t131 = t134 ).
          t125 = t130.
        ENDIF.
        IF t125 = abap_true.
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA t135 TYPE abap_bool.
      DATA t136 TYPE abap_bool.
      DATA(t137) = t93.
      DATA(t138) = t113.
      t136 = t137->has( p0 = t138 ).
      DATA(t139) = abap_false.
      t135 = xsdbool( t136 = t139 ).
      IF t135 = abap_true.
        DATA t140 TYPE REF TO zlnt_runtime_map__36824941f28a.
        CLEAR t140.
        DATA(t141) = t93.
        DATA(t142) = t113.
        DATA t143 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t143.
        DATA t144 TYPE string.
        DATA(t145) = t113.
        t144 = t145.
        DATA t146 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t146.
        DATA t147 TYPE REF TO zif_lnt_file.
        DATA t148 TYPE REF TO zif_lnt_file.
        DATA(t149) = me->reg.
        DATA(t150) = t144.
        t148 = t149->get_file_by_name( i_filename = t150 ).
        t147 = t148.
        DATA t151 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t151.
        DATA(t152) = VALUE abap_bool( ).
        DATA t153 TYPE REF TO zif_lnt_file.
        DATA(t154) = t147.
        t153 = t154.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t156.
        t155 = t156.
        DATA(t157) = VALUE abap_bool( ).
        DATA(t158) = t153.
        IF t158 IS INITIAL.
          t157 = abap_true.
        ENDIF.
        t152 = t157.
        IF t152 = abap_true.
          DATA t159 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t159.
          t151 = t159.
        ELSE.
          DATA t160 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t160.
          DATA t161 TYPE REF TO zif_lnt_object.
          DATA t162 TYPE REF TO zif_lnt_object.
          DATA(t163) = me->reg.
          DATA t164 TYPE REF TO zif_lnt_file.
          DATA(t165) = t147.
          t164 = t165.
          t162 = t163->find_object_for_file( i_file = t164 ).
          t161 = t162.
          DATA t166 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t166.
          DATA t167 TYPE abap_bool.
          DATA t168 TYPE abap_bool.
          DATA(t169) = t161.
          t168 = xsdbool( t169 IS BOUND AND t169 IS INSTANCE OF zcl_lnt_abap_object ).
          t167 = xsdbool( t168 = abap_false ).
          IF t167 = abap_true.
            DATA t170 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t170.
            t166 = t170.
          ELSE.
            DATA t171 TYPE REF TO zcl_lnt_abap_file.
            DATA t172 TYPE REF TO zcl_lnt_abap_object.
            DATA(t173) = t161.
            DATA t174 TYPE REF TO object.
            t174 = t173.
            t172 ?= t174.
            DATA(t175) = t144.
            t171 = t172->get_abap_file_by_name( i_filename = t175 ).
            t166 = t171.
          ENDIF.
          t160 = t166.
          t151 = t160.
        ENDIF.
        t146 = t151.
        t143 = t146.
        t140 = t141->set( p0 = t142 p1 = t143 ).
      ENDIF.
      DATA t176 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t176.
      DATA t177 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t177.
      DATA(t178) = t93.
      DATA(t179) = t113.
      DATA(t180) = CAST zlnt_runtime_opti_6ea62210990f( t178->get( p0 = t179 ) ).
      IF t180 IS BOUND.
        t177 = t180->value.
      ENDIF.
      t176 = t177.
      DATA t181 TYPE REF TO zcl_lnt_statement_node.
      DATA t182 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t182.
      t181 = t182.
      DATA t183 TYPE i.
      DATA(t184) = -1.
      t183 = t184.
      DATA(t185) = VALUE abap_bool( ).
      DATA t186 TYPE REF TO zcl_lnt_abap_file.
      DATA(t187) = t176.
      t186 = t187.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t189.
      t188 = t189.
      DATA(t190) = VALUE abap_bool( ).
      DATA(t191) = VALUE abap_bool( ).
      DATA(t192) = t186.
      IF t192 IS INITIAL.
        t191 = abap_true.
      ENDIF.
      t190 = xsdbool( t191 = abap_false ).
      t185 = t190.
      IF t185 = abap_true.
        DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t195 TYPE REF TO zcl_lnt_abap_file.
        DATA t196 TYPE REF TO zcl_lnt_abap_file.
        DATA(t197) = t176.
        t196 = t197.
        t195 = t196.
        DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t199) = t195.
        t198 = t199->statements.
        t194 = t198.
        t193 = t194.
        DATA t200 TYPE REF TO zcl_lnt_abstract_token.
        DATA t201 TYPE REF TO zcl_lnt_abstract_token.
        DATA t202 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t203 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t204) = t108.
        t203 = t204->id.
        t202 = t203.
        DATA t205 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t206) = t202.
        t205 = t206->token.
        t201 = t205.
        t200 = t201.
        DATA t207 TYPE i.
        DATA(t208) = 0.
        t207 = t208.
        DO.
          DATA t209 TYPE abap_bool.
          DATA(t210) = t207.
          DATA t211 TYPE i.
          DATA(t212) = t193.
          t212->load( ).
          t211 = lines( t212->items ).
          t209 = xsdbool( t210 < t211 ).
          IF t209 = abap_false.
            EXIT.
          ENDIF.
          DATA(t213) = VALUE abap_bool( ).
          DATA t214 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t214.
          DATA(t215) = t193.
          DATA(t216) = t207.
          t216 = t216 + 1.
          DATA t217 TYPE REF TO object.
          CLEAR t217.
          t215->load( ).
          CLEAR t217.
          READ TABLE t215->items INDEX t216 INTO t217.
          DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t218.
          CLEAR t214.
          IF t217 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t218 ?= t217.
            DATA t219 TYPE REF TO object.
            t219 = t218->as_ref( ).
            t214 ?= t219.
          ELSE.
            t214 ?= t217.
          ENDIF.
          DATA(t220) = t200.
          t213 = t214->includes_token( i_search_b3ca = t220 ).
          IF t213 = abap_true.
            DATA t221 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t221.
            DATA(t222) = abap_true.
            IF t222 = abap_true.
              DATA t223 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t223.
              DATA(t224) = t193.
              DATA(t225) = t207.
              t225 = t225 + 1.
              DATA t226 TYPE REF TO object.
              CLEAR t226.
              t224->load( ).
              CLEAR t226.
              READ TABLE t224->items INDEX t225 INTO t226.
              DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t227.
              CLEAR t223.
              IF t226 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t227 ?= t226.
                DATA t228 TYPE REF TO object.
                t228 = t227->as_ref( ).
                t223 ?= t228.
              ELSE.
                t223 ?= t226.
              ENDIF.
              t221 = t223.
            ELSE.
              DATA t229 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t229.
              t221 = t229.
            ENDIF.
            t181 = t221.
            DATA(t230) = t207.
            t183 = t230.
            EXIT.
          ENDIF.
          DATA t231 TYPE i.
          DATA(t232) = t207.
          DATA(t233) = 1.
          t231 = t232 + t233.
          t207 = t231.
        ENDDO.
      ENDIF.
      DATA(t234) = VALUE abap_bool( ).
      DATA(t235) = VALUE abap_bool( ).
      DATA t236 TYPE REF TO zcl_lnt_statement_node.
      DATA(t237) = t181.
      t236 = t237.
      DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t239.
      t238 = t239.
      DATA(t240) = VALUE abap_bool( ).
      DATA(t241) = VALUE abap_bool( ).
      DATA(t242) = t236.
      IF t242 IS INITIAL.
        t241 = abap_true.
      ENDIF.
      t240 = xsdbool( t241 = abap_false ).
      t235 = t240.
      t234 = t235.
      IF t235 = abap_true.
        DATA(t243) = VALUE abap_bool( ).
        DATA t244 TYPE REF TO zcl_lnt_abap_file.
        DATA(t245) = t176.
        t244 = t245.
        DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t247.
        t246 = t247.
        DATA(t248) = VALUE abap_bool( ).
        DATA(t249) = VALUE abap_bool( ).
        DATA(t250) = t244.
        IF t250 IS INITIAL.
          t249 = abap_true.
        ENDIF.
        t248 = xsdbool( t249 = abap_false ).
        t243 = t248.
        t234 = t243.
      ENDIF.
      IF t234 = abap_true.
        DATA(t251) = VALUE abap_bool( ).
        DATA t252 TYPE abap_bool.
        DATA(t253) = abap_false.
        t252 = t253.
        DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t255 TYPE REF TO zcl_lnt_statement_node.
        DATA t256 TYPE REF TO zcl_lnt_statement_node.
        DATA(t257) = t181.
        t256 = t257.
        t255 = t256.
        DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t259) = t255.
        t258 = t259->pragmas.
        t254 = t258.
        DATA t260 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t260.
        DATA t261 TYPE REF TO object.
        CLEAR t261.
        DATA(t262) = VALUE i( ).
        DO.
          t254->load( ).
          IF t262 >= lines( t254->items ).
            EXIT.
          ENDIF.
          CLEAR t261.
          READ TABLE t254->items INDEX t262 + 1 INTO t261.
          t262 = t262 + 1.
          DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t263.
          CLEAR t260.
          IF t261 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t263 ?= t261.
            DATA t264 TYPE REF TO object.
            t264 = t263->as_ref( ).
            t260 ?= t264.
          ELSE.
            t260 ?= t261.
          ENDIF.
          DATA t265 TYPE abap_bool.
          DATA t266 TYPE string.
          DATA t267 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t268) = t260.
          t267 = t268.
          DATA t269 TYPE string.
          DATA(t270) = t267.
          t269 = t270->str.
          t266 = t269.
          DATA(t271) = t79.
          t265 = xsdbool( t266 = t271 ).
          IF t265 = abap_true.
            DATA(t272) = abap_true.
            t252 = t272.
            EXIT.
          ENDIF.
        ENDDO.
        DATA(t273) = t252.
        t251 = t273.
        IF t251 = abap_true.
          CONTINUE.
        ELSE.
          DATA(t274) = VALUE abap_bool( ).
          DATA t275 TYPE REF TO zcl_lnt_abap_file.
          DATA t276 TYPE REF TO zcl_lnt_abap_file.
          DATA(t277) = t176.
          t276 = t277.
          t275 = t276.
          DATA t278 TYPE i.
          DATA(t279) = t183.
          t278 = t279.
          DATA t280 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t281 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t282) = t108.
          t281 = t282->id.
          t280 = t281.
          DATA t283 TYPE REF TO zcl_lnt_abap_object.
          DATA(t284) = t1.
          t283 = t284.
          DATA(t285) = VALUE abap_bool( ).
          DATA(t286) = VALUE abap_bool( ).
          DATA t287 TYPE REF TO zcl_lnt_abap_file.
          DATA t288 TYPE REF TO zcl_lnt_abap_file.
          DATA(t289) = t283.
          DATA t290 TYPE string.
          DATA t291 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t292) = t280.
          t291 = t292.
          DATA t293 TYPE string.
          DATA(t294) = t291.
          t293 = t294->filename.
          t290 = t293.
          t288 = t289->get_abap_file_by_name( i_filename = t290 ).
          t287 = t288.
          DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t296.
          t295 = t296.
          DATA(t297) = VALUE abap_bool( ).
          DATA(t298) = t287.
          IF t298 IS INITIAL.
            t297 = abap_true.
          ENDIF.
          t286 = t297.
          IF t286 = abap_true.
            DATA(t299) = abap_false.
            t285 = t299.
          ELSE.
            DATA(t300) = VALUE abap_bool( ).
            DATA t301 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t302 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t303 TYPE REF TO zcl_lnt_abap_file.
            DATA(t304) = t275.
            t303 = t304.
            DATA t305 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t306) = t303.
            t305 = t306->statements.
            t302 = t305.
            t301 = t302.
            DATA t307 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t307.
            DATA t308 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t308.
            DATA(t309) = t301.
            DATA(t310) = VALUE i( ).
            DATA t311 TYPE f.
            DATA t312 TYPE int8.
            DATA t313 TYPE int8.
            DATA(t314) = t278.
            t313 = t314.
            DATA(t315) = CONV int8( 1 ).
            t312 = t313 + t315.
            t311 = t312.
            IF t311 > range_i32_upper.
              t310 = range_i32_upper.
            ELSEIF t311 < range_i32_lower.
              t310 = range_i32_lower.
            ELSE.
              t310 = trunc( t311 ).
            ENDIF.
            t310 = t310 + 1.
            DATA t316 TYPE REF TO object.
            CLEAR t316.
            t309->load( ).
            CLEAR t316.
            READ TABLE t309->items INDEX t310 INTO t316.
            DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t317.
            CLEAR t308.
            IF t316 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t317 ?= t316.
              DATA t318 TYPE REF TO object.
              t318 = t317->as_ref( ).
              t308 ?= t318.
            ELSE.
              t308 ?= t316.
            ENDIF.
            t307 = t308.
            DATA(t319) = VALUE abap_bool( ).
            DATA(t320) = VALUE abap_bool( ).
            DATA t321 TYPE REF TO zif_lnt_statement.
            CLEAR t321.
            DATA t322 TYPE REF TO zcl_lnt_statement_node.
            DATA(t323) = t307.
            t322 = t323.
            DATA t324 TYPE REF TO zif_lnt_statement.
            CLEAR t324.
            DATA(t325) = VALUE abap_bool( ).
            DATA(t326) = t322.
            IF t326 IS INITIAL.
              t325 = abap_true.
            ENDIF.
            IF t325 = abap_true.
              DATA t327 TYPE REF TO zif_lnt_statement.
              CLEAR t327.
              t324 = t327.
            ELSE.
              DATA t328 TYPE REF TO zif_lnt_statement.
              DATA(t329) = t322.
              t328 = t329->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
              t324 = t328.
            ENDIF.
            t321 = t324.
            t320 = xsdbool( t321 IS BOUND AND t321 IS INSTANCE OF zcl_lnt_st_comment ).
            t319 = t320.
            IF t320 = abap_true.
              DATA(t330) = VALUE abap_bool( ).
              DATA(t331) = VALUE i( ).
              DATA t332 TYPE string.
              DATA(t333) = t307.
              t332 = t333->concat_tokens( ).
              DATA(t334) = VALUE string( ).
              DATA(t335) = VALUE string( ).
              DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t336.
              DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t337.
              DATA t338 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t338.
              DATA t339 TYPE string.
              DATA(t340) = |unused_variables|.
              t339 = t340.
              DATA t341 TYPE string.
              DATA(t342) = |Unused variables|.
              t341 = t342.
              DATA t343 TYPE string.
              DATA(t344) = |Checks for unused variables and constants|.
              t343 = t344.
              DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t345.
              DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t346.
              DATA(t347) = abap_true.
              IF t347 = abap_true.
                DATA(t348) = |Skips event parameters.\n\nNote that this currently does not w|.
                t348 = t348 && |ork if the source code uses macros.\n\nUnused variables are no|.
                t348 = t348 && |t reported if the object contains parser or syntax errors.\n\n|.
                t348 = t348 && |Errors found in INCLUDES are reported for the main program.|.
                DATA(t349) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t349->has = abap_true.
                t349->value = t348.
                t346 = t349.
              ELSE.
                DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t350.
                t346 = t350.
              ENDIF.
              t345 = t346.
              DATA t351 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t351.
              DATA t352 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t352.
              DATA(t353) = abap_true.
              IF t353 = abap_true.
                DATA t354 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t355 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t356 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t356.
                t355 = t356.
                DATA(t357) = t355.
                DATA(t358) = |Quickfix|.
                t357->load( ).
                APPEND t358 TO t357->items.
                t357->save( ).
                DATA(t359) = t355.
                t354 = t359.
                t352 = t354.
              ELSE.
                DATA t360 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t360.
                t352 = t360.
              ENDIF.
              t351 = t352.
              DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t361.
              DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t362.
              DATA(t363) = abap_true.
              IF t363 = abap_true.
                DATA(t364) = |##NEEDED|.
                DATA(t365) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t365->has = abap_true.
                t365->value = t364.
                t362 = t365.
              ELSE.
                DATA t366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t366.
                t362 = t366.
              ENDIF.
              t361 = t362.
              DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t367.
              DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t368.
              DATA(t369) = abap_true.
              IF t369 = abap_true.
                DATA(t370) = |EC NEEDED|.
                DATA(t371) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t371->has = abap_true.
                t371->value = t370.
                t368 = t371.
              ELSE.
                DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t372.
                t368 = t372.
              ENDIF.
              t367 = t368.
              DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t373.
              DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t374.
              DATA(t375) = abap_true.
              IF t375 = abap_true.
                DATA(t376) = |DATA: BEGIN OF blah1,\n      test  TYPE string,\n      test2 T|.
                t376 = t376 && |YPE string,\n    END OF blah1.|.
                DATA(t377) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t377->has = abap_true.
                t377->value = t376.
                t374 = t377.
              ELSE.
                DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t378.
                t374 = t378.
              ENDIF.
              t373 = t374.
              DATA t379 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t379.
              DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t380.
              DATA(t381) = abap_true.
              IF t381 = abap_true.
                DATA(t382) = |DATA: BEGIN OF blah2 ##NEEDED,\n      test  TYPE string,\n    |.
                t382 = t382 && |  test2 TYPE string,\n    END OF blah2.|.
                DATA(t383) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t383->has = abap_true.
                t383->value = t382.
                t380 = t383.
              ELSE.
                DATA t384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t384.
                t380 = t384.
              ENDIF.
              t379 = t380.
              t338 = NEW zcl_lnt_irule_metadata( i_key = t339 i_title = t341 i_short_description = t343 i_bad_example = t373 i_good_example = t379 i_extended_information = t345 i_tags = t351 i_pragma = t361 i_pseudo_comment = t367 ).
              CREATE OBJECT t338->zlnt_view_ownkeys_b0e8086400eb.
              t338->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t385.
              IF t338->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t338->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t385 ).
              ENDIF.
              DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t386.
              IF t338->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t338->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t386 ).
              ENDIF.
              DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t387.
              IF t338->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t338->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t387 ).
              ENDIF.
              DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t388.
              IF t338->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t338->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t388 ).
              ENDIF.
              DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t389.
              IF t338->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t338->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t389 ).
              ENDIF.
              DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t390.
              IF t338->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t338->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t390 ).
              ENDIF.
              DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t391.
              IF t338->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t338->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t391 ).
              ENDIF.
              DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t392.
              IF t338->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t338->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t392 ).
              ENDIF.
              DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t393.
              IF t338->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t338->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t393 ).
              ENDIF.
              CREATE OBJECT t338->zlnt_json_ownkeys_70e5fd461788.
              t338->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t394) = |key|.
              DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t395.
              IF t338->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t338->zlnt_json_ownkeys_70e5fd461788->put( p0 = t394 p1 = t395 ).
              ENDIF.
              DATA(t396) = |title|.
              DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t397.
              IF t338->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t338->zlnt_json_ownkeys_70e5fd461788->put( p0 = t396 p1 = t397 ).
              ENDIF.
              DATA(t398) = |shortDescription|.
              DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t399.
              IF t338->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t338->zlnt_json_ownkeys_70e5fd461788->put( p0 = t398 p1 = t399 ).
              ENDIF.
              DATA(t400) = |extendedInformation|.
              DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t401.
              IF t338->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t338->zlnt_json_ownkeys_70e5fd461788->put( p0 = t400 p1 = t401 ).
              ENDIF.
              DATA(t402) = |tags|.
              DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t403.
              IF t338->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t338->zlnt_json_ownkeys_70e5fd461788->put( p0 = t402 p1 = t403 ).
              ENDIF.
              DATA(t404) = |pragma|.
              DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t405.
              IF t338->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t338->zlnt_json_ownkeys_70e5fd461788->put( p0 = t404 p1 = t405 ).
              ENDIF.
              DATA(t406) = |pseudoComment|.
              DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t407.
              IF t338->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t338->zlnt_json_ownkeys_70e5fd461788->put( p0 = t406 p1 = t407 ).
              ENDIF.
              DATA(t408) = |badExample|.
              DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t409.
              IF t338->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t338->zlnt_json_ownkeys_70e5fd461788->put( p0 = t408 p1 = t409 ).
              ENDIF.
              DATA(t410) = |goodExample|.
              DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t411.
              IF t338->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t338->zlnt_json_ownkeys_70e5fd461788->put( p0 = t410 p1 = t411 ).
              ENDIF.
              t337 = t338->pseudo_comment.
              t336 = t337.
              DATA(t412) = VALUE string( ).
              DATA(t413) = VALUE abap_bool( ).
              DATA(t414) = t336.
              IF t414 IS INITIAL.
                t413 = abap_true.
              ELSEIF t414->has = abap_false.
                t413 = abap_true.
              ENDIF.
              IF t413 = abap_true.
                DATA(t415) = |undefined|.
                t412 = t415.
              ELSE.
                DATA t416 TYPE string.
                DATA(t417) = t336.
                t416 = t417->value.
                t412 = t416.
              ENDIF.
              t335 = t412.
              DATA(t418) = ||.
              DATA(t419) = strlen( t335 ).
              t334 = |{ t335 }{ t418 }|.
              DATA(t420) = strlen( t332 ).
              IF t334 IS INITIAL.
                t331 = 0.
              ELSE.
                FIND t334 IN t332 MATCH OFFSET t331.
                IF sy-subrc <> 0.
                  t331 = -1.
                ENDIF.
              ENDIF.
              DATA(t421) = 0.
              t330 = xsdbool( t331 >= t421 ).
              t319 = t330.
            ENDIF.
            t300 = t319.
            t285 = t300.
          ENDIF.
          t274 = t285.
          IF t274 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t422) = VALUE string( ).
      DATA(t423) = VALUE string( ).
      DATA t424 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t425 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t426) = t108.
      t425 = t426->id.
      t424 = t425.
      DATA(t427) = VALUE string( ).
      DATA t428 TYPE string.
      DATA t429 TYPE string.
      DATA t430 TYPE REF TO zcl_lnt_abstract_token.
      DATA t431 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t432) = t424.
      t431 = t432->token.
      t430 = t431.
      DATA t433 TYPE string.
      DATA(t434) = t430.
      t433 = t434->str.
      t429 = t433.
      t428 = t429.
      DATA(t435) = VALUE abap_bool( ).
      DATA(t436) = VALUE string( ).
      DATA(t437) = t428.
      DATA(t438) = 0.
      DATA(t439) = 1.
      DATA(t440) = strlen( t437 ).
      IF t438 < 0.
        t438 = t438 + t440.
        IF t438 < 0.
          t438 = 0.
        ENDIF.
      ENDIF.
      IF t438 > t440 OR t439 <= 0.
        CLEAR t436.
      ELSE.
        IF t439 > t440 - t438.
          t439 = t440 - t438.
        ENDIF.
        t436 = t437+t438(t439).
      ENDIF.
      DATA(t441) = |!|.
      t435 = xsdbool( t436 = t441 ).
      IF t435 = abap_true.
        DATA(t442) = VALUE string( ).
        DATA t443 TYPE string.
        DATA(t444) = t428.
        t443 = t444.
        DATA(t445) = VALUE string( ).
        DATA(t446) = t443.
        DATA(t447) = 1.
        DATA t448 TYPE i.
        DATA(t449) = t443.
        DATA(t450) = strlen( t449 ).
        t448 = t450.
        DATA(t451) = strlen( t446 ).
        IF t447 < 0.
          t447 = t447 + t451.
          IF t447 < 0.
            t447 = 0.
          ENDIF.
        ENDIF.
        IF t447 > t451 OR t448 <= 0.
          CLEAR t445.
        ELSE.
          IF t448 > t451 - t447.
            t448 = t451 - t447.
          ENDIF.
          t445 = t446+t447(t448).
        ENDIF.
        t442 = t445.
        t428 = t442.
      ENDIF.
      DATA(t452) = t428.
      t427 = t452.
      t423 = t427.
      t422 = t423.
      DATA t453 TYPE string.
      DATA t454 TYPE string.
      DATA t455 TYPE string.
      DATA(t456) = |Variable "|.
      DATA t457 TYPE string.
      DATA(t458) = t422.
      DATA(t459) = strlen( t458 ).
      t457 = t458.
      TRANSLATE t457 TO LOWER CASE.
      DATA(t460) = strlen( t456 ).
      t455 = |{ t456 }{ t457 }|.
      DATA(t461) = |" not used|.
      DATA(t462) = strlen( t455 ).
      t454 = |{ t455 }{ t461 }|.
      t453 = t454.
      DATA t463 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t463.
      DATA t464 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t464.
      DATA t465 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t466 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t467) = t108.
      t466 = t467->id.
      t465 = t466.
      DATA t468 TYPE REF TO zcl_lnt_abap_object.
      DATA(t469) = t1.
      t468 = t469.
      DATA t470 TYPE REF TO zcl_lnt_statement_node.
      DATA(t471) = t181.
      t470 = t471.
      DATA t472 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t472.
      DATA(t473) = VALUE abap_bool( ).
      DATA(t474) = VALUE abap_bool( ).
      DATA t475 TYPE REF TO zcl_lnt_statement_node.
      DATA(t476) = t470.
      t475 = t476.
      DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t478.
      t477 = t478.
      DATA(t479) = VALUE abap_bool( ).
      DATA(t480) = t475.
      IF t480 IS INITIAL.
        t479 = abap_true.
      ENDIF.
      t474 = t479.
      t473 = t474.
      IF t474 = abap_false.
        DATA t481 TYPE abap_bool.
        DATA t482 TYPE abap_bool.
        DATA t483 TYPE REF TO zif_lnt_statement.
        DATA t484 TYPE REF TO zcl_lnt_statement_node.
        DATA(t485) = t470.
        t484 = t485.
        t483 = t484->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t482 = xsdbool( t483 IS BOUND AND t483 IS INSTANCE OF zcl_lnt_st_data ).
        t481 = xsdbool( t482 = abap_false ).
        t473 = t481.
      ENDIF.
      IF t473 = abap_true.
        DATA t486 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t486.
        t472 = t486.
      ELSE.
        DATA t487 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t487.
        DATA t488 TYPE REF TO zcl_lnt_abap_file.
        DATA t489 TYPE REF TO zcl_lnt_abap_file.
        DATA(t490) = t468.
        DATA t491 TYPE string.
        DATA t492 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t493) = t465.
        t492 = t493.
        DATA t494 TYPE string.
        DATA(t495) = t492.
        t494 = t495->filename.
        t491 = t494.
        t489 = t490->get_abap_file_by_name( i_filename = t491 ).
        t488 = t489.
        DATA t496 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t496.
        DATA(t497) = VALUE abap_bool( ).
        DATA t498 TYPE REF TO zcl_lnt_abap_file.
        DATA(t499) = t488.
        t498 = t499.
        DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t501.
        t500 = t501.
        DATA(t502) = VALUE abap_bool( ).
        DATA(t503) = t498.
        IF t503 IS INITIAL.
          t502 = abap_true.
        ENDIF.
        t497 = t502.
        IF t497 = abap_true.
          DATA t504 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t504.
          t496 = t504.
        ELSE.
          DATA t505 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t505.
          DATA(t506) = abap_true.
          IF t506 = abap_true.
            DATA t507 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA t508 TYPE REF TO zcl_lnt_abap_file.
            DATA(t509) = t488.
            t508 = t509.
            DATA t510 TYPE REF TO zcl_lnt_statement_node.
            DATA(t511) = t470.
            t510 = t511.
            t507 = zcl_lnt_edit_helper=>delete_statement( i_file = t508 i_statement = t510 ).
            t505 = t507.
          ELSE.
            DATA t512 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t512.
            t505 = t512.
          ENDIF.
          t496 = t505.
        ENDIF.
        t487 = t496.
        t472 = t487.
      ENDIF.
      t464 = t472.
      t463 = t464.
      DATA(t513) = t2.
      DATA t514 TYPE REF TO zcl_lnt_issue.
      DATA t515 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t516) = t108.
      t515 = t516->id.
      DATA(t517) = t453.
      DATA t518 TYPE string.
      DATA(t519) = t4.
      t518 = t519->key.
      DATA t520 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t521) = me->conf.
      t520 = t521->zlnt_view_read_sr_15c06369f827( ).
      DATA(t522) = t463.
      t514 = zcl_lnt_issue=>at_identifier( i_identifier = t515 i_message_26cb = t517 i_key = t518 i_severity = t520 i_fix = t522 ).
      t513->load( ).
      APPEND t514 TO t513->items.
      t513->save( ).
    ENDDO.
    DATA(t523) = t2.
    result = t523.

  ENDMETHOD.

  METHOD suppressedby_pseudo.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_file.
    DATA(t2) = i_statement_index.
    DATA(t3) = i_v.
    DATA(t4) = i_obj_1ed0.
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    DATA(t8) = t4.
    DATA t9 TYPE string.
    DATA t10 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t11) = t3.
    t10 = t11.
    DATA t12 TYPE string.
    DATA(t13) = t10.
    t12 = t13->filename.
    t9 = t12.
    t7 = t8->get_abap_file_by_name( i_filename = t9 ).
    t6 = t7.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    t14 = t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t6.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    t5 = t16.
    IF t5 = abap_true.
      DATA(t18) = abap_false.
      result = t18.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zcl_lnt_abap_file.
    DATA(t22) = t1.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t24) = t21.
    t23 = t24->statements.
    t20 = t23.
    t19 = t20.
    DATA t25 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t25.
    DATA t26 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t26.
    DATA(t27) = t19.
    DATA(t28) = VALUE i( ).
    DATA t29 TYPE f.
    DATA t30 TYPE int8.
    DATA t31 TYPE int8.
    DATA(t32) = t2.
    t31 = t32.
    DATA(t33) = CONV int8( 1 ).
    t30 = t31 + t33.
    t29 = t30.
    IF t29 > range_i32_upper.
      t28 = range_i32_upper.
    ELSEIF t29 < range_i32_lower.
      t28 = range_i32_lower.
    ELSE.
      t28 = trunc( t29 ).
    ENDIF.
    t28 = t28 + 1.
    DATA t34 TYPE REF TO object.
    CLEAR t34.
    t27->load( ).
    CLEAR t34.
    READ TABLE t27->items INDEX t28 INTO t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    CLEAR t26.
    IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t35 ?= t34.
      DATA t36 TYPE REF TO object.
      t36 = t35->as_ref( ).
      t26 ?= t36.
    ELSE.
      t26 ?= t34.
    ENDIF.
    t25 = t26.
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = VALUE abap_bool( ).
    DATA t39 TYPE REF TO zif_lnt_statement.
    CLEAR t39.
    DATA t40 TYPE REF TO zcl_lnt_statement_node.
    DATA(t41) = t25.
    t40 = t41.
    DATA t42 TYPE REF TO zif_lnt_statement.
    CLEAR t42.
    DATA(t43) = VALUE abap_bool( ).
    DATA(t44) = t40.
    IF t44 IS INITIAL.
      t43 = abap_true.
    ENDIF.
    IF t43 = abap_true.
      DATA t45 TYPE REF TO zif_lnt_statement.
      CLEAR t45.
      t42 = t45.
    ELSE.
      DATA t46 TYPE REF TO zif_lnt_statement.
      DATA(t47) = t40.
      t46 = t47->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t42 = t46.
    ENDIF.
    t39 = t42.
    t38 = xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_st_comment ).
    t37 = t38.
    IF t38 = abap_true.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = VALUE i( ).
      DATA t50 TYPE string.
      DATA(t51) = t25.
      t50 = t51->concat_tokens( ).
      DATA(t52) = VALUE string( ).
      DATA(t53) = VALUE string( ).
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      DATA t56 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t56.
      DATA t57 TYPE string.
      DATA(t58) = |unused_variables|.
      t57 = t58.
      DATA t59 TYPE string.
      DATA(t60) = |Unused variables|.
      t59 = t60.
      DATA t61 TYPE string.
      DATA(t62) = |Checks for unused variables and constants|.
      t61 = t62.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t63.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t64.
      DATA(t65) = abap_true.
      IF t65 = abap_true.
        DATA(t66) = |Skips event parameters.\n\nNote that this currently does not w|.
        t66 = t66 && |ork if the source code uses macros.\n\nUnused variables are no|.
        t66 = t66 && |t reported if the object contains parser or syntax errors.\n\n|.
        t66 = t66 && |Errors found in INCLUDES are reported for the main program.|.
        DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t67->has = abap_true.
        t67->value = t66.
        t64 = t67.
      ELSE.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        t64 = t68.
      ENDIF.
      t63 = t64.
      DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t69.
      DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t70.
      DATA(t71) = abap_true.
      IF t71 = abap_true.
        DATA t72 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t74 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t74.
        t73 = t74.
        DATA(t75) = t73.
        DATA(t76) = |Quickfix|.
        t75->load( ).
        APPEND t76 TO t75->items.
        t75->save( ).
        DATA(t77) = t73.
        t72 = t77.
        t70 = t72.
      ELSE.
        DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t78.
        t70 = t78.
      ENDIF.
      t69 = t70.
      DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t79.
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t80.
      DATA(t81) = abap_true.
      IF t81 = abap_true.
        DATA(t82) = |##NEEDED|.
        DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t83->has = abap_true.
        t83->value = t82.
        t80 = t83.
      ELSE.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t84.
        t80 = t84.
      ENDIF.
      t79 = t80.
      DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t85.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t86.
      DATA(t87) = abap_true.
      IF t87 = abap_true.
        DATA(t88) = |EC NEEDED|.
        DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t89->has = abap_true.
        t89->value = t88.
        t86 = t89.
      ELSE.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        t86 = t90.
      ENDIF.
      t85 = t86.
      DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t91.
      DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t92.
      DATA(t93) = abap_true.
      IF t93 = abap_true.
        DATA(t94) = |DATA: BEGIN OF blah1,\n      test  TYPE string,\n      test2 T|.
        t94 = t94 && |YPE string,\n    END OF blah1.|.
        DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t95->has = abap_true.
        t95->value = t94.
        t92 = t95.
      ELSE.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t96.
        t92 = t96.
      ENDIF.
      t91 = t92.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t97.
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t98.
      DATA(t99) = abap_true.
      IF t99 = abap_true.
        DATA(t100) = |DATA: BEGIN OF blah2 ##NEEDED,\n      test  TYPE string,\n    |.
        t100 = t100 && |  test2 TYPE string,\n    END OF blah2.|.
        DATA(t101) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t101->has = abap_true.
        t101->value = t100.
        t98 = t101.
      ELSE.
        DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t102.
        t98 = t102.
      ENDIF.
      t97 = t98.
      t56 = NEW zcl_lnt_irule_metadata( i_key = t57 i_title = t59 i_short_description = t61 i_bad_example = t91 i_good_example = t97 i_extended_information = t63 i_tags = t69 i_pragma = t79 i_pseudo_comment = t85 ).
      CREATE OBJECT t56->zlnt_view_ownkeys_b0e8086400eb.
      t56->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t103.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t103 ).
      ENDIF.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t104.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t104 ).
      ENDIF.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t105.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t105 ).
      ENDIF.
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t106.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t106 ).
      ENDIF.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t107 ).
      ENDIF.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t108.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t108 ).
      ENDIF.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t109.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t109 ).
      ENDIF.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t110.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t110 ).
      ENDIF.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t111.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t111 ).
      ENDIF.
      CREATE OBJECT t56->zlnt_json_ownkeys_70e5fd461788.
      t56->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t112) = |key|.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t113.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
      ENDIF.
      DATA(t114) = |title|.
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t115.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = t114 p1 = t115 ).
      ENDIF.
      DATA(t116) = |shortDescription|.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = t116 p1 = t117 ).
      ENDIF.
      DATA(t118) = |extendedInformation|.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t119.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = t118 p1 = t119 ).
      ENDIF.
      DATA(t120) = |tags|.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t121.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = t120 p1 = t121 ).
      ENDIF.
      DATA(t122) = |pragma|.
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t123.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = t122 p1 = t123 ).
      ENDIF.
      DATA(t124) = |pseudoComment|.
      DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t125.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = t124 p1 = t125 ).
      ENDIF.
      DATA(t126) = |badExample|.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t127.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
      ENDIF.
      DATA(t128) = |goodExample|.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t129.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
      ENDIF.
      t55 = t56->pseudo_comment.
      t54 = t55.
      DATA(t130) = VALUE string( ).
      DATA(t131) = VALUE abap_bool( ).
      DATA(t132) = t54.
      IF t132 IS INITIAL.
        t131 = abap_true.
      ELSEIF t132->has = abap_false.
        t131 = abap_true.
      ENDIF.
      IF t131 = abap_true.
        DATA(t133) = |undefined|.
        t130 = t133.
      ELSE.
        DATA t134 TYPE string.
        DATA(t135) = t54.
        t134 = t135->value.
        t130 = t134.
      ENDIF.
      t53 = t130.
      DATA(t136) = ||.
      DATA(t137) = strlen( t53 ).
      t52 = |{ t53 }{ t136 }|.
      DATA(t138) = strlen( t50 ).
      IF t52 IS INITIAL.
        t49 = 0.
      ELSE.
        FIND t52 IN t50 MATCH OFFSET t49.
        IF sy-subrc <> 0.
          t49 = -1.
        ENDIF.
      ENDIF.
      DATA(t139) = 0.
      t48 = xsdbool( t49 >= t139 ).
      t37 = t48.
    ENDIF.
    result = t37.
    RETURN.
    DATA(t140) = abap_false.
    result = t140.

  ENDMETHOD.

  METHOD find_file.
    DATA(t1) = i_filename.
    DATA t2 TYPE REF TO zif_lnt_file.
    DATA t3 TYPE REF TO zif_lnt_file.
    DATA(t4) = me->reg.
    DATA(t5) = t1.
    t3 = t4->get_file_by_name( i_filename = t5 ).
    t2 = t3.
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zif_lnt_file.
    DATA(t8) = t2.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t7.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    t6 = t11.
    IF t6 = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t13.
      result = t13.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zif_lnt_object.
    DATA t15 TYPE REF TO zif_lnt_object.
    DATA(t16) = me->reg.
    DATA t17 TYPE REF TO zif_lnt_file.
    DATA(t18) = t2.
    t17 = t18.
    t15 = t16->find_object_for_file( i_file = t17 ).
    t14 = t15.
    DATA t19 TYPE abap_bool.
    DATA t20 TYPE abap_bool.
    DATA(t21) = t14.
    t20 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_abap_object ).
    t19 = xsdbool( t20 = abap_false ).
    IF t19 = abap_true.
      DATA t22 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t22.
      result = t22.
      RETURN.
    ENDIF.
    DATA t23 TYPE REF TO zcl_lnt_abap_file.
    DATA t24 TYPE REF TO zcl_lnt_abap_object.
    DATA(t25) = t14.
    DATA t26 TYPE REF TO object.
    t26 = t25.
    t24 ?= t26.
    DATA(t27) = t1.
    t23 = t24->get_abap_file_by_name( i_filename = t27 ).
    result = t23.

  ENDMETHOD.

  METHOD build_fix.
    DATA(t1) = i_v.
    DATA(t2) = i_obj_1ed0.
    DATA(t3) = i_statement.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zcl_lnt_statement_node.
    DATA(t7) = t3.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    t8 = t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t6.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    t5 = t10.
    t4 = t5.
    IF t5 = abap_false.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE REF TO zif_lnt_statement.
      DATA t15 TYPE REF TO zcl_lnt_statement_node.
      DATA(t16) = t3.
      t15 = t16.
      t14 = t15->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_st_data ).
      t12 = xsdbool( t13 = abap_false ).
      t4 = t12.
    ENDIF.
    IF t4 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zcl_lnt_abap_file.
    DATA t19 TYPE REF TO zcl_lnt_abap_file.
    DATA(t20) = t2.
    DATA t21 TYPE string.
    DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t23) = t1.
    t22 = t23.
    DATA t24 TYPE string.
    DATA(t25) = t22.
    t24 = t25->filename.
    t21 = t24.
    t19 = t20->get_abap_file_by_name( i_filename = t21 ).
    t18 = t19.
    DATA(t26) = VALUE abap_bool( ).
    DATA t27 TYPE REF TO zcl_lnt_abap_file.
    DATA(t28) = t18.
    t27 = t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    t29 = t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = t27.
    IF t32 IS INITIAL.
      t31 = abap_true.
    ENDIF.
    t26 = t31.
    IF t26 = abap_true.
      DATA t33 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t33.
      result = t33.
      RETURN.
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t34.
    DATA(t35) = abap_true.
    IF t35 = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t37 TYPE REF TO zcl_lnt_abap_file.
      DATA(t38) = t18.
      t37 = t38.
      DATA t39 TYPE REF TO zcl_lnt_statement_node.
      DATA(t40) = t3.
      t39 = t40.
      t36 = zcl_lnt_edit_helper=>delete_statement( i_file = t37 i_statement = t39 ).
      t34 = t36.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t41.
      t34 = t41.
    ENDIF.
    result = t34.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_unused_variables_conf( me->gt_cn_in_sr_rl_un_vr_ts_un_vrb( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unused_variables_conf( me->gt_cn_in_sr_rl_un_vr_ts_un_vrb( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_unused_variables_conf.
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
        t2 = NEW zcl_lnt_unused_variables_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_un_vr_ts_un_vrb( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_unused_variables.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_uns_vrb_ts_uns_vrb( i_reg_f149 = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1763_92963a7b9a59.
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
