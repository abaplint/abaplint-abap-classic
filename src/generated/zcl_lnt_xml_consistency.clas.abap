* TS: src/rules/xml_consistency.ts:19:1 XMLConsistency
CLASS zcl_lnt_xml_consistency DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_xml_consistency_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_xm_cn_ts_xm_cns RETURNING VALUE(result) TYPE REF TO zcl_lnt_xml_consistency_conf.
    METHODS st_cn_in_sr_rl_xm_cn_ts_xm_cns IMPORTING i_conf TYPE REF TO zcl_lnt_xml_consistency_conf.
    METHODS in_in_sr_rl_xml_cns_ts_xml_cns IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_xml_consistency.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS run_class IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_class i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS run_text_pool IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS run_interface IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_ob_interface i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_text_length IMPORTING i_file TYPE REF TO zif_lnt_file i_field_name TYPE string i_text TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_max_length TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_lang TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS run_data_element IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_data_element i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_required_field IMPORTING i_file TYPE REF TO zif_lnt_file i_field_name TYPE string i_value TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS run_domain IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_domain i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS run_transaction IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_transaction i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS run_message_class IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_ob_message_class i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS run_lock_object IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_lock_object i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS run_table IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_table i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS fn_push IMPORTING i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_issue TYPE REF TO zcl_lnt_issue.
    METHODS fn_push_9491 IMPORTING i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_issue TYPE REF TO zcl_lnt_issue.
    METHODS fn_push_10223 IMPORTING i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_issue TYPE REF TO zcl_lnt_issue.
    METHODS fn_push_10744 IMPORTING i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_issue TYPE REF TO zcl_lnt_issue.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_47a4f748f766 TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_xml_consistency IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_xml_consistency_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |xml_consistency|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |XML consistency|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks the consistency of main XML files|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
      t11 = t11 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
      t11 = t11 && |ce table and field values\n* Transparent TABL objects have de|.
      t11 = t11 && |livery class and size category set\n* Lock parameter names in|.
      t11 = t11 && | ENQU objects are max 16 characters\n* Texts and translations|.
      t11 = t11 && | do not exceed maximum allowed length.|.
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
      DATA(t21) = |Naming|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |Syntax|.
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
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t28 i_extended_information = t8 i_tags = t14 i_pragma = t30 i_pseudo_comment = t32 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t38 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t39) = |key|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |title|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |shortDescription|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |extendedInformation|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    DATA(t47) = |tags|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_xm_cn_ts_xm_cns.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_xm_cn_ts_xm_cns.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_xml_cns_ts_xml_cns.
    DATA(t1) = i_reg_d009.
    DATA(t2) = me.
    result = t2.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zif_lnt_file.
    DATA t5 TYPE REF TO zif_lnt_file.
    DATA(t6) = t1.
    t5 = t6->get_xml_file( ).
    t4 = t5.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zif_lnt_file.
    DATA(t9) = t4.
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
      DATA(t14) = t2.
      result = t14.
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t17) = t1.
    t16 = t17->get_xml( ).
    t15 = t16.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = t15.
    IF t19 IS BOUND.
      IF t19->has = abap_true.
        t18 = xsdbool( strlen( t19->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t18 = abap_true.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t22 TYPE string.
      DATA(t23) = t15.
      t22 = t23->value.
      t21 = zlnt_runtime_xmlv_61d3741de077=>validate( t22 ).
      t20 = t21.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = t20.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      DATA(t28) = abap_true.
      CLEAR t27.
      CREATE OBJECT t27.
      t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t27->bval = t28.
      IF t26 IS NOT BOUND.
        t25 = xsdbool( t27 IS NOT BOUND ).
      ELSE.
        t25 = t26->strict_equals( t27 ).
      ENDIF.
      t24 = xsdbool( t25 = abap_false ).
      IF t24 = abap_true.
        DATA(t29) = t2.
        DATA t30 TYPE REF TO zcl_lnt_issue.
        CLEAR t30.
        DATA t31 TYPE REF TO zif_lnt_file.
        DATA(t32) = t4.
        t31 = t32.
        DATA(t33) = CONV f( 1 ).
        DATA t34 TYPE string.
        DATA(t35) = |XML parser error: |.
        DATA t36 TYPE string.
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t39) = t20.
        DATA(t40) = |err|.
        t38 = t39->get( p0 = t40 ).
        DATA(t41) = |msg|.
        t37 = t38->get( p0 = t41 ).
        t36 = t37->as_string( ).
        DATA(t42) = strlen( t35 ).
        t34 = |{ t35 }{ t36 }|.
        DATA(t43) = VALUE string( ).
        DATA t44 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t44.
        DATA t45 TYPE string.
        DATA(t46) = |xml_consistency|.
        t45 = t46.
        DATA t47 TYPE string.
        DATA(t48) = |XML consistency|.
        t47 = t48.
        DATA t49 TYPE string.
        DATA(t50) = |Checks the consistency of main XML files|.
        t49 = t50.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t51.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        DATA(t53) = abap_true.
        IF t53 = abap_true.
          DATA(t54) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t54 = t54 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t54 = t54 && |ce table and field values\n* Transparent TABL objects have de|.
          t54 = t54 && |livery class and size category set\n* Lock parameter names in|.
          t54 = t54 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t54 = t54 && | do not exceed maximum allowed length.|.
          DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t55->has = abap_true.
          t55->value = t54.
          t52 = t55.
        ELSE.
          DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t56.
          t52 = t56.
        ENDIF.
        t51 = t52.
        DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t57.
        DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t58.
        DATA(t59) = abap_true.
        IF t59 = abap_true.
          DATA t60 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t61 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t62.
          t61 = t62.
          DATA(t63) = t61.
          DATA(t64) = |Naming|.
          t63->load( ).
          APPEND t64 TO t63->items.
          t63->save( ).
          DATA(t65) = t61.
          DATA(t66) = |Syntax|.
          t65->load( ).
          APPEND t66 TO t65->items.
          t65->save( ).
          DATA(t67) = t61.
          t60 = t67.
          t58 = t60.
        ELSE.
          DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t68.
          t58 = t68.
        ENDIF.
        t57 = t58.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t70.
        t69 = t70.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        t71 = t72.
        DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        t73 = t74.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        t75 = t76.
        t44 = NEW zcl_lnt_irule_metadata( i_key = t45 i_title = t47 i_short_description = t49 i_bad_example = t69 i_good_example = t71 i_extended_information = t51 i_tags = t57 i_pragma = t73 i_pseudo_comment = t75 ).
        CREATE OBJECT t44->zlnt_view_ownkeys_b0e8086400eb.
        t44->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t77.
        IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t77 ).
        ENDIF.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t78 ).
        ENDIF.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t79 ).
        ENDIF.
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t80.
        IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t80 ).
        ENDIF.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t81 ).
        ENDIF.
        CREATE OBJECT t44->zlnt_json_ownkeys_70e5fd461788.
        t44->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t82) = |key|.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t82 p1 = t83 ).
        ENDIF.
        DATA(t84) = |title|.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t84 p1 = t85 ).
        ENDIF.
        DATA(t86) = |shortDescription|.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
        ENDIF.
        DATA(t88) = |extendedInformation|.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t88 p1 = t89 ).
        ENDIF.
        DATA(t90) = |tags|.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t90 p1 = t91 ).
        ENDIF.
        t43 = t44->key.
        DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t93) = me->conf.
        t92 = t93->zlnt_view_read_sr_15c06369f827( ).
        t30 = zcl_lnt_issue=>at_row( i_file = t31 i_row = t33 i_message_26cb = t34 i_key = t43 i_severity = t92 ).
        t29->load( ).
        APPEND t30 TO t29->items.
        t29->save( ).
      ELSE.
        DATA t94 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t95 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t96 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t96.
        t95 = t96.
        DATA(t97) = t95.
        DATA(t98) = |version|.
        t97->load( ).
        APPEND t98 TO t97->items.
        t97->save( ).
        DATA(t99) = t95.
        DATA(t100) = |serializer_version|.
        t99->load( ).
        APPEND t100 TO t99->items.
        t99->save( ).
        DATA(t101) = t95.
        t94 = t101.
        DATA(t102) = VALUE string( ).
        t94->dense( ).
        DATA(t103) = VALUE i( ).
        DO.
          t94->load( ).
          IF t103 >= lines( t94->items ).
            EXIT.
          ENDIF.
          CLEAR t102.
          READ TABLE t94->items INDEX t103 + 1 INTO t102.
          IF t94->has( t103 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t103 = t103 + 1.
          DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t104.
          DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t105.
          DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t108 TYPE string.
          DATA t109 TYPE string.
          DATA(t110) = t15.
          t109 = t110->value.
          t108 = t109.
          DATA t111 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t112) = t108.
          DATA t113 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t113.
          DATA t114 TYPE string.
          DATA t115 TYPE string.
          DATA(t116) = `<abapGit\b[^>]*\b`.
          DATA(t117) = t102.
          DATA(t118) = strlen( t116 ).
          t115 = |{ t116 }{ t117 }|.
          DATA(t119) = |="([^"]+)"|.
          DATA(t120) = strlen( t115 ).
          t114 = |{ t115 }{ t119 }|.
          DATA(t121) = ||.
          CREATE OBJECT t113 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t114 flags = t121.
          t111 = t113->match( t112 ).
          t107 = t111.
          t106 = t107.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          DATA(t123) = VALUE abap_bool( ).
          DATA(t124) = t106.
          IF t124 IS INITIAL.
            t123 = abap_true.
          ENDIF.
          IF t123 = abap_true.
            DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t125.
            t122 = t125.
          ELSE.
            DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t127 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA(t128) = t106.
            t127 = t128.
            DATA(t129) = 1.
            t126 = t127->get( p0 = t129 ).
            t122 = t126.
          ENDIF.
          t105 = t122.
          t104 = t105.
          DATA(t130) = VALUE abap_bool( ).
          DATA(t131) = VALUE abap_bool( ).
          DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t133) = t104.
          t132 = t133.
          DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t135.
          t134 = t135.
          DATA(t136) = VALUE abap_bool( ).
          DATA(t137) = VALUE abap_bool( ).
          DATA(t138) = t132.
          IF t138 IS INITIAL.
            t137 = abap_true.
          ELSEIF t138->has = abap_false.
            t137 = abap_true.
          ENDIF.
          t136 = xsdbool( t137 = abap_false ).
          t131 = t136.
          t130 = t131.
          IF t131 = abap_true.
            DATA(t139) = VALUE abap_bool( ).
            DATA t140 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t141 TYPE string.
            DATA t142 TYPE string.
            DATA(t143) = t104.
            t142 = t143->value.
            t141 = t142.
            DATA t144 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA(t145) = t141.
            DATA t146 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            CLEAR t146.
            DATA(t147) = `^v\d\.\d\.\d$`.
            DATA(t148) = `^v[0-9]\.[0-9]\.[0-9]$`.
            DATA(t149) = ||.
            CREATE OBJECT t146 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t148 flags = t149.
            t146->source = t147.
            t144 = t146->match( t145 ).
            t140 = t144.
            IF t140 IS INITIAL.
              t139 = abap_true.
            ENDIF.
            t130 = t139.
          ENDIF.
          IF t130 = abap_true.
            DATA(t150) = t2.
            DATA t151 TYPE REF TO zcl_lnt_issue.
            CLEAR t151.
            DATA t152 TYPE REF TO zif_lnt_file.
            DATA(t153) = t4.
            t152 = t153.
            DATA(t154) = CONV f( 1 ).
            DATA t155 TYPE string.
            DATA t156 TYPE string.
            DATA t157 TYPE string.
            DATA t158 TYPE string.
            DATA(t159) = |Unexpected abapGit |.
            DATA(t160) = t102.
            DATA(t161) = strlen( t159 ).
            t158 = |{ t159 }{ t160 }|.
            DATA(t162) = | "|.
            DATA(t163) = strlen( t158 ).
            t157 = |{ t158 }{ t162 }|.
            DATA t164 TYPE string.
            DATA(t165) = t104.
            t164 = t165->value.
            DATA(t166) = strlen( t157 ).
            t156 = |{ t157 }{ t164 }|.
            DATA(t167) = |"|.
            DATA(t168) = strlen( t156 ).
            t155 = |{ t156 }{ t167 }|.
            DATA(t169) = VALUE string( ).
            DATA t170 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t170.
            DATA t171 TYPE string.
            DATA(t172) = |xml_consistency|.
            t171 = t172.
            DATA t173 TYPE string.
            DATA(t174) = |XML consistency|.
            t173 = t174.
            DATA t175 TYPE string.
            DATA(t176) = |Checks the consistency of main XML files|.
            t175 = t176.
            DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t177.
            DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t178.
            DATA(t179) = abap_true.
            IF t179 = abap_true.
              DATA(t180) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
              t180 = t180 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
              t180 = t180 && |ce table and field values\n* Transparent TABL objects have de|.
              t180 = t180 && |livery class and size category set\n* Lock parameter names in|.
              t180 = t180 && | ENQU objects are max 16 characters\n* Texts and translations|.
              t180 = t180 && | do not exceed maximum allowed length.|.
              DATA(t181) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t181->has = abap_true.
              t181->value = t180.
              t178 = t181.
            ELSE.
              DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t182.
              t178 = t182.
            ENDIF.
            t177 = t178.
            DATA t183 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t183.
            DATA t184 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t184.
            DATA(t185) = abap_true.
            IF t185 = abap_true.
              DATA t186 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t187 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t188 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t188.
              t187 = t188.
              DATA(t189) = t187.
              DATA(t190) = |Naming|.
              t189->load( ).
              APPEND t190 TO t189->items.
              t189->save( ).
              DATA(t191) = t187.
              DATA(t192) = |Syntax|.
              t191->load( ).
              APPEND t192 TO t191->items.
              t191->save( ).
              DATA(t193) = t187.
              t186 = t193.
              t184 = t186.
            ELSE.
              DATA t194 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t194.
              t184 = t194.
            ENDIF.
            t183 = t184.
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
            DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t202.
            t201 = t202.
            t170 = NEW zcl_lnt_irule_metadata( i_key = t171 i_title = t173 i_short_description = t175 i_bad_example = t195 i_good_example = t197 i_extended_information = t177 i_tags = t183 i_pragma = t199 i_pseudo_comment = t201 ).
            CREATE OBJECT t170->zlnt_view_ownkeys_b0e8086400eb.
            t170->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t203.
            IF t170->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t170->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t203 ).
            ENDIF.
            DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t204.
            IF t170->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t170->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t204 ).
            ENDIF.
            DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t205.
            IF t170->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t170->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t205 ).
            ENDIF.
            DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t206.
            IF t170->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t170->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t206 ).
            ENDIF.
            DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t207.
            IF t170->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t170->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t207 ).
            ENDIF.
            CREATE OBJECT t170->zlnt_json_ownkeys_70e5fd461788.
            t170->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t208) = |key|.
            DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t209.
            IF t170->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = t208 p1 = t209 ).
            ENDIF.
            DATA(t210) = |title|.
            DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t211.
            IF t170->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = t210 p1 = t211 ).
            ENDIF.
            DATA(t212) = |shortDescription|.
            DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t213.
            IF t170->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = t212 p1 = t213 ).
            ENDIF.
            DATA(t214) = |extendedInformation|.
            DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t215.
            IF t170->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = t214 p1 = t215 ).
            ENDIF.
            DATA(t216) = |tags|.
            DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t217.
            IF t170->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = t216 p1 = t217 ).
            ENDIF.
            t169 = t170->key.
            DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t219) = me->conf.
            t218 = t219->zlnt_view_read_sr_15c06369f827( ).
            t151 = zcl_lnt_issue=>at_row( i_file = t152 i_row = t154 i_message_26cb = t155 i_key = t169 i_severity = t218 ).
            t150->load( ).
            APPEND t151 TO t150->items.
            t150->save( ).
          ENDIF.
        ENDDO.
      ENDIF.
    ENDIF.
    DATA t220 TYPE abap_bool.
    DATA(t221) = t1.
    t220 = xsdbool( t221 IS BOUND AND t221 IS INSTANCE OF zcl_lnt_class ).
    IF t220 = abap_true.
      DATA(t222) = VALUE i( ).
      DATA t223 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t224 TYPE REF TO zcl_lnt_class.
      DATA(t225) = t1.
      DATA t226 TYPE REF TO object.
      t226 = t225.
      t224 ?= t226.
      DATA t227 TYPE REF TO zif_lnt_file.
      DATA(t228) = t4.
      t227 = t228.
      t223 = me->run_class( i_obj_1ed0 = t224 i_file = t227 ).
      DATA t229 TYPE REF TO zcl_lnt_issue.
      CLEAR t229.
      DATA t230 TYPE REF TO object.
      CLEAR t230.
      DATA(t231) = VALUE i( ).
      DO.
        t223->load( ).
        IF t231 >= lines( t223->items ).
          EXIT.
        ENDIF.
        CLEAR t230.
        READ TABLE t223->items INDEX t231 + 1 INTO t230.
        t231 = t231 + 1.
        DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t232.
        CLEAR t229.
        IF t230 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t232 ?= t230.
          DATA t233 TYPE REF TO object.
          t233 = t232->as_ref( ).
          t229 ?= t233.
        ELSE.
          t229 ?= t230.
        ENDIF.
        DATA(t234) = t2.
        DATA(t235) = t229.
        t234->load( ).
        APPEND t235 TO t234->items.
        t234->save( ).
      ENDDO.
      DATA t236 TYPE i.
      DATA(t237) = t2.
      t237->load( ).
      t236 = lines( t237->items ).
      t222 = t236.
    ELSE.
      DATA t238 TYPE abap_bool.
      DATA(t239) = t1.
      t238 = xsdbool( t239 IS BOUND AND t239 IS INSTANCE OF zcl_lnt_ob_interface ).
      IF t238 = abap_true.
        DATA(t240) = VALUE i( ).
        DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t242 TYPE REF TO zcl_lnt_ob_interface.
        DATA(t243) = t1.
        DATA t244 TYPE REF TO object.
        t244 = t243.
        t242 ?= t244.
        DATA t245 TYPE REF TO zif_lnt_file.
        DATA(t246) = t4.
        t245 = t246.
        t241 = me->run_interface( i_obj_1ed0 = t242 i_file = t245 ).
        DATA t247 TYPE REF TO zcl_lnt_issue.
        CLEAR t247.
        DATA t248 TYPE REF TO object.
        CLEAR t248.
        DATA(t249) = VALUE i( ).
        DO.
          t241->load( ).
          IF t249 >= lines( t241->items ).
            EXIT.
          ENDIF.
          CLEAR t248.
          READ TABLE t241->items INDEX t249 + 1 INTO t248.
          t249 = t249 + 1.
          DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t250.
          CLEAR t247.
          IF t248 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t250 ?= t248.
            DATA t251 TYPE REF TO object.
            t251 = t250->as_ref( ).
            t247 ?= t251.
          ELSE.
            t247 ?= t248.
          ENDIF.
          DATA(t252) = t2.
          DATA(t253) = t247.
          t252->load( ).
          APPEND t253 TO t252->items.
          t252->save( ).
        ENDDO.
        DATA t254 TYPE i.
        DATA(t255) = t2.
        t255->load( ).
        t254 = lines( t255->items ).
        t240 = t254.
      ELSE.
        DATA t256 TYPE abap_bool.
        DATA(t257) = t1.
        t256 = xsdbool( t257 IS BOUND AND t257 IS INSTANCE OF zcl_lnt_data_element ).
        IF t256 = abap_true.
          DATA(t258) = VALUE i( ).
          DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t260 TYPE REF TO zcl_lnt_data_element.
          DATA(t261) = t1.
          DATA t262 TYPE REF TO object.
          t262 = t261.
          t260 ?= t262.
          DATA t263 TYPE REF TO zif_lnt_file.
          DATA(t264) = t4.
          t263 = t264.
          t259 = me->run_data_element( i_obj_1ed0 = t260 i_file = t263 ).
          DATA t265 TYPE REF TO zcl_lnt_issue.
          CLEAR t265.
          DATA t266 TYPE REF TO object.
          CLEAR t266.
          DATA(t267) = VALUE i( ).
          DO.
            t259->load( ).
            IF t267 >= lines( t259->items ).
              EXIT.
            ENDIF.
            CLEAR t266.
            READ TABLE t259->items INDEX t267 + 1 INTO t266.
            t267 = t267 + 1.
            DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t268.
            CLEAR t265.
            IF t266 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t268 ?= t266.
              DATA t269 TYPE REF TO object.
              t269 = t268->as_ref( ).
              t265 ?= t269.
            ELSE.
              t265 ?= t266.
            ENDIF.
            DATA(t270) = t2.
            DATA(t271) = t265.
            t270->load( ).
            APPEND t271 TO t270->items.
            t270->save( ).
          ENDDO.
          DATA t272 TYPE i.
          DATA(t273) = t2.
          t273->load( ).
          t272 = lines( t273->items ).
          t258 = t272.
        ELSE.
          DATA t274 TYPE abap_bool.
          DATA(t275) = t1.
          t274 = xsdbool( t275 IS BOUND AND t275 IS INSTANCE OF zcl_lnt_domain ).
          IF t274 = abap_true.
            DATA(t276) = VALUE i( ).
            DATA t277 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t278 TYPE REF TO zcl_lnt_domain.
            DATA(t279) = t1.
            DATA t280 TYPE REF TO object.
            t280 = t279.
            t278 ?= t280.
            DATA t281 TYPE REF TO zif_lnt_file.
            DATA(t282) = t4.
            t281 = t282.
            t277 = me->run_domain( i_obj_1ed0 = t278 i_file = t281 ).
            DATA t283 TYPE REF TO zcl_lnt_issue.
            CLEAR t283.
            DATA t284 TYPE REF TO object.
            CLEAR t284.
            DATA(t285) = VALUE i( ).
            DO.
              t277->load( ).
              IF t285 >= lines( t277->items ).
                EXIT.
              ENDIF.
              CLEAR t284.
              READ TABLE t277->items INDEX t285 + 1 INTO t284.
              t285 = t285 + 1.
              DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t286.
              CLEAR t283.
              IF t284 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t286 ?= t284.
                DATA t287 TYPE REF TO object.
                t287 = t286->as_ref( ).
                t283 ?= t287.
              ELSE.
                t283 ?= t284.
              ENDIF.
              DATA(t288) = t2.
              DATA(t289) = t283.
              t288->load( ).
              APPEND t289 TO t288->items.
              t288->save( ).
            ENDDO.
            DATA t290 TYPE i.
            DATA(t291) = t2.
            t291->load( ).
            t290 = lines( t291->items ).
            t276 = t290.
          ELSE.
            DATA t292 TYPE abap_bool.
            DATA(t293) = t1.
            t292 = xsdbool( t293 IS BOUND AND t293 IS INSTANCE OF zcl_lnt_transaction ).
            IF t292 = abap_true.
              DATA(t294) = VALUE i( ).
              DATA t295 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t296 TYPE REF TO zcl_lnt_transaction.
              DATA(t297) = t1.
              DATA t298 TYPE REF TO object.
              t298 = t297.
              t296 ?= t298.
              DATA t299 TYPE REF TO zif_lnt_file.
              DATA(t300) = t4.
              t299 = t300.
              t295 = me->run_transaction( i_obj_1ed0 = t296 i_file = t299 ).
              DATA t301 TYPE REF TO zcl_lnt_issue.
              CLEAR t301.
              DATA t302 TYPE REF TO object.
              CLEAR t302.
              DATA(t303) = VALUE i( ).
              DO.
                t295->load( ).
                IF t303 >= lines( t295->items ).
                  EXIT.
                ENDIF.
                CLEAR t302.
                READ TABLE t295->items INDEX t303 + 1 INTO t302.
                t303 = t303 + 1.
                DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t304.
                CLEAR t301.
                IF t302 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t304 ?= t302.
                  DATA t305 TYPE REF TO object.
                  t305 = t304->as_ref( ).
                  t301 ?= t305.
                ELSE.
                  t301 ?= t302.
                ENDIF.
                DATA(t306) = t2.
                DATA(t307) = t301.
                t306->load( ).
                APPEND t307 TO t306->items.
                t306->save( ).
              ENDDO.
              DATA t308 TYPE i.
              DATA(t309) = t2.
              t309->load( ).
              t308 = lines( t309->items ).
              t294 = t308.
            ELSE.
              DATA t310 TYPE abap_bool.
              DATA(t311) = t1.
              t310 = xsdbool( t311 IS BOUND AND t311 IS INSTANCE OF zcl_lnt_ob_message_class ).
              IF t310 = abap_true.
                DATA(t312) = VALUE i( ).
                DATA t313 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA t314 TYPE REF TO zcl_lnt_ob_message_class.
                DATA(t315) = t1.
                DATA t316 TYPE REF TO object.
                t316 = t315.
                t314 ?= t316.
                DATA t317 TYPE REF TO zif_lnt_file.
                DATA(t318) = t4.
                t317 = t318.
                t313 = me->run_message_class( i_obj_1ed0 = t314 i_file = t317 ).
                DATA t319 TYPE REF TO zcl_lnt_issue.
                CLEAR t319.
                DATA t320 TYPE REF TO object.
                CLEAR t320.
                DATA(t321) = VALUE i( ).
                DO.
                  t313->load( ).
                  IF t321 >= lines( t313->items ).
                    EXIT.
                  ENDIF.
                  CLEAR t320.
                  READ TABLE t313->items INDEX t321 + 1 INTO t320.
                  t321 = t321 + 1.
                  DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t322.
                  CLEAR t319.
                  IF t320 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                    t322 ?= t320.
                    DATA t323 TYPE REF TO object.
                    t323 = t322->as_ref( ).
                    t319 ?= t323.
                  ELSE.
                    t319 ?= t320.
                  ENDIF.
                  DATA(t324) = t2.
                  DATA(t325) = t319.
                  t324->load( ).
                  APPEND t325 TO t324->items.
                  t324->save( ).
                ENDDO.
                DATA t326 TYPE i.
                DATA(t327) = t2.
                t327->load( ).
                t326 = lines( t327->items ).
                t312 = t326.
              ELSE.
                DATA t328 TYPE abap_bool.
                DATA(t329) = t1.
                t328 = xsdbool( t329 IS BOUND AND t329 IS INSTANCE OF zcl_lnt_table ).
                IF t328 = abap_true.
                  DATA(t330) = VALUE i( ).
                  DATA t331 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA t332 TYPE REF TO zcl_lnt_table.
                  DATA(t333) = t1.
                  DATA t334 TYPE REF TO object.
                  t334 = t333.
                  t332 ?= t334.
                  DATA t335 TYPE REF TO zif_lnt_file.
                  DATA(t336) = t4.
                  t335 = t336.
                  t331 = me->run_table( i_obj_1ed0 = t332 i_file = t335 ).
                  DATA t337 TYPE REF TO zcl_lnt_issue.
                  CLEAR t337.
                  DATA t338 TYPE REF TO object.
                  CLEAR t338.
                  DATA(t339) = VALUE i( ).
                  DO.
                    t331->load( ).
                    IF t339 >= lines( t331->items ).
                      EXIT.
                    ENDIF.
                    CLEAR t338.
                    READ TABLE t331->items INDEX t339 + 1 INTO t338.
                    t339 = t339 + 1.
                    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t340.
                    CLEAR t337.
                    IF t338 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                      t340 ?= t338.
                      DATA t341 TYPE REF TO object.
                      t341 = t340->as_ref( ).
                      t337 ?= t341.
                    ELSE.
                      t337 ?= t338.
                    ENDIF.
                    DATA(t342) = t2.
                    DATA(t343) = t337.
                    t342->load( ).
                    APPEND t343 TO t342->items.
                    t342->save( ).
                  ENDDO.
                  DATA t344 TYPE i.
                  DATA(t345) = t2.
                  t345->load( ).
                  t344 = lines( t345->items ).
                  t330 = t344.
                ELSE.
                  DATA t346 TYPE abap_bool.
                  DATA(t347) = t1.
                  t346 = xsdbool( t347 IS BOUND AND t347 IS INSTANCE OF zcl_lnt_lock_object ).
                  IF t346 = abap_true.
                    DATA(t348) = VALUE i( ).
                    DATA t349 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA t350 TYPE REF TO zcl_lnt_lock_object.
                    DATA(t351) = t1.
                    DATA t352 TYPE REF TO object.
                    t352 = t351.
                    t350 ?= t352.
                    DATA t353 TYPE REF TO zif_lnt_file.
                    DATA(t354) = t4.
                    t353 = t354.
                    t349 = me->run_lock_object( i_obj_1ed0 = t350 i_file = t353 ).
                    DATA t355 TYPE REF TO zcl_lnt_issue.
                    CLEAR t355.
                    DATA t356 TYPE REF TO object.
                    CLEAR t356.
                    DATA(t357) = VALUE i( ).
                    DO.
                      t349->load( ).
                      IF t357 >= lines( t349->items ).
                        EXIT.
                      ENDIF.
                      CLEAR t356.
                      READ TABLE t349->items INDEX t357 + 1 INTO t356.
                      t357 = t357 + 1.
                      DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t358.
                      CLEAR t355.
                      IF t356 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                        t358 ?= t356.
                        DATA t359 TYPE REF TO object.
                        t359 = t358->as_ref( ).
                        t355 ?= t359.
                      ELSE.
                        t355 ?= t356.
                      ENDIF.
                      DATA(t360) = t2.
                      DATA(t361) = t355.
                      t360->load( ).
                      APPEND t361 TO t360->items.
                      t360->save( ).
                    ENDDO.
                    DATA t362 TYPE i.
                    DATA(t363) = t2.
                    t363->load( ).
                    t362 = lines( t363->items ).
                    t348 = t362.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t364 TYPE abap_bool.
    DATA(t365) = t1.
    t364 = xsdbool( t365 IS BOUND AND t365 IS INSTANCE OF zcl_lnt_abap_object ).
    IF t364 = abap_true.
      DATA(t366) = VALUE i( ).
      DATA t367 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t368 TYPE REF TO zcl_lnt_abap_object.
      DATA(t369) = t1.
      DATA t370 TYPE REF TO object.
      t370 = t369.
      t368 ?= t370.
      DATA t371 TYPE REF TO zif_lnt_file.
      DATA(t372) = t4.
      t371 = t372.
      t367 = me->run_text_pool( i_obj_1ed0 = t368 i_file = t371 ).
      DATA t373 TYPE REF TO zcl_lnt_issue.
      CLEAR t373.
      DATA t374 TYPE REF TO object.
      CLEAR t374.
      DATA(t375) = VALUE i( ).
      DO.
        t367->load( ).
        IF t375 >= lines( t367->items ).
          EXIT.
        ENDIF.
        CLEAR t374.
        READ TABLE t367->items INDEX t375 + 1 INTO t374.
        t375 = t375 + 1.
        DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t376.
        CLEAR t373.
        IF t374 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t376 ?= t374.
          DATA t377 TYPE REF TO object.
          t377 = t376->as_ref( ).
          t373 ?= t377.
        ELSE.
          t373 ?= t374.
        ENDIF.
        DATA(t378) = t2.
        DATA(t379) = t373.
        t378->load( ).
        APPEND t379 TO t378->items.
        t378->save( ).
      ENDDO.
      DATA t380 TYPE i.
      DATA(t381) = t2.
      t381->load( ).
      t380 = lines( t381->items ).
      t366 = t380.
    ENDIF.
    DATA(t382) = t2.
    result = t382.

  ENDMETHOD.

  METHOD run_class.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_class.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = t7.
    t10->parse_xml( ).
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA t13 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA(t14) = t7.
    t13 = t14->parsed_xml.
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t12.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t20 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA(t21) = t12.
      t20 = t21.
      t19 = t20->name.
      t15 = t19.
    ENDIF.
    t11 = t15.
    t9 = t11.
    t6 = t9.
    t5 = t6.
    DATA(t22) = VALUE abap_bool( ).
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t24) = t5.
    t23 = t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    t25 = t26.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = t23.
    IF t28 IS INITIAL.
      t27 = abap_true.
    ELSEIF t28->has = abap_false.
      t27 = abap_true.
    ENDIF.
    t22 = t27.
    IF t22 = abap_true.
      DATA(t29) = t3.
      DATA t30 TYPE REF TO zcl_lnt_issue.
      CLEAR t30.
      DATA(t31) = t2.
      DATA(t32) = CONV f( 1 ).
      DATA(t33) = |Name undefined in XML|.
      DATA(t34) = VALUE string( ).
      DATA t35 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t35.
      DATA t36 TYPE string.
      DATA(t37) = |xml_consistency|.
      t36 = t37.
      DATA t38 TYPE string.
      DATA(t39) = |XML consistency|.
      t38 = t39.
      DATA t40 TYPE string.
      DATA(t41) = |Checks the consistency of main XML files|.
      t40 = t41.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t42.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t43.
      DATA(t44) = abap_true.
      IF t44 = abap_true.
        DATA(t45) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
        t45 = t45 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
        t45 = t45 && |ce table and field values\n* Transparent TABL objects have de|.
        t45 = t45 && |livery class and size category set\n* Lock parameter names in|.
        t45 = t45 && | ENQU objects are max 16 characters\n* Texts and translations|.
        t45 = t45 && | do not exceed maximum allowed length.|.
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
        DATA(t55) = |Naming|.
        t54->load( ).
        APPEND t55 TO t54->items.
        t54->save( ).
        DATA(t56) = t52.
        DATA(t57) = |Syntax|.
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
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t61.
      t60 = t61.
      DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t63.
      t62 = t63.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t65.
      t64 = t65.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t67.
      t66 = t67.
      t35 = NEW zcl_lnt_irule_metadata( i_key = t36 i_title = t38 i_short_description = t40 i_bad_example = t60 i_good_example = t62 i_extended_information = t42 i_tags = t48 i_pragma = t64 i_pseudo_comment = t66 ).
      CREATE OBJECT t35->zlnt_view_ownkeys_b0e8086400eb.
      t35->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t68 ).
      ENDIF.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t69 ).
      ENDIF.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t70 ).
      ENDIF.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t71 ).
      ENDIF.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t72 ).
      ENDIF.
      CREATE OBJECT t35->zlnt_json_ownkeys_70e5fd461788.
      t35->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t73) = |key|.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t74.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
      ENDIF.
      DATA(t75) = |title|.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t75 p1 = t76 ).
      ENDIF.
      DATA(t77) = |shortDescription|.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t78.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t77 p1 = t78 ).
      ENDIF.
      DATA(t79) = |extendedInformation|.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t79 p1 = t80 ).
      ENDIF.
      DATA(t81) = |tags|.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t82.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t81 p1 = t82 ).
      ENDIF.
      t34 = t35->key.
      DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t84) = me->conf.
      t83 = t84->zlnt_view_read_sr_15c06369f827( ).
      t30 = zcl_lnt_issue=>at_row( i_file = t31 i_row = t32 i_message_26cb = t33 i_key = t34 i_severity = t83 ).
      t29->load( ).
      APPEND t30 TO t29->items.
      t29->save( ).
    ELSE.
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = VALUE abap_bool( ).
      DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t87.
      DATA t88 TYPE REF TO zcl_lnt_class.
      DATA(t89) = t1.
      t88 = t89.
      DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t90.
      DATA(t91) = t88.
      t91->parse_xml( ).
      DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t92.
      DATA t93 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA t94 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA(t95) = t88.
      t94 = t95->parsed_xml.
      t93 = t94.
      DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t96.
      DATA(t97) = VALUE abap_bool( ).
      DATA(t98) = t93.
      IF t98 IS INITIAL.
        t97 = abap_true.
      ENDIF.
      IF t97 = abap_true.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t99.
        t96 = t99.
      ELSE.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t101 TYPE REF TO zcl_lnt_shape_e272b380.
        DATA(t102) = t93.
        t101 = t102.
        t100 = t101->description.
        t96 = t100.
      ENDIF.
      t92 = t96.
      t90 = t92.
      t87 = t90.
      IF t87 IS BOUND.
        IF t87->has = abap_true.
          t86 = xsdbool( strlen( t87->value ) > 0 ).
        ENDIF.
      ENDIF.
      t85 = t86.
      IF t86 = abap_true.
        DATA(t103) = VALUE abap_bool( ).
        DATA(t104) = VALUE i( ).
        DATA(t105) = VALUE string( ).
        DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t106.
        DATA t107 TYPE REF TO zcl_lnt_class.
        DATA(t108) = t1.
        t107 = t108.
        DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t109.
        DATA(t110) = t107.
        t110->parse_xml( ).
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t111.
        DATA t112 TYPE REF TO zcl_lnt_shape_e272b380.
        DATA t113 TYPE REF TO zcl_lnt_shape_e272b380.
        DATA(t114) = t107.
        t113 = t114->parsed_xml.
        t112 = t113.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t115.
        DATA(t116) = VALUE abap_bool( ).
        DATA(t117) = t112.
        IF t117 IS INITIAL.
          t116 = abap_true.
        ENDIF.
        IF t116 = abap_true.
          DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t118.
          t115 = t118.
        ELSE.
          DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t120 TYPE REF TO zcl_lnt_shape_e272b380.
          DATA(t121) = t112.
          t120 = t121.
          t119 = t120->description.
          t115 = t119.
        ENDIF.
        t111 = t115.
        t109 = t111.
        t106 = t109.
        t105 = t106->value.
        DATA(t122) = strlen( t105 ).
        t104 = t122.
        DATA(t123) = 60.
        t103 = xsdbool( t104 > t123 ).
        t85 = t103.
      ENDIF.
      IF t85 = abap_true.
        DATA(t124) = t3.
        DATA t125 TYPE REF TO zcl_lnt_issue.
        CLEAR t125.
        DATA(t126) = t2.
        DATA(t127) = CONV f( 1 ).
        DATA(t128) = |Description too long|.
        DATA(t129) = VALUE string( ).
        DATA t130 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t130.
        DATA t131 TYPE string.
        DATA(t132) = |xml_consistency|.
        t131 = t132.
        DATA t133 TYPE string.
        DATA(t134) = |XML consistency|.
        t133 = t134.
        DATA t135 TYPE string.
        DATA(t136) = |Checks the consistency of main XML files|.
        t135 = t136.
        DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t137.
        DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t138.
        DATA(t139) = abap_true.
        IF t139 = abap_true.
          DATA(t140) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t140 = t140 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t140 = t140 && |ce table and field values\n* Transparent TABL objects have de|.
          t140 = t140 && |livery class and size category set\n* Lock parameter names in|.
          t140 = t140 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t140 = t140 && | do not exceed maximum allowed length.|.
          DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t141->has = abap_true.
          t141->value = t140.
          t138 = t141.
        ELSE.
          DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t142.
          t138 = t142.
        ENDIF.
        t137 = t138.
        DATA t143 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t143.
        DATA t144 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t144.
        DATA(t145) = abap_true.
        IF t145 = abap_true.
          DATA t146 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t147 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t148 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t148.
          t147 = t148.
          DATA(t149) = t147.
          DATA(t150) = |Naming|.
          t149->load( ).
          APPEND t150 TO t149->items.
          t149->save( ).
          DATA(t151) = t147.
          DATA(t152) = |Syntax|.
          t151->load( ).
          APPEND t152 TO t151->items.
          t151->save( ).
          DATA(t153) = t147.
          t146 = t153.
          t144 = t146.
        ELSE.
          DATA t154 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t154.
          t144 = t154.
        ENDIF.
        t143 = t144.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t156.
        t155 = t156.
        DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t158.
        t157 = t158.
        DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t160.
        t159 = t160.
        DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t162.
        t161 = t162.
        t130 = NEW zcl_lnt_irule_metadata( i_key = t131 i_title = t133 i_short_description = t135 i_bad_example = t155 i_good_example = t157 i_extended_information = t137 i_tags = t143 i_pragma = t159 i_pseudo_comment = t161 ).
        CREATE OBJECT t130->zlnt_view_ownkeys_b0e8086400eb.
        t130->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t163 ).
        ENDIF.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t164 ).
        ENDIF.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t165 ).
        ENDIF.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t166.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t166 ).
        ENDIF.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t167 ).
        ENDIF.
        CREATE OBJECT t130->zlnt_json_ownkeys_70e5fd461788.
        t130->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t168) = |key|.
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t169.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
        ENDIF.
        DATA(t170) = |title|.
        DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t171.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
        ENDIF.
        DATA(t172) = |shortDescription|.
        DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t173.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
        ENDIF.
        DATA(t174) = |extendedInformation|.
        DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t175.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
        ENDIF.
        DATA(t176) = |tags|.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
        ENDIF.
        t129 = t130->key.
        DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t179) = me->conf.
        t178 = t179->zlnt_view_read_sr_15c06369f827( ).
        t125 = zcl_lnt_issue=>at_row( i_file = t126 i_row = t127 i_message_26cb = t128 i_key = t129 i_severity = t178 ).
        t124->load( ).
        APPEND t125 TO t124->items.
        t124->save( ).
      ELSE.
        DATA(t180) = VALUE abap_bool( ).
        DATA t181 TYPE string.
        DATA(t182) = t5.
        t181 = t182->value.
        DATA t183 TYPE string.
        DATA t184 TYPE string.
        DATA t185 TYPE REF TO zcl_lnt_abstract_object.
        DATA(t186) = t1.
        t185 = t186.
        DATA t187 TYPE string.
        DATA(t188) = t185.
        t187 = t188->name.
        t184 = t187.
        DATA(t189) = strlen( t184 ).
        t183 = t184.
        IF t183 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t183 TO UPPER CASE.
        ELSE.
          t183 = zlnt_runtime_uppe_91169605024d=>full( t183 ).
        ENDIF.
        t180 = xsdbool( t181 <> t183 ).
        IF t180 = abap_true.
          DATA(t190) = t3.
          DATA t191 TYPE REF TO zcl_lnt_issue.
          CLEAR t191.
          DATA(t192) = t2.
          DATA(t193) = CONV f( 1 ).
          DATA(t194) = |Name in XML does not match object|.
          DATA(t195) = VALUE string( ).
          DATA t196 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t196.
          DATA t197 TYPE string.
          DATA(t198) = |xml_consistency|.
          t197 = t198.
          DATA t199 TYPE string.
          DATA(t200) = |XML consistency|.
          t199 = t200.
          DATA t201 TYPE string.
          DATA(t202) = |Checks the consistency of main XML files|.
          t201 = t202.
          DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t203.
          DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t204.
          DATA(t205) = abap_true.
          IF t205 = abap_true.
            DATA(t206) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
            t206 = t206 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
            t206 = t206 && |ce table and field values\n* Transparent TABL objects have de|.
            t206 = t206 && |livery class and size category set\n* Lock parameter names in|.
            t206 = t206 && | ENQU objects are max 16 characters\n* Texts and translations|.
            t206 = t206 && | do not exceed maximum allowed length.|.
            DATA(t207) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t207->has = abap_true.
            t207->value = t206.
            t204 = t207.
          ELSE.
            DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t208.
            t204 = t208.
          ENDIF.
          t203 = t204.
          DATA t209 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t209.
          DATA t210 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t210.
          DATA(t211) = abap_true.
          IF t211 = abap_true.
            DATA t212 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t213 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t214 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t214.
            t213 = t214.
            DATA(t215) = t213.
            DATA(t216) = |Naming|.
            t215->load( ).
            APPEND t216 TO t215->items.
            t215->save( ).
            DATA(t217) = t213.
            DATA(t218) = |Syntax|.
            t217->load( ).
            APPEND t218 TO t217->items.
            t217->save( ).
            DATA(t219) = t213.
            t212 = t219.
            t210 = t212.
          ELSE.
            DATA t220 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t220.
            t210 = t220.
          ENDIF.
          t209 = t210.
          DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t222.
          t221 = t222.
          DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t224.
          t223 = t224.
          DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t226.
          t225 = t226.
          DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t228.
          t227 = t228.
          t196 = NEW zcl_lnt_irule_metadata( i_key = t197 i_title = t199 i_short_description = t201 i_bad_example = t221 i_good_example = t223 i_extended_information = t203 i_tags = t209 i_pragma = t225 i_pseudo_comment = t227 ).
          CREATE OBJECT t196->zlnt_view_ownkeys_b0e8086400eb.
          t196->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t229.
          IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t229 ).
          ENDIF.
          DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t230.
          IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t230 ).
          ENDIF.
          DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t231.
          IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t231 ).
          ENDIF.
          DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t232.
          IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t232 ).
          ENDIF.
          DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t233.
          IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t233 ).
          ENDIF.
          CREATE OBJECT t196->zlnt_json_ownkeys_70e5fd461788.
          t196->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t234) = |key|.
          DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t235.
          IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t234 p1 = t235 ).
          ENDIF.
          DATA(t236) = |title|.
          DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t237.
          IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t236 p1 = t237 ).
          ENDIF.
          DATA(t238) = |shortDescription|.
          DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t239.
          IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t238 p1 = t239 ).
          ENDIF.
          DATA(t240) = |extendedInformation|.
          DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t241.
          IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t240 p1 = t241 ).
          ENDIF.
          DATA(t242) = |tags|.
          DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t243.
          IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t242 p1 = t243 ).
          ENDIF.
          t195 = t196->key.
          DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t245) = me->conf.
          t244 = t245->zlnt_view_read_sr_15c06369f827( ).
          t191 = zcl_lnt_issue=>at_row( i_file = t192 i_row = t193 i_message_26cb = t194 i_key = t195 i_severity = t244 ).
          t190->load( ).
          APPEND t191 TO t190->items.
          t190->save( ).
        ELSE.
          DATA(t246) = VALUE abap_bool( ).
          DATA(t247) = VALUE abap_bool( ).
          DATA t248 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t248.
          DATA t249 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t249.
          DATA t250 TYPE REF TO zcl_lnt_abap_file.
          DATA t251 TYPE REF TO zcl_lnt_abap_file.
          DATA(t252) = t1.
          t251 = t252->get_main_abap_file( ).
          t250 = t251.
          DATA t253 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t253.
          DATA(t254) = VALUE abap_bool( ).
          DATA(t255) = t250.
          IF t255 IS INITIAL.
            t254 = abap_true.
          ENDIF.
          IF t254 = abap_true.
            DATA t256 TYPE REF TO zcl_lnt_structure_node.
            CLEAR t256.
            t253 = t256.
          ELSE.
            DATA t257 TYPE REF TO zcl_lnt_structure_node.
            DATA t258 TYPE REF TO zcl_lnt_abap_file.
            DATA t259 TYPE REF TO zcl_lnt_abap_file.
            DATA(t260) = t250.
            t259 = t260.
            t258 = t259.
            DATA t261 TYPE REF TO zcl_lnt_structure_node.
            DATA(t262) = t258.
            t261 = t262->structure.
            t257 = t261.
            t253 = t257.
          ENDIF.
          t249 = t253.
          t248 = t249.
          DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t264.
          t263 = t264.
          DATA(t265) = VALUE abap_bool( ).
          DATA(t266) = VALUE abap_bool( ).
          DATA(t267) = t248.
          IF t267 IS INITIAL.
            t266 = abap_true.
          ENDIF.
          t265 = xsdbool( t266 = abap_false ).
          t247 = t265.
          t246 = t247.
          IF t247 = abap_true.
            DATA(t268) = VALUE abap_bool( ).
            DATA t269 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t269.
            DATA t270 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t270.
            DATA t271 TYPE REF TO zcl_lnt_class.
            DATA(t272) = t1.
            t271 = t272.
            DATA t273 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t273.
            DATA t274 TYPE REF TO zif_lnt_abap_file_information.
            CLEAR t274.
            DATA t275 TYPE REF TO zif_lnt_abap_file_information.
            CLEAR t275.
            DATA t276 TYPE REF TO zcl_lnt_abap_file.
            DATA t277 TYPE REF TO zcl_lnt_abap_file.
            DATA(t278) = t271.
            t277 = t278->get_main_abap_file( ).
            t276 = t277.
            DATA t279 TYPE REF TO zif_lnt_abap_file_information.
            CLEAR t279.
            DATA(t280) = VALUE abap_bool( ).
            DATA(t281) = t276.
            IF t281 IS INITIAL.
              t280 = abap_true.
            ENDIF.
            IF t280 = abap_true.
              DATA t282 TYPE REF TO zif_lnt_abap_file_information.
              CLEAR t282.
              t279 = t282.
            ELSE.
              DATA t283 TYPE REF TO zif_lnt_abap_file_information.
              DATA t284 TYPE REF TO zcl_lnt_abap_file.
              DATA t285 TYPE REF TO zcl_lnt_abap_file.
              DATA(t286) = t276.
              t285 = t286.
              t284 = t285.
              DATA t287 TYPE REF TO zif_lnt_abap_file_information.
              DATA(t288) = t284.
              t287 = t288->info.
              t283 = t287.
              t279 = t283.
            ENDIF.
            t275 = t279.
            t274 = t275.
            DATA t289 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t289.
            DATA(t290) = VALUE abap_bool( ).
            DATA(t291) = t274.
            IF t291 IS INITIAL.
              t290 = abap_true.
            ENDIF.
            IF t290 = abap_true.
              DATA t292 TYPE REF TO zcl_lnt_info_class_definition.
              CLEAR t292.
              t289 = t292.
            ELSE.
              DATA t293 TYPE REF TO zcl_lnt_info_class_definition.
              DATA t294 TYPE REF TO zif_lnt_abap_file_information.
              DATA(t295) = t274.
              t294 = t295.
              DATA t296 TYPE string.
              DATA t297 TYPE REF TO zcl_lnt_abstract_object.
              DATA(t298) = t271.
              t297 = t298.
              DATA t299 TYPE string.
              DATA(t300) = t297.
              t299 = t300->name.
              t296 = t299.
              t293 = t294->get_class_definition_by_name( i_name = t296 ).
              t289 = t293.
            ENDIF.
            t273 = t289.
            t270 = t273.
            t269 = t270.
            DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t302.
            t301 = t302.
            DATA(t303) = VALUE abap_bool( ).
            DATA(t304) = t269.
            IF t304 IS INITIAL.
              t303 = abap_true.
            ENDIF.
            t268 = t303.
            t246 = t268.
          ENDIF.
          IF t246 = abap_true.
            DATA(t305) = t3.
            DATA t306 TYPE REF TO zcl_lnt_issue.
            CLEAR t306.
            DATA(t307) = t2.
            DATA(t308) = CONV f( 1 ).
            DATA(t309) = |Class matching XML name not found in ABAP file|.
            DATA(t310) = VALUE string( ).
            DATA t311 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t311.
            DATA t312 TYPE string.
            DATA(t313) = |xml_consistency|.
            t312 = t313.
            DATA t314 TYPE string.
            DATA(t315) = |XML consistency|.
            t314 = t315.
            DATA t316 TYPE string.
            DATA(t317) = |Checks the consistency of main XML files|.
            t316 = t317.
            DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t318.
            DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t319.
            DATA(t320) = abap_true.
            IF t320 = abap_true.
              DATA(t321) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
              t321 = t321 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
              t321 = t321 && |ce table and field values\n* Transparent TABL objects have de|.
              t321 = t321 && |livery class and size category set\n* Lock parameter names in|.
              t321 = t321 && | ENQU objects are max 16 characters\n* Texts and translations|.
              t321 = t321 && | do not exceed maximum allowed length.|.
              DATA(t322) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t322->has = abap_true.
              t322->value = t321.
              t319 = t322.
            ELSE.
              DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t323.
              t319 = t323.
            ENDIF.
            t318 = t319.
            DATA t324 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t324.
            DATA t325 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t325.
            DATA(t326) = abap_true.
            IF t326 = abap_true.
              DATA t327 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t328 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t329 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t329.
              t328 = t329.
              DATA(t330) = t328.
              DATA(t331) = |Naming|.
              t330->load( ).
              APPEND t331 TO t330->items.
              t330->save( ).
              DATA(t332) = t328.
              DATA(t333) = |Syntax|.
              t332->load( ).
              APPEND t333 TO t332->items.
              t332->save( ).
              DATA(t334) = t328.
              t327 = t334.
              t325 = t327.
            ELSE.
              DATA t335 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t335.
              t325 = t335.
            ENDIF.
            t324 = t325.
            DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t337.
            t336 = t337.
            DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t339.
            t338 = t339.
            DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t341.
            t340 = t341.
            DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t343.
            t342 = t343.
            t311 = NEW zcl_lnt_irule_metadata( i_key = t312 i_title = t314 i_short_description = t316 i_bad_example = t336 i_good_example = t338 i_extended_information = t318 i_tags = t324 i_pragma = t340 i_pseudo_comment = t342 ).
            CREATE OBJECT t311->zlnt_view_ownkeys_b0e8086400eb.
            t311->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t344.
            IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t344 ).
            ENDIF.
            DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t345.
            IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t345 ).
            ENDIF.
            DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t346.
            IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t346 ).
            ENDIF.
            DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t347.
            IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t347 ).
            ENDIF.
            DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t348.
            IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t348 ).
            ENDIF.
            CREATE OBJECT t311->zlnt_json_ownkeys_70e5fd461788.
            t311->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t349) = |key|.
            DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t350.
            IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = t349 p1 = t350 ).
            ENDIF.
            DATA(t351) = |title|.
            DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t352.
            IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = t351 p1 = t352 ).
            ENDIF.
            DATA(t353) = |shortDescription|.
            DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t354.
            IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = t353 p1 = t354 ).
            ENDIF.
            DATA(t355) = |extendedInformation|.
            DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t356.
            IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = t355 p1 = t356 ).
            ENDIF.
            DATA(t357) = |tags|.
            DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t358.
            IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = t357 p1 = t358 ).
            ENDIF.
            t310 = t311->key.
            DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t360) = me->conf.
            t359 = t360->zlnt_view_read_sr_15c06369f827( ).
            t306 = zcl_lnt_issue=>at_row( i_file = t307 i_row = t308 i_message_26cb = t309 i_key = t310 i_severity = t359 ).
            t305->load( ).
            APPEND t306 TO t305->items.
            t305->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t361) = t3.
    result = t361.

  ENDMETHOD.

  METHOD run_text_pool.
    CONSTANTS range_parse_safe_prefix TYPE int8 VALUE '900719925474099'.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    CLEAR t7.
    DATA(t8) = t1.
    t7 = t8->get_text_elements( ).
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t10.
    CREATE OBJECT t10.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t12.
    CREATE OBJECT t12.
    t11 = t12.
    DATA(t13) = VALUE i( ).
    DATA(t14) = 0.
    t13 = t14.
    DATA(t15) = VALUE i( ).
    DATA(t16) = 0.
    t15 = t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = abap_false.
    t17 = t18.
    DATA(t19) = VALUE i( ).
    DATA(t20) = 0.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t21.
    DATA(t22) = t6.
    t21 = t22->keys( ).
    DATA(t23) = VALUE string( ).
    t21->dense( ).
    DATA(t24) = VALUE i( ).
    DO.
      t21->load( ).
      IF t24 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t21->items INDEX t24 + 1 INTO t23.
      IF t21->has( t24 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t24 = t24 + 1.
      DATA(t25) = VALUE i( ).
      DATA(t26) = t23.
      DATA(t27) = strlen( t26 ).
      t25 = t27.
      t13 = t25.
      DATA(t28) = 0.
      t15 = t28.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = t13.
      DATA(t33) = 0.
      t31 = xsdbool( t32 > t33 ).
      t30 = t31.
      IF t31 = abap_true.
        DATA(t34) = VALUE abap_bool( ).
        DATA(t35) = t13.
        DATA(t36) = 10.
        t34 = xsdbool( t35 <= t36 ).
        t30 = t34.
      ENDIF.
      t29 = t30.
      IF t30 = abap_true.
        DATA(t37) = VALUE abap_bool( ).
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = t13.
        DATA(t40) = 1.
        t38 = xsdbool( t39 = t40 ).
        t37 = t38.
        IF t38 = abap_false.
          DATA(t41) = VALUE abap_bool( ).
          DATA(t42) = VALUE string( ).
          DATA(t43) = t23.
          DATA(t44) = 0.
          DATA(t45) = strlen( t43 ).
          IF t44 < 0 OR t44 >= t45.
            CLEAR t42.
          ELSE.
            t42 = t43+t44(1).
          ENDIF.
          DATA(t46) = |0|.
          t41 = xsdbool( t42 <> t46 ).
          t37 = t41.
        ENDIF.
        t29 = t37.
      ENDIF.
      t17 = t29.
      DO.
        DATA(t47) = VALUE abap_bool( ).
        DATA(t48) = t17.
        t47 = t48.
        IF t48 = abap_true.
          DATA(t49) = VALUE abap_bool( ).
          DATA(t50) = t15.
          DATA(t51) = t13.
          t49 = xsdbool( t50 < t51 ).
          t47 = t49.
        ENDIF.
        IF t47 = abap_false.
          EXIT.
        ENDIF.
        DATA(t52) = VALUE i( ).
        DATA(t53) = t23.
        DATA(t54) = t15.
        DATA(t55) = strlen( t53 ).
        IF t54 < 0 OR t54 >= t55.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t56) = CONV string( t53+t54(1) ).
        DATA t57 TYPE c LENGTH 1.
        CLEAR t57.
        DATA(t58) = VALUE xstring( ).
        DATA t59 TYPE x LENGTH 1.
        CLEAR t59.
        DATA t60 TYPE x LENGTH 1.
        CLEAR t60.
        DATA(t61) = VALUE i( ).
        t57 = t56.
        t52 = cl_abap_conv_out_ce=>uccpi( t57 ).
        IF t52 >= 255.
          IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
            zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t56 IMPORTING buffer = t58 ).
          t59 = t58(1).
          t60 = t58+1(1).
          t52 = t59.
          t61 = t60.
          t52 = t52 + t61 * 256.
        ENDIF.
        t19 = t52.
        DATA(t62) = VALUE abap_bool( ).
        DATA(t63) = VALUE abap_bool( ).
        DATA(t64) = t19.
        DATA(t65) = 48.
        t63 = xsdbool( t64 >= t65 ).
        t62 = t63.
        IF t63 = abap_true.
          DATA(t66) = VALUE abap_bool( ).
          DATA(t67) = t19.
          DATA(t68) = 57.
          t66 = xsdbool( t67 <= t68 ).
          t62 = t66.
        ENDIF.
        t17 = t62.
        DATA(t69) = VALUE i( ).
        DATA(t70) = t15.
        DATA(t71) = 1.
        t69 = t70 + t71.
        t15 = t69.
      ENDDO.
      DATA(t72) = VALUE abap_bool( ).
      DATA(t73) = t17.
      t72 = t73.
      IF t73 = abap_true.
        DATA(t74) = VALUE abap_bool( ).
        DATA(t75) = t13.
        DATA(t76) = 10.
        t74 = xsdbool( t75 = t76 ).
        t72 = t74.
      ENDIF.
      IF t72 = abap_true.
        DATA(t77) = VALUE abap_bool( ).
        DATA(t78) = VALUE i( ).
        DATA(t79) = t23.
        DATA(t80) = |4294967294|.
        t78 = zlnt_runtime_orde_654b9c3be2c1=>rule_key( p0 = t79 p1 = t80 ).
        DATA(t81) = 0.
        t77 = xsdbool( t78 <= t81 ).
        t17 = t77.
      ENDIF.
      DATA(t82) = t17.
      IF t82 = abap_true.
        DATA(t83) = t9.
        DATA(t84) = t23.
        t83->load( ).
        APPEND t84 TO t83->items.
        t83->save( ).
      ELSE.
        DATA(t85) = t11.
        DATA(t86) = t23.
        t85->load( ).
        APPEND t86 TO t85->items.
        t85->save( ).
      ENDIF.
    ENDDO.
    DATA t87 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t90.
    DATA(t91) = t9.
    t90 = t91.
    DATA(t92) = VALUE i( ).
    DATA(t93) = VALUE i( ).
    DATA(t94) = t90.
    t94->load( ).
    t93 = lines( t94->items ).
    t92 = t93.
    DATA(t95) = VALUE i( ).
    DATA(t96) = 1.
    t95 = t96.
    DO.
      DATA(t97) = VALUE abap_bool( ).
      DATA(t98) = t95.
      DATA(t99) = t92.
      t97 = xsdbool( t98 < t99 ).
      IF t97 = abap_false.
        EXIT.
      ENDIF.
      DATA(t100) = VALUE string( ).
      DATA(t101) = VALUE string( ).
      DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t102.
      DATA(t103) = t90.
      DATA(t104) = t95.
      t102 = t103->get( p0 = t104 ).
      t101 = t102->value.
      t100 = t101.
      DATA(t105) = VALUE i( ).
      DATA(t106) = t95.
      t105 = t106.
      DO.
        DATA(t107) = VALUE abap_bool( ).
        DATA(t108) = t105.
        DATA(t109) = 0.
        t107 = xsdbool( t108 > t109 ).
        IF t107 = abap_false.
          EXIT.
        ENDIF.
        DATA(t110) = VALUE string( ).
        DATA(t111) = VALUE string( ).
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        DATA(t113) = t90.
        DATA(t114) = VALUE i( ).
        DATA(t115) = t105.
        DATA(t116) = 1.
        t114 = t115 - t116.
        t112 = t113->get( p0 = t114 ).
        t111 = t112->value.
        t110 = t111.
        DATA(t117) = VALUE abap_bool( ).
        DATA(t118) = VALUE f( ).
        DATA(t119) = VALUE abap_bool( ).
        DATA(t120) = VALUE i( ).
        DATA(t121) = t110.
        DATA(t122) = strlen( t121 ).
        t120 = t122.
        DATA(t123) = VALUE i( ).
        DATA(t124) = t100.
        DATA(t125) = strlen( t124 ).
        t123 = t125.
        t119 = xsdbool( t120 <> t123 ).
        IF t119 = abap_true.
          DATA(t126) = VALUE f( ).
          DATA(t127) = VALUE i( ).
          DATA(t128) = VALUE i( ).
          DATA(t129) = t110.
          DATA(t130) = strlen( t129 ).
          t128 = t130.
          DATA(t131) = VALUE i( ).
          DATA(t132) = t100.
          DATA(t133) = strlen( t132 ).
          t131 = t133.
          t127 = t128 - t131.
          t126 = t127.
          t118 = t126.
        ELSE.
          DATA(t134) = VALUE f( ).
          DATA(t135) = VALUE i( ).
          DATA(t136) = t110.
          DATA(t137) = t100.
          t135 = zlnt_runtime_orde_654b9c3be2c1=>rule_key( p0 = t136 p1 = t137 ).
          t134 = t135.
          t118 = t134.
        ENDIF.
        DATA(t138) = CONV f( 0 ).
        t117 = xsdbool( t118 <= t138 ).
        IF t117 = abap_true.
          EXIT.
        ENDIF.
        DATA(t139) = t90.
        DATA(t140) = t105.
        DATA(t141) = t110.
        t139->put( p0 = t140 p1 = t141 ).
        DATA(t142) = VALUE i( ).
        DATA(t143) = t105.
        DATA(t144) = 1.
        t142 = t143 - t144.
        t105 = t142.
      ENDDO.
      DATA(t145) = t90.
      DATA(t146) = t105.
      DATA(t147) = t100.
      t145->put( p0 = t146 p1 = t147 ).
      DATA(t148) = VALUE i( ).
      DATA(t149) = t95.
      DATA(t150) = 1.
      t148 = t149 + t150.
      t95 = t148.
    ENDDO.
    DATA(t151) = t90.
    t89 = t151.
    DATA(t152) = t11.
    t88 = t89->concat( p0 = t152 ).
    t87 = t88.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t153.
    DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t154.
    CREATE OBJECT t154.
    t153 = t154.
    DATA(t155) = t87.
    DATA(t156) = VALUE string( ).
    t155->dense( ).
    DATA(t157) = VALUE i( ).
    DO.
      t155->load( ).
      IF t157 >= lines( t155->items ).
        EXIT.
      ENDIF.
      CLEAR t156.
      READ TABLE t155->items INDEX t157 + 1 INTO t156.
      IF t155->has( t157 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t157 = t157 + 1.
      DATA(t158) = t153.
      DATA t159 TYPE REF TO zcl_lnt_tuple_a5e994d8.
      CLEAR t159.
      DATA(t160) = t156.
      DATA t161 TYPE REF TO zcl_lnt_shape_015c050b.
      CLEAR t161.
      DATA t162 TYPE REF TO zcl_lnt_shape_015c050b.
      CLEAR t162.
      DATA(t163) = t6.
      DATA(t164) = t156.
      t162 = t163->get( p0 = t164 ).
      t161 = t162.
      t159 = NEW zcl_lnt_tuple_a5e994d8( i_f0 = t160 i_f1 = t161 ).
      t158->load( ).
      APPEND t159 TO t158->items.
      t158->save( ).
    ENDDO.
    DATA(t165) = t153.
    t5 = t165.
    DATA t166 TYPE REF TO zcl_lnt_tuple_a5e994d8.
    CLEAR t166.
    DATA t167 TYPE REF TO object.
    CLEAR t167.
    DATA(t168) = VALUE i( ).
    DO.
      t5->load( ).
      IF t168 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t167.
      READ TABLE t5->items INDEX t168 + 1 INTO t167.
      t168 = t168 + 1.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t169.
      CLEAR t166.
      IF t167 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t169 ?= t167.
        DATA t170 TYPE REF TO object.
        CLEAR t170.
        t170 = t169->as_ref( ).
        t166 ?= t170.
      ELSE.
        t166 ?= t167.
      ENDIF.
      DATA(t171) = VALUE string( ).
      DATA(t172) = VALUE string( ).
      DATA(t173) = t166.
      t172 = t173->f0.
      t171 = t172.
      DATA t174 TYPE REF TO zcl_lnt_shape_015c050b.
      CLEAR t174.
      DATA t175 TYPE REF TO zcl_lnt_shape_015c050b.
      CLEAR t175.
      DATA(t176) = t166.
      t175 = t176->f1.
      t174 = t175.
      DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t177.
      DATA(t178) = t3.
      t177 = t178.
      DATA t179 TYPE REF TO zcl_lnt_issue.
      CLEAR t179.
      DATA t180 TYPE REF TO zcl_lnt_issue.
      CLEAR t180.
      DATA t181 TYPE REF TO zif_lnt_file.
      CLEAR t181.
      DATA(t182) = t2.
      t181 = t182.
      DATA(t183) = VALUE string( ).
      DATA(t184) = VALUE string( ).
      DATA(t185) = VALUE string( ).
      DATA(t186) = |ENTRY[|.
      DATA(t187) = t171.
      DATA(t188) = strlen( t186 ).
      t185 = |{ t186 }{ t187 }|.
      DATA(t189) = |]|.
      DATA(t190) = strlen( t185 ).
      t184 = |{ t185 }{ t189 }|.
      t183 = t184.
      DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t191.
      DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t192.
      DATA(t193) = abap_true.
      IF t193 = abap_true.
        DATA(t194) = VALUE string( ).
        DATA(t195) = t174.
        t194 = t195->entry.
        DATA(t196) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t196->has = abap_true.
        t196->value = t194.
        t192 = t196.
      ELSE.
        DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t197.
        t192 = t197.
      ENDIF.
      t191 = t192.
      DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t198.
      DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t199.
      DATA t200 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t200.
      DATA(t201) = t174.
      t200 = t201->max_length.
      CLEAR t199.
      IF t200 IS BOUND AND t200->has = abap_true.
        CLEAR t199.
        CREATE OBJECT t199.
        t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
        t199->nval = t200->value.
        t199->number_special = t200->number_special.
      ENDIF.
      t198 = t199.
      DATA t202 TYPE REF TO zcl_lnt_issue.
      CLEAR t202.
      DATA(t203) = VALUE abap_bool( ).
      DATA(t204) = VALUE abap_bool( ).
      DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t205.
      DATA(t206) = t191.
      t205 = t206.
      DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t207.
      DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t208.
      t207 = t208.
      DATA(t209) = VALUE abap_bool( ).
      DATA(t210) = t205.
      IF t210 IS INITIAL.
        t209 = abap_true.
      ELSEIF t210->has = abap_false.
        t209 = abap_true.
      ENDIF.
      t204 = t209.
      t203 = t204.
      IF t204 = abap_false.
        DATA(t211) = VALUE abap_bool( ).
        DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t212.
        DATA(t213) = t198.
        t212 = t213.
        DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t214.
        DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t215.
        t214 = t215.
        DATA(t216) = VALUE abap_bool( ).
        DATA(t217) = t212.
        IF t217 IS INITIAL.
          t216 = abap_true.
        ENDIF.
        t211 = t216.
        t203 = t211.
      ENDIF.
      IF t203 = abap_true.
        DATA t218 TYPE REF TO zcl_lnt_issue.
        CLEAR t218.
        t202 = t218.
      ELSE.
        DATA t219 TYPE REF TO zcl_lnt_issue.
        CLEAR t219.
        DATA(t220) = VALUE f( ).
        DATA(t221) = VALUE f( ).
        DATA(t222) = VALUE abap_bool( ).
        DATA(t223) = VALUE string( ).
        DATA(t224) = t198.
        IF t224 IS BOUND.
          t223 = t224->type_of( ).
          IF t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t224->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t223 = `function`.
          ENDIF.
        ELSE.
          t223 = `undefined`.
        ENDIF.
        DATA(t225) = |number|.
        t222 = xsdbool( t223 = t225 ).
        IF t222 = abap_true.
          DATA(t226) = VALUE f( ).
          DATA(t227) = t198.
          t226 = t227->as_number( ).
          t221 = t226.
        ELSE.
          DATA(t228) = VALUE f( ).
          DATA(t229) = VALUE string( ).
          DATA(t230) = t198.
          t229 = t230->as_string( ).
          DATA(t231) = VALUE i( ).
          DATA(t232) = VALUE i( ).
          DATA(t233) = VALUE string( ).
          DATA(t234) = VALUE abap_bool( ).
          DATA(t235) = VALUE abap_bool( ).
          DATA(t236) = VALUE int8( ).
          DATA(t237) = VALUE i( ).
          t231 = 0.
          t236 = 0.
          t234 = abap_false.
          t235 = abap_false.
          t232 = strlen( t229 ).
          DATA(t238) = VALUE i( ).
          DATA(t239) = VALUE i( ).
          DATA(t240) = VALUE string( ).
          WHILE t231 < t232.
            t239 = t231.
            t240 = t229+t239(1).
            DATA t241 TYPE c LENGTH 1.
            CLEAR t241.
            DATA(t242) = VALUE xstring( ).
            DATA t243 TYPE x LENGTH 1.
            CLEAR t243.
            DATA t244 TYPE x LENGTH 1.
            CLEAR t244.
            DATA(t245) = VALUE i( ).
            t241 = t240.
            t238 = cl_abap_conv_out_ce=>uccpi( t241 ).
            IF t238 >= 255.
              IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
                zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t240 IMPORTING buffer = t242 ).
              t243 = t242(1).
              t244 = t242+1(1).
              t238 = t243.
              t245 = t244.
              t238 = t238 + t245 * 256.
            ENDIF.
            IF t238 = 9 OR t238 = 10 OR t238 = 11 OR t238 = 12 OR t238 = 13 OR t238 = 32 OR t238 = 160 OR t238 = 5760 OR t238 = 8232 OR t238 = 8233 OR t238 = 8239 OR t238 = 8287 OR t238 = 12288 OR t238 = 65279 OR t238 >= 8192 AND t238 <= 8202.
              t231 = t231 + 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          IF t231 < t232.
            t233 = t229+t231(1).
            IF t233 = '-' OR t233 = '+'.
              t234 = xsdbool( t233 = '-' ).
              t231 = t231 + 1.
            ENDIF.
          ENDIF.
          WHILE t231 < t232.
            t233 = t229+t231(1).
            IF t233 CN '0123456789' OR t233 = ` `.
              EXIT.
            ENDIF.
            t237 = t233.
            IF t236 > range_parse_safe_prefix OR ( t236 = range_parse_safe_prefix AND t237 > 1 ).
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t236 = t236 * 10 + t237.
            t235 = abap_true.
            t231 = t231 + 1.
          ENDWHILE.
          IF t235 = abap_false OR ( t234 = abap_true AND t236 = 0 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          IF t234 = abap_true.
            t236 = 0 - t236.
          ENDIF.
          t228 = t236.
          t221 = t228.
        ENDIF.
        t220 = t221.
        DATA t246 TYPE REF TO zcl_lnt_issue.
        CLEAR t246.
        DATA(t247) = VALUE abap_bool( ).
        DATA(t248) = VALUE f( ).
        DATA(t249) = VALUE i( ).
        DATA(t250) = VALUE string( ).
        DATA(t251) = t191.
        t250 = t251->value.
        DATA(t252) = strlen( t250 ).
        t249 = t252.
        t248 = t249.
        DATA(t253) = t220.
        t247 = xsdbool( t248 > t253 ).
        IF t247 = abap_true.
          DATA t254 TYPE REF TO zcl_lnt_issue.
          CLEAR t254.
          DATA(t255) = VALUE string( ).
          DATA(t256) = VALUE string( ).
          DATA(t257) = VALUE abap_bool( ).
          DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t258.
          IF t258 IS BOUND.
            IF t258->has = abap_true.
              t257 = xsdbool( strlen( t258->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t257 = abap_true.
            DATA(t259) = VALUE string( ).
            DATA(t260) = VALUE string( ).
            DATA(t261) = |[|.
            DATA(t262) = VALUE string( ).
            DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t263.
            t262 = t263->value.
            DATA(t264) = strlen( t261 ).
            t260 = |{ t261 }{ t262 }|.
            DATA(t265) = |] |.
            DATA(t266) = strlen( t260 ).
            t259 = |{ t260 }{ t265 }|.
            t256 = t259.
          ELSE.
            DATA(t267) = ||.
            t256 = t267.
          ENDIF.
          t255 = t256.
          DATA t268 TYPE REF TO zcl_lnt_issue.
          CLEAR t268.
          DATA(t269) = abap_true.
          IF t269 = abap_true.
            DATA t270 TYPE REF TO zcl_lnt_issue.
            CLEAR t270.
            DATA(t271) = t181.
            DATA(t272) = CONV f( 1 ).
            DATA(t273) = VALUE string( ).
            DATA(t274) = VALUE string( ).
            DATA(t275) = VALUE string( ).
            DATA(t276) = VALUE string( ).
            DATA(t277) = VALUE string( ).
            DATA(t278) = VALUE string( ).
            DATA(t279) = VALUE string( ).
            DATA(t280) = VALUE string( ).
            DATA(t281) = VALUE string( ).
            DATA(t282) = VALUE string( ).
            DATA(t283) = ||.
            DATA(t284) = t255.
            DATA(t285) = strlen( t283 ).
            t282 = |{ t283 }{ t284 }|.
            DATA(t286) = ||.
            DATA(t287) = strlen( t282 ).
            t281 = |{ t282 }{ t286 }|.
            DATA(t288) = t183.
            DATA(t289) = strlen( t281 ).
            t280 = |{ t281 }{ t288 }|.
            DATA(t290) = | "|.
            DATA(t291) = strlen( t280 ).
            t279 = |{ t280 }{ t290 }|.
            DATA(t292) = VALUE string( ).
            DATA(t293) = t191.
            t292 = t293->value.
            DATA(t294) = strlen( t279 ).
            t278 = |{ t279 }{ t292 }|.
            DATA(t295) = |" exceeds maximum length of |.
            DATA(t296) = strlen( t278 ).
            t277 = |{ t278 }{ t295 }|.
            DATA(t297) = VALUE string( ).
            DATA(t298) = t220.
            IF t298 <> trunc( t298 ) OR t298 > range_safe_integer OR t298 < 0 - range_safe_integer.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            DATA(t299) = CONV int8( t298 ).
            t297 = |{ t299 }|.
            DATA(t300) = strlen( t277 ).
            t276 = |{ t277 }{ t297 }|.
            DATA(t301) = | characters (actual: |.
            DATA(t302) = strlen( t276 ).
            t275 = |{ t276 }{ t301 }|.
            DATA(t303) = VALUE string( ).
            DATA(t304) = VALUE i( ).
            DATA(t305) = VALUE string( ).
            DATA(t306) = t191.
            t305 = t306->value.
            DATA(t307) = strlen( t305 ).
            t304 = t307.
            t303 = |{ t304 }|.
            DATA(t308) = strlen( t275 ).
            t274 = |{ t275 }{ t303 }|.
            DATA(t309) = |)|.
            DATA(t310) = strlen( t274 ).
            t273 = |{ t274 }{ t309 }|.
            DATA(t311) = VALUE string( ).
            DATA t312 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t312.
            DATA(t313) = VALUE string( ).
            DATA(t314) = |xml_consistency|.
            t313 = t314.
            DATA(t315) = VALUE string( ).
            DATA(t316) = |XML consistency|.
            t315 = t316.
            DATA(t317) = VALUE string( ).
            DATA(t318) = |Checks the consistency of main XML files|.
            t317 = t318.
            DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t319.
            DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t320.
            DATA(t321) = abap_true.
            IF t321 = abap_true.
              DATA(t322) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
              t322 = t322 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
              t322 = t322 && |ce table and field values\n* Transparent TABL objects have de|.
              t322 = t322 && |livery class and size category set\n* Lock parameter names in|.
              t322 = t322 && | ENQU objects are max 16 characters\n* Texts and translations|.
              t322 = t322 && | do not exceed maximum allowed length.|.
              DATA(t323) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t323->has = abap_true.
              t323->value = t322.
              t320 = t323.
            ELSE.
              DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t324.
              t320 = t324.
            ENDIF.
            t319 = t320.
            DATA t325 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t325.
            DATA t326 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t326.
            DATA(t327) = abap_true.
            IF t327 = abap_true.
              DATA t328 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t328.
              DATA t329 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t329.
              DATA t330 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t330.
              CREATE OBJECT t330.
              t329 = t330.
              DATA(t331) = t329.
              DATA(t332) = |Naming|.
              t331->load( ).
              APPEND t332 TO t331->items.
              t331->save( ).
              DATA(t333) = t329.
              DATA(t334) = |Syntax|.
              t333->load( ).
              APPEND t334 TO t333->items.
              t333->save( ).
              DATA(t335) = t329.
              t328 = t335.
              t326 = t328.
            ELSE.
              DATA t336 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t336.
              t326 = t336.
            ENDIF.
            t325 = t326.
            DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t337.
            DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t338.
            t337 = t338.
            DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t339.
            DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t340.
            t339 = t340.
            DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t341.
            DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t342.
            t341 = t342.
            DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t343.
            DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t344.
            t343 = t344.
            t312 = NEW zcl_lnt_irule_metadata( i_key = t313 i_title = t315 i_short_description = t317 i_bad_example = t337 i_good_example = t339 i_extended_information = t319 i_tags = t325 i_pragma = t341 i_pseudo_comment = t343 ).
            CREATE OBJECT t312->zlnt_view_ownkeys_b0e8086400eb.
            t312->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t345.
            IF t312->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t312->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t345 ).
            ENDIF.
            DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t346.
            IF t312->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t312->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t346 ).
            ENDIF.
            DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t347.
            IF t312->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t312->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t347 ).
            ENDIF.
            DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t348.
            IF t312->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t312->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t348 ).
            ENDIF.
            DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t349.
            IF t312->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t312->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t349 ).
            ENDIF.
            CREATE OBJECT t312->zlnt_json_ownkeys_70e5fd461788.
            t312->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t350) = |key|.
            DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t351.
            IF t312->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t312->zlnt_json_ownkeys_70e5fd461788->put( p0 = t350 p1 = t351 ).
            ENDIF.
            DATA(t352) = |title|.
            DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t353.
            IF t312->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t312->zlnt_json_ownkeys_70e5fd461788->put( p0 = t352 p1 = t353 ).
            ENDIF.
            DATA(t354) = |shortDescription|.
            DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t355.
            IF t312->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t312->zlnt_json_ownkeys_70e5fd461788->put( p0 = t354 p1 = t355 ).
            ENDIF.
            DATA(t356) = |extendedInformation|.
            DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t357.
            IF t312->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t312->zlnt_json_ownkeys_70e5fd461788->put( p0 = t356 p1 = t357 ).
            ENDIF.
            DATA(t358) = |tags|.
            DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t359.
            IF t312->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t312->zlnt_json_ownkeys_70e5fd461788->put( p0 = t358 p1 = t359 ).
            ENDIF.
            t311 = t312->key.
            DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t360.
            DATA(t361) = me->conf.
            t360 = t361->zlnt_view_read_sr_b4bcf11cce6c( ).
            t270 = zcl_lnt_issue=>at_row( i_file = t271 i_row = t272 i_message_26cb = t273 i_key = t311 i_severity = t360 ).
            t268 = t270.
          ELSE.
            DATA t362 TYPE REF TO zcl_lnt_issue.
            CLEAR t362.
            t268 = t362.
          ENDIF.
          t254 = t268.
          t246 = t254.
        ELSE.
          DATA t363 TYPE REF TO zcl_lnt_issue.
          CLEAR t363.
          t246 = t363.
        ENDIF.
        t219 = t246.
        t202 = t219.
      ENDIF.
      t180 = t202.
      t179 = t180.
      DATA(t364) = VALUE abap_bool( ).
      DATA(t365) = t179.
      t364 = xsdbool( t365 IS BOUND ).
      IF t364 = abap_true.
        DATA(t366) = t177.
        DATA t367 TYPE REF TO zcl_lnt_issue.
        CLEAR t367.
        DATA(t368) = t179.
        t367 = t368.
        t366->load( ).
        APPEND t367 TO t366->items.
        t366->save( ).
      ENDIF.
    ENDDO.
    DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t369.
    DATA t370 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t370.
    DATA(t371) = t1.
    t370 = t371.
    DATA t372 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t372.
    DATA(t373) = VALUE abap_bool( ).
    DATA t374 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t374.
    DATA t375 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t375.
    DATA(t376) = t370.
    t375 = t376->texts_translations.
    t374 = t375.
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t377.
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t378.
    t377 = t378.
    DATA(t379) = VALUE abap_bool( ).
    DATA(t380) = t374.
    IF t380 IS INITIAL.
      t379 = abap_true.
    ENDIF.
    t373 = t379.
    IF t373 = abap_true.
      DATA(t381) = t370.
      DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t382.
      DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t383.
      DATA(t384) = VALUE abap_bool( ).
      DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t385.
      DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t386.
      DATA(t387) = t370.
      t386 = t387->raw_xml_cache.
      t385 = t386.
      DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t388.
      DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t389.
      t388 = t389.
      DATA(t390) = VALUE abap_bool( ).
      DATA(t391) = t385.
      IF t391 IS INITIAL.
        t390 = abap_true.
      ENDIF.
      t384 = t390.
      IF t384 = abap_true.
        DATA(t392) = t370.
        DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t393.
        DATA(t394) = abap_true.
        IF t394 = abap_true.
          DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t395.
          DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t396.
          DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t397.
          DATA(t398) = t370.
          t397 = t398->parse_raw2( ).
          t396 = t397.
          DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t399.
          DATA(t400) = VALUE abap_bool( ).
          DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t401.
          DATA(t402) = t396.
          t401 = t402.
          IF t401 IS NOT BOUND.
            t400 = abap_true.
          ELSE.
            t400 = xsdbool( t401->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t400 = abap_true.
            DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t403.
            DATA(t404) = 0.
            CREATE OBJECT t403.
            t403->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
            t399 = t403.
          ELSE.
            DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t405.
            DATA(t406) = t396.
            t405 = t406.
            t399 = t405.
          ENDIF.
          t395 = t399.
          t393 = t395.
        ELSE.
          DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t407.
          t393 = t407.
        ENDIF.
        t392->raw_xml_cache = t393.
        DELETE t392->zlnt_record_delet_0597644d88b4 WHERE table_line = `rawXMLCache`.
      ENDIF.
      DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t408.
      DATA(t409) = abap_true.
      IF t409 = abap_true.
        DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t410.
        DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t411.
        DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t412.
        DATA(t413) = t370.
        t412 = t413->raw_xml_cache.
        t411 = t412.
        DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t414.
        DATA(t415) = VALUE abap_bool( ).
        DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t416.
        DATA(t417) = t411.
        t416 = t417.
        IF t416 IS NOT BOUND.
          t415 = abap_true.
        ELSE.
          t415 = xsdbool( t416->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t415 = abap_true.
          DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t418.
          DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t419.
          CLEAR t418.
          IF t419 IS BOUND.
            t418 = t419.
          ENDIF.
          t414 = t418.
        ELSE.
          DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t420.
          DATA(t421) = t411.
          t420 = t421.
          t414 = t420.
        ENDIF.
        t410 = t414.
        t408 = t410.
      ELSE.
        DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t422.
        t408 = t422.
      ENDIF.
      t383 = t408.
      CLEAR t382.
      IF t383 IS BOUND.
        t382 = t383.
      ENDIF.
      t381->find_texts_translations( i_parsed = t382 ).
    ENDIF.
    DATA t423 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t423.
    DATA t424 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t424.
    DATA(t425) = t370.
    t424 = t425->texts_translations.
    t423 = t424.
    t372 = t423.
    t369 = t372.
    DATA t426 TYPE REF TO zcl_lnt_itrnsltn_txt_elmnts.
    CLEAR t426.
    DATA t427 TYPE REF TO object.
    CLEAR t427.
    DATA(t428) = VALUE i( ).
    DO.
      t369->load( ).
      IF t428 >= lines( t369->items ).
        EXIT.
      ENDIF.
      CLEAR t427.
      READ TABLE t369->items INDEX t428 + 1 INTO t427.
      t428 = t428 + 1.
      DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t429.
      CLEAR t426.
      IF t427 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t429 ?= t427.
        CLEAR t426.
        IF t429 IS BOUND.
          IF t429->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                t426 ?= t429->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF t426 IS NOT BOUND.
            IF t429->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t430 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t430.
              IF t429->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t430 ?= t429->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t430->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t431.
            DATA t432 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
            CLEAR t432.
            t426 = NEW zcl_lnt_itrnsltn_txt_elmnts( view_source = t429 i_language = t431 i_text_elements = t432 ).
          ENDIF.
        ENDIF.
      ELSE.
        t426 ?= t427.
      ENDIF.
      DATA t433 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t433.
      DATA t434 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t434.
      DATA t435 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t435.
      DATA(t436) = t426.
      t435 = t436->zlnt_view_read_sr_f2debfe321d5( ).
      t434 = t435.
      DATA t437 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t437.
      DATA t438 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t438.
      CREATE OBJECT t438.
      t437 = t438.
      DATA t439 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t439.
      DATA t440 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t440.
      CREATE OBJECT t440.
      t439 = t440.
      DATA(t441) = VALUE i( ).
      DATA(t442) = 0.
      t441 = t442.
      DATA(t443) = VALUE i( ).
      DATA(t444) = 0.
      t443 = t444.
      DATA(t445) = VALUE abap_bool( ).
      DATA(t446) = abap_false.
      t445 = t446.
      DATA(t447) = VALUE i( ).
      DATA(t448) = 0.
      t447 = t448.
      DATA t449 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t449.
      DATA(t450) = t434.
      t449 = t450->keys( ).
      DATA(t451) = VALUE string( ).
      t449->dense( ).
      DATA(t452) = VALUE i( ).
      DO.
        t449->load( ).
        IF t452 >= lines( t449->items ).
          EXIT.
        ENDIF.
        CLEAR t451.
        READ TABLE t449->items INDEX t452 + 1 INTO t451.
        IF t449->has( t452 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t452 = t452 + 1.
        DATA(t453) = VALUE i( ).
        DATA(t454) = t451.
        DATA(t455) = strlen( t454 ).
        t453 = t455.
        t441 = t453.
        DATA(t456) = 0.
        t443 = t456.
        DATA(t457) = VALUE abap_bool( ).
        DATA(t458) = VALUE abap_bool( ).
        DATA(t459) = VALUE abap_bool( ).
        DATA(t460) = t441.
        DATA(t461) = 0.
        t459 = xsdbool( t460 > t461 ).
        t458 = t459.
        IF t459 = abap_true.
          DATA(t462) = VALUE abap_bool( ).
          DATA(t463) = t441.
          DATA(t464) = 10.
          t462 = xsdbool( t463 <= t464 ).
          t458 = t462.
        ENDIF.
        t457 = t458.
        IF t458 = abap_true.
          DATA(t465) = VALUE abap_bool( ).
          DATA(t466) = VALUE abap_bool( ).
          DATA(t467) = t441.
          DATA(t468) = 1.
          t466 = xsdbool( t467 = t468 ).
          t465 = t466.
          IF t466 = abap_false.
            DATA(t469) = VALUE abap_bool( ).
            DATA(t470) = VALUE string( ).
            DATA(t471) = t451.
            DATA(t472) = 0.
            DATA(t473) = strlen( t471 ).
            IF t472 < 0 OR t472 >= t473.
              CLEAR t470.
            ELSE.
              t470 = t471+t472(1).
            ENDIF.
            DATA(t474) = |0|.
            t469 = xsdbool( t470 <> t474 ).
            t465 = t469.
          ENDIF.
          t457 = t465.
        ENDIF.
        t445 = t457.
        DO.
          DATA(t475) = VALUE abap_bool( ).
          DATA(t476) = t445.
          t475 = t476.
          IF t476 = abap_true.
            DATA(t477) = VALUE abap_bool( ).
            DATA(t478) = t443.
            DATA(t479) = t441.
            t477 = xsdbool( t478 < t479 ).
            t475 = t477.
          ENDIF.
          IF t475 = abap_false.
            EXIT.
          ENDIF.
          DATA(t480) = VALUE i( ).
          DATA(t481) = t451.
          DATA(t482) = t443.
          DATA(t483) = strlen( t481 ).
          IF t482 < 0 OR t482 >= t483.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t484) = CONV string( t481+t482(1) ).
          DATA t485 TYPE c LENGTH 1.
          CLEAR t485.
          DATA(t486) = VALUE xstring( ).
          DATA t487 TYPE x LENGTH 1.
          CLEAR t487.
          DATA t488 TYPE x LENGTH 1.
          CLEAR t488.
          DATA(t489) = VALUE i( ).
          t485 = t484.
          t480 = cl_abap_conv_out_ce=>uccpi( t485 ).
          IF t480 >= 255.
            IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
              zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t484 IMPORTING buffer = t486 ).
            t487 = t486(1).
            t488 = t486+1(1).
            t480 = t487.
            t489 = t488.
            t480 = t480 + t489 * 256.
          ENDIF.
          t447 = t480.
          DATA(t490) = VALUE abap_bool( ).
          DATA(t491) = VALUE abap_bool( ).
          DATA(t492) = t447.
          DATA(t493) = 48.
          t491 = xsdbool( t492 >= t493 ).
          t490 = t491.
          IF t491 = abap_true.
            DATA(t494) = VALUE abap_bool( ).
            DATA(t495) = t447.
            DATA(t496) = 57.
            t494 = xsdbool( t495 <= t496 ).
            t490 = t494.
          ENDIF.
          t445 = t490.
          DATA(t497) = VALUE i( ).
          DATA(t498) = t443.
          DATA(t499) = 1.
          t497 = t498 + t499.
          t443 = t497.
        ENDDO.
        DATA(t500) = VALUE abap_bool( ).
        DATA(t501) = t445.
        t500 = t501.
        IF t501 = abap_true.
          DATA(t502) = VALUE abap_bool( ).
          DATA(t503) = t441.
          DATA(t504) = 10.
          t502 = xsdbool( t503 = t504 ).
          t500 = t502.
        ENDIF.
        IF t500 = abap_true.
          DATA(t505) = VALUE abap_bool( ).
          DATA(t506) = VALUE i( ).
          DATA(t507) = t451.
          DATA(t508) = |4294967294|.
          t506 = zlnt_runtime_orde_654b9c3be2c1=>rule_key( p0 = t507 p1 = t508 ).
          DATA(t509) = 0.
          t505 = xsdbool( t506 <= t509 ).
          t445 = t505.
        ENDIF.
        DATA(t510) = t445.
        IF t510 = abap_true.
          DATA(t511) = t437.
          DATA(t512) = t451.
          t511->load( ).
          APPEND t512 TO t511->items.
          t511->save( ).
        ELSE.
          DATA(t513) = t439.
          DATA(t514) = t451.
          t513->load( ).
          APPEND t514 TO t513->items.
          t513->save( ).
        ENDIF.
      ENDDO.
      DATA t515 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t515.
      DATA t516 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t516.
      DATA t517 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t517.
      DATA t518 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t518.
      DATA(t519) = t437.
      t518 = t519.
      DATA(t520) = VALUE i( ).
      DATA(t521) = VALUE i( ).
      DATA(t522) = t518.
      t522->load( ).
      t521 = lines( t522->items ).
      t520 = t521.
      DATA(t523) = VALUE i( ).
      DATA(t524) = 1.
      t523 = t524.
      DO.
        DATA(t525) = VALUE abap_bool( ).
        DATA(t526) = t523.
        DATA(t527) = t520.
        t525 = xsdbool( t526 < t527 ).
        IF t525 = abap_false.
          EXIT.
        ENDIF.
        DATA(t528) = VALUE string( ).
        DATA(t529) = VALUE string( ).
        DATA t530 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t530.
        DATA(t531) = t518.
        DATA(t532) = t523.
        t530 = t531->get( p0 = t532 ).
        t529 = t530->value.
        t528 = t529.
        DATA(t533) = VALUE i( ).
        DATA(t534) = t523.
        t533 = t534.
        DO.
          DATA(t535) = VALUE abap_bool( ).
          DATA(t536) = t533.
          DATA(t537) = 0.
          t535 = xsdbool( t536 > t537 ).
          IF t535 = abap_false.
            EXIT.
          ENDIF.
          DATA(t538) = VALUE string( ).
          DATA(t539) = VALUE string( ).
          DATA t540 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t540.
          DATA(t541) = t518.
          DATA(t542) = VALUE i( ).
          DATA(t543) = t533.
          DATA(t544) = 1.
          t542 = t543 - t544.
          t540 = t541->get( p0 = t542 ).
          t539 = t540->value.
          t538 = t539.
          DATA(t545) = VALUE abap_bool( ).
          DATA(t546) = VALUE f( ).
          DATA(t547) = VALUE abap_bool( ).
          DATA(t548) = VALUE i( ).
          DATA(t549) = t538.
          DATA(t550) = strlen( t549 ).
          t548 = t550.
          DATA(t551) = VALUE i( ).
          DATA(t552) = t528.
          DATA(t553) = strlen( t552 ).
          t551 = t553.
          t547 = xsdbool( t548 <> t551 ).
          IF t547 = abap_true.
            DATA(t554) = VALUE f( ).
            DATA(t555) = VALUE i( ).
            DATA(t556) = VALUE i( ).
            DATA(t557) = t538.
            DATA(t558) = strlen( t557 ).
            t556 = t558.
            DATA(t559) = VALUE i( ).
            DATA(t560) = t528.
            DATA(t561) = strlen( t560 ).
            t559 = t561.
            t555 = t556 - t559.
            t554 = t555.
            t546 = t554.
          ELSE.
            DATA(t562) = VALUE f( ).
            DATA(t563) = VALUE i( ).
            DATA(t564) = t538.
            DATA(t565) = t528.
            t563 = zlnt_runtime_orde_654b9c3be2c1=>rule_key( p0 = t564 p1 = t565 ).
            t562 = t563.
            t546 = t562.
          ENDIF.
          DATA(t566) = CONV f( 0 ).
          t545 = xsdbool( t546 <= t566 ).
          IF t545 = abap_true.
            EXIT.
          ENDIF.
          DATA(t567) = t518.
          DATA(t568) = t533.
          DATA(t569) = t538.
          t567->put( p0 = t568 p1 = t569 ).
          DATA(t570) = VALUE i( ).
          DATA(t571) = t533.
          DATA(t572) = 1.
          t570 = t571 - t572.
          t533 = t570.
        ENDDO.
        DATA(t573) = t518.
        DATA(t574) = t533.
        DATA(t575) = t528.
        t573->put( p0 = t574 p1 = t575 ).
        DATA(t576) = VALUE i( ).
        DATA(t577) = t523.
        DATA(t578) = 1.
        t576 = t577 + t578.
        t523 = t576.
      ENDDO.
      DATA(t579) = t518.
      t517 = t579.
      DATA(t580) = t439.
      t516 = t517->concat( p0 = t580 ).
      t515 = t516.
      DATA t581 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t581.
      DATA t582 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t582.
      CREATE OBJECT t582.
      t581 = t582.
      DATA(t583) = t515.
      DATA(t584) = VALUE string( ).
      t583->dense( ).
      DATA(t585) = VALUE i( ).
      DO.
        t583->load( ).
        IF t585 >= lines( t583->items ).
          EXIT.
        ENDIF.
        CLEAR t584.
        READ TABLE t583->items INDEX t585 + 1 INTO t584.
        IF t583->has( t585 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t585 = t585 + 1.
        DATA(t586) = t581.
        DATA t587 TYPE REF TO zcl_lnt_tuple_a5e994d8.
        CLEAR t587.
        DATA(t588) = t584.
        DATA t589 TYPE REF TO zcl_lnt_shape_015c050b.
        CLEAR t589.
        DATA t590 TYPE REF TO zcl_lnt_shape_015c050b.
        CLEAR t590.
        DATA(t591) = t434.
        DATA(t592) = t584.
        t590 = t591->get( p0 = t592 ).
        t589 = t590.
        t587 = NEW zcl_lnt_tuple_a5e994d8( i_f0 = t588 i_f1 = t589 ).
        t586->load( ).
        APPEND t587 TO t586->items.
        t586->save( ).
      ENDDO.
      DATA(t593) = t581.
      t433 = t593.
      DATA t594 TYPE REF TO zcl_lnt_tuple_a5e994d8.
      CLEAR t594.
      DATA t595 TYPE REF TO object.
      CLEAR t595.
      DATA(t596) = VALUE i( ).
      DO.
        t433->load( ).
        IF t596 >= lines( t433->items ).
          EXIT.
        ENDIF.
        CLEAR t595.
        READ TABLE t433->items INDEX t596 + 1 INTO t595.
        t596 = t596 + 1.
        DATA t597 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t597.
        CLEAR t594.
        IF t595 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t597 ?= t595.
          DATA t598 TYPE REF TO object.
          CLEAR t598.
          t598 = t597->as_ref( ).
          t594 ?= t598.
        ELSE.
          t594 ?= t595.
        ENDIF.
        DATA(t599) = VALUE string( ).
        DATA(t600) = VALUE string( ).
        DATA(t601) = t594.
        t600 = t601->f0.
        t599 = t600.
        DATA t602 TYPE REF TO zcl_lnt_shape_015c050b.
        CLEAR t602.
        DATA t603 TYPE REF TO zcl_lnt_shape_015c050b.
        CLEAR t603.
        DATA(t604) = t594.
        t603 = t604->f1.
        t602 = t603.
        DATA t605 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t605.
        DATA(t606) = t3.
        t605 = t606.
        DATA t607 TYPE REF TO zcl_lnt_issue.
        CLEAR t607.
        DATA t608 TYPE REF TO zcl_lnt_issue.
        CLEAR t608.
        DATA t609 TYPE REF TO zif_lnt_file.
        CLEAR t609.
        DATA(t610) = t2.
        t609 = t610.
        DATA(t611) = VALUE string( ).
        DATA(t612) = VALUE string( ).
        DATA(t613) = VALUE string( ).
        DATA(t614) = |ENTRY[|.
        DATA(t615) = t599.
        DATA(t616) = strlen( t614 ).
        t613 = |{ t614 }{ t615 }|.
        DATA(t617) = |]|.
        DATA(t618) = strlen( t613 ).
        t612 = |{ t613 }{ t617 }|.
        t611 = t612.
        DATA t619 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t619.
        DATA t620 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t620.
        DATA(t621) = abap_true.
        IF t621 = abap_true.
          DATA(t622) = VALUE string( ).
          DATA(t623) = t602.
          t622 = t623->entry.
          DATA(t624) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t624->has = abap_true.
          t624->value = t622.
          t620 = t624.
        ELSE.
          DATA t625 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t625.
          t620 = t625.
        ENDIF.
        t619 = t620.
        DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t626.
        DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t627.
        DATA t628 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t628.
        DATA(t629) = t602.
        t628 = t629->max_length.
        CLEAR t627.
        IF t628 IS BOUND AND t628->has = abap_true.
          CLEAR t627.
          CREATE OBJECT t627.
          t627->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
          t627->nval = t628->value.
          t627->number_special = t628->number_special.
        ENDIF.
        t626 = t627.
        DATA t630 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t630.
        DATA t631 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t631.
        DATA(t632) = t426.
        t631 = t632->zlnt_view_read_sr_a2d11cf27dbf( ).
        t630 = t631.
        DATA t633 TYPE REF TO zcl_lnt_issue.
        CLEAR t633.
        DATA(t634) = VALUE abap_bool( ).
        DATA(t635) = VALUE abap_bool( ).
        DATA t636 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t636.
        DATA(t637) = t619.
        t636 = t637.
        DATA t638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t638.
        DATA t639 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t639.
        t638 = t639.
        DATA(t640) = VALUE abap_bool( ).
        DATA(t641) = t636.
        IF t641 IS INITIAL.
          t640 = abap_true.
        ELSEIF t641->has = abap_false.
          t640 = abap_true.
        ENDIF.
        t635 = t640.
        t634 = t635.
        IF t635 = abap_false.
          DATA(t642) = VALUE abap_bool( ).
          DATA t643 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t643.
          DATA(t644) = t626.
          t643 = t644.
          DATA t645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t645.
          DATA t646 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t646.
          t645 = t646.
          DATA(t647) = VALUE abap_bool( ).
          DATA(t648) = t643.
          IF t648 IS INITIAL.
            t647 = abap_true.
          ENDIF.
          t642 = t647.
          t634 = t642.
        ENDIF.
        IF t634 = abap_true.
          DATA t649 TYPE REF TO zcl_lnt_issue.
          CLEAR t649.
          t633 = t649.
        ELSE.
          DATA t650 TYPE REF TO zcl_lnt_issue.
          CLEAR t650.
          DATA(t651) = VALUE f( ).
          DATA(t652) = VALUE f( ).
          DATA(t653) = VALUE abap_bool( ).
          DATA(t654) = VALUE string( ).
          DATA(t655) = t626.
          IF t655 IS BOUND.
            t654 = t655->type_of( ).
            IF t655->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t655->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
              t654 = `function`.
            ENDIF.
          ELSE.
            t654 = `undefined`.
          ENDIF.
          DATA(t656) = |number|.
          t653 = xsdbool( t654 = t656 ).
          IF t653 = abap_true.
            DATA(t657) = VALUE f( ).
            DATA(t658) = t626.
            t657 = t658->as_number( ).
            t652 = t657.
          ELSE.
            DATA(t659) = VALUE f( ).
            DATA(t660) = VALUE string( ).
            DATA(t661) = t626.
            t660 = t661->as_string( ).
            DATA(t662) = VALUE i( ).
            DATA(t663) = VALUE i( ).
            DATA(t664) = VALUE string( ).
            DATA(t665) = VALUE abap_bool( ).
            DATA(t666) = VALUE abap_bool( ).
            DATA(t667) = VALUE int8( ).
            DATA(t668) = VALUE i( ).
            t662 = 0.
            t667 = 0.
            t665 = abap_false.
            t666 = abap_false.
            t663 = strlen( t660 ).
            DATA(t669) = VALUE i( ).
            DATA(t670) = VALUE i( ).
            DATA(t671) = VALUE string( ).
            WHILE t662 < t663.
              t670 = t662.
              t671 = t660+t670(1).
              DATA t672 TYPE c LENGTH 1.
              CLEAR t672.
              DATA(t673) = VALUE xstring( ).
              DATA t674 TYPE x LENGTH 1.
              CLEAR t674.
              DATA t675 TYPE x LENGTH 1.
              CLEAR t675.
              DATA(t676) = VALUE i( ).
              t672 = t671.
              t669 = cl_abap_conv_out_ce=>uccpi( t672 ).
              IF t669 >= 255.
                IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
                  zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                ENDIF.
                zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t671 IMPORTING buffer = t673 ).
                t674 = t673(1).
                t675 = t673+1(1).
                t669 = t674.
                t676 = t675.
                t669 = t669 + t676 * 256.
              ENDIF.
              IF t669 = 9 OR t669 = 10 OR t669 = 11 OR t669 = 12 OR t669 = 13 OR t669 = 32 OR t669 = 160 OR t669 = 5760 OR t669 = 8232 OR t669 = 8233 OR t669 = 8239 OR t669 = 8287 OR t669 = 12288 OR t669 = 65279 OR t669 >= 8192 AND t669 <= 8202.
                t662 = t662 + 1.
              ELSE.
                EXIT.
              ENDIF.
            ENDWHILE.
            IF t662 < t663.
              t664 = t660+t662(1).
              IF t664 = '-' OR t664 = '+'.
                t665 = xsdbool( t664 = '-' ).
                t662 = t662 + 1.
              ENDIF.
            ENDIF.
            WHILE t662 < t663.
              t664 = t660+t662(1).
              IF t664 CN '0123456789' OR t664 = ` `.
                EXIT.
              ENDIF.
              t668 = t664.
              IF t667 > range_parse_safe_prefix OR ( t667 = range_parse_safe_prefix AND t668 > 1 ).
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t667 = t667 * 10 + t668.
              t666 = abap_true.
              t662 = t662 + 1.
            ENDWHILE.
            IF t666 = abap_false OR ( t665 = abap_true AND t667 = 0 ).
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            IF t665 = abap_true.
              t667 = 0 - t667.
            ENDIF.
            t659 = t667.
            t652 = t659.
          ENDIF.
          t651 = t652.
          DATA t677 TYPE REF TO zcl_lnt_issue.
          CLEAR t677.
          DATA(t678) = VALUE abap_bool( ).
          DATA(t679) = VALUE f( ).
          DATA(t680) = VALUE i( ).
          DATA(t681) = VALUE string( ).
          DATA(t682) = t619.
          t681 = t682->value.
          DATA(t683) = strlen( t681 ).
          t680 = t683.
          t679 = t680.
          DATA(t684) = t651.
          t678 = xsdbool( t679 > t684 ).
          IF t678 = abap_true.
            DATA t685 TYPE REF TO zcl_lnt_issue.
            CLEAR t685.
            DATA(t686) = VALUE string( ).
            DATA(t687) = VALUE string( ).
            DATA(t688) = VALUE abap_bool( ).
            DATA(t689) = t630.
            IF t689 IS BOUND.
              IF t689->has = abap_true.
                t688 = xsdbool( strlen( t689->value ) > 0 ).
              ENDIF.
            ENDIF.
            IF t688 = abap_true.
              DATA(t690) = VALUE string( ).
              DATA(t691) = VALUE string( ).
              DATA(t692) = |[|.
              DATA(t693) = VALUE string( ).
              DATA(t694) = t630.
              t693 = t694->value.
              DATA(t695) = strlen( t692 ).
              t691 = |{ t692 }{ t693 }|.
              DATA(t696) = |] |.
              DATA(t697) = strlen( t691 ).
              t690 = |{ t691 }{ t696 }|.
              t687 = t690.
            ELSE.
              DATA(t698) = ||.
              t687 = t698.
            ENDIF.
            t686 = t687.
            DATA t699 TYPE REF TO zcl_lnt_issue.
            CLEAR t699.
            DATA(t700) = abap_true.
            IF t700 = abap_true.
              DATA t701 TYPE REF TO zcl_lnt_issue.
              CLEAR t701.
              DATA(t702) = t609.
              DATA(t703) = CONV f( 1 ).
              DATA(t704) = VALUE string( ).
              DATA(t705) = VALUE string( ).
              DATA(t706) = VALUE string( ).
              DATA(t707) = VALUE string( ).
              DATA(t708) = VALUE string( ).
              DATA(t709) = VALUE string( ).
              DATA(t710) = VALUE string( ).
              DATA(t711) = VALUE string( ).
              DATA(t712) = VALUE string( ).
              DATA(t713) = VALUE string( ).
              DATA(t714) = ||.
              DATA(t715) = t686.
              DATA(t716) = strlen( t714 ).
              t713 = |{ t714 }{ t715 }|.
              DATA(t717) = ||.
              DATA(t718) = strlen( t713 ).
              t712 = |{ t713 }{ t717 }|.
              DATA(t719) = t611.
              DATA(t720) = strlen( t712 ).
              t711 = |{ t712 }{ t719 }|.
              DATA(t721) = | "|.
              DATA(t722) = strlen( t711 ).
              t710 = |{ t711 }{ t721 }|.
              DATA(t723) = VALUE string( ).
              DATA(t724) = t619.
              t723 = t724->value.
              DATA(t725) = strlen( t710 ).
              t709 = |{ t710 }{ t723 }|.
              DATA(t726) = |" exceeds maximum length of |.
              DATA(t727) = strlen( t709 ).
              t708 = |{ t709 }{ t726 }|.
              DATA(t728) = VALUE string( ).
              DATA(t729) = t651.
              IF t729 <> trunc( t729 ) OR t729 > range_safe_integer OR t729 < 0 - range_safe_integer.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              DATA(t730) = CONV int8( t729 ).
              t728 = |{ t730 }|.
              DATA(t731) = strlen( t708 ).
              t707 = |{ t708 }{ t728 }|.
              DATA(t732) = | characters (actual: |.
              DATA(t733) = strlen( t707 ).
              t706 = |{ t707 }{ t732 }|.
              DATA(t734) = VALUE string( ).
              DATA(t735) = VALUE i( ).
              DATA(t736) = VALUE string( ).
              DATA(t737) = t619.
              t736 = t737->value.
              DATA(t738) = strlen( t736 ).
              t735 = t738.
              t734 = |{ t735 }|.
              DATA(t739) = strlen( t706 ).
              t705 = |{ t706 }{ t734 }|.
              DATA(t740) = |)|.
              DATA(t741) = strlen( t705 ).
              t704 = |{ t705 }{ t740 }|.
              DATA(t742) = VALUE string( ).
              DATA t743 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t743.
              DATA(t744) = VALUE string( ).
              DATA(t745) = |xml_consistency|.
              t744 = t745.
              DATA(t746) = VALUE string( ).
              DATA(t747) = |XML consistency|.
              t746 = t747.
              DATA(t748) = VALUE string( ).
              DATA(t749) = |Checks the consistency of main XML files|.
              t748 = t749.
              DATA t750 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t750.
              DATA t751 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t751.
              DATA(t752) = abap_true.
              IF t752 = abap_true.
                DATA(t753) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
                t753 = t753 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
                t753 = t753 && |ce table and field values\n* Transparent TABL objects have de|.
                t753 = t753 && |livery class and size category set\n* Lock parameter names in|.
                t753 = t753 && | ENQU objects are max 16 characters\n* Texts and translations|.
                t753 = t753 && | do not exceed maximum allowed length.|.
                DATA(t754) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t754->has = abap_true.
                t754->value = t753.
                t751 = t754.
              ELSE.
                DATA t755 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t755.
                t751 = t755.
              ENDIF.
              t750 = t751.
              DATA t756 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t756.
              DATA t757 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t757.
              DATA(t758) = abap_true.
              IF t758 = abap_true.
                DATA t759 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t759.
                DATA t760 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t760.
                DATA t761 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t761.
                CREATE OBJECT t761.
                t760 = t761.
                DATA(t762) = t760.
                DATA(t763) = |Naming|.
                t762->load( ).
                APPEND t763 TO t762->items.
                t762->save( ).
                DATA(t764) = t760.
                DATA(t765) = |Syntax|.
                t764->load( ).
                APPEND t765 TO t764->items.
                t764->save( ).
                DATA(t766) = t760.
                t759 = t766.
                t757 = t759.
              ELSE.
                DATA t767 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t767.
                t757 = t767.
              ENDIF.
              t756 = t757.
              DATA t768 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t768.
              DATA t769 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t769.
              t768 = t769.
              DATA t770 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t770.
              DATA t771 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t771.
              t770 = t771.
              DATA t772 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t772.
              DATA t773 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t773.
              t772 = t773.
              DATA t774 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t774.
              DATA t775 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t775.
              t774 = t775.
              t743 = NEW zcl_lnt_irule_metadata( i_key = t744 i_title = t746 i_short_description = t748 i_bad_example = t768 i_good_example = t770 i_extended_information = t750 i_tags = t756 i_pragma = t772 i_pseudo_comment = t774 ).
              CREATE OBJECT t743->zlnt_view_ownkeys_b0e8086400eb.
              t743->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t776.
              IF t743->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t743->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t776 ).
              ENDIF.
              DATA t777 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t777.
              IF t743->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t743->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t777 ).
              ENDIF.
              DATA t778 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t778.
              IF t743->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t743->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t778 ).
              ENDIF.
              DATA t779 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t779.
              IF t743->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t743->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t779 ).
              ENDIF.
              DATA t780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t780.
              IF t743->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t743->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t780 ).
              ENDIF.
              CREATE OBJECT t743->zlnt_json_ownkeys_70e5fd461788.
              t743->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t781) = |key|.
              DATA t782 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t782.
              IF t743->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t743->zlnt_json_ownkeys_70e5fd461788->put( p0 = t781 p1 = t782 ).
              ENDIF.
              DATA(t783) = |title|.
              DATA t784 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t784.
              IF t743->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t743->zlnt_json_ownkeys_70e5fd461788->put( p0 = t783 p1 = t784 ).
              ENDIF.
              DATA(t785) = |shortDescription|.
              DATA t786 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t786.
              IF t743->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t743->zlnt_json_ownkeys_70e5fd461788->put( p0 = t785 p1 = t786 ).
              ENDIF.
              DATA(t787) = |extendedInformation|.
              DATA t788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t788.
              IF t743->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t743->zlnt_json_ownkeys_70e5fd461788->put( p0 = t787 p1 = t788 ).
              ENDIF.
              DATA(t789) = |tags|.
              DATA t790 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t790.
              IF t743->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t743->zlnt_json_ownkeys_70e5fd461788->put( p0 = t789 p1 = t790 ).
              ENDIF.
              t742 = t743->key.
              DATA t791 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t791.
              DATA(t792) = me->conf.
              t791 = t792->zlnt_view_read_sr_b4bcf11cce6c( ).
              t701 = zcl_lnt_issue=>at_row( i_file = t702 i_row = t703 i_message_26cb = t704 i_key = t742 i_severity = t791 ).
              t699 = t701.
            ELSE.
              DATA t793 TYPE REF TO zcl_lnt_issue.
              CLEAR t793.
              t699 = t793.
            ENDIF.
            t685 = t699.
            t677 = t685.
          ELSE.
            DATA t794 TYPE REF TO zcl_lnt_issue.
            CLEAR t794.
            t677 = t794.
          ENDIF.
          t650 = t677.
          t633 = t650.
        ENDIF.
        t608 = t633.
        t607 = t608.
        DATA(t795) = VALUE abap_bool( ).
        DATA(t796) = t607.
        t795 = xsdbool( t796 IS BOUND ).
        IF t795 = abap_true.
          DATA(t797) = t605.
          DATA t798 TYPE REF TO zcl_lnt_issue.
          CLEAR t798.
          DATA(t799) = t607.
          t798 = t799.
          t797->load( ).
          APPEND t798 TO t797->items.
          t797->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t800) = t3.
    result = t800.

  ENDMETHOD.

  METHOD run_interface.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_ob_interface.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = t7.
    t10->parse_xml( ).
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA t13 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA(t14) = t7.
    t13 = t14->parsed_xml.
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t12.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t20 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA(t21) = t12.
      t20 = t21.
      t19 = t20->name.
      t15 = t19.
    ENDIF.
    t11 = t15.
    t9 = t11.
    t6 = t9.
    t5 = t6.
    DATA(t22) = VALUE abap_bool( ).
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t24) = t5.
    t23 = t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    t25 = t26.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = t23.
    IF t28 IS INITIAL.
      t27 = abap_true.
    ELSEIF t28->has = abap_false.
      t27 = abap_true.
    ENDIF.
    t22 = t27.
    IF t22 = abap_true.
      DATA(t29) = t3.
      DATA t30 TYPE REF TO zcl_lnt_issue.
      CLEAR t30.
      DATA(t31) = t2.
      DATA(t32) = CONV f( 1 ).
      DATA(t33) = |Name undefined in XML|.
      DATA(t34) = VALUE string( ).
      DATA t35 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t35.
      DATA t36 TYPE string.
      DATA(t37) = |xml_consistency|.
      t36 = t37.
      DATA t38 TYPE string.
      DATA(t39) = |XML consistency|.
      t38 = t39.
      DATA t40 TYPE string.
      DATA(t41) = |Checks the consistency of main XML files|.
      t40 = t41.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t42.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t43.
      DATA(t44) = abap_true.
      IF t44 = abap_true.
        DATA(t45) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
        t45 = t45 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
        t45 = t45 && |ce table and field values\n* Transparent TABL objects have de|.
        t45 = t45 && |livery class and size category set\n* Lock parameter names in|.
        t45 = t45 && | ENQU objects are max 16 characters\n* Texts and translations|.
        t45 = t45 && | do not exceed maximum allowed length.|.
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
        DATA(t55) = |Naming|.
        t54->load( ).
        APPEND t55 TO t54->items.
        t54->save( ).
        DATA(t56) = t52.
        DATA(t57) = |Syntax|.
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
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t61.
      t60 = t61.
      DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t63.
      t62 = t63.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t65.
      t64 = t65.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t67.
      t66 = t67.
      t35 = NEW zcl_lnt_irule_metadata( i_key = t36 i_title = t38 i_short_description = t40 i_bad_example = t60 i_good_example = t62 i_extended_information = t42 i_tags = t48 i_pragma = t64 i_pseudo_comment = t66 ).
      CREATE OBJECT t35->zlnt_view_ownkeys_b0e8086400eb.
      t35->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t68 ).
      ENDIF.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t69 ).
      ENDIF.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t70 ).
      ENDIF.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t71 ).
      ENDIF.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t72 ).
      ENDIF.
      CREATE OBJECT t35->zlnt_json_ownkeys_70e5fd461788.
      t35->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t73) = |key|.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t74.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
      ENDIF.
      DATA(t75) = |title|.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t75 p1 = t76 ).
      ENDIF.
      DATA(t77) = |shortDescription|.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t78.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t77 p1 = t78 ).
      ENDIF.
      DATA(t79) = |extendedInformation|.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t79 p1 = t80 ).
      ENDIF.
      DATA(t81) = |tags|.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t82.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t81 p1 = t82 ).
      ENDIF.
      t34 = t35->key.
      DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t84) = me->conf.
      t83 = t84->zlnt_view_read_sr_15c06369f827( ).
      t30 = zcl_lnt_issue=>at_row( i_file = t31 i_row = t32 i_message_26cb = t33 i_key = t34 i_severity = t83 ).
      t29->load( ).
      APPEND t30 TO t29->items.
      t29->save( ).
    ELSE.
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = VALUE abap_bool( ).
      DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t87.
      DATA t88 TYPE REF TO zcl_lnt_ob_interface.
      DATA(t89) = t1.
      t88 = t89.
      DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t90.
      DATA(t91) = t88.
      t91->parse_xml( ).
      DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t92.
      DATA t93 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA t94 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA(t95) = t88.
      t94 = t95->parsed_xml.
      t93 = t94.
      DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t96.
      DATA(t97) = VALUE abap_bool( ).
      DATA(t98) = t93.
      IF t98 IS INITIAL.
        t97 = abap_true.
      ENDIF.
      IF t97 = abap_true.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t99.
        t96 = t99.
      ELSE.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t101 TYPE REF TO zcl_lnt_shape_e272b380.
        DATA(t102) = t93.
        t101 = t102.
        t100 = t101->description.
        t96 = t100.
      ENDIF.
      t92 = t96.
      t90 = t92.
      t87 = t90.
      IF t87 IS BOUND.
        IF t87->has = abap_true.
          t86 = xsdbool( strlen( t87->value ) > 0 ).
        ENDIF.
      ENDIF.
      t85 = t86.
      IF t86 = abap_true.
        DATA(t103) = VALUE abap_bool( ).
        DATA(t104) = VALUE i( ).
        DATA(t105) = VALUE string( ).
        DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t106.
        DATA t107 TYPE REF TO zcl_lnt_ob_interface.
        DATA(t108) = t1.
        t107 = t108.
        DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t109.
        DATA(t110) = t107.
        t110->parse_xml( ).
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t111.
        DATA t112 TYPE REF TO zcl_lnt_shape_e272b380.
        DATA t113 TYPE REF TO zcl_lnt_shape_e272b380.
        DATA(t114) = t107.
        t113 = t114->parsed_xml.
        t112 = t113.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t115.
        DATA(t116) = VALUE abap_bool( ).
        DATA(t117) = t112.
        IF t117 IS INITIAL.
          t116 = abap_true.
        ENDIF.
        IF t116 = abap_true.
          DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t118.
          t115 = t118.
        ELSE.
          DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t120 TYPE REF TO zcl_lnt_shape_e272b380.
          DATA(t121) = t112.
          t120 = t121.
          t119 = t120->description.
          t115 = t119.
        ENDIF.
        t111 = t115.
        t109 = t111.
        t106 = t109.
        t105 = t106->value.
        DATA(t122) = strlen( t105 ).
        t104 = t122.
        DATA(t123) = 60.
        t103 = xsdbool( t104 > t123 ).
        t85 = t103.
      ENDIF.
      IF t85 = abap_true.
        DATA(t124) = t3.
        DATA t125 TYPE REF TO zcl_lnt_issue.
        CLEAR t125.
        DATA(t126) = t2.
        DATA(t127) = CONV f( 1 ).
        DATA(t128) = |Description too long|.
        DATA(t129) = VALUE string( ).
        DATA t130 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t130.
        DATA t131 TYPE string.
        DATA(t132) = |xml_consistency|.
        t131 = t132.
        DATA t133 TYPE string.
        DATA(t134) = |XML consistency|.
        t133 = t134.
        DATA t135 TYPE string.
        DATA(t136) = |Checks the consistency of main XML files|.
        t135 = t136.
        DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t137.
        DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t138.
        DATA(t139) = abap_true.
        IF t139 = abap_true.
          DATA(t140) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t140 = t140 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t140 = t140 && |ce table and field values\n* Transparent TABL objects have de|.
          t140 = t140 && |livery class and size category set\n* Lock parameter names in|.
          t140 = t140 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t140 = t140 && | do not exceed maximum allowed length.|.
          DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t141->has = abap_true.
          t141->value = t140.
          t138 = t141.
        ELSE.
          DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t142.
          t138 = t142.
        ENDIF.
        t137 = t138.
        DATA t143 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t143.
        DATA t144 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t144.
        DATA(t145) = abap_true.
        IF t145 = abap_true.
          DATA t146 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t147 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t148 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t148.
          t147 = t148.
          DATA(t149) = t147.
          DATA(t150) = |Naming|.
          t149->load( ).
          APPEND t150 TO t149->items.
          t149->save( ).
          DATA(t151) = t147.
          DATA(t152) = |Syntax|.
          t151->load( ).
          APPEND t152 TO t151->items.
          t151->save( ).
          DATA(t153) = t147.
          t146 = t153.
          t144 = t146.
        ELSE.
          DATA t154 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t154.
          t144 = t154.
        ENDIF.
        t143 = t144.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t156.
        t155 = t156.
        DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t158.
        t157 = t158.
        DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t160.
        t159 = t160.
        DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t162.
        t161 = t162.
        t130 = NEW zcl_lnt_irule_metadata( i_key = t131 i_title = t133 i_short_description = t135 i_bad_example = t155 i_good_example = t157 i_extended_information = t137 i_tags = t143 i_pragma = t159 i_pseudo_comment = t161 ).
        CREATE OBJECT t130->zlnt_view_ownkeys_b0e8086400eb.
        t130->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t163 ).
        ENDIF.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t164 ).
        ENDIF.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t165 ).
        ENDIF.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t166.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t166 ).
        ENDIF.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t167 ).
        ENDIF.
        CREATE OBJECT t130->zlnt_json_ownkeys_70e5fd461788.
        t130->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t168) = |key|.
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t169.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
        ENDIF.
        DATA(t170) = |title|.
        DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t171.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
        ENDIF.
        DATA(t172) = |shortDescription|.
        DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t173.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
        ENDIF.
        DATA(t174) = |extendedInformation|.
        DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t175.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
        ENDIF.
        DATA(t176) = |tags|.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
        ENDIF.
        t129 = t130->key.
        DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t179) = me->conf.
        t178 = t179->zlnt_view_read_sr_15c06369f827( ).
        t125 = zcl_lnt_issue=>at_row( i_file = t126 i_row = t127 i_message_26cb = t128 i_key = t129 i_severity = t178 ).
        t124->load( ).
        APPEND t125 TO t124->items.
        t124->save( ).
      ELSE.
        DATA(t180) = VALUE abap_bool( ).
        DATA t181 TYPE string.
        DATA(t182) = t5.
        t181 = t182->value.
        DATA t183 TYPE string.
        DATA t184 TYPE string.
        DATA t185 TYPE REF TO zcl_lnt_abstract_object.
        DATA(t186) = t1.
        t185 = t186.
        DATA t187 TYPE string.
        DATA(t188) = t185.
        t187 = t188->name.
        t184 = t187.
        DATA(t189) = strlen( t184 ).
        t183 = t184.
        IF t183 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t183 TO UPPER CASE.
        ELSE.
          t183 = zlnt_runtime_uppe_91169605024d=>full( t183 ).
        ENDIF.
        t180 = xsdbool( t181 <> t183 ).
        IF t180 = abap_true.
          DATA(t190) = t3.
          DATA t191 TYPE REF TO zcl_lnt_issue.
          CLEAR t191.
          DATA(t192) = t2.
          DATA(t193) = CONV f( 1 ).
          DATA(t194) = |Name in XML does not match object|.
          DATA(t195) = VALUE string( ).
          DATA t196 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t196.
          DATA t197 TYPE string.
          DATA(t198) = |xml_consistency|.
          t197 = t198.
          DATA t199 TYPE string.
          DATA(t200) = |XML consistency|.
          t199 = t200.
          DATA t201 TYPE string.
          DATA(t202) = |Checks the consistency of main XML files|.
          t201 = t202.
          DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t203.
          DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t204.
          DATA(t205) = abap_true.
          IF t205 = abap_true.
            DATA(t206) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
            t206 = t206 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
            t206 = t206 && |ce table and field values\n* Transparent TABL objects have de|.
            t206 = t206 && |livery class and size category set\n* Lock parameter names in|.
            t206 = t206 && | ENQU objects are max 16 characters\n* Texts and translations|.
            t206 = t206 && | do not exceed maximum allowed length.|.
            DATA(t207) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t207->has = abap_true.
            t207->value = t206.
            t204 = t207.
          ELSE.
            DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t208.
            t204 = t208.
          ENDIF.
          t203 = t204.
          DATA t209 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t209.
          DATA t210 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t210.
          DATA(t211) = abap_true.
          IF t211 = abap_true.
            DATA t212 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t213 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t214 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t214.
            t213 = t214.
            DATA(t215) = t213.
            DATA(t216) = |Naming|.
            t215->load( ).
            APPEND t216 TO t215->items.
            t215->save( ).
            DATA(t217) = t213.
            DATA(t218) = |Syntax|.
            t217->load( ).
            APPEND t218 TO t217->items.
            t217->save( ).
            DATA(t219) = t213.
            t212 = t219.
            t210 = t212.
          ELSE.
            DATA t220 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t220.
            t210 = t220.
          ENDIF.
          t209 = t210.
          DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t222.
          t221 = t222.
          DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t224.
          t223 = t224.
          DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t226.
          t225 = t226.
          DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t228.
          t227 = t228.
          t196 = NEW zcl_lnt_irule_metadata( i_key = t197 i_title = t199 i_short_description = t201 i_bad_example = t221 i_good_example = t223 i_extended_information = t203 i_tags = t209 i_pragma = t225 i_pseudo_comment = t227 ).
          CREATE OBJECT t196->zlnt_view_ownkeys_b0e8086400eb.
          t196->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t229.
          IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t229 ).
          ENDIF.
          DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t230.
          IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t230 ).
          ENDIF.
          DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t231.
          IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t231 ).
          ENDIF.
          DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t232.
          IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t232 ).
          ENDIF.
          DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t233.
          IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t233 ).
          ENDIF.
          CREATE OBJECT t196->zlnt_json_ownkeys_70e5fd461788.
          t196->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t234) = |key|.
          DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t235.
          IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t234 p1 = t235 ).
          ENDIF.
          DATA(t236) = |title|.
          DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t237.
          IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t236 p1 = t237 ).
          ENDIF.
          DATA(t238) = |shortDescription|.
          DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t239.
          IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t238 p1 = t239 ).
          ENDIF.
          DATA(t240) = |extendedInformation|.
          DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t241.
          IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t240 p1 = t241 ).
          ENDIF.
          DATA(t242) = |tags|.
          DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t243.
          IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t242 p1 = t243 ).
          ENDIF.
          t195 = t196->key.
          DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t245) = me->conf.
          t244 = t245->zlnt_view_read_sr_15c06369f827( ).
          t191 = zcl_lnt_issue=>at_row( i_file = t192 i_row = t193 i_message_26cb = t194 i_key = t195 i_severity = t244 ).
          t190->load( ).
          APPEND t191 TO t190->items.
          t190->save( ).
        ELSE.
          DATA(t246) = VALUE abap_bool( ).
          DATA(t247) = VALUE abap_bool( ).
          DATA t248 TYPE REF TO zif_lnt_interface_definition.
          DATA t249 TYPE REF TO zif_lnt_interface_definition.
          DATA t250 TYPE REF TO zcl_lnt_ob_interface.
          DATA(t251) = t1.
          t250 = t251.
          DATA t252 TYPE REF TO zif_lnt_interface_definition.
          DATA(t253) = t250.
          t252 = t253->def.
          t249 = t252.
          t248 = t249.
          DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t255.
          t254 = t255.
          DATA(t256) = VALUE abap_bool( ).
          DATA(t257) = VALUE abap_bool( ).
          DATA(t258) = t248.
          IF t258 IS INITIAL.
            t257 = abap_true.
          ENDIF.
          t256 = xsdbool( t257 = abap_false ).
          t247 = t256.
          t246 = t247.
          IF t247 = abap_true.
            DATA(t259) = VALUE abap_bool( ).
            DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t260.
            DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t261.
            DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t262.
            DATA t263 TYPE REF TO zif_lnt_interface_definition.
            DATA t264 TYPE REF TO zif_lnt_interface_definition.
            DATA t265 TYPE REF TO zcl_lnt_ob_interface.
            DATA(t266) = t1.
            t265 = t266.
            DATA t267 TYPE REF TO zif_lnt_interface_definition.
            DATA(t268) = t265.
            t267 = t268->def.
            t264 = t267.
            t263 = t264.
            DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t269.
            DATA(t270) = VALUE abap_bool( ).
            DATA(t271) = t263.
            IF t271 IS INITIAL.
              t270 = abap_true.
            ENDIF.
            IF t270 = abap_true.
              DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t272.
              t269 = t272.
            ELSE.
              DATA t273 TYPE string.
              DATA t274 TYPE REF TO zif_lnt_interface_definition.
              DATA(t275) = t263.
              t274 = t275.
              t273 = t274->get_name( ).
              DATA(t276) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t276->has = abap_true.
              t276->value = t273.
              t269 = t276.
            ENDIF.
            t262 = t269.
            t261 = t262.
            DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t277.
            DATA(t278) = VALUE abap_bool( ).
            DATA(t279) = t261.
            IF t279 IS INITIAL.
              t278 = abap_true.
            ELSEIF t279->has = abap_false.
              t278 = abap_true.
            ENDIF.
            IF t278 = abap_true.
              DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t280.
              t277 = t280.
            ELSE.
              DATA t281 TYPE string.
              DATA t282 TYPE string.
              DATA(t283) = t261.
              t282 = t283->value.
              DATA(t284) = strlen( t282 ).
              t281 = t282.
              IF t281 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t281 TO UPPER CASE.
              ELSE.
                t281 = zlnt_runtime_uppe_91169605024d=>full( t281 ).
              ENDIF.
              DATA(t285) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t285->has = abap_true.
              t285->value = t281.
              t277 = t285.
            ENDIF.
            t260 = t277.
            DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t286.
            DATA(t287) = abap_true.
            IF t287 = abap_true.
              DATA t288 TYPE string.
              DATA t289 TYPE string.
              DATA(t290) = t5.
              t289 = t290->value.
              DATA(t291) = strlen( t289 ).
              t288 = t289.
              IF t288 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t288 TO UPPER CASE.
              ELSE.
                t288 = zlnt_runtime_uppe_91169605024d=>full( t288 ).
              ENDIF.
              DATA(t292) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t292->has = abap_true.
              t292->value = t288.
              t286 = t292.
            ELSE.
              DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t293.
              t286 = t293.
            ENDIF.
            DATA(t294) = VALUE abap_bool( ).
            DATA(t295) = VALUE abap_bool( ).
            IF t260 IS BOUND.
              t294 = t260->has.
            ENDIF.
            IF t286 IS BOUND.
              t295 = t286->has.
            ENDIF.
            IF t294 = t295.
              IF t294 = abap_false.
                t259 = abap_true.
              ELSEIF t260->value = t286->value.
                t259 = abap_true.
              ENDIF.
            ENDIF.
            IF t259 = abap_true.
              t259 = abap_false.
            ELSE.
              t259 = abap_true.
            ENDIF.
            t246 = t259.
          ENDIF.
          IF t246 = abap_true.
            DATA(t296) = t3.
            DATA t297 TYPE REF TO zcl_lnt_issue.
            CLEAR t297.
            DATA(t298) = t2.
            DATA(t299) = CONV f( 1 ).
            DATA(t300) = |Interface matching XML name not found in ABAP file|.
            DATA(t301) = VALUE string( ).
            DATA t302 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t302.
            DATA t303 TYPE string.
            DATA(t304) = |xml_consistency|.
            t303 = t304.
            DATA t305 TYPE string.
            DATA(t306) = |XML consistency|.
            t305 = t306.
            DATA t307 TYPE string.
            DATA(t308) = |Checks the consistency of main XML files|.
            t307 = t308.
            DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t309.
            DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t310.
            DATA(t311) = abap_true.
            IF t311 = abap_true.
              DATA(t312) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
              t312 = t312 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
              t312 = t312 && |ce table and field values\n* Transparent TABL objects have de|.
              t312 = t312 && |livery class and size category set\n* Lock parameter names in|.
              t312 = t312 && | ENQU objects are max 16 characters\n* Texts and translations|.
              t312 = t312 && | do not exceed maximum allowed length.|.
              DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t313->has = abap_true.
              t313->value = t312.
              t310 = t313.
            ELSE.
              DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t314.
              t310 = t314.
            ENDIF.
            t309 = t310.
            DATA t315 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t315.
            DATA t316 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t316.
            DATA(t317) = abap_true.
            IF t317 = abap_true.
              DATA t318 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t319 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t320 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t320.
              t319 = t320.
              DATA(t321) = t319.
              DATA(t322) = |Naming|.
              t321->load( ).
              APPEND t322 TO t321->items.
              t321->save( ).
              DATA(t323) = t319.
              DATA(t324) = |Syntax|.
              t323->load( ).
              APPEND t324 TO t323->items.
              t323->save( ).
              DATA(t325) = t319.
              t318 = t325.
              t316 = t318.
            ELSE.
              DATA t326 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t326.
              t316 = t326.
            ENDIF.
            t315 = t316.
            DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t328.
            t327 = t328.
            DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t330.
            t329 = t330.
            DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t332.
            t331 = t332.
            DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t334.
            t333 = t334.
            t302 = NEW zcl_lnt_irule_metadata( i_key = t303 i_title = t305 i_short_description = t307 i_bad_example = t327 i_good_example = t329 i_extended_information = t309 i_tags = t315 i_pragma = t331 i_pseudo_comment = t333 ).
            CREATE OBJECT t302->zlnt_view_ownkeys_b0e8086400eb.
            t302->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t335.
            IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t335 ).
            ENDIF.
            DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t336.
            IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t336 ).
            ENDIF.
            DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t337.
            IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t337 ).
            ENDIF.
            DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t338.
            IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t338 ).
            ENDIF.
            DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t339.
            IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t339 ).
            ENDIF.
            CREATE OBJECT t302->zlnt_json_ownkeys_70e5fd461788.
            t302->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t340) = |key|.
            DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t341.
            IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t340 p1 = t341 ).
            ENDIF.
            DATA(t342) = |title|.
            DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t343.
            IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t342 p1 = t343 ).
            ENDIF.
            DATA(t344) = |shortDescription|.
            DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t345.
            IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t344 p1 = t345 ).
            ENDIF.
            DATA(t346) = |extendedInformation|.
            DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t347.
            IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t346 p1 = t347 ).
            ENDIF.
            DATA(t348) = |tags|.
            DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t349.
            IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t348 p1 = t349 ).
            ENDIF.
            t301 = t302->key.
            DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t351) = me->conf.
            t350 = t351->zlnt_view_read_sr_15c06369f827( ).
            t297 = zcl_lnt_issue=>at_row( i_file = t298 i_row = t299 i_message_26cb = t300 i_key = t301 i_severity = t350 ).
            t296->load( ).
            APPEND t297 TO t296->items.
            t296->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t352) = t3.
    result = t352.

  ENDMETHOD.

  METHOD check_text_length.
    CONSTANTS range_parse_safe_prefix TYPE int8 VALUE '900719925474099'.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_file.
    DATA(t2) = i_field_name.
    DATA(t3) = i_text.
    DATA(t4) = i_max_length.
    DATA(t5) = i_lang.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
    ELSEIF t13->has = abap_false.
      t12 = abap_true.
    ENDIF.
    t7 = t12.
    t6 = t7.
    IF t7 = abap_false.
      DATA(t14) = VALUE abap_bool( ).
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t16) = t4.
      t15 = t16.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      t17 = t18.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = t15.
      IF t20 IS INITIAL.
        t19 = abap_true.
      ENDIF.
      t14 = t19.
      t6 = t14.
    ENDIF.
    IF t6 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_issue.
      CLEAR t21.
      result = t21.
      RETURN.
    ENDIF.
    DATA(t22) = VALUE f( ).
    DATA(t23) = VALUE f( ).
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = VALUE string( ).
    DATA(t26) = t4.
    IF t26 IS BOUND.
      t25 = t26->type_of( ).
      IF t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t26->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
        t25 = `function`.
      ENDIF.
    ELSE.
      t25 = `undefined`.
    ENDIF.
    DATA(t27) = |number|.
    t24 = xsdbool( t25 = t27 ).
    IF t24 = abap_true.
      DATA t28 TYPE f.
      DATA(t29) = t4.
      t28 = t29->as_number( ).
      t23 = t28.
    ELSE.
      DATA(t30) = VALUE f( ).
      DATA t31 TYPE string.
      DATA(t32) = t4.
      t31 = t32->as_string( ).
      DATA t33 TYPE i.
      DATA t34 TYPE i.
      DATA(t35) = VALUE string( ).
      DATA t36 TYPE abap_bool.
      DATA t37 TYPE abap_bool.
      DATA t38 TYPE int8.
      DATA(t39) = VALUE i( ).
      t33 = 0.
      t38 = 0.
      t36 = abap_false.
      t37 = abap_false.
      t34 = strlen( t31 ).
      DATA(t40) = VALUE i( ).
      DATA(t41) = VALUE i( ).
      DATA(t42) = VALUE string( ).
      WHILE t33 < t34.
        t41 = t33.
        t42 = t31+t41(1).
        DATA t43 TYPE c LENGTH 1.
        CLEAR t43.
        DATA(t44) = VALUE xstring( ).
        DATA t45 TYPE x LENGTH 1.
        CLEAR t45.
        DATA t46 TYPE x LENGTH 1.
        CLEAR t46.
        DATA(t47) = VALUE i( ).
        t43 = t42.
        t40 = cl_abap_conv_out_ce=>uccpi( t43 ).
        IF t40 >= 255.
          IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
            zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t42 IMPORTING buffer = t44 ).
          t45 = t44(1).
          t46 = t44+1(1).
          t40 = t45.
          t47 = t46.
          t40 = t40 + t47 * 256.
        ENDIF.
        IF t40 = 9 OR t40 = 10 OR t40 = 11 OR t40 = 12 OR t40 = 13 OR t40 = 32 OR t40 = 160 OR t40 = 5760 OR t40 = 8232 OR t40 = 8233 OR t40 = 8239 OR t40 = 8287 OR t40 = 12288 OR t40 = 65279 OR t40 >= 8192 AND t40 <= 8202.
          t33 = t33 + 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      IF t33 < t34.
        t35 = t31+t33(1).
        IF t35 = '-' OR t35 = '+'.
          t36 = xsdbool( t35 = '-' ).
          t33 = t33 + 1.
        ENDIF.
      ENDIF.
      WHILE t33 < t34.
        t35 = t31+t33(1).
        IF t35 CN '0123456789' OR t35 = ` `.
          EXIT.
        ENDIF.
        t39 = t35.
        IF t38 > range_parse_safe_prefix OR ( t38 = range_parse_safe_prefix AND t39 > 1 ).
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t38 = t38 * 10 + t39.
        t37 = abap_true.
        t33 = t33 + 1.
      ENDWHILE.
      IF t37 = abap_false OR ( t36 = abap_true AND t38 = 0 ).
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      IF t36 = abap_true.
        t38 = 0 - t38.
      ENDIF.
      t30 = t38.
      t23 = t30.
    ENDIF.
    t22 = t23.
    DATA t48 TYPE abap_bool.
    DATA t49 TYPE f.
    DATA t50 TYPE i.
    DATA t51 TYPE string.
    DATA(t52) = t3.
    t51 = t52->value.
    DATA(t53) = strlen( t51 ).
    t50 = t53.
    t49 = t50.
    DATA(t54) = t22.
    t48 = xsdbool( t49 > t54 ).
    IF t48 = abap_true.
      DATA(t55) = VALUE string( ).
      DATA(t56) = VALUE string( ).
      DATA(t57) = VALUE abap_bool( ).
      DATA(t58) = t5.
      IF t58 IS BOUND.
        IF t58->has = abap_true.
          t57 = xsdbool( strlen( t58->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t57 = abap_true.
        DATA t59 TYPE string.
        DATA t60 TYPE string.
        DATA(t61) = |[|.
        DATA t62 TYPE string.
        DATA(t63) = t5.
        t62 = t63->value.
        DATA(t64) = strlen( t61 ).
        t60 = |{ t61 }{ t62 }|.
        DATA(t65) = |] |.
        DATA(t66) = strlen( t60 ).
        t59 = |{ t60 }{ t65 }|.
        t56 = t59.
      ELSE.
        DATA(t67) = ||.
        t56 = t67.
      ENDIF.
      t55 = t56.
      DATA t68 TYPE REF TO zcl_lnt_issue.
      CLEAR t68.
      DATA(t69) = abap_true.
      IF t69 = abap_true.
        DATA t70 TYPE REF TO zcl_lnt_issue.
        CLEAR t70.
        DATA(t71) = t1.
        DATA(t72) = CONV f( 1 ).
        DATA(t73) = VALUE string( ).
        DATA(t74) = VALUE string( ).
        DATA(t75) = VALUE string( ).
        DATA(t76) = VALUE string( ).
        DATA t77 TYPE string.
        DATA t78 TYPE string.
        DATA t79 TYPE string.
        DATA t80 TYPE string.
        DATA t81 TYPE string.
        DATA t82 TYPE string.
        DATA(t83) = ||.
        DATA(t84) = t55.
        DATA(t85) = strlen( t83 ).
        t82 = |{ t83 }{ t84 }|.
        DATA(t86) = ||.
        DATA(t87) = strlen( t82 ).
        t81 = |{ t82 }{ t86 }|.
        DATA(t88) = t2.
        DATA(t89) = strlen( t81 ).
        t80 = |{ t81 }{ t88 }|.
        DATA(t90) = | "|.
        DATA(t91) = strlen( t80 ).
        t79 = |{ t80 }{ t90 }|.
        DATA t92 TYPE string.
        DATA(t93) = t3.
        t92 = t93->value.
        DATA(t94) = strlen( t79 ).
        t78 = |{ t79 }{ t92 }|.
        DATA(t95) = |" exceeds maximum length of |.
        DATA(t96) = strlen( t78 ).
        t77 = |{ t78 }{ t95 }|.
        DATA(t97) = VALUE string( ).
        DATA(t98) = t22.
        IF t98 <> trunc( t98 ) OR t98 > range_safe_integer OR t98 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t99) = CONV int8( t98 ).
        t97 = |{ t99 }|.
        DATA(t100) = strlen( t77 ).
        t76 = |{ t77 }{ t97 }|.
        DATA(t101) = | characters (actual: |.
        DATA(t102) = strlen( t76 ).
        t75 = |{ t76 }{ t101 }|.
        DATA t103 TYPE string.
        DATA t104 TYPE i.
        DATA t105 TYPE string.
        DATA(t106) = t3.
        t105 = t106->value.
        DATA(t107) = strlen( t105 ).
        t104 = t107.
        t103 = |{ t104 }|.
        DATA(t108) = strlen( t75 ).
        t74 = |{ t75 }{ t103 }|.
        DATA(t109) = |)|.
        DATA(t110) = strlen( t74 ).
        t73 = |{ t74 }{ t109 }|.
        DATA(t111) = VALUE string( ).
        DATA t112 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t112.
        DATA t113 TYPE string.
        DATA(t114) = |xml_consistency|.
        t113 = t114.
        DATA t115 TYPE string.
        DATA(t116) = |XML consistency|.
        t115 = t116.
        DATA t117 TYPE string.
        DATA(t118) = |Checks the consistency of main XML files|.
        t117 = t118.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t119.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t120.
        DATA(t121) = abap_true.
        IF t121 = abap_true.
          DATA(t122) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t122 = t122 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t122 = t122 && |ce table and field values\n* Transparent TABL objects have de|.
          t122 = t122 && |livery class and size category set\n* Lock parameter names in|.
          t122 = t122 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t122 = t122 && | do not exceed maximum allowed length.|.
          DATA(t123) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t123->has = abap_true.
          t123->value = t122.
          t120 = t123.
        ELSE.
          DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t124.
          t120 = t124.
        ENDIF.
        t119 = t120.
        DATA t125 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t125.
        DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t126.
        DATA(t127) = abap_true.
        IF t127 = abap_true.
          DATA t128 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t129 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t130 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t130.
          t129 = t130.
          DATA(t131) = t129.
          DATA(t132) = |Naming|.
          t131->load( ).
          APPEND t132 TO t131->items.
          t131->save( ).
          DATA(t133) = t129.
          DATA(t134) = |Syntax|.
          t133->load( ).
          APPEND t134 TO t133->items.
          t133->save( ).
          DATA(t135) = t129.
          t128 = t135.
          t126 = t128.
        ELSE.
          DATA t136 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t136.
          t126 = t136.
        ENDIF.
        t125 = t126.
        DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t138.
        t137 = t138.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t140.
        t139 = t140.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t142.
        t141 = t142.
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t144.
        t143 = t144.
        t112 = NEW zcl_lnt_irule_metadata( i_key = t113 i_title = t115 i_short_description = t117 i_bad_example = t137 i_good_example = t139 i_extended_information = t119 i_tags = t125 i_pragma = t141 i_pseudo_comment = t143 ).
        CREATE OBJECT t112->zlnt_view_ownkeys_b0e8086400eb.
        t112->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t145.
        IF t112->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t145 ).
        ENDIF.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t146.
        IF t112->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t146 ).
        ENDIF.
        DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t147.
        IF t112->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t147 ).
        ENDIF.
        DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t148.
        IF t112->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t148 ).
        ENDIF.
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t149.
        IF t112->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t149 ).
        ENDIF.
        CREATE OBJECT t112->zlnt_json_ownkeys_70e5fd461788.
        t112->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t150) = |key|.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t150 p1 = t151 ).
        ENDIF.
        DATA(t152) = |title|.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t152 p1 = t153 ).
        ENDIF.
        DATA(t154) = |shortDescription|.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
        ENDIF.
        DATA(t156) = |extendedInformation|.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
        ENDIF.
        DATA(t158) = |tags|.
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
        ENDIF.
        t111 = t112->key.
        DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t161) = me->conf.
        t160 = t161->zlnt_view_read_sr_b4bcf11cce6c( ).
        t70 = zcl_lnt_issue=>at_row( i_file = t71 i_row = t72 i_message_26cb = t73 i_key = t111 i_severity = t160 ).
        t68 = t70.
      ELSE.
        DATA t162 TYPE REF TO zcl_lnt_issue.
        CLEAR t162.
        t68 = t162.
      ENDIF.
      result = t68.
      RETURN.
    ENDIF.
    DATA t163 TYPE REF TO zcl_lnt_issue.
    CLEAR t163.
    result = t163.

  ENDMETHOD.

  METHOD run_data_element.
    CONSTANTS range_parse_safe_prefix TYPE int8 VALUE '900719925474099'.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_shape_66add1d1.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_shape_66add1d1.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_data_element.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE REF TO zcl_lnt_shape_66add1d1.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t11) = t7.
    t10 = t11->pr_in_src_obj_dt_elm_ts_dt_elm( ).
    DATA t12 TYPE REF TO zcl_lnt_shape_66add1d1.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA t14 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA(t15) = t7.
    t14 = t15->parsed_xml.
    t13 = t14.
    DATA t16 TYPE REF TO zcl_lnt_shape_66add1d1.
    CLEAR t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = t13.
    IF t18 IS INITIAL.
      t17 = abap_true.
    ENDIF.
    IF t17 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_shape_66add1d1.
      CLEAR t19.
      t16 = t19.
    ELSE.
      DATA t20 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA t21 TYPE REF TO zcl_lnt_shape_50142cbd.
      DATA(t22) = t13.
      t21 = t22.
      t20 = t21->texts.
      t16 = t20.
    ENDIF.
    t12 = t16.
    t9 = t12.
    t6 = t9.
    t5 = t6.
    DATA t23 TYPE REF TO zcl_lnt_shape_66add1d1.
    CLEAR t23.
    DATA t24 TYPE REF TO zcl_lnt_shape_66add1d1.
    CLEAR t24.
    DATA t25 TYPE REF TO zcl_lnt_data_element.
    DATA(t26) = t1.
    t25 = t26.
    DATA t27 TYPE REF TO zcl_lnt_shape_66add1d1.
    CLEAR t27.
    DATA t28 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t29) = t25.
    t28 = t29->pr_in_src_obj_dt_elm_ts_dt_elm( ).
    DATA t30 TYPE REF TO zcl_lnt_shape_66add1d1.
    CLEAR t30.
    DATA t31 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA t32 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA(t33) = t25.
    t32 = t33->parsed_xml.
    t31 = t32.
    DATA t34 TYPE REF TO zcl_lnt_shape_66add1d1.
    CLEAR t34.
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = t31.
    IF t36 IS INITIAL.
      t35 = abap_true.
    ENDIF.
    IF t35 = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_shape_66add1d1.
      CLEAR t37.
      t34 = t37.
    ELSE.
      DATA t38 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA t39 TYPE REF TO zcl_lnt_shape_50142cbd.
      DATA(t40) = t31.
      t39 = t40.
      t38 = t39->text_max_lengths.
      t34 = t38.
    ENDIF.
    t30 = t34.
    t27 = t30.
    t24 = t27.
    t23 = t24.
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = VALUE abap_bool( ).
    DATA(t43) = VALUE abap_bool( ).
    DATA(t44) = VALUE abap_bool( ).
    DATA(t45) = VALUE abap_bool( ).
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t47.
    DATA t48 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA(t49) = t5.
    t48 = t49.
    DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t50.
    DATA(t51) = VALUE abap_bool( ).
    DATA(t52) = t48.
    IF t52 IS INITIAL.
      t51 = abap_true.
    ENDIF.
    IF t51 = abap_true.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t53.
      t50 = t53.
    ELSE.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t55 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t56) = t48.
      t55 = t56.
      t54 = t55->short.
      t50 = t54.
    ENDIF.
    t47 = t50.
    t46 = t47.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    t57 = t58.
    DATA(t59) = VALUE abap_bool( ).
    DATA(t60) = VALUE abap_bool( ).
    DATA(t61) = t46.
    IF t61 IS INITIAL.
      t60 = abap_true.
    ELSEIF t61->has = abap_false.
      t60 = abap_true.
    ENDIF.
    t59 = xsdbool( t60 = abap_false ).
    t45 = t59.
    t44 = t45.
    IF t45 = abap_false.
      DATA(t62) = VALUE abap_bool( ).
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t63.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t64.
      DATA t65 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t66) = t5.
      t65 = t66.
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t67.
      DATA(t68) = VALUE abap_bool( ).
      DATA(t69) = t65.
      IF t69 IS INITIAL.
        t68 = abap_true.
      ENDIF.
      IF t68 = abap_true.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t70.
        t67 = t70.
      ELSE.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t72 TYPE REF TO zcl_lnt_shape_66add1d1.
        DATA(t73) = t65.
        t72 = t73.
        t71 = t72->medium.
        t67 = t71.
      ENDIF.
      t64 = t67.
      t63 = t64.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      t74 = t75.
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = t63.
      IF t78 IS INITIAL.
        t77 = abap_true.
      ELSEIF t78->has = abap_false.
        t77 = abap_true.
      ENDIF.
      t76 = xsdbool( t77 = abap_false ).
      t62 = t76.
      t44 = t62.
    ENDIF.
    t43 = t44.
    IF t44 = abap_false.
      DATA(t79) = VALUE abap_bool( ).
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t80.
      DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t81.
      DATA t82 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t83) = t5.
      t82 = t83.
      DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t84.
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = t82.
      IF t86 IS INITIAL.
        t85 = abap_true.
      ENDIF.
      IF t85 = abap_true.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t87.
        t84 = t87.
      ELSE.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t89 TYPE REF TO zcl_lnt_shape_66add1d1.
        DATA(t90) = t82.
        t89 = t90.
        t88 = t89->long.
        t84 = t88.
      ENDIF.
      t81 = t84.
      t80 = t81.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      t91 = t92.
      DATA(t93) = VALUE abap_bool( ).
      DATA(t94) = VALUE abap_bool( ).
      DATA(t95) = t80.
      IF t95 IS INITIAL.
        t94 = abap_true.
      ELSEIF t95->has = abap_false.
        t94 = abap_true.
      ENDIF.
      t93 = xsdbool( t94 = abap_false ).
      t79 = t93.
      t43 = t79.
    ENDIF.
    t42 = t43.
    IF t43 = abap_false.
      DATA(t96) = VALUE abap_bool( ).
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t97.
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t98.
      DATA t99 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t100) = t5.
      t99 = t100.
      DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t101.
      DATA(t102) = VALUE abap_bool( ).
      DATA(t103) = t99.
      IF t103 IS INITIAL.
        t102 = abap_true.
      ENDIF.
      IF t102 = abap_true.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t104.
        t101 = t104.
      ELSE.
        DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t106 TYPE REF TO zcl_lnt_shape_66add1d1.
        DATA(t107) = t99.
        t106 = t107.
        t105 = t106->heading.
        t101 = t105.
      ENDIF.
      t98 = t101.
      t97 = t98.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t109.
      t108 = t109.
      DATA(t110) = VALUE abap_bool( ).
      DATA(t111) = VALUE abap_bool( ).
      DATA(t112) = t97.
      IF t112 IS INITIAL.
        t111 = abap_true.
      ELSEIF t112->has = abap_false.
        t111 = abap_true.
      ENDIF.
      t110 = xsdbool( t111 = abap_false ).
      t96 = t110.
      t42 = t96.
    ENDIF.
    t41 = t42.
    DATA(t113) = VALUE abap_bool( ).
    DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t115.
    DATA t116 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA(t117) = t5.
    t116 = t117.
    DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t118.
    DATA(t119) = VALUE abap_bool( ).
    DATA(t120) = t116.
    IF t120 IS INITIAL.
      t119 = abap_true.
    ENDIF.
    IF t119 = abap_true.
      DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t121.
      t118 = t121.
    ELSE.
      DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t123 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t124) = t116.
      t123 = t124.
      t122 = t123->short.
      t118 = t122.
    ENDIF.
    t115 = t118.
    t114 = t115.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    t125 = t126.
    DATA(t127) = VALUE abap_bool( ).
    DATA(t128) = VALUE abap_bool( ).
    DATA(t129) = t114.
    IF t129 IS INITIAL.
      t128 = abap_true.
    ELSEIF t129->has = abap_false.
      t128 = abap_true.
    ENDIF.
    t127 = xsdbool( t128 = abap_false ).
    t113 = t127.
    IF t113 = abap_true.
      DATA t130 TYPE REF TO zcl_lnt_issue.
      CLEAR t130.
      DATA t131 TYPE REF TO zcl_lnt_issue.
      CLEAR t131.
      DATA t132 TYPE REF TO zif_lnt_file.
      DATA(t133) = t2.
      t132 = t133.
      DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t134.
      DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t135.
      DATA t136 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t137) = t23.
      t136 = t137.
      DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t138.
      DATA(t139) = VALUE abap_bool( ).
      DATA(t140) = t136.
      IF t140 IS INITIAL.
        t139 = abap_true.
      ENDIF.
      IF t139 = abap_true.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t141.
        t138 = t141.
      ELSE.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t143 TYPE REF TO zcl_lnt_shape_66add1d1.
        DATA(t144) = t136.
        t143 = t144.
        t142 = t143->short.
        t138 = t142.
      ENDIF.
      t135 = t138.
      t134 = t135.
      DATA t145 TYPE REF TO zcl_lnt_issue.
      CLEAR t145.
      DATA(t146) = VALUE abap_bool( ).
      DATA(t147) = VALUE abap_bool( ).
      DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t149) = t134.
      t148 = t149.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t151.
      t150 = t151.
      DATA(t152) = VALUE abap_bool( ).
      DATA(t153) = t148.
      IF t153 IS INITIAL.
        t152 = abap_true.
      ELSEIF t153->has = abap_false.
        t152 = abap_true.
      ENDIF.
      t147 = t152.
      t146 = t147.
      IF t147 = abap_false.
        DATA t154 TYPE abap_bool.
        DATA t155 TYPE string.
        DATA(t156) = t134.
        t155 = t156->value.
        DATA(t157) = ||.
        t154 = xsdbool( t155 = t157 ).
        t146 = t154.
      ENDIF.
      IF t146 = abap_true.
        DATA t158 TYPE REF TO zcl_lnt_issue.
        CLEAR t158.
        DATA(t159) = abap_true.
        IF t159 = abap_true.
          DATA t160 TYPE REF TO zcl_lnt_issue.
          CLEAR t160.
          DATA(t161) = t132.
          DATA(t162) = CONV f( 1 ).
          DATA t163 TYPE string.
          DATA t164 TYPE string.
          DATA(t165) = |Missing required field |.
          DATA(t166) = |SCRLEN1|.
          DATA(t167) = strlen( t165 ).
          t164 = |{ t165 }{ t166 }|.
          DATA(t168) = | in DD04V|.
          DATA(t169) = strlen( t164 ).
          t163 = |{ t164 }{ t168 }|.
          DATA(t170) = VALUE string( ).
          DATA t171 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t171.
          DATA t172 TYPE string.
          DATA(t173) = |xml_consistency|.
          t172 = t173.
          DATA t174 TYPE string.
          DATA(t175) = |XML consistency|.
          t174 = t175.
          DATA t176 TYPE string.
          DATA(t177) = |Checks the consistency of main XML files|.
          t176 = t177.
          DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t178.
          DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t179.
          DATA(t180) = abap_true.
          IF t180 = abap_true.
            DATA(t181) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
            t181 = t181 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
            t181 = t181 && |ce table and field values\n* Transparent TABL objects have de|.
            t181 = t181 && |livery class and size category set\n* Lock parameter names in|.
            t181 = t181 && | ENQU objects are max 16 characters\n* Texts and translations|.
            t181 = t181 && | do not exceed maximum allowed length.|.
            DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t182->has = abap_true.
            t182->value = t181.
            t179 = t182.
          ELSE.
            DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t183.
            t179 = t183.
          ENDIF.
          t178 = t179.
          DATA t184 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t184.
          DATA t185 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t185.
          DATA(t186) = abap_true.
          IF t186 = abap_true.
            DATA t187 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t188 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t189 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t189.
            t188 = t189.
            DATA(t190) = t188.
            DATA(t191) = |Naming|.
            t190->load( ).
            APPEND t191 TO t190->items.
            t190->save( ).
            DATA(t192) = t188.
            DATA(t193) = |Syntax|.
            t192->load( ).
            APPEND t193 TO t192->items.
            t192->save( ).
            DATA(t194) = t188.
            t187 = t194.
            t185 = t187.
          ELSE.
            DATA t195 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t195.
            t185 = t195.
          ENDIF.
          t184 = t185.
          DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t197.
          t196 = t197.
          DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t199.
          t198 = t199.
          DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t201.
          t200 = t201.
          DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t203.
          t202 = t203.
          t171 = NEW zcl_lnt_irule_metadata( i_key = t172 i_title = t174 i_short_description = t176 i_bad_example = t196 i_good_example = t198 i_extended_information = t178 i_tags = t184 i_pragma = t200 i_pseudo_comment = t202 ).
          CREATE OBJECT t171->zlnt_view_ownkeys_b0e8086400eb.
          t171->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t204.
          IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t204 ).
          ENDIF.
          DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t205.
          IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t205 ).
          ENDIF.
          DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t206.
          IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t206 ).
          ENDIF.
          DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t207.
          IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t207 ).
          ENDIF.
          DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t208.
          IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t208 ).
          ENDIF.
          CREATE OBJECT t171->zlnt_json_ownkeys_70e5fd461788.
          t171->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t209) = |key|.
          DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t210.
          IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t209 p1 = t210 ).
          ENDIF.
          DATA(t211) = |title|.
          DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t212.
          IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t211 p1 = t212 ).
          ENDIF.
          DATA(t213) = |shortDescription|.
          DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t214.
          IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t213 p1 = t214 ).
          ENDIF.
          DATA(t215) = |extendedInformation|.
          DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t216.
          IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t215 p1 = t216 ).
          ENDIF.
          DATA(t217) = |tags|.
          DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t218.
          IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t217 p1 = t218 ).
          ENDIF.
          t170 = t171->key.
          DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t220) = me->conf.
          t219 = t220->zlnt_view_read_sr_d3e3c311c261( ).
          t160 = zcl_lnt_issue=>at_row( i_file = t161 i_row = t162 i_message_26cb = t163 i_key = t170 i_severity = t219 ).
          t158 = t160.
        ELSE.
          DATA t221 TYPE REF TO zcl_lnt_issue.
          CLEAR t221.
          t158 = t221.
        ENDIF.
        t145 = t158.
      ELSE.
        DATA t222 TYPE REF TO zcl_lnt_issue.
        CLEAR t222.
        t145 = t222.
      ENDIF.
      t131 = t145.
      t130 = t131.
      DATA t223 TYPE abap_bool.
      DATA(t224) = t130.
      t223 = xsdbool( t224 IS BOUND ).
      IF t223 = abap_true.
        DATA(t225) = t3.
        DATA t226 TYPE REF TO zcl_lnt_issue.
        DATA(t227) = t130.
        t226 = t227.
        t225->load( ).
        APPEND t226 TO t225->items.
        t225->save( ).
      ENDIF.
    ENDIF.
    DATA(t228) = VALUE abap_bool( ).
    DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t229.
    DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t230.
    DATA t231 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA(t232) = t5.
    t231 = t232.
    DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t233.
    DATA(t234) = VALUE abap_bool( ).
    DATA(t235) = t231.
    IF t235 IS INITIAL.
      t234 = abap_true.
    ENDIF.
    IF t234 = abap_true.
      DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t236.
      t233 = t236.
    ELSE.
      DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t238 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t239) = t231.
      t238 = t239.
      t237 = t238->medium.
      t233 = t237.
    ENDIF.
    t230 = t233.
    t229 = t230.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    t240 = t241.
    DATA(t242) = VALUE abap_bool( ).
    DATA(t243) = VALUE abap_bool( ).
    DATA(t244) = t229.
    IF t244 IS INITIAL.
      t243 = abap_true.
    ELSEIF t244->has = abap_false.
      t243 = abap_true.
    ENDIF.
    t242 = xsdbool( t243 = abap_false ).
    t228 = t242.
    IF t228 = abap_true.
      DATA t245 TYPE REF TO zcl_lnt_issue.
      CLEAR t245.
      DATA t246 TYPE REF TO zcl_lnt_issue.
      CLEAR t246.
      DATA t247 TYPE REF TO zif_lnt_file.
      DATA(t248) = t2.
      t247 = t248.
      DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t249.
      DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t250.
      DATA t251 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t252) = t23.
      t251 = t252.
      DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t253.
      DATA(t254) = VALUE abap_bool( ).
      DATA(t255) = t251.
      IF t255 IS INITIAL.
        t254 = abap_true.
      ENDIF.
      IF t254 = abap_true.
        DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t256.
        t253 = t256.
      ELSE.
        DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t258 TYPE REF TO zcl_lnt_shape_66add1d1.
        DATA(t259) = t251.
        t258 = t259.
        t257 = t258->medium.
        t253 = t257.
      ENDIF.
      t250 = t253.
      t249 = t250.
      DATA t260 TYPE REF TO zcl_lnt_issue.
      CLEAR t260.
      DATA(t261) = VALUE abap_bool( ).
      DATA(t262) = VALUE abap_bool( ).
      DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t264) = t249.
      t263 = t264.
      DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t266.
      t265 = t266.
      DATA(t267) = VALUE abap_bool( ).
      DATA(t268) = t263.
      IF t268 IS INITIAL.
        t267 = abap_true.
      ELSEIF t268->has = abap_false.
        t267 = abap_true.
      ENDIF.
      t262 = t267.
      t261 = t262.
      IF t262 = abap_false.
        DATA t269 TYPE abap_bool.
        DATA t270 TYPE string.
        DATA(t271) = t249.
        t270 = t271->value.
        DATA(t272) = ||.
        t269 = xsdbool( t270 = t272 ).
        t261 = t269.
      ENDIF.
      IF t261 = abap_true.
        DATA t273 TYPE REF TO zcl_lnt_issue.
        CLEAR t273.
        DATA(t274) = abap_true.
        IF t274 = abap_true.
          DATA t275 TYPE REF TO zcl_lnt_issue.
          CLEAR t275.
          DATA(t276) = t247.
          DATA(t277) = CONV f( 1 ).
          DATA t278 TYPE string.
          DATA t279 TYPE string.
          DATA(t280) = |Missing required field |.
          DATA(t281) = |SCRLEN2|.
          DATA(t282) = strlen( t280 ).
          t279 = |{ t280 }{ t281 }|.
          DATA(t283) = | in DD04V|.
          DATA(t284) = strlen( t279 ).
          t278 = |{ t279 }{ t283 }|.
          DATA(t285) = VALUE string( ).
          DATA t286 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t286.
          DATA t287 TYPE string.
          DATA(t288) = |xml_consistency|.
          t287 = t288.
          DATA t289 TYPE string.
          DATA(t290) = |XML consistency|.
          t289 = t290.
          DATA t291 TYPE string.
          DATA(t292) = |Checks the consistency of main XML files|.
          t291 = t292.
          DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t293.
          DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t294.
          DATA(t295) = abap_true.
          IF t295 = abap_true.
            DATA(t296) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
            t296 = t296 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
            t296 = t296 && |ce table and field values\n* Transparent TABL objects have de|.
            t296 = t296 && |livery class and size category set\n* Lock parameter names in|.
            t296 = t296 && | ENQU objects are max 16 characters\n* Texts and translations|.
            t296 = t296 && | do not exceed maximum allowed length.|.
            DATA(t297) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t297->has = abap_true.
            t297->value = t296.
            t294 = t297.
          ELSE.
            DATA t298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t298.
            t294 = t298.
          ENDIF.
          t293 = t294.
          DATA t299 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t299.
          DATA t300 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t300.
          DATA(t301) = abap_true.
          IF t301 = abap_true.
            DATA t302 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t303 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t304 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t304.
            t303 = t304.
            DATA(t305) = t303.
            DATA(t306) = |Naming|.
            t305->load( ).
            APPEND t306 TO t305->items.
            t305->save( ).
            DATA(t307) = t303.
            DATA(t308) = |Syntax|.
            t307->load( ).
            APPEND t308 TO t307->items.
            t307->save( ).
            DATA(t309) = t303.
            t302 = t309.
            t300 = t302.
          ELSE.
            DATA t310 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t310.
            t300 = t310.
          ENDIF.
          t299 = t300.
          DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t312.
          t311 = t312.
          DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t314.
          t313 = t314.
          DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t316.
          t315 = t316.
          DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t318.
          t317 = t318.
          t286 = NEW zcl_lnt_irule_metadata( i_key = t287 i_title = t289 i_short_description = t291 i_bad_example = t311 i_good_example = t313 i_extended_information = t293 i_tags = t299 i_pragma = t315 i_pseudo_comment = t317 ).
          CREATE OBJECT t286->zlnt_view_ownkeys_b0e8086400eb.
          t286->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t319.
          IF t286->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t286->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t319 ).
          ENDIF.
          DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t320.
          IF t286->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t286->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t320 ).
          ENDIF.
          DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t321.
          IF t286->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t286->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t321 ).
          ENDIF.
          DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t322.
          IF t286->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t286->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t322 ).
          ENDIF.
          DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t323.
          IF t286->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t286->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t323 ).
          ENDIF.
          CREATE OBJECT t286->zlnt_json_ownkeys_70e5fd461788.
          t286->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t324) = |key|.
          DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t325.
          IF t286->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t286->zlnt_json_ownkeys_70e5fd461788->put( p0 = t324 p1 = t325 ).
          ENDIF.
          DATA(t326) = |title|.
          DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t327.
          IF t286->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t286->zlnt_json_ownkeys_70e5fd461788->put( p0 = t326 p1 = t327 ).
          ENDIF.
          DATA(t328) = |shortDescription|.
          DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t329.
          IF t286->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t286->zlnt_json_ownkeys_70e5fd461788->put( p0 = t328 p1 = t329 ).
          ENDIF.
          DATA(t330) = |extendedInformation|.
          DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t331.
          IF t286->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t286->zlnt_json_ownkeys_70e5fd461788->put( p0 = t330 p1 = t331 ).
          ENDIF.
          DATA(t332) = |tags|.
          DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t333.
          IF t286->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t286->zlnt_json_ownkeys_70e5fd461788->put( p0 = t332 p1 = t333 ).
          ENDIF.
          t285 = t286->key.
          DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t335) = me->conf.
          t334 = t335->zlnt_view_read_sr_d3e3c311c261( ).
          t275 = zcl_lnt_issue=>at_row( i_file = t276 i_row = t277 i_message_26cb = t278 i_key = t285 i_severity = t334 ).
          t273 = t275.
        ELSE.
          DATA t336 TYPE REF TO zcl_lnt_issue.
          CLEAR t336.
          t273 = t336.
        ENDIF.
        t260 = t273.
      ELSE.
        DATA t337 TYPE REF TO zcl_lnt_issue.
        CLEAR t337.
        t260 = t337.
      ENDIF.
      t246 = t260.
      t245 = t246.
      DATA t338 TYPE abap_bool.
      DATA(t339) = t245.
      t338 = xsdbool( t339 IS BOUND ).
      IF t338 = abap_true.
        DATA(t340) = t3.
        DATA t341 TYPE REF TO zcl_lnt_issue.
        DATA(t342) = t245.
        t341 = t342.
        t340->load( ).
        APPEND t341 TO t340->items.
        t340->save( ).
      ENDIF.
    ENDIF.
    DATA(t343) = VALUE abap_bool( ).
    DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t344.
    DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t345.
    DATA t346 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA(t347) = t5.
    t346 = t347.
    DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t348.
    DATA(t349) = VALUE abap_bool( ).
    DATA(t350) = t346.
    IF t350 IS INITIAL.
      t349 = abap_true.
    ENDIF.
    IF t349 = abap_true.
      DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t351.
      t348 = t351.
    ELSE.
      DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t353 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t354) = t346.
      t353 = t354.
      t352 = t353->long.
      t348 = t352.
    ENDIF.
    t345 = t348.
    t344 = t345.
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t356.
    t355 = t356.
    DATA(t357) = VALUE abap_bool( ).
    DATA(t358) = VALUE abap_bool( ).
    DATA(t359) = t344.
    IF t359 IS INITIAL.
      t358 = abap_true.
    ELSEIF t359->has = abap_false.
      t358 = abap_true.
    ENDIF.
    t357 = xsdbool( t358 = abap_false ).
    t343 = t357.
    IF t343 = abap_true.
      DATA t360 TYPE REF TO zcl_lnt_issue.
      CLEAR t360.
      DATA t361 TYPE REF TO zcl_lnt_issue.
      CLEAR t361.
      DATA t362 TYPE REF TO zif_lnt_file.
      DATA(t363) = t2.
      t362 = t363.
      DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t364.
      DATA t365 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t365.
      DATA t366 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t367) = t23.
      t366 = t367.
      DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t368.
      DATA(t369) = VALUE abap_bool( ).
      DATA(t370) = t366.
      IF t370 IS INITIAL.
        t369 = abap_true.
      ENDIF.
      IF t369 = abap_true.
        DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t371.
        t368 = t371.
      ELSE.
        DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t373 TYPE REF TO zcl_lnt_shape_66add1d1.
        DATA(t374) = t366.
        t373 = t374.
        t372 = t373->long.
        t368 = t372.
      ENDIF.
      t365 = t368.
      t364 = t365.
      DATA t375 TYPE REF TO zcl_lnt_issue.
      CLEAR t375.
      DATA(t376) = VALUE abap_bool( ).
      DATA(t377) = VALUE abap_bool( ).
      DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t379) = t364.
      t378 = t379.
      DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t381.
      t380 = t381.
      DATA(t382) = VALUE abap_bool( ).
      DATA(t383) = t378.
      IF t383 IS INITIAL.
        t382 = abap_true.
      ELSEIF t383->has = abap_false.
        t382 = abap_true.
      ENDIF.
      t377 = t382.
      t376 = t377.
      IF t377 = abap_false.
        DATA t384 TYPE abap_bool.
        DATA t385 TYPE string.
        DATA(t386) = t364.
        t385 = t386->value.
        DATA(t387) = ||.
        t384 = xsdbool( t385 = t387 ).
        t376 = t384.
      ENDIF.
      IF t376 = abap_true.
        DATA t388 TYPE REF TO zcl_lnt_issue.
        CLEAR t388.
        DATA(t389) = abap_true.
        IF t389 = abap_true.
          DATA t390 TYPE REF TO zcl_lnt_issue.
          CLEAR t390.
          DATA(t391) = t362.
          DATA(t392) = CONV f( 1 ).
          DATA t393 TYPE string.
          DATA t394 TYPE string.
          DATA(t395) = |Missing required field |.
          DATA(t396) = |SCRLEN3|.
          DATA(t397) = strlen( t395 ).
          t394 = |{ t395 }{ t396 }|.
          DATA(t398) = | in DD04V|.
          DATA(t399) = strlen( t394 ).
          t393 = |{ t394 }{ t398 }|.
          DATA(t400) = VALUE string( ).
          DATA t401 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t401.
          DATA t402 TYPE string.
          DATA(t403) = |xml_consistency|.
          t402 = t403.
          DATA t404 TYPE string.
          DATA(t405) = |XML consistency|.
          t404 = t405.
          DATA t406 TYPE string.
          DATA(t407) = |Checks the consistency of main XML files|.
          t406 = t407.
          DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t408.
          DATA t409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t409.
          DATA(t410) = abap_true.
          IF t410 = abap_true.
            DATA(t411) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
            t411 = t411 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
            t411 = t411 && |ce table and field values\n* Transparent TABL objects have de|.
            t411 = t411 && |livery class and size category set\n* Lock parameter names in|.
            t411 = t411 && | ENQU objects are max 16 characters\n* Texts and translations|.
            t411 = t411 && | do not exceed maximum allowed length.|.
            DATA(t412) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t412->has = abap_true.
            t412->value = t411.
            t409 = t412.
          ELSE.
            DATA t413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t413.
            t409 = t413.
          ENDIF.
          t408 = t409.
          DATA t414 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t414.
          DATA t415 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t415.
          DATA(t416) = abap_true.
          IF t416 = abap_true.
            DATA t417 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t418 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t419 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t419.
            t418 = t419.
            DATA(t420) = t418.
            DATA(t421) = |Naming|.
            t420->load( ).
            APPEND t421 TO t420->items.
            t420->save( ).
            DATA(t422) = t418.
            DATA(t423) = |Syntax|.
            t422->load( ).
            APPEND t423 TO t422->items.
            t422->save( ).
            DATA(t424) = t418.
            t417 = t424.
            t415 = t417.
          ELSE.
            DATA t425 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t425.
            t415 = t425.
          ENDIF.
          t414 = t415.
          DATA t426 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t427 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t427.
          t426 = t427.
          DATA t428 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t429.
          t428 = t429.
          DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t431.
          t430 = t431.
          DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t433 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t433.
          t432 = t433.
          t401 = NEW zcl_lnt_irule_metadata( i_key = t402 i_title = t404 i_short_description = t406 i_bad_example = t426 i_good_example = t428 i_extended_information = t408 i_tags = t414 i_pragma = t430 i_pseudo_comment = t432 ).
          CREATE OBJECT t401->zlnt_view_ownkeys_b0e8086400eb.
          t401->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t434.
          IF t401->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t434 ).
          ENDIF.
          DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t435.
          IF t401->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t435 ).
          ENDIF.
          DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t436.
          IF t401->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t436 ).
          ENDIF.
          DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t437.
          IF t401->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t437 ).
          ENDIF.
          DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t438.
          IF t401->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t438 ).
          ENDIF.
          CREATE OBJECT t401->zlnt_json_ownkeys_70e5fd461788.
          t401->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t439) = |key|.
          DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t440.
          IF t401->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t439 p1 = t440 ).
          ENDIF.
          DATA(t441) = |title|.
          DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t442.
          IF t401->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t441 p1 = t442 ).
          ENDIF.
          DATA(t443) = |shortDescription|.
          DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t444.
          IF t401->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t443 p1 = t444 ).
          ENDIF.
          DATA(t445) = |extendedInformation|.
          DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t446.
          IF t401->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t445 p1 = t446 ).
          ENDIF.
          DATA(t447) = |tags|.
          DATA t448 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t448.
          IF t401->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t447 p1 = t448 ).
          ENDIF.
          t400 = t401->key.
          DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t450) = me->conf.
          t449 = t450->zlnt_view_read_sr_d3e3c311c261( ).
          t390 = zcl_lnt_issue=>at_row( i_file = t391 i_row = t392 i_message_26cb = t393 i_key = t400 i_severity = t449 ).
          t388 = t390.
        ELSE.
          DATA t451 TYPE REF TO zcl_lnt_issue.
          CLEAR t451.
          t388 = t451.
        ENDIF.
        t375 = t388.
      ELSE.
        DATA t452 TYPE REF TO zcl_lnt_issue.
        CLEAR t452.
        t375 = t452.
      ENDIF.
      t361 = t375.
      t360 = t361.
      DATA t453 TYPE abap_bool.
      DATA(t454) = t360.
      t453 = xsdbool( t454 IS BOUND ).
      IF t453 = abap_true.
        DATA(t455) = t3.
        DATA t456 TYPE REF TO zcl_lnt_issue.
        DATA(t457) = t360.
        t456 = t457.
        t455->load( ).
        APPEND t456 TO t455->items.
        t455->save( ).
      ENDIF.
    ENDIF.
    DATA(t458) = VALUE abap_bool( ).
    DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t459.
    DATA t460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t460.
    DATA t461 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA(t462) = t5.
    t461 = t462.
    DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t463.
    DATA(t464) = VALUE abap_bool( ).
    DATA(t465) = t461.
    IF t465 IS INITIAL.
      t464 = abap_true.
    ENDIF.
    IF t464 = abap_true.
      DATA t466 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t466.
      t463 = t466.
    ELSE.
      DATA t467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t468 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t469) = t461.
      t468 = t469.
      t467 = t468->heading.
      t463 = t467.
    ENDIF.
    t460 = t463.
    t459 = t460.
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t471.
    t470 = t471.
    DATA(t472) = VALUE abap_bool( ).
    DATA(t473) = VALUE abap_bool( ).
    DATA(t474) = t459.
    IF t474 IS INITIAL.
      t473 = abap_true.
    ELSEIF t474->has = abap_false.
      t473 = abap_true.
    ENDIF.
    t472 = xsdbool( t473 = abap_false ).
    t458 = t472.
    IF t458 = abap_true.
      DATA t475 TYPE REF TO zcl_lnt_issue.
      CLEAR t475.
      DATA t476 TYPE REF TO zcl_lnt_issue.
      CLEAR t476.
      DATA t477 TYPE REF TO zif_lnt_file.
      DATA(t478) = t2.
      t477 = t478.
      DATA t479 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t479.
      DATA t480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t480.
      DATA t481 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t482) = t23.
      t481 = t482.
      DATA t483 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t483.
      DATA(t484) = VALUE abap_bool( ).
      DATA(t485) = t481.
      IF t485 IS INITIAL.
        t484 = abap_true.
      ENDIF.
      IF t484 = abap_true.
        DATA t486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t486.
        t483 = t486.
      ELSE.
        DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t488 TYPE REF TO zcl_lnt_shape_66add1d1.
        DATA(t489) = t481.
        t488 = t489.
        t487 = t488->heading.
        t483 = t487.
      ENDIF.
      t480 = t483.
      t479 = t480.
      DATA t490 TYPE REF TO zcl_lnt_issue.
      CLEAR t490.
      DATA(t491) = VALUE abap_bool( ).
      DATA(t492) = VALUE abap_bool( ).
      DATA t493 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t494) = t479.
      t493 = t494.
      DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t496.
      t495 = t496.
      DATA(t497) = VALUE abap_bool( ).
      DATA(t498) = t493.
      IF t498 IS INITIAL.
        t497 = abap_true.
      ELSEIF t498->has = abap_false.
        t497 = abap_true.
      ENDIF.
      t492 = t497.
      t491 = t492.
      IF t492 = abap_false.
        DATA t499 TYPE abap_bool.
        DATA t500 TYPE string.
        DATA(t501) = t479.
        t500 = t501->value.
        DATA(t502) = ||.
        t499 = xsdbool( t500 = t502 ).
        t491 = t499.
      ENDIF.
      IF t491 = abap_true.
        DATA t503 TYPE REF TO zcl_lnt_issue.
        CLEAR t503.
        DATA(t504) = abap_true.
        IF t504 = abap_true.
          DATA t505 TYPE REF TO zcl_lnt_issue.
          CLEAR t505.
          DATA(t506) = t477.
          DATA(t507) = CONV f( 1 ).
          DATA t508 TYPE string.
          DATA t509 TYPE string.
          DATA(t510) = |Missing required field |.
          DATA(t511) = |HEADLEN|.
          DATA(t512) = strlen( t510 ).
          t509 = |{ t510 }{ t511 }|.
          DATA(t513) = | in DD04V|.
          DATA(t514) = strlen( t509 ).
          t508 = |{ t509 }{ t513 }|.
          DATA(t515) = VALUE string( ).
          DATA t516 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t516.
          DATA t517 TYPE string.
          DATA(t518) = |xml_consistency|.
          t517 = t518.
          DATA t519 TYPE string.
          DATA(t520) = |XML consistency|.
          t519 = t520.
          DATA t521 TYPE string.
          DATA(t522) = |Checks the consistency of main XML files|.
          t521 = t522.
          DATA t523 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t523.
          DATA t524 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t524.
          DATA(t525) = abap_true.
          IF t525 = abap_true.
            DATA(t526) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
            t526 = t526 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
            t526 = t526 && |ce table and field values\n* Transparent TABL objects have de|.
            t526 = t526 && |livery class and size category set\n* Lock parameter names in|.
            t526 = t526 && | ENQU objects are max 16 characters\n* Texts and translations|.
            t526 = t526 && | do not exceed maximum allowed length.|.
            DATA(t527) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t527->has = abap_true.
            t527->value = t526.
            t524 = t527.
          ELSE.
            DATA t528 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t528.
            t524 = t528.
          ENDIF.
          t523 = t524.
          DATA t529 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t529.
          DATA t530 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t530.
          DATA(t531) = abap_true.
          IF t531 = abap_true.
            DATA t532 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t533 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t534 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t534.
            t533 = t534.
            DATA(t535) = t533.
            DATA(t536) = |Naming|.
            t535->load( ).
            APPEND t536 TO t535->items.
            t535->save( ).
            DATA(t537) = t533.
            DATA(t538) = |Syntax|.
            t537->load( ).
            APPEND t538 TO t537->items.
            t537->save( ).
            DATA(t539) = t533.
            t532 = t539.
            t530 = t532.
          ELSE.
            DATA t540 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t540.
            t530 = t540.
          ENDIF.
          t529 = t530.
          DATA t541 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t542 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t542.
          t541 = t542.
          DATA t543 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t544 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t544.
          t543 = t544.
          DATA t545 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t546 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t546.
          t545 = t546.
          DATA t547 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t548 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t548.
          t547 = t548.
          t516 = NEW zcl_lnt_irule_metadata( i_key = t517 i_title = t519 i_short_description = t521 i_bad_example = t541 i_good_example = t543 i_extended_information = t523 i_tags = t529 i_pragma = t545 i_pseudo_comment = t547 ).
          CREATE OBJECT t516->zlnt_view_ownkeys_b0e8086400eb.
          t516->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t549.
          IF t516->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t516->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t549 ).
          ENDIF.
          DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t550.
          IF t516->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t516->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t550 ).
          ENDIF.
          DATA t551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t551.
          IF t516->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t516->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t551 ).
          ENDIF.
          DATA t552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t552.
          IF t516->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t516->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t552 ).
          ENDIF.
          DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t553.
          IF t516->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t516->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t553 ).
          ENDIF.
          CREATE OBJECT t516->zlnt_json_ownkeys_70e5fd461788.
          t516->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t554) = |key|.
          DATA t555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t555.
          IF t516->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = t554 p1 = t555 ).
          ENDIF.
          DATA(t556) = |title|.
          DATA t557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t557.
          IF t516->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = t556 p1 = t557 ).
          ENDIF.
          DATA(t558) = |shortDescription|.
          DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t559.
          IF t516->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = t558 p1 = t559 ).
          ENDIF.
          DATA(t560) = |extendedInformation|.
          DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t561.
          IF t516->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = t560 p1 = t561 ).
          ENDIF.
          DATA(t562) = |tags|.
          DATA t563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t563.
          IF t516->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = t562 p1 = t563 ).
          ENDIF.
          t515 = t516->key.
          DATA t564 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t565) = me->conf.
          t564 = t565->zlnt_view_read_sr_d3e3c311c261( ).
          t505 = zcl_lnt_issue=>at_row( i_file = t506 i_row = t507 i_message_26cb = t508 i_key = t515 i_severity = t564 ).
          t503 = t505.
        ELSE.
          DATA t566 TYPE REF TO zcl_lnt_issue.
          CLEAR t566.
          t503 = t566.
        ENDIF.
        t490 = t503.
      ELSE.
        DATA t567 TYPE REF TO zcl_lnt_issue.
        CLEAR t567.
        t490 = t567.
      ENDIF.
      t476 = t490.
      t475 = t476.
      DATA t568 TYPE abap_bool.
      DATA(t569) = t475.
      t568 = xsdbool( t569 IS BOUND ).
      IF t568 = abap_true.
        DATA(t570) = t3.
        DATA t571 TYPE REF TO zcl_lnt_issue.
        DATA(t572) = t475.
        t571 = t572.
        t570->load( ).
        APPEND t571 TO t570->items.
        t570->save( ).
      ENDIF.
    ENDIF.
    DATA(t573) = t41.
    IF t573 = abap_true.
      DATA t574 TYPE REF TO zcl_lnt_issue.
      CLEAR t574.
      DATA t575 TYPE REF TO zcl_lnt_issue.
      CLEAR t575.
      DATA t576 TYPE REF TO zif_lnt_file.
      DATA(t577) = t2.
      t576 = t577.
      DATA t578 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t578.
      DATA t579 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t579.
      DATA t580 TYPE REF TO zcl_lnt_data_element.
      DATA(t581) = t1.
      t580 = t581.
      DATA t582 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t582.
      DATA t583 TYPE REF TO zcl_lnt_iparse_result.
      DATA(t584) = t580.
      t583 = t584->pr_in_src_obj_dt_elm_ts_dt_elm( ).
      DATA t585 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t585.
      DATA t586 TYPE REF TO zcl_lnt_shape_50142cbd.
      DATA t587 TYPE REF TO zcl_lnt_shape_50142cbd.
      DATA(t588) = t580.
      t587 = t588->parsed_xml.
      t586 = t587.
      DATA t589 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t589.
      DATA(t590) = VALUE abap_bool( ).
      DATA(t591) = t586.
      IF t591 IS INITIAL.
        t590 = abap_true.
      ENDIF.
      IF t590 = abap_true.
        DATA t592 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t592.
        t589 = t592.
      ELSE.
        DATA t593 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t594 TYPE REF TO zcl_lnt_shape_50142cbd.
        DATA(t595) = t586.
        t594 = t595.
        t593 = t594->dtelmaster.
        t589 = t593.
      ENDIF.
      t585 = t589.
      t582 = t585.
      t579 = t582.
      t578 = t579.
      DATA t596 TYPE REF TO zcl_lnt_issue.
      CLEAR t596.
      DATA(t597) = VALUE abap_bool( ).
      DATA(t598) = VALUE abap_bool( ).
      DATA t599 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t600) = t578.
      t599 = t600.
      DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t602 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t602.
      t601 = t602.
      DATA(t603) = VALUE abap_bool( ).
      DATA(t604) = t599.
      IF t604 IS INITIAL.
        t603 = abap_true.
      ELSEIF t604->has = abap_false.
        t603 = abap_true.
      ENDIF.
      t598 = t603.
      t597 = t598.
      IF t598 = abap_false.
        DATA t605 TYPE abap_bool.
        DATA t606 TYPE string.
        DATA(t607) = t578.
        t606 = t607->value.
        DATA(t608) = ||.
        t605 = xsdbool( t606 = t608 ).
        t597 = t605.
      ENDIF.
      IF t597 = abap_true.
        DATA t609 TYPE REF TO zcl_lnt_issue.
        CLEAR t609.
        DATA(t610) = abap_true.
        IF t610 = abap_true.
          DATA t611 TYPE REF TO zcl_lnt_issue.
          CLEAR t611.
          DATA(t612) = t576.
          DATA(t613) = CONV f( 1 ).
          DATA t614 TYPE string.
          DATA t615 TYPE string.
          DATA(t616) = |Missing required field |.
          DATA(t617) = |DTELMASTER|.
          DATA(t618) = strlen( t616 ).
          t615 = |{ t616 }{ t617 }|.
          DATA(t619) = | in DD04V|.
          DATA(t620) = strlen( t615 ).
          t614 = |{ t615 }{ t619 }|.
          DATA(t621) = VALUE string( ).
          DATA t622 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t622.
          DATA t623 TYPE string.
          DATA(t624) = |xml_consistency|.
          t623 = t624.
          DATA t625 TYPE string.
          DATA(t626) = |XML consistency|.
          t625 = t626.
          DATA t627 TYPE string.
          DATA(t628) = |Checks the consistency of main XML files|.
          t627 = t628.
          DATA t629 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t629.
          DATA t630 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t630.
          DATA(t631) = abap_true.
          IF t631 = abap_true.
            DATA(t632) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
            t632 = t632 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
            t632 = t632 && |ce table and field values\n* Transparent TABL objects have de|.
            t632 = t632 && |livery class and size category set\n* Lock parameter names in|.
            t632 = t632 && | ENQU objects are max 16 characters\n* Texts and translations|.
            t632 = t632 && | do not exceed maximum allowed length.|.
            DATA(t633) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t633->has = abap_true.
            t633->value = t632.
            t630 = t633.
          ELSE.
            DATA t634 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t634.
            t630 = t634.
          ENDIF.
          t629 = t630.
          DATA t635 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t635.
          DATA t636 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t636.
          DATA(t637) = abap_true.
          IF t637 = abap_true.
            DATA t638 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t639 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t640 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t640.
            t639 = t640.
            DATA(t641) = t639.
            DATA(t642) = |Naming|.
            t641->load( ).
            APPEND t642 TO t641->items.
            t641->save( ).
            DATA(t643) = t639.
            DATA(t644) = |Syntax|.
            t643->load( ).
            APPEND t644 TO t643->items.
            t643->save( ).
            DATA(t645) = t639.
            t638 = t645.
            t636 = t638.
          ELSE.
            DATA t646 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t646.
            t636 = t646.
          ENDIF.
          t635 = t636.
          DATA t647 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t648 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t648.
          t647 = t648.
          DATA t649 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t650 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t650.
          t649 = t650.
          DATA t651 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t652 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t652.
          t651 = t652.
          DATA t653 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t654 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t654.
          t653 = t654.
          t622 = NEW zcl_lnt_irule_metadata( i_key = t623 i_title = t625 i_short_description = t627 i_bad_example = t647 i_good_example = t649 i_extended_information = t629 i_tags = t635 i_pragma = t651 i_pseudo_comment = t653 ).
          CREATE OBJECT t622->zlnt_view_ownkeys_b0e8086400eb.
          t622->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t655.
          IF t622->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t622->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t655 ).
          ENDIF.
          DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t656.
          IF t622->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t622->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t656 ).
          ENDIF.
          DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t657.
          IF t622->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t622->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t657 ).
          ENDIF.
          DATA t658 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t658.
          IF t622->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t622->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t658 ).
          ENDIF.
          DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t659.
          IF t622->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t622->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t659 ).
          ENDIF.
          CREATE OBJECT t622->zlnt_json_ownkeys_70e5fd461788.
          t622->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t660) = |key|.
          DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t661.
          IF t622->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t622->zlnt_json_ownkeys_70e5fd461788->put( p0 = t660 p1 = t661 ).
          ENDIF.
          DATA(t662) = |title|.
          DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t663.
          IF t622->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t622->zlnt_json_ownkeys_70e5fd461788->put( p0 = t662 p1 = t663 ).
          ENDIF.
          DATA(t664) = |shortDescription|.
          DATA t665 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t665.
          IF t622->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t622->zlnt_json_ownkeys_70e5fd461788->put( p0 = t664 p1 = t665 ).
          ENDIF.
          DATA(t666) = |extendedInformation|.
          DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t667.
          IF t622->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t622->zlnt_json_ownkeys_70e5fd461788->put( p0 = t666 p1 = t667 ).
          ENDIF.
          DATA(t668) = |tags|.
          DATA t669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t669.
          IF t622->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t622->zlnt_json_ownkeys_70e5fd461788->put( p0 = t668 p1 = t669 ).
          ENDIF.
          t621 = t622->key.
          DATA t670 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t671) = me->conf.
          t670 = t671->zlnt_view_read_sr_d3e3c311c261( ).
          t611 = zcl_lnt_issue=>at_row( i_file = t612 i_row = t613 i_message_26cb = t614 i_key = t621 i_severity = t670 ).
          t609 = t611.
        ELSE.
          DATA t672 TYPE REF TO zcl_lnt_issue.
          CLEAR t672.
          t609 = t672.
        ENDIF.
        t596 = t609.
      ELSE.
        DATA t673 TYPE REF TO zcl_lnt_issue.
        CLEAR t673.
        t596 = t673.
      ENDIF.
      t575 = t596.
      t574 = t575.
      DATA t674 TYPE abap_bool.
      DATA(t675) = t574.
      t674 = xsdbool( t675 IS BOUND ).
      IF t674 = abap_true.
        DATA(t676) = t3.
        DATA t677 TYPE REF TO zcl_lnt_issue.
        DATA(t678) = t574.
        t677 = t678.
        t676->load( ).
        APPEND t677 TO t676->items.
        t676->save( ).
      ENDIF.
    ENDIF.
    DATA t679 TYPE REF TO zlnt_runtime_arra_ea03a77504b6.
    CLEAR t679.
    DATA t680 TYPE REF TO zlnt_runtime_arra_ea03a77504b6.
    DATA t681 TYPE REF TO zlnt_runtime_arra_ea03a77504b6.
    CREATE OBJECT t681.
    t680 = t681.
    DATA(t682) = t680.
    DATA t683 TYPE REF TO zcl_lnt_issue.
    CLEAR t683.
    DATA t684 TYPE REF TO zif_lnt_file.
    DATA(t685) = t2.
    t684 = t685.
    DATA t686 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t686.
    DATA t687 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t687.
    DATA t688 TYPE REF TO zcl_lnt_data_element.
    DATA(t689) = t1.
    t688 = t689.
    DATA t690 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t690.
    DATA t691 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t692) = t688.
    t691 = t692->pr_in_src_obj_dt_elm_ts_dt_elm( ).
    DATA t693 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t693.
    DATA t694 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA t695 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA(t696) = t688.
    t695 = t696->parsed_xml.
    t694 = t695.
    DATA t697 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t697.
    DATA(t698) = VALUE abap_bool( ).
    DATA(t699) = t694.
    IF t699 IS INITIAL.
      t698 = abap_true.
    ENDIF.
    IF t698 = abap_true.
      DATA t700 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t700.
      t697 = t700.
    ELSE.
      DATA t701 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t702 TYPE REF TO zcl_lnt_shape_50142cbd.
      DATA(t703) = t694.
      t702 = t703.
      t701 = t702->description.
      t697 = t701.
    ENDIF.
    t693 = t697.
    t690 = t693.
    t687 = t690.
    t686 = t687.
    DATA t704 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t705 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t705.
    DATA(t706) = 60.
    CLEAR t705.
    CREATE OBJECT t705.
    t705->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t705->nval = t706.
    t704 = t705.
    DATA t707 TYPE REF TO zcl_lnt_issue.
    CLEAR t707.
    DATA(t708) = VALUE abap_bool( ).
    DATA(t709) = VALUE abap_bool( ).
    DATA t710 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t711) = t686.
    t710 = t711.
    DATA t712 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t713.
    t712 = t713.
    DATA(t714) = VALUE abap_bool( ).
    DATA(t715) = t710.
    IF t715 IS INITIAL.
      t714 = abap_true.
    ELSEIF t715->has = abap_false.
      t714 = abap_true.
    ENDIF.
    t709 = t714.
    t708 = t709.
    IF t709 = abap_false.
      DATA(t716) = VALUE abap_bool( ).
      DATA t717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t718) = t704.
      t717 = t718.
      DATA t719 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t720.
      t719 = t720.
      DATA(t721) = VALUE abap_bool( ).
      DATA(t722) = t717.
      IF t722 IS INITIAL.
        t721 = abap_true.
      ENDIF.
      t716 = t721.
      t708 = t716.
    ENDIF.
    IF t708 = abap_true.
      DATA t723 TYPE REF TO zcl_lnt_issue.
      CLEAR t723.
      t707 = t723.
    ELSE.
      DATA t724 TYPE REF TO zcl_lnt_issue.
      CLEAR t724.
      DATA(t725) = VALUE f( ).
      DATA(t726) = VALUE f( ).
      DATA(t727) = VALUE abap_bool( ).
      DATA(t728) = VALUE string( ).
      DATA(t729) = t704.
      IF t729 IS BOUND.
        t728 = t729->type_of( ).
        IF t729->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t729->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t728 = `function`.
        ENDIF.
      ELSE.
        t728 = `undefined`.
      ENDIF.
      DATA(t730) = |number|.
      t727 = xsdbool( t728 = t730 ).
      IF t727 = abap_true.
        DATA t731 TYPE f.
        DATA(t732) = t704.
        t731 = t732->as_number( ).
        t726 = t731.
      ELSE.
        DATA(t733) = VALUE f( ).
        DATA t734 TYPE string.
        DATA(t735) = t704.
        t734 = t735->as_string( ).
        DATA t736 TYPE i.
        DATA t737 TYPE i.
        DATA(t738) = VALUE string( ).
        DATA t739 TYPE abap_bool.
        DATA t740 TYPE abap_bool.
        DATA t741 TYPE int8.
        DATA(t742) = VALUE i( ).
        t736 = 0.
        t741 = 0.
        t739 = abap_false.
        t740 = abap_false.
        t737 = strlen( t734 ).
        DATA(t743) = VALUE i( ).
        DATA(t744) = VALUE i( ).
        DATA(t745) = VALUE string( ).
        WHILE t736 < t737.
          t744 = t736.
          t745 = t734+t744(1).
          DATA t746 TYPE c LENGTH 1.
          CLEAR t746.
          DATA(t747) = VALUE xstring( ).
          DATA t748 TYPE x LENGTH 1.
          CLEAR t748.
          DATA t749 TYPE x LENGTH 1.
          CLEAR t749.
          DATA(t750) = VALUE i( ).
          t746 = t745.
          t743 = cl_abap_conv_out_ce=>uccpi( t746 ).
          IF t743 >= 255.
            IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
              zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t745 IMPORTING buffer = t747 ).
            t748 = t747(1).
            t749 = t747+1(1).
            t743 = t748.
            t750 = t749.
            t743 = t743 + t750 * 256.
          ENDIF.
          IF t743 = 9 OR t743 = 10 OR t743 = 11 OR t743 = 12 OR t743 = 13 OR t743 = 32 OR t743 = 160 OR t743 = 5760 OR t743 = 8232 OR t743 = 8233 OR t743 = 8239 OR t743 = 8287 OR t743 = 12288 OR t743 = 65279 OR t743 >= 8192 AND t743 <= 8202.
            t736 = t736 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t736 < t737.
          t738 = t734+t736(1).
          IF t738 = '-' OR t738 = '+'.
            t739 = xsdbool( t738 = '-' ).
            t736 = t736 + 1.
          ENDIF.
        ENDIF.
        WHILE t736 < t737.
          t738 = t734+t736(1).
          IF t738 CN '0123456789' OR t738 = ` `.
            EXIT.
          ENDIF.
          t742 = t738.
          IF t741 > range_parse_safe_prefix OR ( t741 = range_parse_safe_prefix AND t742 > 1 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t741 = t741 * 10 + t742.
          t740 = abap_true.
          t736 = t736 + 1.
        ENDWHILE.
        IF t740 = abap_false OR ( t739 = abap_true AND t741 = 0 ).
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        IF t739 = abap_true.
          t741 = 0 - t741.
        ENDIF.
        t733 = t741.
        t726 = t733.
      ENDIF.
      t725 = t726.
      DATA t751 TYPE REF TO zcl_lnt_issue.
      CLEAR t751.
      DATA t752 TYPE abap_bool.
      DATA t753 TYPE f.
      DATA t754 TYPE i.
      DATA t755 TYPE string.
      DATA(t756) = t686.
      t755 = t756->value.
      DATA(t757) = strlen( t755 ).
      t754 = t757.
      t753 = t754.
      DATA(t758) = t725.
      t752 = xsdbool( t753 > t758 ).
      IF t752 = abap_true.
        DATA t759 TYPE REF TO zcl_lnt_issue.
        CLEAR t759.
        DATA(t760) = VALUE string( ).
        DATA(t761) = VALUE string( ).
        DATA(t762) = VALUE abap_bool( ).
        DATA t763 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t763.
        IF t763 IS BOUND.
          IF t763->has = abap_true.
            t762 = xsdbool( strlen( t763->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t762 = abap_true.
          DATA t764 TYPE string.
          DATA t765 TYPE string.
          DATA(t766) = |[|.
          DATA t767 TYPE string.
          DATA t768 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t768.
          t767 = t768->value.
          DATA(t769) = strlen( t766 ).
          t765 = |{ t766 }{ t767 }|.
          DATA(t770) = |] |.
          DATA(t771) = strlen( t765 ).
          t764 = |{ t765 }{ t770 }|.
          t761 = t764.
        ELSE.
          DATA(t772) = ||.
          t761 = t772.
        ENDIF.
        t760 = t761.
        DATA t773 TYPE REF TO zcl_lnt_issue.
        CLEAR t773.
        DATA(t774) = abap_true.
        IF t774 = abap_true.
          DATA t775 TYPE REF TO zcl_lnt_issue.
          CLEAR t775.
          DATA(t776) = t684.
          DATA(t777) = CONV f( 1 ).
          DATA(t778) = VALUE string( ).
          DATA(t779) = VALUE string( ).
          DATA(t780) = VALUE string( ).
          DATA(t781) = VALUE string( ).
          DATA t782 TYPE string.
          DATA t783 TYPE string.
          DATA t784 TYPE string.
          DATA t785 TYPE string.
          DATA t786 TYPE string.
          DATA t787 TYPE string.
          DATA(t788) = ||.
          DATA(t789) = t760.
          DATA(t790) = strlen( t788 ).
          t787 = |{ t788 }{ t789 }|.
          DATA(t791) = ||.
          DATA(t792) = strlen( t787 ).
          t786 = |{ t787 }{ t791 }|.
          DATA(t793) = |DDTEXT|.
          DATA(t794) = strlen( t786 ).
          t785 = |{ t786 }{ t793 }|.
          DATA(t795) = | "|.
          DATA(t796) = strlen( t785 ).
          t784 = |{ t785 }{ t795 }|.
          DATA t797 TYPE string.
          DATA(t798) = t686.
          t797 = t798->value.
          DATA(t799) = strlen( t784 ).
          t783 = |{ t784 }{ t797 }|.
          DATA(t800) = |" exceeds maximum length of |.
          DATA(t801) = strlen( t783 ).
          t782 = |{ t783 }{ t800 }|.
          DATA(t802) = VALUE string( ).
          DATA(t803) = t725.
          IF t803 <> trunc( t803 ) OR t803 > range_safe_integer OR t803 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t804) = CONV int8( t803 ).
          t802 = |{ t804 }|.
          DATA(t805) = strlen( t782 ).
          t781 = |{ t782 }{ t802 }|.
          DATA(t806) = | characters (actual: |.
          DATA(t807) = strlen( t781 ).
          t780 = |{ t781 }{ t806 }|.
          DATA t808 TYPE string.
          DATA t809 TYPE i.
          DATA t810 TYPE string.
          DATA(t811) = t686.
          t810 = t811->value.
          DATA(t812) = strlen( t810 ).
          t809 = t812.
          t808 = |{ t809 }|.
          DATA(t813) = strlen( t780 ).
          t779 = |{ t780 }{ t808 }|.
          DATA(t814) = |)|.
          DATA(t815) = strlen( t779 ).
          t778 = |{ t779 }{ t814 }|.
          DATA(t816) = VALUE string( ).
          DATA t817 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t817.
          DATA t818 TYPE string.
          DATA(t819) = |xml_consistency|.
          t818 = t819.
          DATA t820 TYPE string.
          DATA(t821) = |XML consistency|.
          t820 = t821.
          DATA t822 TYPE string.
          DATA(t823) = |Checks the consistency of main XML files|.
          t822 = t823.
          DATA t824 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t824.
          DATA t825 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t825.
          DATA(t826) = abap_true.
          IF t826 = abap_true.
            DATA(t827) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
            t827 = t827 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
            t827 = t827 && |ce table and field values\n* Transparent TABL objects have de|.
            t827 = t827 && |livery class and size category set\n* Lock parameter names in|.
            t827 = t827 && | ENQU objects are max 16 characters\n* Texts and translations|.
            t827 = t827 && | do not exceed maximum allowed length.|.
            DATA(t828) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t828->has = abap_true.
            t828->value = t827.
            t825 = t828.
          ELSE.
            DATA t829 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t829.
            t825 = t829.
          ENDIF.
          t824 = t825.
          DATA t830 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t830.
          DATA t831 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t831.
          DATA(t832) = abap_true.
          IF t832 = abap_true.
            DATA t833 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t834 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t835 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t835.
            t834 = t835.
            DATA(t836) = t834.
            DATA(t837) = |Naming|.
            t836->load( ).
            APPEND t837 TO t836->items.
            t836->save( ).
            DATA(t838) = t834.
            DATA(t839) = |Syntax|.
            t838->load( ).
            APPEND t839 TO t838->items.
            t838->save( ).
            DATA(t840) = t834.
            t833 = t840.
            t831 = t833.
          ELSE.
            DATA t841 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t841.
            t831 = t841.
          ENDIF.
          t830 = t831.
          DATA t842 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t843 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t843.
          t842 = t843.
          DATA t844 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t845 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t845.
          t844 = t845.
          DATA t846 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t847 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t847.
          t846 = t847.
          DATA t848 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t849 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t849.
          t848 = t849.
          t817 = NEW zcl_lnt_irule_metadata( i_key = t818 i_title = t820 i_short_description = t822 i_bad_example = t842 i_good_example = t844 i_extended_information = t824 i_tags = t830 i_pragma = t846 i_pseudo_comment = t848 ).
          CREATE OBJECT t817->zlnt_view_ownkeys_b0e8086400eb.
          t817->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t850 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t850.
          IF t817->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t817->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t850 ).
          ENDIF.
          DATA t851 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t851.
          IF t817->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t817->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t851 ).
          ENDIF.
          DATA t852 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t852.
          IF t817->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t817->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t852 ).
          ENDIF.
          DATA t853 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t853.
          IF t817->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t817->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t853 ).
          ENDIF.
          DATA t854 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t854.
          IF t817->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t817->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t854 ).
          ENDIF.
          CREATE OBJECT t817->zlnt_json_ownkeys_70e5fd461788.
          t817->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t855) = |key|.
          DATA t856 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t856.
          IF t817->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t817->zlnt_json_ownkeys_70e5fd461788->put( p0 = t855 p1 = t856 ).
          ENDIF.
          DATA(t857) = |title|.
          DATA t858 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t858.
          IF t817->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t817->zlnt_json_ownkeys_70e5fd461788->put( p0 = t857 p1 = t858 ).
          ENDIF.
          DATA(t859) = |shortDescription|.
          DATA t860 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t860.
          IF t817->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t817->zlnt_json_ownkeys_70e5fd461788->put( p0 = t859 p1 = t860 ).
          ENDIF.
          DATA(t861) = |extendedInformation|.
          DATA t862 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t862.
          IF t817->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t817->zlnt_json_ownkeys_70e5fd461788->put( p0 = t861 p1 = t862 ).
          ENDIF.
          DATA(t863) = |tags|.
          DATA t864 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t864.
          IF t817->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t817->zlnt_json_ownkeys_70e5fd461788->put( p0 = t863 p1 = t864 ).
          ENDIF.
          t816 = t817->key.
          DATA t865 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t866) = me->conf.
          t865 = t866->zlnt_view_read_sr_b4bcf11cce6c( ).
          t775 = zcl_lnt_issue=>at_row( i_file = t776 i_row = t777 i_message_26cb = t778 i_key = t816 i_severity = t865 ).
          t773 = t775.
        ELSE.
          DATA t867 TYPE REF TO zcl_lnt_issue.
          CLEAR t867.
          t773 = t867.
        ENDIF.
        t759 = t773.
        t751 = t759.
      ELSE.
        DATA t868 TYPE REF TO zcl_lnt_issue.
        CLEAR t868.
        t751 = t868.
      ENDIF.
      t724 = t751.
      t707 = t724.
    ENDIF.
    t683 = t707.
    t682->load( ).
    APPEND t683 TO t682->items.
    t682->save( ).
    DATA(t869) = t680.
    DATA t870 TYPE REF TO zcl_lnt_issue.
    CLEAR t870.
    DATA t871 TYPE REF TO zif_lnt_file.
    DATA(t872) = t2.
    t871 = t872.
    DATA t873 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t873.
    DATA t874 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t874.
    DATA t875 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA(t876) = t5.
    t875 = t876.
    DATA t877 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t877.
    DATA(t878) = VALUE abap_bool( ).
    DATA(t879) = t875.
    IF t879 IS INITIAL.
      t878 = abap_true.
    ENDIF.
    IF t878 = abap_true.
      DATA t880 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t880.
      t877 = t880.
    ELSE.
      DATA t881 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t882 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t883) = t875.
      t882 = t883.
      t881 = t882->short.
      t877 = t881.
    ENDIF.
    t874 = t877.
    t873 = t874.
    DATA t884 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t884.
    DATA t885 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t885.
    DATA t886 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t886.
    DATA t887 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA(t888) = t23.
    t887 = t888.
    DATA t889 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t889.
    DATA(t890) = VALUE abap_bool( ).
    DATA(t891) = t887.
    IF t891 IS INITIAL.
      t890 = abap_true.
    ENDIF.
    IF t890 = abap_true.
      DATA t892 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t892.
      t889 = t892.
    ELSE.
      DATA t893 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t894 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t895) = t887.
      t894 = t895.
      t893 = t894->short.
      t889 = t893.
    ENDIF.
    t886 = t889.
    CLEAR t885.
    IF t886 IS BOUND AND t886->has = abap_true.
      CLEAR t885.
      CREATE OBJECT t885.
      t885->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t885->sval = t886->value.
    ENDIF.
    t884 = t885.
    DATA t896 TYPE REF TO zcl_lnt_issue.
    CLEAR t896.
    DATA(t897) = VALUE abap_bool( ).
    DATA(t898) = VALUE abap_bool( ).
    DATA t899 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t900) = t873.
    t899 = t900.
    DATA t901 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t902 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t902.
    t901 = t902.
    DATA(t903) = VALUE abap_bool( ).
    DATA(t904) = t899.
    IF t904 IS INITIAL.
      t903 = abap_true.
    ELSEIF t904->has = abap_false.
      t903 = abap_true.
    ENDIF.
    t898 = t903.
    t897 = t898.
    IF t898 = abap_false.
      DATA(t905) = VALUE abap_bool( ).
      DATA t906 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t907) = t884.
      t906 = t907.
      DATA t908 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t909 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t909.
      t908 = t909.
      DATA(t910) = VALUE abap_bool( ).
      DATA(t911) = t906.
      IF t911 IS INITIAL.
        t910 = abap_true.
      ENDIF.
      t905 = t910.
      t897 = t905.
    ENDIF.
    IF t897 = abap_true.
      DATA t912 TYPE REF TO zcl_lnt_issue.
      CLEAR t912.
      t896 = t912.
    ELSE.
      DATA t913 TYPE REF TO zcl_lnt_issue.
      CLEAR t913.
      DATA(t914) = VALUE f( ).
      DATA(t915) = VALUE f( ).
      DATA(t916) = VALUE abap_bool( ).
      DATA(t917) = VALUE string( ).
      DATA(t918) = t884.
      IF t918 IS BOUND.
        t917 = t918->type_of( ).
        IF t918->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t918->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t917 = `function`.
        ENDIF.
      ELSE.
        t917 = `undefined`.
      ENDIF.
      DATA(t919) = |number|.
      t916 = xsdbool( t917 = t919 ).
      IF t916 = abap_true.
        DATA t920 TYPE f.
        DATA(t921) = t884.
        t920 = t921->as_number( ).
        t915 = t920.
      ELSE.
        DATA(t922) = VALUE f( ).
        DATA t923 TYPE string.
        DATA(t924) = t884.
        t923 = t924->as_string( ).
        DATA t925 TYPE i.
        DATA t926 TYPE i.
        DATA(t927) = VALUE string( ).
        DATA t928 TYPE abap_bool.
        DATA t929 TYPE abap_bool.
        DATA t930 TYPE int8.
        DATA(t931) = VALUE i( ).
        t925 = 0.
        t930 = 0.
        t928 = abap_false.
        t929 = abap_false.
        t926 = strlen( t923 ).
        DATA(t932) = VALUE i( ).
        DATA(t933) = VALUE i( ).
        DATA(t934) = VALUE string( ).
        WHILE t925 < t926.
          t933 = t925.
          t934 = t923+t933(1).
          DATA t935 TYPE c LENGTH 1.
          CLEAR t935.
          DATA(t936) = VALUE xstring( ).
          DATA t937 TYPE x LENGTH 1.
          CLEAR t937.
          DATA t938 TYPE x LENGTH 1.
          CLEAR t938.
          DATA(t939) = VALUE i( ).
          t935 = t934.
          t932 = cl_abap_conv_out_ce=>uccpi( t935 ).
          IF t932 >= 255.
            IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
              zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t934 IMPORTING buffer = t936 ).
            t937 = t936(1).
            t938 = t936+1(1).
            t932 = t937.
            t939 = t938.
            t932 = t932 + t939 * 256.
          ENDIF.
          IF t932 = 9 OR t932 = 10 OR t932 = 11 OR t932 = 12 OR t932 = 13 OR t932 = 32 OR t932 = 160 OR t932 = 5760 OR t932 = 8232 OR t932 = 8233 OR t932 = 8239 OR t932 = 8287 OR t932 = 12288 OR t932 = 65279 OR t932 >= 8192 AND t932 <= 8202.
            t925 = t925 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t925 < t926.
          t927 = t923+t925(1).
          IF t927 = '-' OR t927 = '+'.
            t928 = xsdbool( t927 = '-' ).
            t925 = t925 + 1.
          ENDIF.
        ENDIF.
        WHILE t925 < t926.
          t927 = t923+t925(1).
          IF t927 CN '0123456789' OR t927 = ` `.
            EXIT.
          ENDIF.
          t931 = t927.
          IF t930 > range_parse_safe_prefix OR ( t930 = range_parse_safe_prefix AND t931 > 1 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t930 = t930 * 10 + t931.
          t929 = abap_true.
          t925 = t925 + 1.
        ENDWHILE.
        IF t929 = abap_false OR ( t928 = abap_true AND t930 = 0 ).
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        IF t928 = abap_true.
          t930 = 0 - t930.
        ENDIF.
        t922 = t930.
        t915 = t922.
      ENDIF.
      t914 = t915.
      DATA t940 TYPE REF TO zcl_lnt_issue.
      CLEAR t940.
      DATA t941 TYPE abap_bool.
      DATA t942 TYPE f.
      DATA t943 TYPE i.
      DATA t944 TYPE string.
      DATA(t945) = t873.
      t944 = t945->value.
      DATA(t946) = strlen( t944 ).
      t943 = t946.
      t942 = t943.
      DATA(t947) = t914.
      t941 = xsdbool( t942 > t947 ).
      IF t941 = abap_true.
        DATA t948 TYPE REF TO zcl_lnt_issue.
        CLEAR t948.
        DATA(t949) = VALUE string( ).
        DATA(t950) = VALUE string( ).
        DATA(t951) = VALUE abap_bool( ).
        DATA t952 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t952.
        IF t952 IS BOUND.
          IF t952->has = abap_true.
            t951 = xsdbool( strlen( t952->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t951 = abap_true.
          DATA t953 TYPE string.
          DATA t954 TYPE string.
          DATA(t955) = |[|.
          DATA t956 TYPE string.
          DATA t957 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t957.
          t956 = t957->value.
          DATA(t958) = strlen( t955 ).
          t954 = |{ t955 }{ t956 }|.
          DATA(t959) = |] |.
          DATA(t960) = strlen( t954 ).
          t953 = |{ t954 }{ t959 }|.
          t950 = t953.
        ELSE.
          DATA(t961) = ||.
          t950 = t961.
        ENDIF.
        t949 = t950.
        DATA t962 TYPE REF TO zcl_lnt_issue.
        CLEAR t962.
        DATA(t963) = abap_true.
        IF t963 = abap_true.
          DATA t964 TYPE REF TO zcl_lnt_issue.
          CLEAR t964.
          DATA(t965) = t871.
          DATA(t966) = CONV f( 1 ).
          DATA(t967) = VALUE string( ).
          DATA(t968) = VALUE string( ).
          DATA(t969) = VALUE string( ).
          DATA(t970) = VALUE string( ).
          DATA t971 TYPE string.
          DATA t972 TYPE string.
          DATA t973 TYPE string.
          DATA t974 TYPE string.
          DATA t975 TYPE string.
          DATA t976 TYPE string.
          DATA(t977) = ||.
          DATA(t978) = t949.
          DATA(t979) = strlen( t977 ).
          t976 = |{ t977 }{ t978 }|.
          DATA(t980) = ||.
          DATA(t981) = strlen( t976 ).
          t975 = |{ t976 }{ t980 }|.
          DATA(t982) = |SCRTEXT_S|.
          DATA(t983) = strlen( t975 ).
          t974 = |{ t975 }{ t982 }|.
          DATA(t984) = | "|.
          DATA(t985) = strlen( t974 ).
          t973 = |{ t974 }{ t984 }|.
          DATA t986 TYPE string.
          DATA(t987) = t873.
          t986 = t987->value.
          DATA(t988) = strlen( t973 ).
          t972 = |{ t973 }{ t986 }|.
          DATA(t989) = |" exceeds maximum length of |.
          DATA(t990) = strlen( t972 ).
          t971 = |{ t972 }{ t989 }|.
          DATA(t991) = VALUE string( ).
          DATA(t992) = t914.
          IF t992 <> trunc( t992 ) OR t992 > range_safe_integer OR t992 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t993) = CONV int8( t992 ).
          t991 = |{ t993 }|.
          DATA(t994) = strlen( t971 ).
          t970 = |{ t971 }{ t991 }|.
          DATA(t995) = | characters (actual: |.
          DATA(t996) = strlen( t970 ).
          t969 = |{ t970 }{ t995 }|.
          DATA t997 TYPE string.
          DATA t998 TYPE i.
          DATA t999 TYPE string.
          DATA(t1000) = t873.
          t999 = t1000->value.
          DATA(t1001) = strlen( t999 ).
          t998 = t1001.
          t997 = |{ t998 }|.
          DATA(t1002) = strlen( t969 ).
          t968 = |{ t969 }{ t997 }|.
          DATA(t1003) = |)|.
          DATA(t1004) = strlen( t968 ).
          t967 = |{ t968 }{ t1003 }|.
          DATA(t1005) = VALUE string( ).
          DATA t1006 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t1006.
          DATA t1007 TYPE string.
          DATA(t1008) = |xml_consistency|.
          t1007 = t1008.
          DATA t1009 TYPE string.
          DATA(t1010) = |XML consistency|.
          t1009 = t1010.
          DATA t1011 TYPE string.
          DATA(t1012) = |Checks the consistency of main XML files|.
          t1011 = t1012.
          DATA t1013 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1013.
          DATA t1014 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1014.
          DATA(t1015) = abap_true.
          IF t1015 = abap_true.
            DATA(t1016) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
            t1016 = t1016 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
            t1016 = t1016 && |ce table and field values\n* Transparent TABL objects have de|.
            t1016 = t1016 && |livery class and size category set\n* Lock parameter names in|.
            t1016 = t1016 && | ENQU objects are max 16 characters\n* Texts and translations|.
            t1016 = t1016 && | do not exceed maximum allowed length.|.
            DATA(t1017) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1017->has = abap_true.
            t1017->value = t1016.
            t1014 = t1017.
          ELSE.
            DATA t1018 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1018.
            t1014 = t1018.
          ENDIF.
          t1013 = t1014.
          DATA t1019 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1019.
          DATA t1020 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1020.
          DATA(t1021) = abap_true.
          IF t1021 = abap_true.
            DATA t1022 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t1023 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t1024 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t1024.
            t1023 = t1024.
            DATA(t1025) = t1023.
            DATA(t1026) = |Naming|.
            t1025->load( ).
            APPEND t1026 TO t1025->items.
            t1025->save( ).
            DATA(t1027) = t1023.
            DATA(t1028) = |Syntax|.
            t1027->load( ).
            APPEND t1028 TO t1027->items.
            t1027->save( ).
            DATA(t1029) = t1023.
            t1022 = t1029.
            t1020 = t1022.
          ELSE.
            DATA t1030 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1030.
            t1020 = t1030.
          ENDIF.
          t1019 = t1020.
          DATA t1031 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t1032 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1032.
          t1031 = t1032.
          DATA t1033 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t1034 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1034.
          t1033 = t1034.
          DATA t1035 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t1036 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1036.
          t1035 = t1036.
          DATA t1037 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t1038 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1038.
          t1037 = t1038.
          t1006 = NEW zcl_lnt_irule_metadata( i_key = t1007 i_title = t1009 i_short_description = t1011 i_bad_example = t1031 i_good_example = t1033 i_extended_information = t1013 i_tags = t1019 i_pragma = t1035 i_pseudo_comment = t1037 ).
          CREATE OBJECT t1006->zlnt_view_ownkeys_b0e8086400eb.
          t1006->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t1039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1039.
          IF t1006->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1006->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1039 ).
          ENDIF.
          DATA t1040 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1040.
          IF t1006->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1006->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1040 ).
          ENDIF.
          DATA t1041 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1041.
          IF t1006->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1006->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1041 ).
          ENDIF.
          DATA t1042 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1042.
          IF t1006->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1006->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1042 ).
          ENDIF.
          DATA t1043 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1043.
          IF t1006->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1006->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1043 ).
          ENDIF.
          CREATE OBJECT t1006->zlnt_json_ownkeys_70e5fd461788.
          t1006->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t1044) = |key|.
          DATA t1045 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1045.
          IF t1006->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1006->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1044 p1 = t1045 ).
          ENDIF.
          DATA(t1046) = |title|.
          DATA t1047 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1047.
          IF t1006->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1006->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1046 p1 = t1047 ).
          ENDIF.
          DATA(t1048) = |shortDescription|.
          DATA t1049 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1049.
          IF t1006->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1006->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1048 p1 = t1049 ).
          ENDIF.
          DATA(t1050) = |extendedInformation|.
          DATA t1051 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1051.
          IF t1006->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1006->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1050 p1 = t1051 ).
          ENDIF.
          DATA(t1052) = |tags|.
          DATA t1053 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1053.
          IF t1006->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1006->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1052 p1 = t1053 ).
          ENDIF.
          t1005 = t1006->key.
          DATA t1054 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t1055) = me->conf.
          t1054 = t1055->zlnt_view_read_sr_b4bcf11cce6c( ).
          t964 = zcl_lnt_issue=>at_row( i_file = t965 i_row = t966 i_message_26cb = t967 i_key = t1005 i_severity = t1054 ).
          t962 = t964.
        ELSE.
          DATA t1056 TYPE REF TO zcl_lnt_issue.
          CLEAR t1056.
          t962 = t1056.
        ENDIF.
        t948 = t962.
        t940 = t948.
      ELSE.
        DATA t1057 TYPE REF TO zcl_lnt_issue.
        CLEAR t1057.
        t940 = t1057.
      ENDIF.
      t913 = t940.
      t896 = t913.
    ENDIF.
    t870 = t896.
    t869->load( ).
    APPEND t870 TO t869->items.
    t869->save( ).
    DATA(t1058) = t680.
    DATA t1059 TYPE REF TO zcl_lnt_issue.
    CLEAR t1059.
    DATA t1060 TYPE REF TO zif_lnt_file.
    DATA(t1061) = t2.
    t1060 = t1061.
    DATA t1062 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1062.
    DATA t1063 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1063.
    DATA t1064 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA(t1065) = t5.
    t1064 = t1065.
    DATA t1066 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1066.
    DATA(t1067) = VALUE abap_bool( ).
    DATA(t1068) = t1064.
    IF t1068 IS INITIAL.
      t1067 = abap_true.
    ENDIF.
    IF t1067 = abap_true.
      DATA t1069 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1069.
      t1066 = t1069.
    ELSE.
      DATA t1070 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t1071 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t1072) = t1064.
      t1071 = t1072.
      t1070 = t1071->medium.
      t1066 = t1070.
    ENDIF.
    t1063 = t1066.
    t1062 = t1063.
    DATA t1073 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1073.
    DATA t1074 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1074.
    DATA t1075 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1075.
    DATA t1076 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA(t1077) = t23.
    t1076 = t1077.
    DATA t1078 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1078.
    DATA(t1079) = VALUE abap_bool( ).
    DATA(t1080) = t1076.
    IF t1080 IS INITIAL.
      t1079 = abap_true.
    ENDIF.
    IF t1079 = abap_true.
      DATA t1081 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1081.
      t1078 = t1081.
    ELSE.
      DATA t1082 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t1083 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t1084) = t1076.
      t1083 = t1084.
      t1082 = t1083->medium.
      t1078 = t1082.
    ENDIF.
    t1075 = t1078.
    CLEAR t1074.
    IF t1075 IS BOUND AND t1075->has = abap_true.
      CLEAR t1074.
      CREATE OBJECT t1074.
      t1074->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1074->sval = t1075->value.
    ENDIF.
    t1073 = t1074.
    DATA t1085 TYPE REF TO zcl_lnt_issue.
    CLEAR t1085.
    DATA(t1086) = VALUE abap_bool( ).
    DATA(t1087) = VALUE abap_bool( ).
    DATA t1088 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t1089) = t1062.
    t1088 = t1089.
    DATA t1090 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1091 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1091.
    t1090 = t1091.
    DATA(t1092) = VALUE abap_bool( ).
    DATA(t1093) = t1088.
    IF t1093 IS INITIAL.
      t1092 = abap_true.
    ELSEIF t1093->has = abap_false.
      t1092 = abap_true.
    ENDIF.
    t1087 = t1092.
    t1086 = t1087.
    IF t1087 = abap_false.
      DATA(t1094) = VALUE abap_bool( ).
      DATA t1095 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t1096) = t1073.
      t1095 = t1096.
      DATA t1097 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t1098 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1098.
      t1097 = t1098.
      DATA(t1099) = VALUE abap_bool( ).
      DATA(t1100) = t1095.
      IF t1100 IS INITIAL.
        t1099 = abap_true.
      ENDIF.
      t1094 = t1099.
      t1086 = t1094.
    ENDIF.
    IF t1086 = abap_true.
      DATA t1101 TYPE REF TO zcl_lnt_issue.
      CLEAR t1101.
      t1085 = t1101.
    ELSE.
      DATA t1102 TYPE REF TO zcl_lnt_issue.
      CLEAR t1102.
      DATA(t1103) = VALUE f( ).
      DATA(t1104) = VALUE f( ).
      DATA(t1105) = VALUE abap_bool( ).
      DATA(t1106) = VALUE string( ).
      DATA(t1107) = t1073.
      IF t1107 IS BOUND.
        t1106 = t1107->type_of( ).
        IF t1107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t1107->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t1106 = `function`.
        ENDIF.
      ELSE.
        t1106 = `undefined`.
      ENDIF.
      DATA(t1108) = |number|.
      t1105 = xsdbool( t1106 = t1108 ).
      IF t1105 = abap_true.
        DATA t1109 TYPE f.
        DATA(t1110) = t1073.
        t1109 = t1110->as_number( ).
        t1104 = t1109.
      ELSE.
        DATA(t1111) = VALUE f( ).
        DATA t1112 TYPE string.
        DATA(t1113) = t1073.
        t1112 = t1113->as_string( ).
        DATA t1114 TYPE i.
        DATA t1115 TYPE i.
        DATA(t1116) = VALUE string( ).
        DATA t1117 TYPE abap_bool.
        DATA t1118 TYPE abap_bool.
        DATA t1119 TYPE int8.
        DATA(t1120) = VALUE i( ).
        t1114 = 0.
        t1119 = 0.
        t1117 = abap_false.
        t1118 = abap_false.
        t1115 = strlen( t1112 ).
        DATA(t1121) = VALUE i( ).
        DATA(t1122) = VALUE i( ).
        DATA(t1123) = VALUE string( ).
        WHILE t1114 < t1115.
          t1122 = t1114.
          t1123 = t1112+t1122(1).
          DATA t1124 TYPE c LENGTH 1.
          CLEAR t1124.
          DATA(t1125) = VALUE xstring( ).
          DATA t1126 TYPE x LENGTH 1.
          CLEAR t1126.
          DATA t1127 TYPE x LENGTH 1.
          CLEAR t1127.
          DATA(t1128) = VALUE i( ).
          t1124 = t1123.
          t1121 = cl_abap_conv_out_ce=>uccpi( t1124 ).
          IF t1121 >= 255.
            IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
              zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t1123 IMPORTING buffer = t1125 ).
            t1126 = t1125(1).
            t1127 = t1125+1(1).
            t1121 = t1126.
            t1128 = t1127.
            t1121 = t1121 + t1128 * 256.
          ENDIF.
          IF t1121 = 9 OR t1121 = 10 OR t1121 = 11 OR t1121 = 12 OR t1121 = 13 OR t1121 = 32 OR t1121 = 160 OR t1121 = 5760 OR t1121 = 8232 OR t1121 = 8233 OR t1121 = 8239 OR t1121 = 8287 OR t1121 = 12288 OR t1121 = 65279 OR t1121 >= 8192
          AND t1121 <= 8202.
            t1114 = t1114 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t1114 < t1115.
          t1116 = t1112+t1114(1).
          IF t1116 = '-' OR t1116 = '+'.
            t1117 = xsdbool( t1116 = '-' ).
            t1114 = t1114 + 1.
          ENDIF.
        ENDIF.
        WHILE t1114 < t1115.
          t1116 = t1112+t1114(1).
          IF t1116 CN '0123456789' OR t1116 = ` `.
            EXIT.
          ENDIF.
          t1120 = t1116.
          IF t1119 > range_parse_safe_prefix OR ( t1119 = range_parse_safe_prefix AND t1120 > 1 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t1119 = t1119 * 10 + t1120.
          t1118 = abap_true.
          t1114 = t1114 + 1.
        ENDWHILE.
        IF t1118 = abap_false OR ( t1117 = abap_true AND t1119 = 0 ).
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        IF t1117 = abap_true.
          t1119 = 0 - t1119.
        ENDIF.
        t1111 = t1119.
        t1104 = t1111.
      ENDIF.
      t1103 = t1104.
      DATA t1129 TYPE REF TO zcl_lnt_issue.
      CLEAR t1129.
      DATA t1130 TYPE abap_bool.
      DATA t1131 TYPE f.
      DATA t1132 TYPE i.
      DATA t1133 TYPE string.
      DATA(t1134) = t1062.
      t1133 = t1134->value.
      DATA(t1135) = strlen( t1133 ).
      t1132 = t1135.
      t1131 = t1132.
      DATA(t1136) = t1103.
      t1130 = xsdbool( t1131 > t1136 ).
      IF t1130 = abap_true.
        DATA t1137 TYPE REF TO zcl_lnt_issue.
        CLEAR t1137.
        DATA(t1138) = VALUE string( ).
        DATA(t1139) = VALUE string( ).
        DATA(t1140) = VALUE abap_bool( ).
        DATA t1141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1141.
        IF t1141 IS BOUND.
          IF t1141->has = abap_true.
            t1140 = xsdbool( strlen( t1141->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t1140 = abap_true.
          DATA t1142 TYPE string.
          DATA t1143 TYPE string.
          DATA(t1144) = |[|.
          DATA t1145 TYPE string.
          DATA t1146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1146.
          t1145 = t1146->value.
          DATA(t1147) = strlen( t1144 ).
          t1143 = |{ t1144 }{ t1145 }|.
          DATA(t1148) = |] |.
          DATA(t1149) = strlen( t1143 ).
          t1142 = |{ t1143 }{ t1148 }|.
          t1139 = t1142.
        ELSE.
          DATA(t1150) = ||.
          t1139 = t1150.
        ENDIF.
        t1138 = t1139.
        DATA t1151 TYPE REF TO zcl_lnt_issue.
        CLEAR t1151.
        DATA(t1152) = abap_true.
        IF t1152 = abap_true.
          DATA t1153 TYPE REF TO zcl_lnt_issue.
          CLEAR t1153.
          DATA(t1154) = t1060.
          DATA(t1155) = CONV f( 1 ).
          DATA(t1156) = VALUE string( ).
          DATA(t1157) = VALUE string( ).
          DATA(t1158) = VALUE string( ).
          DATA(t1159) = VALUE string( ).
          DATA t1160 TYPE string.
          DATA t1161 TYPE string.
          DATA t1162 TYPE string.
          DATA t1163 TYPE string.
          DATA t1164 TYPE string.
          DATA t1165 TYPE string.
          DATA(t1166) = ||.
          DATA(t1167) = t1138.
          DATA(t1168) = strlen( t1166 ).
          t1165 = |{ t1166 }{ t1167 }|.
          DATA(t1169) = ||.
          DATA(t1170) = strlen( t1165 ).
          t1164 = |{ t1165 }{ t1169 }|.
          DATA(t1171) = |SCRTEXT_M|.
          DATA(t1172) = strlen( t1164 ).
          t1163 = |{ t1164 }{ t1171 }|.
          DATA(t1173) = | "|.
          DATA(t1174) = strlen( t1163 ).
          t1162 = |{ t1163 }{ t1173 }|.
          DATA t1175 TYPE string.
          DATA(t1176) = t1062.
          t1175 = t1176->value.
          DATA(t1177) = strlen( t1162 ).
          t1161 = |{ t1162 }{ t1175 }|.
          DATA(t1178) = |" exceeds maximum length of |.
          DATA(t1179) = strlen( t1161 ).
          t1160 = |{ t1161 }{ t1178 }|.
          DATA(t1180) = VALUE string( ).
          DATA(t1181) = t1103.
          IF t1181 <> trunc( t1181 ) OR t1181 > range_safe_integer OR t1181 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t1182) = CONV int8( t1181 ).
          t1180 = |{ t1182 }|.
          DATA(t1183) = strlen( t1160 ).
          t1159 = |{ t1160 }{ t1180 }|.
          DATA(t1184) = | characters (actual: |.
          DATA(t1185) = strlen( t1159 ).
          t1158 = |{ t1159 }{ t1184 }|.
          DATA t1186 TYPE string.
          DATA t1187 TYPE i.
          DATA t1188 TYPE string.
          DATA(t1189) = t1062.
          t1188 = t1189->value.
          DATA(t1190) = strlen( t1188 ).
          t1187 = t1190.
          t1186 = |{ t1187 }|.
          DATA(t1191) = strlen( t1158 ).
          t1157 = |{ t1158 }{ t1186 }|.
          DATA(t1192) = |)|.
          DATA(t1193) = strlen( t1157 ).
          t1156 = |{ t1157 }{ t1192 }|.
          DATA(t1194) = VALUE string( ).
          DATA t1195 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t1195.
          DATA t1196 TYPE string.
          DATA(t1197) = |xml_consistency|.
          t1196 = t1197.
          DATA t1198 TYPE string.
          DATA(t1199) = |XML consistency|.
          t1198 = t1199.
          DATA t1200 TYPE string.
          DATA(t1201) = |Checks the consistency of main XML files|.
          t1200 = t1201.
          DATA t1202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1202.
          DATA t1203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1203.
          DATA(t1204) = abap_true.
          IF t1204 = abap_true.
            DATA(t1205) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
            t1205 = t1205 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
            t1205 = t1205 && |ce table and field values\n* Transparent TABL objects have de|.
            t1205 = t1205 && |livery class and size category set\n* Lock parameter names in|.
            t1205 = t1205 && | ENQU objects are max 16 characters\n* Texts and translations|.
            t1205 = t1205 && | do not exceed maximum allowed length.|.
            DATA(t1206) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1206->has = abap_true.
            t1206->value = t1205.
            t1203 = t1206.
          ELSE.
            DATA t1207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1207.
            t1203 = t1207.
          ENDIF.
          t1202 = t1203.
          DATA t1208 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1208.
          DATA t1209 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1209.
          DATA(t1210) = abap_true.
          IF t1210 = abap_true.
            DATA t1211 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t1212 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t1213 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t1213.
            t1212 = t1213.
            DATA(t1214) = t1212.
            DATA(t1215) = |Naming|.
            t1214->load( ).
            APPEND t1215 TO t1214->items.
            t1214->save( ).
            DATA(t1216) = t1212.
            DATA(t1217) = |Syntax|.
            t1216->load( ).
            APPEND t1217 TO t1216->items.
            t1216->save( ).
            DATA(t1218) = t1212.
            t1211 = t1218.
            t1209 = t1211.
          ELSE.
            DATA t1219 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1219.
            t1209 = t1219.
          ENDIF.
          t1208 = t1209.
          DATA t1220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t1221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1221.
          t1220 = t1221.
          DATA t1222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t1223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1223.
          t1222 = t1223.
          DATA t1224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t1225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1225.
          t1224 = t1225.
          DATA t1226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t1227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1227.
          t1226 = t1227.
          t1195 = NEW zcl_lnt_irule_metadata( i_key = t1196 i_title = t1198 i_short_description = t1200 i_bad_example = t1220 i_good_example = t1222 i_extended_information = t1202 i_tags = t1208 i_pragma = t1224 i_pseudo_comment = t1226 ).
          CREATE OBJECT t1195->zlnt_view_ownkeys_b0e8086400eb.
          t1195->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t1228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1228.
          IF t1195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1228 ).
          ENDIF.
          DATA t1229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1229.
          IF t1195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1229 ).
          ENDIF.
          DATA t1230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1230.
          IF t1195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1230 ).
          ENDIF.
          DATA t1231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1231.
          IF t1195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1231 ).
          ENDIF.
          DATA t1232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1232.
          IF t1195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1232 ).
          ENDIF.
          CREATE OBJECT t1195->zlnt_json_ownkeys_70e5fd461788.
          t1195->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t1233) = |key|.
          DATA t1234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1234.
          IF t1195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1195->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1233 p1 = t1234 ).
          ENDIF.
          DATA(t1235) = |title|.
          DATA t1236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1236.
          IF t1195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1195->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1235 p1 = t1236 ).
          ENDIF.
          DATA(t1237) = |shortDescription|.
          DATA t1238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1238.
          IF t1195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1195->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1237 p1 = t1238 ).
          ENDIF.
          DATA(t1239) = |extendedInformation|.
          DATA t1240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1240.
          IF t1195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1195->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1239 p1 = t1240 ).
          ENDIF.
          DATA(t1241) = |tags|.
          DATA t1242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1242.
          IF t1195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1195->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1241 p1 = t1242 ).
          ENDIF.
          t1194 = t1195->key.
          DATA t1243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t1244) = me->conf.
          t1243 = t1244->zlnt_view_read_sr_b4bcf11cce6c( ).
          t1153 = zcl_lnt_issue=>at_row( i_file = t1154 i_row = t1155 i_message_26cb = t1156 i_key = t1194 i_severity = t1243 ).
          t1151 = t1153.
        ELSE.
          DATA t1245 TYPE REF TO zcl_lnt_issue.
          CLEAR t1245.
          t1151 = t1245.
        ENDIF.
        t1137 = t1151.
        t1129 = t1137.
      ELSE.
        DATA t1246 TYPE REF TO zcl_lnt_issue.
        CLEAR t1246.
        t1129 = t1246.
      ENDIF.
      t1102 = t1129.
      t1085 = t1102.
    ENDIF.
    t1059 = t1085.
    t1058->load( ).
    APPEND t1059 TO t1058->items.
    t1058->save( ).
    DATA(t1247) = t680.
    DATA t1248 TYPE REF TO zcl_lnt_issue.
    CLEAR t1248.
    DATA t1249 TYPE REF TO zif_lnt_file.
    DATA(t1250) = t2.
    t1249 = t1250.
    DATA t1251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1251.
    DATA t1252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1252.
    DATA t1253 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA(t1254) = t5.
    t1253 = t1254.
    DATA t1255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1255.
    DATA(t1256) = VALUE abap_bool( ).
    DATA(t1257) = t1253.
    IF t1257 IS INITIAL.
      t1256 = abap_true.
    ENDIF.
    IF t1256 = abap_true.
      DATA t1258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1258.
      t1255 = t1258.
    ELSE.
      DATA t1259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t1260 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t1261) = t1253.
      t1260 = t1261.
      t1259 = t1260->long.
      t1255 = t1259.
    ENDIF.
    t1252 = t1255.
    t1251 = t1252.
    DATA t1262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1262.
    DATA t1263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1263.
    DATA t1264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1264.
    DATA t1265 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA(t1266) = t23.
    t1265 = t1266.
    DATA t1267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1267.
    DATA(t1268) = VALUE abap_bool( ).
    DATA(t1269) = t1265.
    IF t1269 IS INITIAL.
      t1268 = abap_true.
    ENDIF.
    IF t1268 = abap_true.
      DATA t1270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1270.
      t1267 = t1270.
    ELSE.
      DATA t1271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t1272 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t1273) = t1265.
      t1272 = t1273.
      t1271 = t1272->long.
      t1267 = t1271.
    ENDIF.
    t1264 = t1267.
    CLEAR t1263.
    IF t1264 IS BOUND AND t1264->has = abap_true.
      CLEAR t1263.
      CREATE OBJECT t1263.
      t1263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1263->sval = t1264->value.
    ENDIF.
    t1262 = t1263.
    DATA t1274 TYPE REF TO zcl_lnt_issue.
    CLEAR t1274.
    DATA(t1275) = VALUE abap_bool( ).
    DATA(t1276) = VALUE abap_bool( ).
    DATA t1277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t1278) = t1251.
    t1277 = t1278.
    DATA t1279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1280.
    t1279 = t1280.
    DATA(t1281) = VALUE abap_bool( ).
    DATA(t1282) = t1277.
    IF t1282 IS INITIAL.
      t1281 = abap_true.
    ELSEIF t1282->has = abap_false.
      t1281 = abap_true.
    ENDIF.
    t1276 = t1281.
    t1275 = t1276.
    IF t1276 = abap_false.
      DATA(t1283) = VALUE abap_bool( ).
      DATA t1284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t1285) = t1262.
      t1284 = t1285.
      DATA t1286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t1287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1287.
      t1286 = t1287.
      DATA(t1288) = VALUE abap_bool( ).
      DATA(t1289) = t1284.
      IF t1289 IS INITIAL.
        t1288 = abap_true.
      ENDIF.
      t1283 = t1288.
      t1275 = t1283.
    ENDIF.
    IF t1275 = abap_true.
      DATA t1290 TYPE REF TO zcl_lnt_issue.
      CLEAR t1290.
      t1274 = t1290.
    ELSE.
      DATA t1291 TYPE REF TO zcl_lnt_issue.
      CLEAR t1291.
      DATA(t1292) = VALUE f( ).
      DATA(t1293) = VALUE f( ).
      DATA(t1294) = VALUE abap_bool( ).
      DATA(t1295) = VALUE string( ).
      DATA(t1296) = t1262.
      IF t1296 IS BOUND.
        t1295 = t1296->type_of( ).
        IF t1296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t1296->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t1295 = `function`.
        ENDIF.
      ELSE.
        t1295 = `undefined`.
      ENDIF.
      DATA(t1297) = |number|.
      t1294 = xsdbool( t1295 = t1297 ).
      IF t1294 = abap_true.
        DATA t1298 TYPE f.
        DATA(t1299) = t1262.
        t1298 = t1299->as_number( ).
        t1293 = t1298.
      ELSE.
        DATA(t1300) = VALUE f( ).
        DATA t1301 TYPE string.
        DATA(t1302) = t1262.
        t1301 = t1302->as_string( ).
        DATA t1303 TYPE i.
        DATA t1304 TYPE i.
        DATA(t1305) = VALUE string( ).
        DATA t1306 TYPE abap_bool.
        DATA t1307 TYPE abap_bool.
        DATA t1308 TYPE int8.
        DATA(t1309) = VALUE i( ).
        t1303 = 0.
        t1308 = 0.
        t1306 = abap_false.
        t1307 = abap_false.
        t1304 = strlen( t1301 ).
        DATA(t1310) = VALUE i( ).
        DATA(t1311) = VALUE i( ).
        DATA(t1312) = VALUE string( ).
        WHILE t1303 < t1304.
          t1311 = t1303.
          t1312 = t1301+t1311(1).
          DATA t1313 TYPE c LENGTH 1.
          CLEAR t1313.
          DATA(t1314) = VALUE xstring( ).
          DATA t1315 TYPE x LENGTH 1.
          CLEAR t1315.
          DATA t1316 TYPE x LENGTH 1.
          CLEAR t1316.
          DATA(t1317) = VALUE i( ).
          t1313 = t1312.
          t1310 = cl_abap_conv_out_ce=>uccpi( t1313 ).
          IF t1310 >= 255.
            IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
              zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t1312 IMPORTING buffer = t1314 ).
            t1315 = t1314(1).
            t1316 = t1314+1(1).
            t1310 = t1315.
            t1317 = t1316.
            t1310 = t1310 + t1317 * 256.
          ENDIF.
          IF t1310 = 9 OR t1310 = 10 OR t1310 = 11 OR t1310 = 12 OR t1310 = 13 OR t1310 = 32 OR t1310 = 160 OR t1310 = 5760 OR t1310 = 8232 OR t1310 = 8233 OR t1310 = 8239 OR t1310 = 8287 OR t1310 = 12288 OR t1310 = 65279 OR t1310 >= 8192
          AND t1310 <= 8202.
            t1303 = t1303 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t1303 < t1304.
          t1305 = t1301+t1303(1).
          IF t1305 = '-' OR t1305 = '+'.
            t1306 = xsdbool( t1305 = '-' ).
            t1303 = t1303 + 1.
          ENDIF.
        ENDIF.
        WHILE t1303 < t1304.
          t1305 = t1301+t1303(1).
          IF t1305 CN '0123456789' OR t1305 = ` `.
            EXIT.
          ENDIF.
          t1309 = t1305.
          IF t1308 > range_parse_safe_prefix OR ( t1308 = range_parse_safe_prefix AND t1309 > 1 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t1308 = t1308 * 10 + t1309.
          t1307 = abap_true.
          t1303 = t1303 + 1.
        ENDWHILE.
        IF t1307 = abap_false OR ( t1306 = abap_true AND t1308 = 0 ).
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        IF t1306 = abap_true.
          t1308 = 0 - t1308.
        ENDIF.
        t1300 = t1308.
        t1293 = t1300.
      ENDIF.
      t1292 = t1293.
      DATA t1318 TYPE REF TO zcl_lnt_issue.
      CLEAR t1318.
      DATA t1319 TYPE abap_bool.
      DATA t1320 TYPE f.
      DATA t1321 TYPE i.
      DATA t1322 TYPE string.
      DATA(t1323) = t1251.
      t1322 = t1323->value.
      DATA(t1324) = strlen( t1322 ).
      t1321 = t1324.
      t1320 = t1321.
      DATA(t1325) = t1292.
      t1319 = xsdbool( t1320 > t1325 ).
      IF t1319 = abap_true.
        DATA t1326 TYPE REF TO zcl_lnt_issue.
        CLEAR t1326.
        DATA(t1327) = VALUE string( ).
        DATA(t1328) = VALUE string( ).
        DATA(t1329) = VALUE abap_bool( ).
        DATA t1330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1330.
        IF t1330 IS BOUND.
          IF t1330->has = abap_true.
            t1329 = xsdbool( strlen( t1330->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t1329 = abap_true.
          DATA t1331 TYPE string.
          DATA t1332 TYPE string.
          DATA(t1333) = |[|.
          DATA t1334 TYPE string.
          DATA t1335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1335.
          t1334 = t1335->value.
          DATA(t1336) = strlen( t1333 ).
          t1332 = |{ t1333 }{ t1334 }|.
          DATA(t1337) = |] |.
          DATA(t1338) = strlen( t1332 ).
          t1331 = |{ t1332 }{ t1337 }|.
          t1328 = t1331.
        ELSE.
          DATA(t1339) = ||.
          t1328 = t1339.
        ENDIF.
        t1327 = t1328.
        DATA t1340 TYPE REF TO zcl_lnt_issue.
        CLEAR t1340.
        DATA(t1341) = abap_true.
        IF t1341 = abap_true.
          DATA t1342 TYPE REF TO zcl_lnt_issue.
          CLEAR t1342.
          DATA(t1343) = t1249.
          DATA(t1344) = CONV f( 1 ).
          DATA(t1345) = VALUE string( ).
          DATA(t1346) = VALUE string( ).
          DATA(t1347) = VALUE string( ).
          DATA(t1348) = VALUE string( ).
          DATA t1349 TYPE string.
          DATA t1350 TYPE string.
          DATA t1351 TYPE string.
          DATA t1352 TYPE string.
          DATA t1353 TYPE string.
          DATA t1354 TYPE string.
          DATA(t1355) = ||.
          DATA(t1356) = t1327.
          DATA(t1357) = strlen( t1355 ).
          t1354 = |{ t1355 }{ t1356 }|.
          DATA(t1358) = ||.
          DATA(t1359) = strlen( t1354 ).
          t1353 = |{ t1354 }{ t1358 }|.
          DATA(t1360) = |SCRTEXT_L|.
          DATA(t1361) = strlen( t1353 ).
          t1352 = |{ t1353 }{ t1360 }|.
          DATA(t1362) = | "|.
          DATA(t1363) = strlen( t1352 ).
          t1351 = |{ t1352 }{ t1362 }|.
          DATA t1364 TYPE string.
          DATA(t1365) = t1251.
          t1364 = t1365->value.
          DATA(t1366) = strlen( t1351 ).
          t1350 = |{ t1351 }{ t1364 }|.
          DATA(t1367) = |" exceeds maximum length of |.
          DATA(t1368) = strlen( t1350 ).
          t1349 = |{ t1350 }{ t1367 }|.
          DATA(t1369) = VALUE string( ).
          DATA(t1370) = t1292.
          IF t1370 <> trunc( t1370 ) OR t1370 > range_safe_integer OR t1370 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t1371) = CONV int8( t1370 ).
          t1369 = |{ t1371 }|.
          DATA(t1372) = strlen( t1349 ).
          t1348 = |{ t1349 }{ t1369 }|.
          DATA(t1373) = | characters (actual: |.
          DATA(t1374) = strlen( t1348 ).
          t1347 = |{ t1348 }{ t1373 }|.
          DATA t1375 TYPE string.
          DATA t1376 TYPE i.
          DATA t1377 TYPE string.
          DATA(t1378) = t1251.
          t1377 = t1378->value.
          DATA(t1379) = strlen( t1377 ).
          t1376 = t1379.
          t1375 = |{ t1376 }|.
          DATA(t1380) = strlen( t1347 ).
          t1346 = |{ t1347 }{ t1375 }|.
          DATA(t1381) = |)|.
          DATA(t1382) = strlen( t1346 ).
          t1345 = |{ t1346 }{ t1381 }|.
          DATA(t1383) = VALUE string( ).
          DATA t1384 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t1384.
          DATA t1385 TYPE string.
          DATA(t1386) = |xml_consistency|.
          t1385 = t1386.
          DATA t1387 TYPE string.
          DATA(t1388) = |XML consistency|.
          t1387 = t1388.
          DATA t1389 TYPE string.
          DATA(t1390) = |Checks the consistency of main XML files|.
          t1389 = t1390.
          DATA t1391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1391.
          DATA t1392 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1392.
          DATA(t1393) = abap_true.
          IF t1393 = abap_true.
            DATA(t1394) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
            t1394 = t1394 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
            t1394 = t1394 && |ce table and field values\n* Transparent TABL objects have de|.
            t1394 = t1394 && |livery class and size category set\n* Lock parameter names in|.
            t1394 = t1394 && | ENQU objects are max 16 characters\n* Texts and translations|.
            t1394 = t1394 && | do not exceed maximum allowed length.|.
            DATA(t1395) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1395->has = abap_true.
            t1395->value = t1394.
            t1392 = t1395.
          ELSE.
            DATA t1396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1396.
            t1392 = t1396.
          ENDIF.
          t1391 = t1392.
          DATA t1397 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1397.
          DATA t1398 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1398.
          DATA(t1399) = abap_true.
          IF t1399 = abap_true.
            DATA t1400 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t1401 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t1402 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t1402.
            t1401 = t1402.
            DATA(t1403) = t1401.
            DATA(t1404) = |Naming|.
            t1403->load( ).
            APPEND t1404 TO t1403->items.
            t1403->save( ).
            DATA(t1405) = t1401.
            DATA(t1406) = |Syntax|.
            t1405->load( ).
            APPEND t1406 TO t1405->items.
            t1405->save( ).
            DATA(t1407) = t1401.
            t1400 = t1407.
            t1398 = t1400.
          ELSE.
            DATA t1408 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1408.
            t1398 = t1408.
          ENDIF.
          t1397 = t1398.
          DATA t1409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t1410 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1410.
          t1409 = t1410.
          DATA t1411 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t1412 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1412.
          t1411 = t1412.
          DATA t1413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t1414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1414.
          t1413 = t1414.
          DATA t1415 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t1416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1416.
          t1415 = t1416.
          t1384 = NEW zcl_lnt_irule_metadata( i_key = t1385 i_title = t1387 i_short_description = t1389 i_bad_example = t1409 i_good_example = t1411 i_extended_information = t1391 i_tags = t1397 i_pragma = t1413 i_pseudo_comment = t1415 ).
          CREATE OBJECT t1384->zlnt_view_ownkeys_b0e8086400eb.
          t1384->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t1417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1417.
          IF t1384->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1384->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1417 ).
          ENDIF.
          DATA t1418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1418.
          IF t1384->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1384->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1418 ).
          ENDIF.
          DATA t1419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1419.
          IF t1384->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1384->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1419 ).
          ENDIF.
          DATA t1420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1420.
          IF t1384->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1384->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1420 ).
          ENDIF.
          DATA t1421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1421.
          IF t1384->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1384->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1421 ).
          ENDIF.
          CREATE OBJECT t1384->zlnt_json_ownkeys_70e5fd461788.
          t1384->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t1422) = |key|.
          DATA t1423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1423.
          IF t1384->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1384->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1422 p1 = t1423 ).
          ENDIF.
          DATA(t1424) = |title|.
          DATA t1425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1425.
          IF t1384->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1384->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1424 p1 = t1425 ).
          ENDIF.
          DATA(t1426) = |shortDescription|.
          DATA t1427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1427.
          IF t1384->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1384->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1426 p1 = t1427 ).
          ENDIF.
          DATA(t1428) = |extendedInformation|.
          DATA t1429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1429.
          IF t1384->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1384->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1428 p1 = t1429 ).
          ENDIF.
          DATA(t1430) = |tags|.
          DATA t1431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1431.
          IF t1384->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1384->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1430 p1 = t1431 ).
          ENDIF.
          t1383 = t1384->key.
          DATA t1432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t1433) = me->conf.
          t1432 = t1433->zlnt_view_read_sr_b4bcf11cce6c( ).
          t1342 = zcl_lnt_issue=>at_row( i_file = t1343 i_row = t1344 i_message_26cb = t1345 i_key = t1383 i_severity = t1432 ).
          t1340 = t1342.
        ELSE.
          DATA t1434 TYPE REF TO zcl_lnt_issue.
          CLEAR t1434.
          t1340 = t1434.
        ENDIF.
        t1326 = t1340.
        t1318 = t1326.
      ELSE.
        DATA t1435 TYPE REF TO zcl_lnt_issue.
        CLEAR t1435.
        t1318 = t1435.
      ENDIF.
      t1291 = t1318.
      t1274 = t1291.
    ENDIF.
    t1248 = t1274.
    t1247->load( ).
    APPEND t1248 TO t1247->items.
    t1247->save( ).
    DATA(t1436) = t680.
    DATA t1437 TYPE REF TO zcl_lnt_issue.
    CLEAR t1437.
    DATA t1438 TYPE REF TO zif_lnt_file.
    DATA(t1439) = t2.
    t1438 = t1439.
    DATA t1440 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1440.
    DATA t1441 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1441.
    DATA t1442 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA(t1443) = t5.
    t1442 = t1443.
    DATA t1444 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1444.
    DATA(t1445) = VALUE abap_bool( ).
    DATA(t1446) = t1442.
    IF t1446 IS INITIAL.
      t1445 = abap_true.
    ENDIF.
    IF t1445 = abap_true.
      DATA t1447 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1447.
      t1444 = t1447.
    ELSE.
      DATA t1448 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t1449 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t1450) = t1442.
      t1449 = t1450.
      t1448 = t1449->heading.
      t1444 = t1448.
    ENDIF.
    t1441 = t1444.
    t1440 = t1441.
    DATA t1451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1451.
    DATA t1452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1452.
    DATA t1453 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1453.
    DATA t1454 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA(t1455) = t23.
    t1454 = t1455.
    DATA t1456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1456.
    DATA(t1457) = VALUE abap_bool( ).
    DATA(t1458) = t1454.
    IF t1458 IS INITIAL.
      t1457 = abap_true.
    ENDIF.
    IF t1457 = abap_true.
      DATA t1459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1459.
      t1456 = t1459.
    ELSE.
      DATA t1460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t1461 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t1462) = t1454.
      t1461 = t1462.
      t1460 = t1461->heading.
      t1456 = t1460.
    ENDIF.
    t1453 = t1456.
    CLEAR t1452.
    IF t1453 IS BOUND AND t1453->has = abap_true.
      CLEAR t1452.
      CREATE OBJECT t1452.
      t1452->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1452->sval = t1453->value.
    ENDIF.
    t1451 = t1452.
    DATA t1463 TYPE REF TO zcl_lnt_issue.
    CLEAR t1463.
    DATA(t1464) = VALUE abap_bool( ).
    DATA(t1465) = VALUE abap_bool( ).
    DATA t1466 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t1467) = t1440.
    t1466 = t1467.
    DATA t1468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1469.
    t1468 = t1469.
    DATA(t1470) = VALUE abap_bool( ).
    DATA(t1471) = t1466.
    IF t1471 IS INITIAL.
      t1470 = abap_true.
    ELSEIF t1471->has = abap_false.
      t1470 = abap_true.
    ENDIF.
    t1465 = t1470.
    t1464 = t1465.
    IF t1465 = abap_false.
      DATA(t1472) = VALUE abap_bool( ).
      DATA t1473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t1474) = t1451.
      t1473 = t1474.
      DATA t1475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t1476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1476.
      t1475 = t1476.
      DATA(t1477) = VALUE abap_bool( ).
      DATA(t1478) = t1473.
      IF t1478 IS INITIAL.
        t1477 = abap_true.
      ENDIF.
      t1472 = t1477.
      t1464 = t1472.
    ENDIF.
    IF t1464 = abap_true.
      DATA t1479 TYPE REF TO zcl_lnt_issue.
      CLEAR t1479.
      t1463 = t1479.
    ELSE.
      DATA t1480 TYPE REF TO zcl_lnt_issue.
      CLEAR t1480.
      DATA(t1481) = VALUE f( ).
      DATA(t1482) = VALUE f( ).
      DATA(t1483) = VALUE abap_bool( ).
      DATA(t1484) = VALUE string( ).
      DATA(t1485) = t1451.
      IF t1485 IS BOUND.
        t1484 = t1485->type_of( ).
        IF t1485->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t1485->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t1484 = `function`.
        ENDIF.
      ELSE.
        t1484 = `undefined`.
      ENDIF.
      DATA(t1486) = |number|.
      t1483 = xsdbool( t1484 = t1486 ).
      IF t1483 = abap_true.
        DATA t1487 TYPE f.
        DATA(t1488) = t1451.
        t1487 = t1488->as_number( ).
        t1482 = t1487.
      ELSE.
        DATA(t1489) = VALUE f( ).
        DATA t1490 TYPE string.
        DATA(t1491) = t1451.
        t1490 = t1491->as_string( ).
        DATA t1492 TYPE i.
        DATA t1493 TYPE i.
        DATA(t1494) = VALUE string( ).
        DATA t1495 TYPE abap_bool.
        DATA t1496 TYPE abap_bool.
        DATA t1497 TYPE int8.
        DATA(t1498) = VALUE i( ).
        t1492 = 0.
        t1497 = 0.
        t1495 = abap_false.
        t1496 = abap_false.
        t1493 = strlen( t1490 ).
        DATA(t1499) = VALUE i( ).
        DATA(t1500) = VALUE i( ).
        DATA(t1501) = VALUE string( ).
        WHILE t1492 < t1493.
          t1500 = t1492.
          t1501 = t1490+t1500(1).
          DATA t1502 TYPE c LENGTH 1.
          CLEAR t1502.
          DATA(t1503) = VALUE xstring( ).
          DATA t1504 TYPE x LENGTH 1.
          CLEAR t1504.
          DATA t1505 TYPE x LENGTH 1.
          CLEAR t1505.
          DATA(t1506) = VALUE i( ).
          t1502 = t1501.
          t1499 = cl_abap_conv_out_ce=>uccpi( t1502 ).
          IF t1499 >= 255.
            IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
              zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t1501 IMPORTING buffer = t1503 ).
            t1504 = t1503(1).
            t1505 = t1503+1(1).
            t1499 = t1504.
            t1506 = t1505.
            t1499 = t1499 + t1506 * 256.
          ENDIF.
          IF t1499 = 9 OR t1499 = 10 OR t1499 = 11 OR t1499 = 12 OR t1499 = 13 OR t1499 = 32 OR t1499 = 160 OR t1499 = 5760 OR t1499 = 8232 OR t1499 = 8233 OR t1499 = 8239 OR t1499 = 8287 OR t1499 = 12288 OR t1499 = 65279 OR t1499 >= 8192
          AND t1499 <= 8202.
            t1492 = t1492 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t1492 < t1493.
          t1494 = t1490+t1492(1).
          IF t1494 = '-' OR t1494 = '+'.
            t1495 = xsdbool( t1494 = '-' ).
            t1492 = t1492 + 1.
          ENDIF.
        ENDIF.
        WHILE t1492 < t1493.
          t1494 = t1490+t1492(1).
          IF t1494 CN '0123456789' OR t1494 = ` `.
            EXIT.
          ENDIF.
          t1498 = t1494.
          IF t1497 > range_parse_safe_prefix OR ( t1497 = range_parse_safe_prefix AND t1498 > 1 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t1497 = t1497 * 10 + t1498.
          t1496 = abap_true.
          t1492 = t1492 + 1.
        ENDWHILE.
        IF t1496 = abap_false OR ( t1495 = abap_true AND t1497 = 0 ).
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        IF t1495 = abap_true.
          t1497 = 0 - t1497.
        ENDIF.
        t1489 = t1497.
        t1482 = t1489.
      ENDIF.
      t1481 = t1482.
      DATA t1507 TYPE REF TO zcl_lnt_issue.
      CLEAR t1507.
      DATA t1508 TYPE abap_bool.
      DATA t1509 TYPE f.
      DATA t1510 TYPE i.
      DATA t1511 TYPE string.
      DATA(t1512) = t1440.
      t1511 = t1512->value.
      DATA(t1513) = strlen( t1511 ).
      t1510 = t1513.
      t1509 = t1510.
      DATA(t1514) = t1481.
      t1508 = xsdbool( t1509 > t1514 ).
      IF t1508 = abap_true.
        DATA t1515 TYPE REF TO zcl_lnt_issue.
        CLEAR t1515.
        DATA(t1516) = VALUE string( ).
        DATA(t1517) = VALUE string( ).
        DATA(t1518) = VALUE abap_bool( ).
        DATA t1519 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1519.
        IF t1519 IS BOUND.
          IF t1519->has = abap_true.
            t1518 = xsdbool( strlen( t1519->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t1518 = abap_true.
          DATA t1520 TYPE string.
          DATA t1521 TYPE string.
          DATA(t1522) = |[|.
          DATA t1523 TYPE string.
          DATA t1524 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1524.
          t1523 = t1524->value.
          DATA(t1525) = strlen( t1522 ).
          t1521 = |{ t1522 }{ t1523 }|.
          DATA(t1526) = |] |.
          DATA(t1527) = strlen( t1521 ).
          t1520 = |{ t1521 }{ t1526 }|.
          t1517 = t1520.
        ELSE.
          DATA(t1528) = ||.
          t1517 = t1528.
        ENDIF.
        t1516 = t1517.
        DATA t1529 TYPE REF TO zcl_lnt_issue.
        CLEAR t1529.
        DATA(t1530) = abap_true.
        IF t1530 = abap_true.
          DATA t1531 TYPE REF TO zcl_lnt_issue.
          CLEAR t1531.
          DATA(t1532) = t1438.
          DATA(t1533) = CONV f( 1 ).
          DATA(t1534) = VALUE string( ).
          DATA(t1535) = VALUE string( ).
          DATA(t1536) = VALUE string( ).
          DATA(t1537) = VALUE string( ).
          DATA t1538 TYPE string.
          DATA t1539 TYPE string.
          DATA t1540 TYPE string.
          DATA t1541 TYPE string.
          DATA t1542 TYPE string.
          DATA t1543 TYPE string.
          DATA(t1544) = ||.
          DATA(t1545) = t1516.
          DATA(t1546) = strlen( t1544 ).
          t1543 = |{ t1544 }{ t1545 }|.
          DATA(t1547) = ||.
          DATA(t1548) = strlen( t1543 ).
          t1542 = |{ t1543 }{ t1547 }|.
          DATA(t1549) = |REPTEXT|.
          DATA(t1550) = strlen( t1542 ).
          t1541 = |{ t1542 }{ t1549 }|.
          DATA(t1551) = | "|.
          DATA(t1552) = strlen( t1541 ).
          t1540 = |{ t1541 }{ t1551 }|.
          DATA t1553 TYPE string.
          DATA(t1554) = t1440.
          t1553 = t1554->value.
          DATA(t1555) = strlen( t1540 ).
          t1539 = |{ t1540 }{ t1553 }|.
          DATA(t1556) = |" exceeds maximum length of |.
          DATA(t1557) = strlen( t1539 ).
          t1538 = |{ t1539 }{ t1556 }|.
          DATA(t1558) = VALUE string( ).
          DATA(t1559) = t1481.
          IF t1559 <> trunc( t1559 ) OR t1559 > range_safe_integer OR t1559 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t1560) = CONV int8( t1559 ).
          t1558 = |{ t1560 }|.
          DATA(t1561) = strlen( t1538 ).
          t1537 = |{ t1538 }{ t1558 }|.
          DATA(t1562) = | characters (actual: |.
          DATA(t1563) = strlen( t1537 ).
          t1536 = |{ t1537 }{ t1562 }|.
          DATA t1564 TYPE string.
          DATA t1565 TYPE i.
          DATA t1566 TYPE string.
          DATA(t1567) = t1440.
          t1566 = t1567->value.
          DATA(t1568) = strlen( t1566 ).
          t1565 = t1568.
          t1564 = |{ t1565 }|.
          DATA(t1569) = strlen( t1536 ).
          t1535 = |{ t1536 }{ t1564 }|.
          DATA(t1570) = |)|.
          DATA(t1571) = strlen( t1535 ).
          t1534 = |{ t1535 }{ t1570 }|.
          DATA(t1572) = VALUE string( ).
          DATA t1573 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t1573.
          DATA t1574 TYPE string.
          DATA(t1575) = |xml_consistency|.
          t1574 = t1575.
          DATA t1576 TYPE string.
          DATA(t1577) = |XML consistency|.
          t1576 = t1577.
          DATA t1578 TYPE string.
          DATA(t1579) = |Checks the consistency of main XML files|.
          t1578 = t1579.
          DATA t1580 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1580.
          DATA t1581 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1581.
          DATA(t1582) = abap_true.
          IF t1582 = abap_true.
            DATA(t1583) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
            t1583 = t1583 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
            t1583 = t1583 && |ce table and field values\n* Transparent TABL objects have de|.
            t1583 = t1583 && |livery class and size category set\n* Lock parameter names in|.
            t1583 = t1583 && | ENQU objects are max 16 characters\n* Texts and translations|.
            t1583 = t1583 && | do not exceed maximum allowed length.|.
            DATA(t1584) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1584->has = abap_true.
            t1584->value = t1583.
            t1581 = t1584.
          ELSE.
            DATA t1585 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1585.
            t1581 = t1585.
          ENDIF.
          t1580 = t1581.
          DATA t1586 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1586.
          DATA t1587 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1587.
          DATA(t1588) = abap_true.
          IF t1588 = abap_true.
            DATA t1589 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t1590 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t1591 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t1591.
            t1590 = t1591.
            DATA(t1592) = t1590.
            DATA(t1593) = |Naming|.
            t1592->load( ).
            APPEND t1593 TO t1592->items.
            t1592->save( ).
            DATA(t1594) = t1590.
            DATA(t1595) = |Syntax|.
            t1594->load( ).
            APPEND t1595 TO t1594->items.
            t1594->save( ).
            DATA(t1596) = t1590.
            t1589 = t1596.
            t1587 = t1589.
          ELSE.
            DATA t1597 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1597.
            t1587 = t1597.
          ENDIF.
          t1586 = t1587.
          DATA t1598 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t1599 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1599.
          t1598 = t1599.
          DATA t1600 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t1601 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1601.
          t1600 = t1601.
          DATA t1602 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t1603 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1603.
          t1602 = t1603.
          DATA t1604 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t1605 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1605.
          t1604 = t1605.
          t1573 = NEW zcl_lnt_irule_metadata( i_key = t1574 i_title = t1576 i_short_description = t1578 i_bad_example = t1598 i_good_example = t1600 i_extended_information = t1580 i_tags = t1586 i_pragma = t1602 i_pseudo_comment = t1604 ).
          CREATE OBJECT t1573->zlnt_view_ownkeys_b0e8086400eb.
          t1573->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t1606 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1606.
          IF t1573->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1573->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1606 ).
          ENDIF.
          DATA t1607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1607.
          IF t1573->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1573->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1607 ).
          ENDIF.
          DATA t1608 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1608.
          IF t1573->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1573->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1608 ).
          ENDIF.
          DATA t1609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1609.
          IF t1573->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1573->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1609 ).
          ENDIF.
          DATA t1610 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1610.
          IF t1573->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1573->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1610 ).
          ENDIF.
          CREATE OBJECT t1573->zlnt_json_ownkeys_70e5fd461788.
          t1573->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t1611) = |key|.
          DATA t1612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1612.
          IF t1573->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1573->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1611 p1 = t1612 ).
          ENDIF.
          DATA(t1613) = |title|.
          DATA t1614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1614.
          IF t1573->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1573->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1613 p1 = t1614 ).
          ENDIF.
          DATA(t1615) = |shortDescription|.
          DATA t1616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1616.
          IF t1573->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1573->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1615 p1 = t1616 ).
          ENDIF.
          DATA(t1617) = |extendedInformation|.
          DATA t1618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1618.
          IF t1573->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1573->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1617 p1 = t1618 ).
          ENDIF.
          DATA(t1619) = |tags|.
          DATA t1620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1620.
          IF t1573->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1573->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1619 p1 = t1620 ).
          ENDIF.
          t1572 = t1573->key.
          DATA t1621 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t1622) = me->conf.
          t1621 = t1622->zlnt_view_read_sr_b4bcf11cce6c( ).
          t1531 = zcl_lnt_issue=>at_row( i_file = t1532 i_row = t1533 i_message_26cb = t1534 i_key = t1572 i_severity = t1621 ).
          t1529 = t1531.
        ELSE.
          DATA t1623 TYPE REF TO zcl_lnt_issue.
          CLEAR t1623.
          t1529 = t1623.
        ENDIF.
        t1515 = t1529.
        t1507 = t1515.
      ELSE.
        DATA t1624 TYPE REF TO zcl_lnt_issue.
        CLEAR t1624.
        t1507 = t1624.
      ENDIF.
      t1480 = t1507.
      t1463 = t1480.
    ENDIF.
    t1437 = t1463.
    t1436->load( ).
    APPEND t1437 TO t1436->items.
    t1436->save( ).
    DATA(t1625) = t680.
    t679 = t1625.
    DATA t1626 TYPE REF TO zcl_lnt_issue.
    CLEAR t1626.
    DATA(t1627) = VALUE i( ).
    DO.
      t679->load( ).
      IF t1627 >= lines( t679->items ).
        EXIT.
      ENDIF.
      CLEAR t1626.
      READ TABLE t679->items INDEX t1627 + 1 INTO t1626.
      t1627 = t1627 + 1.
      DATA t1628 TYPE abap_bool.
      DATA(t1629) = t1626.
      t1628 = xsdbool( t1629 IS BOUND ).
      IF t1628 = abap_true.
        DATA(t1630) = t3.
        DATA t1631 TYPE REF TO zcl_lnt_issue.
        DATA(t1632) = t1626.
        t1631 = t1632.
        t1630->load( ).
        APPEND t1631 TO t1630->items.
        t1630->save( ).
      ENDIF.
    ENDDO.
    DATA t1633 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1633.
    DATA t1634 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1634.
    DATA t1635 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1635.
    DATA t1636 TYPE REF TO zcl_lnt_data_element.
    DATA(t1637) = t1.
    t1636 = t1637.
    DATA t1638 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1638.
    DATA t1639 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t1640) = t1636.
    t1639 = t1640->pr_in_src_obj_dt_elm_ts_dt_elm( ).
    DATA t1641 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1641.
    DATA t1642 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA t1643 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA(t1644) = t1636.
    t1643 = t1644->parsed_xml.
    t1642 = t1643.
    DATA t1645 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1645.
    DATA(t1646) = VALUE abap_bool( ).
    DATA(t1647) = t1642.
    IF t1647 IS INITIAL.
      t1646 = abap_true.
    ENDIF.
    IF t1646 = abap_true.
      DATA t1648 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t1648.
      t1645 = t1648.
    ELSE.
      DATA t1649 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t1650 TYPE REF TO zcl_lnt_shape_50142cbd.
      DATA(t1651) = t1642.
      t1650 = t1651.
      t1649 = t1650->texts_translations.
      t1645 = t1649.
    ENDIF.
    t1641 = t1645.
    t1638 = t1641.
    t1635 = t1638.
    t1634 = t1635.
    DATA t1652 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1652.
    DATA(t1653) = VALUE abap_bool( ).
    DATA(t1654) = t1634.
    IF t1654 IS INITIAL.
      t1653 = abap_true.
    ENDIF.
    IF t1653 = abap_true.
      DATA t1655 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t1655.
      t1652 = t1655.
    ELSE.
      DATA t1656 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t1657) = t1634.
      t1656 = t1657.
      t1652 = t1656.
    ENDIF.
    t1633 = t1652.
    DATA t1658 TYPE REF TO zcl_lnt_shape_0802eb0f.
    CLEAR t1658.
    DATA t1659 TYPE REF TO object.
    CLEAR t1659.
    DATA(t1660) = VALUE i( ).
    DO.
      t1633->load( ).
      IF t1660 >= lines( t1633->items ).
        EXIT.
      ENDIF.
      CLEAR t1659.
      READ TABLE t1633->items INDEX t1660 + 1 INTO t1659.
      t1660 = t1660 + 1.
      DATA t1661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1661.
      CLEAR t1658.
      IF t1659 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t1661 ?= t1659.
        DATA t1662 TYPE REF TO object.
        t1662 = t1661->as_ref( ).
        t1658 ?= t1662.
      ELSE.
        t1658 ?= t1659.
      ENDIF.
      DATA t1663 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t1664 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t1665) = t1658.
      t1664 = t1665->language.
      t1663 = t1664.
      DATA t1666 TYPE REF TO zlnt_runtime_arra_ea03a77504b6.
      CLEAR t1666.
      DATA t1667 TYPE REF TO zlnt_runtime_arra_ea03a77504b6.
      DATA t1668 TYPE REF TO zlnt_runtime_arra_ea03a77504b6.
      CREATE OBJECT t1668.
      t1667 = t1668.
      DATA(t1669) = t1667.
      DATA t1670 TYPE REF TO zcl_lnt_issue.
      CLEAR t1670.
      DATA t1671 TYPE REF TO zif_lnt_file.
      DATA(t1672) = t2.
      t1671 = t1672.
      DATA t1673 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t1674 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t1675) = t1658.
      t1674 = t1675->description.
      t1673 = t1674.
      DATA t1676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t1677 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1677.
      DATA(t1678) = 60.
      CLEAR t1677.
      CREATE OBJECT t1677.
      t1677->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1677->nval = t1678.
      t1676 = t1677.
      DATA t1679 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t1680) = t1663.
      t1679 = t1680.
      DATA t1681 TYPE REF TO zcl_lnt_issue.
      CLEAR t1681.
      DATA(t1682) = VALUE abap_bool( ).
      DATA(t1683) = VALUE abap_bool( ).
      DATA t1684 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t1685) = t1673.
      t1684 = t1685.
      DATA t1686 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t1687 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1687.
      t1686 = t1687.
      DATA(t1688) = VALUE abap_bool( ).
      DATA(t1689) = t1684.
      IF t1689 IS INITIAL.
        t1688 = abap_true.
      ELSEIF t1689->has = abap_false.
        t1688 = abap_true.
      ENDIF.
      t1683 = t1688.
      t1682 = t1683.
      IF t1683 = abap_false.
        DATA(t1690) = VALUE abap_bool( ).
        DATA t1691 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t1692) = t1676.
        t1691 = t1692.
        DATA t1693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t1694 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1694.
        t1693 = t1694.
        DATA(t1695) = VALUE abap_bool( ).
        DATA(t1696) = t1691.
        IF t1696 IS INITIAL.
          t1695 = abap_true.
        ENDIF.
        t1690 = t1695.
        t1682 = t1690.
      ENDIF.
      IF t1682 = abap_true.
        DATA t1697 TYPE REF TO zcl_lnt_issue.
        CLEAR t1697.
        t1681 = t1697.
      ELSE.
        DATA t1698 TYPE REF TO zcl_lnt_issue.
        CLEAR t1698.
        DATA(t1699) = VALUE f( ).
        DATA(t1700) = VALUE f( ).
        DATA(t1701) = VALUE abap_bool( ).
        DATA(t1702) = VALUE string( ).
        DATA(t1703) = t1676.
        IF t1703 IS BOUND.
          t1702 = t1703->type_of( ).
          IF t1703->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t1703->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t1702 = `function`.
          ENDIF.
        ELSE.
          t1702 = `undefined`.
        ENDIF.
        DATA(t1704) = |number|.
        t1701 = xsdbool( t1702 = t1704 ).
        IF t1701 = abap_true.
          DATA t1705 TYPE f.
          DATA(t1706) = t1676.
          t1705 = t1706->as_number( ).
          t1700 = t1705.
        ELSE.
          DATA(t1707) = VALUE f( ).
          DATA t1708 TYPE string.
          DATA(t1709) = t1676.
          t1708 = t1709->as_string( ).
          DATA t1710 TYPE i.
          DATA t1711 TYPE i.
          DATA(t1712) = VALUE string( ).
          DATA t1713 TYPE abap_bool.
          DATA t1714 TYPE abap_bool.
          DATA t1715 TYPE int8.
          DATA(t1716) = VALUE i( ).
          t1710 = 0.
          t1715 = 0.
          t1713 = abap_false.
          t1714 = abap_false.
          t1711 = strlen( t1708 ).
          DATA(t1717) = VALUE i( ).
          DATA(t1718) = VALUE i( ).
          DATA(t1719) = VALUE string( ).
          WHILE t1710 < t1711.
            t1718 = t1710.
            t1719 = t1708+t1718(1).
            DATA t1720 TYPE c LENGTH 1.
            CLEAR t1720.
            DATA(t1721) = VALUE xstring( ).
            DATA t1722 TYPE x LENGTH 1.
            CLEAR t1722.
            DATA t1723 TYPE x LENGTH 1.
            CLEAR t1723.
            DATA(t1724) = VALUE i( ).
            t1720 = t1719.
            t1717 = cl_abap_conv_out_ce=>uccpi( t1720 ).
            IF t1717 >= 255.
              IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
                zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t1719 IMPORTING buffer = t1721 ).
              t1722 = t1721(1).
              t1723 = t1721+1(1).
              t1717 = t1722.
              t1724 = t1723.
              t1717 = t1717 + t1724 * 256.
            ENDIF.
            IF t1717 = 9 OR t1717 = 10 OR t1717 = 11 OR t1717 = 12 OR t1717 = 13 OR t1717 = 32 OR t1717 = 160 OR t1717 = 5760 OR t1717 = 8232 OR t1717 = 8233 OR t1717 = 8239 OR t1717 = 8287 OR t1717 = 12288 OR t1717 = 65279 OR t1717 >= 8192
            AND t1717 <= 8202.
              t1710 = t1710 + 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          IF t1710 < t1711.
            t1712 = t1708+t1710(1).
            IF t1712 = '-' OR t1712 = '+'.
              t1713 = xsdbool( t1712 = '-' ).
              t1710 = t1710 + 1.
            ENDIF.
          ENDIF.
          WHILE t1710 < t1711.
            t1712 = t1708+t1710(1).
            IF t1712 CN '0123456789' OR t1712 = ` `.
              EXIT.
            ENDIF.
            t1716 = t1712.
            IF t1715 > range_parse_safe_prefix OR ( t1715 = range_parse_safe_prefix AND t1716 > 1 ).
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t1715 = t1715 * 10 + t1716.
            t1714 = abap_true.
            t1710 = t1710 + 1.
          ENDWHILE.
          IF t1714 = abap_false OR ( t1713 = abap_true AND t1715 = 0 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          IF t1713 = abap_true.
            t1715 = 0 - t1715.
          ENDIF.
          t1707 = t1715.
          t1700 = t1707.
        ENDIF.
        t1699 = t1700.
        DATA t1725 TYPE REF TO zcl_lnt_issue.
        CLEAR t1725.
        DATA t1726 TYPE abap_bool.
        DATA t1727 TYPE f.
        DATA t1728 TYPE i.
        DATA t1729 TYPE string.
        DATA(t1730) = t1673.
        t1729 = t1730->value.
        DATA(t1731) = strlen( t1729 ).
        t1728 = t1731.
        t1727 = t1728.
        DATA(t1732) = t1699.
        t1726 = xsdbool( t1727 > t1732 ).
        IF t1726 = abap_true.
          DATA t1733 TYPE REF TO zcl_lnt_issue.
          CLEAR t1733.
          DATA(t1734) = VALUE string( ).
          DATA(t1735) = VALUE string( ).
          DATA(t1736) = VALUE abap_bool( ).
          DATA(t1737) = t1679.
          IF t1737 IS BOUND.
            IF t1737->has = abap_true.
              t1736 = xsdbool( strlen( t1737->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t1736 = abap_true.
            DATA t1738 TYPE string.
            DATA t1739 TYPE string.
            DATA(t1740) = |[|.
            DATA t1741 TYPE string.
            DATA(t1742) = t1679.
            t1741 = t1742->value.
            DATA(t1743) = strlen( t1740 ).
            t1739 = |{ t1740 }{ t1741 }|.
            DATA(t1744) = |] |.
            DATA(t1745) = strlen( t1739 ).
            t1738 = |{ t1739 }{ t1744 }|.
            t1735 = t1738.
          ELSE.
            DATA(t1746) = ||.
            t1735 = t1746.
          ENDIF.
          t1734 = t1735.
          DATA t1747 TYPE REF TO zcl_lnt_issue.
          CLEAR t1747.
          DATA(t1748) = abap_true.
          IF t1748 = abap_true.
            DATA t1749 TYPE REF TO zcl_lnt_issue.
            CLEAR t1749.
            DATA(t1750) = t1671.
            DATA(t1751) = CONV f( 1 ).
            DATA(t1752) = VALUE string( ).
            DATA(t1753) = VALUE string( ).
            DATA(t1754) = VALUE string( ).
            DATA(t1755) = VALUE string( ).
            DATA t1756 TYPE string.
            DATA t1757 TYPE string.
            DATA t1758 TYPE string.
            DATA t1759 TYPE string.
            DATA t1760 TYPE string.
            DATA t1761 TYPE string.
            DATA(t1762) = ||.
            DATA(t1763) = t1734.
            DATA(t1764) = strlen( t1762 ).
            t1761 = |{ t1762 }{ t1763 }|.
            DATA(t1765) = ||.
            DATA(t1766) = strlen( t1761 ).
            t1760 = |{ t1761 }{ t1765 }|.
            DATA(t1767) = |DDTEXT|.
            DATA(t1768) = strlen( t1760 ).
            t1759 = |{ t1760 }{ t1767 }|.
            DATA(t1769) = | "|.
            DATA(t1770) = strlen( t1759 ).
            t1758 = |{ t1759 }{ t1769 }|.
            DATA t1771 TYPE string.
            DATA(t1772) = t1673.
            t1771 = t1772->value.
            DATA(t1773) = strlen( t1758 ).
            t1757 = |{ t1758 }{ t1771 }|.
            DATA(t1774) = |" exceeds maximum length of |.
            DATA(t1775) = strlen( t1757 ).
            t1756 = |{ t1757 }{ t1774 }|.
            DATA(t1776) = VALUE string( ).
            DATA(t1777) = t1699.
            IF t1777 <> trunc( t1777 ) OR t1777 > range_safe_integer OR t1777 < 0 - range_safe_integer.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            DATA(t1778) = CONV int8( t1777 ).
            t1776 = |{ t1778 }|.
            DATA(t1779) = strlen( t1756 ).
            t1755 = |{ t1756 }{ t1776 }|.
            DATA(t1780) = | characters (actual: |.
            DATA(t1781) = strlen( t1755 ).
            t1754 = |{ t1755 }{ t1780 }|.
            DATA t1782 TYPE string.
            DATA t1783 TYPE i.
            DATA t1784 TYPE string.
            DATA(t1785) = t1673.
            t1784 = t1785->value.
            DATA(t1786) = strlen( t1784 ).
            t1783 = t1786.
            t1782 = |{ t1783 }|.
            DATA(t1787) = strlen( t1754 ).
            t1753 = |{ t1754 }{ t1782 }|.
            DATA(t1788) = |)|.
            DATA(t1789) = strlen( t1753 ).
            t1752 = |{ t1753 }{ t1788 }|.
            DATA(t1790) = VALUE string( ).
            DATA t1791 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t1791.
            DATA t1792 TYPE string.
            DATA(t1793) = |xml_consistency|.
            t1792 = t1793.
            DATA t1794 TYPE string.
            DATA(t1795) = |XML consistency|.
            t1794 = t1795.
            DATA t1796 TYPE string.
            DATA(t1797) = |Checks the consistency of main XML files|.
            t1796 = t1797.
            DATA t1798 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1798.
            DATA t1799 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1799.
            DATA(t1800) = abap_true.
            IF t1800 = abap_true.
              DATA(t1801) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
              t1801 = t1801 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
              t1801 = t1801 && |ce table and field values\n* Transparent TABL objects have de|.
              t1801 = t1801 && |livery class and size category set\n* Lock parameter names in|.
              t1801 = t1801 && | ENQU objects are max 16 characters\n* Texts and translations|.
              t1801 = t1801 && | do not exceed maximum allowed length.|.
              DATA(t1802) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t1802->has = abap_true.
              t1802->value = t1801.
              t1799 = t1802.
            ELSE.
              DATA t1803 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1803.
              t1799 = t1803.
            ENDIF.
            t1798 = t1799.
            DATA t1804 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1804.
            DATA t1805 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1805.
            DATA(t1806) = abap_true.
            IF t1806 = abap_true.
              DATA t1807 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t1808 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t1809 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t1809.
              t1808 = t1809.
              DATA(t1810) = t1808.
              DATA(t1811) = |Naming|.
              t1810->load( ).
              APPEND t1811 TO t1810->items.
              t1810->save( ).
              DATA(t1812) = t1808.
              DATA(t1813) = |Syntax|.
              t1812->load( ).
              APPEND t1813 TO t1812->items.
              t1812->save( ).
              DATA(t1814) = t1808.
              t1807 = t1814.
              t1805 = t1807.
            ELSE.
              DATA t1815 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t1815.
              t1805 = t1815.
            ENDIF.
            t1804 = t1805.
            DATA t1816 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t1817 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1817.
            t1816 = t1817.
            DATA t1818 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t1819 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1819.
            t1818 = t1819.
            DATA t1820 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t1821 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1821.
            t1820 = t1821.
            DATA t1822 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t1823 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1823.
            t1822 = t1823.
            t1791 = NEW zcl_lnt_irule_metadata( i_key = t1792 i_title = t1794 i_short_description = t1796 i_bad_example = t1816 i_good_example = t1818 i_extended_information = t1798 i_tags = t1804 i_pragma = t1820 i_pseudo_comment = t1822 ).
            CREATE OBJECT t1791->zlnt_view_ownkeys_b0e8086400eb.
            t1791->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t1824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1824.
            IF t1791->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1791->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1824 ).
            ENDIF.
            DATA t1825 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1825.
            IF t1791->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1791->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1825 ).
            ENDIF.
            DATA t1826 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1826.
            IF t1791->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1791->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1826 ).
            ENDIF.
            DATA t1827 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1827.
            IF t1791->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1791->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1827 ).
            ENDIF.
            DATA t1828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1828.
            IF t1791->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1791->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1828 ).
            ENDIF.
            CREATE OBJECT t1791->zlnt_json_ownkeys_70e5fd461788.
            t1791->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t1829) = |key|.
            DATA t1830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1830.
            IF t1791->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1791->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1829 p1 = t1830 ).
            ENDIF.
            DATA(t1831) = |title|.
            DATA t1832 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1832.
            IF t1791->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1791->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1831 p1 = t1832 ).
            ENDIF.
            DATA(t1833) = |shortDescription|.
            DATA t1834 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1834.
            IF t1791->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1791->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1833 p1 = t1834 ).
            ENDIF.
            DATA(t1835) = |extendedInformation|.
            DATA t1836 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1836.
            IF t1791->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1791->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1835 p1 = t1836 ).
            ENDIF.
            DATA(t1837) = |tags|.
            DATA t1838 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1838.
            IF t1791->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1791->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1837 p1 = t1838 ).
            ENDIF.
            t1790 = t1791->key.
            DATA t1839 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t1840) = me->conf.
            t1839 = t1840->zlnt_view_read_sr_b4bcf11cce6c( ).
            t1749 = zcl_lnt_issue=>at_row( i_file = t1750 i_row = t1751 i_message_26cb = t1752 i_key = t1790 i_severity = t1839 ).
            t1747 = t1749.
          ELSE.
            DATA t1841 TYPE REF TO zcl_lnt_issue.
            CLEAR t1841.
            t1747 = t1841.
          ENDIF.
          t1733 = t1747.
          t1725 = t1733.
        ELSE.
          DATA t1842 TYPE REF TO zcl_lnt_issue.
          CLEAR t1842.
          t1725 = t1842.
        ENDIF.
        t1698 = t1725.
        t1681 = t1698.
      ENDIF.
      t1670 = t1681.
      t1669->load( ).
      APPEND t1670 TO t1669->items.
      t1669->save( ).
      DATA(t1843) = t1667.
      DATA t1844 TYPE REF TO zcl_lnt_issue.
      CLEAR t1844.
      DATA t1845 TYPE REF TO zif_lnt_file.
      DATA(t1846) = t2.
      t1845 = t1846.
      DATA t1847 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t1848 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t1849) = t1658.
      t1848 = t1849->short.
      t1847 = t1848.
      DATA t1850 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1850.
      DATA t1851 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1851.
      DATA t1852 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1852.
      DATA t1853 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t1854) = t23.
      t1853 = t1854.
      DATA t1855 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1855.
      DATA(t1856) = VALUE abap_bool( ).
      DATA(t1857) = t1853.
      IF t1857 IS INITIAL.
        t1856 = abap_true.
      ENDIF.
      IF t1856 = abap_true.
        DATA t1858 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1858.
        t1855 = t1858.
      ELSE.
        DATA t1859 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t1860 TYPE REF TO zcl_lnt_shape_66add1d1.
        DATA(t1861) = t1853.
        t1860 = t1861.
        t1859 = t1860->short.
        t1855 = t1859.
      ENDIF.
      t1852 = t1855.
      CLEAR t1851.
      IF t1852 IS BOUND AND t1852->has = abap_true.
        CLEAR t1851.
        CREATE OBJECT t1851.
        t1851->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t1851->sval = t1852->value.
      ENDIF.
      t1850 = t1851.
      DATA t1862 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t1863) = t1663.
      t1862 = t1863.
      DATA t1864 TYPE REF TO zcl_lnt_issue.
      CLEAR t1864.
      DATA(t1865) = VALUE abap_bool( ).
      DATA(t1866) = VALUE abap_bool( ).
      DATA t1867 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t1868) = t1847.
      t1867 = t1868.
      DATA t1869 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t1870 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1870.
      t1869 = t1870.
      DATA(t1871) = VALUE abap_bool( ).
      DATA(t1872) = t1867.
      IF t1872 IS INITIAL.
        t1871 = abap_true.
      ELSEIF t1872->has = abap_false.
        t1871 = abap_true.
      ENDIF.
      t1866 = t1871.
      t1865 = t1866.
      IF t1866 = abap_false.
        DATA(t1873) = VALUE abap_bool( ).
        DATA t1874 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t1875) = t1850.
        t1874 = t1875.
        DATA t1876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t1877 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1877.
        t1876 = t1877.
        DATA(t1878) = VALUE abap_bool( ).
        DATA(t1879) = t1874.
        IF t1879 IS INITIAL.
          t1878 = abap_true.
        ENDIF.
        t1873 = t1878.
        t1865 = t1873.
      ENDIF.
      IF t1865 = abap_true.
        DATA t1880 TYPE REF TO zcl_lnt_issue.
        CLEAR t1880.
        t1864 = t1880.
      ELSE.
        DATA t1881 TYPE REF TO zcl_lnt_issue.
        CLEAR t1881.
        DATA(t1882) = VALUE f( ).
        DATA(t1883) = VALUE f( ).
        DATA(t1884) = VALUE abap_bool( ).
        DATA(t1885) = VALUE string( ).
        DATA(t1886) = t1850.
        IF t1886 IS BOUND.
          t1885 = t1886->type_of( ).
          IF t1886->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t1886->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t1885 = `function`.
          ENDIF.
        ELSE.
          t1885 = `undefined`.
        ENDIF.
        DATA(t1887) = |number|.
        t1884 = xsdbool( t1885 = t1887 ).
        IF t1884 = abap_true.
          DATA t1888 TYPE f.
          DATA(t1889) = t1850.
          t1888 = t1889->as_number( ).
          t1883 = t1888.
        ELSE.
          DATA(t1890) = VALUE f( ).
          DATA t1891 TYPE string.
          DATA(t1892) = t1850.
          t1891 = t1892->as_string( ).
          DATA t1893 TYPE i.
          DATA t1894 TYPE i.
          DATA(t1895) = VALUE string( ).
          DATA t1896 TYPE abap_bool.
          DATA t1897 TYPE abap_bool.
          DATA t1898 TYPE int8.
          DATA(t1899) = VALUE i( ).
          t1893 = 0.
          t1898 = 0.
          t1896 = abap_false.
          t1897 = abap_false.
          t1894 = strlen( t1891 ).
          DATA(t1900) = VALUE i( ).
          DATA(t1901) = VALUE i( ).
          DATA(t1902) = VALUE string( ).
          WHILE t1893 < t1894.
            t1901 = t1893.
            t1902 = t1891+t1901(1).
            DATA t1903 TYPE c LENGTH 1.
            CLEAR t1903.
            DATA(t1904) = VALUE xstring( ).
            DATA t1905 TYPE x LENGTH 1.
            CLEAR t1905.
            DATA t1906 TYPE x LENGTH 1.
            CLEAR t1906.
            DATA(t1907) = VALUE i( ).
            t1903 = t1902.
            t1900 = cl_abap_conv_out_ce=>uccpi( t1903 ).
            IF t1900 >= 255.
              IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
                zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t1902 IMPORTING buffer = t1904 ).
              t1905 = t1904(1).
              t1906 = t1904+1(1).
              t1900 = t1905.
              t1907 = t1906.
              t1900 = t1900 + t1907 * 256.
            ENDIF.
            IF t1900 = 9 OR t1900 = 10 OR t1900 = 11 OR t1900 = 12 OR t1900 = 13 OR t1900 = 32 OR t1900 = 160 OR t1900 = 5760 OR t1900 = 8232 OR t1900 = 8233 OR t1900 = 8239 OR t1900 = 8287 OR t1900 = 12288 OR t1900 = 65279 OR t1900 >= 8192
            AND t1900 <= 8202.
              t1893 = t1893 + 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          IF t1893 < t1894.
            t1895 = t1891+t1893(1).
            IF t1895 = '-' OR t1895 = '+'.
              t1896 = xsdbool( t1895 = '-' ).
              t1893 = t1893 + 1.
            ENDIF.
          ENDIF.
          WHILE t1893 < t1894.
            t1895 = t1891+t1893(1).
            IF t1895 CN '0123456789' OR t1895 = ` `.
              EXIT.
            ENDIF.
            t1899 = t1895.
            IF t1898 > range_parse_safe_prefix OR ( t1898 = range_parse_safe_prefix AND t1899 > 1 ).
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t1898 = t1898 * 10 + t1899.
            t1897 = abap_true.
            t1893 = t1893 + 1.
          ENDWHILE.
          IF t1897 = abap_false OR ( t1896 = abap_true AND t1898 = 0 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          IF t1896 = abap_true.
            t1898 = 0 - t1898.
          ENDIF.
          t1890 = t1898.
          t1883 = t1890.
        ENDIF.
        t1882 = t1883.
        DATA t1908 TYPE REF TO zcl_lnt_issue.
        CLEAR t1908.
        DATA t1909 TYPE abap_bool.
        DATA t1910 TYPE f.
        DATA t1911 TYPE i.
        DATA t1912 TYPE string.
        DATA(t1913) = t1847.
        t1912 = t1913->value.
        DATA(t1914) = strlen( t1912 ).
        t1911 = t1914.
        t1910 = t1911.
        DATA(t1915) = t1882.
        t1909 = xsdbool( t1910 > t1915 ).
        IF t1909 = abap_true.
          DATA t1916 TYPE REF TO zcl_lnt_issue.
          CLEAR t1916.
          DATA(t1917) = VALUE string( ).
          DATA(t1918) = VALUE string( ).
          DATA(t1919) = VALUE abap_bool( ).
          DATA(t1920) = t1862.
          IF t1920 IS BOUND.
            IF t1920->has = abap_true.
              t1919 = xsdbool( strlen( t1920->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t1919 = abap_true.
            DATA t1921 TYPE string.
            DATA t1922 TYPE string.
            DATA(t1923) = |[|.
            DATA t1924 TYPE string.
            DATA(t1925) = t1862.
            t1924 = t1925->value.
            DATA(t1926) = strlen( t1923 ).
            t1922 = |{ t1923 }{ t1924 }|.
            DATA(t1927) = |] |.
            DATA(t1928) = strlen( t1922 ).
            t1921 = |{ t1922 }{ t1927 }|.
            t1918 = t1921.
          ELSE.
            DATA(t1929) = ||.
            t1918 = t1929.
          ENDIF.
          t1917 = t1918.
          DATA t1930 TYPE REF TO zcl_lnt_issue.
          CLEAR t1930.
          DATA(t1931) = abap_true.
          IF t1931 = abap_true.
            DATA t1932 TYPE REF TO zcl_lnt_issue.
            CLEAR t1932.
            DATA(t1933) = t1845.
            DATA(t1934) = CONV f( 1 ).
            DATA(t1935) = VALUE string( ).
            DATA(t1936) = VALUE string( ).
            DATA(t1937) = VALUE string( ).
            DATA(t1938) = VALUE string( ).
            DATA t1939 TYPE string.
            DATA t1940 TYPE string.
            DATA t1941 TYPE string.
            DATA t1942 TYPE string.
            DATA t1943 TYPE string.
            DATA t1944 TYPE string.
            DATA(t1945) = ||.
            DATA(t1946) = t1917.
            DATA(t1947) = strlen( t1945 ).
            t1944 = |{ t1945 }{ t1946 }|.
            DATA(t1948) = ||.
            DATA(t1949) = strlen( t1944 ).
            t1943 = |{ t1944 }{ t1948 }|.
            DATA(t1950) = |SCRTEXT_S|.
            DATA(t1951) = strlen( t1943 ).
            t1942 = |{ t1943 }{ t1950 }|.
            DATA(t1952) = | "|.
            DATA(t1953) = strlen( t1942 ).
            t1941 = |{ t1942 }{ t1952 }|.
            DATA t1954 TYPE string.
            DATA(t1955) = t1847.
            t1954 = t1955->value.
            DATA(t1956) = strlen( t1941 ).
            t1940 = |{ t1941 }{ t1954 }|.
            DATA(t1957) = |" exceeds maximum length of |.
            DATA(t1958) = strlen( t1940 ).
            t1939 = |{ t1940 }{ t1957 }|.
            DATA(t1959) = VALUE string( ).
            DATA(t1960) = t1882.
            IF t1960 <> trunc( t1960 ) OR t1960 > range_safe_integer OR t1960 < 0 - range_safe_integer.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            DATA(t1961) = CONV int8( t1960 ).
            t1959 = |{ t1961 }|.
            DATA(t1962) = strlen( t1939 ).
            t1938 = |{ t1939 }{ t1959 }|.
            DATA(t1963) = | characters (actual: |.
            DATA(t1964) = strlen( t1938 ).
            t1937 = |{ t1938 }{ t1963 }|.
            DATA t1965 TYPE string.
            DATA t1966 TYPE i.
            DATA t1967 TYPE string.
            DATA(t1968) = t1847.
            t1967 = t1968->value.
            DATA(t1969) = strlen( t1967 ).
            t1966 = t1969.
            t1965 = |{ t1966 }|.
            DATA(t1970) = strlen( t1937 ).
            t1936 = |{ t1937 }{ t1965 }|.
            DATA(t1971) = |)|.
            DATA(t1972) = strlen( t1936 ).
            t1935 = |{ t1936 }{ t1971 }|.
            DATA(t1973) = VALUE string( ).
            DATA t1974 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t1974.
            DATA t1975 TYPE string.
            DATA(t1976) = |xml_consistency|.
            t1975 = t1976.
            DATA t1977 TYPE string.
            DATA(t1978) = |XML consistency|.
            t1977 = t1978.
            DATA t1979 TYPE string.
            DATA(t1980) = |Checks the consistency of main XML files|.
            t1979 = t1980.
            DATA t1981 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1981.
            DATA t1982 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1982.
            DATA(t1983) = abap_true.
            IF t1983 = abap_true.
              DATA(t1984) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
              t1984 = t1984 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
              t1984 = t1984 && |ce table and field values\n* Transparent TABL objects have de|.
              t1984 = t1984 && |livery class and size category set\n* Lock parameter names in|.
              t1984 = t1984 && | ENQU objects are max 16 characters\n* Texts and translations|.
              t1984 = t1984 && | do not exceed maximum allowed length.|.
              DATA(t1985) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t1985->has = abap_true.
              t1985->value = t1984.
              t1982 = t1985.
            ELSE.
              DATA t1986 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1986.
              t1982 = t1986.
            ENDIF.
            t1981 = t1982.
            DATA t1987 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1987.
            DATA t1988 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1988.
            DATA(t1989) = abap_true.
            IF t1989 = abap_true.
              DATA t1990 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t1991 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t1992 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t1992.
              t1991 = t1992.
              DATA(t1993) = t1991.
              DATA(t1994) = |Naming|.
              t1993->load( ).
              APPEND t1994 TO t1993->items.
              t1993->save( ).
              DATA(t1995) = t1991.
              DATA(t1996) = |Syntax|.
              t1995->load( ).
              APPEND t1996 TO t1995->items.
              t1995->save( ).
              DATA(t1997) = t1991.
              t1990 = t1997.
              t1988 = t1990.
            ELSE.
              DATA t1998 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t1998.
              t1988 = t1998.
            ENDIF.
            t1987 = t1988.
            DATA t1999 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t2000 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2000.
            t1999 = t2000.
            DATA t2001 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t2002 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2002.
            t2001 = t2002.
            DATA t2003 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t2004 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2004.
            t2003 = t2004.
            DATA t2005 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t2006 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2006.
            t2005 = t2006.
            t1974 = NEW zcl_lnt_irule_metadata( i_key = t1975 i_title = t1977 i_short_description = t1979 i_bad_example = t1999 i_good_example = t2001 i_extended_information = t1981 i_tags = t1987 i_pragma = t2003 i_pseudo_comment = t2005 ).
            CREATE OBJECT t1974->zlnt_view_ownkeys_b0e8086400eb.
            t1974->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t2007 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2007.
            IF t1974->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1974->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2007 ).
            ENDIF.
            DATA t2008 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2008.
            IF t1974->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1974->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t2008 ).
            ENDIF.
            DATA t2009 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2009.
            IF t1974->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1974->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t2009 ).
            ENDIF.
            DATA t2010 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2010.
            IF t1974->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1974->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t2010 ).
            ENDIF.
            DATA t2011 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2011.
            IF t1974->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1974->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t2011 ).
            ENDIF.
            CREATE OBJECT t1974->zlnt_json_ownkeys_70e5fd461788.
            t1974->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t2012) = |key|.
            DATA t2013 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2013.
            IF t1974->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1974->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2012 p1 = t2013 ).
            ENDIF.
            DATA(t2014) = |title|.
            DATA t2015 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2015.
            IF t1974->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1974->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2014 p1 = t2015 ).
            ENDIF.
            DATA(t2016) = |shortDescription|.
            DATA t2017 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2017.
            IF t1974->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1974->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2016 p1 = t2017 ).
            ENDIF.
            DATA(t2018) = |extendedInformation|.
            DATA t2019 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2019.
            IF t1974->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1974->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2018 p1 = t2019 ).
            ENDIF.
            DATA(t2020) = |tags|.
            DATA t2021 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2021.
            IF t1974->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1974->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2020 p1 = t2021 ).
            ENDIF.
            t1973 = t1974->key.
            DATA t2022 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t2023) = me->conf.
            t2022 = t2023->zlnt_view_read_sr_b4bcf11cce6c( ).
            t1932 = zcl_lnt_issue=>at_row( i_file = t1933 i_row = t1934 i_message_26cb = t1935 i_key = t1973 i_severity = t2022 ).
            t1930 = t1932.
          ELSE.
            DATA t2024 TYPE REF TO zcl_lnt_issue.
            CLEAR t2024.
            t1930 = t2024.
          ENDIF.
          t1916 = t1930.
          t1908 = t1916.
        ELSE.
          DATA t2025 TYPE REF TO zcl_lnt_issue.
          CLEAR t2025.
          t1908 = t2025.
        ENDIF.
        t1881 = t1908.
        t1864 = t1881.
      ENDIF.
      t1844 = t1864.
      t1843->load( ).
      APPEND t1844 TO t1843->items.
      t1843->save( ).
      DATA(t2026) = t1667.
      DATA t2027 TYPE REF TO zcl_lnt_issue.
      CLEAR t2027.
      DATA t2028 TYPE REF TO zif_lnt_file.
      DATA(t2029) = t2.
      t2028 = t2029.
      DATA t2030 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t2031 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t2032) = t1658.
      t2031 = t2032->medium.
      t2030 = t2031.
      DATA t2033 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2033.
      DATA t2034 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2034.
      DATA t2035 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2035.
      DATA t2036 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t2037) = t23.
      t2036 = t2037.
      DATA t2038 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2038.
      DATA(t2039) = VALUE abap_bool( ).
      DATA(t2040) = t2036.
      IF t2040 IS INITIAL.
        t2039 = abap_true.
      ENDIF.
      IF t2039 = abap_true.
        DATA t2041 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2041.
        t2038 = t2041.
      ELSE.
        DATA t2042 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t2043 TYPE REF TO zcl_lnt_shape_66add1d1.
        DATA(t2044) = t2036.
        t2043 = t2044.
        t2042 = t2043->medium.
        t2038 = t2042.
      ENDIF.
      t2035 = t2038.
      CLEAR t2034.
      IF t2035 IS BOUND AND t2035->has = abap_true.
        CLEAR t2034.
        CREATE OBJECT t2034.
        t2034->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t2034->sval = t2035->value.
      ENDIF.
      t2033 = t2034.
      DATA t2045 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t2046) = t1663.
      t2045 = t2046.
      DATA t2047 TYPE REF TO zcl_lnt_issue.
      CLEAR t2047.
      DATA(t2048) = VALUE abap_bool( ).
      DATA(t2049) = VALUE abap_bool( ).
      DATA t2050 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t2051) = t2030.
      t2050 = t2051.
      DATA t2052 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t2053 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2053.
      t2052 = t2053.
      DATA(t2054) = VALUE abap_bool( ).
      DATA(t2055) = t2050.
      IF t2055 IS INITIAL.
        t2054 = abap_true.
      ELSEIF t2055->has = abap_false.
        t2054 = abap_true.
      ENDIF.
      t2049 = t2054.
      t2048 = t2049.
      IF t2049 = abap_false.
        DATA(t2056) = VALUE abap_bool( ).
        DATA t2057 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t2058) = t2033.
        t2057 = t2058.
        DATA t2059 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t2060 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2060.
        t2059 = t2060.
        DATA(t2061) = VALUE abap_bool( ).
        DATA(t2062) = t2057.
        IF t2062 IS INITIAL.
          t2061 = abap_true.
        ENDIF.
        t2056 = t2061.
        t2048 = t2056.
      ENDIF.
      IF t2048 = abap_true.
        DATA t2063 TYPE REF TO zcl_lnt_issue.
        CLEAR t2063.
        t2047 = t2063.
      ELSE.
        DATA t2064 TYPE REF TO zcl_lnt_issue.
        CLEAR t2064.
        DATA(t2065) = VALUE f( ).
        DATA(t2066) = VALUE f( ).
        DATA(t2067) = VALUE abap_bool( ).
        DATA(t2068) = VALUE string( ).
        DATA(t2069) = t2033.
        IF t2069 IS BOUND.
          t2068 = t2069->type_of( ).
          IF t2069->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t2069->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t2068 = `function`.
          ENDIF.
        ELSE.
          t2068 = `undefined`.
        ENDIF.
        DATA(t2070) = |number|.
        t2067 = xsdbool( t2068 = t2070 ).
        IF t2067 = abap_true.
          DATA t2071 TYPE f.
          DATA(t2072) = t2033.
          t2071 = t2072->as_number( ).
          t2066 = t2071.
        ELSE.
          DATA(t2073) = VALUE f( ).
          DATA t2074 TYPE string.
          DATA(t2075) = t2033.
          t2074 = t2075->as_string( ).
          DATA t2076 TYPE i.
          DATA t2077 TYPE i.
          DATA(t2078) = VALUE string( ).
          DATA t2079 TYPE abap_bool.
          DATA t2080 TYPE abap_bool.
          DATA t2081 TYPE int8.
          DATA(t2082) = VALUE i( ).
          t2076 = 0.
          t2081 = 0.
          t2079 = abap_false.
          t2080 = abap_false.
          t2077 = strlen( t2074 ).
          DATA(t2083) = VALUE i( ).
          DATA(t2084) = VALUE i( ).
          DATA(t2085) = VALUE string( ).
          WHILE t2076 < t2077.
            t2084 = t2076.
            t2085 = t2074+t2084(1).
            DATA t2086 TYPE c LENGTH 1.
            CLEAR t2086.
            DATA(t2087) = VALUE xstring( ).
            DATA t2088 TYPE x LENGTH 1.
            CLEAR t2088.
            DATA t2089 TYPE x LENGTH 1.
            CLEAR t2089.
            DATA(t2090) = VALUE i( ).
            t2086 = t2085.
            t2083 = cl_abap_conv_out_ce=>uccpi( t2086 ).
            IF t2083 >= 255.
              IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
                zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t2085 IMPORTING buffer = t2087 ).
              t2088 = t2087(1).
              t2089 = t2087+1(1).
              t2083 = t2088.
              t2090 = t2089.
              t2083 = t2083 + t2090 * 256.
            ENDIF.
            IF t2083 = 9 OR t2083 = 10 OR t2083 = 11 OR t2083 = 12 OR t2083 = 13 OR t2083 = 32 OR t2083 = 160 OR t2083 = 5760 OR t2083 = 8232 OR t2083 = 8233 OR t2083 = 8239 OR t2083 = 8287 OR t2083 = 12288 OR t2083 = 65279 OR t2083 >= 8192
            AND t2083 <= 8202.
              t2076 = t2076 + 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          IF t2076 < t2077.
            t2078 = t2074+t2076(1).
            IF t2078 = '-' OR t2078 = '+'.
              t2079 = xsdbool( t2078 = '-' ).
              t2076 = t2076 + 1.
            ENDIF.
          ENDIF.
          WHILE t2076 < t2077.
            t2078 = t2074+t2076(1).
            IF t2078 CN '0123456789' OR t2078 = ` `.
              EXIT.
            ENDIF.
            t2082 = t2078.
            IF t2081 > range_parse_safe_prefix OR ( t2081 = range_parse_safe_prefix AND t2082 > 1 ).
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t2081 = t2081 * 10 + t2082.
            t2080 = abap_true.
            t2076 = t2076 + 1.
          ENDWHILE.
          IF t2080 = abap_false OR ( t2079 = abap_true AND t2081 = 0 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          IF t2079 = abap_true.
            t2081 = 0 - t2081.
          ENDIF.
          t2073 = t2081.
          t2066 = t2073.
        ENDIF.
        t2065 = t2066.
        DATA t2091 TYPE REF TO zcl_lnt_issue.
        CLEAR t2091.
        DATA t2092 TYPE abap_bool.
        DATA t2093 TYPE f.
        DATA t2094 TYPE i.
        DATA t2095 TYPE string.
        DATA(t2096) = t2030.
        t2095 = t2096->value.
        DATA(t2097) = strlen( t2095 ).
        t2094 = t2097.
        t2093 = t2094.
        DATA(t2098) = t2065.
        t2092 = xsdbool( t2093 > t2098 ).
        IF t2092 = abap_true.
          DATA t2099 TYPE REF TO zcl_lnt_issue.
          CLEAR t2099.
          DATA(t2100) = VALUE string( ).
          DATA(t2101) = VALUE string( ).
          DATA(t2102) = VALUE abap_bool( ).
          DATA(t2103) = t2045.
          IF t2103 IS BOUND.
            IF t2103->has = abap_true.
              t2102 = xsdbool( strlen( t2103->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t2102 = abap_true.
            DATA t2104 TYPE string.
            DATA t2105 TYPE string.
            DATA(t2106) = |[|.
            DATA t2107 TYPE string.
            DATA(t2108) = t2045.
            t2107 = t2108->value.
            DATA(t2109) = strlen( t2106 ).
            t2105 = |{ t2106 }{ t2107 }|.
            DATA(t2110) = |] |.
            DATA(t2111) = strlen( t2105 ).
            t2104 = |{ t2105 }{ t2110 }|.
            t2101 = t2104.
          ELSE.
            DATA(t2112) = ||.
            t2101 = t2112.
          ENDIF.
          t2100 = t2101.
          DATA t2113 TYPE REF TO zcl_lnt_issue.
          CLEAR t2113.
          DATA(t2114) = abap_true.
          IF t2114 = abap_true.
            DATA t2115 TYPE REF TO zcl_lnt_issue.
            CLEAR t2115.
            DATA(t2116) = t2028.
            DATA(t2117) = CONV f( 1 ).
            DATA(t2118) = VALUE string( ).
            DATA(t2119) = VALUE string( ).
            DATA(t2120) = VALUE string( ).
            DATA(t2121) = VALUE string( ).
            DATA t2122 TYPE string.
            DATA t2123 TYPE string.
            DATA t2124 TYPE string.
            DATA t2125 TYPE string.
            DATA t2126 TYPE string.
            DATA t2127 TYPE string.
            DATA(t2128) = ||.
            DATA(t2129) = t2100.
            DATA(t2130) = strlen( t2128 ).
            t2127 = |{ t2128 }{ t2129 }|.
            DATA(t2131) = ||.
            DATA(t2132) = strlen( t2127 ).
            t2126 = |{ t2127 }{ t2131 }|.
            DATA(t2133) = |SCRTEXT_M|.
            DATA(t2134) = strlen( t2126 ).
            t2125 = |{ t2126 }{ t2133 }|.
            DATA(t2135) = | "|.
            DATA(t2136) = strlen( t2125 ).
            t2124 = |{ t2125 }{ t2135 }|.
            DATA t2137 TYPE string.
            DATA(t2138) = t2030.
            t2137 = t2138->value.
            DATA(t2139) = strlen( t2124 ).
            t2123 = |{ t2124 }{ t2137 }|.
            DATA(t2140) = |" exceeds maximum length of |.
            DATA(t2141) = strlen( t2123 ).
            t2122 = |{ t2123 }{ t2140 }|.
            DATA(t2142) = VALUE string( ).
            DATA(t2143) = t2065.
            IF t2143 <> trunc( t2143 ) OR t2143 > range_safe_integer OR t2143 < 0 - range_safe_integer.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            DATA(t2144) = CONV int8( t2143 ).
            t2142 = |{ t2144 }|.
            DATA(t2145) = strlen( t2122 ).
            t2121 = |{ t2122 }{ t2142 }|.
            DATA(t2146) = | characters (actual: |.
            DATA(t2147) = strlen( t2121 ).
            t2120 = |{ t2121 }{ t2146 }|.
            DATA t2148 TYPE string.
            DATA t2149 TYPE i.
            DATA t2150 TYPE string.
            DATA(t2151) = t2030.
            t2150 = t2151->value.
            DATA(t2152) = strlen( t2150 ).
            t2149 = t2152.
            t2148 = |{ t2149 }|.
            DATA(t2153) = strlen( t2120 ).
            t2119 = |{ t2120 }{ t2148 }|.
            DATA(t2154) = |)|.
            DATA(t2155) = strlen( t2119 ).
            t2118 = |{ t2119 }{ t2154 }|.
            DATA(t2156) = VALUE string( ).
            DATA t2157 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t2157.
            DATA t2158 TYPE string.
            DATA(t2159) = |xml_consistency|.
            t2158 = t2159.
            DATA t2160 TYPE string.
            DATA(t2161) = |XML consistency|.
            t2160 = t2161.
            DATA t2162 TYPE string.
            DATA(t2163) = |Checks the consistency of main XML files|.
            t2162 = t2163.
            DATA t2164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2164.
            DATA t2165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2165.
            DATA(t2166) = abap_true.
            IF t2166 = abap_true.
              DATA(t2167) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
              t2167 = t2167 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
              t2167 = t2167 && |ce table and field values\n* Transparent TABL objects have de|.
              t2167 = t2167 && |livery class and size category set\n* Lock parameter names in|.
              t2167 = t2167 && | ENQU objects are max 16 characters\n* Texts and translations|.
              t2167 = t2167 && | do not exceed maximum allowed length.|.
              DATA(t2168) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t2168->has = abap_true.
              t2168->value = t2167.
              t2165 = t2168.
            ELSE.
              DATA t2169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t2169.
              t2165 = t2169.
            ENDIF.
            t2164 = t2165.
            DATA t2170 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2170.
            DATA t2171 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2171.
            DATA(t2172) = abap_true.
            IF t2172 = abap_true.
              DATA t2173 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t2174 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t2175 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t2175.
              t2174 = t2175.
              DATA(t2176) = t2174.
              DATA(t2177) = |Naming|.
              t2176->load( ).
              APPEND t2177 TO t2176->items.
              t2176->save( ).
              DATA(t2178) = t2174.
              DATA(t2179) = |Syntax|.
              t2178->load( ).
              APPEND t2179 TO t2178->items.
              t2178->save( ).
              DATA(t2180) = t2174.
              t2173 = t2180.
              t2171 = t2173.
            ELSE.
              DATA t2181 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t2181.
              t2171 = t2181.
            ENDIF.
            t2170 = t2171.
            DATA t2182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t2183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2183.
            t2182 = t2183.
            DATA t2184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t2185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2185.
            t2184 = t2185.
            DATA t2186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t2187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2187.
            t2186 = t2187.
            DATA t2188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t2189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2189.
            t2188 = t2189.
            t2157 = NEW zcl_lnt_irule_metadata( i_key = t2158 i_title = t2160 i_short_description = t2162 i_bad_example = t2182 i_good_example = t2184 i_extended_information = t2164 i_tags = t2170 i_pragma = t2186 i_pseudo_comment = t2188 ).
            CREATE OBJECT t2157->zlnt_view_ownkeys_b0e8086400eb.
            t2157->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t2190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2190.
            IF t2157->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t2157->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2190 ).
            ENDIF.
            DATA t2191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2191.
            IF t2157->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t2157->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t2191 ).
            ENDIF.
            DATA t2192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2192.
            IF t2157->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t2157->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t2192 ).
            ENDIF.
            DATA t2193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2193.
            IF t2157->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t2157->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t2193 ).
            ENDIF.
            DATA t2194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2194.
            IF t2157->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t2157->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t2194 ).
            ENDIF.
            CREATE OBJECT t2157->zlnt_json_ownkeys_70e5fd461788.
            t2157->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t2195) = |key|.
            DATA t2196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2196.
            IF t2157->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2157->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2195 p1 = t2196 ).
            ENDIF.
            DATA(t2197) = |title|.
            DATA t2198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2198.
            IF t2157->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2157->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2197 p1 = t2198 ).
            ENDIF.
            DATA(t2199) = |shortDescription|.
            DATA t2200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2200.
            IF t2157->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2157->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2199 p1 = t2200 ).
            ENDIF.
            DATA(t2201) = |extendedInformation|.
            DATA t2202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2202.
            IF t2157->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2157->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2201 p1 = t2202 ).
            ENDIF.
            DATA(t2203) = |tags|.
            DATA t2204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2204.
            IF t2157->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2157->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2203 p1 = t2204 ).
            ENDIF.
            t2156 = t2157->key.
            DATA t2205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t2206) = me->conf.
            t2205 = t2206->zlnt_view_read_sr_b4bcf11cce6c( ).
            t2115 = zcl_lnt_issue=>at_row( i_file = t2116 i_row = t2117 i_message_26cb = t2118 i_key = t2156 i_severity = t2205 ).
            t2113 = t2115.
          ELSE.
            DATA t2207 TYPE REF TO zcl_lnt_issue.
            CLEAR t2207.
            t2113 = t2207.
          ENDIF.
          t2099 = t2113.
          t2091 = t2099.
        ELSE.
          DATA t2208 TYPE REF TO zcl_lnt_issue.
          CLEAR t2208.
          t2091 = t2208.
        ENDIF.
        t2064 = t2091.
        t2047 = t2064.
      ENDIF.
      t2027 = t2047.
      t2026->load( ).
      APPEND t2027 TO t2026->items.
      t2026->save( ).
      DATA(t2209) = t1667.
      DATA t2210 TYPE REF TO zcl_lnt_issue.
      CLEAR t2210.
      DATA t2211 TYPE REF TO zif_lnt_file.
      DATA(t2212) = t2.
      t2211 = t2212.
      DATA t2213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t2214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t2215) = t1658.
      t2214 = t2215->long.
      t2213 = t2214.
      DATA t2216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2216.
      DATA t2217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2217.
      DATA t2218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2218.
      DATA t2219 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t2220) = t23.
      t2219 = t2220.
      DATA t2221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2221.
      DATA(t2222) = VALUE abap_bool( ).
      DATA(t2223) = t2219.
      IF t2223 IS INITIAL.
        t2222 = abap_true.
      ENDIF.
      IF t2222 = abap_true.
        DATA t2224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2224.
        t2221 = t2224.
      ELSE.
        DATA t2225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t2226 TYPE REF TO zcl_lnt_shape_66add1d1.
        DATA(t2227) = t2219.
        t2226 = t2227.
        t2225 = t2226->long.
        t2221 = t2225.
      ENDIF.
      t2218 = t2221.
      CLEAR t2217.
      IF t2218 IS BOUND AND t2218->has = abap_true.
        CLEAR t2217.
        CREATE OBJECT t2217.
        t2217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t2217->sval = t2218->value.
      ENDIF.
      t2216 = t2217.
      DATA t2228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t2229) = t1663.
      t2228 = t2229.
      DATA t2230 TYPE REF TO zcl_lnt_issue.
      CLEAR t2230.
      DATA(t2231) = VALUE abap_bool( ).
      DATA(t2232) = VALUE abap_bool( ).
      DATA t2233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t2234) = t2213.
      t2233 = t2234.
      DATA t2235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t2236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2236.
      t2235 = t2236.
      DATA(t2237) = VALUE abap_bool( ).
      DATA(t2238) = t2233.
      IF t2238 IS INITIAL.
        t2237 = abap_true.
      ELSEIF t2238->has = abap_false.
        t2237 = abap_true.
      ENDIF.
      t2232 = t2237.
      t2231 = t2232.
      IF t2232 = abap_false.
        DATA(t2239) = VALUE abap_bool( ).
        DATA t2240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t2241) = t2216.
        t2240 = t2241.
        DATA t2242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t2243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2243.
        t2242 = t2243.
        DATA(t2244) = VALUE abap_bool( ).
        DATA(t2245) = t2240.
        IF t2245 IS INITIAL.
          t2244 = abap_true.
        ENDIF.
        t2239 = t2244.
        t2231 = t2239.
      ENDIF.
      IF t2231 = abap_true.
        DATA t2246 TYPE REF TO zcl_lnt_issue.
        CLEAR t2246.
        t2230 = t2246.
      ELSE.
        DATA t2247 TYPE REF TO zcl_lnt_issue.
        CLEAR t2247.
        DATA(t2248) = VALUE f( ).
        DATA(t2249) = VALUE f( ).
        DATA(t2250) = VALUE abap_bool( ).
        DATA(t2251) = VALUE string( ).
        DATA(t2252) = t2216.
        IF t2252 IS BOUND.
          t2251 = t2252->type_of( ).
          IF t2252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t2252->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t2251 = `function`.
          ENDIF.
        ELSE.
          t2251 = `undefined`.
        ENDIF.
        DATA(t2253) = |number|.
        t2250 = xsdbool( t2251 = t2253 ).
        IF t2250 = abap_true.
          DATA t2254 TYPE f.
          DATA(t2255) = t2216.
          t2254 = t2255->as_number( ).
          t2249 = t2254.
        ELSE.
          DATA(t2256) = VALUE f( ).
          DATA t2257 TYPE string.
          DATA(t2258) = t2216.
          t2257 = t2258->as_string( ).
          DATA t2259 TYPE i.
          DATA t2260 TYPE i.
          DATA(t2261) = VALUE string( ).
          DATA t2262 TYPE abap_bool.
          DATA t2263 TYPE abap_bool.
          DATA t2264 TYPE int8.
          DATA(t2265) = VALUE i( ).
          t2259 = 0.
          t2264 = 0.
          t2262 = abap_false.
          t2263 = abap_false.
          t2260 = strlen( t2257 ).
          DATA(t2266) = VALUE i( ).
          DATA(t2267) = VALUE i( ).
          DATA(t2268) = VALUE string( ).
          WHILE t2259 < t2260.
            t2267 = t2259.
            t2268 = t2257+t2267(1).
            DATA t2269 TYPE c LENGTH 1.
            CLEAR t2269.
            DATA(t2270) = VALUE xstring( ).
            DATA t2271 TYPE x LENGTH 1.
            CLEAR t2271.
            DATA t2272 TYPE x LENGTH 1.
            CLEAR t2272.
            DATA(t2273) = VALUE i( ).
            t2269 = t2268.
            t2266 = cl_abap_conv_out_ce=>uccpi( t2269 ).
            IF t2266 >= 255.
              IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
                zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t2268 IMPORTING buffer = t2270 ).
              t2271 = t2270(1).
              t2272 = t2270+1(1).
              t2266 = t2271.
              t2273 = t2272.
              t2266 = t2266 + t2273 * 256.
            ENDIF.
            IF t2266 = 9 OR t2266 = 10 OR t2266 = 11 OR t2266 = 12 OR t2266 = 13 OR t2266 = 32 OR t2266 = 160 OR t2266 = 5760 OR t2266 = 8232 OR t2266 = 8233 OR t2266 = 8239 OR t2266 = 8287 OR t2266 = 12288 OR t2266 = 65279 OR t2266 >= 8192
            AND t2266 <= 8202.
              t2259 = t2259 + 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          IF t2259 < t2260.
            t2261 = t2257+t2259(1).
            IF t2261 = '-' OR t2261 = '+'.
              t2262 = xsdbool( t2261 = '-' ).
              t2259 = t2259 + 1.
            ENDIF.
          ENDIF.
          WHILE t2259 < t2260.
            t2261 = t2257+t2259(1).
            IF t2261 CN '0123456789' OR t2261 = ` `.
              EXIT.
            ENDIF.
            t2265 = t2261.
            IF t2264 > range_parse_safe_prefix OR ( t2264 = range_parse_safe_prefix AND t2265 > 1 ).
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t2264 = t2264 * 10 + t2265.
            t2263 = abap_true.
            t2259 = t2259 + 1.
          ENDWHILE.
          IF t2263 = abap_false OR ( t2262 = abap_true AND t2264 = 0 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          IF t2262 = abap_true.
            t2264 = 0 - t2264.
          ENDIF.
          t2256 = t2264.
          t2249 = t2256.
        ENDIF.
        t2248 = t2249.
        DATA t2274 TYPE REF TO zcl_lnt_issue.
        CLEAR t2274.
        DATA t2275 TYPE abap_bool.
        DATA t2276 TYPE f.
        DATA t2277 TYPE i.
        DATA t2278 TYPE string.
        DATA(t2279) = t2213.
        t2278 = t2279->value.
        DATA(t2280) = strlen( t2278 ).
        t2277 = t2280.
        t2276 = t2277.
        DATA(t2281) = t2248.
        t2275 = xsdbool( t2276 > t2281 ).
        IF t2275 = abap_true.
          DATA t2282 TYPE REF TO zcl_lnt_issue.
          CLEAR t2282.
          DATA(t2283) = VALUE string( ).
          DATA(t2284) = VALUE string( ).
          DATA(t2285) = VALUE abap_bool( ).
          DATA(t2286) = t2228.
          IF t2286 IS BOUND.
            IF t2286->has = abap_true.
              t2285 = xsdbool( strlen( t2286->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t2285 = abap_true.
            DATA t2287 TYPE string.
            DATA t2288 TYPE string.
            DATA(t2289) = |[|.
            DATA t2290 TYPE string.
            DATA(t2291) = t2228.
            t2290 = t2291->value.
            DATA(t2292) = strlen( t2289 ).
            t2288 = |{ t2289 }{ t2290 }|.
            DATA(t2293) = |] |.
            DATA(t2294) = strlen( t2288 ).
            t2287 = |{ t2288 }{ t2293 }|.
            t2284 = t2287.
          ELSE.
            DATA(t2295) = ||.
            t2284 = t2295.
          ENDIF.
          t2283 = t2284.
          DATA t2296 TYPE REF TO zcl_lnt_issue.
          CLEAR t2296.
          DATA(t2297) = abap_true.
          IF t2297 = abap_true.
            DATA t2298 TYPE REF TO zcl_lnt_issue.
            CLEAR t2298.
            DATA(t2299) = t2211.
            DATA(t2300) = CONV f( 1 ).
            DATA(t2301) = VALUE string( ).
            DATA(t2302) = VALUE string( ).
            DATA(t2303) = VALUE string( ).
            DATA(t2304) = VALUE string( ).
            DATA t2305 TYPE string.
            DATA t2306 TYPE string.
            DATA t2307 TYPE string.
            DATA t2308 TYPE string.
            DATA t2309 TYPE string.
            DATA t2310 TYPE string.
            DATA(t2311) = ||.
            DATA(t2312) = t2283.
            DATA(t2313) = strlen( t2311 ).
            t2310 = |{ t2311 }{ t2312 }|.
            DATA(t2314) = ||.
            DATA(t2315) = strlen( t2310 ).
            t2309 = |{ t2310 }{ t2314 }|.
            DATA(t2316) = |SCRTEXT_L|.
            DATA(t2317) = strlen( t2309 ).
            t2308 = |{ t2309 }{ t2316 }|.
            DATA(t2318) = | "|.
            DATA(t2319) = strlen( t2308 ).
            t2307 = |{ t2308 }{ t2318 }|.
            DATA t2320 TYPE string.
            DATA(t2321) = t2213.
            t2320 = t2321->value.
            DATA(t2322) = strlen( t2307 ).
            t2306 = |{ t2307 }{ t2320 }|.
            DATA(t2323) = |" exceeds maximum length of |.
            DATA(t2324) = strlen( t2306 ).
            t2305 = |{ t2306 }{ t2323 }|.
            DATA(t2325) = VALUE string( ).
            DATA(t2326) = t2248.
            IF t2326 <> trunc( t2326 ) OR t2326 > range_safe_integer OR t2326 < 0 - range_safe_integer.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            DATA(t2327) = CONV int8( t2326 ).
            t2325 = |{ t2327 }|.
            DATA(t2328) = strlen( t2305 ).
            t2304 = |{ t2305 }{ t2325 }|.
            DATA(t2329) = | characters (actual: |.
            DATA(t2330) = strlen( t2304 ).
            t2303 = |{ t2304 }{ t2329 }|.
            DATA t2331 TYPE string.
            DATA t2332 TYPE i.
            DATA t2333 TYPE string.
            DATA(t2334) = t2213.
            t2333 = t2334->value.
            DATA(t2335) = strlen( t2333 ).
            t2332 = t2335.
            t2331 = |{ t2332 }|.
            DATA(t2336) = strlen( t2303 ).
            t2302 = |{ t2303 }{ t2331 }|.
            DATA(t2337) = |)|.
            DATA(t2338) = strlen( t2302 ).
            t2301 = |{ t2302 }{ t2337 }|.
            DATA(t2339) = VALUE string( ).
            DATA t2340 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t2340.
            DATA t2341 TYPE string.
            DATA(t2342) = |xml_consistency|.
            t2341 = t2342.
            DATA t2343 TYPE string.
            DATA(t2344) = |XML consistency|.
            t2343 = t2344.
            DATA t2345 TYPE string.
            DATA(t2346) = |Checks the consistency of main XML files|.
            t2345 = t2346.
            DATA t2347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2347.
            DATA t2348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2348.
            DATA(t2349) = abap_true.
            IF t2349 = abap_true.
              DATA(t2350) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
              t2350 = t2350 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
              t2350 = t2350 && |ce table and field values\n* Transparent TABL objects have de|.
              t2350 = t2350 && |livery class and size category set\n* Lock parameter names in|.
              t2350 = t2350 && | ENQU objects are max 16 characters\n* Texts and translations|.
              t2350 = t2350 && | do not exceed maximum allowed length.|.
              DATA(t2351) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t2351->has = abap_true.
              t2351->value = t2350.
              t2348 = t2351.
            ELSE.
              DATA t2352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t2352.
              t2348 = t2352.
            ENDIF.
            t2347 = t2348.
            DATA t2353 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2353.
            DATA t2354 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2354.
            DATA(t2355) = abap_true.
            IF t2355 = abap_true.
              DATA t2356 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t2357 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t2358 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t2358.
              t2357 = t2358.
              DATA(t2359) = t2357.
              DATA(t2360) = |Naming|.
              t2359->load( ).
              APPEND t2360 TO t2359->items.
              t2359->save( ).
              DATA(t2361) = t2357.
              DATA(t2362) = |Syntax|.
              t2361->load( ).
              APPEND t2362 TO t2361->items.
              t2361->save( ).
              DATA(t2363) = t2357.
              t2356 = t2363.
              t2354 = t2356.
            ELSE.
              DATA t2364 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t2364.
              t2354 = t2364.
            ENDIF.
            t2353 = t2354.
            DATA t2365 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t2366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2366.
            t2365 = t2366.
            DATA t2367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t2368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2368.
            t2367 = t2368.
            DATA t2369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t2370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2370.
            t2369 = t2370.
            DATA t2371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t2372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2372.
            t2371 = t2372.
            t2340 = NEW zcl_lnt_irule_metadata( i_key = t2341 i_title = t2343 i_short_description = t2345 i_bad_example = t2365 i_good_example = t2367 i_extended_information = t2347 i_tags = t2353 i_pragma = t2369 i_pseudo_comment = t2371 ).
            CREATE OBJECT t2340->zlnt_view_ownkeys_b0e8086400eb.
            t2340->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t2373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2373.
            IF t2340->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t2340->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2373 ).
            ENDIF.
            DATA t2374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2374.
            IF t2340->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t2340->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t2374 ).
            ENDIF.
            DATA t2375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2375.
            IF t2340->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t2340->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t2375 ).
            ENDIF.
            DATA t2376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2376.
            IF t2340->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t2340->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t2376 ).
            ENDIF.
            DATA t2377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2377.
            IF t2340->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t2340->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t2377 ).
            ENDIF.
            CREATE OBJECT t2340->zlnt_json_ownkeys_70e5fd461788.
            t2340->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t2378) = |key|.
            DATA t2379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2379.
            IF t2340->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2340->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2378 p1 = t2379 ).
            ENDIF.
            DATA(t2380) = |title|.
            DATA t2381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2381.
            IF t2340->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2340->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2380 p1 = t2381 ).
            ENDIF.
            DATA(t2382) = |shortDescription|.
            DATA t2383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2383.
            IF t2340->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2340->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2382 p1 = t2383 ).
            ENDIF.
            DATA(t2384) = |extendedInformation|.
            DATA t2385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2385.
            IF t2340->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2340->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2384 p1 = t2385 ).
            ENDIF.
            DATA(t2386) = |tags|.
            DATA t2387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2387.
            IF t2340->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2340->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2386 p1 = t2387 ).
            ENDIF.
            t2339 = t2340->key.
            DATA t2388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t2389) = me->conf.
            t2388 = t2389->zlnt_view_read_sr_b4bcf11cce6c( ).
            t2298 = zcl_lnt_issue=>at_row( i_file = t2299 i_row = t2300 i_message_26cb = t2301 i_key = t2339 i_severity = t2388 ).
            t2296 = t2298.
          ELSE.
            DATA t2390 TYPE REF TO zcl_lnt_issue.
            CLEAR t2390.
            t2296 = t2390.
          ENDIF.
          t2282 = t2296.
          t2274 = t2282.
        ELSE.
          DATA t2391 TYPE REF TO zcl_lnt_issue.
          CLEAR t2391.
          t2274 = t2391.
        ENDIF.
        t2247 = t2274.
        t2230 = t2247.
      ENDIF.
      t2210 = t2230.
      t2209->load( ).
      APPEND t2210 TO t2209->items.
      t2209->save( ).
      DATA(t2392) = t1667.
      DATA t2393 TYPE REF TO zcl_lnt_issue.
      CLEAR t2393.
      DATA t2394 TYPE REF TO zif_lnt_file.
      DATA(t2395) = t2.
      t2394 = t2395.
      DATA t2396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t2397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t2398) = t1658.
      t2397 = t2398->heading.
      t2396 = t2397.
      DATA t2399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2399.
      DATA t2400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2400.
      DATA t2401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2401.
      DATA t2402 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t2403) = t23.
      t2402 = t2403.
      DATA t2404 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2404.
      DATA(t2405) = VALUE abap_bool( ).
      DATA(t2406) = t2402.
      IF t2406 IS INITIAL.
        t2405 = abap_true.
      ENDIF.
      IF t2405 = abap_true.
        DATA t2407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2407.
        t2404 = t2407.
      ELSE.
        DATA t2408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t2409 TYPE REF TO zcl_lnt_shape_66add1d1.
        DATA(t2410) = t2402.
        t2409 = t2410.
        t2408 = t2409->heading.
        t2404 = t2408.
      ENDIF.
      t2401 = t2404.
      CLEAR t2400.
      IF t2401 IS BOUND AND t2401->has = abap_true.
        CLEAR t2400.
        CREATE OBJECT t2400.
        t2400->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t2400->sval = t2401->value.
      ENDIF.
      t2399 = t2400.
      DATA t2411 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t2412) = t1663.
      t2411 = t2412.
      DATA t2413 TYPE REF TO zcl_lnt_issue.
      CLEAR t2413.
      DATA(t2414) = VALUE abap_bool( ).
      DATA(t2415) = VALUE abap_bool( ).
      DATA t2416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t2417) = t2396.
      t2416 = t2417.
      DATA t2418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t2419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2419.
      t2418 = t2419.
      DATA(t2420) = VALUE abap_bool( ).
      DATA(t2421) = t2416.
      IF t2421 IS INITIAL.
        t2420 = abap_true.
      ELSEIF t2421->has = abap_false.
        t2420 = abap_true.
      ENDIF.
      t2415 = t2420.
      t2414 = t2415.
      IF t2415 = abap_false.
        DATA(t2422) = VALUE abap_bool( ).
        DATA t2423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t2424) = t2399.
        t2423 = t2424.
        DATA t2425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t2426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2426.
        t2425 = t2426.
        DATA(t2427) = VALUE abap_bool( ).
        DATA(t2428) = t2423.
        IF t2428 IS INITIAL.
          t2427 = abap_true.
        ENDIF.
        t2422 = t2427.
        t2414 = t2422.
      ENDIF.
      IF t2414 = abap_true.
        DATA t2429 TYPE REF TO zcl_lnt_issue.
        CLEAR t2429.
        t2413 = t2429.
      ELSE.
        DATA t2430 TYPE REF TO zcl_lnt_issue.
        CLEAR t2430.
        DATA(t2431) = VALUE f( ).
        DATA(t2432) = VALUE f( ).
        DATA(t2433) = VALUE abap_bool( ).
        DATA(t2434) = VALUE string( ).
        DATA(t2435) = t2399.
        IF t2435 IS BOUND.
          t2434 = t2435->type_of( ).
          IF t2435->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t2435->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t2434 = `function`.
          ENDIF.
        ELSE.
          t2434 = `undefined`.
        ENDIF.
        DATA(t2436) = |number|.
        t2433 = xsdbool( t2434 = t2436 ).
        IF t2433 = abap_true.
          DATA t2437 TYPE f.
          DATA(t2438) = t2399.
          t2437 = t2438->as_number( ).
          t2432 = t2437.
        ELSE.
          DATA(t2439) = VALUE f( ).
          DATA t2440 TYPE string.
          DATA(t2441) = t2399.
          t2440 = t2441->as_string( ).
          DATA t2442 TYPE i.
          DATA t2443 TYPE i.
          DATA(t2444) = VALUE string( ).
          DATA t2445 TYPE abap_bool.
          DATA t2446 TYPE abap_bool.
          DATA t2447 TYPE int8.
          DATA(t2448) = VALUE i( ).
          t2442 = 0.
          t2447 = 0.
          t2445 = abap_false.
          t2446 = abap_false.
          t2443 = strlen( t2440 ).
          DATA(t2449) = VALUE i( ).
          DATA(t2450) = VALUE i( ).
          DATA(t2451) = VALUE string( ).
          WHILE t2442 < t2443.
            t2450 = t2442.
            t2451 = t2440+t2450(1).
            DATA t2452 TYPE c LENGTH 1.
            CLEAR t2452.
            DATA(t2453) = VALUE xstring( ).
            DATA t2454 TYPE x LENGTH 1.
            CLEAR t2454.
            DATA t2455 TYPE x LENGTH 1.
            CLEAR t2455.
            DATA(t2456) = VALUE i( ).
            t2452 = t2451.
            t2449 = cl_abap_conv_out_ce=>uccpi( t2452 ).
            IF t2449 >= 255.
              IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
                zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t2451 IMPORTING buffer = t2453 ).
              t2454 = t2453(1).
              t2455 = t2453+1(1).
              t2449 = t2454.
              t2456 = t2455.
              t2449 = t2449 + t2456 * 256.
            ENDIF.
            IF t2449 = 9 OR t2449 = 10 OR t2449 = 11 OR t2449 = 12 OR t2449 = 13 OR t2449 = 32 OR t2449 = 160 OR t2449 = 5760 OR t2449 = 8232 OR t2449 = 8233 OR t2449 = 8239 OR t2449 = 8287 OR t2449 = 12288 OR t2449 = 65279 OR t2449 >= 8192
            AND t2449 <= 8202.
              t2442 = t2442 + 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          IF t2442 < t2443.
            t2444 = t2440+t2442(1).
            IF t2444 = '-' OR t2444 = '+'.
              t2445 = xsdbool( t2444 = '-' ).
              t2442 = t2442 + 1.
            ENDIF.
          ENDIF.
          WHILE t2442 < t2443.
            t2444 = t2440+t2442(1).
            IF t2444 CN '0123456789' OR t2444 = ` `.
              EXIT.
            ENDIF.
            t2448 = t2444.
            IF t2447 > range_parse_safe_prefix OR ( t2447 = range_parse_safe_prefix AND t2448 > 1 ).
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t2447 = t2447 * 10 + t2448.
            t2446 = abap_true.
            t2442 = t2442 + 1.
          ENDWHILE.
          IF t2446 = abap_false OR ( t2445 = abap_true AND t2447 = 0 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          IF t2445 = abap_true.
            t2447 = 0 - t2447.
          ENDIF.
          t2439 = t2447.
          t2432 = t2439.
        ENDIF.
        t2431 = t2432.
        DATA t2457 TYPE REF TO zcl_lnt_issue.
        CLEAR t2457.
        DATA t2458 TYPE abap_bool.
        DATA t2459 TYPE f.
        DATA t2460 TYPE i.
        DATA t2461 TYPE string.
        DATA(t2462) = t2396.
        t2461 = t2462->value.
        DATA(t2463) = strlen( t2461 ).
        t2460 = t2463.
        t2459 = t2460.
        DATA(t2464) = t2431.
        t2458 = xsdbool( t2459 > t2464 ).
        IF t2458 = abap_true.
          DATA t2465 TYPE REF TO zcl_lnt_issue.
          CLEAR t2465.
          DATA(t2466) = VALUE string( ).
          DATA(t2467) = VALUE string( ).
          DATA(t2468) = VALUE abap_bool( ).
          DATA(t2469) = t2411.
          IF t2469 IS BOUND.
            IF t2469->has = abap_true.
              t2468 = xsdbool( strlen( t2469->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t2468 = abap_true.
            DATA t2470 TYPE string.
            DATA t2471 TYPE string.
            DATA(t2472) = |[|.
            DATA t2473 TYPE string.
            DATA(t2474) = t2411.
            t2473 = t2474->value.
            DATA(t2475) = strlen( t2472 ).
            t2471 = |{ t2472 }{ t2473 }|.
            DATA(t2476) = |] |.
            DATA(t2477) = strlen( t2471 ).
            t2470 = |{ t2471 }{ t2476 }|.
            t2467 = t2470.
          ELSE.
            DATA(t2478) = ||.
            t2467 = t2478.
          ENDIF.
          t2466 = t2467.
          DATA t2479 TYPE REF TO zcl_lnt_issue.
          CLEAR t2479.
          DATA(t2480) = abap_true.
          IF t2480 = abap_true.
            DATA t2481 TYPE REF TO zcl_lnt_issue.
            CLEAR t2481.
            DATA(t2482) = t2394.
            DATA(t2483) = CONV f( 1 ).
            DATA(t2484) = VALUE string( ).
            DATA(t2485) = VALUE string( ).
            DATA(t2486) = VALUE string( ).
            DATA(t2487) = VALUE string( ).
            DATA t2488 TYPE string.
            DATA t2489 TYPE string.
            DATA t2490 TYPE string.
            DATA t2491 TYPE string.
            DATA t2492 TYPE string.
            DATA t2493 TYPE string.
            DATA(t2494) = ||.
            DATA(t2495) = t2466.
            DATA(t2496) = strlen( t2494 ).
            t2493 = |{ t2494 }{ t2495 }|.
            DATA(t2497) = ||.
            DATA(t2498) = strlen( t2493 ).
            t2492 = |{ t2493 }{ t2497 }|.
            DATA(t2499) = |REPTEXT|.
            DATA(t2500) = strlen( t2492 ).
            t2491 = |{ t2492 }{ t2499 }|.
            DATA(t2501) = | "|.
            DATA(t2502) = strlen( t2491 ).
            t2490 = |{ t2491 }{ t2501 }|.
            DATA t2503 TYPE string.
            DATA(t2504) = t2396.
            t2503 = t2504->value.
            DATA(t2505) = strlen( t2490 ).
            t2489 = |{ t2490 }{ t2503 }|.
            DATA(t2506) = |" exceeds maximum length of |.
            DATA(t2507) = strlen( t2489 ).
            t2488 = |{ t2489 }{ t2506 }|.
            DATA(t2508) = VALUE string( ).
            DATA(t2509) = t2431.
            IF t2509 <> trunc( t2509 ) OR t2509 > range_safe_integer OR t2509 < 0 - range_safe_integer.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            DATA(t2510) = CONV int8( t2509 ).
            t2508 = |{ t2510 }|.
            DATA(t2511) = strlen( t2488 ).
            t2487 = |{ t2488 }{ t2508 }|.
            DATA(t2512) = | characters (actual: |.
            DATA(t2513) = strlen( t2487 ).
            t2486 = |{ t2487 }{ t2512 }|.
            DATA t2514 TYPE string.
            DATA t2515 TYPE i.
            DATA t2516 TYPE string.
            DATA(t2517) = t2396.
            t2516 = t2517->value.
            DATA(t2518) = strlen( t2516 ).
            t2515 = t2518.
            t2514 = |{ t2515 }|.
            DATA(t2519) = strlen( t2486 ).
            t2485 = |{ t2486 }{ t2514 }|.
            DATA(t2520) = |)|.
            DATA(t2521) = strlen( t2485 ).
            t2484 = |{ t2485 }{ t2520 }|.
            DATA(t2522) = VALUE string( ).
            DATA t2523 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t2523.
            DATA t2524 TYPE string.
            DATA(t2525) = |xml_consistency|.
            t2524 = t2525.
            DATA t2526 TYPE string.
            DATA(t2527) = |XML consistency|.
            t2526 = t2527.
            DATA t2528 TYPE string.
            DATA(t2529) = |Checks the consistency of main XML files|.
            t2528 = t2529.
            DATA t2530 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2530.
            DATA t2531 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2531.
            DATA(t2532) = abap_true.
            IF t2532 = abap_true.
              DATA(t2533) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
              t2533 = t2533 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
              t2533 = t2533 && |ce table and field values\n* Transparent TABL objects have de|.
              t2533 = t2533 && |livery class and size category set\n* Lock parameter names in|.
              t2533 = t2533 && | ENQU objects are max 16 characters\n* Texts and translations|.
              t2533 = t2533 && | do not exceed maximum allowed length.|.
              DATA(t2534) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t2534->has = abap_true.
              t2534->value = t2533.
              t2531 = t2534.
            ELSE.
              DATA t2535 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t2535.
              t2531 = t2535.
            ENDIF.
            t2530 = t2531.
            DATA t2536 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2536.
            DATA t2537 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2537.
            DATA(t2538) = abap_true.
            IF t2538 = abap_true.
              DATA t2539 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t2540 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t2541 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t2541.
              t2540 = t2541.
              DATA(t2542) = t2540.
              DATA(t2543) = |Naming|.
              t2542->load( ).
              APPEND t2543 TO t2542->items.
              t2542->save( ).
              DATA(t2544) = t2540.
              DATA(t2545) = |Syntax|.
              t2544->load( ).
              APPEND t2545 TO t2544->items.
              t2544->save( ).
              DATA(t2546) = t2540.
              t2539 = t2546.
              t2537 = t2539.
            ELSE.
              DATA t2547 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t2547.
              t2537 = t2547.
            ENDIF.
            t2536 = t2537.
            DATA t2548 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t2549 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2549.
            t2548 = t2549.
            DATA t2550 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t2551 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2551.
            t2550 = t2551.
            DATA t2552 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t2553 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2553.
            t2552 = t2553.
            DATA t2554 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t2555 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2555.
            t2554 = t2555.
            t2523 = NEW zcl_lnt_irule_metadata( i_key = t2524 i_title = t2526 i_short_description = t2528 i_bad_example = t2548 i_good_example = t2550 i_extended_information = t2530 i_tags = t2536 i_pragma = t2552 i_pseudo_comment = t2554 ).
            CREATE OBJECT t2523->zlnt_view_ownkeys_b0e8086400eb.
            t2523->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t2556 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2556.
            IF t2523->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t2523->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2556 ).
            ENDIF.
            DATA t2557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2557.
            IF t2523->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t2523->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t2557 ).
            ENDIF.
            DATA t2558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2558.
            IF t2523->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t2523->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t2558 ).
            ENDIF.
            DATA t2559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2559.
            IF t2523->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t2523->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t2559 ).
            ENDIF.
            DATA t2560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2560.
            IF t2523->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t2523->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t2560 ).
            ENDIF.
            CREATE OBJECT t2523->zlnt_json_ownkeys_70e5fd461788.
            t2523->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t2561) = |key|.
            DATA t2562 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2562.
            IF t2523->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2523->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2561 p1 = t2562 ).
            ENDIF.
            DATA(t2563) = |title|.
            DATA t2564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2564.
            IF t2523->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2523->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2563 p1 = t2564 ).
            ENDIF.
            DATA(t2565) = |shortDescription|.
            DATA t2566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2566.
            IF t2523->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2523->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2565 p1 = t2566 ).
            ENDIF.
            DATA(t2567) = |extendedInformation|.
            DATA t2568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2568.
            IF t2523->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2523->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2567 p1 = t2568 ).
            ENDIF.
            DATA(t2569) = |tags|.
            DATA t2570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2570.
            IF t2523->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2523->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2569 p1 = t2570 ).
            ENDIF.
            t2522 = t2523->key.
            DATA t2571 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t2572) = me->conf.
            t2571 = t2572->zlnt_view_read_sr_b4bcf11cce6c( ).
            t2481 = zcl_lnt_issue=>at_row( i_file = t2482 i_row = t2483 i_message_26cb = t2484 i_key = t2522 i_severity = t2571 ).
            t2479 = t2481.
          ELSE.
            DATA t2573 TYPE REF TO zcl_lnt_issue.
            CLEAR t2573.
            t2479 = t2573.
          ENDIF.
          t2465 = t2479.
          t2457 = t2465.
        ELSE.
          DATA t2574 TYPE REF TO zcl_lnt_issue.
          CLEAR t2574.
          t2457 = t2574.
        ENDIF.
        t2430 = t2457.
        t2413 = t2430.
      ENDIF.
      t2393 = t2413.
      t2392->load( ).
      APPEND t2393 TO t2392->items.
      t2392->save( ).
      DATA(t2575) = t1667.
      t1666 = t2575.
      DATA t2576 TYPE REF TO zcl_lnt_issue.
      CLEAR t2576.
      DATA(t2577) = VALUE i( ).
      DO.
        t1666->load( ).
        IF t2577 >= lines( t1666->items ).
          EXIT.
        ENDIF.
        CLEAR t2576.
        READ TABLE t1666->items INDEX t2577 + 1 INTO t2576.
        t2577 = t2577 + 1.
        DATA t2578 TYPE abap_bool.
        DATA(t2579) = t2576.
        t2578 = xsdbool( t2579 IS BOUND ).
        IF t2578 = abap_true.
          DATA(t2580) = t3.
          DATA t2581 TYPE REF TO zcl_lnt_issue.
          DATA(t2582) = t2576.
          t2581 = t2582.
          t2580->load( ).
          APPEND t2581 TO t2580->items.
          t2580->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t2583) = t3.
    result = t2583.

  ENDMETHOD.

  METHOD check_required_field.
    DATA(t1) = i_file.
    DATA(t2) = i_field_name.
    DATA(t3) = i_value.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
    ELSEIF t11->has = abap_false.
      t10 = abap_true.
    ENDIF.
    t5 = t10.
    t4 = t5.
    IF t5 = abap_false.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE string.
      DATA(t14) = t3.
      t13 = t14->value.
      DATA(t15) = ||.
      t12 = xsdbool( t13 = t15 ).
      t4 = t12.
    ENDIF.
    IF t4 = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_issue.
      CLEAR t16.
      DATA(t17) = abap_true.
      IF t17 = abap_true.
        DATA t18 TYPE REF TO zcl_lnt_issue.
        CLEAR t18.
        DATA(t19) = t1.
        DATA(t20) = CONV f( 1 ).
        DATA t21 TYPE string.
        DATA t22 TYPE string.
        DATA(t23) = |Missing required field |.
        DATA(t24) = t2.
        DATA(t25) = strlen( t23 ).
        t22 = |{ t23 }{ t24 }|.
        DATA(t26) = | in DD04V|.
        DATA(t27) = strlen( t22 ).
        t21 = |{ t22 }{ t26 }|.
        DATA(t28) = VALUE string( ).
        DATA t29 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t29.
        DATA t30 TYPE string.
        DATA(t31) = |xml_consistency|.
        t30 = t31.
        DATA t32 TYPE string.
        DATA(t33) = |XML consistency|.
        t32 = t33.
        DATA t34 TYPE string.
        DATA(t35) = |Checks the consistency of main XML files|.
        t34 = t35.
        DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t36.
        DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t37.
        DATA(t38) = abap_true.
        IF t38 = abap_true.
          DATA(t39) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t39 = t39 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t39 = t39 && |ce table and field values\n* Transparent TABL objects have de|.
          t39 = t39 && |livery class and size category set\n* Lock parameter names in|.
          t39 = t39 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t39 = t39 && | do not exceed maximum allowed length.|.
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
        DATA t42 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t42.
        DATA t43 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t43.
        DATA(t44) = abap_true.
        IF t44 = abap_true.
          DATA t45 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t46 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t47 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t47.
          t46 = t47.
          DATA(t48) = t46.
          DATA(t49) = |Naming|.
          t48->load( ).
          APPEND t49 TO t48->items.
          t48->save( ).
          DATA(t50) = t46.
          DATA(t51) = |Syntax|.
          t50->load( ).
          APPEND t51 TO t50->items.
          t50->save( ).
          DATA(t52) = t46.
          t45 = t52.
          t43 = t45.
        ELSE.
          DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t53.
          t43 = t53.
        ENDIF.
        t42 = t43.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        t54 = t55.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t57.
        t56 = t57.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t59.
        t58 = t59.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        t60 = t61.
        t29 = NEW zcl_lnt_irule_metadata( i_key = t30 i_title = t32 i_short_description = t34 i_bad_example = t54 i_good_example = t56 i_extended_information = t36 i_tags = t42 i_pragma = t58 i_pseudo_comment = t60 ).
        CREATE OBJECT t29->zlnt_view_ownkeys_b0e8086400eb.
        t29->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t62.
        IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t62 ).
        ENDIF.
        DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t63.
        IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t63 ).
        ENDIF.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t64.
        IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t64 ).
        ENDIF.
        DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t65.
        IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t65 ).
        ENDIF.
        DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t66.
        IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t66 ).
        ENDIF.
        CREATE OBJECT t29->zlnt_json_ownkeys_70e5fd461788.
        t29->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t67) = |key|.
        DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t68.
        IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t67 p1 = t68 ).
        ENDIF.
        DATA(t69) = |title|.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t69 p1 = t70 ).
        ENDIF.
        DATA(t71) = |shortDescription|.
        DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t72.
        IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t71 p1 = t72 ).
        ENDIF.
        DATA(t73) = |extendedInformation|.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
        ENDIF.
        DATA(t75) = |tags|.
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t76.
        IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t75 p1 = t76 ).
        ENDIF.
        t28 = t29->key.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t78) = me->conf.
        t77 = t78->zlnt_view_read_sr_d3e3c311c261( ).
        t18 = zcl_lnt_issue=>at_row( i_file = t19 i_row = t20 i_message_26cb = t21 i_key = t28 i_severity = t77 ).
        t16 = t18.
      ELSE.
        DATA t79 TYPE REF TO zcl_lnt_issue.
        CLEAR t79.
        t16 = t79.
      ENDIF.
      result = t16.
      RETURN.
    ENDIF.
    DATA t80 TYPE REF TO zcl_lnt_issue.
    CLEAR t80.
    result = t80.

  ENDMETHOD.

  METHOD run_domain.
    CONSTANTS range_parse_safe_prefix TYPE int8 VALUE '900719925474099'.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_file.
    DATA t3 TYPE i.
    DATA(t4) = 60.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8.
    DATA t9 TYPE REF TO zcl_lnt_issue.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_issue.
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_file.
    DATA(t12) = t2.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t14.
    DATA t15 TYPE REF TO zcl_lnt_domain.
    DATA(t16) = t1.
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t19) = t15.
    t18 = t19->prs_instn_src_objct_dmn_ts_dmn( ).
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_shape_b346f020.
    DATA t22 TYPE REF TO zcl_lnt_shape_b346f020.
    DATA(t23) = t15.
    t22 = t23->parsed_xml.
    t21 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = t21.
    IF t26 IS INITIAL.
      t25 = abap_true.
    ENDIF.
    IF t25 = abap_true.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t24 = t27.
    ELSE.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t29 TYPE REF TO zcl_lnt_shape_b346f020.
      DATA(t30) = t21.
      t29 = t30.
      t28 = t29->description.
      t24 = t28.
    ENDIF.
    t20 = t24.
    t17 = t20.
    t14 = t17.
    t13 = t14.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = t3.
    CLEAR t32.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t32->nval = t33.
    t31 = t32.
    DATA t34 TYPE REF TO zcl_lnt_issue.
    CLEAR t34.
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = VALUE abap_bool( ).
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t38) = t13.
    t37 = t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    t39 = t40.
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = t37.
    IF t42 IS INITIAL.
      t41 = abap_true.
    ELSEIF t42->has = abap_false.
      t41 = abap_true.
    ENDIF.
    t36 = t41.
    t35 = t36.
    IF t36 = abap_false.
      DATA(t43) = VALUE abap_bool( ).
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t45) = t31.
      t44 = t45.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      t46 = t47.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = t44.
      IF t49 IS INITIAL.
        t48 = abap_true.
      ENDIF.
      t43 = t48.
      t35 = t43.
    ENDIF.
    IF t35 = abap_true.
      DATA t50 TYPE REF TO zcl_lnt_issue.
      CLEAR t50.
      t34 = t50.
    ELSE.
      DATA t51 TYPE REF TO zcl_lnt_issue.
      CLEAR t51.
      DATA(t52) = VALUE f( ).
      DATA(t53) = VALUE f( ).
      DATA(t54) = VALUE abap_bool( ).
      DATA(t55) = VALUE string( ).
      DATA(t56) = t31.
      IF t56 IS BOUND.
        t55 = t56->type_of( ).
        IF t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t56->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t55 = `function`.
        ENDIF.
      ELSE.
        t55 = `undefined`.
      ENDIF.
      DATA(t57) = |number|.
      t54 = xsdbool( t55 = t57 ).
      IF t54 = abap_true.
        DATA t58 TYPE f.
        DATA(t59) = t31.
        t58 = t59->as_number( ).
        t53 = t58.
      ELSE.
        DATA(t60) = VALUE f( ).
        DATA t61 TYPE string.
        DATA(t62) = t31.
        t61 = t62->as_string( ).
        DATA t63 TYPE i.
        DATA t64 TYPE i.
        DATA(t65) = VALUE string( ).
        DATA t66 TYPE abap_bool.
        DATA t67 TYPE abap_bool.
        DATA t68 TYPE int8.
        DATA(t69) = VALUE i( ).
        t63 = 0.
        t68 = 0.
        t66 = abap_false.
        t67 = abap_false.
        t64 = strlen( t61 ).
        DATA(t70) = VALUE i( ).
        DATA(t71) = VALUE i( ).
        DATA(t72) = VALUE string( ).
        WHILE t63 < t64.
          t71 = t63.
          t72 = t61+t71(1).
          DATA t73 TYPE c LENGTH 1.
          CLEAR t73.
          DATA(t74) = VALUE xstring( ).
          DATA t75 TYPE x LENGTH 1.
          CLEAR t75.
          DATA t76 TYPE x LENGTH 1.
          CLEAR t76.
          DATA(t77) = VALUE i( ).
          t73 = t72.
          t70 = cl_abap_conv_out_ce=>uccpi( t73 ).
          IF t70 >= 255.
            IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
              zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t72 IMPORTING buffer = t74 ).
            t75 = t74(1).
            t76 = t74+1(1).
            t70 = t75.
            t77 = t76.
            t70 = t70 + t77 * 256.
          ENDIF.
          IF t70 = 9 OR t70 = 10 OR t70 = 11 OR t70 = 12 OR t70 = 13 OR t70 = 32 OR t70 = 160 OR t70 = 5760 OR t70 = 8232 OR t70 = 8233 OR t70 = 8239 OR t70 = 8287 OR t70 = 12288 OR t70 = 65279 OR t70 >= 8192 AND t70 <= 8202.
            t63 = t63 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t63 < t64.
          t65 = t61+t63(1).
          IF t65 = '-' OR t65 = '+'.
            t66 = xsdbool( t65 = '-' ).
            t63 = t63 + 1.
          ENDIF.
        ENDIF.
        WHILE t63 < t64.
          t65 = t61+t63(1).
          IF t65 CN '0123456789' OR t65 = ` `.
            EXIT.
          ENDIF.
          t69 = t65.
          IF t68 > range_parse_safe_prefix OR ( t68 = range_parse_safe_prefix AND t69 > 1 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t68 = t68 * 10 + t69.
          t67 = abap_true.
          t63 = t63 + 1.
        ENDWHILE.
        IF t67 = abap_false OR ( t66 = abap_true AND t68 = 0 ).
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        IF t66 = abap_true.
          t68 = 0 - t68.
        ENDIF.
        t60 = t68.
        t53 = t60.
      ENDIF.
      t52 = t53.
      DATA t78 TYPE REF TO zcl_lnt_issue.
      CLEAR t78.
      DATA t79 TYPE abap_bool.
      DATA t80 TYPE f.
      DATA t81 TYPE i.
      DATA t82 TYPE string.
      DATA(t83) = t13.
      t82 = t83->value.
      DATA(t84) = strlen( t82 ).
      t81 = t84.
      t80 = t81.
      DATA(t85) = t52.
      t79 = xsdbool( t80 > t85 ).
      IF t79 = abap_true.
        DATA t86 TYPE REF TO zcl_lnt_issue.
        CLEAR t86.
        DATA(t87) = VALUE string( ).
        DATA(t88) = VALUE string( ).
        DATA(t89) = VALUE abap_bool( ).
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        IF t90 IS BOUND.
          IF t90->has = abap_true.
            t89 = xsdbool( strlen( t90->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t89 = abap_true.
          DATA t91 TYPE string.
          DATA t92 TYPE string.
          DATA(t93) = |[|.
          DATA t94 TYPE string.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          t94 = t95->value.
          DATA(t96) = strlen( t93 ).
          t92 = |{ t93 }{ t94 }|.
          DATA(t97) = |] |.
          DATA(t98) = strlen( t92 ).
          t91 = |{ t92 }{ t97 }|.
          t88 = t91.
        ELSE.
          DATA(t99) = ||.
          t88 = t99.
        ENDIF.
        t87 = t88.
        DATA t100 TYPE REF TO zcl_lnt_issue.
        CLEAR t100.
        DATA(t101) = abap_true.
        IF t101 = abap_true.
          DATA t102 TYPE REF TO zcl_lnt_issue.
          CLEAR t102.
          DATA(t103) = t11.
          DATA(t104) = CONV f( 1 ).
          DATA(t105) = VALUE string( ).
          DATA(t106) = VALUE string( ).
          DATA(t107) = VALUE string( ).
          DATA(t108) = VALUE string( ).
          DATA t109 TYPE string.
          DATA t110 TYPE string.
          DATA t111 TYPE string.
          DATA t112 TYPE string.
          DATA t113 TYPE string.
          DATA t114 TYPE string.
          DATA(t115) = ||.
          DATA(t116) = t87.
          DATA(t117) = strlen( t115 ).
          t114 = |{ t115 }{ t116 }|.
          DATA(t118) = ||.
          DATA(t119) = strlen( t114 ).
          t113 = |{ t114 }{ t118 }|.
          DATA(t120) = |DDTEXT|.
          DATA(t121) = strlen( t113 ).
          t112 = |{ t113 }{ t120 }|.
          DATA(t122) = | "|.
          DATA(t123) = strlen( t112 ).
          t111 = |{ t112 }{ t122 }|.
          DATA t124 TYPE string.
          DATA(t125) = t13.
          t124 = t125->value.
          DATA(t126) = strlen( t111 ).
          t110 = |{ t111 }{ t124 }|.
          DATA(t127) = |" exceeds maximum length of |.
          DATA(t128) = strlen( t110 ).
          t109 = |{ t110 }{ t127 }|.
          DATA(t129) = VALUE string( ).
          DATA(t130) = t52.
          IF t130 <> trunc( t130 ) OR t130 > range_safe_integer OR t130 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t131) = CONV int8( t130 ).
          t129 = |{ t131 }|.
          DATA(t132) = strlen( t109 ).
          t108 = |{ t109 }{ t129 }|.
          DATA(t133) = | characters (actual: |.
          DATA(t134) = strlen( t108 ).
          t107 = |{ t108 }{ t133 }|.
          DATA t135 TYPE string.
          DATA t136 TYPE i.
          DATA t137 TYPE string.
          DATA(t138) = t13.
          t137 = t138->value.
          DATA(t139) = strlen( t137 ).
          t136 = t139.
          t135 = |{ t136 }|.
          DATA(t140) = strlen( t107 ).
          t106 = |{ t107 }{ t135 }|.
          DATA(t141) = |)|.
          DATA(t142) = strlen( t106 ).
          t105 = |{ t106 }{ t141 }|.
          DATA(t143) = VALUE string( ).
          DATA t144 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t144.
          DATA t145 TYPE string.
          DATA(t146) = |xml_consistency|.
          t145 = t146.
          DATA t147 TYPE string.
          DATA(t148) = |XML consistency|.
          t147 = t148.
          DATA t149 TYPE string.
          DATA(t150) = |Checks the consistency of main XML files|.
          t149 = t150.
          DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t151.
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t152.
          DATA(t153) = abap_true.
          IF t153 = abap_true.
            DATA(t154) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
            t154 = t154 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
            t154 = t154 && |ce table and field values\n* Transparent TABL objects have de|.
            t154 = t154 && |livery class and size category set\n* Lock parameter names in|.
            t154 = t154 && | ENQU objects are max 16 characters\n* Texts and translations|.
            t154 = t154 && | do not exceed maximum allowed length.|.
            DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t155->has = abap_true.
            t155->value = t154.
            t152 = t155.
          ELSE.
            DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t156.
            t152 = t156.
          ENDIF.
          t151 = t152.
          DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t157.
          DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t158.
          DATA(t159) = abap_true.
          IF t159 = abap_true.
            DATA t160 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t161 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t162 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t162.
            t161 = t162.
            DATA(t163) = t161.
            DATA(t164) = |Naming|.
            t163->load( ).
            APPEND t164 TO t163->items.
            t163->save( ).
            DATA(t165) = t161.
            DATA(t166) = |Syntax|.
            t165->load( ).
            APPEND t166 TO t165->items.
            t165->save( ).
            DATA(t167) = t161.
            t160 = t167.
            t158 = t160.
          ELSE.
            DATA t168 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t168.
            t158 = t168.
          ENDIF.
          t157 = t158.
          DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t170.
          t169 = t170.
          DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t172.
          t171 = t172.
          DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t174.
          t173 = t174.
          DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t176.
          t175 = t176.
          t144 = NEW zcl_lnt_irule_metadata( i_key = t145 i_title = t147 i_short_description = t149 i_bad_example = t169 i_good_example = t171 i_extended_information = t151 i_tags = t157 i_pragma = t173 i_pseudo_comment = t175 ).
          CREATE OBJECT t144->zlnt_view_ownkeys_b0e8086400eb.
          t144->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t177.
          IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t177 ).
          ENDIF.
          DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t178.
          IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t178 ).
          ENDIF.
          DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t179.
          IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t179 ).
          ENDIF.
          DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t180.
          IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t180 ).
          ENDIF.
          DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t181.
          IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t181 ).
          ENDIF.
          CREATE OBJECT t144->zlnt_json_ownkeys_70e5fd461788.
          t144->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t182) = |key|.
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t183.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t182 p1 = t183 ).
          ENDIF.
          DATA(t184) = |title|.
          DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t185.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t184 p1 = t185 ).
          ENDIF.
          DATA(t186) = |shortDescription|.
          DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t187.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t186 p1 = t187 ).
          ENDIF.
          DATA(t188) = |extendedInformation|.
          DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t189.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t188 p1 = t189 ).
          ENDIF.
          DATA(t190) = |tags|.
          DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t191.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t190 p1 = t191 ).
          ENDIF.
          t143 = t144->key.
          DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t193) = me->conf.
          t192 = t193->zlnt_view_read_sr_b4bcf11cce6c( ).
          t102 = zcl_lnt_issue=>at_row( i_file = t103 i_row = t104 i_message_26cb = t105 i_key = t143 i_severity = t192 ).
          t100 = t102.
        ELSE.
          DATA t194 TYPE REF TO zcl_lnt_issue.
          CLEAR t194.
          t100 = t194.
        ENDIF.
        t86 = t100.
        t78 = t86.
      ELSE.
        DATA t195 TYPE REF TO zcl_lnt_issue.
        CLEAR t195.
        t78 = t195.
      ENDIF.
      t51 = t78.
      t34 = t51.
    ENDIF.
    t10 = t34.
    t9 = t10.
    DATA t196 TYPE abap_bool.
    DATA(t197) = t9.
    t196 = xsdbool( t197 IS BOUND ).
    IF t196 = abap_true.
      DATA(t198) = t7.
      DATA t199 TYPE REF TO zcl_lnt_issue.
      DATA(t200) = t9.
      t199 = t200.
      t198->load( ).
      APPEND t199 TO t198->items.
      t198->save( ).
    ENDIF.
    DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t201.
    DATA t202 TYPE REF TO zcl_lnt_domain.
    DATA(t203) = t1.
    t202 = t203.
    DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t204.
    DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t205.
    DATA t206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t206.
    DATA t207 TYPE REF TO zcl_lnt_shape_b346f020.
    DATA t208 TYPE REF TO zcl_lnt_shape_b346f020.
    DATA(t209) = t202.
    t208 = t209->parsed_xml.
    t207 = t208.
    DATA t210 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t210.
    DATA(t211) = VALUE abap_bool( ).
    DATA(t212) = t207.
    IF t212 IS INITIAL.
      t211 = abap_true.
    ENDIF.
    IF t211 = abap_true.
      DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t213.
      t210 = t213.
    ELSE.
      DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t215 TYPE REF TO zcl_lnt_shape_b346f020.
      DATA(t216) = t207.
      t215 = t216.
      t214 = t215->values.
      t210 = t214.
    ENDIF.
    t206 = t210.
    t205 = t206.
    DATA t217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t217.
    DATA(t218) = VALUE abap_bool( ).
    DATA(t219) = t205.
    IF t219 IS INITIAL.
      t218 = abap_true.
    ENDIF.
    IF t218 = abap_true.
      DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t220.
      t217 = t220.
    ELSE.
      DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t222) = t205.
      t221 = t222.
      t217 = t221.
    ENDIF.
    t204 = t217.
    t201 = t204.
    DATA t223 TYPE REF TO zcl_lnt_domain_value.
    CLEAR t223.
    DATA t224 TYPE REF TO object.
    CLEAR t224.
    DATA(t225) = VALUE i( ).
    DO.
      t201->load( ).
      IF t225 >= lines( t201->items ).
        EXIT.
      ENDIF.
      CLEAR t224.
      READ TABLE t201->items INDEX t225 + 1 INTO t224.
      t225 = t225 + 1.
      DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t226.
      CLEAR t223.
      IF t224 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t226 ?= t224.
        DATA t227 TYPE REF TO object.
        t227 = t226->as_ref( ).
        t223 ?= t227.
      ELSE.
        t223 ?= t224.
      ENDIF.
      DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t229) = t5.
      t228 = t229.
      DATA t230 TYPE REF TO zcl_lnt_issue.
      CLEAR t230.
      DATA t231 TYPE REF TO zcl_lnt_issue.
      CLEAR t231.
      DATA t232 TYPE REF TO zif_lnt_file.
      DATA(t233) = t2.
      t232 = t233.
      DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t236) = t223.
      t235 = t236->description.
      t234 = t235.
      DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t238.
      DATA(t239) = t3.
      CLEAR t238.
      CREATE OBJECT t238.
      t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t238->nval = t239.
      t237 = t238.
      DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t242) = t223.
      t241 = t242->language.
      t240 = t241.
      DATA t243 TYPE REF TO zcl_lnt_issue.
      CLEAR t243.
      DATA(t244) = VALUE abap_bool( ).
      DATA(t245) = VALUE abap_bool( ).
      DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t247) = t234.
      t246 = t247.
      DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t249.
      t248 = t249.
      DATA(t250) = VALUE abap_bool( ).
      DATA(t251) = t246.
      IF t251 IS INITIAL.
        t250 = abap_true.
      ELSEIF t251->has = abap_false.
        t250 = abap_true.
      ENDIF.
      t245 = t250.
      t244 = t245.
      IF t245 = abap_false.
        DATA(t252) = VALUE abap_bool( ).
        DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t254) = t237.
        t253 = t254.
        DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t256.
        t255 = t256.
        DATA(t257) = VALUE abap_bool( ).
        DATA(t258) = t253.
        IF t258 IS INITIAL.
          t257 = abap_true.
        ENDIF.
        t252 = t257.
        t244 = t252.
      ENDIF.
      IF t244 = abap_true.
        DATA t259 TYPE REF TO zcl_lnt_issue.
        CLEAR t259.
        t243 = t259.
      ELSE.
        DATA t260 TYPE REF TO zcl_lnt_issue.
        CLEAR t260.
        DATA(t261) = VALUE f( ).
        DATA(t262) = VALUE f( ).
        DATA(t263) = VALUE abap_bool( ).
        DATA(t264) = VALUE string( ).
        DATA(t265) = t237.
        IF t265 IS BOUND.
          t264 = t265->type_of( ).
          IF t265->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t265->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t264 = `function`.
          ENDIF.
        ELSE.
          t264 = `undefined`.
        ENDIF.
        DATA(t266) = |number|.
        t263 = xsdbool( t264 = t266 ).
        IF t263 = abap_true.
          DATA t267 TYPE f.
          DATA(t268) = t237.
          t267 = t268->as_number( ).
          t262 = t267.
        ELSE.
          DATA(t269) = VALUE f( ).
          DATA t270 TYPE string.
          DATA(t271) = t237.
          t270 = t271->as_string( ).
          DATA t272 TYPE i.
          DATA t273 TYPE i.
          DATA(t274) = VALUE string( ).
          DATA t275 TYPE abap_bool.
          DATA t276 TYPE abap_bool.
          DATA t277 TYPE int8.
          DATA(t278) = VALUE i( ).
          t272 = 0.
          t277 = 0.
          t275 = abap_false.
          t276 = abap_false.
          t273 = strlen( t270 ).
          DATA(t279) = VALUE i( ).
          DATA(t280) = VALUE i( ).
          DATA(t281) = VALUE string( ).
          WHILE t272 < t273.
            t280 = t272.
            t281 = t270+t280(1).
            DATA t282 TYPE c LENGTH 1.
            CLEAR t282.
            DATA(t283) = VALUE xstring( ).
            DATA t284 TYPE x LENGTH 1.
            CLEAR t284.
            DATA t285 TYPE x LENGTH 1.
            CLEAR t285.
            DATA(t286) = VALUE i( ).
            t282 = t281.
            t279 = cl_abap_conv_out_ce=>uccpi( t282 ).
            IF t279 >= 255.
              IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
                zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t281 IMPORTING buffer = t283 ).
              t284 = t283(1).
              t285 = t283+1(1).
              t279 = t284.
              t286 = t285.
              t279 = t279 + t286 * 256.
            ENDIF.
            IF t279 = 9 OR t279 = 10 OR t279 = 11 OR t279 = 12 OR t279 = 13 OR t279 = 32 OR t279 = 160 OR t279 = 5760 OR t279 = 8232 OR t279 = 8233 OR t279 = 8239 OR t279 = 8287 OR t279 = 12288 OR t279 = 65279 OR t279 >= 8192 AND t279 <= 8202.
              t272 = t272 + 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          IF t272 < t273.
            t274 = t270+t272(1).
            IF t274 = '-' OR t274 = '+'.
              t275 = xsdbool( t274 = '-' ).
              t272 = t272 + 1.
            ENDIF.
          ENDIF.
          WHILE t272 < t273.
            t274 = t270+t272(1).
            IF t274 CN '0123456789' OR t274 = ` `.
              EXIT.
            ENDIF.
            t278 = t274.
            IF t277 > range_parse_safe_prefix OR ( t277 = range_parse_safe_prefix AND t278 > 1 ).
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t277 = t277 * 10 + t278.
            t276 = abap_true.
            t272 = t272 + 1.
          ENDWHILE.
          IF t276 = abap_false OR ( t275 = abap_true AND t277 = 0 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          IF t275 = abap_true.
            t277 = 0 - t277.
          ENDIF.
          t269 = t277.
          t262 = t269.
        ENDIF.
        t261 = t262.
        DATA t287 TYPE REF TO zcl_lnt_issue.
        CLEAR t287.
        DATA t288 TYPE abap_bool.
        DATA t289 TYPE f.
        DATA t290 TYPE i.
        DATA t291 TYPE string.
        DATA(t292) = t234.
        t291 = t292->value.
        DATA(t293) = strlen( t291 ).
        t290 = t293.
        t289 = t290.
        DATA(t294) = t261.
        t288 = xsdbool( t289 > t294 ).
        IF t288 = abap_true.
          DATA t295 TYPE REF TO zcl_lnt_issue.
          CLEAR t295.
          DATA(t296) = VALUE string( ).
          DATA(t297) = VALUE string( ).
          DATA(t298) = VALUE abap_bool( ).
          DATA(t299) = t240.
          IF t299 IS BOUND.
            IF t299->has = abap_true.
              t298 = xsdbool( strlen( t299->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t298 = abap_true.
            DATA t300 TYPE string.
            DATA t301 TYPE string.
            DATA(t302) = |[|.
            DATA t303 TYPE string.
            DATA(t304) = t240.
            t303 = t304->value.
            DATA(t305) = strlen( t302 ).
            t301 = |{ t302 }{ t303 }|.
            DATA(t306) = |] |.
            DATA(t307) = strlen( t301 ).
            t300 = |{ t301 }{ t306 }|.
            t297 = t300.
          ELSE.
            DATA(t308) = ||.
            t297 = t308.
          ENDIF.
          t296 = t297.
          DATA t309 TYPE REF TO zcl_lnt_issue.
          CLEAR t309.
          DATA(t310) = abap_true.
          IF t310 = abap_true.
            DATA t311 TYPE REF TO zcl_lnt_issue.
            CLEAR t311.
            DATA(t312) = t232.
            DATA(t313) = CONV f( 1 ).
            DATA(t314) = VALUE string( ).
            DATA(t315) = VALUE string( ).
            DATA(t316) = VALUE string( ).
            DATA(t317) = VALUE string( ).
            DATA t318 TYPE string.
            DATA t319 TYPE string.
            DATA t320 TYPE string.
            DATA t321 TYPE string.
            DATA t322 TYPE string.
            DATA t323 TYPE string.
            DATA(t324) = ||.
            DATA(t325) = t296.
            DATA(t326) = strlen( t324 ).
            t323 = |{ t324 }{ t325 }|.
            DATA(t327) = ||.
            DATA(t328) = strlen( t323 ).
            t322 = |{ t323 }{ t327 }|.
            DATA(t329) = |DDTEXT|.
            DATA(t330) = strlen( t322 ).
            t321 = |{ t322 }{ t329 }|.
            DATA(t331) = | "|.
            DATA(t332) = strlen( t321 ).
            t320 = |{ t321 }{ t331 }|.
            DATA t333 TYPE string.
            DATA(t334) = t234.
            t333 = t334->value.
            DATA(t335) = strlen( t320 ).
            t319 = |{ t320 }{ t333 }|.
            DATA(t336) = |" exceeds maximum length of |.
            DATA(t337) = strlen( t319 ).
            t318 = |{ t319 }{ t336 }|.
            DATA(t338) = VALUE string( ).
            DATA(t339) = t261.
            IF t339 <> trunc( t339 ) OR t339 > range_safe_integer OR t339 < 0 - range_safe_integer.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            DATA(t340) = CONV int8( t339 ).
            t338 = |{ t340 }|.
            DATA(t341) = strlen( t318 ).
            t317 = |{ t318 }{ t338 }|.
            DATA(t342) = | characters (actual: |.
            DATA(t343) = strlen( t317 ).
            t316 = |{ t317 }{ t342 }|.
            DATA t344 TYPE string.
            DATA t345 TYPE i.
            DATA t346 TYPE string.
            DATA(t347) = t234.
            t346 = t347->value.
            DATA(t348) = strlen( t346 ).
            t345 = t348.
            t344 = |{ t345 }|.
            DATA(t349) = strlen( t316 ).
            t315 = |{ t316 }{ t344 }|.
            DATA(t350) = |)|.
            DATA(t351) = strlen( t315 ).
            t314 = |{ t315 }{ t350 }|.
            DATA(t352) = VALUE string( ).
            DATA t353 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t353.
            DATA t354 TYPE string.
            DATA(t355) = |xml_consistency|.
            t354 = t355.
            DATA t356 TYPE string.
            DATA(t357) = |XML consistency|.
            t356 = t357.
            DATA t358 TYPE string.
            DATA(t359) = |Checks the consistency of main XML files|.
            t358 = t359.
            DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t360.
            DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t361.
            DATA(t362) = abap_true.
            IF t362 = abap_true.
              DATA(t363) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
              t363 = t363 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
              t363 = t363 && |ce table and field values\n* Transparent TABL objects have de|.
              t363 = t363 && |livery class and size category set\n* Lock parameter names in|.
              t363 = t363 && | ENQU objects are max 16 characters\n* Texts and translations|.
              t363 = t363 && | do not exceed maximum allowed length.|.
              DATA(t364) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t364->has = abap_true.
              t364->value = t363.
              t361 = t364.
            ELSE.
              DATA t365 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t365.
              t361 = t365.
            ENDIF.
            t360 = t361.
            DATA t366 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t366.
            DATA t367 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t367.
            DATA(t368) = abap_true.
            IF t368 = abap_true.
              DATA t369 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t370 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t371 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t371.
              t370 = t371.
              DATA(t372) = t370.
              DATA(t373) = |Naming|.
              t372->load( ).
              APPEND t373 TO t372->items.
              t372->save( ).
              DATA(t374) = t370.
              DATA(t375) = |Syntax|.
              t374->load( ).
              APPEND t375 TO t374->items.
              t374->save( ).
              DATA(t376) = t370.
              t369 = t376.
              t367 = t369.
            ELSE.
              DATA t377 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t377.
              t367 = t377.
            ENDIF.
            t366 = t367.
            DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t379 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t379.
            t378 = t379.
            DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t381.
            t380 = t381.
            DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t383.
            t382 = t383.
            DATA t384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t385 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t385.
            t384 = t385.
            t353 = NEW zcl_lnt_irule_metadata( i_key = t354 i_title = t356 i_short_description = t358 i_bad_example = t378 i_good_example = t380 i_extended_information = t360 i_tags = t366 i_pragma = t382 i_pseudo_comment = t384 ).
            CREATE OBJECT t353->zlnt_view_ownkeys_b0e8086400eb.
            t353->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t386.
            IF t353->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t353->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t386 ).
            ENDIF.
            DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t387.
            IF t353->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t353->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t387 ).
            ENDIF.
            DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t388.
            IF t353->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t353->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t388 ).
            ENDIF.
            DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t389.
            IF t353->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t353->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t389 ).
            ENDIF.
            DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t390.
            IF t353->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t353->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t390 ).
            ENDIF.
            CREATE OBJECT t353->zlnt_json_ownkeys_70e5fd461788.
            t353->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t391) = |key|.
            DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t392.
            IF t353->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t353->zlnt_json_ownkeys_70e5fd461788->put( p0 = t391 p1 = t392 ).
            ENDIF.
            DATA(t393) = |title|.
            DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t394.
            IF t353->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t353->zlnt_json_ownkeys_70e5fd461788->put( p0 = t393 p1 = t394 ).
            ENDIF.
            DATA(t395) = |shortDescription|.
            DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t396.
            IF t353->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t353->zlnt_json_ownkeys_70e5fd461788->put( p0 = t395 p1 = t396 ).
            ENDIF.
            DATA(t397) = |extendedInformation|.
            DATA t398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t398.
            IF t353->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t353->zlnt_json_ownkeys_70e5fd461788->put( p0 = t397 p1 = t398 ).
            ENDIF.
            DATA(t399) = |tags|.
            DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t400.
            IF t353->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t353->zlnt_json_ownkeys_70e5fd461788->put( p0 = t399 p1 = t400 ).
            ENDIF.
            t352 = t353->key.
            DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t402) = me->conf.
            t401 = t402->zlnt_view_read_sr_b4bcf11cce6c( ).
            t311 = zcl_lnt_issue=>at_row( i_file = t312 i_row = t313 i_message_26cb = t314 i_key = t352 i_severity = t401 ).
            t309 = t311.
          ELSE.
            DATA t403 TYPE REF TO zcl_lnt_issue.
            CLEAR t403.
            t309 = t403.
          ENDIF.
          t295 = t309.
          t287 = t295.
        ELSE.
          DATA t404 TYPE REF TO zcl_lnt_issue.
          CLEAR t404.
          t287 = t404.
        ENDIF.
        t260 = t287.
        t243 = t260.
      ENDIF.
      t231 = t243.
      t230 = t231.
      DATA t405 TYPE abap_bool.
      DATA(t406) = t230.
      t405 = xsdbool( t406 IS BOUND ).
      IF t405 = abap_true.
        DATA(t407) = t228.
        DATA t408 TYPE REF TO zcl_lnt_issue.
        DATA(t409) = t230.
        t408 = t409.
        t407->load( ).
        APPEND t408 TO t407->items.
        t407->save( ).
      ENDIF.
    ENDDO.
    DATA t410 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t410.
    DATA t411 TYPE REF TO zcl_lnt_domain.
    DATA(t412) = t1.
    t411 = t412.
    DATA t413 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t413.
    DATA t414 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t414.
    DATA t415 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t415.
    DATA t416 TYPE REF TO zcl_lnt_shape_b346f020.
    DATA t417 TYPE REF TO zcl_lnt_shape_b346f020.
    DATA(t418) = t411.
    t417 = t418->parsed_xml.
    t416 = t417.
    DATA t419 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t419.
    DATA(t420) = VALUE abap_bool( ).
    DATA(t421) = t416.
    IF t421 IS INITIAL.
      t420 = abap_true.
    ENDIF.
    IF t420 = abap_true.
      DATA t422 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t422.
      t419 = t422.
    ELSE.
      DATA t423 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t424 TYPE REF TO zcl_lnt_shape_b346f020.
      DATA(t425) = t416.
      t424 = t425.
      t423 = t424->values_translations.
      t419 = t423.
    ENDIF.
    t415 = t419.
    t414 = t415.
    DATA t426 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t426.
    DATA(t427) = VALUE abap_bool( ).
    DATA(t428) = t414.
    IF t428 IS INITIAL.
      t427 = abap_true.
    ENDIF.
    IF t427 = abap_true.
      DATA t429 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t429.
      t426 = t429.
    ELSE.
      DATA t430 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t431) = t414.
      t430 = t431.
      t426 = t430.
    ENDIF.
    t413 = t426.
    t410 = t413.
    DATA t432 TYPE REF TO zcl_lnt_dmn_vl_trnsltn.
    CLEAR t432.
    DATA t433 TYPE REF TO object.
    CLEAR t433.
    DATA(t434) = VALUE i( ).
    DO.
      t410->load( ).
      IF t434 >= lines( t410->items ).
        EXIT.
      ENDIF.
      CLEAR t433.
      READ TABLE t410->items INDEX t434 + 1 INTO t433.
      t434 = t434 + 1.
      DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t435.
      CLEAR t432.
      IF t433 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t435 ?= t433.
        DATA t436 TYPE REF TO object.
        t436 = t435->as_ref( ).
        t432 ?= t436.
      ELSE.
        t432 ?= t433.
      ENDIF.
      DATA t437 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t438) = t5.
      t437 = t438.
      DATA t439 TYPE REF TO zcl_lnt_issue.
      CLEAR t439.
      DATA t440 TYPE REF TO zcl_lnt_issue.
      CLEAR t440.
      DATA t441 TYPE REF TO zif_lnt_file.
      DATA(t442) = t2.
      t441 = t442.
      DATA t443 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t444 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t445) = t432.
      t444 = t445->description.
      t443 = t444.
      DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t447.
      DATA(t448) = t3.
      CLEAR t447.
      CREATE OBJECT t447.
      t447->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t447->nval = t448.
      t446 = t447.
      DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t450 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t451) = t432.
      t450 = t451->language.
      t449 = t450.
      DATA t452 TYPE REF TO zcl_lnt_issue.
      CLEAR t452.
      DATA(t453) = VALUE abap_bool( ).
      DATA(t454) = VALUE abap_bool( ).
      DATA t455 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t456) = t443.
      t455 = t456.
      DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t458.
      t457 = t458.
      DATA(t459) = VALUE abap_bool( ).
      DATA(t460) = t455.
      IF t460 IS INITIAL.
        t459 = abap_true.
      ELSEIF t460->has = abap_false.
        t459 = abap_true.
      ENDIF.
      t454 = t459.
      t453 = t454.
      IF t454 = abap_false.
        DATA(t461) = VALUE abap_bool( ).
        DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t463) = t446.
        t462 = t463.
        DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t465.
        t464 = t465.
        DATA(t466) = VALUE abap_bool( ).
        DATA(t467) = t462.
        IF t467 IS INITIAL.
          t466 = abap_true.
        ENDIF.
        t461 = t466.
        t453 = t461.
      ENDIF.
      IF t453 = abap_true.
        DATA t468 TYPE REF TO zcl_lnt_issue.
        CLEAR t468.
        t452 = t468.
      ELSE.
        DATA t469 TYPE REF TO zcl_lnt_issue.
        CLEAR t469.
        DATA(t470) = VALUE f( ).
        DATA(t471) = VALUE f( ).
        DATA(t472) = VALUE abap_bool( ).
        DATA(t473) = VALUE string( ).
        DATA(t474) = t446.
        IF t474 IS BOUND.
          t473 = t474->type_of( ).
          IF t474->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t474->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t473 = `function`.
          ENDIF.
        ELSE.
          t473 = `undefined`.
        ENDIF.
        DATA(t475) = |number|.
        t472 = xsdbool( t473 = t475 ).
        IF t472 = abap_true.
          DATA t476 TYPE f.
          DATA(t477) = t446.
          t476 = t477->as_number( ).
          t471 = t476.
        ELSE.
          DATA(t478) = VALUE f( ).
          DATA t479 TYPE string.
          DATA(t480) = t446.
          t479 = t480->as_string( ).
          DATA t481 TYPE i.
          DATA t482 TYPE i.
          DATA(t483) = VALUE string( ).
          DATA t484 TYPE abap_bool.
          DATA t485 TYPE abap_bool.
          DATA t486 TYPE int8.
          DATA(t487) = VALUE i( ).
          t481 = 0.
          t486 = 0.
          t484 = abap_false.
          t485 = abap_false.
          t482 = strlen( t479 ).
          DATA(t488) = VALUE i( ).
          DATA(t489) = VALUE i( ).
          DATA(t490) = VALUE string( ).
          WHILE t481 < t482.
            t489 = t481.
            t490 = t479+t489(1).
            DATA t491 TYPE c LENGTH 1.
            CLEAR t491.
            DATA(t492) = VALUE xstring( ).
            DATA t493 TYPE x LENGTH 1.
            CLEAR t493.
            DATA t494 TYPE x LENGTH 1.
            CLEAR t494.
            DATA(t495) = VALUE i( ).
            t491 = t490.
            t488 = cl_abap_conv_out_ce=>uccpi( t491 ).
            IF t488 >= 255.
              IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
                zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t490 IMPORTING buffer = t492 ).
              t493 = t492(1).
              t494 = t492+1(1).
              t488 = t493.
              t495 = t494.
              t488 = t488 + t495 * 256.
            ENDIF.
            IF t488 = 9 OR t488 = 10 OR t488 = 11 OR t488 = 12 OR t488 = 13 OR t488 = 32 OR t488 = 160 OR t488 = 5760 OR t488 = 8232 OR t488 = 8233 OR t488 = 8239 OR t488 = 8287 OR t488 = 12288 OR t488 = 65279 OR t488 >= 8192 AND t488 <= 8202.
              t481 = t481 + 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          IF t481 < t482.
            t483 = t479+t481(1).
            IF t483 = '-' OR t483 = '+'.
              t484 = xsdbool( t483 = '-' ).
              t481 = t481 + 1.
            ENDIF.
          ENDIF.
          WHILE t481 < t482.
            t483 = t479+t481(1).
            IF t483 CN '0123456789' OR t483 = ` `.
              EXIT.
            ENDIF.
            t487 = t483.
            IF t486 > range_parse_safe_prefix OR ( t486 = range_parse_safe_prefix AND t487 > 1 ).
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t486 = t486 * 10 + t487.
            t485 = abap_true.
            t481 = t481 + 1.
          ENDWHILE.
          IF t485 = abap_false OR ( t484 = abap_true AND t486 = 0 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          IF t484 = abap_true.
            t486 = 0 - t486.
          ENDIF.
          t478 = t486.
          t471 = t478.
        ENDIF.
        t470 = t471.
        DATA t496 TYPE REF TO zcl_lnt_issue.
        CLEAR t496.
        DATA t497 TYPE abap_bool.
        DATA t498 TYPE f.
        DATA t499 TYPE i.
        DATA t500 TYPE string.
        DATA(t501) = t443.
        t500 = t501->value.
        DATA(t502) = strlen( t500 ).
        t499 = t502.
        t498 = t499.
        DATA(t503) = t470.
        t497 = xsdbool( t498 > t503 ).
        IF t497 = abap_true.
          DATA t504 TYPE REF TO zcl_lnt_issue.
          CLEAR t504.
          DATA(t505) = VALUE string( ).
          DATA(t506) = VALUE string( ).
          DATA(t507) = VALUE abap_bool( ).
          DATA(t508) = t449.
          IF t508 IS BOUND.
            IF t508->has = abap_true.
              t507 = xsdbool( strlen( t508->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t507 = abap_true.
            DATA t509 TYPE string.
            DATA t510 TYPE string.
            DATA(t511) = |[|.
            DATA t512 TYPE string.
            DATA(t513) = t449.
            t512 = t513->value.
            DATA(t514) = strlen( t511 ).
            t510 = |{ t511 }{ t512 }|.
            DATA(t515) = |] |.
            DATA(t516) = strlen( t510 ).
            t509 = |{ t510 }{ t515 }|.
            t506 = t509.
          ELSE.
            DATA(t517) = ||.
            t506 = t517.
          ENDIF.
          t505 = t506.
          DATA t518 TYPE REF TO zcl_lnt_issue.
          CLEAR t518.
          DATA(t519) = abap_true.
          IF t519 = abap_true.
            DATA t520 TYPE REF TO zcl_lnt_issue.
            CLEAR t520.
            DATA(t521) = t441.
            DATA(t522) = CONV f( 1 ).
            DATA(t523) = VALUE string( ).
            DATA(t524) = VALUE string( ).
            DATA(t525) = VALUE string( ).
            DATA(t526) = VALUE string( ).
            DATA t527 TYPE string.
            DATA t528 TYPE string.
            DATA t529 TYPE string.
            DATA t530 TYPE string.
            DATA t531 TYPE string.
            DATA t532 TYPE string.
            DATA(t533) = ||.
            DATA(t534) = t505.
            DATA(t535) = strlen( t533 ).
            t532 = |{ t533 }{ t534 }|.
            DATA(t536) = ||.
            DATA(t537) = strlen( t532 ).
            t531 = |{ t532 }{ t536 }|.
            DATA(t538) = |DDTEXT|.
            DATA(t539) = strlen( t531 ).
            t530 = |{ t531 }{ t538 }|.
            DATA(t540) = | "|.
            DATA(t541) = strlen( t530 ).
            t529 = |{ t530 }{ t540 }|.
            DATA t542 TYPE string.
            DATA(t543) = t443.
            t542 = t543->value.
            DATA(t544) = strlen( t529 ).
            t528 = |{ t529 }{ t542 }|.
            DATA(t545) = |" exceeds maximum length of |.
            DATA(t546) = strlen( t528 ).
            t527 = |{ t528 }{ t545 }|.
            DATA(t547) = VALUE string( ).
            DATA(t548) = t470.
            IF t548 <> trunc( t548 ) OR t548 > range_safe_integer OR t548 < 0 - range_safe_integer.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            DATA(t549) = CONV int8( t548 ).
            t547 = |{ t549 }|.
            DATA(t550) = strlen( t527 ).
            t526 = |{ t527 }{ t547 }|.
            DATA(t551) = | characters (actual: |.
            DATA(t552) = strlen( t526 ).
            t525 = |{ t526 }{ t551 }|.
            DATA t553 TYPE string.
            DATA t554 TYPE i.
            DATA t555 TYPE string.
            DATA(t556) = t443.
            t555 = t556->value.
            DATA(t557) = strlen( t555 ).
            t554 = t557.
            t553 = |{ t554 }|.
            DATA(t558) = strlen( t525 ).
            t524 = |{ t525 }{ t553 }|.
            DATA(t559) = |)|.
            DATA(t560) = strlen( t524 ).
            t523 = |{ t524 }{ t559 }|.
            DATA(t561) = VALUE string( ).
            DATA t562 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t562.
            DATA t563 TYPE string.
            DATA(t564) = |xml_consistency|.
            t563 = t564.
            DATA t565 TYPE string.
            DATA(t566) = |XML consistency|.
            t565 = t566.
            DATA t567 TYPE string.
            DATA(t568) = |Checks the consistency of main XML files|.
            t567 = t568.
            DATA t569 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t569.
            DATA t570 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t570.
            DATA(t571) = abap_true.
            IF t571 = abap_true.
              DATA(t572) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
              t572 = t572 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
              t572 = t572 && |ce table and field values\n* Transparent TABL objects have de|.
              t572 = t572 && |livery class and size category set\n* Lock parameter names in|.
              t572 = t572 && | ENQU objects are max 16 characters\n* Texts and translations|.
              t572 = t572 && | do not exceed maximum allowed length.|.
              DATA(t573) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t573->has = abap_true.
              t573->value = t572.
              t570 = t573.
            ELSE.
              DATA t574 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t574.
              t570 = t574.
            ENDIF.
            t569 = t570.
            DATA t575 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t575.
            DATA t576 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t576.
            DATA(t577) = abap_true.
            IF t577 = abap_true.
              DATA t578 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t579 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t580 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t580.
              t579 = t580.
              DATA(t581) = t579.
              DATA(t582) = |Naming|.
              t581->load( ).
              APPEND t582 TO t581->items.
              t581->save( ).
              DATA(t583) = t579.
              DATA(t584) = |Syntax|.
              t583->load( ).
              APPEND t584 TO t583->items.
              t583->save( ).
              DATA(t585) = t579.
              t578 = t585.
              t576 = t578.
            ELSE.
              DATA t586 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t586.
              t576 = t586.
            ENDIF.
            t575 = t576.
            DATA t587 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t588 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t588.
            t587 = t588.
            DATA t589 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t590 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t590.
            t589 = t590.
            DATA t591 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t592 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t592.
            t591 = t592.
            DATA t593 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t594.
            t593 = t594.
            t562 = NEW zcl_lnt_irule_metadata( i_key = t563 i_title = t565 i_short_description = t567 i_bad_example = t587 i_good_example = t589 i_extended_information = t569 i_tags = t575 i_pragma = t591 i_pseudo_comment = t593 ).
            CREATE OBJECT t562->zlnt_view_ownkeys_b0e8086400eb.
            t562->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t595.
            IF t562->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t562->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t595 ).
            ENDIF.
            DATA t596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t596.
            IF t562->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t562->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t596 ).
            ENDIF.
            DATA t597 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t597.
            IF t562->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t562->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t597 ).
            ENDIF.
            DATA t598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t598.
            IF t562->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t562->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t598 ).
            ENDIF.
            DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t599.
            IF t562->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t562->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t599 ).
            ENDIF.
            CREATE OBJECT t562->zlnt_json_ownkeys_70e5fd461788.
            t562->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t600) = |key|.
            DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t601.
            IF t562->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t562->zlnt_json_ownkeys_70e5fd461788->put( p0 = t600 p1 = t601 ).
            ENDIF.
            DATA(t602) = |title|.
            DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t603.
            IF t562->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t562->zlnt_json_ownkeys_70e5fd461788->put( p0 = t602 p1 = t603 ).
            ENDIF.
            DATA(t604) = |shortDescription|.
            DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t605.
            IF t562->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t562->zlnt_json_ownkeys_70e5fd461788->put( p0 = t604 p1 = t605 ).
            ENDIF.
            DATA(t606) = |extendedInformation|.
            DATA t607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t607.
            IF t562->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t562->zlnt_json_ownkeys_70e5fd461788->put( p0 = t606 p1 = t607 ).
            ENDIF.
            DATA(t608) = |tags|.
            DATA t609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t609.
            IF t562->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t562->zlnt_json_ownkeys_70e5fd461788->put( p0 = t608 p1 = t609 ).
            ENDIF.
            t561 = t562->key.
            DATA t610 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t611) = me->conf.
            t610 = t611->zlnt_view_read_sr_b4bcf11cce6c( ).
            t520 = zcl_lnt_issue=>at_row( i_file = t521 i_row = t522 i_message_26cb = t523 i_key = t561 i_severity = t610 ).
            t518 = t520.
          ELSE.
            DATA t612 TYPE REF TO zcl_lnt_issue.
            CLEAR t612.
            t518 = t612.
          ENDIF.
          t504 = t518.
          t496 = t504.
        ELSE.
          DATA t613 TYPE REF TO zcl_lnt_issue.
          CLEAR t613.
          t496 = t613.
        ENDIF.
        t469 = t496.
        t452 = t469.
      ENDIF.
      t440 = t452.
      t439 = t440.
      DATA t614 TYPE abap_bool.
      DATA(t615) = t439.
      t614 = xsdbool( t615 IS BOUND ).
      IF t614 = abap_true.
        DATA(t616) = t437.
        DATA t617 TYPE REF TO zcl_lnt_issue.
        DATA(t618) = t439.
        t617 = t618.
        t616->load( ).
        APPEND t617 TO t616->items.
        t616->save( ).
      ENDIF.
    ENDDO.
    DATA(t619) = t5.
    result = t619.

  ENDMETHOD.

  METHOD run_transaction.
    CONSTANTS range_parse_safe_prefix TYPE int8 VALUE '900719925474099'.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_file.
    DATA t3 TYPE i.
    DATA(t4) = 36.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8.
    DATA t9 TYPE REF TO zcl_lnt_issue.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_issue.
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_file.
    DATA(t12) = t2.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t14.
    DATA t15 TYPE REF TO zcl_lnt_transaction.
    DATA(t16) = t1.
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t19) = t15.
    t18 = t19->prs_inst_src_objc_trns_ts_trns( ).
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_shape_c5606a32.
    DATA t22 TYPE REF TO zcl_lnt_shape_c5606a32.
    DATA(t23) = t15.
    t22 = t23->parsed_xml.
    t21 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = t21.
    IF t26 IS INITIAL.
      t25 = abap_true.
    ENDIF.
    IF t25 = abap_true.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t24 = t27.
    ELSE.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t29 TYPE REF TO zcl_lnt_shape_c5606a32.
      DATA(t30) = t21.
      t29 = t30.
      t28 = t29->description.
      t24 = t28.
    ENDIF.
    t20 = t24.
    t17 = t20.
    t14 = t17.
    t13 = t14.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = t3.
    CLEAR t32.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t32->nval = t33.
    t31 = t32.
    DATA t34 TYPE REF TO zcl_lnt_issue.
    CLEAR t34.
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = VALUE abap_bool( ).
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t38) = t13.
    t37 = t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    t39 = t40.
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = t37.
    IF t42 IS INITIAL.
      t41 = abap_true.
    ELSEIF t42->has = abap_false.
      t41 = abap_true.
    ENDIF.
    t36 = t41.
    t35 = t36.
    IF t36 = abap_false.
      DATA(t43) = VALUE abap_bool( ).
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t45) = t31.
      t44 = t45.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      t46 = t47.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = t44.
      IF t49 IS INITIAL.
        t48 = abap_true.
      ENDIF.
      t43 = t48.
      t35 = t43.
    ENDIF.
    IF t35 = abap_true.
      DATA t50 TYPE REF TO zcl_lnt_issue.
      CLEAR t50.
      t34 = t50.
    ELSE.
      DATA t51 TYPE REF TO zcl_lnt_issue.
      CLEAR t51.
      DATA(t52) = VALUE f( ).
      DATA(t53) = VALUE f( ).
      DATA(t54) = VALUE abap_bool( ).
      DATA(t55) = VALUE string( ).
      DATA(t56) = t31.
      IF t56 IS BOUND.
        t55 = t56->type_of( ).
        IF t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t56->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t55 = `function`.
        ENDIF.
      ELSE.
        t55 = `undefined`.
      ENDIF.
      DATA(t57) = |number|.
      t54 = xsdbool( t55 = t57 ).
      IF t54 = abap_true.
        DATA t58 TYPE f.
        DATA(t59) = t31.
        t58 = t59->as_number( ).
        t53 = t58.
      ELSE.
        DATA(t60) = VALUE f( ).
        DATA t61 TYPE string.
        DATA(t62) = t31.
        t61 = t62->as_string( ).
        DATA t63 TYPE i.
        DATA t64 TYPE i.
        DATA(t65) = VALUE string( ).
        DATA t66 TYPE abap_bool.
        DATA t67 TYPE abap_bool.
        DATA t68 TYPE int8.
        DATA(t69) = VALUE i( ).
        t63 = 0.
        t68 = 0.
        t66 = abap_false.
        t67 = abap_false.
        t64 = strlen( t61 ).
        DATA(t70) = VALUE i( ).
        DATA(t71) = VALUE i( ).
        DATA(t72) = VALUE string( ).
        WHILE t63 < t64.
          t71 = t63.
          t72 = t61+t71(1).
          DATA t73 TYPE c LENGTH 1.
          CLEAR t73.
          DATA(t74) = VALUE xstring( ).
          DATA t75 TYPE x LENGTH 1.
          CLEAR t75.
          DATA t76 TYPE x LENGTH 1.
          CLEAR t76.
          DATA(t77) = VALUE i( ).
          t73 = t72.
          t70 = cl_abap_conv_out_ce=>uccpi( t73 ).
          IF t70 >= 255.
            IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
              zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t72 IMPORTING buffer = t74 ).
            t75 = t74(1).
            t76 = t74+1(1).
            t70 = t75.
            t77 = t76.
            t70 = t70 + t77 * 256.
          ENDIF.
          IF t70 = 9 OR t70 = 10 OR t70 = 11 OR t70 = 12 OR t70 = 13 OR t70 = 32 OR t70 = 160 OR t70 = 5760 OR t70 = 8232 OR t70 = 8233 OR t70 = 8239 OR t70 = 8287 OR t70 = 12288 OR t70 = 65279 OR t70 >= 8192 AND t70 <= 8202.
            t63 = t63 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t63 < t64.
          t65 = t61+t63(1).
          IF t65 = '-' OR t65 = '+'.
            t66 = xsdbool( t65 = '-' ).
            t63 = t63 + 1.
          ENDIF.
        ENDIF.
        WHILE t63 < t64.
          t65 = t61+t63(1).
          IF t65 CN '0123456789' OR t65 = ` `.
            EXIT.
          ENDIF.
          t69 = t65.
          IF t68 > range_parse_safe_prefix OR ( t68 = range_parse_safe_prefix AND t69 > 1 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t68 = t68 * 10 + t69.
          t67 = abap_true.
          t63 = t63 + 1.
        ENDWHILE.
        IF t67 = abap_false OR ( t66 = abap_true AND t68 = 0 ).
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        IF t66 = abap_true.
          t68 = 0 - t68.
        ENDIF.
        t60 = t68.
        t53 = t60.
      ENDIF.
      t52 = t53.
      DATA t78 TYPE REF TO zcl_lnt_issue.
      CLEAR t78.
      DATA t79 TYPE abap_bool.
      DATA t80 TYPE f.
      DATA t81 TYPE i.
      DATA t82 TYPE string.
      DATA(t83) = t13.
      t82 = t83->value.
      DATA(t84) = strlen( t82 ).
      t81 = t84.
      t80 = t81.
      DATA(t85) = t52.
      t79 = xsdbool( t80 > t85 ).
      IF t79 = abap_true.
        DATA t86 TYPE REF TO zcl_lnt_issue.
        CLEAR t86.
        DATA(t87) = VALUE string( ).
        DATA(t88) = VALUE string( ).
        DATA(t89) = VALUE abap_bool( ).
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        IF t90 IS BOUND.
          IF t90->has = abap_true.
            t89 = xsdbool( strlen( t90->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t89 = abap_true.
          DATA t91 TYPE string.
          DATA t92 TYPE string.
          DATA(t93) = |[|.
          DATA t94 TYPE string.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          t94 = t95->value.
          DATA(t96) = strlen( t93 ).
          t92 = |{ t93 }{ t94 }|.
          DATA(t97) = |] |.
          DATA(t98) = strlen( t92 ).
          t91 = |{ t92 }{ t97 }|.
          t88 = t91.
        ELSE.
          DATA(t99) = ||.
          t88 = t99.
        ENDIF.
        t87 = t88.
        DATA t100 TYPE REF TO zcl_lnt_issue.
        CLEAR t100.
        DATA(t101) = abap_true.
        IF t101 = abap_true.
          DATA t102 TYPE REF TO zcl_lnt_issue.
          CLEAR t102.
          DATA(t103) = t11.
          DATA(t104) = CONV f( 1 ).
          DATA(t105) = VALUE string( ).
          DATA(t106) = VALUE string( ).
          DATA(t107) = VALUE string( ).
          DATA(t108) = VALUE string( ).
          DATA t109 TYPE string.
          DATA t110 TYPE string.
          DATA t111 TYPE string.
          DATA t112 TYPE string.
          DATA t113 TYPE string.
          DATA t114 TYPE string.
          DATA(t115) = ||.
          DATA(t116) = t87.
          DATA(t117) = strlen( t115 ).
          t114 = |{ t115 }{ t116 }|.
          DATA(t118) = ||.
          DATA(t119) = strlen( t114 ).
          t113 = |{ t114 }{ t118 }|.
          DATA(t120) = |TTEXT|.
          DATA(t121) = strlen( t113 ).
          t112 = |{ t113 }{ t120 }|.
          DATA(t122) = | "|.
          DATA(t123) = strlen( t112 ).
          t111 = |{ t112 }{ t122 }|.
          DATA t124 TYPE string.
          DATA(t125) = t13.
          t124 = t125->value.
          DATA(t126) = strlen( t111 ).
          t110 = |{ t111 }{ t124 }|.
          DATA(t127) = |" exceeds maximum length of |.
          DATA(t128) = strlen( t110 ).
          t109 = |{ t110 }{ t127 }|.
          DATA(t129) = VALUE string( ).
          DATA(t130) = t52.
          IF t130 <> trunc( t130 ) OR t130 > range_safe_integer OR t130 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t131) = CONV int8( t130 ).
          t129 = |{ t131 }|.
          DATA(t132) = strlen( t109 ).
          t108 = |{ t109 }{ t129 }|.
          DATA(t133) = | characters (actual: |.
          DATA(t134) = strlen( t108 ).
          t107 = |{ t108 }{ t133 }|.
          DATA t135 TYPE string.
          DATA t136 TYPE i.
          DATA t137 TYPE string.
          DATA(t138) = t13.
          t137 = t138->value.
          DATA(t139) = strlen( t137 ).
          t136 = t139.
          t135 = |{ t136 }|.
          DATA(t140) = strlen( t107 ).
          t106 = |{ t107 }{ t135 }|.
          DATA(t141) = |)|.
          DATA(t142) = strlen( t106 ).
          t105 = |{ t106 }{ t141 }|.
          DATA(t143) = VALUE string( ).
          DATA t144 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t144.
          DATA t145 TYPE string.
          DATA(t146) = |xml_consistency|.
          t145 = t146.
          DATA t147 TYPE string.
          DATA(t148) = |XML consistency|.
          t147 = t148.
          DATA t149 TYPE string.
          DATA(t150) = |Checks the consistency of main XML files|.
          t149 = t150.
          DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t151.
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t152.
          DATA(t153) = abap_true.
          IF t153 = abap_true.
            DATA(t154) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
            t154 = t154 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
            t154 = t154 && |ce table and field values\n* Transparent TABL objects have de|.
            t154 = t154 && |livery class and size category set\n* Lock parameter names in|.
            t154 = t154 && | ENQU objects are max 16 characters\n* Texts and translations|.
            t154 = t154 && | do not exceed maximum allowed length.|.
            DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t155->has = abap_true.
            t155->value = t154.
            t152 = t155.
          ELSE.
            DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t156.
            t152 = t156.
          ENDIF.
          t151 = t152.
          DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t157.
          DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t158.
          DATA(t159) = abap_true.
          IF t159 = abap_true.
            DATA t160 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t161 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t162 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t162.
            t161 = t162.
            DATA(t163) = t161.
            DATA(t164) = |Naming|.
            t163->load( ).
            APPEND t164 TO t163->items.
            t163->save( ).
            DATA(t165) = t161.
            DATA(t166) = |Syntax|.
            t165->load( ).
            APPEND t166 TO t165->items.
            t165->save( ).
            DATA(t167) = t161.
            t160 = t167.
            t158 = t160.
          ELSE.
            DATA t168 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t168.
            t158 = t168.
          ENDIF.
          t157 = t158.
          DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t170.
          t169 = t170.
          DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t172.
          t171 = t172.
          DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t174.
          t173 = t174.
          DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t176.
          t175 = t176.
          t144 = NEW zcl_lnt_irule_metadata( i_key = t145 i_title = t147 i_short_description = t149 i_bad_example = t169 i_good_example = t171 i_extended_information = t151 i_tags = t157 i_pragma = t173 i_pseudo_comment = t175 ).
          CREATE OBJECT t144->zlnt_view_ownkeys_b0e8086400eb.
          t144->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t177.
          IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t177 ).
          ENDIF.
          DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t178.
          IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t178 ).
          ENDIF.
          DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t179.
          IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t179 ).
          ENDIF.
          DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t180.
          IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t180 ).
          ENDIF.
          DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t181.
          IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t181 ).
          ENDIF.
          CREATE OBJECT t144->zlnt_json_ownkeys_70e5fd461788.
          t144->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t182) = |key|.
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t183.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t182 p1 = t183 ).
          ENDIF.
          DATA(t184) = |title|.
          DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t185.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t184 p1 = t185 ).
          ENDIF.
          DATA(t186) = |shortDescription|.
          DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t187.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t186 p1 = t187 ).
          ENDIF.
          DATA(t188) = |extendedInformation|.
          DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t189.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t188 p1 = t189 ).
          ENDIF.
          DATA(t190) = |tags|.
          DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t191.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t190 p1 = t191 ).
          ENDIF.
          t143 = t144->key.
          DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t193) = me->conf.
          t192 = t193->zlnt_view_read_sr_b4bcf11cce6c( ).
          t102 = zcl_lnt_issue=>at_row( i_file = t103 i_row = t104 i_message_26cb = t105 i_key = t143 i_severity = t192 ).
          t100 = t102.
        ELSE.
          DATA t194 TYPE REF TO zcl_lnt_issue.
          CLEAR t194.
          t100 = t194.
        ENDIF.
        t86 = t100.
        t78 = t86.
      ELSE.
        DATA t195 TYPE REF TO zcl_lnt_issue.
        CLEAR t195.
        t78 = t195.
      ENDIF.
      t51 = t78.
      t34 = t51.
    ENDIF.
    t10 = t34.
    t9 = t10.
    DATA t196 TYPE abap_bool.
    DATA(t197) = t9.
    t196 = xsdbool( t197 IS BOUND ).
    IF t196 = abap_true.
      DATA(t198) = t7.
      DATA t199 TYPE REF TO zcl_lnt_issue.
      DATA(t200) = t9.
      t199 = t200.
      t198->load( ).
      APPEND t199 TO t198->items.
      t198->save( ).
    ENDIF.
    DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t201.
    DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t203.
    DATA t204 TYPE REF TO zcl_lnt_transaction.
    DATA(t205) = t1.
    t204 = t205.
    DATA t206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t206.
    DATA t207 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t208) = t204.
    t207 = t208->prs_inst_src_objc_trns_ts_trns( ).
    DATA t209 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t209.
    DATA t210 TYPE REF TO zcl_lnt_shape_c5606a32.
    DATA t211 TYPE REF TO zcl_lnt_shape_c5606a32.
    DATA(t212) = t204.
    t211 = t212->parsed_xml.
    t210 = t211.
    DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t213.
    DATA(t214) = VALUE abap_bool( ).
    DATA(t215) = t210.
    IF t215 IS INITIAL.
      t214 = abap_true.
    ENDIF.
    IF t214 = abap_true.
      DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t216.
      t213 = t216.
    ELSE.
      DATA t217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t218 TYPE REF TO zcl_lnt_shape_c5606a32.
      DATA(t219) = t210.
      t218 = t219.
      t217 = t218->texts_translations.
      t213 = t217.
    ENDIF.
    t209 = t213.
    t206 = t209.
    t203 = t206.
    t202 = t203.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t220.
    DATA(t221) = VALUE abap_bool( ).
    DATA(t222) = t202.
    IF t222 IS INITIAL.
      t221 = abap_true.
    ENDIF.
    IF t221 = abap_true.
      DATA t223 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t223.
      t220 = t223.
    ELSE.
      DATA t224 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t225) = t202.
      t224 = t225.
      t220 = t224.
    ENDIF.
    t201 = t220.
    DATA t226 TYPE REF TO zcl_lnt_dmn_vl_trnsltn.
    CLEAR t226.
    DATA t227 TYPE REF TO object.
    CLEAR t227.
    DATA(t228) = VALUE i( ).
    DO.
      t201->load( ).
      IF t228 >= lines( t201->items ).
        EXIT.
      ENDIF.
      CLEAR t227.
      READ TABLE t201->items INDEX t228 + 1 INTO t227.
      t228 = t228 + 1.
      DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t229.
      CLEAR t226.
      IF t227 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t229 ?= t227.
        DATA t230 TYPE REF TO object.
        t230 = t229->as_ref( ).
        t226 ?= t230.
      ELSE.
        t226 ?= t227.
      ENDIF.
      DATA t231 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t232) = t5.
      t231 = t232.
      DATA t233 TYPE REF TO zcl_lnt_issue.
      CLEAR t233.
      DATA t234 TYPE REF TO zcl_lnt_issue.
      CLEAR t234.
      DATA t235 TYPE REF TO zif_lnt_file.
      DATA(t236) = t2.
      t235 = t236.
      DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t239) = t226.
      t238 = t239->description.
      t237 = t238.
      DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t241.
      DATA(t242) = t3.
      CLEAR t241.
      CREATE OBJECT t241.
      t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t241->nval = t242.
      t240 = t241.
      DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t245) = t226.
      t244 = t245->language.
      t243 = t244.
      DATA t246 TYPE REF TO zcl_lnt_issue.
      CLEAR t246.
      DATA(t247) = VALUE abap_bool( ).
      DATA(t248) = VALUE abap_bool( ).
      DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t250) = t237.
      t249 = t250.
      DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t252.
      t251 = t252.
      DATA(t253) = VALUE abap_bool( ).
      DATA(t254) = t249.
      IF t254 IS INITIAL.
        t253 = abap_true.
      ELSEIF t254->has = abap_false.
        t253 = abap_true.
      ENDIF.
      t248 = t253.
      t247 = t248.
      IF t248 = abap_false.
        DATA(t255) = VALUE abap_bool( ).
        DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t257) = t240.
        t256 = t257.
        DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t259.
        t258 = t259.
        DATA(t260) = VALUE abap_bool( ).
        DATA(t261) = t256.
        IF t261 IS INITIAL.
          t260 = abap_true.
        ENDIF.
        t255 = t260.
        t247 = t255.
      ENDIF.
      IF t247 = abap_true.
        DATA t262 TYPE REF TO zcl_lnt_issue.
        CLEAR t262.
        t246 = t262.
      ELSE.
        DATA t263 TYPE REF TO zcl_lnt_issue.
        CLEAR t263.
        DATA(t264) = VALUE f( ).
        DATA(t265) = VALUE f( ).
        DATA(t266) = VALUE abap_bool( ).
        DATA(t267) = VALUE string( ).
        DATA(t268) = t240.
        IF t268 IS BOUND.
          t267 = t268->type_of( ).
          IF t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t268->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t267 = `function`.
          ENDIF.
        ELSE.
          t267 = `undefined`.
        ENDIF.
        DATA(t269) = |number|.
        t266 = xsdbool( t267 = t269 ).
        IF t266 = abap_true.
          DATA t270 TYPE f.
          DATA(t271) = t240.
          t270 = t271->as_number( ).
          t265 = t270.
        ELSE.
          DATA(t272) = VALUE f( ).
          DATA t273 TYPE string.
          DATA(t274) = t240.
          t273 = t274->as_string( ).
          DATA t275 TYPE i.
          DATA t276 TYPE i.
          DATA(t277) = VALUE string( ).
          DATA t278 TYPE abap_bool.
          DATA t279 TYPE abap_bool.
          DATA t280 TYPE int8.
          DATA(t281) = VALUE i( ).
          t275 = 0.
          t280 = 0.
          t278 = abap_false.
          t279 = abap_false.
          t276 = strlen( t273 ).
          DATA(t282) = VALUE i( ).
          DATA(t283) = VALUE i( ).
          DATA(t284) = VALUE string( ).
          WHILE t275 < t276.
            t283 = t275.
            t284 = t273+t283(1).
            DATA t285 TYPE c LENGTH 1.
            CLEAR t285.
            DATA(t286) = VALUE xstring( ).
            DATA t287 TYPE x LENGTH 1.
            CLEAR t287.
            DATA t288 TYPE x LENGTH 1.
            CLEAR t288.
            DATA(t289) = VALUE i( ).
            t285 = t284.
            t282 = cl_abap_conv_out_ce=>uccpi( t285 ).
            IF t282 >= 255.
              IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
                zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t284 IMPORTING buffer = t286 ).
              t287 = t286(1).
              t288 = t286+1(1).
              t282 = t287.
              t289 = t288.
              t282 = t282 + t289 * 256.
            ENDIF.
            IF t282 = 9 OR t282 = 10 OR t282 = 11 OR t282 = 12 OR t282 = 13 OR t282 = 32 OR t282 = 160 OR t282 = 5760 OR t282 = 8232 OR t282 = 8233 OR t282 = 8239 OR t282 = 8287 OR t282 = 12288 OR t282 = 65279 OR t282 >= 8192 AND t282 <= 8202.
              t275 = t275 + 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          IF t275 < t276.
            t277 = t273+t275(1).
            IF t277 = '-' OR t277 = '+'.
              t278 = xsdbool( t277 = '-' ).
              t275 = t275 + 1.
            ENDIF.
          ENDIF.
          WHILE t275 < t276.
            t277 = t273+t275(1).
            IF t277 CN '0123456789' OR t277 = ` `.
              EXIT.
            ENDIF.
            t281 = t277.
            IF t280 > range_parse_safe_prefix OR ( t280 = range_parse_safe_prefix AND t281 > 1 ).
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t280 = t280 * 10 + t281.
            t279 = abap_true.
            t275 = t275 + 1.
          ENDWHILE.
          IF t279 = abap_false OR ( t278 = abap_true AND t280 = 0 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          IF t278 = abap_true.
            t280 = 0 - t280.
          ENDIF.
          t272 = t280.
          t265 = t272.
        ENDIF.
        t264 = t265.
        DATA t290 TYPE REF TO zcl_lnt_issue.
        CLEAR t290.
        DATA t291 TYPE abap_bool.
        DATA t292 TYPE f.
        DATA t293 TYPE i.
        DATA t294 TYPE string.
        DATA(t295) = t237.
        t294 = t295->value.
        DATA(t296) = strlen( t294 ).
        t293 = t296.
        t292 = t293.
        DATA(t297) = t264.
        t291 = xsdbool( t292 > t297 ).
        IF t291 = abap_true.
          DATA t298 TYPE REF TO zcl_lnt_issue.
          CLEAR t298.
          DATA(t299) = VALUE string( ).
          DATA(t300) = VALUE string( ).
          DATA(t301) = VALUE abap_bool( ).
          DATA(t302) = t243.
          IF t302 IS BOUND.
            IF t302->has = abap_true.
              t301 = xsdbool( strlen( t302->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t301 = abap_true.
            DATA t303 TYPE string.
            DATA t304 TYPE string.
            DATA(t305) = |[|.
            DATA t306 TYPE string.
            DATA(t307) = t243.
            t306 = t307->value.
            DATA(t308) = strlen( t305 ).
            t304 = |{ t305 }{ t306 }|.
            DATA(t309) = |] |.
            DATA(t310) = strlen( t304 ).
            t303 = |{ t304 }{ t309 }|.
            t300 = t303.
          ELSE.
            DATA(t311) = ||.
            t300 = t311.
          ENDIF.
          t299 = t300.
          DATA t312 TYPE REF TO zcl_lnt_issue.
          CLEAR t312.
          DATA(t313) = abap_true.
          IF t313 = abap_true.
            DATA t314 TYPE REF TO zcl_lnt_issue.
            CLEAR t314.
            DATA(t315) = t235.
            DATA(t316) = CONV f( 1 ).
            DATA(t317) = VALUE string( ).
            DATA(t318) = VALUE string( ).
            DATA(t319) = VALUE string( ).
            DATA(t320) = VALUE string( ).
            DATA t321 TYPE string.
            DATA t322 TYPE string.
            DATA t323 TYPE string.
            DATA t324 TYPE string.
            DATA t325 TYPE string.
            DATA t326 TYPE string.
            DATA(t327) = ||.
            DATA(t328) = t299.
            DATA(t329) = strlen( t327 ).
            t326 = |{ t327 }{ t328 }|.
            DATA(t330) = ||.
            DATA(t331) = strlen( t326 ).
            t325 = |{ t326 }{ t330 }|.
            DATA(t332) = |TTEXT|.
            DATA(t333) = strlen( t325 ).
            t324 = |{ t325 }{ t332 }|.
            DATA(t334) = | "|.
            DATA(t335) = strlen( t324 ).
            t323 = |{ t324 }{ t334 }|.
            DATA t336 TYPE string.
            DATA(t337) = t237.
            t336 = t337->value.
            DATA(t338) = strlen( t323 ).
            t322 = |{ t323 }{ t336 }|.
            DATA(t339) = |" exceeds maximum length of |.
            DATA(t340) = strlen( t322 ).
            t321 = |{ t322 }{ t339 }|.
            DATA(t341) = VALUE string( ).
            DATA(t342) = t264.
            IF t342 <> trunc( t342 ) OR t342 > range_safe_integer OR t342 < 0 - range_safe_integer.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            DATA(t343) = CONV int8( t342 ).
            t341 = |{ t343 }|.
            DATA(t344) = strlen( t321 ).
            t320 = |{ t321 }{ t341 }|.
            DATA(t345) = | characters (actual: |.
            DATA(t346) = strlen( t320 ).
            t319 = |{ t320 }{ t345 }|.
            DATA t347 TYPE string.
            DATA t348 TYPE i.
            DATA t349 TYPE string.
            DATA(t350) = t237.
            t349 = t350->value.
            DATA(t351) = strlen( t349 ).
            t348 = t351.
            t347 = |{ t348 }|.
            DATA(t352) = strlen( t319 ).
            t318 = |{ t319 }{ t347 }|.
            DATA(t353) = |)|.
            DATA(t354) = strlen( t318 ).
            t317 = |{ t318 }{ t353 }|.
            DATA(t355) = VALUE string( ).
            DATA t356 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t356.
            DATA t357 TYPE string.
            DATA(t358) = |xml_consistency|.
            t357 = t358.
            DATA t359 TYPE string.
            DATA(t360) = |XML consistency|.
            t359 = t360.
            DATA t361 TYPE string.
            DATA(t362) = |Checks the consistency of main XML files|.
            t361 = t362.
            DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t363.
            DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t364.
            DATA(t365) = abap_true.
            IF t365 = abap_true.
              DATA(t366) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
              t366 = t366 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
              t366 = t366 && |ce table and field values\n* Transparent TABL objects have de|.
              t366 = t366 && |livery class and size category set\n* Lock parameter names in|.
              t366 = t366 && | ENQU objects are max 16 characters\n* Texts and translations|.
              t366 = t366 && | do not exceed maximum allowed length.|.
              DATA(t367) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t367->has = abap_true.
              t367->value = t366.
              t364 = t367.
            ELSE.
              DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t368.
              t364 = t368.
            ENDIF.
            t363 = t364.
            DATA t369 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t369.
            DATA t370 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t370.
            DATA(t371) = abap_true.
            IF t371 = abap_true.
              DATA t372 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t373 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t374 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t374.
              t373 = t374.
              DATA(t375) = t373.
              DATA(t376) = |Naming|.
              t375->load( ).
              APPEND t376 TO t375->items.
              t375->save( ).
              DATA(t377) = t373.
              DATA(t378) = |Syntax|.
              t377->load( ).
              APPEND t378 TO t377->items.
              t377->save( ).
              DATA(t379) = t373.
              t372 = t379.
              t370 = t372.
            ELSE.
              DATA t380 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t380.
              t370 = t380.
            ENDIF.
            t369 = t370.
            DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t382.
            t381 = t382.
            DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t384.
            t383 = t384.
            DATA t385 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t386 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t386.
            t385 = t386.
            DATA t387 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t388.
            t387 = t388.
            t356 = NEW zcl_lnt_irule_metadata( i_key = t357 i_title = t359 i_short_description = t361 i_bad_example = t381 i_good_example = t383 i_extended_information = t363 i_tags = t369 i_pragma = t385 i_pseudo_comment = t387 ).
            CREATE OBJECT t356->zlnt_view_ownkeys_b0e8086400eb.
            t356->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t389.
            IF t356->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t356->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t389 ).
            ENDIF.
            DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t390.
            IF t356->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t356->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t390 ).
            ENDIF.
            DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t391.
            IF t356->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t356->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t391 ).
            ENDIF.
            DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t392.
            IF t356->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t356->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t392 ).
            ENDIF.
            DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t393.
            IF t356->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t356->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t393 ).
            ENDIF.
            CREATE OBJECT t356->zlnt_json_ownkeys_70e5fd461788.
            t356->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t394) = |key|.
            DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t395.
            IF t356->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t356->zlnt_json_ownkeys_70e5fd461788->put( p0 = t394 p1 = t395 ).
            ENDIF.
            DATA(t396) = |title|.
            DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t397.
            IF t356->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t356->zlnt_json_ownkeys_70e5fd461788->put( p0 = t396 p1 = t397 ).
            ENDIF.
            DATA(t398) = |shortDescription|.
            DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t399.
            IF t356->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t356->zlnt_json_ownkeys_70e5fd461788->put( p0 = t398 p1 = t399 ).
            ENDIF.
            DATA(t400) = |extendedInformation|.
            DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t401.
            IF t356->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t356->zlnt_json_ownkeys_70e5fd461788->put( p0 = t400 p1 = t401 ).
            ENDIF.
            DATA(t402) = |tags|.
            DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t403.
            IF t356->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t356->zlnt_json_ownkeys_70e5fd461788->put( p0 = t402 p1 = t403 ).
            ENDIF.
            t355 = t356->key.
            DATA t404 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t405) = me->conf.
            t404 = t405->zlnt_view_read_sr_b4bcf11cce6c( ).
            t314 = zcl_lnt_issue=>at_row( i_file = t315 i_row = t316 i_message_26cb = t317 i_key = t355 i_severity = t404 ).
            t312 = t314.
          ELSE.
            DATA t406 TYPE REF TO zcl_lnt_issue.
            CLEAR t406.
            t312 = t406.
          ENDIF.
          t298 = t312.
          t290 = t298.
        ELSE.
          DATA t407 TYPE REF TO zcl_lnt_issue.
          CLEAR t407.
          t290 = t407.
        ENDIF.
        t263 = t290.
        t246 = t263.
      ENDIF.
      t234 = t246.
      t233 = t234.
      DATA t408 TYPE abap_bool.
      DATA(t409) = t233.
      t408 = xsdbool( t409 IS BOUND ).
      IF t408 = abap_true.
        DATA(t410) = t231.
        DATA t411 TYPE REF TO zcl_lnt_issue.
        DATA(t412) = t233.
        t411 = t412.
        t410->load( ).
        APPEND t411 TO t410->items.
        t410->save( ).
      ENDIF.
    ENDDO.
    DATA(t413) = t5.
    result = t413.

  ENDMETHOD.

  METHOD run_message_class.
    CONSTANTS range_parse_safe_prefix TYPE int8 VALUE '900719925474099'.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_file.
    DATA t3 TYPE i.
    DATA(t4) = 73.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_ob_message_class.
    DATA(t9) = t1.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA(t11) = t8.
    t11->parse_xml( ).
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    DATA t14 TYPE REF TO zcl_lnt_parsed_message_class.
    DATA t15 TYPE REF TO zcl_lnt_parsed_message_class.
    DATA(t16) = t8.
    t15 = t16->xml.
    t14 = t15.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = t14.
    IF t19 IS INITIAL.
      t18 = abap_true.
    ENDIF.
    IF t18 = abap_true.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t20.
      t17 = t20.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t22 TYPE REF TO zcl_lnt_parsed_message_class.
      DATA(t23) = t14.
      t22 = t23.
      t21 = t22->parsed_messages.
      t17 = t21.
    ENDIF.
    t13 = t17.
    t12 = t13.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t24.
    DATA t25 TYPE abap_bool.
    DATA(t26) = t12.
    t25 = xsdbool( t26 IS BOUND ).
    IF t25 = abap_true.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t28) = t12.
      t27 = t28.
      t24 = t27.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t29.
      t24 = t29.
    ENDIF.
    t10 = t24.
    t7 = t10.
    DATA t30 TYPE REF TO zcl_lnt_ty_message.
    CLEAR t30.
    DATA t31 TYPE REF TO object.
    CLEAR t31.
    DATA(t32) = VALUE i( ).
    DO.
      t7->load( ).
      IF t32 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t31.
      READ TABLE t7->items INDEX t32 + 1 INTO t31.
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
      DATA(t36) = t5.
      t35 = t36.
      DATA t37 TYPE REF TO zcl_lnt_issue.
      CLEAR t37.
      DATA t38 TYPE REF TO zcl_lnt_issue.
      CLEAR t38.
      DATA t39 TYPE REF TO zif_lnt_file.
      DATA(t40) = t2.
      t39 = t40.
      DATA t41 TYPE string.
      DATA t42 TYPE string.
      DATA t43 TYPE string.
      DATA(t44) = |TEXT[|.
      DATA t45 TYPE string.
      DATA t46 TYPE REF TO zcl_lnt_ty_message.
      DATA(t47) = t30.
      t46 = t47.
      DATA t48 TYPE string.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t50) = t46.
      t49 = t50->number.
      t48 = t49->value.
      t45 = t48.
      DATA(t51) = strlen( t44 ).
      t43 = |{ t44 }{ t45 }|.
      DATA(t52) = |]|.
      DATA(t53) = strlen( t43 ).
      t42 = |{ t43 }{ t52 }|.
      t41 = t42.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      DATA(t56) = abap_true.
      IF t56 = abap_true.
        DATA t57 TYPE string.
        DATA t58 TYPE REF TO zcl_lnt_ty_message.
        DATA(t59) = t30.
        t58 = t59.
        DATA t60 TYPE string.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t62) = t58.
        t61 = t62->message_25cb.
        t60 = t61->value.
        t57 = t60.
        DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t63->has = abap_true.
        t63->value = t57.
        t55 = t63.
      ELSE.
        DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t64.
        t55 = t64.
      ENDIF.
      t54 = t55.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      DATA(t67) = t3.
      CLEAR t66.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t66->nval = t67.
      t65 = t66.
      DATA t68 TYPE REF TO zcl_lnt_issue.
      CLEAR t68.
      DATA(t69) = VALUE abap_bool( ).
      DATA(t70) = VALUE abap_bool( ).
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t72) = t54.
      t71 = t72.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t74.
      t73 = t74.
      DATA(t75) = VALUE abap_bool( ).
      DATA(t76) = t71.
      IF t76 IS INITIAL.
        t75 = abap_true.
      ELSEIF t76->has = abap_false.
        t75 = abap_true.
      ENDIF.
      t70 = t75.
      t69 = t70.
      IF t70 = abap_false.
        DATA(t77) = VALUE abap_bool( ).
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t79) = t65.
        t78 = t79.
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        t80 = t81.
        DATA(t82) = VALUE abap_bool( ).
        DATA(t83) = t78.
        IF t83 IS INITIAL.
          t82 = abap_true.
        ENDIF.
        t77 = t82.
        t69 = t77.
      ENDIF.
      IF t69 = abap_true.
        DATA t84 TYPE REF TO zcl_lnt_issue.
        CLEAR t84.
        t68 = t84.
      ELSE.
        DATA t85 TYPE REF TO zcl_lnt_issue.
        CLEAR t85.
        DATA(t86) = VALUE f( ).
        DATA(t87) = VALUE f( ).
        DATA(t88) = VALUE abap_bool( ).
        DATA(t89) = VALUE string( ).
        DATA(t90) = t65.
        IF t90 IS BOUND.
          t89 = t90->type_of( ).
          IF t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t90->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t89 = `function`.
          ENDIF.
        ELSE.
          t89 = `undefined`.
        ENDIF.
        DATA(t91) = |number|.
        t88 = xsdbool( t89 = t91 ).
        IF t88 = abap_true.
          DATA t92 TYPE f.
          DATA(t93) = t65.
          t92 = t93->as_number( ).
          t87 = t92.
        ELSE.
          DATA(t94) = VALUE f( ).
          DATA t95 TYPE string.
          DATA(t96) = t65.
          t95 = t96->as_string( ).
          DATA t97 TYPE i.
          DATA t98 TYPE i.
          DATA(t99) = VALUE string( ).
          DATA t100 TYPE abap_bool.
          DATA t101 TYPE abap_bool.
          DATA t102 TYPE int8.
          DATA(t103) = VALUE i( ).
          t97 = 0.
          t102 = 0.
          t100 = abap_false.
          t101 = abap_false.
          t98 = strlen( t95 ).
          DATA(t104) = VALUE i( ).
          DATA(t105) = VALUE i( ).
          DATA(t106) = VALUE string( ).
          WHILE t97 < t98.
            t105 = t97.
            t106 = t95+t105(1).
            DATA t107 TYPE c LENGTH 1.
            CLEAR t107.
            DATA(t108) = VALUE xstring( ).
            DATA t109 TYPE x LENGTH 1.
            CLEAR t109.
            DATA t110 TYPE x LENGTH 1.
            CLEAR t110.
            DATA(t111) = VALUE i( ).
            t107 = t106.
            t104 = cl_abap_conv_out_ce=>uccpi( t107 ).
            IF t104 >= 255.
              IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
                zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t106 IMPORTING buffer = t108 ).
              t109 = t108(1).
              t110 = t108+1(1).
              t104 = t109.
              t111 = t110.
              t104 = t104 + t111 * 256.
            ENDIF.
            IF t104 = 9 OR t104 = 10 OR t104 = 11 OR t104 = 12 OR t104 = 13 OR t104 = 32 OR t104 = 160 OR t104 = 5760 OR t104 = 8232 OR t104 = 8233 OR t104 = 8239 OR t104 = 8287 OR t104 = 12288 OR t104 = 65279 OR t104 >= 8192 AND t104 <= 8202.
              t97 = t97 + 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          IF t97 < t98.
            t99 = t95+t97(1).
            IF t99 = '-' OR t99 = '+'.
              t100 = xsdbool( t99 = '-' ).
              t97 = t97 + 1.
            ENDIF.
          ENDIF.
          WHILE t97 < t98.
            t99 = t95+t97(1).
            IF t99 CN '0123456789' OR t99 = ` `.
              EXIT.
            ENDIF.
            t103 = t99.
            IF t102 > range_parse_safe_prefix OR ( t102 = range_parse_safe_prefix AND t103 > 1 ).
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t102 = t102 * 10 + t103.
            t101 = abap_true.
            t97 = t97 + 1.
          ENDWHILE.
          IF t101 = abap_false OR ( t100 = abap_true AND t102 = 0 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          IF t100 = abap_true.
            t102 = 0 - t102.
          ENDIF.
          t94 = t102.
          t87 = t94.
        ENDIF.
        t86 = t87.
        DATA t112 TYPE REF TO zcl_lnt_issue.
        CLEAR t112.
        DATA t113 TYPE abap_bool.
        DATA t114 TYPE f.
        DATA t115 TYPE i.
        DATA t116 TYPE string.
        DATA(t117) = t54.
        t116 = t117->value.
        DATA(t118) = strlen( t116 ).
        t115 = t118.
        t114 = t115.
        DATA(t119) = t86.
        t113 = xsdbool( t114 > t119 ).
        IF t113 = abap_true.
          DATA t120 TYPE REF TO zcl_lnt_issue.
          CLEAR t120.
          DATA(t121) = VALUE string( ).
          DATA(t122) = VALUE string( ).
          DATA(t123) = VALUE abap_bool( ).
          DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t124.
          IF t124 IS BOUND.
            IF t124->has = abap_true.
              t123 = xsdbool( strlen( t124->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t123 = abap_true.
            DATA t125 TYPE string.
            DATA t126 TYPE string.
            DATA(t127) = |[|.
            DATA t128 TYPE string.
            DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t129.
            t128 = t129->value.
            DATA(t130) = strlen( t127 ).
            t126 = |{ t127 }{ t128 }|.
            DATA(t131) = |] |.
            DATA(t132) = strlen( t126 ).
            t125 = |{ t126 }{ t131 }|.
            t122 = t125.
          ELSE.
            DATA(t133) = ||.
            t122 = t133.
          ENDIF.
          t121 = t122.
          DATA t134 TYPE REF TO zcl_lnt_issue.
          CLEAR t134.
          DATA(t135) = abap_true.
          IF t135 = abap_true.
            DATA t136 TYPE REF TO zcl_lnt_issue.
            CLEAR t136.
            DATA(t137) = t39.
            DATA(t138) = CONV f( 1 ).
            DATA(t139) = VALUE string( ).
            DATA(t140) = VALUE string( ).
            DATA(t141) = VALUE string( ).
            DATA(t142) = VALUE string( ).
            DATA t143 TYPE string.
            DATA t144 TYPE string.
            DATA t145 TYPE string.
            DATA t146 TYPE string.
            DATA t147 TYPE string.
            DATA t148 TYPE string.
            DATA(t149) = ||.
            DATA(t150) = t121.
            DATA(t151) = strlen( t149 ).
            t148 = |{ t149 }{ t150 }|.
            DATA(t152) = ||.
            DATA(t153) = strlen( t148 ).
            t147 = |{ t148 }{ t152 }|.
            DATA(t154) = t41.
            DATA(t155) = strlen( t147 ).
            t146 = |{ t147 }{ t154 }|.
            DATA(t156) = | "|.
            DATA(t157) = strlen( t146 ).
            t145 = |{ t146 }{ t156 }|.
            DATA t158 TYPE string.
            DATA(t159) = t54.
            t158 = t159->value.
            DATA(t160) = strlen( t145 ).
            t144 = |{ t145 }{ t158 }|.
            DATA(t161) = |" exceeds maximum length of |.
            DATA(t162) = strlen( t144 ).
            t143 = |{ t144 }{ t161 }|.
            DATA(t163) = VALUE string( ).
            DATA(t164) = t86.
            IF t164 <> trunc( t164 ) OR t164 > range_safe_integer OR t164 < 0 - range_safe_integer.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            DATA(t165) = CONV int8( t164 ).
            t163 = |{ t165 }|.
            DATA(t166) = strlen( t143 ).
            t142 = |{ t143 }{ t163 }|.
            DATA(t167) = | characters (actual: |.
            DATA(t168) = strlen( t142 ).
            t141 = |{ t142 }{ t167 }|.
            DATA t169 TYPE string.
            DATA t170 TYPE i.
            DATA t171 TYPE string.
            DATA(t172) = t54.
            t171 = t172->value.
            DATA(t173) = strlen( t171 ).
            t170 = t173.
            t169 = |{ t170 }|.
            DATA(t174) = strlen( t141 ).
            t140 = |{ t141 }{ t169 }|.
            DATA(t175) = |)|.
            DATA(t176) = strlen( t140 ).
            t139 = |{ t140 }{ t175 }|.
            DATA(t177) = VALUE string( ).
            DATA t178 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t178.
            DATA t179 TYPE string.
            DATA(t180) = |xml_consistency|.
            t179 = t180.
            DATA t181 TYPE string.
            DATA(t182) = |XML consistency|.
            t181 = t182.
            DATA t183 TYPE string.
            DATA(t184) = |Checks the consistency of main XML files|.
            t183 = t184.
            DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t185.
            DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t186.
            DATA(t187) = abap_true.
            IF t187 = abap_true.
              DATA(t188) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
              t188 = t188 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
              t188 = t188 && |ce table and field values\n* Transparent TABL objects have de|.
              t188 = t188 && |livery class and size category set\n* Lock parameter names in|.
              t188 = t188 && | ENQU objects are max 16 characters\n* Texts and translations|.
              t188 = t188 && | do not exceed maximum allowed length.|.
              DATA(t189) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t189->has = abap_true.
              t189->value = t188.
              t186 = t189.
            ELSE.
              DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t190.
              t186 = t190.
            ENDIF.
            t185 = t186.
            DATA t191 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t191.
            DATA t192 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t192.
            DATA(t193) = abap_true.
            IF t193 = abap_true.
              DATA t194 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t195 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t196 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t196.
              t195 = t196.
              DATA(t197) = t195.
              DATA(t198) = |Naming|.
              t197->load( ).
              APPEND t198 TO t197->items.
              t197->save( ).
              DATA(t199) = t195.
              DATA(t200) = |Syntax|.
              t199->load( ).
              APPEND t200 TO t199->items.
              t199->save( ).
              DATA(t201) = t195.
              t194 = t201.
              t192 = t194.
            ELSE.
              DATA t202 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t202.
              t192 = t202.
            ENDIF.
            t191 = t192.
            DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t204.
            t203 = t204.
            DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t206.
            t205 = t206.
            DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t208.
            t207 = t208.
            DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t210.
            t209 = t210.
            t178 = NEW zcl_lnt_irule_metadata( i_key = t179 i_title = t181 i_short_description = t183 i_bad_example = t203 i_good_example = t205 i_extended_information = t185 i_tags = t191 i_pragma = t207 i_pseudo_comment = t209 ).
            CREATE OBJECT t178->zlnt_view_ownkeys_b0e8086400eb.
            t178->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t211.
            IF t178->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t178->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t211 ).
            ENDIF.
            DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t212.
            IF t178->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t178->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t212 ).
            ENDIF.
            DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t213.
            IF t178->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t178->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t213 ).
            ENDIF.
            DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t214.
            IF t178->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t178->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t214 ).
            ENDIF.
            DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t215.
            IF t178->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t178->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t215 ).
            ENDIF.
            CREATE OBJECT t178->zlnt_json_ownkeys_70e5fd461788.
            t178->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t216) = |key|.
            DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t217.
            IF t178->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t178->zlnt_json_ownkeys_70e5fd461788->put( p0 = t216 p1 = t217 ).
            ENDIF.
            DATA(t218) = |title|.
            DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t219.
            IF t178->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t178->zlnt_json_ownkeys_70e5fd461788->put( p0 = t218 p1 = t219 ).
            ENDIF.
            DATA(t220) = |shortDescription|.
            DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t221.
            IF t178->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t178->zlnt_json_ownkeys_70e5fd461788->put( p0 = t220 p1 = t221 ).
            ENDIF.
            DATA(t222) = |extendedInformation|.
            DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t223.
            IF t178->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t178->zlnt_json_ownkeys_70e5fd461788->put( p0 = t222 p1 = t223 ).
            ENDIF.
            DATA(t224) = |tags|.
            DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t225.
            IF t178->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t178->zlnt_json_ownkeys_70e5fd461788->put( p0 = t224 p1 = t225 ).
            ENDIF.
            t177 = t178->key.
            DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t227) = me->conf.
            t226 = t227->zlnt_view_read_sr_b4bcf11cce6c( ).
            t136 = zcl_lnt_issue=>at_row( i_file = t137 i_row = t138 i_message_26cb = t139 i_key = t177 i_severity = t226 ).
            t134 = t136.
          ELSE.
            DATA t228 TYPE REF TO zcl_lnt_issue.
            CLEAR t228.
            t134 = t228.
          ENDIF.
          t120 = t134.
          t112 = t120.
        ELSE.
          DATA t229 TYPE REF TO zcl_lnt_issue.
          CLEAR t229.
          t112 = t229.
        ENDIF.
        t85 = t112.
        t68 = t85.
      ENDIF.
      t38 = t68.
      t37 = t38.
      DATA t230 TYPE abap_bool.
      DATA(t231) = t37.
      t230 = xsdbool( t231 IS BOUND ).
      IF t230 = abap_true.
        DATA(t232) = t35.
        DATA t233 TYPE REF TO zcl_lnt_issue.
        DATA(t234) = t37.
        t233 = t234.
        t232->load( ).
        APPEND t233 TO t232->items.
        t232->save( ).
      ENDIF.
    ENDDO.
    DATA t235 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t236.
    DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t237.
    DATA t238 TYPE REF TO zcl_lnt_ob_message_class.
    DATA(t239) = t1.
    t238 = t239.
    DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t240.
    DATA(t241) = t238.
    t241->parse_xml( ).
    DATA t242 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t242.
    DATA t243 TYPE REF TO zcl_lnt_parsed_message_class.
    DATA t244 TYPE REF TO zcl_lnt_parsed_message_class.
    DATA(t245) = t238.
    t244 = t245->xml.
    t243 = t244.
    DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t246.
    DATA(t247) = VALUE abap_bool( ).
    DATA(t248) = t243.
    IF t248 IS INITIAL.
      t247 = abap_true.
    ENDIF.
    IF t247 = abap_true.
      DATA t249 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t249.
      t246 = t249.
    ELSE.
      DATA t250 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t251 TYPE REF TO zcl_lnt_parsed_message_class.
      DATA(t252) = t243.
      t251 = t252.
      t250 = t251->texts_translations.
      t246 = t250.
    ENDIF.
    t242 = t246.
    t240 = t242.
    t237 = t240.
    t236 = t237.
    DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t253.
    DATA(t254) = VALUE abap_bool( ).
    DATA(t255) = t236.
    IF t255 IS INITIAL.
      t254 = abap_true.
    ENDIF.
    IF t254 = abap_true.
      DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t256.
      t253 = t256.
    ELSE.
      DATA t257 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t258) = t236.
      t257 = t258.
      t253 = t257.
    ENDIF.
    t235 = t253.
    DATA t259 TYPE REF TO zcl_lnt_shape_327d7720.
    CLEAR t259.
    DATA t260 TYPE REF TO object.
    CLEAR t260.
    DATA(t261) = VALUE i( ).
    DO.
      t235->load( ).
      IF t261 >= lines( t235->items ).
        EXIT.
      ENDIF.
      CLEAR t260.
      READ TABLE t235->items INDEX t261 + 1 INTO t260.
      t261 = t261 + 1.
      DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t262.
      CLEAR t259.
      IF t260 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t262 ?= t260.
        DATA t263 TYPE REF TO object.
        t263 = t262->as_ref( ).
        t259 ?= t263.
      ELSE.
        t259 ?= t260.
      ENDIF.
      DATA t264 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t265) = t5.
      t264 = t265.
      DATA t266 TYPE REF TO zcl_lnt_issue.
      CLEAR t266.
      DATA t267 TYPE REF TO zcl_lnt_issue.
      CLEAR t267.
      DATA t268 TYPE REF TO zif_lnt_file.
      DATA(t269) = t2.
      t268 = t269.
      DATA(t270) = VALUE string( ).
      DATA(t271) = VALUE string( ).
      DATA(t272) = VALUE string( ).
      DATA(t273) = |TEXT[|.
      DATA(t274) = VALUE string( ).
      DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t277) = t259.
      t276 = t277->number.
      t275 = t276.
      DATA(t278) = VALUE string( ).
      DATA(t279) = VALUE abap_bool( ).
      DATA(t280) = t275.
      IF t280 IS INITIAL.
        t279 = abap_true.
      ELSEIF t280->has = abap_false.
        t279 = abap_true.
      ENDIF.
      IF t279 = abap_true.
        DATA(t281) = |undefined|.
        t278 = t281.
      ELSE.
        DATA t282 TYPE string.
        DATA(t283) = t275.
        t282 = t283->value.
        t278 = t282.
      ENDIF.
      t274 = t278.
      DATA(t284) = strlen( t273 ).
      t272 = |{ t273 }{ t274 }|.
      DATA(t285) = |]|.
      DATA(t286) = strlen( t272 ).
      t271 = |{ t272 }{ t285 }|.
      t270 = t271.
      DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t289) = t259.
      t288 = t289->text.
      t287 = t288.
      DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t291.
      DATA(t292) = t3.
      CLEAR t291.
      CREATE OBJECT t291.
      t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t291->nval = t292.
      t290 = t291.
      DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t295) = t259.
      t294 = t295->language.
      t293 = t294.
      DATA t296 TYPE REF TO zcl_lnt_issue.
      CLEAR t296.
      DATA(t297) = VALUE abap_bool( ).
      DATA(t298) = VALUE abap_bool( ).
      DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t300) = t287.
      t299 = t300.
      DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t302.
      t301 = t302.
      DATA(t303) = VALUE abap_bool( ).
      DATA(t304) = t299.
      IF t304 IS INITIAL.
        t303 = abap_true.
      ELSEIF t304->has = abap_false.
        t303 = abap_true.
      ENDIF.
      t298 = t303.
      t297 = t298.
      IF t298 = abap_false.
        DATA(t305) = VALUE abap_bool( ).
        DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t307) = t290.
        t306 = t307.
        DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t309.
        t308 = t309.
        DATA(t310) = VALUE abap_bool( ).
        DATA(t311) = t306.
        IF t311 IS INITIAL.
          t310 = abap_true.
        ENDIF.
        t305 = t310.
        t297 = t305.
      ENDIF.
      IF t297 = abap_true.
        DATA t312 TYPE REF TO zcl_lnt_issue.
        CLEAR t312.
        t296 = t312.
      ELSE.
        DATA t313 TYPE REF TO zcl_lnt_issue.
        CLEAR t313.
        DATA(t314) = VALUE f( ).
        DATA(t315) = VALUE f( ).
        DATA(t316) = VALUE abap_bool( ).
        DATA(t317) = VALUE string( ).
        DATA(t318) = t290.
        IF t318 IS BOUND.
          t317 = t318->type_of( ).
          IF t318->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t318->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t317 = `function`.
          ENDIF.
        ELSE.
          t317 = `undefined`.
        ENDIF.
        DATA(t319) = |number|.
        t316 = xsdbool( t317 = t319 ).
        IF t316 = abap_true.
          DATA t320 TYPE f.
          DATA(t321) = t290.
          t320 = t321->as_number( ).
          t315 = t320.
        ELSE.
          DATA(t322) = VALUE f( ).
          DATA t323 TYPE string.
          DATA(t324) = t290.
          t323 = t324->as_string( ).
          DATA t325 TYPE i.
          DATA t326 TYPE i.
          DATA(t327) = VALUE string( ).
          DATA t328 TYPE abap_bool.
          DATA t329 TYPE abap_bool.
          DATA t330 TYPE int8.
          DATA(t331) = VALUE i( ).
          t325 = 0.
          t330 = 0.
          t328 = abap_false.
          t329 = abap_false.
          t326 = strlen( t323 ).
          DATA(t332) = VALUE i( ).
          DATA(t333) = VALUE i( ).
          DATA(t334) = VALUE string( ).
          WHILE t325 < t326.
            t333 = t325.
            t334 = t323+t333(1).
            DATA t335 TYPE c LENGTH 1.
            CLEAR t335.
            DATA(t336) = VALUE xstring( ).
            DATA t337 TYPE x LENGTH 1.
            CLEAR t337.
            DATA t338 TYPE x LENGTH 1.
            CLEAR t338.
            DATA(t339) = VALUE i( ).
            t335 = t334.
            t332 = cl_abap_conv_out_ce=>uccpi( t335 ).
            IF t332 >= 255.
              IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
                zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t334 IMPORTING buffer = t336 ).
              t337 = t336(1).
              t338 = t336+1(1).
              t332 = t337.
              t339 = t338.
              t332 = t332 + t339 * 256.
            ENDIF.
            IF t332 = 9 OR t332 = 10 OR t332 = 11 OR t332 = 12 OR t332 = 13 OR t332 = 32 OR t332 = 160 OR t332 = 5760 OR t332 = 8232 OR t332 = 8233 OR t332 = 8239 OR t332 = 8287 OR t332 = 12288 OR t332 = 65279 OR t332 >= 8192 AND t332 <= 8202.
              t325 = t325 + 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          IF t325 < t326.
            t327 = t323+t325(1).
            IF t327 = '-' OR t327 = '+'.
              t328 = xsdbool( t327 = '-' ).
              t325 = t325 + 1.
            ENDIF.
          ENDIF.
          WHILE t325 < t326.
            t327 = t323+t325(1).
            IF t327 CN '0123456789' OR t327 = ` `.
              EXIT.
            ENDIF.
            t331 = t327.
            IF t330 > range_parse_safe_prefix OR ( t330 = range_parse_safe_prefix AND t331 > 1 ).
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t330 = t330 * 10 + t331.
            t329 = abap_true.
            t325 = t325 + 1.
          ENDWHILE.
          IF t329 = abap_false OR ( t328 = abap_true AND t330 = 0 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          IF t328 = abap_true.
            t330 = 0 - t330.
          ENDIF.
          t322 = t330.
          t315 = t322.
        ENDIF.
        t314 = t315.
        DATA t340 TYPE REF TO zcl_lnt_issue.
        CLEAR t340.
        DATA t341 TYPE abap_bool.
        DATA t342 TYPE f.
        DATA t343 TYPE i.
        DATA t344 TYPE string.
        DATA(t345) = t287.
        t344 = t345->value.
        DATA(t346) = strlen( t344 ).
        t343 = t346.
        t342 = t343.
        DATA(t347) = t314.
        t341 = xsdbool( t342 > t347 ).
        IF t341 = abap_true.
          DATA t348 TYPE REF TO zcl_lnt_issue.
          CLEAR t348.
          DATA(t349) = VALUE string( ).
          DATA(t350) = VALUE string( ).
          DATA(t351) = VALUE abap_bool( ).
          DATA(t352) = t293.
          IF t352 IS BOUND.
            IF t352->has = abap_true.
              t351 = xsdbool( strlen( t352->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t351 = abap_true.
            DATA t353 TYPE string.
            DATA t354 TYPE string.
            DATA(t355) = |[|.
            DATA t356 TYPE string.
            DATA(t357) = t293.
            t356 = t357->value.
            DATA(t358) = strlen( t355 ).
            t354 = |{ t355 }{ t356 }|.
            DATA(t359) = |] |.
            DATA(t360) = strlen( t354 ).
            t353 = |{ t354 }{ t359 }|.
            t350 = t353.
          ELSE.
            DATA(t361) = ||.
            t350 = t361.
          ENDIF.
          t349 = t350.
          DATA t362 TYPE REF TO zcl_lnt_issue.
          CLEAR t362.
          DATA(t363) = abap_true.
          IF t363 = abap_true.
            DATA t364 TYPE REF TO zcl_lnt_issue.
            CLEAR t364.
            DATA(t365) = t268.
            DATA(t366) = CONV f( 1 ).
            DATA(t367) = VALUE string( ).
            DATA(t368) = VALUE string( ).
            DATA(t369) = VALUE string( ).
            DATA(t370) = VALUE string( ).
            DATA t371 TYPE string.
            DATA t372 TYPE string.
            DATA t373 TYPE string.
            DATA t374 TYPE string.
            DATA t375 TYPE string.
            DATA t376 TYPE string.
            DATA(t377) = ||.
            DATA(t378) = t349.
            DATA(t379) = strlen( t377 ).
            t376 = |{ t377 }{ t378 }|.
            DATA(t380) = ||.
            DATA(t381) = strlen( t376 ).
            t375 = |{ t376 }{ t380 }|.
            DATA(t382) = t270.
            DATA(t383) = strlen( t375 ).
            t374 = |{ t375 }{ t382 }|.
            DATA(t384) = | "|.
            DATA(t385) = strlen( t374 ).
            t373 = |{ t374 }{ t384 }|.
            DATA t386 TYPE string.
            DATA(t387) = t287.
            t386 = t387->value.
            DATA(t388) = strlen( t373 ).
            t372 = |{ t373 }{ t386 }|.
            DATA(t389) = |" exceeds maximum length of |.
            DATA(t390) = strlen( t372 ).
            t371 = |{ t372 }{ t389 }|.
            DATA(t391) = VALUE string( ).
            DATA(t392) = t314.
            IF t392 <> trunc( t392 ) OR t392 > range_safe_integer OR t392 < 0 - range_safe_integer.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            DATA(t393) = CONV int8( t392 ).
            t391 = |{ t393 }|.
            DATA(t394) = strlen( t371 ).
            t370 = |{ t371 }{ t391 }|.
            DATA(t395) = | characters (actual: |.
            DATA(t396) = strlen( t370 ).
            t369 = |{ t370 }{ t395 }|.
            DATA t397 TYPE string.
            DATA t398 TYPE i.
            DATA t399 TYPE string.
            DATA(t400) = t287.
            t399 = t400->value.
            DATA(t401) = strlen( t399 ).
            t398 = t401.
            t397 = |{ t398 }|.
            DATA(t402) = strlen( t369 ).
            t368 = |{ t369 }{ t397 }|.
            DATA(t403) = |)|.
            DATA(t404) = strlen( t368 ).
            t367 = |{ t368 }{ t403 }|.
            DATA(t405) = VALUE string( ).
            DATA t406 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t406.
            DATA t407 TYPE string.
            DATA(t408) = |xml_consistency|.
            t407 = t408.
            DATA t409 TYPE string.
            DATA(t410) = |XML consistency|.
            t409 = t410.
            DATA t411 TYPE string.
            DATA(t412) = |Checks the consistency of main XML files|.
            t411 = t412.
            DATA t413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t413.
            DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t414.
            DATA(t415) = abap_true.
            IF t415 = abap_true.
              DATA(t416) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
              t416 = t416 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
              t416 = t416 && |ce table and field values\n* Transparent TABL objects have de|.
              t416 = t416 && |livery class and size category set\n* Lock parameter names in|.
              t416 = t416 && | ENQU objects are max 16 characters\n* Texts and translations|.
              t416 = t416 && | do not exceed maximum allowed length.|.
              DATA(t417) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t417->has = abap_true.
              t417->value = t416.
              t414 = t417.
            ELSE.
              DATA t418 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t418.
              t414 = t418.
            ENDIF.
            t413 = t414.
            DATA t419 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t419.
            DATA t420 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t420.
            DATA(t421) = abap_true.
            IF t421 = abap_true.
              DATA t422 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t423 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t424 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t424.
              t423 = t424.
              DATA(t425) = t423.
              DATA(t426) = |Naming|.
              t425->load( ).
              APPEND t426 TO t425->items.
              t425->save( ).
              DATA(t427) = t423.
              DATA(t428) = |Syntax|.
              t427->load( ).
              APPEND t428 TO t427->items.
              t427->save( ).
              DATA(t429) = t423.
              t422 = t429.
              t420 = t422.
            ELSE.
              DATA t430 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t430.
              t420 = t430.
            ENDIF.
            t419 = t420.
            DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t432.
            t431 = t432.
            DATA t433 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t434.
            t433 = t434.
            DATA t435 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t436 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t436.
            t435 = t436.
            DATA t437 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t438 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t438.
            t437 = t438.
            t406 = NEW zcl_lnt_irule_metadata( i_key = t407 i_title = t409 i_short_description = t411 i_bad_example = t431 i_good_example = t433 i_extended_information = t413 i_tags = t419 i_pragma = t435 i_pseudo_comment = t437 ).
            CREATE OBJECT t406->zlnt_view_ownkeys_b0e8086400eb.
            t406->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t439.
            IF t406->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t406->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t439 ).
            ENDIF.
            DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t440.
            IF t406->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t406->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t440 ).
            ENDIF.
            DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t441.
            IF t406->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t406->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t441 ).
            ENDIF.
            DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t442.
            IF t406->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t406->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t442 ).
            ENDIF.
            DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t443.
            IF t406->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t406->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t443 ).
            ENDIF.
            CREATE OBJECT t406->zlnt_json_ownkeys_70e5fd461788.
            t406->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t444) = |key|.
            DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t445.
            IF t406->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t406->zlnt_json_ownkeys_70e5fd461788->put( p0 = t444 p1 = t445 ).
            ENDIF.
            DATA(t446) = |title|.
            DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t447.
            IF t406->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t406->zlnt_json_ownkeys_70e5fd461788->put( p0 = t446 p1 = t447 ).
            ENDIF.
            DATA(t448) = |shortDescription|.
            DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t449.
            IF t406->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t406->zlnt_json_ownkeys_70e5fd461788->put( p0 = t448 p1 = t449 ).
            ENDIF.
            DATA(t450) = |extendedInformation|.
            DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t451.
            IF t406->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t406->zlnt_json_ownkeys_70e5fd461788->put( p0 = t450 p1 = t451 ).
            ENDIF.
            DATA(t452) = |tags|.
            DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t453.
            IF t406->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t406->zlnt_json_ownkeys_70e5fd461788->put( p0 = t452 p1 = t453 ).
            ENDIF.
            t405 = t406->key.
            DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t455) = me->conf.
            t454 = t455->zlnt_view_read_sr_b4bcf11cce6c( ).
            t364 = zcl_lnt_issue=>at_row( i_file = t365 i_row = t366 i_message_26cb = t367 i_key = t405 i_severity = t454 ).
            t362 = t364.
          ELSE.
            DATA t456 TYPE REF TO zcl_lnt_issue.
            CLEAR t456.
            t362 = t456.
          ENDIF.
          t348 = t362.
          t340 = t348.
        ELSE.
          DATA t457 TYPE REF TO zcl_lnt_issue.
          CLEAR t457.
          t340 = t457.
        ENDIF.
        t313 = t340.
        t296 = t313.
      ENDIF.
      t267 = t296.
      t266 = t267.
      DATA t458 TYPE abap_bool.
      DATA(t459) = t266.
      t458 = xsdbool( t459 IS BOUND ).
      IF t458 = abap_true.
        DATA(t460) = t264.
        DATA t461 TYPE REF TO zcl_lnt_issue.
        DATA(t462) = t266.
        t461 = t462.
        t460->load( ).
        APPEND t461 TO t460->items.
        t460->save( ).
      ENDIF.
    ENDDO.
    DATA(t463) = t5.
    result = t463.

  ENDMETHOD.

  METHOD run_lock_object.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_file.
    DATA t3 TYPE i.
    DATA(t4) = 16.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_lock_object.
    DATA(t11) = t1.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t14) = t10.
    t13 = t14->pr_in_sr_ob_lck_obj_ts_lck_obj( ).
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    DATA t16 TYPE REF TO zcl_lnt_shape_897eae97.
    DATA t17 TYPE REF TO zcl_lnt_shape_897eae97.
    DATA(t18) = t10.
    t17 = t18->parsed_xml.
    t16 = t17.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t19.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = t16.
    IF t21 IS INITIAL.
      t20 = abap_true.
    ENDIF.
    IF t20 = abap_true.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t22.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t24 TYPE REF TO zcl_lnt_shape_897eae97.
      DATA(t25) = t16.
      t24 = t25.
      t23 = t24->parameters.
      t19 = t23.
    ENDIF.
    t15 = t19.
    t12 = t15.
    t9 = t12.
    t8 = t9.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t26.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = t8.
    IF t28 IS INITIAL.
      t27 = abap_true.
    ENDIF.
    IF t27 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t29.
      t26 = t29.
    ELSE.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t31) = t8.
      t30 = t31.
      t26 = t30.
    ENDIF.
    t7 = t26.
    DATA t32 TYPE REF TO zcl_lnt_shape_51788160.
    CLEAR t32.
    DATA t33 TYPE REF TO object.
    CLEAR t33.
    DATA(t34) = VALUE i( ).
    DO.
      t7->load( ).
      IF t34 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t33.
      READ TABLE t7->items INDEX t34 + 1 INTO t33.
      t34 = t34 + 1.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      CLEAR t32.
      IF t33 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t35 ?= t33.
        DATA t36 TYPE REF TO object.
        t36 = t35->as_ref( ).
        t32 ?= t36.
      ELSE.
        t32 ?= t33.
      ENDIF.
      DATA t37 TYPE abap_bool.
      DATA t38 TYPE i.
      DATA t39 TYPE string.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t41) = t32.
      t40 = t41->viewfield.
      t39 = t40->value.
      DATA(t42) = strlen( t39 ).
      t38 = t42.
      DATA(t43) = t3.
      t37 = xsdbool( t38 > t43 ).
      IF t37 = abap_true.
        DATA(t44) = VALUE string( ).
        DATA(t45) = VALUE string( ).
        DATA(t46) = VALUE string( ).
        DATA(t47) = VALUE string( ).
        DATA(t48) = |Lock parameter |.
        DATA(t49) = VALUE string( ).
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t52) = t32.
        t51 = t52->viewfield.
        t50 = t51.
        DATA(t53) = VALUE string( ).
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = t50.
        IF t55 IS INITIAL.
          t54 = abap_true.
        ELSEIF t55->has = abap_false.
          t54 = abap_true.
        ENDIF.
        IF t54 = abap_true.
          DATA(t56) = |undefined|.
          t53 = t56.
        ELSE.
          DATA t57 TYPE string.
          DATA(t58) = t50.
          t57 = t58->value.
          t53 = t57.
        ENDIF.
        t49 = t53.
        DATA(t59) = strlen( t48 ).
        t47 = |{ t48 }{ t49 }|.
        DATA(t60) = | exceeds maximum length of |.
        DATA(t61) = strlen( t47 ).
        t46 = |{ t47 }{ t60 }|.
        DATA t62 TYPE string.
        DATA t63 TYPE string.
        DATA t64 TYPE string.
        DATA t65 TYPE string.
        DATA(t66) = ||.
        DATA t67 TYPE string.
        DATA(t68) = t3.
        t67 = |{ t68 }|.
        DATA(t69) = strlen( t66 ).
        t65 = |{ t66 }{ t67 }|.
        DATA(t70) = | characters (actual: |.
        DATA(t71) = strlen( t65 ).
        t64 = |{ t65 }{ t70 }|.
        DATA t72 TYPE string.
        DATA t73 TYPE i.
        DATA t74 TYPE string.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t76) = t32.
        t75 = t76->viewfield.
        t74 = t75->value.
        DATA(t77) = strlen( t74 ).
        t73 = t77.
        t72 = |{ t73 }|.
        DATA(t78) = strlen( t64 ).
        t63 = |{ t64 }{ t72 }|.
        DATA(t79) = |)|.
        DATA(t80) = strlen( t63 ).
        t62 = |{ t63 }{ t79 }|.
        DATA(t81) = strlen( t46 ).
        t45 = |{ t46 }{ t62 }|.
        t44 = t45.
        DATA(t82) = t5.
        DATA t83 TYPE REF TO zcl_lnt_issue.
        CLEAR t83.
        DATA(t84) = t2.
        DATA(t85) = CONV f( 1 ).
        DATA(t86) = t44.
        DATA(t87) = VALUE string( ).
        DATA t88 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t88.
        DATA t89 TYPE string.
        DATA(t90) = |xml_consistency|.
        t89 = t90.
        DATA t91 TYPE string.
        DATA(t92) = |XML consistency|.
        t91 = t92.
        DATA t93 TYPE string.
        DATA(t94) = |Checks the consistency of main XML files|.
        t93 = t94.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t95.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t96.
        DATA(t97) = abap_true.
        IF t97 = abap_true.
          DATA(t98) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t98 = t98 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t98 = t98 && |ce table and field values\n* Transparent TABL objects have de|.
          t98 = t98 && |livery class and size category set\n* Lock parameter names in|.
          t98 = t98 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t98 = t98 && | do not exceed maximum allowed length.|.
          DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t99->has = abap_true.
          t99->value = t98.
          t96 = t99.
        ELSE.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          t96 = t100.
        ENDIF.
        t95 = t96.
        DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t101.
        DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t102.
        DATA(t103) = abap_true.
        IF t103 = abap_true.
          DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t105 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t106.
          t105 = t106.
          DATA(t107) = t105.
          DATA(t108) = |Naming|.
          t107->load( ).
          APPEND t108 TO t107->items.
          t107->save( ).
          DATA(t109) = t105.
          DATA(t110) = |Syntax|.
          t109->load( ).
          APPEND t110 TO t109->items.
          t109->save( ).
          DATA(t111) = t105.
          t104 = t111.
          t102 = t104.
        ELSE.
          DATA t112 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t112.
          t102 = t112.
        ENDIF.
        t101 = t102.
        DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t114.
        t113 = t114.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t116.
        t115 = t116.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t118.
        t117 = t118.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t120.
        t119 = t120.
        t88 = NEW zcl_lnt_irule_metadata( i_key = t89 i_title = t91 i_short_description = t93 i_bad_example = t113 i_good_example = t115 i_extended_information = t95 i_tags = t101 i_pragma = t117 i_pseudo_comment = t119 ).
        CREATE OBJECT t88->zlnt_view_ownkeys_b0e8086400eb.
        t88->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t121 ).
        ENDIF.
        DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t122.
        IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t122 ).
        ENDIF.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t123 ).
        ENDIF.
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t124.
        IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t124 ).
        ENDIF.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t125.
        IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t125 ).
        ENDIF.
        CREATE OBJECT t88->zlnt_json_ownkeys_70e5fd461788.
        t88->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t126) = |key|.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
        ENDIF.
        DATA(t128) = |title|.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t129.
        IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
        ENDIF.
        DATA(t130) = |shortDescription|.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t130 p1 = t131 ).
        ENDIF.
        DATA(t132) = |extendedInformation|.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t132 p1 = t133 ).
        ENDIF.
        DATA(t134) = |tags|.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t134 p1 = t135 ).
        ENDIF.
        t87 = t88->key.
        DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t137) = me->conf.
        t136 = t137->zlnt_view_read_sr_15c06369f827( ).
        t83 = zcl_lnt_issue=>at_row( i_file = t84 i_row = t85 i_message_26cb = t86 i_key = t87 i_severity = t136 ).
        t82->load( ).
        APPEND t83 TO t82->items.
        t82->save( ).
      ENDIF.
    ENDDO.
    DATA(t138) = t5.
    result = t138.

  ENDMETHOD.

  METHOD run_table.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_table.
    DATA(t9) = t1.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA t13 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA(t14) = t8.
    t13 = t14->parsed_data.
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    t15 = t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = t12.
    IF t18 IS INITIAL.
      t17 = abap_true.
    ENDIF.
    t11 = t17.
    IF t11 = abap_true.
      DATA(t19) = t8.
      t19->parse_xml( ).
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA t22 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA(t23) = t8.
    t22 = t23->parsed_data.
    t21 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = t21.
    IF t26 IS INITIAL.
      t25 = abap_true.
    ENDIF.
    IF t25 = abap_true.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t27.
      t24 = t27.
    ELSE.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t29 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA(t30) = t21.
      t29 = t30.
      t28 = t29->fields_464c.
      t24 = t28.
    ENDIF.
    t20 = t24.
    t10 = t20.
    t7 = t10.
    t6 = t7.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t31.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = t6.
    IF t33 IS INITIAL.
      t32 = abap_true.
    ENDIF.
    IF t32 = abap_true.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t34.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t36) = t6.
      t35 = t36.
      t31 = t35.
    ENDIF.
    t5 = t31.
    DATA t37 TYPE REF TO zcl_lnt_shape_e534171c.
    CLEAR t37.
    DATA t38 TYPE REF TO object.
    CLEAR t38.
    DATA(t39) = VALUE i( ).
    DO.
      t5->load( ).
      IF t39 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t38.
      READ TABLE t5->items INDEX t39 + 1 INTO t38.
      t39 = t39 + 1.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      CLEAR t37.
      IF t38 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t40 ?= t38.
        DATA t41 TYPE REF TO object.
        t41 = t40->as_ref( ).
        t37 ?= t41.
      ELSE.
        t37 ?= t38.
      ENDIF.
      DATA(t42) = VALUE abap_bool( ).
      DATA(t43) = VALUE abap_bool( ).
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t45) = t37.
      t44 = t45->datatype_2bc5.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA(t47) = abap_true.
      IF t47 = abap_true.
        DATA(t48) = |QUAN|.
        DATA(t49) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t49->has = abap_true.
        t49->value = t48.
        t46 = t49.
      ELSE.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t50.
        t46 = t50.
      ENDIF.
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = VALUE abap_bool( ).
      IF t44 IS BOUND.
        t51 = t44->has.
      ENDIF.
      IF t46 IS BOUND.
        t52 = t46->has.
      ENDIF.
      IF t51 = t52.
        IF t51 = abap_false.
          t43 = abap_true.
        ELSEIF t44->value = t46->value.
          t43 = abap_true.
        ENDIF.
      ENDIF.
      t42 = t43.
      IF t43 = abap_true.
        DATA(t53) = VALUE abap_bool( ).
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = VALUE abap_bool( ).
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t59) = t37.
        t58 = t59->reftable.
        t57 = t58.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        DATA(t61) = VALUE abap_bool( ).
        DATA(t62) = t57.
        IF t62 IS INITIAL.
          t61 = abap_true.
        ELSEIF t62->has = abap_false.
          t61 = abap_true.
        ENDIF.
        IF t61 = abap_true.
          DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t63.
          t60 = t63.
        ELSE.
          DATA(t64) = VALUE string( ).
          DATA t65 TYPE string.
          DATA(t66) = t57.
          t65 = t66->value.
          DATA(t67) = strlen( t65 ).
          DATA t68 TYPE i.
          DATA t69 TYPE i.
          t68 = 0.
          t69 = t67.
          DATA(t70) = VALUE i( ).
          DATA(t71) = VALUE i( ).
          DATA(t72) = VALUE string( ).
          WHILE t68 < t69.
            t71 = t68.
            t72 = t65+t71(1).
            DATA t73 TYPE c LENGTH 1.
            CLEAR t73.
            DATA(t74) = VALUE xstring( ).
            DATA t75 TYPE x LENGTH 1.
            CLEAR t75.
            DATA t76 TYPE x LENGTH 1.
            CLEAR t76.
            DATA(t77) = VALUE i( ).
            t73 = t72.
            t70 = cl_abap_conv_out_ce=>uccpi( t73 ).
            IF t70 >= 255.
              IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
                zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t72 IMPORTING buffer = t74 ).
              t75 = t74(1).
              t76 = t74+1(1).
              t70 = t75.
              t77 = t76.
              t70 = t70 + t77 * 256.
            ENDIF.
            IF t70 = 9 OR t70 = 10 OR t70 = 11 OR t70 = 12 OR t70 = 13 OR t70 = 32 OR t70 = 160 OR t70 = 5760 OR t70 = 8232 OR t70 = 8233 OR t70 = 8239 OR t70 = 8287 OR t70 = 12288 OR t70 = 65279 OR t70 >= 8192 AND t70 <= 8202.
              t68 = t68 + 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          DATA(t78) = VALUE i( ).
          DATA(t79) = VALUE i( ).
          DATA(t80) = VALUE string( ).
          WHILE t69 > t68.
            t79 = t69 - 1.
            t80 = t65+t79(1).
            DATA t81 TYPE c LENGTH 1.
            CLEAR t81.
            DATA(t82) = VALUE xstring( ).
            DATA t83 TYPE x LENGTH 1.
            CLEAR t83.
            DATA t84 TYPE x LENGTH 1.
            CLEAR t84.
            DATA(t85) = VALUE i( ).
            t81 = t80.
            t78 = cl_abap_conv_out_ce=>uccpi( t81 ).
            IF t78 >= 255.
              IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
                zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t80 IMPORTING buffer = t82 ).
              t83 = t82(1).
              t84 = t82+1(1).
              t78 = t83.
              t85 = t84.
              t78 = t78 + t85 * 256.
            ENDIF.
            IF t78 = 9 OR t78 = 10 OR t78 = 11 OR t78 = 12 OR t78 = 13 OR t78 = 32 OR t78 = 160 OR t78 = 5760 OR t78 = 8232 OR t78 = 8233 OR t78 = 8239 OR t78 = 8287 OR t78 = 12288 OR t78 = 65279 OR t78 >= 8192 AND t78 <= 8202.
              t69 = t69 - 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          IF t69 > t68.
            t67 = t69 - t68.
            t64 = t65+t68(t67).
          ELSE.
            CLEAR t64.
          ENDIF.
          DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t86->has = abap_true.
          t86->value = t64.
          t60 = t86.
        ENDIF.
        t56 = t60.
        IF t56 IS BOUND.
          IF t56->has = abap_true.
            t55 = xsdbool( strlen( t56->value ) > 0 ).
          ENDIF.
        ENDIF.
        t54 = xsdbool( t55 = abap_false ).
        t53 = t54.
        IF t54 = abap_false.
          DATA(t87) = VALUE abap_bool( ).
          DATA(t88) = VALUE abap_bool( ).
          DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t89.
          DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t92) = t37.
          t91 = t92->reffield.
          t90 = t91.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t93.
          DATA(t94) = VALUE abap_bool( ).
          DATA(t95) = t90.
          IF t95 IS INITIAL.
            t94 = abap_true.
          ELSEIF t95->has = abap_false.
            t94 = abap_true.
          ENDIF.
          IF t94 = abap_true.
            DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t96.
            t93 = t96.
          ELSE.
            DATA(t97) = VALUE string( ).
            DATA t98 TYPE string.
            DATA(t99) = t90.
            t98 = t99->value.
            DATA(t100) = strlen( t98 ).
            DATA t101 TYPE i.
            DATA t102 TYPE i.
            t101 = 0.
            t102 = t100.
            DATA(t103) = VALUE i( ).
            DATA(t104) = VALUE i( ).
            DATA(t105) = VALUE string( ).
            WHILE t101 < t102.
              t104 = t101.
              t105 = t98+t104(1).
              DATA t106 TYPE c LENGTH 1.
              CLEAR t106.
              DATA(t107) = VALUE xstring( ).
              DATA t108 TYPE x LENGTH 1.
              CLEAR t108.
              DATA t109 TYPE x LENGTH 1.
              CLEAR t109.
              DATA(t110) = VALUE i( ).
              t106 = t105.
              t103 = cl_abap_conv_out_ce=>uccpi( t106 ).
              IF t103 >= 255.
                IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
                  zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                ENDIF.
                zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t105 IMPORTING buffer = t107 ).
                t108 = t107(1).
                t109 = t107+1(1).
                t103 = t108.
                t110 = t109.
                t103 = t103 + t110 * 256.
              ENDIF.
              IF t103 = 9 OR t103 = 10 OR t103 = 11 OR t103 = 12 OR t103 = 13 OR t103 = 32 OR t103 = 160 OR t103 = 5760 OR t103 = 8232 OR t103 = 8233 OR t103 = 8239 OR t103 = 8287 OR t103 = 12288 OR t103 = 65279 OR t103 >= 8192 AND t103 <= 8202.
                t101 = t101 + 1.
              ELSE.
                EXIT.
              ENDIF.
            ENDWHILE.
            DATA(t111) = VALUE i( ).
            DATA(t112) = VALUE i( ).
            DATA(t113) = VALUE string( ).
            WHILE t102 > t101.
              t112 = t102 - 1.
              t113 = t98+t112(1).
              DATA t114 TYPE c LENGTH 1.
              CLEAR t114.
              DATA(t115) = VALUE xstring( ).
              DATA t116 TYPE x LENGTH 1.
              CLEAR t116.
              DATA t117 TYPE x LENGTH 1.
              CLEAR t117.
              DATA(t118) = VALUE i( ).
              t114 = t113.
              t111 = cl_abap_conv_out_ce=>uccpi( t114 ).
              IF t111 >= 255.
                IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
                  zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                ENDIF.
                zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t113 IMPORTING buffer = t115 ).
                t116 = t115(1).
                t117 = t115+1(1).
                t111 = t116.
                t118 = t117.
                t111 = t111 + t118 * 256.
              ENDIF.
              IF t111 = 9 OR t111 = 10 OR t111 = 11 OR t111 = 12 OR t111 = 13 OR t111 = 32 OR t111 = 160 OR t111 = 5760 OR t111 = 8232 OR t111 = 8233 OR t111 = 8239 OR t111 = 8287 OR t111 = 12288 OR t111 = 65279 OR t111 >= 8192 AND t111 <= 8202.
                t102 = t102 - 1.
              ELSE.
                EXIT.
              ENDIF.
            ENDWHILE.
            IF t102 > t101.
              t100 = t102 - t101.
              t97 = t98+t101(t100).
            ELSE.
              CLEAR t97.
            ENDIF.
            DATA(t119) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t119->has = abap_true.
            t119->value = t97.
            t93 = t119.
          ENDIF.
          t89 = t93.
          IF t89 IS BOUND.
            IF t89->has = abap_true.
              t88 = xsdbool( strlen( t89->value ) > 0 ).
            ENDIF.
          ENDIF.
          t87 = xsdbool( t88 = abap_false ).
          t53 = t87.
        ENDIF.
        t42 = t53.
      ENDIF.
      IF t42 = abap_true.
        DATA(t120) = VALUE string( ).
        DATA(t121) = VALUE string( ).
        DATA(t122) = VALUE string( ).
        DATA(t123) = |QUAN field |.
        DATA(t124) = VALUE string( ).
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t127) = t37.
        t126 = t127->fieldname.
        t125 = t126.
        DATA(t128) = VALUE string( ).
        DATA(t129) = VALUE abap_bool( ).
        DATA(t130) = t125.
        IF t130 IS INITIAL.
          t129 = abap_true.
        ELSEIF t130->has = abap_false.
          t129 = abap_true.
        ENDIF.
        IF t129 = abap_true.
          DATA(t131) = |undefined|.
          t128 = t131.
        ELSE.
          DATA t132 TYPE string.
          DATA(t133) = t125.
          t132 = t133->value.
          t128 = t132.
        ENDIF.
        t124 = t128.
        DATA(t134) = strlen( t123 ).
        t122 = |{ t123 }{ t124 }|.
        DATA(t135) = | must have REFTABLE and REFFIELD set|.
        DATA(t136) = strlen( t122 ).
        t121 = |{ t122 }{ t135 }|.
        t120 = t121.
        DATA(t137) = t3.
        DATA t138 TYPE REF TO zcl_lnt_issue.
        CLEAR t138.
        DATA(t139) = t2.
        DATA(t140) = CONV f( 1 ).
        DATA(t141) = t120.
        DATA(t142) = VALUE string( ).
        DATA t143 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t143.
        DATA t144 TYPE string.
        DATA(t145) = |xml_consistency|.
        t144 = t145.
        DATA t146 TYPE string.
        DATA(t147) = |XML consistency|.
        t146 = t147.
        DATA t148 TYPE string.
        DATA(t149) = |Checks the consistency of main XML files|.
        t148 = t149.
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t150.
        DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t151.
        DATA(t152) = abap_true.
        IF t152 = abap_true.
          DATA(t153) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t153 = t153 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t153 = t153 && |ce table and field values\n* Transparent TABL objects have de|.
          t153 = t153 && |livery class and size category set\n* Lock parameter names in|.
          t153 = t153 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t153 = t153 && | do not exceed maximum allowed length.|.
          DATA(t154) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t154->has = abap_true.
          t154->value = t153.
          t151 = t154.
        ELSE.
          DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t155.
          t151 = t155.
        ENDIF.
        t150 = t151.
        DATA t156 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t156.
        DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t157.
        DATA(t158) = abap_true.
        IF t158 = abap_true.
          DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t160 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t161 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t161.
          t160 = t161.
          DATA(t162) = t160.
          DATA(t163) = |Naming|.
          t162->load( ).
          APPEND t163 TO t162->items.
          t162->save( ).
          DATA(t164) = t160.
          DATA(t165) = |Syntax|.
          t164->load( ).
          APPEND t165 TO t164->items.
          t164->save( ).
          DATA(t166) = t160.
          t159 = t166.
          t157 = t159.
        ELSE.
          DATA t167 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t167.
          t157 = t167.
        ENDIF.
        t156 = t157.
        DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t169.
        t168 = t169.
        DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t171.
        t170 = t171.
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t173.
        t172 = t173.
        DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t175.
        t174 = t175.
        t143 = NEW zcl_lnt_irule_metadata( i_key = t144 i_title = t146 i_short_description = t148 i_bad_example = t168 i_good_example = t170 i_extended_information = t150 i_tags = t156 i_pragma = t172 i_pseudo_comment = t174 ).
        CREATE OBJECT t143->zlnt_view_ownkeys_b0e8086400eb.
        t143->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t176.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t176 ).
        ENDIF.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t177 ).
        ENDIF.
        DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t178.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t178 ).
        ENDIF.
        DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t179.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t179 ).
        ENDIF.
        DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t180.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t180 ).
        ENDIF.
        CREATE OBJECT t143->zlnt_json_ownkeys_70e5fd461788.
        t143->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t181) = |key|.
        DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t182.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t181 p1 = t182 ).
        ENDIF.
        DATA(t183) = |title|.
        DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t184.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
        ENDIF.
        DATA(t185) = |shortDescription|.
        DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t186.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
        ENDIF.
        DATA(t187) = |extendedInformation|.
        DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t188.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t187 p1 = t188 ).
        ENDIF.
        DATA(t189) = |tags|.
        DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t190.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t189 p1 = t190 ).
        ENDIF.
        t142 = t143->key.
        DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t192) = me->conf.
        t191 = t192->zlnt_view_read_sr_15c06369f827( ).
        t138 = zcl_lnt_issue=>at_row( i_file = t139 i_row = t140 i_message_26cb = t141 i_key = t142 i_severity = t191 ).
        t137->load( ).
        APPEND t138 TO t137->items.
        t137->save( ).
      ENDIF.
    ENDDO.
    DATA(t193) = VALUE abap_bool( ).
    DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t194.
    DATA t195 TYPE REF TO zcl_lnt_table.
    DATA(t196) = t1.
    t195 = t196.
    DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t197.
    DATA(t198) = VALUE abap_bool( ).
    DATA t199 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA t200 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA(t201) = t195.
    t200 = t201->parsed_data.
    t199 = t200.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    t202 = t203.
    DATA(t204) = VALUE abap_bool( ).
    DATA(t205) = t199.
    IF t205 IS INITIAL.
      t204 = abap_true.
    ENDIF.
    t198 = t204.
    IF t198 = abap_true.
      DATA(t206) = t195.
      t206->parse_xml( ).
    ENDIF.
    DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t207.
    DATA t208 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA t209 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA(t210) = t195.
    t209 = t210->parsed_data.
    t208 = t209.
    DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t211.
    DATA(t212) = VALUE abap_bool( ).
    DATA(t213) = t208.
    IF t213 IS INITIAL.
      t212 = abap_true.
    ENDIF.
    IF t212 = abap_true.
      DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t214.
      t211 = t214.
    ELSE.
      DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t216 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA(t217) = t208.
      t216 = t217.
      t215 = t216->table_category.
      t211 = t215.
    ENDIF.
    t207 = t211.
    t197 = t207.
    t194 = t197.
    DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t218.
    DATA(t219) = abap_true.
    IF t219 = abap_true.
      DATA(t220) = |TRANSP|.
      DATA(t221) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t221->has = abap_true.
      t221->value = t220.
      t218 = t221.
    ELSE.
      DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t222.
      t218 = t222.
    ENDIF.
    DATA(t223) = VALUE abap_bool( ).
    DATA(t224) = VALUE abap_bool( ).
    IF t194 IS BOUND.
      t223 = t194->has.
    ENDIF.
    IF t218 IS BOUND.
      t224 = t218->has.
    ENDIF.
    IF t223 = t224.
      IF t223 = abap_false.
        t193 = abap_true.
      ELSEIF t194->value = t218->value.
        t193 = abap_true.
      ENDIF.
    ENDIF.
    IF t193 = abap_true.
      DATA(t225) = VALUE abap_bool( ).
      DATA(t226) = VALUE abap_bool( ).
      DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t227.
      DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t228.
      DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t229.
      DATA t230 TYPE REF TO zcl_lnt_table.
      DATA(t231) = t1.
      t230 = t231.
      DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t232.
      DATA(t233) = VALUE abap_bool( ).
      DATA t234 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA t235 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA(t236) = t230.
      t235 = t236->parsed_data.
      t234 = t235.
      DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t238.
      t237 = t238.
      DATA(t239) = VALUE abap_bool( ).
      DATA(t240) = t234.
      IF t240 IS INITIAL.
        t239 = abap_true.
      ENDIF.
      t233 = t239.
      IF t233 = abap_true.
        DATA(t241) = t230.
        t241->parse_xml( ).
      ENDIF.
      DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t242.
      DATA t243 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA t244 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA(t245) = t230.
      t244 = t245->parsed_data.
      t243 = t244.
      DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t246.
      DATA(t247) = VALUE abap_bool( ).
      DATA(t248) = t243.
      IF t248 IS INITIAL.
        t247 = abap_true.
      ENDIF.
      IF t247 = abap_true.
        DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t249.
        t246 = t249.
      ELSE.
        DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t251 TYPE REF TO zcl_lnt_shape_b90fc0d5.
        DATA(t252) = t243.
        t251 = t252.
        t250 = t251->delivery_class.
        t246 = t250.
      ENDIF.
      t242 = t246.
      t232 = t242.
      t229 = t232.
      t228 = t229.
      DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t253.
      DATA(t254) = VALUE abap_bool( ).
      DATA(t255) = t228.
      IF t255 IS INITIAL.
        t254 = abap_true.
      ELSEIF t255->has = abap_false.
        t254 = abap_true.
      ENDIF.
      IF t254 = abap_true.
        DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t256.
        t253 = t256.
      ELSE.
        DATA(t257) = VALUE string( ).
        DATA t258 TYPE string.
        DATA(t259) = t228.
        t258 = t259->value.
        DATA(t260) = strlen( t258 ).
        DATA t261 TYPE i.
        DATA t262 TYPE i.
        t261 = 0.
        t262 = t260.
        DATA(t263) = VALUE i( ).
        DATA(t264) = VALUE i( ).
        DATA(t265) = VALUE string( ).
        WHILE t261 < t262.
          t264 = t261.
          t265 = t258+t264(1).
          DATA t266 TYPE c LENGTH 1.
          CLEAR t266.
          DATA(t267) = VALUE xstring( ).
          DATA t268 TYPE x LENGTH 1.
          CLEAR t268.
          DATA t269 TYPE x LENGTH 1.
          CLEAR t269.
          DATA(t270) = VALUE i( ).
          t266 = t265.
          t263 = cl_abap_conv_out_ce=>uccpi( t266 ).
          IF t263 >= 255.
            IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
              zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t265 IMPORTING buffer = t267 ).
            t268 = t267(1).
            t269 = t267+1(1).
            t263 = t268.
            t270 = t269.
            t263 = t263 + t270 * 256.
          ENDIF.
          IF t263 = 9 OR t263 = 10 OR t263 = 11 OR t263 = 12 OR t263 = 13 OR t263 = 32 OR t263 = 160 OR t263 = 5760 OR t263 = 8232 OR t263 = 8233 OR t263 = 8239 OR t263 = 8287 OR t263 = 12288 OR t263 = 65279 OR t263 >= 8192 AND t263 <= 8202.
            t261 = t261 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        DATA(t271) = VALUE i( ).
        DATA(t272) = VALUE i( ).
        DATA(t273) = VALUE string( ).
        WHILE t262 > t261.
          t272 = t262 - 1.
          t273 = t258+t272(1).
          DATA t274 TYPE c LENGTH 1.
          CLEAR t274.
          DATA(t275) = VALUE xstring( ).
          DATA t276 TYPE x LENGTH 1.
          CLEAR t276.
          DATA t277 TYPE x LENGTH 1.
          CLEAR t277.
          DATA(t278) = VALUE i( ).
          t274 = t273.
          t271 = cl_abap_conv_out_ce=>uccpi( t274 ).
          IF t271 >= 255.
            IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
              zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t273 IMPORTING buffer = t275 ).
            t276 = t275(1).
            t277 = t275+1(1).
            t271 = t276.
            t278 = t277.
            t271 = t271 + t278 * 256.
          ENDIF.
          IF t271 = 9 OR t271 = 10 OR t271 = 11 OR t271 = 12 OR t271 = 13 OR t271 = 32 OR t271 = 160 OR t271 = 5760 OR t271 = 8232 OR t271 = 8233 OR t271 = 8239 OR t271 = 8287 OR t271 = 12288 OR t271 = 65279 OR t271 >= 8192 AND t271 <= 8202.
            t262 = t262 - 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t262 > t261.
          t260 = t262 - t261.
          t257 = t258+t261(t260).
        ELSE.
          CLEAR t257.
        ENDIF.
        DATA(t279) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t279->has = abap_true.
        t279->value = t257.
        t253 = t279.
      ENDIF.
      t227 = t253.
      IF t227 IS BOUND.
        IF t227->has = abap_true.
          t226 = xsdbool( strlen( t227->value ) > 0 ).
        ENDIF.
      ENDIF.
      t225 = xsdbool( t226 = abap_false ).
      IF t225 = abap_true.
        DATA t280 TYPE string.
        DATA(t281) = |Transparent table must have delivery class(CONTFLAG in DD02V|.
        t281 = t281 && |) set|.
        t280 = t281.
        DATA(t282) = t3.
        DATA t283 TYPE REF TO zcl_lnt_issue.
        CLEAR t283.
        DATA(t284) = t2.
        DATA(t285) = CONV f( 1 ).
        DATA(t286) = t280.
        DATA(t287) = VALUE string( ).
        DATA t288 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t288.
        DATA t289 TYPE string.
        DATA(t290) = |xml_consistency|.
        t289 = t290.
        DATA t291 TYPE string.
        DATA(t292) = |XML consistency|.
        t291 = t292.
        DATA t293 TYPE string.
        DATA(t294) = |Checks the consistency of main XML files|.
        t293 = t294.
        DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t295.
        DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t296.
        DATA(t297) = abap_true.
        IF t297 = abap_true.
          DATA(t298) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t298 = t298 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t298 = t298 && |ce table and field values\n* Transparent TABL objects have de|.
          t298 = t298 && |livery class and size category set\n* Lock parameter names in|.
          t298 = t298 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t298 = t298 && | do not exceed maximum allowed length.|.
          DATA(t299) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t299->has = abap_true.
          t299->value = t298.
          t296 = t299.
        ELSE.
          DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t300.
          t296 = t300.
        ENDIF.
        t295 = t296.
        DATA t301 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t301.
        DATA t302 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t302.
        DATA(t303) = abap_true.
        IF t303 = abap_true.
          DATA t304 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t305 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t306 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t306.
          t305 = t306.
          DATA(t307) = t305.
          DATA(t308) = |Naming|.
          t307->load( ).
          APPEND t308 TO t307->items.
          t307->save( ).
          DATA(t309) = t305.
          DATA(t310) = |Syntax|.
          t309->load( ).
          APPEND t310 TO t309->items.
          t309->save( ).
          DATA(t311) = t305.
          t304 = t311.
          t302 = t304.
        ELSE.
          DATA t312 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t312.
          t302 = t312.
        ENDIF.
        t301 = t302.
        DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t314.
        t313 = t314.
        DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t316.
        t315 = t316.
        DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t318.
        t317 = t318.
        DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t320.
        t319 = t320.
        t288 = NEW zcl_lnt_irule_metadata( i_key = t289 i_title = t291 i_short_description = t293 i_bad_example = t313 i_good_example = t315 i_extended_information = t295 i_tags = t301 i_pragma = t317 i_pseudo_comment = t319 ).
        CREATE OBJECT t288->zlnt_view_ownkeys_b0e8086400eb.
        t288->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t321.
        IF t288->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t321 ).
        ENDIF.
        DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t322.
        IF t288->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t322 ).
        ENDIF.
        DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t323.
        IF t288->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t323 ).
        ENDIF.
        DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t324.
        IF t288->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t324 ).
        ENDIF.
        DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t325.
        IF t288->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t325 ).
        ENDIF.
        CREATE OBJECT t288->zlnt_json_ownkeys_70e5fd461788.
        t288->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t326) = |key|.
        DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t327.
        IF t288->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = t326 p1 = t327 ).
        ENDIF.
        DATA(t328) = |title|.
        DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t329.
        IF t288->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = t328 p1 = t329 ).
        ENDIF.
        DATA(t330) = |shortDescription|.
        DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t331.
        IF t288->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = t330 p1 = t331 ).
        ENDIF.
        DATA(t332) = |extendedInformation|.
        DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t333.
        IF t288->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = t332 p1 = t333 ).
        ENDIF.
        DATA(t334) = |tags|.
        DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t335.
        IF t288->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = t334 p1 = t335 ).
        ENDIF.
        t287 = t288->key.
        DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t337) = me->conf.
        t336 = t337->zlnt_view_read_sr_15c06369f827( ).
        t283 = zcl_lnt_issue=>at_row( i_file = t284 i_row = t285 i_message_26cb = t286 i_key = t287 i_severity = t336 ).
        t282->load( ).
        APPEND t283 TO t282->items.
        t282->save( ).
      ENDIF.
      DATA(t338) = VALUE abap_bool( ).
      DATA(t339) = VALUE abap_bool( ).
      DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t340.
      DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t341.
      DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t342.
      DATA t343 TYPE REF TO zcl_lnt_table.
      DATA(t344) = t1.
      t343 = t344.
      DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t345.
      DATA(t346) = VALUE abap_bool( ).
      DATA t347 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA t348 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA(t349) = t343.
      t348 = t349->parsed_data.
      t347 = t348.
      DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t351.
      t350 = t351.
      DATA(t352) = VALUE abap_bool( ).
      DATA(t353) = t347.
      IF t353 IS INITIAL.
        t352 = abap_true.
      ENDIF.
      t346 = t352.
      IF t346 = abap_true.
        DATA(t354) = t343.
        t354->parse_xml( ).
      ENDIF.
      DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t355.
      DATA t356 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA t357 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA(t358) = t343.
      t357 = t358->parsed_data.
      t356 = t357.
      DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t359.
      DATA(t360) = VALUE abap_bool( ).
      DATA(t361) = t356.
      IF t361 IS INITIAL.
        t360 = abap_true.
      ENDIF.
      IF t360 = abap_true.
        DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t362.
        t359 = t362.
      ELSE.
        DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t364 TYPE REF TO zcl_lnt_shape_b90fc0d5.
        DATA(t365) = t356.
        t364 = t365.
        t363 = t364->size_category.
        t359 = t363.
      ENDIF.
      t355 = t359.
      t345 = t355.
      t342 = t345.
      t341 = t342.
      DATA t366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t366.
      DATA(t367) = VALUE abap_bool( ).
      DATA(t368) = t341.
      IF t368 IS INITIAL.
        t367 = abap_true.
      ELSEIF t368->has = abap_false.
        t367 = abap_true.
      ENDIF.
      IF t367 = abap_true.
        DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t369.
        t366 = t369.
      ELSE.
        DATA(t370) = VALUE string( ).
        DATA t371 TYPE string.
        DATA(t372) = t341.
        t371 = t372->value.
        DATA(t373) = strlen( t371 ).
        DATA t374 TYPE i.
        DATA t375 TYPE i.
        t374 = 0.
        t375 = t373.
        DATA(t376) = VALUE i( ).
        DATA(t377) = VALUE i( ).
        DATA(t378) = VALUE string( ).
        WHILE t374 < t375.
          t377 = t374.
          t378 = t371+t377(1).
          DATA t379 TYPE c LENGTH 1.
          CLEAR t379.
          DATA(t380) = VALUE xstring( ).
          DATA t381 TYPE x LENGTH 1.
          CLEAR t381.
          DATA t382 TYPE x LENGTH 1.
          CLEAR t382.
          DATA(t383) = VALUE i( ).
          t379 = t378.
          t376 = cl_abap_conv_out_ce=>uccpi( t379 ).
          IF t376 >= 255.
            IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
              zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t378 IMPORTING buffer = t380 ).
            t381 = t380(1).
            t382 = t380+1(1).
            t376 = t381.
            t383 = t382.
            t376 = t376 + t383 * 256.
          ENDIF.
          IF t376 = 9 OR t376 = 10 OR t376 = 11 OR t376 = 12 OR t376 = 13 OR t376 = 32 OR t376 = 160 OR t376 = 5760 OR t376 = 8232 OR t376 = 8233 OR t376 = 8239 OR t376 = 8287 OR t376 = 12288 OR t376 = 65279 OR t376 >= 8192 AND t376 <= 8202.
            t374 = t374 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        DATA(t384) = VALUE i( ).
        DATA(t385) = VALUE i( ).
        DATA(t386) = VALUE string( ).
        WHILE t375 > t374.
          t385 = t375 - 1.
          t386 = t371+t385(1).
          DATA t387 TYPE c LENGTH 1.
          CLEAR t387.
          DATA(t388) = VALUE xstring( ).
          DATA t389 TYPE x LENGTH 1.
          CLEAR t389.
          DATA t390 TYPE x LENGTH 1.
          CLEAR t390.
          DATA(t391) = VALUE i( ).
          t387 = t386.
          t384 = cl_abap_conv_out_ce=>uccpi( t387 ).
          IF t384 >= 255.
            IF zlnt_builtin_code_47a4f748f766 IS NOT BOUND.
              zlnt_builtin_code_47a4f748f766 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_47a4f748f766->convert( EXPORTING data = t386 IMPORTING buffer = t388 ).
            t389 = t388(1).
            t390 = t388+1(1).
            t384 = t389.
            t391 = t390.
            t384 = t384 + t391 * 256.
          ENDIF.
          IF t384 = 9 OR t384 = 10 OR t384 = 11 OR t384 = 12 OR t384 = 13 OR t384 = 32 OR t384 = 160 OR t384 = 5760 OR t384 = 8232 OR t384 = 8233 OR t384 = 8239 OR t384 = 8287 OR t384 = 12288 OR t384 = 65279 OR t384 >= 8192 AND t384 <= 8202.
            t375 = t375 - 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t375 > t374.
          t373 = t375 - t374.
          t370 = t371+t374(t373).
        ELSE.
          CLEAR t370.
        ENDIF.
        DATA(t392) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t392->has = abap_true.
        t392->value = t370.
        t366 = t392.
      ENDIF.
      t340 = t366.
      IF t340 IS BOUND.
        IF t340->has = abap_true.
          t339 = xsdbool( strlen( t340->value ) > 0 ).
        ENDIF.
      ENDIF.
      t338 = xsdbool( t339 = abap_false ).
      IF t338 = abap_true.
        DATA t393 TYPE string.
        DATA(t394) = |Transparent table must have size category(TABKAT in DD09L) s|.
        t394 = t394 && |et|.
        t393 = t394.
        DATA(t395) = t3.
        DATA t396 TYPE REF TO zcl_lnt_issue.
        CLEAR t396.
        DATA(t397) = t2.
        DATA(t398) = CONV f( 1 ).
        DATA(t399) = t393.
        DATA(t400) = VALUE string( ).
        DATA t401 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t401.
        DATA t402 TYPE string.
        DATA(t403) = |xml_consistency|.
        t402 = t403.
        DATA t404 TYPE string.
        DATA(t405) = |XML consistency|.
        t404 = t405.
        DATA t406 TYPE string.
        DATA(t407) = |Checks the consistency of main XML files|.
        t406 = t407.
        DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t408.
        DATA t409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t409.
        DATA(t410) = abap_true.
        IF t410 = abap_true.
          DATA(t411) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t411 = t411 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t411 = t411 && |ce table and field values\n* Transparent TABL objects have de|.
          t411 = t411 && |livery class and size category set\n* Lock parameter names in|.
          t411 = t411 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t411 = t411 && | do not exceed maximum allowed length.|.
          DATA(t412) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t412->has = abap_true.
          t412->value = t411.
          t409 = t412.
        ELSE.
          DATA t413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t413.
          t409 = t413.
        ENDIF.
        t408 = t409.
        DATA t414 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t414.
        DATA t415 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t415.
        DATA(t416) = abap_true.
        IF t416 = abap_true.
          DATA t417 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t418 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t419 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t419.
          t418 = t419.
          DATA(t420) = t418.
          DATA(t421) = |Naming|.
          t420->load( ).
          APPEND t421 TO t420->items.
          t420->save( ).
          DATA(t422) = t418.
          DATA(t423) = |Syntax|.
          t422->load( ).
          APPEND t423 TO t422->items.
          t422->save( ).
          DATA(t424) = t418.
          t417 = t424.
          t415 = t417.
        ELSE.
          DATA t425 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t425.
          t415 = t425.
        ENDIF.
        t414 = t415.
        DATA t426 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t427 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t427.
        t426 = t427.
        DATA t428 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t429.
        t428 = t429.
        DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t431.
        t430 = t431.
        DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t433 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t433.
        t432 = t433.
        t401 = NEW zcl_lnt_irule_metadata( i_key = t402 i_title = t404 i_short_description = t406 i_bad_example = t426 i_good_example = t428 i_extended_information = t408 i_tags = t414 i_pragma = t430 i_pseudo_comment = t432 ).
        CREATE OBJECT t401->zlnt_view_ownkeys_b0e8086400eb.
        t401->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t434.
        IF t401->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t434 ).
        ENDIF.
        DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t435.
        IF t401->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t435 ).
        ENDIF.
        DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t436.
        IF t401->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t436 ).
        ENDIF.
        DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t437.
        IF t401->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t437 ).
        ENDIF.
        DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t438.
        IF t401->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t438 ).
        ENDIF.
        CREATE OBJECT t401->zlnt_json_ownkeys_70e5fd461788.
        t401->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t439) = |key|.
        DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t440.
        IF t401->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t439 p1 = t440 ).
        ENDIF.
        DATA(t441) = |title|.
        DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t442.
        IF t401->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t441 p1 = t442 ).
        ENDIF.
        DATA(t443) = |shortDescription|.
        DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t444.
        IF t401->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t443 p1 = t444 ).
        ENDIF.
        DATA(t445) = |extendedInformation|.
        DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t446.
        IF t401->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t445 p1 = t446 ).
        ENDIF.
        DATA(t447) = |tags|.
        DATA t448 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t448.
        IF t401->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t447 p1 = t448 ).
        ENDIF.
        t400 = t401->key.
        DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t450) = me->conf.
        t449 = t450->zlnt_view_read_sr_15c06369f827( ).
        t396 = zcl_lnt_issue=>at_row( i_file = t397 i_row = t398 i_message_26cb = t399 i_key = t400 i_severity = t449 ).
        t395->load( ).
        APPEND t396 TO t395->items.
        t395->save( ).
      ENDIF.
    ENDIF.
    DATA(t451) = t3.
    result = t451.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_xml_consistency_conf( me->gt_cn_in_sr_rl_xm_cn_ts_xm_cns( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_xml_consistency_conf( me->gt_cn_in_sr_rl_xm_cn_ts_xm_cns( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_xml_consistency_conf.
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
        t2 = NEW zcl_lnt_xml_consistency_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_xm_cn_ts_xm_cns( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_xml_consistency.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_xml_cns_ts_xml_cns( i_reg_d009 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD fn_push.
    DATA(t1) = i_issues.
    DATA(t2) = i_issue.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t2.
    t3 = xsdbool( t4 IS BOUND ).
    IF t3 = abap_true.
      DATA(t5) = t1.
      DATA t6 TYPE REF TO zcl_lnt_issue.
      DATA(t7) = t2.
      t6 = t7.
      t5->load( ).
      APPEND t6 TO t5->items.
      t5->save( ).
    ENDIF.
  ENDMETHOD.

  METHOD fn_push_9491.
    DATA(t1) = i_issues.
    DATA(t2) = i_issue.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t2.
    t3 = xsdbool( t4 IS BOUND ).
    IF t3 = abap_true.
      DATA(t5) = t1.
      DATA t6 TYPE REF TO zcl_lnt_issue.
      DATA(t7) = t2.
      t6 = t7.
      t5->load( ).
      APPEND t6 TO t5->items.
      t5->save( ).
    ENDIF.
  ENDMETHOD.

  METHOD fn_push_10223.
    DATA(t1) = i_issues.
    DATA(t2) = i_issue.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t2.
    t3 = xsdbool( t4 IS BOUND ).
    IF t3 = abap_true.
      DATA(t5) = t1.
      DATA t6 TYPE REF TO zcl_lnt_issue.
      DATA(t7) = t2.
      t6 = t7.
      t5->load( ).
      APPEND t6 TO t5->items.
      t5->save( ).
    ENDIF.
  ENDMETHOD.

  METHOD fn_push_10744.
    DATA(t1) = i_issues.
    DATA(t2) = i_issue.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t2.
    t3 = xsdbool( t4 IS BOUND ).
    IF t3 = abap_true.
      DATA(t5) = t1.
      DATA t6 TYPE REF TO zcl_lnt_issue.
      DATA(t7) = t2.
      t6 = t7.
      t5->load( ).
      APPEND t6 TO t5->items.
      t5->save( ).
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1781_033e6836392a.
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
