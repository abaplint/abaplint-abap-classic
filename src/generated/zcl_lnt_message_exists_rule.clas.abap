* TS: src/rules/message_exists.ts:20:1 MessageExistsRule
CLASS zcl_lnt_message_exists_rule DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_message_exists_conf.
    DATA msag_references TYPE REF TO zif_lnt_msag_references.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_in_sr_rl_ms_ex_ts_ms_ex_rl RETURNING VALUE(result) TYPE REF TO zcl_lnt_message_exists_conf.
    METHODS s_c_in_sr_rl_ms_ex_ts_ms_ex_rl IMPORTING i_conf TYPE REF TO zcl_lnt_message_exists_conf.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_report_statement IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_class IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS check_source IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS count_with IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE f.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_message_exists_rule IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_message_exists_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |message_exists|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Check MESSAGE exists|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |In message statements, check that the message class + id exi|.
    t7 = t7 && |st|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t13.
      t12 = t13.
      DATA(t14) = t12.
      DATA(t15) = |Syntax|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      t11 = t16.
      t9 = t11.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t17.
      t9 = t17.
    ENDIF.
    t8 = t9.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t18 i_good_example = t20 i_extended_information = t22 i_tags = t8 i_pragma = t24 i_pseudo_comment = t26 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t28 ).
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t31 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t32) = |key|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    ENDIF.
    DATA(t34) = |title|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = |shortDescription|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |tags|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_in_sr_rl_ms_ex_ts_ms_ex_rl.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_in_sr_rl_ms_ex_ts_ms_ex_rl.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zif_lnt_msag_references.
    CLEAR t2.
    DATA(t3) = t1.
    t2 = t3->get_msag_references( ).
    me->msag_references = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `msagReferences`.
    DATA(t4) = t1.
    me->reg = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA t5 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t5.
    DATA t6 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t7.
    DATA(t8) = t1.
    t7 = t8->get_objects( ).
    t6 = t7->iterate( ).
    t5 = t6.
    DO.
      DATA(t9) = abap_true.
      IF t9 = abap_false.
        EXIT.
      ENDIF.
      DATA t10 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t10.
      DATA t11 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t11.
      DATA(t12) = t5.
      t11 = t12->next( ).
      t10 = t11.
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = t10.
      t13 = t14->done.
      IF t13 = abap_true.
        EXIT.
      ENDIF.
      DATA t15 TYPE REF TO zif_lnt_object.
      CLEAR t15.
      DATA t16 TYPE REF TO zif_lnt_object.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_object.
      CLEAR t17.
      DATA(t18) = t10.
      t17 = t18->value.
      t16 = t17.
      t15 = t16.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = abap_false.
      t21 = t22.
      DATA t23 TYPE REF TO cx_root.
      CLEAR t23.
      TRY.
          DATA(t24) = VALUE abap_bool( ).
          DATA(t25) = t15.
          t24 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_abap_object ).
          t20 = t24.
          DATA(t26) = abap_true.
          t21 = t26.
        CATCH cx_root INTO t23.
          DATA(t27) = VALUE abap_bool( ).
          DATA(t28) = t21.
          t27 = xsdbool( t28 = abap_false ).
          IF t27 = abap_true.
            DATA(t29) = t5.
            t29->close( ).
          ENDIF.
          RAISE EXCEPTION t23.
      ENDTRY.
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = t21.
      t30 = xsdbool( t31 = abap_false ).
      IF t30 = abap_true.
        DATA(t32) = t5.
        t32->close( ).
      ENDIF.
      DATA(t33) = t20.
      t19 = t33.
      IF t19 = abap_true.
        DATA t34 TYPE REF TO zcl_lnt_isyntax_result.
        CLEAR t34.
        DATA t35 TYPE REF TO zcl_lnt_isyntax_result.
        CLEAR t35.
        DATA(t36) = VALUE abap_bool( ).
        DATA(t37) = abap_false.
        t36 = t37.
        DATA t38 TYPE REF TO cx_root.
        CLEAR t38.
        TRY.
            DATA t39 TYPE REF TO zcl_lnt_isyntax_result.
            CLEAR t39.
            DATA t40 TYPE REF TO zcl_lnt_syntax_logic.
            CLEAR t40.
            DATA(t41) = t1.
            DATA t42 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t42.
            DATA(t43) = t15.
            DATA t44 TYPE REF TO object.
            CLEAR t44.
            t44 = t43.
            t42 ?= t44.
            t40 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t41 i_object_19cd = t42 ).
            t39 = t40->run( ).
            t35 = t39.
            DATA(t45) = abap_true.
            t36 = t45.
          CATCH cx_root INTO t38.
            DATA(t46) = VALUE abap_bool( ).
            DATA(t47) = t36.
            t46 = xsdbool( t47 = abap_false ).
            IF t46 = abap_true.
              DATA(t48) = t5.
              t48->close( ).
            ENDIF.
            RAISE EXCEPTION t38.
        ENDTRY.
        DATA(t49) = VALUE abap_bool( ).
        DATA(t50) = t36.
        t49 = xsdbool( t50 = abap_false ).
        IF t49 = abap_true.
          DATA(t51) = t5.
          t51->close( ).
        ENDIF.
        DATA(t52) = t35.
        t34 = t52.
      ENDIF.
    ENDDO.
    DATA(t53) = me.
    result = t53.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA(t5) = t1.
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_abap_object ).
    IF t4 = abap_true.
      DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t7 TYPE REF TO zcl_lnt_abap_object.
      DATA t8 TYPE REF TO zcl_lnt_abap_object.
      DATA(t9) = t1.
      DATA t10 TYPE REF TO object.
      t10 = t9.
      t8 ?= t10.
      t7 = t8.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t12) = t7.
      t11 = t12->parsed.
      t6 = t11.
      DATA t13 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t13.
      DATA t14 TYPE REF TO object.
      CLEAR t14.
      DATA(t15) = VALUE i( ).
      DO.
        t6->load( ).
        IF t15 >= lines( t6->items ).
          EXIT.
        ENDIF.
        CLEAR t14.
        READ TABLE t6->items INDEX t15 + 1 INTO t14.
        t15 = t15 + 1.
        DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t16.
        CLEAR t13.
        IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t16 ?= t14.
          DATA t17 TYPE REF TO object.
          t17 = t16->as_ref( ).
          t13 ?= t17.
        ELSE.
          t13 ?= t14.
        ENDIF.
        DATA t18 TYPE REF TO zcl_lnt_structure_node.
        DATA t19 TYPE REF TO zcl_lnt_structure_node.
        DATA t20 TYPE REF TO zcl_lnt_abap_file.
        DATA(t21) = t13.
        t20 = t21.
        DATA t22 TYPE REF TO zcl_lnt_structure_node.
        DATA(t23) = t20.
        t22 = t23->structure.
        t19 = t22.
        t18 = t19.
        DATA(t24) = VALUE abap_bool( ).
        DATA t25 TYPE REF TO zcl_lnt_structure_node.
        DATA(t26) = t18.
        t25 = t26.
        DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t28.
        t27 = t28.
        DATA(t29) = VALUE abap_bool( ).
        DATA(t30) = t25.
        IF t30 IS INITIAL.
          t29 = abap_true.
        ENDIF.
        t24 = t29.
        IF t24 = abap_true.
          DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t31.
          result = t31.
          RETURN.
        ENDIF.
        DATA(t32) = VALUE i( ).
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t34) = t13.
        t33 = me->check_report_statement( i_file = t34 ).
        DATA t35 TYPE REF TO zcl_lnt_issue.
        CLEAR t35.
        DATA t36 TYPE REF TO object.
        CLEAR t36.
        DATA(t37) = VALUE i( ).
        DO.
          t33->load( ).
          IF t37 >= lines( t33->items ).
            EXIT.
          ENDIF.
          CLEAR t36.
          READ TABLE t33->items INDEX t37 + 1 INTO t36.
          t37 = t37 + 1.
          DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t38.
          CLEAR t35.
          IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t38 ?= t36.
            DATA t39 TYPE REF TO object.
            t39 = t38->as_ref( ).
            t35 ?= t39.
          ELSE.
            t35 ?= t36.
          ENDIF.
          DATA(t40) = t2.
          DATA(t41) = t35.
          t40->load( ).
          APPEND t41 TO t40->items.
          t40->save( ).
        ENDDO.
        DATA t42 TYPE i.
        DATA(t43) = t2.
        t43->load( ).
        t42 = lines( t43->items ).
        t32 = t42.
        DATA(t44) = VALUE i( ).
        DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t46) = t13.
        t45 = me->check_source( i_file = t46 ).
        DATA t47 TYPE REF TO zcl_lnt_issue.
        CLEAR t47.
        DATA t48 TYPE REF TO object.
        CLEAR t48.
        DATA(t49) = VALUE i( ).
        DO.
          t45->load( ).
          IF t49 >= lines( t45->items ).
            EXIT.
          ENDIF.
          CLEAR t48.
          READ TABLE t45->items INDEX t49 + 1 INTO t48.
          t49 = t49 + 1.
          DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t50.
          CLEAR t47.
          IF t48 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t50 ?= t48.
            DATA t51 TYPE REF TO object.
            t51 = t50->as_ref( ).
            t47 ?= t51.
          ELSE.
            t47 ?= t48.
          ENDIF.
          DATA(t52) = t2.
          DATA(t53) = t47.
          t52->load( ).
          APPEND t53 TO t52->items.
          t52->save( ).
        ENDDO.
        DATA t54 TYPE i.
        DATA(t55) = t2.
        t55->load( ).
        t54 = lines( t55->items ).
        t44 = t54.
      ENDDO.
    ENDIF.
    DATA(t56) = t2.
    result = t56.

  ENDMETHOD.

  METHOD check_report_statement.
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
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE REF TO zif_lnt_statement.
      DATA(t17) = t9.
      t16 = t17->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_report ).
      t14 = xsdbool( t15 = abap_false ).
      IF t14 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      DATA t19 TYPE REF TO zcl_lnt_expression_node.
      DATA(t20) = t9.
      DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d215_80780944ec3f.
      t19 = t20->find_first_expression( i_type_9913 = t21 ).
      t18 = t19.
      DATA t22 TYPE abap_bool.
      DATA(t23) = t18.
      t22 = xsdbool( t23 IS BOUND ).
      IF t22 = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_issue.
        CLEAR t24.
        DATA t25 TYPE REF TO zcl_lnt_issue.
        CLEAR t25.
        DATA t26 TYPE REF TO zcl_lnt_expression_node.
        DATA t27 TYPE REF TO zcl_lnt_expression_node.
        DATA(t28) = t18.
        t27 = t28.
        t26 = t27.
        DATA t29 TYPE REF TO zcl_lnt_abap_file.
        DATA(t30) = t1.
        t29 = t30.
        DATA t31 TYPE REF TO zcl_lnt_issue.
        CLEAR t31.
        DATA t32 TYPE REF TO zcl_lnt_abstract_token.
        DATA t33 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t34) = t26.
        t33 = t34->get_first_token( ).
        t32 = t33.
        DATA t35 TYPE string.
        DATA t36 TYPE string.
        DATA t37 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t38) = t32.
        t37 = t38.
        DATA t39 TYPE string.
        DATA(t40) = t37.
        t39 = t40->str.
        t36 = t39.
        t35 = t36.
        DATA t41 TYPE REF TO zcl_lnt_issue.
        CLEAR t41.
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = VALUE abap_bool( ).
        DATA t44 TYPE REF TO zif_lnt_object.
        CLEAR t44.
        DATA t45 TYPE REF TO zif_lnt_object.
        CLEAR t45.
        DATA(t46) = me->reg.
        DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t47.
        DATA(t48) = abap_true.
        IF t48 = abap_true.
          DATA(t49) = |MSAG|.
          DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t50->has = abap_true.
          t50->value = t49.
          t47 = t50.
        ELSE.
          DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t51.
          t47 = t51.
        ENDIF.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        DATA(t53) = abap_true.
        IF t53 = abap_true.
          DATA(t54) = t35.
          DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t55->has = abap_true.
          t55->value = t54.
          t52 = t55.
        ELSE.
          DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t56.
          t52 = t56.
        ENDIF.
        t45 = t46->get_object( i_type_9913 = t47 i_name = t52 ).
        t44 = t45.
        DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t58.
        t57 = t58.
        DATA(t59) = VALUE abap_bool( ).
        DATA(t60) = t44.
        IF t60 IS INITIAL.
          t59 = abap_true.
        ENDIF.
        t43 = t59.
        t42 = t43.
        IF t43 = abap_true.
          DATA(t61) = VALUE abap_bool( ).
          DATA(t62) = VALUE abap_bool( ).
          DATA t63 TYPE REF TO zcl_lnt_ddic.
          DATA t64 TYPE REF TO zcl_lnt_ddic.
          DATA(t65) = me->reg.
          t64 = NEW zcl_lnt_ddic( i_reg_f149 = t65 ).
          t63 = t64.
          DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t66.
          DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t67.
          DATA(t68) = abap_true.
          IF t68 = abap_true.
            DATA(t69) = t35.
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
          DATA(t72) = VALUE abap_bool( ).
          DATA(t73) = VALUE abap_bool( ).
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t75) = t66.
          t74 = t75.
          DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t77.
          t76 = t77.
          DATA(t78) = VALUE abap_bool( ).
          DATA(t79) = t74.
          IF t79 IS INITIAL.
            t78 = abap_true.
          ELSEIF t79->has = abap_false.
            t78 = abap_true.
          ENDIF.
          t73 = t78.
          IF t73 = abap_true.
            DATA(t80) = abap_true.
            t72 = t80.
          ELSE.
            DATA t81 TYPE abap_bool.
            DATA t82 TYPE REF TO zif_lnt_registry.
            DATA(t83) = t63.
            t82 = t83->reg.
            DATA t84 TYPE string.
            DATA(t85) = t66.
            t84 = t85->value.
            t81 = t82->in_error_namespace( i_name = t84 ).
            t72 = t81.
          ENDIF.
          t62 = t72.
          DATA(t86) = abap_true.
          t61 = xsdbool( t62 = t86 ).
          t42 = t61.
        ENDIF.
        IF t42 = abap_true.
          DATA t87 TYPE REF TO zcl_lnt_issue.
          CLEAR t87.
          DATA t88 TYPE string.
          DATA t89 TYPE string.
          DATA t90 TYPE string.
          DATA(t91) = |Message class "|.
          DATA(t92) = t35.
          DATA(t93) = strlen( t91 ).
          t90 = |{ t91 }{ t92 }|.
          DATA(t94) = |" not found|.
          DATA(t95) = strlen( t90 ).
          t89 = |{ t90 }{ t94 }|.
          t88 = t89.
          DATA t96 TYPE REF TO zcl_lnt_issue.
          CLEAR t96.
          DATA(t97) = abap_true.
          IF t97 = abap_true.
            DATA t98 TYPE REF TO zcl_lnt_issue.
            CLEAR t98.
            DATA(t99) = t29.
            DATA(t100) = t32.
            DATA(t101) = t88.
            DATA(t102) = VALUE string( ).
            DATA t103 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t103.
            DATA t104 TYPE string.
            DATA(t105) = |message_exists|.
            t104 = t105.
            DATA t106 TYPE string.
            DATA(t107) = |Check MESSAGE exists|.
            t106 = t107.
            DATA t108 TYPE string.
            DATA(t109) = |In message statements, check that the message class + id exi|.
            t109 = t109 && |st|.
            t108 = t109.
            DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t110.
            DATA t111 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t111.
            DATA(t112) = abap_true.
            IF t112 = abap_true.
              DATA t113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t114 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t115.
              t114 = t115.
              DATA(t116) = t114.
              DATA(t117) = |Syntax|.
              t116->load( ).
              APPEND t117 TO t116->items.
              t116->save( ).
              DATA(t118) = t114.
              t113 = t118.
              t111 = t113.
            ELSE.
              DATA t119 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t119.
              t111 = t119.
            ENDIF.
            t110 = t111.
            DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t121.
            t120 = t121.
            DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t123.
            t122 = t123.
            DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t125.
            t124 = t125.
            DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t127.
            t126 = t127.
            DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t129.
            t128 = t129.
            t103 = NEW zcl_lnt_irule_metadata( i_key = t104 i_title = t106 i_short_description = t108 i_bad_example = t120 i_good_example = t122 i_extended_information = t124 i_tags = t110 i_pragma = t126 i_pseudo_comment = t128 ).
            CREATE OBJECT t103->zlnt_view_ownkeys_b0e8086400eb.
            t103->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t130.
            IF t103->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t130 ).
            ENDIF.
            DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t131.
            IF t103->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t131 ).
            ENDIF.
            DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t132.
            IF t103->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t132 ).
            ENDIF.
            DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t133.
            IF t103->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t133 ).
            ENDIF.
            CREATE OBJECT t103->zlnt_json_ownkeys_70e5fd461788.
            t103->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t134) = |key|.
            DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t135.
            IF t103->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = t134 p1 = t135 ).
            ENDIF.
            DATA(t136) = |title|.
            DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t137.
            IF t103->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = t136 p1 = t137 ).
            ENDIF.
            DATA(t138) = |shortDescription|.
            DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t139.
            IF t103->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = t138 p1 = t139 ).
            ENDIF.
            DATA(t140) = |tags|.
            DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t141.
            IF t103->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = t140 p1 = t141 ).
            ENDIF.
            t102 = t103->key.
            DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t143) = me->conf.
            t142 = t143->zlnt_view_read_sr_15c06369f827( ).
            DATA t144 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t144.
            t98 = zcl_lnt_issue=>at_token( i_file = t99 i_token = t100 i_message_26cb = t101 i_key = t102 i_severity = t142 i_fix = t144 ).
            t96 = t98.
          ELSE.
            DATA t145 TYPE REF TO zcl_lnt_issue.
            CLEAR t145.
            t96 = t145.
          ENDIF.
          t87 = t96.
          t41 = t87.
        ELSE.
          DATA t146 TYPE REF TO zcl_lnt_issue.
          CLEAR t146.
          t41 = t146.
        ENDIF.
        t31 = t41.
        t25 = t31.
        t24 = t25.
        DATA t147 TYPE abap_bool.
        DATA(t148) = t24.
        t147 = xsdbool( t148 IS BOUND ).
        IF t147 = abap_true.
          DATA(t149) = t2.
          DATA t150 TYPE REF TO zcl_lnt_issue.
          DATA(t151) = t24.
          t150 = t151.
          t149->load( ).
          APPEND t150 TO t149->items.
          t149->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t152) = t2.
    result = t152.

  ENDMETHOD.

  METHOD check_class.
    DATA(t1) = i_node.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t5) = t1.
    t4 = t5->get_first_token( ).
    t3 = t4.
    DATA t6 TYPE string.
    DATA t7 TYPE string.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t9) = t3.
    t8 = t9.
    DATA t10 TYPE string.
    DATA(t11) = t8.
    t10 = t11->str.
    t7 = t10.
    t6 = t7.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    DATA t14 TYPE REF TO zif_lnt_object.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_object.
    CLEAR t15.
    DATA(t16) = me->reg.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA(t18) = abap_true.
    IF t18 = abap_true.
      DATA(t19) = |MSAG|.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t19.
      t17 = t20.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      t17 = t21.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA(t23) = abap_true.
    IF t23 = abap_true.
      DATA(t24) = t6.
      DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t25->has = abap_true.
      t25->value = t24.
      t22 = t25.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      t22 = t26.
    ENDIF.
    t15 = t16->get_object( i_type_9913 = t17 i_name = t22 ).
    t14 = t15.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    t27 = t28.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = t14.
    IF t30 IS INITIAL.
      t29 = abap_true.
    ENDIF.
    t13 = t29.
    t12 = t13.
    IF t13 = abap_true.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = VALUE abap_bool( ).
      DATA t33 TYPE REF TO zcl_lnt_ddic.
      DATA t34 TYPE REF TO zcl_lnt_ddic.
      DATA(t35) = me->reg.
      t34 = NEW zcl_lnt_ddic( i_reg_f149 = t35 ).
      t33 = t34.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      DATA(t38) = abap_true.
      IF t38 = abap_true.
        DATA(t39) = t6.
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
      DATA(t42) = VALUE abap_bool( ).
      DATA(t43) = VALUE abap_bool( ).
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t45) = t36.
      t44 = t45.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      t46 = t47.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = t44.
      IF t49 IS INITIAL.
        t48 = abap_true.
      ELSEIF t49->has = abap_false.
        t48 = abap_true.
      ENDIF.
      t43 = t48.
      IF t43 = abap_true.
        DATA(t50) = abap_true.
        t42 = t50.
      ELSE.
        DATA t51 TYPE abap_bool.
        DATA t52 TYPE REF TO zif_lnt_registry.
        DATA(t53) = t33.
        t52 = t53->reg.
        DATA t54 TYPE string.
        DATA(t55) = t36.
        t54 = t55->value.
        t51 = t52->in_error_namespace( i_name = t54 ).
        t42 = t51.
      ENDIF.
      t32 = t42.
      DATA(t56) = abap_true.
      t31 = xsdbool( t32 = t56 ).
      t12 = t31.
    ENDIF.
    IF t12 = abap_true.
      DATA t57 TYPE string.
      DATA t58 TYPE string.
      DATA t59 TYPE string.
      DATA(t60) = |Message class "|.
      DATA(t61) = t6.
      DATA(t62) = strlen( t60 ).
      t59 = |{ t60 }{ t61 }|.
      DATA(t63) = |" not found|.
      DATA(t64) = strlen( t59 ).
      t58 = |{ t59 }{ t63 }|.
      t57 = t58.
      DATA t65 TYPE REF TO zcl_lnt_issue.
      CLEAR t65.
      DATA(t66) = abap_true.
      IF t66 = abap_true.
        DATA t67 TYPE REF TO zcl_lnt_issue.
        CLEAR t67.
        DATA(t68) = t2.
        DATA(t69) = t3.
        DATA(t70) = t57.
        DATA(t71) = VALUE string( ).
        DATA t72 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t72.
        DATA t73 TYPE string.
        DATA(t74) = |message_exists|.
        t73 = t74.
        DATA t75 TYPE string.
        DATA(t76) = |Check MESSAGE exists|.
        t75 = t76.
        DATA t77 TYPE string.
        DATA(t78) = |In message statements, check that the message class + id exi|.
        t78 = t78 && |st|.
        t77 = t78.
        DATA t79 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t79.
        DATA t80 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t80.
        DATA(t81) = abap_true.
        IF t81 = abap_true.
          DATA t82 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t83 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t84 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t84.
          t83 = t84.
          DATA(t85) = t83.
          DATA(t86) = |Syntax|.
          t85->load( ).
          APPEND t86 TO t85->items.
          t85->save( ).
          DATA(t87) = t83.
          t82 = t87.
          t80 = t82.
        ELSE.
          DATA t88 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t88.
          t80 = t88.
        ENDIF.
        t79 = t80.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        t89 = t90.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t92.
        t91 = t92.
        DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t94.
        t93 = t94.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t96.
        t95 = t96.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        t97 = t98.
        t72 = NEW zcl_lnt_irule_metadata( i_key = t73 i_title = t75 i_short_description = t77 i_bad_example = t89 i_good_example = t91 i_extended_information = t93 i_tags = t79 i_pragma = t95 i_pseudo_comment = t97 ).
        CREATE OBJECT t72->zlnt_view_ownkeys_b0e8086400eb.
        t72->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        IF t72->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t72->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t99 ).
        ENDIF.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        IF t72->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t72->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t100 ).
        ENDIF.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        IF t72->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t72->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t101 ).
        ENDIF.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF t72->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t72->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t102 ).
        ENDIF.
        CREATE OBJECT t72->zlnt_json_ownkeys_70e5fd461788.
        t72->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t103) = |key|.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        IF t72->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t72->zlnt_json_ownkeys_70e5fd461788->put( p0 = t103 p1 = t104 ).
        ENDIF.
        DATA(t105) = |title|.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t72->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t72->zlnt_json_ownkeys_70e5fd461788->put( p0 = t105 p1 = t106 ).
        ENDIF.
        DATA(t107) = |shortDescription|.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t72->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t72->zlnt_json_ownkeys_70e5fd461788->put( p0 = t107 p1 = t108 ).
        ENDIF.
        DATA(t109) = |tags|.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        IF t72->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t72->zlnt_json_ownkeys_70e5fd461788->put( p0 = t109 p1 = t110 ).
        ENDIF.
        t71 = t72->key.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t112) = me->conf.
        t111 = t112->zlnt_view_read_sr_15c06369f827( ).
        DATA t113 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t113.
        t67 = zcl_lnt_issue=>at_token( i_file = t68 i_token = t69 i_message_26cb = t70 i_key = t71 i_severity = t111 i_fix = t113 ).
        t65 = t67.
      ELSE.
        DATA t114 TYPE REF TO zcl_lnt_issue.
        CLEAR t114.
        t65 = t114.
      ENDIF.
      result = t65.
      RETURN.
    ENDIF.
    DATA t115 TYPE REF TO zcl_lnt_issue.
    CLEAR t115.
    result = t115.

  ENDMETHOD.

  METHOD check_source.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = me->msag_references.
    DATA t7 TYPE string.
    DATA t8 TYPE REF TO zcl_lnt_abstract_file.
    DATA(t9) = t1.
    t8 = t9.
    DATA t10 TYPE string.
    DATA(t11) = t8.
    t10 = t11->filename.
    t7 = t10.
    t5 = t6->list_by_filename( i_filename = t7 ).
    t4 = t5.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zcl_lnt_abap_file.
    DATA(t14) = t1.
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = t13.
    t15 = t16->statements.
    t12 = t15.
    DATA t17 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t17.
    DATA t18 TYPE REF TO object.
    CLEAR t18.
    DATA(t19) = VALUE i( ).
    DO.
      t12->load( ).
      IF t19 >= lines( t12->items ).
        EXIT.
      ENDIF.
      CLEAR t18.
      READ TABLE t12->items INDEX t19 + 1 INTO t18.
      t19 = t19 + 1.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      CLEAR t17.
      IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t20 ?= t18.
        DATA t21 TYPE REF TO object.
        t21 = t20->as_ref( ).
        t17 ?= t21.
      ELSE.
        t17 ?= t18.
      ENDIF.
      DATA t22 TYPE abap_bool.
      DATA t23 TYPE abap_bool.
      DATA t24 TYPE REF TO zif_lnt_statement.
      DATA(t25) = t17.
      t24 = t25->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_st_raise ).
      t22 = t23.
      IF t23 = abap_false.
        DATA t26 TYPE abap_bool.
        DATA t27 TYPE REF TO zif_lnt_statement.
        DATA(t28) = t17.
        t27 = t28->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_st_message ).
        t22 = t26.
      ENDIF.
      IF t22 = abap_true.
        DATA(t29) = t4.
        DATA t30 TYPE REF TO zcl_lnt_shape_08db6d95.
        CLEAR t30.
        DATA t31 TYPE REF TO object.
        CLEAR t31.
        DATA(t32) = VALUE i( ).
        DO.
          t29->load( ).
          IF t32 >= lines( t29->items ).
            EXIT.
          ENDIF.
          CLEAR t31.
          READ TABLE t29->items INDEX t32 + 1 INTO t31.
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
          DATA(t35) = VALUE abap_bool( ).
          DATA t36 TYPE REF TO zcl_lnt_position.
          DATA t37 TYPE REF TO zcl_lnt_position.
          DATA t38 TYPE REF TO zcl_lnt_abstract_token.
          DATA t39 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t40) = t30.
          t39 = t40->token.
          t38 = t39.
          DATA t41 TYPE REF TO zcl_lnt_position.
          DATA(t42) = t38.
          t41 = t42->start.
          t37 = t41.
          t36 = t37.
          DATA t43 TYPE REF TO zcl_lnt_position.
          DATA t44 TYPE REF TO zcl_lnt_position.
          DATA t45 TYPE REF TO zcl_lnt_statement_node.
          DATA(t46) = t17.
          t45 = t46.
          DATA t47 TYPE REF TO zcl_lnt_position.
          DATA t48 TYPE REF TO zcl_lnt_abstract_token.
          DATA t49 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t50) = t45.
          t49 = t50->get_first_token( ).
          t48 = t49.
          DATA t51 TYPE REF TO zcl_lnt_position.
          DATA(t52) = t48.
          t51 = t52->start.
          t47 = t51.
          t44 = t47.
          t43 = t44.
          DATA t53 TYPE REF TO zcl_lnt_position.
          DATA t54 TYPE REF TO zcl_lnt_position.
          DATA t55 TYPE REF TO zcl_lnt_statement_node.
          DATA(t56) = t17.
          t55 = t56.
          DATA t57 TYPE REF TO zcl_lnt_position.
          DATA t58 TYPE REF TO zcl_lnt_abstract_token.
          DATA t59 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t60) = t55.
          t59 = t60->get_last_token( ).
          t58 = t59.
          DATA t61 TYPE REF TO zcl_lnt_position.
          DATA t62 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t63) = t58.
          t62 = t63.
          DATA t64 TYPE REF TO zcl_lnt_position.
          DATA t65 TYPE f.
          DATA t66 TYPE REF TO zcl_lnt_position.
          DATA t67 TYPE REF TO zcl_lnt_position.
          DATA(t68) = t62.
          t67 = t68->start.
          t66 = t67.
          DATA t69 TYPE f.
          DATA(t70) = t66.
          t69 = t70->row.
          t65 = t69.
          DATA t71 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t72 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t73 TYPE REF TO zcl_lnt_position.
          DATA t74 TYPE REF TO zcl_lnt_position.
          DATA(t75) = t62.
          t74 = t75->start.
          t73 = t74.
          DATA t76 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t77) = t73.
          t76 = t77->col.
          t72 = t76.
          DATA t78 TYPE f.
          DATA t79 TYPE i.
          DATA t80 TYPE string.
          DATA(t81) = t62.
          t80 = t81->str.
          DATA(t82) = strlen( t80 ).
          t79 = t82.
          t78 = t79.
          DATA(t83) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t83->has = abap_true.
          t83->value = t78.
          t71 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t72 right = t83 op = `+` ).
          t64 = NEW zcl_lnt_position( i_row = t65 i_col = t71 ).
          t61 = t64.
          t57 = t61.
          t54 = t57.
          t53 = t54.
          DATA t84 TYPE abap_bool.
          DATA t85 TYPE abap_bool.
          DATA(t86) = t36.
          DATA(t87) = t43.
          t85 = t86->is_after( i_p = t87 ).
          t84 = t85.
          IF t85 = abap_true.
            DATA(t88) = VALUE abap_bool( ).
            DATA t89 TYPE REF TO zcl_lnt_position.
            DATA(t90) = t53.
            t89 = t90.
            DATA t91 TYPE abap_bool.
            DATA t92 TYPE abap_bool.
            DATA t93 TYPE f.
            DATA(t94) = t36.
            t93 = t94->row.
            DATA t95 TYPE f.
            DATA(t96) = t89.
            t95 = t96->row.
            t92 = xsdbool( t93 < t95 ).
            t91 = t92.
            IF t92 = abap_false.
              DATA t97 TYPE abap_bool.
              DATA t98 TYPE abap_bool.
              DATA t99 TYPE f.
              DATA(t100) = t36.
              t99 = t100->row.
              DATA t101 TYPE f.
              DATA(t102) = t89.
              t101 = t102->row.
              t98 = xsdbool( t99 = t101 ).
              t97 = t98.
              IF t98 = abap_true.
                DATA t103 TYPE abap_bool.
                DATA t104 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                DATA(t105) = t36.
                t104 = t105->col.
                DATA t106 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                DATA(t107) = t89.
                t106 = t107->col.
                t103 = zlnt_runtime_numb_290eb04a9758=>compare( left = t104 right = t106 op = `<` ).
                t97 = t103.
              ENDIF.
              t91 = t97.
            ENDIF.
            t88 = t91.
            t84 = t88.
          ENDIF.
          t35 = t84.
          IF t35 = abap_true.
            DATA t108 TYPE REF TO zcl_lnt_ob_message_class.
            CLEAR t108.
            DATA t109 TYPE REF TO zcl_lnt_ob_message_class.
            CLEAR t109.
            DATA t110 TYPE REF TO zif_lnt_object.
            CLEAR t110.
            DATA(t111) = me->reg.
            DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t112.
            DATA(t113) = abap_true.
            IF t113 = abap_true.
              DATA(t114) = |MSAG|.
              DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t115->has = abap_true.
              t115->value = t114.
              t112 = t115.
            ELSE.
              DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t116.
              t112 = t116.
            ENDIF.
            DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t117.
            DATA(t118) = abap_true.
            IF t118 = abap_true.
              DATA t119 TYPE string.
              DATA(t120) = t30.
              t119 = t120->message_class.
              DATA(t121) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t121->has = abap_true.
              t121->value = t119.
              t117 = t121.
            ELSE.
              DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t122.
              t117 = t122.
            ENDIF.
            t110 = t111->get_object( i_type_9913 = t112 i_name = t117 ).
            DATA t123 TYPE REF TO object.
            t123 = t110.
            t109 ?= t123.
            t108 = t109.
            DATA(t124) = VALUE abap_bool( ).
            DATA t125 TYPE REF TO zcl_lnt_ob_message_class.
            DATA(t126) = t108.
            t125 = t126.
            DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t128.
            t127 = t128.
            DATA(t129) = VALUE abap_bool( ).
            DATA(t130) = t125.
            IF t130 IS INITIAL.
              t129 = abap_true.
            ENDIF.
            t124 = t129.
            IF t124 = abap_true.
              DATA(t131) = VALUE abap_bool( ).
              DATA(t132) = VALUE abap_bool( ).
              DATA t133 TYPE REF TO zcl_lnt_ddic.
              DATA t134 TYPE REF TO zcl_lnt_ddic.
              DATA(t135) = me->reg.
              t134 = NEW zcl_lnt_ddic( i_reg_f149 = t135 ).
              t133 = t134.
              DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t136.
              DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t137.
              DATA(t138) = abap_true.
              IF t138 = abap_true.
                DATA t139 TYPE string.
                DATA(t140) = t30.
                t139 = t140->message_class.
                DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t141->has = abap_true.
                t141->value = t139.
                t137 = t141.
              ELSE.
                DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t142.
                t137 = t142.
              ENDIF.
              t136 = t137.
              DATA(t143) = VALUE abap_bool( ).
              DATA(t144) = VALUE abap_bool( ).
              DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t146) = t136.
              t145 = t146.
              DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t148.
              t147 = t148.
              DATA(t149) = VALUE abap_bool( ).
              DATA(t150) = t145.
              IF t150 IS INITIAL.
                t149 = abap_true.
              ELSEIF t150->has = abap_false.
                t149 = abap_true.
              ENDIF.
              t144 = t149.
              IF t144 = abap_true.
                DATA(t151) = abap_true.
                t143 = t151.
              ELSE.
                DATA t152 TYPE abap_bool.
                DATA t153 TYPE REF TO zif_lnt_registry.
                DATA(t154) = t133.
                t153 = t154->reg.
                DATA t155 TYPE string.
                DATA(t156) = t136.
                t155 = t156->value.
                t152 = t153->in_error_namespace( i_name = t155 ).
                t143 = t152.
              ENDIF.
              t132 = t143.
              DATA(t157) = abap_true.
              t131 = xsdbool( t132 = t157 ).
              IF t131 = abap_true.
                DATA t158 TYPE string.
                DATA t159 TYPE string.
                DATA t160 TYPE string.
                DATA(t161) = |Message class "|.
                DATA t162 TYPE string.
                DATA(t163) = t30.
                t162 = t163->message_class.
                DATA(t164) = strlen( t161 ).
                t160 = |{ t161 }{ t162 }|.
                DATA(t165) = |" not found|.
                DATA(t166) = strlen( t160 ).
                t159 = |{ t160 }{ t165 }|.
                t158 = t159.
                DATA(t167) = t2.
                DATA t168 TYPE REF TO zcl_lnt_issue.
                CLEAR t168.
                DATA(t169) = t1.
                DATA t170 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t171) = t30.
                t170 = t171->token.
                DATA(t172) = t158.
                DATA(t173) = VALUE string( ).
                DATA t174 TYPE REF TO zcl_lnt_irule_metadata.
                CLEAR t174.
                DATA t175 TYPE string.
                DATA(t176) = |message_exists|.
                t175 = t176.
                DATA t177 TYPE string.
                DATA(t178) = |Check MESSAGE exists|.
                t177 = t178.
                DATA t179 TYPE string.
                DATA(t180) = |In message statements, check that the message class + id exi|.
                t180 = t180 && |st|.
                t179 = t180.
                DATA t181 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t181.
                DATA t182 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t182.
                DATA(t183) = abap_true.
                IF t183 = abap_true.
                  DATA t184 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  DATA t185 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  DATA t186 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CREATE OBJECT t186.
                  t185 = t186.
                  DATA(t187) = t185.
                  DATA(t188) = |Syntax|.
                  t187->load( ).
                  APPEND t188 TO t187->items.
                  t187->save( ).
                  DATA(t189) = t185.
                  t184 = t189.
                  t182 = t184.
                ELSE.
                  DATA t190 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t190.
                  t182 = t190.
                ENDIF.
                t181 = t182.
                DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t192.
                t191 = t192.
                DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t194.
                t193 = t194.
                DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t196.
                t195 = t196.
                DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t198.
                t197 = t198.
                DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t200.
                t199 = t200.
                t174 = NEW zcl_lnt_irule_metadata( i_key = t175 i_title = t177 i_short_description = t179 i_bad_example = t191 i_good_example = t193 i_extended_information = t195 i_tags = t181 i_pragma = t197 i_pseudo_comment = t199 ).
                CREATE OBJECT t174->zlnt_view_ownkeys_b0e8086400eb.
                t174->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t201.
                IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t201 ).
                ENDIF.
                DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t202.
                IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t202 ).
                ENDIF.
                DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t203.
                IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t203 ).
                ENDIF.
                DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t204.
                IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t204 ).
                ENDIF.
                CREATE OBJECT t174->zlnt_json_ownkeys_70e5fd461788.
                t174->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t205) = |key|.
                DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t206.
                IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t205 p1 = t206 ).
                ENDIF.
                DATA(t207) = |title|.
                DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t208.
                IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t207 p1 = t208 ).
                ENDIF.
                DATA(t209) = |shortDescription|.
                DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t210.
                IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t209 p1 = t210 ).
                ENDIF.
                DATA(t211) = |tags|.
                DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t212.
                IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t211 p1 = t212 ).
                ENDIF.
                t173 = t174->key.
                DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t214) = me->conf.
                t213 = t214->zlnt_view_read_sr_15c06369f827( ).
                DATA t215 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t215.
                t168 = zcl_lnt_issue=>at_token( i_file = t169 i_token = t170 i_message_26cb = t172 i_key = t173 i_severity = t213 i_fix = t215 ).
                t167->load( ).
                APPEND t168 TO t167->items.
                t167->save( ).
              ENDIF.
              CONTINUE.
            ENDIF.
            DATA t216 TYPE REF TO zcl_lnt_ty_message.
            DATA t217 TYPE REF TO zcl_lnt_ty_message.
            DATA t218 TYPE REF TO zcl_lnt_ob_message_class.
            DATA(t219) = t108.
            t218 = t219.
            DATA t220 TYPE string.
            DATA(t221) = t30.
            t220 = t221->number.
            t217 = t218->get_by_number( i_num = t220 ).
            t216 = t217.
            DATA(t222) = VALUE abap_bool( ).
            DATA t223 TYPE REF TO zcl_lnt_ty_message.
            DATA(t224) = t216.
            t223 = t224.
            DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t226.
            t225 = t226.
            DATA(t227) = VALUE abap_bool( ).
            DATA(t228) = t223.
            IF t228 IS INITIAL.
              t227 = abap_true.
            ENDIF.
            t222 = t227.
            IF t222 = abap_true.
              DATA t229 TYPE string.
              DATA t230 TYPE string.
              DATA t231 TYPE string.
              DATA t232 TYPE string.
              DATA t233 TYPE string.
              DATA(t234) = |Message number "|.
              DATA t235 TYPE string.
              DATA(t236) = t30.
              t235 = t236->number.
              DATA(t237) = strlen( t234 ).
              t233 = |{ t234 }{ t235 }|.
              DATA(t238) = |" not found in class "|.
              DATA(t239) = strlen( t233 ).
              t232 = |{ t233 }{ t238 }|.
              DATA t240 TYPE string.
              DATA(t241) = t30.
              t240 = t241->message_class.
              DATA(t242) = strlen( t232 ).
              t231 = |{ t232 }{ t240 }|.
              DATA(t243) = |"|.
              DATA(t244) = strlen( t231 ).
              t230 = |{ t231 }{ t243 }|.
              t229 = t230.
              DATA(t245) = t2.
              DATA t246 TYPE REF TO zcl_lnt_issue.
              CLEAR t246.
              DATA(t247) = t1.
              DATA t248 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t249) = t30.
              t248 = t249->token.
              DATA(t250) = t229.
              DATA(t251) = VALUE string( ).
              DATA t252 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t252.
              DATA t253 TYPE string.
              DATA(t254) = |message_exists|.
              t253 = t254.
              DATA t255 TYPE string.
              DATA(t256) = |Check MESSAGE exists|.
              t255 = t256.
              DATA t257 TYPE string.
              DATA(t258) = |In message statements, check that the message class + id exi|.
              t258 = t258 && |st|.
              t257 = t258.
              DATA t259 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t259.
              DATA t260 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t260.
              DATA(t261) = abap_true.
              IF t261 = abap_true.
                DATA t262 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t263 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t264 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t264.
                t263 = t264.
                DATA(t265) = t263.
                DATA(t266) = |Syntax|.
                t265->load( ).
                APPEND t266 TO t265->items.
                t265->save( ).
                DATA(t267) = t263.
                t262 = t267.
                t260 = t262.
              ELSE.
                DATA t268 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t268.
                t260 = t268.
              ENDIF.
              t259 = t260.
              DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t270.
              t269 = t270.
              DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t272.
              t271 = t272.
              DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t274.
              t273 = t274.
              DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t276.
              t275 = t276.
              DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t278.
              t277 = t278.
              t252 = NEW zcl_lnt_irule_metadata( i_key = t253 i_title = t255 i_short_description = t257 i_bad_example = t269 i_good_example = t271 i_extended_information = t273 i_tags = t259 i_pragma = t275 i_pseudo_comment = t277 ).
              CREATE OBJECT t252->zlnt_view_ownkeys_b0e8086400eb.
              t252->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t279.
              IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t279 ).
              ENDIF.
              DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t280.
              IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t280 ).
              ENDIF.
              DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t281.
              IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t281 ).
              ENDIF.
              DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t282.
              IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t282 ).
              ENDIF.
              CREATE OBJECT t252->zlnt_json_ownkeys_70e5fd461788.
              t252->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t283) = |key|.
              DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t284.
              IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t283 p1 = t284 ).
              ENDIF.
              DATA(t285) = |title|.
              DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t286.
              IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t285 p1 = t286 ).
              ENDIF.
              DATA(t287) = |shortDescription|.
              DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t288.
              IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t287 p1 = t288 ).
              ENDIF.
              DATA(t289) = |tags|.
              DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t290.
              IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t289 p1 = t290 ).
              ENDIF.
              t251 = t252->key.
              DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t292) = me->conf.
              t291 = t292->zlnt_view_read_sr_15c06369f827( ).
              DATA t293 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t293.
              t246 = zcl_lnt_issue=>at_token( i_file = t247 i_token = t248 i_message_26cb = t250 i_key = t251 i_severity = t291 i_fix = t293 ).
              t245->load( ).
              APPEND t246 TO t245->items.
              t245->save( ).
              CONTINUE.
            ENDIF.
            DATA t294 TYPE abap_bool.
            DATA t295 TYPE abap_bool.
            DATA(t296) = CAST zcl_lnt_message_exists_conf( me->g_c_in_sr_rl_ms_ex_ts_ms_ex_rl( ) ).
            t295 = t296->zlnt_view_read_sr_6fb4e7507104( ).
            DATA(t297) = abap_true.
            t294 = xsdbool( t295 = t297 ).
            IF t294 = abap_true.
              DATA t298 TYPE f.
              DATA t299 TYPE f.
              DATA(t300) = t17.
              t299 = me->count_with( i_statement = t300 ).
              t298 = t299.
              DATA(t301) = VALUE int8( ).
              DATA(t302) = VALUE int8( ).
              DATA(t303) = VALUE f( ).
              DATA t304 TYPE REF TO zcl_lnt_ty_message.
              DATA t305 TYPE REF TO zcl_lnt_ty_message.
              DATA(t306) = t216.
              t305 = t306.
              t304 = t305.
              DATA(t307) = VALUE f( ).
              DATA(t308) = VALUE i( ).
              DATA(t309) = VALUE i( ).
              DATA t310 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t310.
              DATA t311 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t312 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t313 TYPE string.
              DATA t314 TYPE string.
              DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t316) = t304.
              t315 = t316->message_25cb.
              t314 = t315->value.
              t313 = t314.
              DATA t317 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA(t318) = t313.
              DATA t319 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
              CLEAR t319.
              DATA(t320) = |&&|.
              DATA(t321) = |g|.
              CREATE OBJECT t319 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t320 flags = t321 checked = abap_true.
              t317 = t319->match( t318 ).
              t312 = t317.
              t311 = t312.
              DATA t322 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t322.
              DATA t323 TYPE abap_bool.
              DATA(t324) = t311.
              t323 = xsdbool( t324 IS BOUND ).
              IF t323 = abap_true.
                DATA t325 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA(t326) = t311.
                t325 = t326.
                t322 = t325.
              ELSE.
                DATA t327 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t327.
                t322 = t327.
              ENDIF.
              t310 = t322.
              t310->load( ).
              t309 = lines( t310->items ).
              t308 = t309.
              DATA(t328) = VALUE f( ).
              DATA(t329) = VALUE int8( ).
              DATA(t330) = VALUE int8( ).
              DATA(t331) = VALUE i( ).
              DATA t332 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t332.
              DATA t333 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t334 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t335 TYPE string.
              DATA t336 TYPE string.
              DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t338) = t304.
              t337 = t338->message_25cb.
              t336 = t337->value.
              t335 = t336.
              DATA t339 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA(t340) = t335.
              DATA t341 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
              CLEAR t341.
              DATA(t342) = |&|.
              DATA(t343) = |g|.
              CREATE OBJECT t341 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t342 flags = t343 checked = abap_true.
              t339 = t341->match( t340 ).
              t334 = t339.
              t333 = t334.
              DATA t344 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t344.
              DATA t345 TYPE abap_bool.
              DATA(t346) = t333.
              t345 = xsdbool( t346 IS BOUND ).
              IF t345 = abap_true.
                DATA t347 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA(t348) = t333.
                t347 = t348.
                t344 = t347.
              ELSE.
                DATA t349 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t349.
                t344 = t349.
              ENDIF.
              t332 = t344.
              t332->load( ).
              t331 = lines( t332->items ).
              t330 = t331.
              DATA t350 TYPE int8.
              DATA t351 TYPE int8.
              DATA(t352) = t308.
              t351 = t352.
              DATA(t353) = CONV int8( 2 ).
              t350 = t351 * t353.
              t329 = t330 - t350.
              t328 = t329.
              t307 = t328.
              t303 = t307.
              t302 = t303.
              t301 = t302.
              DATA t354 TYPE abap_bool.
              DATA(t355) = t298.
              DATA t356 TYPE f.
              DATA(t357) = t301.
              t356 = t357.
              t354 = xsdbool( t355 <> t356 ).
              IF t354 = abap_true.
                DATA(t358) = VALUE string( ).
                DATA(t359) = VALUE string( ).
                DATA(t360) = VALUE string( ).
                DATA t361 TYPE string.
                DATA t362 TYPE string.
                DATA(t363) = |Message |.
                DATA t364 TYPE string.
                DATA(t365) = t30.
                t364 = t365->number.
                DATA(t366) = strlen( t363 ).
                t362 = |{ t363 }{ t364 }|.
                DATA(t367) = |, expected |.
                DATA(t368) = strlen( t362 ).
                t361 = |{ t362 }{ t367 }|.
                DATA(t369) = VALUE string( ).
                DATA t370 TYPE f.
                DATA(t371) = t301.
                t370 = t371.
                IF t370 <> trunc( t370 ) OR t370 > range_safe_integer OR t370 < 0 - range_safe_integer.
                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                ENDIF.
                DATA(t372) = CONV int8( t370 ).
                t369 = |{ t372 }|.
                DATA(t373) = strlen( t361 ).
                t360 = |{ t361 }{ t369 }|.
                DATA(t374) = | WITH parameters|.
                DATA(t375) = strlen( t360 ).
                t359 = |{ t360 }{ t374 }|.
                t358 = t359.
                DATA(t376) = t2.
                DATA t377 TYPE REF TO zcl_lnt_issue.
                CLEAR t377.
                DATA(t378) = t1.
                DATA t379 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t380) = t30.
                t379 = t380->token.
                DATA(t381) = t358.
                DATA(t382) = VALUE string( ).
                DATA t383 TYPE REF TO zcl_lnt_irule_metadata.
                CLEAR t383.
                DATA t384 TYPE string.
                DATA(t385) = |message_exists|.
                t384 = t385.
                DATA t386 TYPE string.
                DATA(t387) = |Check MESSAGE exists|.
                t386 = t387.
                DATA t388 TYPE string.
                DATA(t389) = |In message statements, check that the message class + id exi|.
                t389 = t389 && |st|.
                t388 = t389.
                DATA t390 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t390.
                DATA t391 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t391.
                DATA(t392) = abap_true.
                IF t392 = abap_true.
                  DATA t393 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  DATA t394 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  DATA t395 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CREATE OBJECT t395.
                  t394 = t395.
                  DATA(t396) = t394.
                  DATA(t397) = |Syntax|.
                  t396->load( ).
                  APPEND t397 TO t396->items.
                  t396->save( ).
                  DATA(t398) = t394.
                  t393 = t398.
                  t391 = t393.
                ELSE.
                  DATA t399 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t399.
                  t391 = t399.
                ENDIF.
                t390 = t391.
                DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t401.
                t400 = t401.
                DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t403.
                t402 = t403.
                DATA t404 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t405.
                t404 = t405.
                DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t407.
                t406 = t407.
                DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t409.
                t408 = t409.
                t383 = NEW zcl_lnt_irule_metadata( i_key = t384 i_title = t386 i_short_description = t388 i_bad_example = t400 i_good_example = t402 i_extended_information = t404 i_tags = t390 i_pragma = t406 i_pseudo_comment = t408 ).
                CREATE OBJECT t383->zlnt_view_ownkeys_b0e8086400eb.
                t383->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t410.
                IF t383->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t383->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t410 ).
                ENDIF.
                DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t411.
                IF t383->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t383->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t411 ).
                ENDIF.
                DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t412.
                IF t383->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t383->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t412 ).
                ENDIF.
                DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t413.
                IF t383->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t383->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t413 ).
                ENDIF.
                CREATE OBJECT t383->zlnt_json_ownkeys_70e5fd461788.
                t383->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t414) = |key|.
                DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t415.
                IF t383->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t383->zlnt_json_ownkeys_70e5fd461788->put( p0 = t414 p1 = t415 ).
                ENDIF.
                DATA(t416) = |title|.
                DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t417.
                IF t383->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t383->zlnt_json_ownkeys_70e5fd461788->put( p0 = t416 p1 = t417 ).
                ENDIF.
                DATA(t418) = |shortDescription|.
                DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t419.
                IF t383->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t383->zlnt_json_ownkeys_70e5fd461788->put( p0 = t418 p1 = t419 ).
                ENDIF.
                DATA(t420) = |tags|.
                DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t421.
                IF t383->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t383->zlnt_json_ownkeys_70e5fd461788->put( p0 = t420 p1 = t421 ).
                ENDIF.
                t382 = t383->key.
                DATA t422 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t423) = me->conf.
                t422 = t423->zlnt_view_read_sr_15c06369f827( ).
                DATA t424 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t424.
                t377 = zcl_lnt_issue=>at_token( i_file = t378 i_token = t379 i_message_26cb = t381 i_key = t382 i_severity = t422 i_fix = t424 ).
                t376->load( ).
                APPEND t377 TO t376->items.
                t376->save( ).
              ENDIF.
            ENDIF.
          ENDIF.
        ENDDO.
      ENDIF.
    ENDDO.
    DATA(t425) = t2.
    result = t425.

  ENDMETHOD.

  METHOD count_with.
    DATA(t1) = i_statement.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d249_9dc4af95df9d.
    t3 = t4->find_direct_expression( i_type_9913 = t5 ).
    t2 = t3.
    DATA t6 TYPE abap_bool.
    DATA(t7) = t2.
    t6 = xsdbool( t7 IS BOUND ).
    IF t6 = abap_true.
      DATA t8 TYPE f.
      DATA t9 TYPE i.
      DATA t10 TYPE i.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t13 TYPE REF TO zcl_lnt_abstract_node.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = t2.
      t14 = t15.
      t13 = t14.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t17) = t13.
      t16 = t17->children.
      t12 = t16.
      t11 ?= t12.
      t11->load( ).
      t10 = lines( t11->items ).
      DATA(t18) = 1.
      t9 = t10 - t18.
      t8 = t9.
      result = t8.
      RETURN.
    ENDIF.
    DATA t19 TYPE f.
    DATA(t20) = CONV f( 0 ).
    t19 = t20.
    DATA t21 TYPE abap_bool.
    DATA(t22) = abap_false.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t26) = t1.
    t25 = t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t28) = t25.
    t27 = t28->children.
    t24 = t27.
    t23 ?= t24.
    DATA t29 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t29.
    DATA t30 TYPE REF TO object.
    CLEAR t30.
    DATA(t31) = VALUE i( ).
    DO.
      t23->load( ).
      IF t31 >= lines( t23->items ).
        EXIT.
      ENDIF.
      CLEAR t30.
      READ TABLE t23->items INDEX t31 + 1 INTO t30.
      t31 = t31 + 1.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      CLEAR t29.
      IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t32 ?= t30.
        DATA t33 TYPE REF TO object.
        t33 = t32->as_ref( ).
        t29 ?= t33.
      ELSE.
        t29 ?= t30.
      ENDIF.
      DATA t34 TYPE abap_bool.
      DATA t35 TYPE abap_bool.
      DATA(t36) = t29.
      t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_token_node ).
      t34 = t35.
      IF t35 = abap_true.
        DATA(t37) = VALUE abap_bool( ).
        DATA t38 TYPE string.
        DATA t39 TYPE string.
        DATA t40 TYPE REF TO zcl_lnt_token_node.
        DATA t41 TYPE REF TO zcl_lnt_token_node.
        DATA(t42) = t29.
        DATA t43 TYPE REF TO object.
        t43 = t42.
        t41 ?= t43.
        t40 = t41.
        DATA t44 TYPE string.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        DATA t46 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t47) = t40.
        t46 = t47->token.
        t45 = t46.
        DATA t48 TYPE string.
        DATA(t49) = t45.
        t48 = t49->str.
        t44 = t48.
        t39 = t44.
        DATA(t50) = strlen( t39 ).
        t38 = t39.
        IF t38 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t38 TO UPPER CASE.
        ELSE.
          t38 = zlnt_runtime_uppe_91169605024d=>full( t38 ).
        ENDIF.
        DATA(t51) = |WITH|.
        t37 = xsdbool( t38 = t51 ).
        t34 = t37.
      ENDIF.
      IF t34 = abap_true.
        DATA(t52) = abap_true.
        t21 = t52.
        CONTINUE.
      ENDIF.
      DATA t53 TYPE abap_bool.
      DATA(t54) = t21.
      DATA(t55) = abap_true.
      t53 = xsdbool( t54 = t55 ).
      IF t53 = abap_true.
        DATA t56 TYPE abap_bool.
        DATA(t57) = t29.
        t56 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_expression_node ).
        IF t56 = abap_true.
          DATA t58 TYPE f.
          DATA(t59) = t19.
          DATA(t60) = CONV f( 1 ).
          t58 = t59 + t60.
          t19 = t58.
        ELSE.
          EXIT.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t61) = t19.
    result = t61.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_message_exists_conf( me->g_c_in_sr_rl_ms_ex_ts_ms_ex_rl( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_message_exists_conf( me->g_c_in_sr_rl_ms_ex_ts_ms_ex_rl( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_message_exists_conf.
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
        t2 = NEW zcl_lnt_message_exists_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_in_sr_rl_ms_ex_ts_ms_ex_rl( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1583_bd117b9d99d5.
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
