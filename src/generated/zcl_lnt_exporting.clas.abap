* TS: src/rules/exporting.ts:14:1 Exporting
CLASS zcl_lnt_exporting DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_exporting_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS run_parsed REDEFINITION.
    METHODS gt_cnf_ins_src_rls_exp_ts_expr RETURNING VALUE(result) TYPE REF TO zcl_lnt_exporting_conf.
    METHODS st_cnf_ins_src_rls_exp_ts_expr IMPORTING i_conf TYPE REF TO zcl_lnt_exporting_conf.
    METHODS check_bf6e IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_exporting IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_exporting_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |exporting|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |EXPORTING can be omitted|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Detects EXPORTING statements which can be omitted.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |call_method( EXPORTING foo = bar ).|.
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
      DATA(t17) = |call_method( foo = bar ).|.
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
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA(t23) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t23 = t23 && |nABAP.md#omit-the-optional-keyword-exporting\nhttps://docs.ab|.
      t23 = t23 && |apopenchecks.org/checks/30/|.
      DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t24->has = abap_true.
      t24->value = t23.
      t21 = t24.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t21 = t25.
    ENDIF.
    t20 = t21.
    DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t31.
      t30 = t31.
      DATA(t32) = t30.
      DATA(t33) = |Styleguide|.
      t32->load( ).
      APPEND t33 TO t32->items.
      t32->save( ).
      DATA(t34) = t30.
      DATA(t35) = |Quickfix|.
      t34->load( ).
      APPEND t35 TO t34->items.
      t34->save( ).
      DATA(t36) = t30.
      DATA(t37) = |SingleFile|.
      t36->load( ).
      APPEND t37 TO t36->items.
      t36->save( ).
      DATA(t38) = t30.
      t29 = t38.
      t27 = t29.
    ELSE.
      DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t39.
      t27 = t39.
    ENDIF.
    t26 = t27.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t8 i_good_example = t14 i_extended_information = t20 i_tags = t26 i_pragma = t40 i_pseudo_comment = t42 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t46 ).
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
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t51) = |key|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |title|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |shortDescription|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |badExample|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |goodExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |extendedInformation|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |tags|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |The EXPORTING keyword can be omitted|.
    result = t1.

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE string.
    DATA(t7) = t2.
    t6 = t7->get_type( ).
    DATA(t8) = |INTF|.
    t5 = xsdbool( t6 = t8 ).
    IF t5 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zcl_lnt_abap_file.
    DATA(t12) = t1.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t14) = t11.
    t13 = t14->statements.
    t10 = t13.
    DATA t15 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t15.
    DATA t16 TYPE REF TO object.
    CLEAR t16.
    DATA(t17) = VALUE i( ).
    DO.
      t10->load( ).
      IF t17 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t16.
      READ TABLE t10->items INDEX t17 + 1 INTO t16.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t15.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t16.
        DATA t19 TYPE REF TO object.
        t19 = t18->as_ref( ).
        t15 ?= t19.
      ELSE.
        t15 ?= t16.
      ENDIF.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t22) = t15.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t25.
      t24 = t25.
      DATA(t26) = t24.
      DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d223_6da5f452a761.
      t26->load( ).
      APPEND t27 TO t26->items.
      t26->save( ).
      DATA(t28) = t24.
      DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d221_0c54ed92df99.
      t28->load( ).
      APPEND t29 TO t28->items.
      t28->save( ).
      DATA(t30) = t24.
      t23 = t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t31.
      t21 = t22->find_all_expressions_multi( i_type_9913 = t23 i_recursive = t31 ).
      t20 = t21.
      DATA(t32) = t20.
      DATA t33 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t33.
      DATA t34 TYPE REF TO object.
      CLEAR t34.
      DATA(t35) = VALUE i( ).
      DO.
        t32->load( ).
        IF t35 >= lines( t32->items ).
          EXIT.
        ENDIF.
        CLEAR t34.
        READ TABLE t32->items INDEX t35 + 1 INTO t34.
        t35 = t35 + 1.
        DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t36.
        CLEAR t33.
        IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t36 ?= t34.
          DATA t37 TYPE REF TO object.
          t37 = t36->as_ref( ).
          t33 ?= t37.
        ELSE.
          t33 ?= t34.
        ENDIF.
        DATA t38 TYPE abap_bool.
        DATA t39 TYPE REF TO zif_lnt_statement_runnable.
        DATA(t40) = t33.
        t39 = t40->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t38 = xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_st_method_call_body ).
        IF t38 = abap_true.
          DATA t41 TYPE abap_bool.
          DATA t42 TYPE string.
          DATA t43 TYPE REF TO zcl_lnt_abstract_token.
          DATA t44 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t45) = t33.
          t44 = t45->get_first_token( ).
          t43 = t44.
          DATA t46 TYPE string.
          DATA(t47) = t43.
          t46 = t47->str.
          t42 = t46.
          DATA(t48) = |(|.
          t41 = xsdbool( t42 <> t48 ).
          IF t41 = abap_true.
            CONTINUE.
          ENDIF.
          DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t50) = t3.
          DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t52) = t33.
          DATA(t53) = t1.
          t51 = me->check_bf6e( i_node = t52 i_file = t53 ).
          t49 = t50->concat( p0 = t51 ).
          t3 = t49.
        ELSE.
          DATA t54 TYPE abap_bool.
          DATA t55 TYPE REF TO zif_lnt_statement_runnable.
          DATA(t56) = t33.
          t55 = t56->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t54 = xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_method_call ).
          IF t54 = abap_true.
            DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t58) = t3.
            DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t60) = t33.
            DATA(t61) = t1.
            t59 = me->check_bf6e( i_node = t60 i_file = t61 ).
            t57 = t58->concat( p0 = t59 ).
            t3 = t57.
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t62) = t3.
    result = t62.

  ENDMETHOD.

  METHOD gt_cnf_ins_src_rls_exp_ts_expr.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cnf_ins_src_rls_exp_ts_expr.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD check_bf6e.
    DATA(t1) = i_node.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = t3.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t8.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    t7 = t12.
    IF t7 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t14.
      result = t14.
      RETURN.
    ENDIF.
    DATA(t15) = VALUE abap_bool( ).
    DATA t16 TYPE string.
    DATA t17 TYPE string.
    DATA t18 TYPE REF TO zcl_lnt_abstract_token.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA(t21) = t3.
    t20 = t21.
    t19 = t20->get_first_token( ).
    t18 = t19.
    DATA t22 TYPE string.
    DATA(t23) = t18.
    t22 = t23->str.
    t17 = t22.
    DATA(t24) = strlen( t17 ).
    t16 = t17.
    IF t16 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t16 TO UPPER CASE.
    ELSE.
      t16 = zlnt_runtime_uppe_91169605024d=>full( t16 ).
    ENDIF.
    DATA(t25) = |EXPORTING|.
    t15 = xsdbool( t16 <> t25 ).
    IF t15 = abap_true.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t26.
      result = t26.
      RETURN.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    DATA(t30) = t3.
    t29 = t30.
    t28 = t29->get_direct_tokens( ).
    t27 = t28.
    DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t34.
    t33 = t34.
    DATA(t35) = t27.
    DATA t36 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t36.
    DATA t37 TYPE REF TO object.
    CLEAR t37.
    DATA(t38) = VALUE i( ).
    DO.
      t35->load( ).
      IF t38 >= lines( t35->items ).
        EXIT.
      ENDIF.
      CLEAR t37.
      READ TABLE t35->items INDEX t38 + 1 INTO t37.
      t38 = t38 + 1.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      CLEAR t36.
      IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t39 ?= t37.
        DATA t40 TYPE REF TO object.
        t40 = t39->as_ref( ).
        t36 ?= t40.
      ELSE.
        t36 ?= t37.
      ENDIF.
      DATA(t41) = t33.
      DATA t42 TYPE string.
      DATA t43 TYPE string.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t45) = t36.
      t44 = t45.
      DATA t46 TYPE string.
      DATA(t47) = t44.
      t46 = t47->str.
      t43 = t46.
      DATA(t48) = strlen( t43 ).
      t42 = t43.
      IF t42 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t42 TO UPPER CASE.
      ELSE.
        t42 = zlnt_runtime_uppe_91169605024d=>full( t42 ).
      ENDIF.
      t41->load( ).
      APPEND t42 TO t41->items.
      t41->save( ).
    ENDDO.
    DATA(t49) = t33.
    t32 = t49.
    t31 = t32.
    DATA(t50) = VALUE abap_bool( ).
    DATA(t51) = VALUE abap_bool( ).
    DATA(t52) = VALUE abap_bool( ).
    DATA(t53) = VALUE abap_bool( ).
    DATA(t54) = VALUE abap_bool( ).
    DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t56) = t31.
    DATA(t57) = 0.
    t55 = t56->get( p0 = t57 ).
    DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t58.
    DATA(t59) = abap_true.
    IF t59 = abap_true.
      DATA(t60) = |EXPORTING|.
      DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t61->has = abap_true.
      t61->value = t60.
      t58 = t61.
    ELSE.
      DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t62.
      t58 = t62.
    ENDIF.
    DATA(t63) = VALUE abap_bool( ).
    DATA(t64) = VALUE abap_bool( ).
    IF t55 IS BOUND.
      t63 = t55->has.
    ENDIF.
    IF t58 IS BOUND.
      t64 = t58->has.
    ENDIF.
    IF t63 = t64.
      IF t63 = abap_false.
        t54 = abap_true.
      ELSEIF t55->value = t58->value.
        t54 = abap_true.
      ENDIF.
    ENDIF.
    t53 = t54.
    IF t54 = abap_true.
      DATA t65 TYPE abap_bool.
      DATA t66 TYPE abap_bool.
      DATA(t67) = t31.
      DATA(t68) = |IMPORTING|.
      t66 = t67->includes( p0 = t68 ).
      DATA(t69) = abap_false.
      t65 = xsdbool( t66 = t69 ).
      t53 = t65.
    ENDIF.
    t52 = t53.
    IF t53 = abap_true.
      DATA t70 TYPE abap_bool.
      DATA t71 TYPE abap_bool.
      DATA(t72) = t31.
      DATA(t73) = |RECEIVING|.
      t71 = t72->includes( p0 = t73 ).
      DATA(t74) = abap_false.
      t70 = xsdbool( t71 = t74 ).
      t52 = t70.
    ENDIF.
    t51 = t52.
    IF t52 = abap_true.
      DATA t75 TYPE abap_bool.
      DATA t76 TYPE abap_bool.
      DATA(t77) = t31.
      DATA(t78) = |EXCEPTIONS|.
      t76 = t77->includes( p0 = t78 ).
      DATA(t79) = abap_false.
      t75 = xsdbool( t76 = t79 ).
      t51 = t75.
    ENDIF.
    t50 = t51.
    IF t51 = abap_true.
      DATA t80 TYPE abap_bool.
      DATA t81 TYPE abap_bool.
      DATA(t82) = t31.
      DATA(t83) = |CHANGING|.
      t81 = t82->includes( p0 = t83 ).
      DATA(t84) = abap_false.
      t80 = xsdbool( t81 = t84 ).
      t50 = t80.
    ENDIF.
    IF t50 = abap_true.
      DATA t85 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t85.
      DATA t86 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t86.
      DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t88 TYPE REF TO zcl_lnt_expression_node.
      DATA(t89) = t3.
      t88 = t89.
      t87 = t88->get_all_tokens( ).
      DATA t90 TYPE REF TO object.
      CLEAR t90.
      t87->load( ).
      CLEAR t90.
      READ TABLE t87->items INDEX 2 INTO t90.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      CLEAR t86.
      IF t90 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t91 ?= t90.
        DATA t92 TYPE REF TO object.
        t92 = t91->as_ref( ).
        t86 ?= t92.
      ELSE.
        t86 ?= t90.
      ENDIF.
      t85 = t86.
      DATA t93 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t93.
      DATA t94 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t94.
      DATA(t95) = t2.
      DATA t96 TYPE REF TO zcl_lnt_position.
      CLEAR t96.
      DATA t97 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t97.
      DATA t98 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t98.
      DATA(t99) = t27.
      DATA t100 TYPE REF TO object.
      CLEAR t100.
      t99->load( ).
      CLEAR t100.
      READ TABLE t99->items INDEX 1 INTO t100.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t101.
      CLEAR t98.
      IF t100 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t101 ?= t100.
        DATA t102 TYPE REF TO object.
        t102 = t101->as_ref( ).
        t98 ?= t102.
      ELSE.
        t98 ?= t100.
      ENDIF.
      t97 = t98.
      DATA t103 TYPE REF TO zcl_lnt_position.
      DATA(t104) = t97.
      t103 = t104->start.
      t96 = t103.
      DATA t105 TYPE REF TO zcl_lnt_position.
      DATA t106 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t107) = t85.
      t106 = t107.
      DATA t108 TYPE REF TO zcl_lnt_position.
      DATA(t109) = t106.
      t108 = t109->start.
      t105 = t108.
      t94 = zcl_lnt_edit_helper=>delete_range( i_file = t95 i_start = t96 i_end = t105 ).
      t93 = t94.
      DATA t110 TYPE REF TO zcl_lnt_issue.
      CLEAR t110.
      DATA t111 TYPE REF TO zcl_lnt_issue.
      CLEAR t111.
      DATA(t112) = t2.
      DATA t113 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t113.
      DATA(t114) = t27.
      DATA t115 TYPE REF TO object.
      CLEAR t115.
      t114->load( ).
      CLEAR t115.
      READ TABLE t114->items INDEX 1 INTO t115.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      CLEAR t113.
      IF t115 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t116 ?= t115.
        DATA t117 TYPE REF TO object.
        t117 = t116->as_ref( ).
        t113 ?= t117.
      ELSE.
        t113 ?= t115.
      ENDIF.
      DATA(t118) = |The EXPORTING keyword can be omitted|.
      DATA(t119) = VALUE string( ).
      DATA t120 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t120.
      DATA t121 TYPE string.
      DATA(t122) = |exporting|.
      t121 = t122.
      DATA t123 TYPE string.
      DATA(t124) = |EXPORTING can be omitted|.
      t123 = t124.
      DATA t125 TYPE string.
      DATA(t126) = |Detects EXPORTING statements which can be omitted.|.
      t125 = t126.
      DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t127.
      DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t128.
      DATA(t129) = abap_true.
      IF t129 = abap_true.
        DATA(t130) = |call_method( EXPORTING foo = bar ).|.
        DATA(t131) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t131->has = abap_true.
        t131->value = t130.
        t128 = t131.
      ELSE.
        DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t132.
        t128 = t132.
      ENDIF.
      t127 = t128.
      DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t133.
      DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t134.
      DATA(t135) = abap_true.
      IF t135 = abap_true.
        DATA(t136) = |call_method( foo = bar ).|.
        DATA(t137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t137->has = abap_true.
        t137->value = t136.
        t134 = t137.
      ELSE.
        DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t138.
        t134 = t138.
      ENDIF.
      t133 = t134.
      DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t139.
      DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t140.
      DATA(t141) = abap_true.
      IF t141 = abap_true.
        DATA(t142) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t142 = t142 && |nABAP.md#omit-the-optional-keyword-exporting\nhttps://docs.ab|.
        t142 = t142 && |apopenchecks.org/checks/30/|.
        DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t143->has = abap_true.
        t143->value = t142.
        t140 = t143.
      ELSE.
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t144.
        t140 = t144.
      ENDIF.
      t139 = t140.
      DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t145.
      DATA t146 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t146.
      DATA(t147) = abap_true.
      IF t147 = abap_true.
        DATA t148 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t150 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t150.
        t149 = t150.
        DATA(t151) = t149.
        DATA(t152) = |Styleguide|.
        t151->load( ).
        APPEND t152 TO t151->items.
        t151->save( ).
        DATA(t153) = t149.
        DATA(t154) = |Quickfix|.
        t153->load( ).
        APPEND t154 TO t153->items.
        t153->save( ).
        DATA(t155) = t149.
        DATA(t156) = |SingleFile|.
        t155->load( ).
        APPEND t156 TO t155->items.
        t155->save( ).
        DATA(t157) = t149.
        t148 = t157.
        t146 = t148.
      ELSE.
        DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t158.
        t146 = t158.
      ENDIF.
      t145 = t146.
      DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t160.
      t159 = t160.
      DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t162.
      t161 = t162.
      t120 = NEW zcl_lnt_irule_metadata( i_key = t121 i_title = t123 i_short_description = t125 i_bad_example = t127 i_good_example = t133 i_extended_information = t139 i_tags = t145 i_pragma = t159 i_pseudo_comment = t161 ).
      CREATE OBJECT t120->zlnt_view_ownkeys_b0e8086400eb.
      t120->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t163.
      IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t163 ).
      ENDIF.
      DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t164.
      IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t164 ).
      ENDIF.
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t165.
      IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t165 ).
      ENDIF.
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t166.
      IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t166 ).
      ENDIF.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t167.
      IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t167 ).
      ENDIF.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t168.
      IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t168 ).
      ENDIF.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t169.
      IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t169 ).
      ENDIF.
      CREATE OBJECT t120->zlnt_json_ownkeys_70e5fd461788.
      t120->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t170) = |key|.
      DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t171.
      IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
      ENDIF.
      DATA(t172) = |title|.
      DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t173.
      IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
      ENDIF.
      DATA(t174) = |shortDescription|.
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t175.
      IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
      ENDIF.
      DATA(t176) = |badExample|.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t177.
      IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
      ENDIF.
      DATA(t178) = |goodExample|.
      DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t179.
      IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t178 p1 = t179 ).
      ENDIF.
      DATA(t180) = |extendedInformation|.
      DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t181.
      IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t180 p1 = t181 ).
      ENDIF.
      DATA(t182) = |tags|.
      DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t183.
      IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t182 p1 = t183 ).
      ENDIF.
      t119 = t120->key.
      DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t185) = me->conf.
      t184 = t185->zlnt_view_read_sr_15c06369f827( ).
      DATA t186 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t186.
      DATA(t187) = abap_true.
      IF t187 = abap_true.
        DATA(t188) = t93.
        t186 = t188.
      ELSE.
        DATA t189 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t189.
        t186 = t189.
      ENDIF.
      t111 = zcl_lnt_issue=>at_token( i_file = t112 i_token = t113 i_message_26cb = t118 i_key = t119 i_severity = t184 i_fix = t186 ).
      t110 = t111.
      DATA t190 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t192.
      t191 = t192.
      DATA(t193) = t191.
      DATA(t194) = t110.
      t193->load( ).
      APPEND t194 TO t193->items.
      t193->save( ).
      DATA(t195) = t191.
      t190 = t195.
      result = t190.
      RETURN.
    ENDIF.
    DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t196.
    result = t196.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_exporting_conf( me->gt_cnf_ins_src_rls_exp_ts_expr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_exporting_conf( me->gt_cnf_ins_src_rls_exp_ts_expr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_exporting_conf.
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
        t1 = NEW zcl_lnt_exporting_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cnf_ins_src_rls_exp_ts_expr( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1502_14dfa986900e.
  ENDMETHOD.
ENDCLASS.
