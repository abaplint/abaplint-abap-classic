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
    me->conf = NEW zcl_lnt_xml_consistency_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |xml_consistency|.
    DATA t4 TYPE string.
    t4 = |XML consistency|.
    DATA t6 TYPE string.
    t6 = |Checks the consistency of main XML files|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
    t11 = t11 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
    t11 = t11 && |ce table and field values\n* Transparent TABL objects have de|.
    t11 = t11 && |livery class and size category set\n* Lock parameter names in|.
    t11 = t11 && | ENQU objects are max 16 characters\n* Texts and translations|.
    t11 = t11 && | do not exceed maximum allowed length.|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |Naming|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    DATA(t23) = |Syntax|.
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

  METHOD gt_cn_in_sr_rl_xm_cn_ts_xm_cns.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_xm_cn_ts_xm_cns.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_xml_cns_ts_xml_cns.
    DATA(t1) = i_reg_d009.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zif_lnt_file.
    DATA t5 TYPE REF TO zif_lnt_file.
    t5 = t1->get_xml_file( ).
    t4 = t5.
    DATA(t7) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7 = xsdbool( t4 IS INITIAL ).
    IF t7 = abap_true.
      result = t2.
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t16 = t1->get_xml( ).
    t15 = t16.
    DATA(t18) = VALUE abap_bool( ).
    IF t15 IS BOUND.
      IF t15->has = abap_true.
        t18 = xsdbool( strlen( t15->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t18 = abap_true.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t22 TYPE string.
      t22 = t15->value.
      t21 = zlnt_runtime_xmlv_61d3741de077=>validate( t22 ).
      t20 = t21.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = VALUE abap_bool( ).
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CREATE OBJECT t27.
      t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t27->bval = abap_true.
      IF t20 IS NOT BOUND.
        t25 = xsdbool( t27 IS NOT BOUND ).
      ELSE.
        t25 = t20->strict_equals( t27 ).
      ENDIF.
      t24 = xsdbool( t25 = abap_false ).
      IF t24 = abap_true.
        DATA t30 TYPE REF TO zcl_lnt_issue.
        DATA t31 TYPE REF TO zif_lnt_file.
        t31 = t4.
        DATA(t33) = CONV f( 1 ).
        DATA t34 TYPE string.
        DATA(t35) = |XML parser error: |.
        DATA t36 TYPE string.
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t40) = |err|.
        t38 = t20->get( p0 = t40 ).
        DATA(t41) = |msg|.
        t37 = t38->get( p0 = t41 ).
        t36 = t37->as_string( ).
        DATA(t42) = strlen( t35 ).
        t34 = |{ t35 }{ t36 }|.
        DATA(t43) = VALUE string( ).
        DATA t44 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t45 TYPE string.
        t45 = |xml_consistency|.
        DATA t47 TYPE string.
        t47 = |XML consistency|.
        DATA t49 TYPE string.
        t49 = |Checks the consistency of main XML files|.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t54) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
        t54 = t54 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
        t54 = t54 && |ce table and field values\n* Transparent TABL objects have de|.
        t54 = t54 && |livery class and size category set\n* Lock parameter names in|.
        t54 = t54 && | ENQU objects are max 16 characters\n* Texts and translations|.
        t54 = t54 && | do not exceed maximum allowed length.|.
        DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t55->has = abap_true.
        t55->value = t54.
        t51 = t55.
        DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t61 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t62.
        t61 = t62.
        DATA(t64) = |Naming|.
        t61->load( ).
        APPEND t64 TO t61->items.
        t61->save( ).
        DATA(t66) = |Syntax|.
        t61->load( ).
        APPEND t66 TO t61->items.
        t61->save( ).
        t57 = t61.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t44 = NEW zcl_lnt_irule_metadata( i_key = t45 i_title = t47 i_short_description = t49 i_bad_example = t69 i_good_example = t71 i_extended_information = t51 i_tags = t57 i_pragma = t73 i_pseudo_comment = t75 ).
        CREATE OBJECT t44->zlnt_view_ownkeys_b0e8086400eb.
        t44->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t77 ).
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t78 ).
        ENDIF.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t79 ).
        ENDIF.
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t80 ).
        ENDIF.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t81 ).
        ENDIF.
        CREATE OBJECT t44->zlnt_json_ownkeys_70e5fd461788.
        t44->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t82) = |key|.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t82 p1 = t83 ).
        DATA(t84) = |title|.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t84 p1 = t85 ).
        ENDIF.
        DATA(t86) = |shortDescription|.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
        ENDIF.
        DATA(t88) = |extendedInformation|.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t88 p1 = t89 ).
        ENDIF.
        DATA(t90) = |tags|.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t90 p1 = t91 ).
        ENDIF.
        t43 = t44->key.
        DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t92 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        t30 = zcl_lnt_issue=>at_row( i_file = t31 i_row = t33 i_message_26cb = t34 i_key = t43 i_severity = t92 ).
        t2->load( ).
        APPEND t30 TO t2->items.
        t2->save( ).
      ELSE.
        DATA t94 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t95 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t96 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t96.
        t95 = t96.
        DATA(t98) = |version|.
        t95->load( ).
        APPEND t98 TO t95->items.
        t95->save( ).
        DATA(t100) = |serializer_version|.
        t95->load( ).
        APPEND t100 TO t95->items.
        t95->save( ).
        t94 = t95.
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
          DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t109 TYPE string.
          t109 = t15->value.
          DATA t111 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t113 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t113.
          DATA t114 TYPE string.
          DATA t115 TYPE string.
          DATA(t116) = `<abapGit\b[^>]*\b`.
          DATA(t118) = strlen( t116 ).
          t115 = |{ t116 }{ t102 }|.
          DATA(t119) = |="([^"]+)"|.
          DATA(t120) = strlen( t115 ).
          t114 = |{ t115 }{ t119 }|.
          DATA(t121) = ||.
          CREATE OBJECT t113 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t114 flags = t121.
          t111 = t113->match( t109 ).
          t106 = t111.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          DATA(t123) = xsdbool( t106 IS INITIAL ).
          IF t123 = abap_true.
            CLEAR t122.
          ELSE.
            DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t127 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            t127 = t106.
            DATA(t129) = 1.
            t126 = t127->get( p0 = t129 ).
            t122 = t126.
          ENDIF.
          t104 = t122.
          DATA(t130) = VALUE abap_bool( ).
          DATA(t131) = VALUE abap_bool( ).
          DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t132 = t104.
          DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t134.
          DATA(t136) = VALUE abap_bool( ).
          DATA(t137) = VALUE abap_bool( ).
          IF t132 IS INITIAL.
            t137 = abap_true.
          ELSEIF t132->has = abap_false.
            t137 = abap_true.
          ENDIF.
          t136 = xsdbool( t137 = abap_false ).
          t131 = t136.
          t130 = t131.
          IF t131 = abap_true.
            DATA t140 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t142 TYPE string.
            t142 = t104->value.
            DATA t144 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t146 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            CLEAR t146.
            DATA(t147) = `^v\d\.\d\.\d$`.
            DATA(t148) = `^v[0-9]\.[0-9]\.[0-9]$`.
            DATA(t149) = ||.
            CREATE OBJECT t146 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t148 flags = t149.
            t146->source = t147.
            t144 = t146->match( t142 ).
            t140 = t144.
            t130 = xsdbool( t140 IS INITIAL ).
          ENDIF.
          IF t130 = abap_true.
            DATA t151 TYPE REF TO zcl_lnt_issue.
            CLEAR t151.
            DATA t152 TYPE REF TO zif_lnt_file.
            t152 = t4.
            DATA(t154) = CONV f( 1 ).
            DATA t155 TYPE string.
            DATA t156 TYPE string.
            DATA t157 TYPE string.
            DATA t158 TYPE string.
            DATA(t159) = |Unexpected abapGit |.
            DATA(t161) = strlen( t159 ).
            t158 = |{ t159 }{ t102 }|.
            DATA(t162) = | "|.
            DATA(t163) = strlen( t158 ).
            t157 = |{ t158 }{ t162 }|.
            DATA t164 TYPE string.
            t164 = t104->value.
            DATA(t166) = strlen( t157 ).
            t156 = |{ t157 }{ t164 }|.
            DATA(t167) = |"|.
            DATA(t168) = strlen( t156 ).
            t155 = |{ t156 }{ t167 }|.
            DATA(t169) = VALUE string( ).
            DATA t170 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t170.
            DATA t171 TYPE string.
            t171 = |xml_consistency|.
            DATA t173 TYPE string.
            t173 = |XML consistency|.
            DATA t175 TYPE string.
            t175 = |Checks the consistency of main XML files|.
            DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t177.
            DATA(t180) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
            t180 = t180 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
            t180 = t180 && |ce table and field values\n* Transparent TABL objects have de|.
            t180 = t180 && |livery class and size category set\n* Lock parameter names in|.
            t180 = t180 && | ENQU objects are max 16 characters\n* Texts and translations|.
            t180 = t180 && | do not exceed maximum allowed length.|.
            DATA(t181) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t181->has = abap_true.
            t181->value = t180.
            t177 = t181.
            DATA t183 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t183.
            DATA t187 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t188 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t188.
            t187 = t188.
            DATA(t190) = |Naming|.
            t187->load( ).
            APPEND t190 TO t187->items.
            t187->save( ).
            DATA(t192) = |Syntax|.
            t187->load( ).
            APPEND t192 TO t187->items.
            t187->save( ).
            t183 = t187.
            DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t195.
            DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t197.
            DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t199.
            DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t201.
            t170 = NEW zcl_lnt_irule_metadata( i_key = t171 i_title = t173 i_short_description = t175 i_bad_example = t195 i_good_example = t197 i_extended_information = t177 i_tags = t183 i_pragma = t199 i_pseudo_comment = t201 ).
            CREATE OBJECT t170->zlnt_view_ownkeys_b0e8086400eb.
            t170->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t203.
            t170->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t203 ).
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
            t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = t208 p1 = t209 ).
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
            t218 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            t151 = zcl_lnt_issue=>at_row( i_file = t152 i_row = t154 i_message_26cb = t155 i_key = t169 i_severity = t218 ).
            t2->load( ).
            APPEND t151 TO t2->items.
            t2->save( ).
          ENDIF.
        ENDDO.
      ENDIF.
    ENDIF.
    DATA t220 TYPE abap_bool.
    t220 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_class ).
    IF t220 = abap_true.
      DATA(t222) = VALUE i( ).
      DATA t223 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t224 TYPE REF TO zcl_lnt_class.
      DATA t226 TYPE REF TO object.
      t226 = t1.
      t224 ?= t226.
      DATA t227 TYPE REF TO zif_lnt_file.
      t227 = t4.
      t223 = me->run_class( i_obj_1ed0 = t224 i_file = t227 ).
      DATA t229 TYPE REF TO zcl_lnt_issue.
      DATA t230 TYPE REF TO object.
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
        t2->load( ).
        APPEND t229 TO t2->items.
        t2->save( ).
      ENDDO.
      DATA t236 TYPE i.
      t2->load( ).
      t236 = lines( t2->items ).
      t222 = t236.
    ELSE.
      DATA t238 TYPE abap_bool.
      t238 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_interface ).
      IF t238 = abap_true.
        DATA(t240) = VALUE i( ).
        DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t242 TYPE REF TO zcl_lnt_ob_interface.
        DATA t244 TYPE REF TO object.
        t244 = t1.
        t242 ?= t244.
        DATA t245 TYPE REF TO zif_lnt_file.
        t245 = t4.
        t241 = me->run_interface( i_obj_1ed0 = t242 i_file = t245 ).
        DATA t247 TYPE REF TO zcl_lnt_issue.
        DATA t248 TYPE REF TO object.
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
          t2->load( ).
          APPEND t247 TO t2->items.
          t2->save( ).
        ENDDO.
        DATA t254 TYPE i.
        t2->load( ).
        t254 = lines( t2->items ).
        t240 = t254.
      ELSE.
        DATA t256 TYPE abap_bool.
        t256 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_data_element ).
        IF t256 = abap_true.
          DATA(t258) = VALUE i( ).
          DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t260 TYPE REF TO zcl_lnt_data_element.
          DATA t262 TYPE REF TO object.
          t262 = t1.
          t260 ?= t262.
          DATA t263 TYPE REF TO zif_lnt_file.
          t263 = t4.
          t259 = me->run_data_element( i_obj_1ed0 = t260 i_file = t263 ).
          DATA t265 TYPE REF TO zcl_lnt_issue.
          DATA t266 TYPE REF TO object.
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
            t2->load( ).
            APPEND t265 TO t2->items.
            t2->save( ).
          ENDDO.
          DATA t272 TYPE i.
          t2->load( ).
          t272 = lines( t2->items ).
          t258 = t272.
        ELSE.
          DATA t274 TYPE abap_bool.
          t274 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_domain ).
          IF t274 = abap_true.
            DATA(t276) = VALUE i( ).
            DATA t277 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t278 TYPE REF TO zcl_lnt_domain.
            DATA t280 TYPE REF TO object.
            t280 = t1.
            t278 ?= t280.
            DATA t281 TYPE REF TO zif_lnt_file.
            t281 = t4.
            t277 = me->run_domain( i_obj_1ed0 = t278 i_file = t281 ).
            DATA t283 TYPE REF TO zcl_lnt_issue.
            DATA t284 TYPE REF TO object.
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
              t2->load( ).
              APPEND t283 TO t2->items.
              t2->save( ).
            ENDDO.
            DATA t290 TYPE i.
            t2->load( ).
            t290 = lines( t2->items ).
            t276 = t290.
          ELSE.
            DATA t292 TYPE abap_bool.
            t292 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_transaction ).
            IF t292 = abap_true.
              DATA(t294) = VALUE i( ).
              DATA t295 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t296 TYPE REF TO zcl_lnt_transaction.
              DATA t298 TYPE REF TO object.
              t298 = t1.
              t296 ?= t298.
              DATA t299 TYPE REF TO zif_lnt_file.
              t299 = t4.
              t295 = me->run_transaction( i_obj_1ed0 = t296 i_file = t299 ).
              DATA t301 TYPE REF TO zcl_lnt_issue.
              DATA t302 TYPE REF TO object.
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
                t2->load( ).
                APPEND t301 TO t2->items.
                t2->save( ).
              ENDDO.
              DATA t308 TYPE i.
              t2->load( ).
              t308 = lines( t2->items ).
              t294 = t308.
            ELSE.
              DATA t310 TYPE abap_bool.
              t310 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_message_class ).
              IF t310 = abap_true.
                DATA(t312) = VALUE i( ).
                DATA t313 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA t314 TYPE REF TO zcl_lnt_ob_message_class.
                DATA t316 TYPE REF TO object.
                t316 = t1.
                t314 ?= t316.
                DATA t317 TYPE REF TO zif_lnt_file.
                t317 = t4.
                t313 = me->run_message_class( i_obj_1ed0 = t314 i_file = t317 ).
                DATA t319 TYPE REF TO zcl_lnt_issue.
                DATA t320 TYPE REF TO object.
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
                  t2->load( ).
                  APPEND t319 TO t2->items.
                  t2->save( ).
                ENDDO.
                DATA t326 TYPE i.
                t2->load( ).
                t326 = lines( t2->items ).
                t312 = t326.
              ELSE.
                DATA t328 TYPE abap_bool.
                t328 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_table ).
                IF t328 = abap_true.
                  DATA(t330) = VALUE i( ).
                  DATA t331 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA t332 TYPE REF TO zcl_lnt_table.
                  DATA t334 TYPE REF TO object.
                  t334 = t1.
                  t332 ?= t334.
                  DATA t335 TYPE REF TO zif_lnt_file.
                  t335 = t4.
                  t331 = me->run_table( i_obj_1ed0 = t332 i_file = t335 ).
                  DATA t337 TYPE REF TO zcl_lnt_issue.
                  DATA t338 TYPE REF TO object.
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
                    t2->load( ).
                    APPEND t337 TO t2->items.
                    t2->save( ).
                  ENDDO.
                  DATA t344 TYPE i.
                  t2->load( ).
                  t344 = lines( t2->items ).
                  t330 = t344.
                ELSE.
                  DATA t346 TYPE abap_bool.
                  t346 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_lock_object ).
                  IF t346 = abap_true.
                    DATA(t348) = VALUE i( ).
                    DATA t349 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA t350 TYPE REF TO zcl_lnt_lock_object.
                    DATA t352 TYPE REF TO object.
                    t352 = t1.
                    t350 ?= t352.
                    DATA t353 TYPE REF TO zif_lnt_file.
                    t353 = t4.
                    t349 = me->run_lock_object( i_obj_1ed0 = t350 i_file = t353 ).
                    DATA t355 TYPE REF TO zcl_lnt_issue.
                    DATA t356 TYPE REF TO object.
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
                      t2->load( ).
                      APPEND t355 TO t2->items.
                      t2->save( ).
                    ENDDO.
                    DATA t362 TYPE i.
                    t2->load( ).
                    t362 = lines( t2->items ).
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
    t364 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ).
    IF t364 = abap_true.
      DATA(t366) = VALUE i( ).
      DATA t367 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t368 TYPE REF TO zcl_lnt_abap_object.
      DATA t370 TYPE REF TO object.
      t370 = t1.
      t368 ?= t370.
      DATA t371 TYPE REF TO zif_lnt_file.
      t371 = t4.
      t367 = me->run_text_pool( i_obj_1ed0 = t368 i_file = t371 ).
      DATA t373 TYPE REF TO zcl_lnt_issue.
      DATA t374 TYPE REF TO object.
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
        t2->load( ).
        APPEND t373 TO t2->items.
        t2->save( ).
      ENDDO.
      DATA t380 TYPE i.
      t2->load( ).
      t380 = lines( t2->items ).
      t366 = t380.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD run_class.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t7 TYPE REF TO zcl_lnt_class.
    t7 = t1.
    t7->parse_xml( ).
    DATA t12 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA t13 TYPE REF TO zcl_lnt_shape_e272b380.
    t13 = t7->parsed_xml.
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t16) = xsdbool( t12 IS INITIAL ).
    IF t16 = abap_true.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t20 TYPE REF TO zcl_lnt_shape_e272b380.
      t20 = t12.
      t19 = t20->name.
      t15 = t19.
    ENDIF.
    t5 = t15.
    DATA(t22) = VALUE abap_bool( ).
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t23 = t5.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t27) = VALUE abap_bool( ).
    IF t23 IS INITIAL.
      t27 = abap_true.
    ELSEIF t23->has = abap_false.
      t27 = abap_true.
    ENDIF.
    t22 = t27.
    IF t22 = abap_true.
      DATA t30 TYPE REF TO zcl_lnt_issue.
      DATA(t32) = CONV f( 1 ).
      DATA(t33) = |Name undefined in XML|.
      DATA(t34) = VALUE string( ).
      DATA t35 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t36 TYPE string.
      t36 = |xml_consistency|.
      DATA t38 TYPE string.
      t38 = |XML consistency|.
      DATA t40 TYPE string.
      t40 = |Checks the consistency of main XML files|.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t45) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
      t45 = t45 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
      t45 = t45 && |ce table and field values\n* Transparent TABL objects have de|.
      t45 = t45 && |livery class and size category set\n* Lock parameter names in|.
      t45 = t45 && | ENQU objects are max 16 characters\n* Texts and translations|.
      t45 = t45 && | do not exceed maximum allowed length.|.
      DATA(t46) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t46->has = abap_true.
      t46->value = t45.
      t42 = t46.
      DATA t48 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t53.
      t52 = t53.
      DATA(t55) = |Naming|.
      t52->load( ).
      APPEND t55 TO t52->items.
      t52->save( ).
      DATA(t57) = |Syntax|.
      t52->load( ).
      APPEND t57 TO t52->items.
      t52->save( ).
      t48 = t52.
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t35 = NEW zcl_lnt_irule_metadata( i_key = t36 i_title = t38 i_short_description = t40 i_bad_example = t60 i_good_example = t62 i_extended_information = t42 i_tags = t48 i_pragma = t64 i_pseudo_comment = t66 ).
      CREATE OBJECT t35->zlnt_view_ownkeys_b0e8086400eb.
      t35->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t68 ).
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t69 ).
      ENDIF.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t70 ).
      ENDIF.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t71 ).
      ENDIF.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t72 ).
      ENDIF.
      CREATE OBJECT t35->zlnt_json_ownkeys_70e5fd461788.
      t35->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t73) = |key|.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
      DATA(t75) = |title|.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t75 p1 = t76 ).
      ENDIF.
      DATA(t77) = |shortDescription|.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t77 p1 = t78 ).
      ENDIF.
      DATA(t79) = |extendedInformation|.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t79 p1 = t80 ).
      ENDIF.
      DATA(t81) = |tags|.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t81 p1 = t82 ).
      ENDIF.
      t34 = t35->key.
      DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t83 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      t30 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t32 i_message_26cb = t33 i_key = t34 i_severity = t83 ).
      t3->load( ).
      APPEND t30 TO t3->items.
      t3->save( ).
    ELSE.
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = VALUE abap_bool( ).
      DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t88 TYPE REF TO zcl_lnt_class.
      t88 = t1.
      t88->parse_xml( ).
      DATA t93 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA t94 TYPE REF TO zcl_lnt_shape_e272b380.
      t94 = t88->parsed_xml.
      t93 = t94.
      DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t97) = xsdbool( t93 IS INITIAL ).
      IF t97 = abap_true.
      ELSE.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t101 TYPE REF TO zcl_lnt_shape_e272b380.
        t101 = t93.
        t100 = t101->description.
        t96 = t100.
      ENDIF.
      t87 = t96.
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
        DATA t107 TYPE REF TO zcl_lnt_class.
        t107 = t1.
        t107->parse_xml( ).
        DATA t112 TYPE REF TO zcl_lnt_shape_e272b380.
        DATA t113 TYPE REF TO zcl_lnt_shape_e272b380.
        t113 = t107->parsed_xml.
        t112 = t113.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t116) = xsdbool( t112 IS INITIAL ).
        IF t116 = abap_true.
        ELSE.
          DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t120 TYPE REF TO zcl_lnt_shape_e272b380.
          t120 = t112.
          t119 = t120->description.
          t115 = t119.
        ENDIF.
        t106 = t115.
        t105 = t106->value.
        t104 = strlen( t105 ).
        DATA(t123) = 60.
        t103 = xsdbool( t104 > t123 ).
        t85 = t103.
      ENDIF.
      IF t85 = abap_true.
        DATA t125 TYPE REF TO zcl_lnt_issue.
        DATA(t127) = CONV f( 1 ).
        DATA(t128) = |Description too long|.
        DATA(t129) = VALUE string( ).
        DATA t130 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t131 TYPE string.
        t131 = |xml_consistency|.
        DATA t133 TYPE string.
        t133 = |XML consistency|.
        DATA t135 TYPE string.
        t135 = |Checks the consistency of main XML files|.
        DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t140) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
        t140 = t140 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
        t140 = t140 && |ce table and field values\n* Transparent TABL objects have de|.
        t140 = t140 && |livery class and size category set\n* Lock parameter names in|.
        t140 = t140 && | ENQU objects are max 16 characters\n* Texts and translations|.
        t140 = t140 && | do not exceed maximum allowed length.|.
        DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t141->has = abap_true.
        t141->value = t140.
        t137 = t141.
        DATA t143 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t147 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t148 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t148.
        t147 = t148.
        DATA(t150) = |Naming|.
        t147->load( ).
        APPEND t150 TO t147->items.
        t147->save( ).
        DATA(t152) = |Syntax|.
        t147->load( ).
        APPEND t152 TO t147->items.
        t147->save( ).
        t143 = t147.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t130 = NEW zcl_lnt_irule_metadata( i_key = t131 i_title = t133 i_short_description = t135 i_bad_example = t155 i_good_example = t157 i_extended_information = t137 i_tags = t143 i_pragma = t159 i_pseudo_comment = t161 ).
        CREATE OBJECT t130->zlnt_view_ownkeys_b0e8086400eb.
        t130->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t163 ).
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t164 ).
        ENDIF.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t165 ).
        ENDIF.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t166 ).
        ENDIF.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t167 ).
        ENDIF.
        CREATE OBJECT t130->zlnt_json_ownkeys_70e5fd461788.
        t130->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t168) = |key|.
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
        DATA(t170) = |title|.
        DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
        ENDIF.
        DATA(t172) = |shortDescription|.
        DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
        ENDIF.
        DATA(t174) = |extendedInformation|.
        DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
        ENDIF.
        DATA(t176) = |tags|.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
        ENDIF.
        t129 = t130->key.
        DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t178 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        t125 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t127 i_message_26cb = t128 i_key = t129 i_severity = t178 ).
        t3->load( ).
        APPEND t125 TO t3->items.
        t3->save( ).
      ELSE.
        DATA(t180) = VALUE abap_bool( ).
        DATA t181 TYPE string.
        t181 = t5->value.
        DATA t183 TYPE string.
        DATA t184 TYPE string.
        DATA t185 TYPE REF TO zcl_lnt_abstract_object.
        t185 = t1.
        DATA t187 TYPE string.
        t187 = t185->name.
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
          DATA t191 TYPE REF TO zcl_lnt_issue.
          DATA(t193) = CONV f( 1 ).
          DATA(t194) = |Name in XML does not match object|.
          DATA(t195) = VALUE string( ).
          DATA t196 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t197 TYPE string.
          t197 = |xml_consistency|.
          DATA t199 TYPE string.
          t199 = |XML consistency|.
          DATA t201 TYPE string.
          t201 = |Checks the consistency of main XML files|.
          DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t206) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t206 = t206 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t206 = t206 && |ce table and field values\n* Transparent TABL objects have de|.
          t206 = t206 && |livery class and size category set\n* Lock parameter names in|.
          t206 = t206 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t206 = t206 && | do not exceed maximum allowed length.|.
          DATA(t207) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t207->has = abap_true.
          t207->value = t206.
          t203 = t207.
          DATA t209 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t213 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t214 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t214.
          t213 = t214.
          DATA(t216) = |Naming|.
          t213->load( ).
          APPEND t216 TO t213->items.
          t213->save( ).
          DATA(t218) = |Syntax|.
          t213->load( ).
          APPEND t218 TO t213->items.
          t213->save( ).
          t209 = t213.
          DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t196 = NEW zcl_lnt_irule_metadata( i_key = t197 i_title = t199 i_short_description = t201 i_bad_example = t221 i_good_example = t223 i_extended_information = t203 i_tags = t209 i_pragma = t225 i_pseudo_comment = t227 ).
          CREATE OBJECT t196->zlnt_view_ownkeys_b0e8086400eb.
          t196->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t229 ).
          DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t230 ).
          ENDIF.
          DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t231 ).
          ENDIF.
          DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t232 ).
          ENDIF.
          DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t233 ).
          ENDIF.
          CREATE OBJECT t196->zlnt_json_ownkeys_70e5fd461788.
          t196->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t234) = |key|.
          DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t234 p1 = t235 ).
          DATA(t236) = |title|.
          DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t236 p1 = t237 ).
          ENDIF.
          DATA(t238) = |shortDescription|.
          DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t238 p1 = t239 ).
          ENDIF.
          DATA(t240) = |extendedInformation|.
          DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t240 p1 = t241 ).
          ENDIF.
          DATA(t242) = |tags|.
          DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t242 p1 = t243 ).
          ENDIF.
          t195 = t196->key.
          DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t244 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          t191 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t193 i_message_26cb = t194 i_key = t195 i_severity = t244 ).
          t3->load( ).
          APPEND t191 TO t3->items.
          t3->save( ).
        ELSE.
          DATA(t246) = VALUE abap_bool( ).
          DATA(t247) = VALUE abap_bool( ).
          DATA t250 TYPE REF TO zcl_lnt_abap_file.
          DATA t251 TYPE REF TO zcl_lnt_abap_file.
          t251 = t1->get_main_abap_file( ).
          t250 = t251.
          DATA t253 TYPE REF TO zcl_lnt_structure_node.
          DATA(t254) = xsdbool( t250 IS INITIAL ).
          IF t254 = abap_true.
          ELSE.
            DATA t261 TYPE REF TO zcl_lnt_structure_node.
            t261 = t250->structure.
            t253 = t261.
          ENDIF.
          DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t265) = VALUE abap_bool( ).
          DATA(t266) = xsdbool( t253 IS INITIAL ).
          t265 = xsdbool( t266 = abap_false ).
          t247 = t265.
          t246 = t247.
          IF t247 = abap_true.
            DATA(t268) = VALUE abap_bool( ).
            DATA t271 TYPE REF TO zcl_lnt_class.
            t271 = t1.
            DATA t274 TYPE REF TO zif_lnt_abap_file_information.
            DATA t276 TYPE REF TO zcl_lnt_abap_file.
            DATA t277 TYPE REF TO zcl_lnt_abap_file.
            t277 = t271->get_main_abap_file( ).
            t276 = t277.
            DATA t279 TYPE REF TO zif_lnt_abap_file_information.
            DATA(t280) = xsdbool( t276 IS INITIAL ).
            IF t280 = abap_true.
            ELSE.
              DATA t287 TYPE REF TO zif_lnt_abap_file_information.
              t287 = t276->info.
              t279 = t287.
            ENDIF.
            t274 = t279.
            DATA t289 TYPE REF TO zcl_lnt_info_class_definition.
            DATA(t290) = xsdbool( t274 IS INITIAL ).
            IF t290 = abap_true.
            ELSE.
              DATA t293 TYPE REF TO zcl_lnt_info_class_definition.
              DATA t294 TYPE REF TO zif_lnt_abap_file_information.
              t294 = t274.
              DATA t296 TYPE string.
              DATA t297 TYPE REF TO zcl_lnt_abstract_object.
              t297 = t271.
              DATA t299 TYPE string.
              t299 = t297->name.
              t296 = t299.
              t293 = t294->get_class_definition_by_name( i_name = t296 ).
              t289 = t293.
            ENDIF.
            DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t268 = xsdbool( t289 IS INITIAL ).
            t246 = t268.
          ENDIF.
          IF t246 = abap_true.
            DATA t306 TYPE REF TO zcl_lnt_issue.
            DATA(t308) = CONV f( 1 ).
            DATA(t309) = |Class matching XML name not found in ABAP file|.
            DATA(t310) = VALUE string( ).
            DATA t311 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t312 TYPE string.
            t312 = |xml_consistency|.
            DATA t314 TYPE string.
            t314 = |XML consistency|.
            DATA t316 TYPE string.
            t316 = |Checks the consistency of main XML files|.
            DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t321) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
            t321 = t321 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
            t321 = t321 && |ce table and field values\n* Transparent TABL objects have de|.
            t321 = t321 && |livery class and size category set\n* Lock parameter names in|.
            t321 = t321 && | ENQU objects are max 16 characters\n* Texts and translations|.
            t321 = t321 && | do not exceed maximum allowed length.|.
            DATA(t322) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t322->has = abap_true.
            t322->value = t321.
            t318 = t322.
            DATA t324 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t328 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t329 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t329.
            t328 = t329.
            DATA(t331) = |Naming|.
            t328->load( ).
            APPEND t331 TO t328->items.
            t328->save( ).
            DATA(t333) = |Syntax|.
            t328->load( ).
            APPEND t333 TO t328->items.
            t328->save( ).
            t324 = t328.
            DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t311 = NEW zcl_lnt_irule_metadata( i_key = t312 i_title = t314 i_short_description = t316 i_bad_example = t336 i_good_example = t338 i_extended_information = t318 i_tags = t324 i_pragma = t340 i_pseudo_comment = t342 ).
            CREATE OBJECT t311->zlnt_view_ownkeys_b0e8086400eb.
            t311->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t344 ).
            DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t345 ).
            ENDIF.
            DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t346 ).
            ENDIF.
            DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t347 ).
            ENDIF.
            DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t348 ).
            ENDIF.
            CREATE OBJECT t311->zlnt_json_ownkeys_70e5fd461788.
            t311->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t349) = |key|.
            DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = t349 p1 = t350 ).
            DATA(t351) = |title|.
            DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = t351 p1 = t352 ).
            ENDIF.
            DATA(t353) = |shortDescription|.
            DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = t353 p1 = t354 ).
            ENDIF.
            DATA(t355) = |extendedInformation|.
            DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = t355 p1 = t356 ).
            ENDIF.
            DATA(t357) = |tags|.
            DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = t357 p1 = t358 ).
            ENDIF.
            t310 = t311->key.
            DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t359 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            t306 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t308 i_message_26cb = t309 i_key = t310 i_severity = t359 ).
            t3->load( ).
            APPEND t306 TO t3->items.
            t3->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD run_text_pool.
    CONSTANTS range_parse_safe_prefix TYPE int8 VALUE '900719925474099'.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    DATA t7 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    t7 = t1->get_text_elements( ).
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t10.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t11 = t12.
    DATA(t13) = VALUE i( ).
    t13 = 0.
    DATA(t15) = VALUE i( ).
    t15 = 0.
    DATA(t17) = VALUE abap_bool( ).
    t17 = abap_false.
    DATA(t19) = VALUE i( ).
    t19 = 0.
    DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t21 = t6->keys( ).
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
      t25 = strlen( t23 ).
      t13 = t25.
      t15 = 0.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = VALUE abap_bool( ).
      DATA(t33) = 0.
      t31 = xsdbool( t13 > t33 ).
      t30 = t31.
      IF t31 = abap_true.
        DATA(t34) = VALUE abap_bool( ).
        DATA(t36) = 10.
        t34 = xsdbool( t13 <= t36 ).
        t30 = t34.
      ENDIF.
      t29 = t30.
      IF t30 = abap_true.
        DATA(t37) = VALUE abap_bool( ).
        DATA(t38) = VALUE abap_bool( ).
        DATA(t40) = 1.
        t38 = xsdbool( t13 = t40 ).
        t37 = t38.
        IF t38 = abap_false.
          DATA(t41) = VALUE abap_bool( ).
          DATA(t42) = VALUE string( ).
          DATA(t44) = 0.
          DATA(t45) = strlen( t23 ).
          IF t44 < 0 OR t44 >= t45.
            CLEAR t42.
          ELSE.
            t42 = t23+t44(1).
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
          t49 = xsdbool( t15 < t13 ).
          t47 = t49.
        ENDIF.
        IF t47 = abap_false.
          EXIT.
        ENDIF.
        DATA(t52) = VALUE i( ).
        DATA(t54) = t15.
        DATA(t55) = strlen( t23 ).
        IF t54 < 0 OR t54 >= t55.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t56) = CONV string( t23+t54(1) ).
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
        DATA(t65) = 48.
        t63 = xsdbool( t19 >= t65 ).
        t62 = t63.
        IF t63 = abap_true.
          DATA(t66) = VALUE abap_bool( ).
          DATA(t68) = 57.
          t66 = xsdbool( t19 <= t68 ).
          t62 = t66.
        ENDIF.
        t17 = t62.
        DATA(t69) = VALUE i( ).
        DATA(t71) = 1.
        t69 = t15 + t71.
        t15 = t69.
      ENDDO.
      DATA(t72) = VALUE abap_bool( ).
      DATA(t73) = t17.
      t72 = t73.
      IF t73 = abap_true.
        DATA(t74) = VALUE abap_bool( ).
        DATA(t76) = 10.
        t74 = xsdbool( t13 = t76 ).
        t72 = t74.
      ENDIF.
      IF t72 = abap_true.
        DATA(t77) = VALUE abap_bool( ).
        DATA(t78) = VALUE i( ).
        DATA(t80) = |4294967294|.
        t78 = zlnt_runtime_orde_654b9c3be2c1=>rule_key( p0 = t23 p1 = t80 ).
        DATA(t81) = 0.
        t77 = xsdbool( t78 <= t81 ).
        t17 = t77.
      ENDIF.
      IF t17 = abap_true.
        t9->load( ).
        APPEND t23 TO t9->items.
        t9->save( ).
      ELSE.
        t11->load( ).
        APPEND t23 TO t11->items.
        t11->save( ).
      ENDIF.
    ENDDO.
    DATA t87 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t88 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t90 = t9.
    DATA(t92) = VALUE i( ).
    DATA(t93) = VALUE i( ).
    t90->load( ).
    t93 = lines( t90->items ).
    t92 = t93.
    DATA(t95) = VALUE i( ).
    t95 = 1.
    DO.
      DATA(t97) = VALUE abap_bool( ).
      t97 = xsdbool( t95 < t92 ).
      IF t97 = abap_false.
        EXIT.
      ENDIF.
      DATA(t100) = VALUE string( ).
      DATA(t101) = VALUE string( ).
      DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t102.
      t102 = t90->get( p0 = t95 ).
      t101 = t102->value.
      t100 = t101.
      DATA(t105) = VALUE i( ).
      t105 = t95.
      DO.
        DATA(t107) = VALUE abap_bool( ).
        DATA(t109) = 0.
        t107 = xsdbool( t105 > t109 ).
        IF t107 = abap_false.
          EXIT.
        ENDIF.
        DATA(t110) = VALUE string( ).
        DATA(t111) = VALUE string( ).
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        DATA(t114) = VALUE i( ).
        DATA(t116) = 1.
        t114 = t105 - t116.
        t112 = t90->get( p0 = t114 ).
        t111 = t112->value.
        t110 = t111.
        DATA(t117) = VALUE abap_bool( ).
        DATA(t118) = VALUE f( ).
        DATA(t119) = VALUE abap_bool( ).
        DATA(t120) = VALUE i( ).
        t120 = strlen( t110 ).
        DATA(t123) = VALUE i( ).
        t123 = strlen( t100 ).
        t119 = xsdbool( t120 <> t123 ).
        IF t119 = abap_true.
          DATA(t126) = VALUE f( ).
          DATA(t127) = VALUE i( ).
          DATA(t128) = VALUE i( ).
          t128 = strlen( t110 ).
          DATA(t131) = VALUE i( ).
          t131 = strlen( t100 ).
          t127 = t128 - t131.
          t126 = t127.
          t118 = t126.
        ELSE.
          DATA(t134) = VALUE f( ).
          DATA(t135) = VALUE i( ).
          t135 = zlnt_runtime_orde_654b9c3be2c1=>rule_key( p0 = t110 p1 = t100 ).
          t134 = t135.
          t118 = t134.
        ENDIF.
        DATA(t138) = CONV f( 0 ).
        t117 = xsdbool( t118 <= t138 ).
        IF t117 = abap_true.
          EXIT.
        ENDIF.
        t90->put( p0 = t105 p1 = t110 ).
        DATA(t142) = VALUE i( ).
        DATA(t144) = 1.
        t142 = t105 - t144.
        t105 = t142.
      ENDDO.
      t90->put( p0 = t105 p1 = t100 ).
      DATA(t148) = VALUE i( ).
      DATA(t150) = 1.
      t148 = t95 + t150.
      t95 = t148.
    ENDDO.
    t89 = t90.
    t88 = t89->concat( p0 = t11 ).
    t87 = t88.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t154.
    t153 = t154.
    DATA(t156) = VALUE string( ).
    t87->dense( ).
    DATA(t157) = VALUE i( ).
    DO.
      t87->load( ).
      IF t157 >= lines( t87->items ).
        EXIT.
      ENDIF.
      CLEAR t156.
      READ TABLE t87->items INDEX t157 + 1 INTO t156.
      IF t87->has( t157 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t157 = t157 + 1.
      DATA t159 TYPE REF TO zcl_lnt_tuple_a5e994d8.
      CLEAR t159.
      DATA t161 TYPE REF TO zcl_lnt_shape_015c050b.
      CLEAR t161.
      DATA t162 TYPE REF TO zcl_lnt_shape_015c050b.
      CLEAR t162.
      t162 = t6->get( p0 = t156 ).
      t161 = t162.
      t159 = NEW zcl_lnt_tuple_a5e994d8( i_f0 = t156 i_f1 = t161 ).
      t153->load( ).
      APPEND t159 TO t153->items.
      t153->save( ).
    ENDDO.
    t5 = t153.
    DATA t166 TYPE REF TO zcl_lnt_tuple_a5e994d8.
    DATA t167 TYPE REF TO object.
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
      t172 = t166->f0.
      t171 = t172.
      DATA t174 TYPE REF TO zcl_lnt_shape_015c050b.
      CLEAR t174.
      DATA t175 TYPE REF TO zcl_lnt_shape_015c050b.
      CLEAR t175.
      t175 = t166->f1.
      t174 = t175.
      DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t177.
      t177 = t3.
      DATA t179 TYPE REF TO zcl_lnt_issue.
      CLEAR t179.
      DATA(t183) = VALUE string( ).
      DATA(t184) = VALUE string( ).
      DATA(t185) = VALUE string( ).
      DATA(t186) = |ENTRY[|.
      DATA(t188) = strlen( t186 ).
      t185 = |{ t186 }{ t171 }|.
      DATA(t189) = |]|.
      DATA(t190) = strlen( t185 ).
      t184 = |{ t185 }{ t189 }|.
      t183 = t184.
      DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t191.
      DATA(t194) = VALUE string( ).
      t194 = t174->entry.
      DATA(t196) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t196->has = abap_true.
      t196->value = t194.
      t191 = t196.
      DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t198.
      DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t199.
      DATA t200 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t200.
      t200 = t174->max_length.
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
      t205 = t191.
      DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t207.
      CLEAR t207.
      DATA(t209) = VALUE abap_bool( ).
      IF t205 IS INITIAL.
        t209 = abap_true.
      ELSEIF t205->has = abap_false.
        t209 = abap_true.
      ENDIF.
      t204 = t209.
      t203 = t204.
      IF t204 = abap_false.
        DATA(t211) = VALUE abap_bool( ).
        DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t214.
        CLEAR t214.
        t211 = xsdbool( t198 IS INITIAL ).
        t203 = t211.
      ENDIF.
      IF t203 = abap_true.
        CLEAR t202.
      ELSE.
        DATA(t220) = VALUE f( ).
        DATA(t221) = VALUE f( ).
        DATA(t222) = VALUE abap_bool( ).
        DATA(t223) = VALUE string( ).
        IF t198 IS BOUND.
          t223 = t198->type_of( ).
          IF t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t198->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t223 = `function`.
          ENDIF.
        ELSE.
          t223 = `undefined`.
        ENDIF.
        DATA(t225) = |number|.
        t222 = xsdbool( t223 = t225 ).
        IF t222 = abap_true.
          DATA(t226) = VALUE f( ).
          t226 = t198->as_number( ).
          t221 = t226.
        ELSE.
          DATA(t228) = VALUE f( ).
          DATA(t229) = VALUE string( ).
          t229 = t198->as_string( ).
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
        t250 = t191->value.
        t249 = strlen( t250 ).
        t248 = t249.
        t247 = xsdbool( t248 > t220 ).
        IF t247 = abap_true.
          DATA(t255) = VALUE string( ).
          DATA(t256) = VALUE string( ).
          DATA(t257) = VALUE abap_bool( ).
          DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t258.
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
            t256 = ||.
          ENDIF.
          t255 = t256.
          DATA t270 TYPE REF TO zcl_lnt_issue.
          CLEAR t270.
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
          DATA(t285) = strlen( t283 ).
          t282 = |{ t283 }{ t255 }|.
          DATA(t286) = ||.
          DATA(t287) = strlen( t282 ).
          t281 = |{ t282 }{ t286 }|.
          DATA(t289) = strlen( t281 ).
          t280 = |{ t281 }{ t183 }|.
          DATA(t290) = | "|.
          DATA(t291) = strlen( t280 ).
          t279 = |{ t280 }{ t290 }|.
          DATA(t292) = VALUE string( ).
          t292 = t191->value.
          DATA(t294) = strlen( t279 ).
          t278 = |{ t279 }{ t292 }|.
          DATA(t295) = |" exceeds maximum length of |.
          DATA(t296) = strlen( t278 ).
          t277 = |{ t278 }{ t295 }|.
          DATA(t297) = VALUE string( ).
          IF t220 <> trunc( t220 ) OR t220 > range_safe_integer OR t220 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t299) = CONV int8( t220 ).
          t297 = |{ t299 }|.
          DATA(t300) = strlen( t277 ).
          t276 = |{ t277 }{ t297 }|.
          DATA(t301) = | characters (actual: |.
          DATA(t302) = strlen( t276 ).
          t275 = |{ t276 }{ t301 }|.
          DATA(t303) = VALUE string( ).
          DATA(t304) = VALUE i( ).
          DATA(t305) = VALUE string( ).
          t305 = t191->value.
          t304 = strlen( t305 ).
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
          t313 = |xml_consistency|.
          DATA(t315) = VALUE string( ).
          t315 = |XML consistency|.
          DATA(t317) = VALUE string( ).
          t317 = |Checks the consistency of main XML files|.
          DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t319.
          DATA(t322) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t322 = t322 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t322 = t322 && |ce table and field values\n* Transparent TABL objects have de|.
          t322 = t322 && |livery class and size category set\n* Lock parameter names in|.
          t322 = t322 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t322 = t322 && | do not exceed maximum allowed length.|.
          DATA(t323) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t323->has = abap_true.
          t323->value = t322.
          t319 = t323.
          DATA t325 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t325.
          DATA t329 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t329.
          DATA t330 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t330.
          CREATE OBJECT t330.
          t329 = t330.
          DATA(t332) = |Naming|.
          t329->load( ).
          APPEND t332 TO t329->items.
          t329->save( ).
          DATA(t334) = |Syntax|.
          t329->load( ).
          APPEND t334 TO t329->items.
          t329->save( ).
          t325 = t329.
          DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t337.
          CLEAR t337.
          DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t339.
          CLEAR t339.
          DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t341.
          CLEAR t341.
          DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t343.
          CLEAR t343.
          t312 = NEW zcl_lnt_irule_metadata( i_key = t313 i_title = t315 i_short_description = t317 i_bad_example = t337 i_good_example = t339 i_extended_information = t319 i_tags = t325 i_pragma = t341 i_pseudo_comment = t343 ).
          CREATE OBJECT t312->zlnt_view_ownkeys_b0e8086400eb.
          t312->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t345.
          t312->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t345 ).
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
          t312->zlnt_json_ownkeys_70e5fd461788->put( p0 = t350 p1 = t351 ).
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
          t360 = me->conf->zlnt_view_read_sr_b4bcf11cce6c( ).
          t270 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t272 i_message_26cb = t273 i_key = t311 i_severity = t360 ).
          t246 = t270.
        ELSE.
          CLEAR t246.
        ENDIF.
        t202 = t246.
      ENDIF.
      t179 = t202.
      DATA(t364) = VALUE abap_bool( ).
      t364 = xsdbool( t179 IS BOUND ).
      IF t364 = abap_true.
        DATA t367 TYPE REF TO zcl_lnt_issue.
        CLEAR t367.
        t367 = t179.
        t177->load( ).
        APPEND t367 TO t177->items.
        t177->save( ).
      ENDIF.
    ENDDO.
    DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t370 TYPE REF TO zcl_lnt_abap_object.
    t370 = t1.
    DATA(t373) = VALUE abap_bool( ).
    DATA t375 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t375 = t370->texts_translations.
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t373 = xsdbool( t375 IS INITIAL ).
    IF t373 = abap_true.
      DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t384) = VALUE abap_bool( ).
      DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t386 = t370->raw_xml_cache.
      DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t384 = xsdbool( t386 IS INITIAL ).
      IF t384 = abap_true.
        DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t397 = t370->parse_raw2( ).
        t396 = t397.
        DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t400) = VALUE abap_bool( ).
        DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t401 = t396.
        IF t401 IS NOT BOUND.
          t400 = abap_true.
        ELSE.
          t400 = xsdbool( t401->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t400 = abap_true.
          DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t404) = 0.
          CREATE OBJECT t403.
          t403->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
          t399 = t403.
        ELSE.
          t399 = t396.
        ENDIF.
        t370->raw_xml_cache = t399.
        DELETE t370->zlnt_record_delet_0597644d88b4 WHERE table_line = `rawXMLCache`.
      ENDIF.
      DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t412 = t370->raw_xml_cache.
      t411 = t412.
      DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t415) = VALUE abap_bool( ).
      DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t416 = t411.
      IF t416 IS NOT BOUND.
        t415 = abap_true.
      ELSE.
        t415 = xsdbool( t416->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t415 = abap_true.
        DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      ELSE.
        t414 = t411.
      ENDIF.
      t383 = t414.
      IF t383 IS BOUND.
        t382 = t383.
      ENDIF.
      t370->find_texts_translations( i_parsed = t382 ).
    ENDIF.
    DATA t424 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t424 = t370->texts_translations.
    t369 = t424.
    DATA t426 TYPE REF TO zcl_lnt_itrnsltn_txt_elmnts.
    DATA t427 TYPE REF TO object.
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
      t435 = t426->zlnt_view_read_sr_f2debfe321d5( ).
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
      t441 = 0.
      DATA(t443) = VALUE i( ).
      t443 = 0.
      DATA(t445) = VALUE abap_bool( ).
      t445 = abap_false.
      DATA(t447) = VALUE i( ).
      t447 = 0.
      DATA t449 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t449.
      t449 = t434->keys( ).
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
        t453 = strlen( t451 ).
        t441 = t453.
        t443 = 0.
        DATA(t457) = VALUE abap_bool( ).
        DATA(t458) = VALUE abap_bool( ).
        DATA(t459) = VALUE abap_bool( ).
        DATA(t461) = 0.
        t459 = xsdbool( t441 > t461 ).
        t458 = t459.
        IF t459 = abap_true.
          DATA(t462) = VALUE abap_bool( ).
          DATA(t464) = 10.
          t462 = xsdbool( t441 <= t464 ).
          t458 = t462.
        ENDIF.
        t457 = t458.
        IF t458 = abap_true.
          DATA(t465) = VALUE abap_bool( ).
          DATA(t466) = VALUE abap_bool( ).
          DATA(t468) = 1.
          t466 = xsdbool( t441 = t468 ).
          t465 = t466.
          IF t466 = abap_false.
            DATA(t469) = VALUE abap_bool( ).
            DATA(t470) = VALUE string( ).
            DATA(t472) = 0.
            DATA(t473) = strlen( t451 ).
            IF t472 < 0 OR t472 >= t473.
              CLEAR t470.
            ELSE.
              t470 = t451+t472(1).
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
            t477 = xsdbool( t443 < t441 ).
            t475 = t477.
          ENDIF.
          IF t475 = abap_false.
            EXIT.
          ENDIF.
          DATA(t480) = VALUE i( ).
          DATA(t482) = t443.
          DATA(t483) = strlen( t451 ).
          IF t482 < 0 OR t482 >= t483.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t484) = CONV string( t451+t482(1) ).
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
          DATA(t493) = 48.
          t491 = xsdbool( t447 >= t493 ).
          t490 = t491.
          IF t491 = abap_true.
            DATA(t494) = VALUE abap_bool( ).
            DATA(t496) = 57.
            t494 = xsdbool( t447 <= t496 ).
            t490 = t494.
          ENDIF.
          t445 = t490.
          DATA(t497) = VALUE i( ).
          DATA(t499) = 1.
          t497 = t443 + t499.
          t443 = t497.
        ENDDO.
        DATA(t500) = VALUE abap_bool( ).
        DATA(t501) = t445.
        t500 = t501.
        IF t501 = abap_true.
          DATA(t502) = VALUE abap_bool( ).
          DATA(t504) = 10.
          t502 = xsdbool( t441 = t504 ).
          t500 = t502.
        ENDIF.
        IF t500 = abap_true.
          DATA(t505) = VALUE abap_bool( ).
          DATA(t506) = VALUE i( ).
          DATA(t508) = |4294967294|.
          t506 = zlnt_runtime_orde_654b9c3be2c1=>rule_key( p0 = t451 p1 = t508 ).
          DATA(t509) = 0.
          t505 = xsdbool( t506 <= t509 ).
          t445 = t505.
        ENDIF.
        IF t445 = abap_true.
          t437->load( ).
          APPEND t451 TO t437->items.
          t437->save( ).
        ELSE.
          t439->load( ).
          APPEND t451 TO t439->items.
          t439->save( ).
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
      t518 = t437.
      DATA(t520) = VALUE i( ).
      DATA(t521) = VALUE i( ).
      t518->load( ).
      t521 = lines( t518->items ).
      t520 = t521.
      DATA(t523) = VALUE i( ).
      t523 = 1.
      DO.
        DATA(t525) = VALUE abap_bool( ).
        t525 = xsdbool( t523 < t520 ).
        IF t525 = abap_false.
          EXIT.
        ENDIF.
        DATA(t528) = VALUE string( ).
        DATA(t529) = VALUE string( ).
        DATA t530 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t530.
        t530 = t518->get( p0 = t523 ).
        t529 = t530->value.
        t528 = t529.
        DATA(t533) = VALUE i( ).
        t533 = t523.
        DO.
          DATA(t535) = VALUE abap_bool( ).
          DATA(t537) = 0.
          t535 = xsdbool( t533 > t537 ).
          IF t535 = abap_false.
            EXIT.
          ENDIF.
          DATA(t538) = VALUE string( ).
          DATA(t539) = VALUE string( ).
          DATA t540 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t540.
          DATA(t542) = VALUE i( ).
          DATA(t544) = 1.
          t542 = t533 - t544.
          t540 = t518->get( p0 = t542 ).
          t539 = t540->value.
          t538 = t539.
          DATA(t545) = VALUE abap_bool( ).
          DATA(t546) = VALUE f( ).
          DATA(t547) = VALUE abap_bool( ).
          DATA(t548) = VALUE i( ).
          t548 = strlen( t538 ).
          DATA(t551) = VALUE i( ).
          t551 = strlen( t528 ).
          t547 = xsdbool( t548 <> t551 ).
          IF t547 = abap_true.
            DATA(t554) = VALUE f( ).
            DATA(t555) = VALUE i( ).
            DATA(t556) = VALUE i( ).
            t556 = strlen( t538 ).
            DATA(t559) = VALUE i( ).
            t559 = strlen( t528 ).
            t555 = t556 - t559.
            t554 = t555.
            t546 = t554.
          ELSE.
            DATA(t562) = VALUE f( ).
            DATA(t563) = VALUE i( ).
            t563 = zlnt_runtime_orde_654b9c3be2c1=>rule_key( p0 = t538 p1 = t528 ).
            t562 = t563.
            t546 = t562.
          ENDIF.
          DATA(t566) = CONV f( 0 ).
          t545 = xsdbool( t546 <= t566 ).
          IF t545 = abap_true.
            EXIT.
          ENDIF.
          t518->put( p0 = t533 p1 = t538 ).
          DATA(t570) = VALUE i( ).
          DATA(t572) = 1.
          t570 = t533 - t572.
          t533 = t570.
        ENDDO.
        t518->put( p0 = t533 p1 = t528 ).
        DATA(t576) = VALUE i( ).
        DATA(t578) = 1.
        t576 = t523 + t578.
        t523 = t576.
      ENDDO.
      t517 = t518.
      t516 = t517->concat( p0 = t439 ).
      t515 = t516.
      DATA t581 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t581.
      DATA t582 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t582.
      CREATE OBJECT t582.
      t581 = t582.
      DATA(t584) = VALUE string( ).
      t515->dense( ).
      DATA(t585) = VALUE i( ).
      DO.
        t515->load( ).
        IF t585 >= lines( t515->items ).
          EXIT.
        ENDIF.
        CLEAR t584.
        READ TABLE t515->items INDEX t585 + 1 INTO t584.
        IF t515->has( t585 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t585 = t585 + 1.
        DATA t587 TYPE REF TO zcl_lnt_tuple_a5e994d8.
        CLEAR t587.
        DATA t589 TYPE REF TO zcl_lnt_shape_015c050b.
        CLEAR t589.
        DATA t590 TYPE REF TO zcl_lnt_shape_015c050b.
        CLEAR t590.
        t590 = t434->get( p0 = t584 ).
        t589 = t590.
        t587 = NEW zcl_lnt_tuple_a5e994d8( i_f0 = t584 i_f1 = t589 ).
        t581->load( ).
        APPEND t587 TO t581->items.
        t581->save( ).
      ENDDO.
      t433 = t581.
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
        t600 = t594->f0.
        t599 = t600.
        DATA t602 TYPE REF TO zcl_lnt_shape_015c050b.
        CLEAR t602.
        DATA t603 TYPE REF TO zcl_lnt_shape_015c050b.
        CLEAR t603.
        t603 = t594->f1.
        t602 = t603.
        DATA t605 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t605.
        t605 = t3.
        DATA t607 TYPE REF TO zcl_lnt_issue.
        CLEAR t607.
        DATA(t611) = VALUE string( ).
        DATA(t612) = VALUE string( ).
        DATA(t613) = VALUE string( ).
        DATA(t614) = |ENTRY[|.
        DATA(t616) = strlen( t614 ).
        t613 = |{ t614 }{ t599 }|.
        DATA(t617) = |]|.
        DATA(t618) = strlen( t613 ).
        t612 = |{ t613 }{ t617 }|.
        t611 = t612.
        DATA t619 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t619.
        DATA(t622) = VALUE string( ).
        t622 = t602->entry.
        DATA(t624) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t624->has = abap_true.
        t624->value = t622.
        t619 = t624.
        DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t626.
        DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t627.
        DATA t628 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t628.
        t628 = t602->max_length.
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
        t631 = t426->zlnt_view_read_sr_a2d11cf27dbf( ).
        t630 = t631.
        DATA t633 TYPE REF TO zcl_lnt_issue.
        CLEAR t633.
        DATA(t634) = VALUE abap_bool( ).
        DATA(t635) = VALUE abap_bool( ).
        DATA t636 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t636.
        t636 = t619.
        DATA t638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t638.
        CLEAR t638.
        DATA(t640) = VALUE abap_bool( ).
        IF t636 IS INITIAL.
          t640 = abap_true.
        ELSEIF t636->has = abap_false.
          t640 = abap_true.
        ENDIF.
        t635 = t640.
        t634 = t635.
        IF t635 = abap_false.
          DATA(t642) = VALUE abap_bool( ).
          DATA t645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t645.
          CLEAR t645.
          t642 = xsdbool( t626 IS INITIAL ).
          t634 = t642.
        ENDIF.
        IF t634 = abap_true.
          CLEAR t633.
        ELSE.
          DATA(t651) = VALUE f( ).
          DATA(t652) = VALUE f( ).
          DATA(t653) = VALUE abap_bool( ).
          DATA(t654) = VALUE string( ).
          IF t626 IS BOUND.
            t654 = t626->type_of( ).
            IF t626->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t626->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
              t654 = `function`.
            ENDIF.
          ELSE.
            t654 = `undefined`.
          ENDIF.
          DATA(t656) = |number|.
          t653 = xsdbool( t654 = t656 ).
          IF t653 = abap_true.
            DATA(t657) = VALUE f( ).
            t657 = t626->as_number( ).
            t652 = t657.
          ELSE.
            DATA(t659) = VALUE f( ).
            DATA(t660) = VALUE string( ).
            t660 = t626->as_string( ).
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
          t681 = t619->value.
          t680 = strlen( t681 ).
          t679 = t680.
          t678 = xsdbool( t679 > t651 ).
          IF t678 = abap_true.
            DATA(t686) = VALUE string( ).
            DATA(t687) = VALUE string( ).
            DATA(t688) = VALUE abap_bool( ).
            IF t630 IS BOUND.
              IF t630->has = abap_true.
                t688 = xsdbool( strlen( t630->value ) > 0 ).
              ENDIF.
            ENDIF.
            IF t688 = abap_true.
              DATA(t690) = VALUE string( ).
              DATA(t691) = VALUE string( ).
              DATA(t692) = |[|.
              DATA(t693) = VALUE string( ).
              t693 = t630->value.
              DATA(t695) = strlen( t692 ).
              t691 = |{ t692 }{ t693 }|.
              DATA(t696) = |] |.
              DATA(t697) = strlen( t691 ).
              t690 = |{ t691 }{ t696 }|.
              t687 = t690.
            ELSE.
              t687 = ||.
            ENDIF.
            t686 = t687.
            DATA t701 TYPE REF TO zcl_lnt_issue.
            CLEAR t701.
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
            DATA(t716) = strlen( t714 ).
            t713 = |{ t714 }{ t686 }|.
            DATA(t717) = ||.
            DATA(t718) = strlen( t713 ).
            t712 = |{ t713 }{ t717 }|.
            DATA(t720) = strlen( t712 ).
            t711 = |{ t712 }{ t611 }|.
            DATA(t721) = | "|.
            DATA(t722) = strlen( t711 ).
            t710 = |{ t711 }{ t721 }|.
            DATA(t723) = VALUE string( ).
            t723 = t619->value.
            DATA(t725) = strlen( t710 ).
            t709 = |{ t710 }{ t723 }|.
            DATA(t726) = |" exceeds maximum length of |.
            DATA(t727) = strlen( t709 ).
            t708 = |{ t709 }{ t726 }|.
            DATA(t728) = VALUE string( ).
            IF t651 <> trunc( t651 ) OR t651 > range_safe_integer OR t651 < 0 - range_safe_integer.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            DATA(t730) = CONV int8( t651 ).
            t728 = |{ t730 }|.
            DATA(t731) = strlen( t708 ).
            t707 = |{ t708 }{ t728 }|.
            DATA(t732) = | characters (actual: |.
            DATA(t733) = strlen( t707 ).
            t706 = |{ t707 }{ t732 }|.
            DATA(t734) = VALUE string( ).
            DATA(t735) = VALUE i( ).
            DATA(t736) = VALUE string( ).
            t736 = t619->value.
            t735 = strlen( t736 ).
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
            t744 = |xml_consistency|.
            DATA(t746) = VALUE string( ).
            t746 = |XML consistency|.
            DATA(t748) = VALUE string( ).
            t748 = |Checks the consistency of main XML files|.
            DATA t750 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t750.
            DATA(t753) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
            t753 = t753 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
            t753 = t753 && |ce table and field values\n* Transparent TABL objects have de|.
            t753 = t753 && |livery class and size category set\n* Lock parameter names in|.
            t753 = t753 && | ENQU objects are max 16 characters\n* Texts and translations|.
            t753 = t753 && | do not exceed maximum allowed length.|.
            DATA(t754) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t754->has = abap_true.
            t754->value = t753.
            t750 = t754.
            DATA t756 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t756.
            DATA t760 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t760.
            DATA t761 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t761.
            CREATE OBJECT t761.
            t760 = t761.
            DATA(t763) = |Naming|.
            t760->load( ).
            APPEND t763 TO t760->items.
            t760->save( ).
            DATA(t765) = |Syntax|.
            t760->load( ).
            APPEND t765 TO t760->items.
            t760->save( ).
            t756 = t760.
            DATA t768 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t768.
            CLEAR t768.
            DATA t770 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t770.
            CLEAR t770.
            DATA t772 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t772.
            CLEAR t772.
            DATA t774 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t774.
            CLEAR t774.
            t743 = NEW zcl_lnt_irule_metadata( i_key = t744 i_title = t746 i_short_description = t748 i_bad_example = t768 i_good_example = t770 i_extended_information = t750 i_tags = t756 i_pragma = t772 i_pseudo_comment = t774 ).
            CREATE OBJECT t743->zlnt_view_ownkeys_b0e8086400eb.
            t743->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t776.
            t743->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t776 ).
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
            t743->zlnt_json_ownkeys_70e5fd461788->put( p0 = t781 p1 = t782 ).
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
            t791 = me->conf->zlnt_view_read_sr_b4bcf11cce6c( ).
            t701 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t703 i_message_26cb = t704 i_key = t742 i_severity = t791 ).
            t677 = t701.
          ELSE.
            CLEAR t677.
          ENDIF.
          t633 = t677.
        ENDIF.
        t607 = t633.
        DATA(t795) = VALUE abap_bool( ).
        t795 = xsdbool( t607 IS BOUND ).
        IF t795 = abap_true.
          DATA t798 TYPE REF TO zcl_lnt_issue.
          CLEAR t798.
          t798 = t607.
          t605->load( ).
          APPEND t798 TO t605->items.
          t605->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD run_interface.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t7 TYPE REF TO zcl_lnt_ob_interface.
    t7 = t1.
    t7->parse_xml( ).
    DATA t12 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA t13 TYPE REF TO zcl_lnt_shape_e272b380.
    t13 = t7->parsed_xml.
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t16) = xsdbool( t12 IS INITIAL ).
    IF t16 = abap_true.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t20 TYPE REF TO zcl_lnt_shape_e272b380.
      t20 = t12.
      t19 = t20->name.
      t15 = t19.
    ENDIF.
    t5 = t15.
    DATA(t22) = VALUE abap_bool( ).
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t23 = t5.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t27) = VALUE abap_bool( ).
    IF t23 IS INITIAL.
      t27 = abap_true.
    ELSEIF t23->has = abap_false.
      t27 = abap_true.
    ENDIF.
    t22 = t27.
    IF t22 = abap_true.
      DATA t30 TYPE REF TO zcl_lnt_issue.
      DATA(t32) = CONV f( 1 ).
      DATA(t33) = |Name undefined in XML|.
      DATA(t34) = VALUE string( ).
      DATA t35 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t36 TYPE string.
      t36 = |xml_consistency|.
      DATA t38 TYPE string.
      t38 = |XML consistency|.
      DATA t40 TYPE string.
      t40 = |Checks the consistency of main XML files|.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t45) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
      t45 = t45 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
      t45 = t45 && |ce table and field values\n* Transparent TABL objects have de|.
      t45 = t45 && |livery class and size category set\n* Lock parameter names in|.
      t45 = t45 && | ENQU objects are max 16 characters\n* Texts and translations|.
      t45 = t45 && | do not exceed maximum allowed length.|.
      DATA(t46) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t46->has = abap_true.
      t46->value = t45.
      t42 = t46.
      DATA t48 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t53.
      t52 = t53.
      DATA(t55) = |Naming|.
      t52->load( ).
      APPEND t55 TO t52->items.
      t52->save( ).
      DATA(t57) = |Syntax|.
      t52->load( ).
      APPEND t57 TO t52->items.
      t52->save( ).
      t48 = t52.
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t35 = NEW zcl_lnt_irule_metadata( i_key = t36 i_title = t38 i_short_description = t40 i_bad_example = t60 i_good_example = t62 i_extended_information = t42 i_tags = t48 i_pragma = t64 i_pseudo_comment = t66 ).
      CREATE OBJECT t35->zlnt_view_ownkeys_b0e8086400eb.
      t35->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t68 ).
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t69 ).
      ENDIF.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t70 ).
      ENDIF.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t71 ).
      ENDIF.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t72 ).
      ENDIF.
      CREATE OBJECT t35->zlnt_json_ownkeys_70e5fd461788.
      t35->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t73) = |key|.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
      DATA(t75) = |title|.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t75 p1 = t76 ).
      ENDIF.
      DATA(t77) = |shortDescription|.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t77 p1 = t78 ).
      ENDIF.
      DATA(t79) = |extendedInformation|.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t79 p1 = t80 ).
      ENDIF.
      DATA(t81) = |tags|.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t81 p1 = t82 ).
      ENDIF.
      t34 = t35->key.
      DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t83 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      t30 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t32 i_message_26cb = t33 i_key = t34 i_severity = t83 ).
      t3->load( ).
      APPEND t30 TO t3->items.
      t3->save( ).
    ELSE.
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = VALUE abap_bool( ).
      DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t88 TYPE REF TO zcl_lnt_ob_interface.
      t88 = t1.
      t88->parse_xml( ).
      DATA t93 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA t94 TYPE REF TO zcl_lnt_shape_e272b380.
      t94 = t88->parsed_xml.
      t93 = t94.
      DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t97) = xsdbool( t93 IS INITIAL ).
      IF t97 = abap_true.
      ELSE.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t101 TYPE REF TO zcl_lnt_shape_e272b380.
        t101 = t93.
        t100 = t101->description.
        t96 = t100.
      ENDIF.
      t87 = t96.
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
        DATA t107 TYPE REF TO zcl_lnt_ob_interface.
        t107 = t1.
        t107->parse_xml( ).
        DATA t112 TYPE REF TO zcl_lnt_shape_e272b380.
        DATA t113 TYPE REF TO zcl_lnt_shape_e272b380.
        t113 = t107->parsed_xml.
        t112 = t113.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t116) = xsdbool( t112 IS INITIAL ).
        IF t116 = abap_true.
        ELSE.
          DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t120 TYPE REF TO zcl_lnt_shape_e272b380.
          t120 = t112.
          t119 = t120->description.
          t115 = t119.
        ENDIF.
        t106 = t115.
        t105 = t106->value.
        t104 = strlen( t105 ).
        DATA(t123) = 60.
        t103 = xsdbool( t104 > t123 ).
        t85 = t103.
      ENDIF.
      IF t85 = abap_true.
        DATA t125 TYPE REF TO zcl_lnt_issue.
        DATA(t127) = CONV f( 1 ).
        DATA(t128) = |Description too long|.
        DATA(t129) = VALUE string( ).
        DATA t130 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t131 TYPE string.
        t131 = |xml_consistency|.
        DATA t133 TYPE string.
        t133 = |XML consistency|.
        DATA t135 TYPE string.
        t135 = |Checks the consistency of main XML files|.
        DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t140) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
        t140 = t140 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
        t140 = t140 && |ce table and field values\n* Transparent TABL objects have de|.
        t140 = t140 && |livery class and size category set\n* Lock parameter names in|.
        t140 = t140 && | ENQU objects are max 16 characters\n* Texts and translations|.
        t140 = t140 && | do not exceed maximum allowed length.|.
        DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t141->has = abap_true.
        t141->value = t140.
        t137 = t141.
        DATA t143 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t147 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t148 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t148.
        t147 = t148.
        DATA(t150) = |Naming|.
        t147->load( ).
        APPEND t150 TO t147->items.
        t147->save( ).
        DATA(t152) = |Syntax|.
        t147->load( ).
        APPEND t152 TO t147->items.
        t147->save( ).
        t143 = t147.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t130 = NEW zcl_lnt_irule_metadata( i_key = t131 i_title = t133 i_short_description = t135 i_bad_example = t155 i_good_example = t157 i_extended_information = t137 i_tags = t143 i_pragma = t159 i_pseudo_comment = t161 ).
        CREATE OBJECT t130->zlnt_view_ownkeys_b0e8086400eb.
        t130->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t163 ).
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t164 ).
        ENDIF.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t165 ).
        ENDIF.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t166 ).
        ENDIF.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t167 ).
        ENDIF.
        CREATE OBJECT t130->zlnt_json_ownkeys_70e5fd461788.
        t130->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t168) = |key|.
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
        DATA(t170) = |title|.
        DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
        ENDIF.
        DATA(t172) = |shortDescription|.
        DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
        ENDIF.
        DATA(t174) = |extendedInformation|.
        DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
        ENDIF.
        DATA(t176) = |tags|.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
        ENDIF.
        t129 = t130->key.
        DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t178 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        t125 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t127 i_message_26cb = t128 i_key = t129 i_severity = t178 ).
        t3->load( ).
        APPEND t125 TO t3->items.
        t3->save( ).
      ELSE.
        DATA(t180) = VALUE abap_bool( ).
        DATA t181 TYPE string.
        t181 = t5->value.
        DATA t183 TYPE string.
        DATA t184 TYPE string.
        DATA t185 TYPE REF TO zcl_lnt_abstract_object.
        t185 = t1.
        DATA t187 TYPE string.
        t187 = t185->name.
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
          DATA t191 TYPE REF TO zcl_lnt_issue.
          DATA(t193) = CONV f( 1 ).
          DATA(t194) = |Name in XML does not match object|.
          DATA(t195) = VALUE string( ).
          DATA t196 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t197 TYPE string.
          t197 = |xml_consistency|.
          DATA t199 TYPE string.
          t199 = |XML consistency|.
          DATA t201 TYPE string.
          t201 = |Checks the consistency of main XML files|.
          DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t206) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t206 = t206 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t206 = t206 && |ce table and field values\n* Transparent TABL objects have de|.
          t206 = t206 && |livery class and size category set\n* Lock parameter names in|.
          t206 = t206 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t206 = t206 && | do not exceed maximum allowed length.|.
          DATA(t207) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t207->has = abap_true.
          t207->value = t206.
          t203 = t207.
          DATA t209 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t213 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t214 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t214.
          t213 = t214.
          DATA(t216) = |Naming|.
          t213->load( ).
          APPEND t216 TO t213->items.
          t213->save( ).
          DATA(t218) = |Syntax|.
          t213->load( ).
          APPEND t218 TO t213->items.
          t213->save( ).
          t209 = t213.
          DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t196 = NEW zcl_lnt_irule_metadata( i_key = t197 i_title = t199 i_short_description = t201 i_bad_example = t221 i_good_example = t223 i_extended_information = t203 i_tags = t209 i_pragma = t225 i_pseudo_comment = t227 ).
          CREATE OBJECT t196->zlnt_view_ownkeys_b0e8086400eb.
          t196->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t229 ).
          DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t230 ).
          ENDIF.
          DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t231 ).
          ENDIF.
          DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t232 ).
          ENDIF.
          DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t233 ).
          ENDIF.
          CREATE OBJECT t196->zlnt_json_ownkeys_70e5fd461788.
          t196->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t234) = |key|.
          DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t234 p1 = t235 ).
          DATA(t236) = |title|.
          DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t236 p1 = t237 ).
          ENDIF.
          DATA(t238) = |shortDescription|.
          DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t238 p1 = t239 ).
          ENDIF.
          DATA(t240) = |extendedInformation|.
          DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t240 p1 = t241 ).
          ENDIF.
          DATA(t242) = |tags|.
          DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t242 p1 = t243 ).
          ENDIF.
          t195 = t196->key.
          DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t244 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          t191 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t193 i_message_26cb = t194 i_key = t195 i_severity = t244 ).
          t3->load( ).
          APPEND t191 TO t3->items.
          t3->save( ).
        ELSE.
          DATA(t246) = VALUE abap_bool( ).
          DATA(t247) = VALUE abap_bool( ).
          DATA t252 TYPE REF TO zif_lnt_interface_definition.
          t252 = t1->def.
          DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t256) = VALUE abap_bool( ).
          DATA(t257) = xsdbool( t252 IS INITIAL ).
          t256 = xsdbool( t257 = abap_false ).
          t247 = t256.
          t246 = t247.
          IF t247 = abap_true.
            DATA(t259) = VALUE abap_bool( ).
            DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t263 TYPE REF TO zif_lnt_interface_definition.
            DATA t267 TYPE REF TO zif_lnt_interface_definition.
            t267 = t1->def.
            t263 = t267.
            DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t270) = xsdbool( t263 IS INITIAL ).
            IF t270 = abap_true.
            ELSE.
              DATA t273 TYPE string.
              DATA t274 TYPE REF TO zif_lnt_interface_definition.
              t274 = t263.
              t273 = t274->get_name( ).
              DATA(t276) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t276->has = abap_true.
              t276->value = t273.
              t269 = t276.
            ENDIF.
            t261 = t269.
            DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t278) = VALUE abap_bool( ).
            IF t261 IS INITIAL.
              t278 = abap_true.
            ELSEIF t261->has = abap_false.
              t278 = abap_true.
            ENDIF.
            IF t278 = abap_true.
            ELSE.
              DATA t281 TYPE string.
              DATA t282 TYPE string.
              t282 = t261->value.
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
            DATA t288 TYPE string.
            DATA t289 TYPE string.
            t289 = t5->value.
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
            DATA t297 TYPE REF TO zcl_lnt_issue.
            DATA(t299) = CONV f( 1 ).
            DATA(t300) = |Interface matching XML name not found in ABAP file|.
            DATA(t301) = VALUE string( ).
            DATA t302 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t303 TYPE string.
            t303 = |xml_consistency|.
            DATA t305 TYPE string.
            t305 = |XML consistency|.
            DATA t307 TYPE string.
            t307 = |Checks the consistency of main XML files|.
            DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t312) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
            t312 = t312 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
            t312 = t312 && |ce table and field values\n* Transparent TABL objects have de|.
            t312 = t312 && |livery class and size category set\n* Lock parameter names in|.
            t312 = t312 && | ENQU objects are max 16 characters\n* Texts and translations|.
            t312 = t312 && | do not exceed maximum allowed length.|.
            DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t313->has = abap_true.
            t313->value = t312.
            t309 = t313.
            DATA t315 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t319 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t320 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t320.
            t319 = t320.
            DATA(t322) = |Naming|.
            t319->load( ).
            APPEND t322 TO t319->items.
            t319->save( ).
            DATA(t324) = |Syntax|.
            t319->load( ).
            APPEND t324 TO t319->items.
            t319->save( ).
            t315 = t319.
            DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t302 = NEW zcl_lnt_irule_metadata( i_key = t303 i_title = t305 i_short_description = t307 i_bad_example = t327 i_good_example = t329 i_extended_information = t309 i_tags = t315 i_pragma = t331 i_pseudo_comment = t333 ).
            CREATE OBJECT t302->zlnt_view_ownkeys_b0e8086400eb.
            t302->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t335 ).
            DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t336 ).
            ENDIF.
            DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t337 ).
            ENDIF.
            DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t338 ).
            ENDIF.
            DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t339 ).
            ENDIF.
            CREATE OBJECT t302->zlnt_json_ownkeys_70e5fd461788.
            t302->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t340) = |key|.
            DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t340 p1 = t341 ).
            DATA(t342) = |title|.
            DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t342 p1 = t343 ).
            ENDIF.
            DATA(t344) = |shortDescription|.
            DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t344 p1 = t345 ).
            ENDIF.
            DATA(t346) = |extendedInformation|.
            DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t346 p1 = t347 ).
            ENDIF.
            DATA(t348) = |tags|.
            DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t348 p1 = t349 ).
            ENDIF.
            t301 = t302->key.
            DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t350 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            t297 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t299 i_message_26cb = t300 i_key = t301 i_severity = t350 ).
            t3->load( ).
            APPEND t297 TO t3->items.
            t3->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    result = t3.

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
    t8 = t3.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t12) = VALUE abap_bool( ).
    IF t8 IS INITIAL.
      t12 = abap_true.
    ELSEIF t8->has = abap_false.
      t12 = abap_true.
    ENDIF.
    t7 = t12.
    t6 = t7.
    IF t7 = abap_false.
      DATA(t14) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t14 = xsdbool( t4 IS INITIAL ).
      t6 = t14.
    ENDIF.
    IF t6 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA(t22) = VALUE f( ).
    DATA(t23) = VALUE f( ).
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = VALUE string( ).
    IF t4 IS BOUND.
      t25 = t4->type_of( ).
      IF t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t4->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
        t25 = `function`.
      ENDIF.
    ELSE.
      t25 = `undefined`.
    ENDIF.
    DATA(t27) = |number|.
    t24 = xsdbool( t25 = t27 ).
    IF t24 = abap_true.
      DATA t28 TYPE f.
      t28 = t4->as_number( ).
      t23 = t28.
    ELSE.
      DATA(t30) = VALUE f( ).
      DATA t31 TYPE string.
      t31 = t4->as_string( ).
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
    DATA t51 TYPE string.
    t51 = t3->value.
    t49 = strlen( t51 ).
    t48 = xsdbool( t49 > t22 ).
    IF t48 = abap_true.
      DATA(t55) = VALUE string( ).
      DATA(t56) = VALUE string( ).
      DATA(t57) = VALUE abap_bool( ).
      IF t5 IS BOUND.
        IF t5->has = abap_true.
          t57 = xsdbool( strlen( t5->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t57 = abap_true.
        DATA t59 TYPE string.
        DATA t60 TYPE string.
        DATA(t61) = |[|.
        DATA t62 TYPE string.
        t62 = t5->value.
        DATA(t64) = strlen( t61 ).
        t60 = |{ t61 }{ t62 }|.
        DATA(t65) = |] |.
        DATA(t66) = strlen( t60 ).
        t59 = |{ t60 }{ t65 }|.
        t56 = t59.
      ELSE.
        t56 = ||.
      ENDIF.
      t55 = t56.
      DATA t70 TYPE REF TO zcl_lnt_issue.
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
      DATA(t85) = strlen( t83 ).
      t82 = |{ t83 }{ t55 }|.
      DATA(t86) = ||.
      DATA(t87) = strlen( t82 ).
      t81 = |{ t82 }{ t86 }|.
      DATA(t89) = strlen( t81 ).
      t80 = |{ t81 }{ t2 }|.
      DATA(t90) = | "|.
      DATA(t91) = strlen( t80 ).
      t79 = |{ t80 }{ t90 }|.
      DATA t92 TYPE string.
      t92 = t3->value.
      DATA(t94) = strlen( t79 ).
      t78 = |{ t79 }{ t92 }|.
      DATA(t95) = |" exceeds maximum length of |.
      DATA(t96) = strlen( t78 ).
      t77 = |{ t78 }{ t95 }|.
      DATA(t97) = VALUE string( ).
      IF t22 <> trunc( t22 ) OR t22 > range_safe_integer OR t22 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t99) = CONV int8( t22 ).
      t97 = |{ t99 }|.
      DATA(t100) = strlen( t77 ).
      t76 = |{ t77 }{ t97 }|.
      DATA(t101) = | characters (actual: |.
      DATA(t102) = strlen( t76 ).
      t75 = |{ t76 }{ t101 }|.
      DATA t103 TYPE string.
      DATA t104 TYPE i.
      DATA t105 TYPE string.
      t105 = t3->value.
      t104 = strlen( t105 ).
      t103 = |{ t104 }|.
      DATA(t108) = strlen( t75 ).
      t74 = |{ t75 }{ t103 }|.
      DATA(t109) = |)|.
      DATA(t110) = strlen( t74 ).
      t73 = |{ t74 }{ t109 }|.
      DATA(t111) = VALUE string( ).
      DATA t112 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t113 TYPE string.
      t113 = |xml_consistency|.
      DATA t115 TYPE string.
      t115 = |XML consistency|.
      DATA t117 TYPE string.
      t117 = |Checks the consistency of main XML files|.
      DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t122) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
      t122 = t122 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
      t122 = t122 && |ce table and field values\n* Transparent TABL objects have de|.
      t122 = t122 && |livery class and size category set\n* Lock parameter names in|.
      t122 = t122 && | ENQU objects are max 16 characters\n* Texts and translations|.
      t122 = t122 && | do not exceed maximum allowed length.|.
      DATA(t123) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t123->has = abap_true.
      t123->value = t122.
      t119 = t123.
      DATA t125 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t129 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t130 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t130.
      t129 = t130.
      DATA(t132) = |Naming|.
      t129->load( ).
      APPEND t132 TO t129->items.
      t129->save( ).
      DATA(t134) = |Syntax|.
      t129->load( ).
      APPEND t134 TO t129->items.
      t129->save( ).
      t125 = t129.
      DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t112 = NEW zcl_lnt_irule_metadata( i_key = t113 i_title = t115 i_short_description = t117 i_bad_example = t137 i_good_example = t139 i_extended_information = t119 i_tags = t125 i_pragma = t141 i_pseudo_comment = t143 ).
      CREATE OBJECT t112->zlnt_view_ownkeys_b0e8086400eb.
      t112->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t145 ).
      DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t112->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t146 ).
      ENDIF.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t112->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t147 ).
      ENDIF.
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t112->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t148 ).
      ENDIF.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t112->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t149 ).
      ENDIF.
      CREATE OBJECT t112->zlnt_json_ownkeys_70e5fd461788.
      t112->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t150) = |key|.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t150 p1 = t151 ).
      DATA(t152) = |title|.
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t152 p1 = t153 ).
      ENDIF.
      DATA(t154) = |shortDescription|.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
      ENDIF.
      DATA(t156) = |extendedInformation|.
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
      ENDIF.
      DATA(t158) = |tags|.
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
      ENDIF.
      t111 = t112->key.
      DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t160 = me->conf->zlnt_view_read_sr_b4bcf11cce6c( ).
      t70 = zcl_lnt_issue=>at_row( i_file = t1 i_row = t72 i_message_26cb = t73 i_key = t111 i_severity = t160 ).
      result = t70.
      RETURN.
    ENDIF.
    CLEAR result.

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
    DATA t7 TYPE REF TO zcl_lnt_data_element.
    t7 = t1.
    DATA t10 TYPE REF TO zcl_lnt_iparse_result.
    t10 = t7->pr_in_src_obj_dt_elm_ts_dt_elm( ).
    DATA t13 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA t14 TYPE REF TO zcl_lnt_shape_50142cbd.
    t14 = t7->parsed_xml.
    t13 = t14.
    DATA t16 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA(t17) = xsdbool( t13 IS INITIAL ).
    IF t17 = abap_true.
    ELSE.
      DATA t20 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA t21 TYPE REF TO zcl_lnt_shape_50142cbd.
      t21 = t13.
      t20 = t21->texts.
      t16 = t20.
    ENDIF.
    t5 = t16.
    DATA t23 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA t25 TYPE REF TO zcl_lnt_data_element.
    t25 = t1.
    DATA t28 TYPE REF TO zcl_lnt_iparse_result.
    t28 = t25->pr_in_src_obj_dt_elm_ts_dt_elm( ).
    DATA t31 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA t32 TYPE REF TO zcl_lnt_shape_50142cbd.
    t32 = t25->parsed_xml.
    t31 = t32.
    DATA t34 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA(t35) = xsdbool( t31 IS INITIAL ).
    IF t35 = abap_true.
    ELSE.
      DATA t38 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA t39 TYPE REF TO zcl_lnt_shape_50142cbd.
      t39 = t31.
      t38 = t39->text_max_lengths.
      t34 = t38.
    ENDIF.
    t23 = t34.
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = VALUE abap_bool( ).
    DATA(t43) = VALUE abap_bool( ).
    DATA(t44) = VALUE abap_bool( ).
    DATA(t45) = VALUE abap_bool( ).
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t48 TYPE REF TO zcl_lnt_shape_66add1d1.
    t48 = t5.
    DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t51) = xsdbool( t48 IS INITIAL ).
    IF t51 = abap_true.
    ELSE.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t55 TYPE REF TO zcl_lnt_shape_66add1d1.
      t55 = t48.
      t54 = t55->short.
      t50 = t54.
    ENDIF.
    t46 = t50.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t59) = VALUE abap_bool( ).
    DATA(t60) = VALUE abap_bool( ).
    IF t46 IS INITIAL.
      t60 = abap_true.
    ELSEIF t46->has = abap_false.
      t60 = abap_true.
    ENDIF.
    t59 = xsdbool( t60 = abap_false ).
    t45 = t59.
    t44 = t45.
    IF t45 = abap_false.
      DATA(t62) = VALUE abap_bool( ).
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t65 TYPE REF TO zcl_lnt_shape_66add1d1.
      t65 = t5.
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t68) = xsdbool( t65 IS INITIAL ).
      IF t68 = abap_true.
      ELSE.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t72 TYPE REF TO zcl_lnt_shape_66add1d1.
        t72 = t65.
        t71 = t72->medium.
        t67 = t71.
      ENDIF.
      t63 = t67.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = VALUE abap_bool( ).
      IF t63 IS INITIAL.
        t77 = abap_true.
      ELSEIF t63->has = abap_false.
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
      DATA t82 TYPE REF TO zcl_lnt_shape_66add1d1.
      t82 = t5.
      DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t85) = xsdbool( t82 IS INITIAL ).
      IF t85 = abap_true.
      ELSE.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t89 TYPE REF TO zcl_lnt_shape_66add1d1.
        t89 = t82.
        t88 = t89->long.
        t84 = t88.
      ENDIF.
      t80 = t84.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t93) = VALUE abap_bool( ).
      DATA(t94) = VALUE abap_bool( ).
      IF t80 IS INITIAL.
        t94 = abap_true.
      ELSEIF t80->has = abap_false.
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
      DATA t99 TYPE REF TO zcl_lnt_shape_66add1d1.
      t99 = t5.
      DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t102) = xsdbool( t99 IS INITIAL ).
      IF t102 = abap_true.
      ELSE.
        DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t106 TYPE REF TO zcl_lnt_shape_66add1d1.
        t106 = t99.
        t105 = t106->heading.
        t101 = t105.
      ENDIF.
      t97 = t101.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t110) = VALUE abap_bool( ).
      DATA(t111) = VALUE abap_bool( ).
      IF t97 IS INITIAL.
        t111 = abap_true.
      ELSEIF t97->has = abap_false.
        t111 = abap_true.
      ENDIF.
      t110 = xsdbool( t111 = abap_false ).
      t96 = t110.
      t42 = t96.
    ENDIF.
    t41 = t42.
    DATA(t113) = VALUE abap_bool( ).
    DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t116 TYPE REF TO zcl_lnt_shape_66add1d1.
    t116 = t5.
    DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t119) = xsdbool( t116 IS INITIAL ).
    IF t119 = abap_true.
    ELSE.
      DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t123 TYPE REF TO zcl_lnt_shape_66add1d1.
      t123 = t116.
      t122 = t123->short.
      t118 = t122.
    ENDIF.
    t114 = t118.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t127) = VALUE abap_bool( ).
    DATA(t128) = VALUE abap_bool( ).
    IF t114 IS INITIAL.
      t128 = abap_true.
    ELSEIF t114->has = abap_false.
      t128 = abap_true.
    ENDIF.
    t127 = xsdbool( t128 = abap_false ).
    t113 = t127.
    IF t113 = abap_true.
      DATA t130 TYPE REF TO zcl_lnt_issue.
      DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t136 TYPE REF TO zcl_lnt_shape_66add1d1.
      t136 = t23.
      DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t139) = xsdbool( t136 IS INITIAL ).
      IF t139 = abap_true.
      ELSE.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t143 TYPE REF TO zcl_lnt_shape_66add1d1.
        t143 = t136.
        t142 = t143->short.
        t138 = t142.
      ENDIF.
      t134 = t138.
      DATA t145 TYPE REF TO zcl_lnt_issue.
      DATA(t146) = VALUE abap_bool( ).
      DATA(t147) = VALUE abap_bool( ).
      DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t148 = t134.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t152) = VALUE abap_bool( ).
      IF t148 IS INITIAL.
        t152 = abap_true.
      ELSEIF t148->has = abap_false.
        t152 = abap_true.
      ENDIF.
      t147 = t152.
      t146 = t147.
      IF t147 = abap_false.
        DATA t154 TYPE abap_bool.
        DATA t155 TYPE string.
        t155 = t134->value.
        DATA(t157) = ||.
        t154 = xsdbool( t155 = t157 ).
        t146 = t154.
      ENDIF.
      IF t146 = abap_true.
        DATA t160 TYPE REF TO zcl_lnt_issue.
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
        DATA t172 TYPE string.
        t172 = |xml_consistency|.
        DATA t174 TYPE string.
        t174 = |XML consistency|.
        DATA t176 TYPE string.
        t176 = |Checks the consistency of main XML files|.
        DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t181) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
        t181 = t181 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
        t181 = t181 && |ce table and field values\n* Transparent TABL objects have de|.
        t181 = t181 && |livery class and size category set\n* Lock parameter names in|.
        t181 = t181 && | ENQU objects are max 16 characters\n* Texts and translations|.
        t181 = t181 && | do not exceed maximum allowed length.|.
        DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t182->has = abap_true.
        t182->value = t181.
        t178 = t182.
        DATA t184 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t188 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t189 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t189.
        t188 = t189.
        DATA(t191) = |Naming|.
        t188->load( ).
        APPEND t191 TO t188->items.
        t188->save( ).
        DATA(t193) = |Syntax|.
        t188->load( ).
        APPEND t193 TO t188->items.
        t188->save( ).
        t184 = t188.
        DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t171 = NEW zcl_lnt_irule_metadata( i_key = t172 i_title = t174 i_short_description = t176 i_bad_example = t196 i_good_example = t198 i_extended_information = t178 i_tags = t184 i_pragma = t200 i_pseudo_comment = t202 ).
        CREATE OBJECT t171->zlnt_view_ownkeys_b0e8086400eb.
        t171->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t204 ).
        DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t205 ).
        ENDIF.
        DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t206 ).
        ENDIF.
        DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t207 ).
        ENDIF.
        DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t208 ).
        ENDIF.
        CREATE OBJECT t171->zlnt_json_ownkeys_70e5fd461788.
        t171->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t209) = |key|.
        DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t209 p1 = t210 ).
        DATA(t211) = |title|.
        DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t211 p1 = t212 ).
        ENDIF.
        DATA(t213) = |shortDescription|.
        DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t213 p1 = t214 ).
        ENDIF.
        DATA(t215) = |extendedInformation|.
        DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t215 p1 = t216 ).
        ENDIF.
        DATA(t217) = |tags|.
        DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t217 p1 = t218 ).
        ENDIF.
        t170 = t171->key.
        DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t219 = me->conf->zlnt_view_read_sr_d3e3c311c261( ).
        t160 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t162 i_message_26cb = t163 i_key = t170 i_severity = t219 ).
        t145 = t160.
      ELSE.
        CLEAR t145.
      ENDIF.
      t130 = t145.
      DATA t223 TYPE abap_bool.
      t223 = xsdbool( t130 IS BOUND ).
      IF t223 = abap_true.
        DATA t226 TYPE REF TO zcl_lnt_issue.
        t226 = t130.
        t3->load( ).
        APPEND t226 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDIF.
    DATA(t228) = VALUE abap_bool( ).
    DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t231 TYPE REF TO zcl_lnt_shape_66add1d1.
    t231 = t5.
    DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t234) = xsdbool( t231 IS INITIAL ).
    IF t234 = abap_true.
    ELSE.
      DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t238 TYPE REF TO zcl_lnt_shape_66add1d1.
      t238 = t231.
      t237 = t238->medium.
      t233 = t237.
    ENDIF.
    t229 = t233.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t242) = VALUE abap_bool( ).
    DATA(t243) = VALUE abap_bool( ).
    IF t229 IS INITIAL.
      t243 = abap_true.
    ELSEIF t229->has = abap_false.
      t243 = abap_true.
    ENDIF.
    t242 = xsdbool( t243 = abap_false ).
    t228 = t242.
    IF t228 = abap_true.
      DATA t245 TYPE REF TO zcl_lnt_issue.
      DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t251 TYPE REF TO zcl_lnt_shape_66add1d1.
      t251 = t23.
      DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t254) = xsdbool( t251 IS INITIAL ).
      IF t254 = abap_true.
      ELSE.
        DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t258 TYPE REF TO zcl_lnt_shape_66add1d1.
        t258 = t251.
        t257 = t258->medium.
        t253 = t257.
      ENDIF.
      t249 = t253.
      DATA t260 TYPE REF TO zcl_lnt_issue.
      DATA(t261) = VALUE abap_bool( ).
      DATA(t262) = VALUE abap_bool( ).
      DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t263 = t249.
      DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t267) = VALUE abap_bool( ).
      IF t263 IS INITIAL.
        t267 = abap_true.
      ELSEIF t263->has = abap_false.
        t267 = abap_true.
      ENDIF.
      t262 = t267.
      t261 = t262.
      IF t262 = abap_false.
        DATA t269 TYPE abap_bool.
        DATA t270 TYPE string.
        t270 = t249->value.
        DATA(t272) = ||.
        t269 = xsdbool( t270 = t272 ).
        t261 = t269.
      ENDIF.
      IF t261 = abap_true.
        DATA t275 TYPE REF TO zcl_lnt_issue.
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
        DATA t287 TYPE string.
        t287 = |xml_consistency|.
        DATA t289 TYPE string.
        t289 = |XML consistency|.
        DATA t291 TYPE string.
        t291 = |Checks the consistency of main XML files|.
        DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t296) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
        t296 = t296 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
        t296 = t296 && |ce table and field values\n* Transparent TABL objects have de|.
        t296 = t296 && |livery class and size category set\n* Lock parameter names in|.
        t296 = t296 && | ENQU objects are max 16 characters\n* Texts and translations|.
        t296 = t296 && | do not exceed maximum allowed length.|.
        DATA(t297) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t297->has = abap_true.
        t297->value = t296.
        t293 = t297.
        DATA t299 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t303 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t304 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t304.
        t303 = t304.
        DATA(t306) = |Naming|.
        t303->load( ).
        APPEND t306 TO t303->items.
        t303->save( ).
        DATA(t308) = |Syntax|.
        t303->load( ).
        APPEND t308 TO t303->items.
        t303->save( ).
        t299 = t303.
        DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t286 = NEW zcl_lnt_irule_metadata( i_key = t287 i_title = t289 i_short_description = t291 i_bad_example = t311 i_good_example = t313 i_extended_information = t293 i_tags = t299 i_pragma = t315 i_pseudo_comment = t317 ).
        CREATE OBJECT t286->zlnt_view_ownkeys_b0e8086400eb.
        t286->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t286->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t319 ).
        DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t286->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t286->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t320 ).
        ENDIF.
        DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t286->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t286->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t321 ).
        ENDIF.
        DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t286->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t286->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t322 ).
        ENDIF.
        DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t286->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t286->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t323 ).
        ENDIF.
        CREATE OBJECT t286->zlnt_json_ownkeys_70e5fd461788.
        t286->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t324) = |key|.
        DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t286->zlnt_json_ownkeys_70e5fd461788->put( p0 = t324 p1 = t325 ).
        DATA(t326) = |title|.
        DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t286->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t286->zlnt_json_ownkeys_70e5fd461788->put( p0 = t326 p1 = t327 ).
        ENDIF.
        DATA(t328) = |shortDescription|.
        DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t286->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t286->zlnt_json_ownkeys_70e5fd461788->put( p0 = t328 p1 = t329 ).
        ENDIF.
        DATA(t330) = |extendedInformation|.
        DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t286->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t286->zlnt_json_ownkeys_70e5fd461788->put( p0 = t330 p1 = t331 ).
        ENDIF.
        DATA(t332) = |tags|.
        DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t286->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t286->zlnt_json_ownkeys_70e5fd461788->put( p0 = t332 p1 = t333 ).
        ENDIF.
        t285 = t286->key.
        DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t334 = me->conf->zlnt_view_read_sr_d3e3c311c261( ).
        t275 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t277 i_message_26cb = t278 i_key = t285 i_severity = t334 ).
        t260 = t275.
      ELSE.
        CLEAR t260.
      ENDIF.
      t245 = t260.
      DATA t338 TYPE abap_bool.
      t338 = xsdbool( t245 IS BOUND ).
      IF t338 = abap_true.
        DATA t341 TYPE REF TO zcl_lnt_issue.
        t341 = t245.
        t3->load( ).
        APPEND t341 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDIF.
    DATA(t343) = VALUE abap_bool( ).
    DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t346 TYPE REF TO zcl_lnt_shape_66add1d1.
    t346 = t5.
    DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t349) = xsdbool( t346 IS INITIAL ).
    IF t349 = abap_true.
    ELSE.
      DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t353 TYPE REF TO zcl_lnt_shape_66add1d1.
      t353 = t346.
      t352 = t353->long.
      t348 = t352.
    ENDIF.
    t344 = t348.
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t357) = VALUE abap_bool( ).
    DATA(t358) = VALUE abap_bool( ).
    IF t344 IS INITIAL.
      t358 = abap_true.
    ELSEIF t344->has = abap_false.
      t358 = abap_true.
    ENDIF.
    t357 = xsdbool( t358 = abap_false ).
    t343 = t357.
    IF t343 = abap_true.
      DATA t360 TYPE REF TO zcl_lnt_issue.
      DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t366 TYPE REF TO zcl_lnt_shape_66add1d1.
      t366 = t23.
      DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t369) = xsdbool( t366 IS INITIAL ).
      IF t369 = abap_true.
      ELSE.
        DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t373 TYPE REF TO zcl_lnt_shape_66add1d1.
        t373 = t366.
        t372 = t373->long.
        t368 = t372.
      ENDIF.
      t364 = t368.
      DATA t375 TYPE REF TO zcl_lnt_issue.
      DATA(t376) = VALUE abap_bool( ).
      DATA(t377) = VALUE abap_bool( ).
      DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t378 = t364.
      DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t382) = VALUE abap_bool( ).
      IF t378 IS INITIAL.
        t382 = abap_true.
      ELSEIF t378->has = abap_false.
        t382 = abap_true.
      ENDIF.
      t377 = t382.
      t376 = t377.
      IF t377 = abap_false.
        DATA t384 TYPE abap_bool.
        DATA t385 TYPE string.
        t385 = t364->value.
        DATA(t387) = ||.
        t384 = xsdbool( t385 = t387 ).
        t376 = t384.
      ENDIF.
      IF t376 = abap_true.
        DATA t390 TYPE REF TO zcl_lnt_issue.
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
        DATA t402 TYPE string.
        t402 = |xml_consistency|.
        DATA t404 TYPE string.
        t404 = |XML consistency|.
        DATA t406 TYPE string.
        t406 = |Checks the consistency of main XML files|.
        DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t411) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
        t411 = t411 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
        t411 = t411 && |ce table and field values\n* Transparent TABL objects have de|.
        t411 = t411 && |livery class and size category set\n* Lock parameter names in|.
        t411 = t411 && | ENQU objects are max 16 characters\n* Texts and translations|.
        t411 = t411 && | do not exceed maximum allowed length.|.
        DATA(t412) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t412->has = abap_true.
        t412->value = t411.
        t408 = t412.
        DATA t414 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t418 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t419 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t419.
        t418 = t419.
        DATA(t421) = |Naming|.
        t418->load( ).
        APPEND t421 TO t418->items.
        t418->save( ).
        DATA(t423) = |Syntax|.
        t418->load( ).
        APPEND t423 TO t418->items.
        t418->save( ).
        t414 = t418.
        DATA t426 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t428 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t401 = NEW zcl_lnt_irule_metadata( i_key = t402 i_title = t404 i_short_description = t406 i_bad_example = t426 i_good_example = t428 i_extended_information = t408 i_tags = t414 i_pragma = t430 i_pseudo_comment = t432 ).
        CREATE OBJECT t401->zlnt_view_ownkeys_b0e8086400eb.
        t401->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t434 ).
        DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t401->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t435 ).
        ENDIF.
        DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t401->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t436 ).
        ENDIF.
        DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t401->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t437 ).
        ENDIF.
        DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t401->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t438 ).
        ENDIF.
        CREATE OBJECT t401->zlnt_json_ownkeys_70e5fd461788.
        t401->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t439) = |key|.
        DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t439 p1 = t440 ).
        DATA(t441) = |title|.
        DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t401->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t441 p1 = t442 ).
        ENDIF.
        DATA(t443) = |shortDescription|.
        DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t401->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t443 p1 = t444 ).
        ENDIF.
        DATA(t445) = |extendedInformation|.
        DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t401->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t445 p1 = t446 ).
        ENDIF.
        DATA(t447) = |tags|.
        DATA t448 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t401->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t447 p1 = t448 ).
        ENDIF.
        t400 = t401->key.
        DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t449 = me->conf->zlnt_view_read_sr_d3e3c311c261( ).
        t390 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t392 i_message_26cb = t393 i_key = t400 i_severity = t449 ).
        t375 = t390.
      ELSE.
        CLEAR t375.
      ENDIF.
      t360 = t375.
      DATA t453 TYPE abap_bool.
      t453 = xsdbool( t360 IS BOUND ).
      IF t453 = abap_true.
        DATA t456 TYPE REF TO zcl_lnt_issue.
        t456 = t360.
        t3->load( ).
        APPEND t456 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDIF.
    DATA(t458) = VALUE abap_bool( ).
    DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t461 TYPE REF TO zcl_lnt_shape_66add1d1.
    t461 = t5.
    DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t464) = xsdbool( t461 IS INITIAL ).
    IF t464 = abap_true.
    ELSE.
      DATA t467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t468 TYPE REF TO zcl_lnt_shape_66add1d1.
      t468 = t461.
      t467 = t468->heading.
      t463 = t467.
    ENDIF.
    t459 = t463.
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t472) = VALUE abap_bool( ).
    DATA(t473) = VALUE abap_bool( ).
    IF t459 IS INITIAL.
      t473 = abap_true.
    ELSEIF t459->has = abap_false.
      t473 = abap_true.
    ENDIF.
    t472 = xsdbool( t473 = abap_false ).
    t458 = t472.
    IF t458 = abap_true.
      DATA t475 TYPE REF TO zcl_lnt_issue.
      DATA t479 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t481 TYPE REF TO zcl_lnt_shape_66add1d1.
      t481 = t23.
      DATA t483 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t484) = xsdbool( t481 IS INITIAL ).
      IF t484 = abap_true.
      ELSE.
        DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t488 TYPE REF TO zcl_lnt_shape_66add1d1.
        t488 = t481.
        t487 = t488->heading.
        t483 = t487.
      ENDIF.
      t479 = t483.
      DATA t490 TYPE REF TO zcl_lnt_issue.
      DATA(t491) = VALUE abap_bool( ).
      DATA(t492) = VALUE abap_bool( ).
      DATA t493 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t493 = t479.
      DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t497) = VALUE abap_bool( ).
      IF t493 IS INITIAL.
        t497 = abap_true.
      ELSEIF t493->has = abap_false.
        t497 = abap_true.
      ENDIF.
      t492 = t497.
      t491 = t492.
      IF t492 = abap_false.
        DATA t499 TYPE abap_bool.
        DATA t500 TYPE string.
        t500 = t479->value.
        DATA(t502) = ||.
        t499 = xsdbool( t500 = t502 ).
        t491 = t499.
      ENDIF.
      IF t491 = abap_true.
        DATA t505 TYPE REF TO zcl_lnt_issue.
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
        DATA t517 TYPE string.
        t517 = |xml_consistency|.
        DATA t519 TYPE string.
        t519 = |XML consistency|.
        DATA t521 TYPE string.
        t521 = |Checks the consistency of main XML files|.
        DATA t523 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t526) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
        t526 = t526 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
        t526 = t526 && |ce table and field values\n* Transparent TABL objects have de|.
        t526 = t526 && |livery class and size category set\n* Lock parameter names in|.
        t526 = t526 && | ENQU objects are max 16 characters\n* Texts and translations|.
        t526 = t526 && | do not exceed maximum allowed length.|.
        DATA(t527) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t527->has = abap_true.
        t527->value = t526.
        t523 = t527.
        DATA t529 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t533 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t534 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t534.
        t533 = t534.
        DATA(t536) = |Naming|.
        t533->load( ).
        APPEND t536 TO t533->items.
        t533->save( ).
        DATA(t538) = |Syntax|.
        t533->load( ).
        APPEND t538 TO t533->items.
        t533->save( ).
        t529 = t533.
        DATA t541 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t543 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t545 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t547 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t516 = NEW zcl_lnt_irule_metadata( i_key = t517 i_title = t519 i_short_description = t521 i_bad_example = t541 i_good_example = t543 i_extended_information = t523 i_tags = t529 i_pragma = t545 i_pseudo_comment = t547 ).
        CREATE OBJECT t516->zlnt_view_ownkeys_b0e8086400eb.
        t516->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t516->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t549 ).
        DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t516->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t516->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t550 ).
        ENDIF.
        DATA t551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t516->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t516->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t551 ).
        ENDIF.
        DATA t552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t516->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t516->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t552 ).
        ENDIF.
        DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t516->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t516->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t553 ).
        ENDIF.
        CREATE OBJECT t516->zlnt_json_ownkeys_70e5fd461788.
        t516->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t554) = |key|.
        DATA t555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = t554 p1 = t555 ).
        DATA(t556) = |title|.
        DATA t557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t516->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = t556 p1 = t557 ).
        ENDIF.
        DATA(t558) = |shortDescription|.
        DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t516->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = t558 p1 = t559 ).
        ENDIF.
        DATA(t560) = |extendedInformation|.
        DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t516->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = t560 p1 = t561 ).
        ENDIF.
        DATA(t562) = |tags|.
        DATA t563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t516->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = t562 p1 = t563 ).
        ENDIF.
        t515 = t516->key.
        DATA t564 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t564 = me->conf->zlnt_view_read_sr_d3e3c311c261( ).
        t505 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t507 i_message_26cb = t508 i_key = t515 i_severity = t564 ).
        t490 = t505.
      ELSE.
        CLEAR t490.
      ENDIF.
      t475 = t490.
      DATA t568 TYPE abap_bool.
      t568 = xsdbool( t475 IS BOUND ).
      IF t568 = abap_true.
        DATA t571 TYPE REF TO zcl_lnt_issue.
        t571 = t475.
        t3->load( ).
        APPEND t571 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDIF.
    IF t41 = abap_true.
      DATA t574 TYPE REF TO zcl_lnt_issue.
      DATA t578 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t580 TYPE REF TO zcl_lnt_data_element.
      t580 = t1.
      DATA t583 TYPE REF TO zcl_lnt_iparse_result.
      t583 = t580->pr_in_src_obj_dt_elm_ts_dt_elm( ).
      DATA t586 TYPE REF TO zcl_lnt_shape_50142cbd.
      DATA t587 TYPE REF TO zcl_lnt_shape_50142cbd.
      t587 = t580->parsed_xml.
      t586 = t587.
      DATA t589 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t590) = xsdbool( t586 IS INITIAL ).
      IF t590 = abap_true.
      ELSE.
        DATA t593 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t594 TYPE REF TO zcl_lnt_shape_50142cbd.
        t594 = t586.
        t593 = t594->dtelmaster.
        t589 = t593.
      ENDIF.
      t578 = t589.
      DATA t596 TYPE REF TO zcl_lnt_issue.
      DATA(t597) = VALUE abap_bool( ).
      DATA(t598) = VALUE abap_bool( ).
      DATA t599 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t599 = t578.
      DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t603) = VALUE abap_bool( ).
      IF t599 IS INITIAL.
        t603 = abap_true.
      ELSEIF t599->has = abap_false.
        t603 = abap_true.
      ENDIF.
      t598 = t603.
      t597 = t598.
      IF t598 = abap_false.
        DATA t605 TYPE abap_bool.
        DATA t606 TYPE string.
        t606 = t578->value.
        DATA(t608) = ||.
        t605 = xsdbool( t606 = t608 ).
        t597 = t605.
      ENDIF.
      IF t597 = abap_true.
        DATA t611 TYPE REF TO zcl_lnt_issue.
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
        DATA t623 TYPE string.
        t623 = |xml_consistency|.
        DATA t625 TYPE string.
        t625 = |XML consistency|.
        DATA t627 TYPE string.
        t627 = |Checks the consistency of main XML files|.
        DATA t629 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t632) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
        t632 = t632 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
        t632 = t632 && |ce table and field values\n* Transparent TABL objects have de|.
        t632 = t632 && |livery class and size category set\n* Lock parameter names in|.
        t632 = t632 && | ENQU objects are max 16 characters\n* Texts and translations|.
        t632 = t632 && | do not exceed maximum allowed length.|.
        DATA(t633) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t633->has = abap_true.
        t633->value = t632.
        t629 = t633.
        DATA t635 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t639 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t640 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t640.
        t639 = t640.
        DATA(t642) = |Naming|.
        t639->load( ).
        APPEND t642 TO t639->items.
        t639->save( ).
        DATA(t644) = |Syntax|.
        t639->load( ).
        APPEND t644 TO t639->items.
        t639->save( ).
        t635 = t639.
        DATA t647 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t649 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t651 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t653 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t622 = NEW zcl_lnt_irule_metadata( i_key = t623 i_title = t625 i_short_description = t627 i_bad_example = t647 i_good_example = t649 i_extended_information = t629 i_tags = t635 i_pragma = t651 i_pseudo_comment = t653 ).
        CREATE OBJECT t622->zlnt_view_ownkeys_b0e8086400eb.
        t622->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t622->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t655 ).
        DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t622->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t622->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t656 ).
        ENDIF.
        DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t622->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t622->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t657 ).
        ENDIF.
        DATA t658 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t622->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t622->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t658 ).
        ENDIF.
        DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t622->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t622->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t659 ).
        ENDIF.
        CREATE OBJECT t622->zlnt_json_ownkeys_70e5fd461788.
        t622->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t660) = |key|.
        DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t622->zlnt_json_ownkeys_70e5fd461788->put( p0 = t660 p1 = t661 ).
        DATA(t662) = |title|.
        DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t622->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t622->zlnt_json_ownkeys_70e5fd461788->put( p0 = t662 p1 = t663 ).
        ENDIF.
        DATA(t664) = |shortDescription|.
        DATA t665 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t622->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t622->zlnt_json_ownkeys_70e5fd461788->put( p0 = t664 p1 = t665 ).
        ENDIF.
        DATA(t666) = |extendedInformation|.
        DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t622->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t622->zlnt_json_ownkeys_70e5fd461788->put( p0 = t666 p1 = t667 ).
        ENDIF.
        DATA(t668) = |tags|.
        DATA t669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t622->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t622->zlnt_json_ownkeys_70e5fd461788->put( p0 = t668 p1 = t669 ).
        ENDIF.
        t621 = t622->key.
        DATA t670 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t670 = me->conf->zlnt_view_read_sr_d3e3c311c261( ).
        t611 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t613 i_message_26cb = t614 i_key = t621 i_severity = t670 ).
        t596 = t611.
      ELSE.
        CLEAR t596.
      ENDIF.
      t574 = t596.
      DATA t674 TYPE abap_bool.
      t674 = xsdbool( t574 IS BOUND ).
      IF t674 = abap_true.
        DATA t677 TYPE REF TO zcl_lnt_issue.
        t677 = t574.
        t3->load( ).
        APPEND t677 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDIF.
    DATA t679 TYPE REF TO zlnt_runtime_arra_ea03a77504b6.
    DATA t680 TYPE REF TO zlnt_runtime_arra_ea03a77504b6.
    DATA t681 TYPE REF TO zlnt_runtime_arra_ea03a77504b6.
    CREATE OBJECT t681.
    t680 = t681.
    DATA t683 TYPE REF TO zcl_lnt_issue.
    DATA t686 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t688 TYPE REF TO zcl_lnt_data_element.
    t688 = t1.
    DATA t691 TYPE REF TO zcl_lnt_iparse_result.
    t691 = t688->pr_in_src_obj_dt_elm_ts_dt_elm( ).
    DATA t694 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA t695 TYPE REF TO zcl_lnt_shape_50142cbd.
    t695 = t688->parsed_xml.
    t694 = t695.
    DATA t697 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t698) = xsdbool( t694 IS INITIAL ).
    IF t698 = abap_true.
    ELSE.
      DATA t701 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t702 TYPE REF TO zcl_lnt_shape_50142cbd.
      t702 = t694.
      t701 = t702->description.
      t697 = t701.
    ENDIF.
    t686 = t697.
    DATA t704 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t705 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t706) = 60.
    CREATE OBJECT t705.
    t705->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t705->nval = t706.
    t704 = t705.
    DATA t707 TYPE REF TO zcl_lnt_issue.
    DATA(t708) = VALUE abap_bool( ).
    DATA(t709) = VALUE abap_bool( ).
    DATA t710 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t710 = t686.
    DATA t712 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t714) = VALUE abap_bool( ).
    IF t710 IS INITIAL.
      t714 = abap_true.
    ELSEIF t710->has = abap_false.
      t714 = abap_true.
    ENDIF.
    t709 = t714.
    t708 = t709.
    IF t709 = abap_false.
      DATA(t716) = VALUE abap_bool( ).
      DATA t719 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t716 = xsdbool( t704 IS INITIAL ).
      t708 = t716.
    ENDIF.
    IF t708 = abap_true.
    ELSE.
      DATA(t725) = VALUE f( ).
      DATA(t726) = VALUE f( ).
      DATA(t727) = VALUE abap_bool( ).
      DATA(t728) = VALUE string( ).
      IF t704 IS BOUND.
        t728 = t704->type_of( ).
        IF t704->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t704->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t728 = `function`.
        ENDIF.
      ELSE.
        t728 = `undefined`.
      ENDIF.
      DATA(t730) = |number|.
      t727 = xsdbool( t728 = t730 ).
      IF t727 = abap_true.
        DATA t731 TYPE f.
        t731 = t704->as_number( ).
        t726 = t731.
      ELSE.
        DATA(t733) = VALUE f( ).
        DATA t734 TYPE string.
        t734 = t704->as_string( ).
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
      DATA t752 TYPE abap_bool.
      DATA t753 TYPE f.
      DATA t755 TYPE string.
      t755 = t686->value.
      t753 = strlen( t755 ).
      t752 = xsdbool( t753 > t725 ).
      IF t752 = abap_true.
        DATA(t760) = VALUE string( ).
        DATA(t761) = VALUE string( ).
        DATA(t762) = VALUE abap_bool( ).
        DATA t763 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF t762 = abap_true.
          DATA t764 TYPE string.
          DATA t765 TYPE string.
          DATA(t766) = |[|.
          DATA t767 TYPE string.
          DATA t768 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t767 = t768->value.
          DATA(t769) = strlen( t766 ).
          t765 = |{ t766 }{ t767 }|.
          DATA(t770) = |] |.
          DATA(t771) = strlen( t765 ).
          t764 = |{ t765 }{ t770 }|.
          t761 = t764.
        ELSE.
          t761 = ||.
        ENDIF.
        t760 = t761.
        DATA t775 TYPE REF TO zcl_lnt_issue.
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
        DATA(t790) = strlen( t788 ).
        t787 = |{ t788 }{ t760 }|.
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
        t797 = t686->value.
        DATA(t799) = strlen( t784 ).
        t783 = |{ t784 }{ t797 }|.
        DATA(t800) = |" exceeds maximum length of |.
        DATA(t801) = strlen( t783 ).
        t782 = |{ t783 }{ t800 }|.
        DATA(t802) = VALUE string( ).
        IF t725 <> trunc( t725 ) OR t725 > range_safe_integer OR t725 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t804) = CONV int8( t725 ).
        t802 = |{ t804 }|.
        DATA(t805) = strlen( t782 ).
        t781 = |{ t782 }{ t802 }|.
        DATA(t806) = | characters (actual: |.
        DATA(t807) = strlen( t781 ).
        t780 = |{ t781 }{ t806 }|.
        DATA t808 TYPE string.
        DATA t809 TYPE i.
        DATA t810 TYPE string.
        t810 = t686->value.
        t809 = strlen( t810 ).
        t808 = |{ t809 }|.
        DATA(t813) = strlen( t780 ).
        t779 = |{ t780 }{ t808 }|.
        DATA(t814) = |)|.
        DATA(t815) = strlen( t779 ).
        t778 = |{ t779 }{ t814 }|.
        DATA(t816) = VALUE string( ).
        DATA t817 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t818 TYPE string.
        t818 = |xml_consistency|.
        DATA t820 TYPE string.
        t820 = |XML consistency|.
        DATA t822 TYPE string.
        t822 = |Checks the consistency of main XML files|.
        DATA t824 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t827) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
        t827 = t827 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
        t827 = t827 && |ce table and field values\n* Transparent TABL objects have de|.
        t827 = t827 && |livery class and size category set\n* Lock parameter names in|.
        t827 = t827 && | ENQU objects are max 16 characters\n* Texts and translations|.
        t827 = t827 && | do not exceed maximum allowed length.|.
        DATA(t828) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t828->has = abap_true.
        t828->value = t827.
        t824 = t828.
        DATA t830 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t834 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t835 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t835.
        t834 = t835.
        DATA(t837) = |Naming|.
        t834->load( ).
        APPEND t837 TO t834->items.
        t834->save( ).
        DATA(t839) = |Syntax|.
        t834->load( ).
        APPEND t839 TO t834->items.
        t834->save( ).
        t830 = t834.
        DATA t842 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t844 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t846 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t848 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t817 = NEW zcl_lnt_irule_metadata( i_key = t818 i_title = t820 i_short_description = t822 i_bad_example = t842 i_good_example = t844 i_extended_information = t824 i_tags = t830 i_pragma = t846 i_pseudo_comment = t848 ).
        CREATE OBJECT t817->zlnt_view_ownkeys_b0e8086400eb.
        t817->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t850 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t817->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t850 ).
        DATA t851 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t817->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t817->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t851 ).
        ENDIF.
        DATA t852 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t817->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t817->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t852 ).
        ENDIF.
        DATA t853 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t817->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t817->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t853 ).
        ENDIF.
        DATA t854 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t817->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t817->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t854 ).
        ENDIF.
        CREATE OBJECT t817->zlnt_json_ownkeys_70e5fd461788.
        t817->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t855) = |key|.
        DATA t856 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t817->zlnt_json_ownkeys_70e5fd461788->put( p0 = t855 p1 = t856 ).
        DATA(t857) = |title|.
        DATA t858 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t817->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t817->zlnt_json_ownkeys_70e5fd461788->put( p0 = t857 p1 = t858 ).
        ENDIF.
        DATA(t859) = |shortDescription|.
        DATA t860 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t817->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t817->zlnt_json_ownkeys_70e5fd461788->put( p0 = t859 p1 = t860 ).
        ENDIF.
        DATA(t861) = |extendedInformation|.
        DATA t862 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t817->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t817->zlnt_json_ownkeys_70e5fd461788->put( p0 = t861 p1 = t862 ).
        ENDIF.
        DATA(t863) = |tags|.
        DATA t864 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t817->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t817->zlnt_json_ownkeys_70e5fd461788->put( p0 = t863 p1 = t864 ).
        ENDIF.
        t816 = t817->key.
        DATA t865 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t865 = me->conf->zlnt_view_read_sr_b4bcf11cce6c( ).
        t775 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t777 i_message_26cb = t778 i_key = t816 i_severity = t865 ).
        t751 = t775.
      ELSE.
        CLEAR t751.
      ENDIF.
      t707 = t751.
    ENDIF.
    t683 = t707.
    t680->load( ).
    APPEND t683 TO t680->items.
    t680->save( ).
    DATA t870 TYPE REF TO zcl_lnt_issue.
    DATA t873 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t875 TYPE REF TO zcl_lnt_shape_66add1d1.
    t875 = t5.
    DATA t877 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t878) = xsdbool( t875 IS INITIAL ).
    IF t878 = abap_true.
    ELSE.
      DATA t881 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t882 TYPE REF TO zcl_lnt_shape_66add1d1.
      t882 = t875.
      t881 = t882->short.
      t877 = t881.
    ENDIF.
    t873 = t877.
    DATA t884 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t885 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t886 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t887 TYPE REF TO zcl_lnt_shape_66add1d1.
    t887 = t23.
    DATA t889 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t890) = xsdbool( t887 IS INITIAL ).
    IF t890 = abap_true.
    ELSE.
      DATA t893 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t894 TYPE REF TO zcl_lnt_shape_66add1d1.
      t894 = t887.
      t893 = t894->short.
      t889 = t893.
    ENDIF.
    t886 = t889.
    IF t886 IS BOUND AND t886->has = abap_true.
      CREATE OBJECT t885.
      t885->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t885->sval = t886->value.
    ENDIF.
    t884 = t885.
    DATA t896 TYPE REF TO zcl_lnt_issue.
    DATA(t897) = VALUE abap_bool( ).
    DATA(t898) = VALUE abap_bool( ).
    DATA t899 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t899 = t873.
    DATA t901 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t903) = VALUE abap_bool( ).
    IF t899 IS INITIAL.
      t903 = abap_true.
    ELSEIF t899->has = abap_false.
      t903 = abap_true.
    ENDIF.
    t898 = t903.
    t897 = t898.
    IF t898 = abap_false.
      DATA(t905) = VALUE abap_bool( ).
      DATA t908 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t905 = xsdbool( t884 IS INITIAL ).
      t897 = t905.
    ENDIF.
    IF t897 = abap_true.
    ELSE.
      DATA(t914) = VALUE f( ).
      DATA(t915) = VALUE f( ).
      DATA(t916) = VALUE abap_bool( ).
      DATA(t917) = VALUE string( ).
      IF t884 IS BOUND.
        t917 = t884->type_of( ).
        IF t884->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t884->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t917 = `function`.
        ENDIF.
      ELSE.
        t917 = `undefined`.
      ENDIF.
      DATA(t919) = |number|.
      t916 = xsdbool( t917 = t919 ).
      IF t916 = abap_true.
        DATA t920 TYPE f.
        t920 = t884->as_number( ).
        t915 = t920.
      ELSE.
        DATA(t922) = VALUE f( ).
        DATA t923 TYPE string.
        t923 = t884->as_string( ).
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
      DATA t941 TYPE abap_bool.
      DATA t942 TYPE f.
      DATA t944 TYPE string.
      t944 = t873->value.
      t942 = strlen( t944 ).
      t941 = xsdbool( t942 > t914 ).
      IF t941 = abap_true.
        DATA(t949) = VALUE string( ).
        DATA(t950) = VALUE string( ).
        DATA(t951) = VALUE abap_bool( ).
        DATA t952 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF t951 = abap_true.
          DATA t953 TYPE string.
          DATA t954 TYPE string.
          DATA(t955) = |[|.
          DATA t956 TYPE string.
          DATA t957 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t956 = t957->value.
          DATA(t958) = strlen( t955 ).
          t954 = |{ t955 }{ t956 }|.
          DATA(t959) = |] |.
          DATA(t960) = strlen( t954 ).
          t953 = |{ t954 }{ t959 }|.
          t950 = t953.
        ELSE.
          t950 = ||.
        ENDIF.
        t949 = t950.
        DATA t964 TYPE REF TO zcl_lnt_issue.
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
        DATA(t979) = strlen( t977 ).
        t976 = |{ t977 }{ t949 }|.
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
        t986 = t873->value.
        DATA(t988) = strlen( t973 ).
        t972 = |{ t973 }{ t986 }|.
        DATA(t989) = |" exceeds maximum length of |.
        DATA(t990) = strlen( t972 ).
        t971 = |{ t972 }{ t989 }|.
        DATA(t991) = VALUE string( ).
        IF t914 <> trunc( t914 ) OR t914 > range_safe_integer OR t914 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t993) = CONV int8( t914 ).
        t991 = |{ t993 }|.
        DATA(t994) = strlen( t971 ).
        t970 = |{ t971 }{ t991 }|.
        DATA(t995) = | characters (actual: |.
        DATA(t996) = strlen( t970 ).
        t969 = |{ t970 }{ t995 }|.
        DATA t997 TYPE string.
        DATA t998 TYPE i.
        DATA t999 TYPE string.
        t999 = t873->value.
        t998 = strlen( t999 ).
        t997 = |{ t998 }|.
        DATA(t1002) = strlen( t969 ).
        t968 = |{ t969 }{ t997 }|.
        DATA(t1003) = |)|.
        DATA(t1004) = strlen( t968 ).
        t967 = |{ t968 }{ t1003 }|.
        DATA(t1005) = VALUE string( ).
        DATA t1006 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t1007 TYPE string.
        t1007 = |xml_consistency|.
        DATA t1009 TYPE string.
        t1009 = |XML consistency|.
        DATA t1011 TYPE string.
        t1011 = |Checks the consistency of main XML files|.
        DATA t1013 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t1016) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
        t1016 = t1016 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
        t1016 = t1016 && |ce table and field values\n* Transparent TABL objects have de|.
        t1016 = t1016 && |livery class and size category set\n* Lock parameter names in|.
        t1016 = t1016 && | ENQU objects are max 16 characters\n* Texts and translations|.
        t1016 = t1016 && | do not exceed maximum allowed length.|.
        DATA(t1017) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1017->has = abap_true.
        t1017->value = t1016.
        t1013 = t1017.
        DATA t1019 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t1023 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t1024 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t1024.
        t1023 = t1024.
        DATA(t1026) = |Naming|.
        t1023->load( ).
        APPEND t1026 TO t1023->items.
        t1023->save( ).
        DATA(t1028) = |Syntax|.
        t1023->load( ).
        APPEND t1028 TO t1023->items.
        t1023->save( ).
        t1019 = t1023.
        DATA t1031 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t1033 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t1035 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t1037 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t1006 = NEW zcl_lnt_irule_metadata( i_key = t1007 i_title = t1009 i_short_description = t1011 i_bad_example = t1031 i_good_example = t1033 i_extended_information = t1013 i_tags = t1019 i_pragma = t1035 i_pseudo_comment = t1037 ).
        CREATE OBJECT t1006->zlnt_view_ownkeys_b0e8086400eb.
        t1006->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t1039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t1006->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1039 ).
        DATA t1040 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1006->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1006->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1040 ).
        ENDIF.
        DATA t1041 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1006->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1006->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1041 ).
        ENDIF.
        DATA t1042 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1006->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1006->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1042 ).
        ENDIF.
        DATA t1043 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1006->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1006->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1043 ).
        ENDIF.
        CREATE OBJECT t1006->zlnt_json_ownkeys_70e5fd461788.
        t1006->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t1044) = |key|.
        DATA t1045 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t1006->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1044 p1 = t1045 ).
        DATA(t1046) = |title|.
        DATA t1047 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1006->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1006->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1046 p1 = t1047 ).
        ENDIF.
        DATA(t1048) = |shortDescription|.
        DATA t1049 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1006->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1006->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1048 p1 = t1049 ).
        ENDIF.
        DATA(t1050) = |extendedInformation|.
        DATA t1051 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1006->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1006->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1050 p1 = t1051 ).
        ENDIF.
        DATA(t1052) = |tags|.
        DATA t1053 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1006->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1006->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1052 p1 = t1053 ).
        ENDIF.
        t1005 = t1006->key.
        DATA t1054 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t1054 = me->conf->zlnt_view_read_sr_b4bcf11cce6c( ).
        t964 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t966 i_message_26cb = t967 i_key = t1005 i_severity = t1054 ).
        t940 = t964.
      ELSE.
        CLEAR t940.
      ENDIF.
      t896 = t940.
    ENDIF.
    t870 = t896.
    t680->load( ).
    APPEND t870 TO t680->items.
    t680->save( ).
    DATA t1059 TYPE REF TO zcl_lnt_issue.
    DATA t1062 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1064 TYPE REF TO zcl_lnt_shape_66add1d1.
    t1064 = t5.
    DATA t1066 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t1067) = xsdbool( t1064 IS INITIAL ).
    IF t1067 = abap_true.
    ELSE.
      DATA t1070 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t1071 TYPE REF TO zcl_lnt_shape_66add1d1.
      t1071 = t1064.
      t1070 = t1071->medium.
      t1066 = t1070.
    ENDIF.
    t1062 = t1066.
    DATA t1073 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1074 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1075 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1076 TYPE REF TO zcl_lnt_shape_66add1d1.
    t1076 = t23.
    DATA t1078 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t1079) = xsdbool( t1076 IS INITIAL ).
    IF t1079 = abap_true.
    ELSE.
      DATA t1082 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t1083 TYPE REF TO zcl_lnt_shape_66add1d1.
      t1083 = t1076.
      t1082 = t1083->medium.
      t1078 = t1082.
    ENDIF.
    t1075 = t1078.
    IF t1075 IS BOUND AND t1075->has = abap_true.
      CREATE OBJECT t1074.
      t1074->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1074->sval = t1075->value.
    ENDIF.
    t1073 = t1074.
    DATA t1085 TYPE REF TO zcl_lnt_issue.
    DATA(t1086) = VALUE abap_bool( ).
    DATA(t1087) = VALUE abap_bool( ).
    DATA t1088 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1088 = t1062.
    DATA t1090 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1092) = VALUE abap_bool( ).
    IF t1088 IS INITIAL.
      t1092 = abap_true.
    ELSEIF t1088->has = abap_false.
      t1092 = abap_true.
    ENDIF.
    t1087 = t1092.
    t1086 = t1087.
    IF t1087 = abap_false.
      DATA(t1094) = VALUE abap_bool( ).
      DATA t1097 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t1094 = xsdbool( t1073 IS INITIAL ).
      t1086 = t1094.
    ENDIF.
    IF t1086 = abap_true.
    ELSE.
      DATA(t1103) = VALUE f( ).
      DATA(t1104) = VALUE f( ).
      DATA(t1105) = VALUE abap_bool( ).
      DATA(t1106) = VALUE string( ).
      IF t1073 IS BOUND.
        t1106 = t1073->type_of( ).
        IF t1073->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t1073->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t1106 = `function`.
        ENDIF.
      ELSE.
        t1106 = `undefined`.
      ENDIF.
      DATA(t1108) = |number|.
      t1105 = xsdbool( t1106 = t1108 ).
      IF t1105 = abap_true.
        DATA t1109 TYPE f.
        t1109 = t1073->as_number( ).
        t1104 = t1109.
      ELSE.
        DATA(t1111) = VALUE f( ).
        DATA t1112 TYPE string.
        t1112 = t1073->as_string( ).
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
      DATA t1130 TYPE abap_bool.
      DATA t1131 TYPE f.
      DATA t1133 TYPE string.
      t1133 = t1062->value.
      t1131 = strlen( t1133 ).
      t1130 = xsdbool( t1131 > t1103 ).
      IF t1130 = abap_true.
        DATA(t1138) = VALUE string( ).
        DATA(t1139) = VALUE string( ).
        DATA(t1140) = VALUE abap_bool( ).
        DATA t1141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF t1140 = abap_true.
          DATA t1142 TYPE string.
          DATA t1143 TYPE string.
          DATA(t1144) = |[|.
          DATA t1145 TYPE string.
          DATA t1146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t1145 = t1146->value.
          DATA(t1147) = strlen( t1144 ).
          t1143 = |{ t1144 }{ t1145 }|.
          DATA(t1148) = |] |.
          DATA(t1149) = strlen( t1143 ).
          t1142 = |{ t1143 }{ t1148 }|.
          t1139 = t1142.
        ELSE.
          t1139 = ||.
        ENDIF.
        t1138 = t1139.
        DATA t1153 TYPE REF TO zcl_lnt_issue.
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
        DATA(t1168) = strlen( t1166 ).
        t1165 = |{ t1166 }{ t1138 }|.
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
        t1175 = t1062->value.
        DATA(t1177) = strlen( t1162 ).
        t1161 = |{ t1162 }{ t1175 }|.
        DATA(t1178) = |" exceeds maximum length of |.
        DATA(t1179) = strlen( t1161 ).
        t1160 = |{ t1161 }{ t1178 }|.
        DATA(t1180) = VALUE string( ).
        IF t1103 <> trunc( t1103 ) OR t1103 > range_safe_integer OR t1103 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t1182) = CONV int8( t1103 ).
        t1180 = |{ t1182 }|.
        DATA(t1183) = strlen( t1160 ).
        t1159 = |{ t1160 }{ t1180 }|.
        DATA(t1184) = | characters (actual: |.
        DATA(t1185) = strlen( t1159 ).
        t1158 = |{ t1159 }{ t1184 }|.
        DATA t1186 TYPE string.
        DATA t1187 TYPE i.
        DATA t1188 TYPE string.
        t1188 = t1062->value.
        t1187 = strlen( t1188 ).
        t1186 = |{ t1187 }|.
        DATA(t1191) = strlen( t1158 ).
        t1157 = |{ t1158 }{ t1186 }|.
        DATA(t1192) = |)|.
        DATA(t1193) = strlen( t1157 ).
        t1156 = |{ t1157 }{ t1192 }|.
        DATA(t1194) = VALUE string( ).
        DATA t1195 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t1196 TYPE string.
        t1196 = |xml_consistency|.
        DATA t1198 TYPE string.
        t1198 = |XML consistency|.
        DATA t1200 TYPE string.
        t1200 = |Checks the consistency of main XML files|.
        DATA t1202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t1205) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
        t1205 = t1205 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
        t1205 = t1205 && |ce table and field values\n* Transparent TABL objects have de|.
        t1205 = t1205 && |livery class and size category set\n* Lock parameter names in|.
        t1205 = t1205 && | ENQU objects are max 16 characters\n* Texts and translations|.
        t1205 = t1205 && | do not exceed maximum allowed length.|.
        DATA(t1206) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1206->has = abap_true.
        t1206->value = t1205.
        t1202 = t1206.
        DATA t1208 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t1212 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t1213 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t1213.
        t1212 = t1213.
        DATA(t1215) = |Naming|.
        t1212->load( ).
        APPEND t1215 TO t1212->items.
        t1212->save( ).
        DATA(t1217) = |Syntax|.
        t1212->load( ).
        APPEND t1217 TO t1212->items.
        t1212->save( ).
        t1208 = t1212.
        DATA t1220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t1222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t1224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t1226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t1195 = NEW zcl_lnt_irule_metadata( i_key = t1196 i_title = t1198 i_short_description = t1200 i_bad_example = t1220 i_good_example = t1222 i_extended_information = t1202 i_tags = t1208 i_pragma = t1224 i_pseudo_comment = t1226 ).
        CREATE OBJECT t1195->zlnt_view_ownkeys_b0e8086400eb.
        t1195->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t1228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t1195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1228 ).
        DATA t1229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1229 ).
        ENDIF.
        DATA t1230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1230 ).
        ENDIF.
        DATA t1231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1231 ).
        ENDIF.
        DATA t1232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1232 ).
        ENDIF.
        CREATE OBJECT t1195->zlnt_json_ownkeys_70e5fd461788.
        t1195->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t1233) = |key|.
        DATA t1234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t1195->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1233 p1 = t1234 ).
        DATA(t1235) = |title|.
        DATA t1236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1195->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1235 p1 = t1236 ).
        ENDIF.
        DATA(t1237) = |shortDescription|.
        DATA t1238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1195->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1237 p1 = t1238 ).
        ENDIF.
        DATA(t1239) = |extendedInformation|.
        DATA t1240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1195->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1239 p1 = t1240 ).
        ENDIF.
        DATA(t1241) = |tags|.
        DATA t1242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1195->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1241 p1 = t1242 ).
        ENDIF.
        t1194 = t1195->key.
        DATA t1243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t1243 = me->conf->zlnt_view_read_sr_b4bcf11cce6c( ).
        t1153 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t1155 i_message_26cb = t1156 i_key = t1194 i_severity = t1243 ).
        t1129 = t1153.
      ELSE.
        CLEAR t1129.
      ENDIF.
      t1085 = t1129.
    ENDIF.
    t1059 = t1085.
    t680->load( ).
    APPEND t1059 TO t680->items.
    t680->save( ).
    DATA t1248 TYPE REF TO zcl_lnt_issue.
    DATA t1251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1253 TYPE REF TO zcl_lnt_shape_66add1d1.
    t1253 = t5.
    DATA t1255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t1256) = xsdbool( t1253 IS INITIAL ).
    IF t1256 = abap_true.
    ELSE.
      DATA t1259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t1260 TYPE REF TO zcl_lnt_shape_66add1d1.
      t1260 = t1253.
      t1259 = t1260->long.
      t1255 = t1259.
    ENDIF.
    t1251 = t1255.
    DATA t1262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1265 TYPE REF TO zcl_lnt_shape_66add1d1.
    t1265 = t23.
    DATA t1267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t1268) = xsdbool( t1265 IS INITIAL ).
    IF t1268 = abap_true.
    ELSE.
      DATA t1271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t1272 TYPE REF TO zcl_lnt_shape_66add1d1.
      t1272 = t1265.
      t1271 = t1272->long.
      t1267 = t1271.
    ENDIF.
    t1264 = t1267.
    IF t1264 IS BOUND AND t1264->has = abap_true.
      CREATE OBJECT t1263.
      t1263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1263->sval = t1264->value.
    ENDIF.
    t1262 = t1263.
    DATA t1274 TYPE REF TO zcl_lnt_issue.
    DATA(t1275) = VALUE abap_bool( ).
    DATA(t1276) = VALUE abap_bool( ).
    DATA t1277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1277 = t1251.
    DATA t1279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1281) = VALUE abap_bool( ).
    IF t1277 IS INITIAL.
      t1281 = abap_true.
    ELSEIF t1277->has = abap_false.
      t1281 = abap_true.
    ENDIF.
    t1276 = t1281.
    t1275 = t1276.
    IF t1276 = abap_false.
      DATA(t1283) = VALUE abap_bool( ).
      DATA t1286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t1283 = xsdbool( t1262 IS INITIAL ).
      t1275 = t1283.
    ENDIF.
    IF t1275 = abap_true.
    ELSE.
      DATA(t1292) = VALUE f( ).
      DATA(t1293) = VALUE f( ).
      DATA(t1294) = VALUE abap_bool( ).
      DATA(t1295) = VALUE string( ).
      IF t1262 IS BOUND.
        t1295 = t1262->type_of( ).
        IF t1262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t1262->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t1295 = `function`.
        ENDIF.
      ELSE.
        t1295 = `undefined`.
      ENDIF.
      DATA(t1297) = |number|.
      t1294 = xsdbool( t1295 = t1297 ).
      IF t1294 = abap_true.
        DATA t1298 TYPE f.
        t1298 = t1262->as_number( ).
        t1293 = t1298.
      ELSE.
        DATA(t1300) = VALUE f( ).
        DATA t1301 TYPE string.
        t1301 = t1262->as_string( ).
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
      DATA t1319 TYPE abap_bool.
      DATA t1320 TYPE f.
      DATA t1322 TYPE string.
      t1322 = t1251->value.
      t1320 = strlen( t1322 ).
      t1319 = xsdbool( t1320 > t1292 ).
      IF t1319 = abap_true.
        DATA(t1327) = VALUE string( ).
        DATA(t1328) = VALUE string( ).
        DATA(t1329) = VALUE abap_bool( ).
        DATA t1330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF t1329 = abap_true.
          DATA t1331 TYPE string.
          DATA t1332 TYPE string.
          DATA(t1333) = |[|.
          DATA t1334 TYPE string.
          DATA t1335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t1334 = t1335->value.
          DATA(t1336) = strlen( t1333 ).
          t1332 = |{ t1333 }{ t1334 }|.
          DATA(t1337) = |] |.
          DATA(t1338) = strlen( t1332 ).
          t1331 = |{ t1332 }{ t1337 }|.
          t1328 = t1331.
        ELSE.
          t1328 = ||.
        ENDIF.
        t1327 = t1328.
        DATA t1342 TYPE REF TO zcl_lnt_issue.
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
        DATA(t1357) = strlen( t1355 ).
        t1354 = |{ t1355 }{ t1327 }|.
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
        t1364 = t1251->value.
        DATA(t1366) = strlen( t1351 ).
        t1350 = |{ t1351 }{ t1364 }|.
        DATA(t1367) = |" exceeds maximum length of |.
        DATA(t1368) = strlen( t1350 ).
        t1349 = |{ t1350 }{ t1367 }|.
        DATA(t1369) = VALUE string( ).
        IF t1292 <> trunc( t1292 ) OR t1292 > range_safe_integer OR t1292 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t1371) = CONV int8( t1292 ).
        t1369 = |{ t1371 }|.
        DATA(t1372) = strlen( t1349 ).
        t1348 = |{ t1349 }{ t1369 }|.
        DATA(t1373) = | characters (actual: |.
        DATA(t1374) = strlen( t1348 ).
        t1347 = |{ t1348 }{ t1373 }|.
        DATA t1375 TYPE string.
        DATA t1376 TYPE i.
        DATA t1377 TYPE string.
        t1377 = t1251->value.
        t1376 = strlen( t1377 ).
        t1375 = |{ t1376 }|.
        DATA(t1380) = strlen( t1347 ).
        t1346 = |{ t1347 }{ t1375 }|.
        DATA(t1381) = |)|.
        DATA(t1382) = strlen( t1346 ).
        t1345 = |{ t1346 }{ t1381 }|.
        DATA(t1383) = VALUE string( ).
        DATA t1384 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t1385 TYPE string.
        t1385 = |xml_consistency|.
        DATA t1387 TYPE string.
        t1387 = |XML consistency|.
        DATA t1389 TYPE string.
        t1389 = |Checks the consistency of main XML files|.
        DATA t1391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t1394) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
        t1394 = t1394 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
        t1394 = t1394 && |ce table and field values\n* Transparent TABL objects have de|.
        t1394 = t1394 && |livery class and size category set\n* Lock parameter names in|.
        t1394 = t1394 && | ENQU objects are max 16 characters\n* Texts and translations|.
        t1394 = t1394 && | do not exceed maximum allowed length.|.
        DATA(t1395) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1395->has = abap_true.
        t1395->value = t1394.
        t1391 = t1395.
        DATA t1397 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t1401 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t1402 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t1402.
        t1401 = t1402.
        DATA(t1404) = |Naming|.
        t1401->load( ).
        APPEND t1404 TO t1401->items.
        t1401->save( ).
        DATA(t1406) = |Syntax|.
        t1401->load( ).
        APPEND t1406 TO t1401->items.
        t1401->save( ).
        t1397 = t1401.
        DATA t1409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t1411 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t1413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t1415 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t1384 = NEW zcl_lnt_irule_metadata( i_key = t1385 i_title = t1387 i_short_description = t1389 i_bad_example = t1409 i_good_example = t1411 i_extended_information = t1391 i_tags = t1397 i_pragma = t1413 i_pseudo_comment = t1415 ).
        CREATE OBJECT t1384->zlnt_view_ownkeys_b0e8086400eb.
        t1384->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t1417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t1384->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1417 ).
        DATA t1418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1384->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1384->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1418 ).
        ENDIF.
        DATA t1419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1384->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1384->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1419 ).
        ENDIF.
        DATA t1420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1384->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1384->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1420 ).
        ENDIF.
        DATA t1421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1384->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1384->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1421 ).
        ENDIF.
        CREATE OBJECT t1384->zlnt_json_ownkeys_70e5fd461788.
        t1384->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t1422) = |key|.
        DATA t1423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t1384->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1422 p1 = t1423 ).
        DATA(t1424) = |title|.
        DATA t1425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1384->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1384->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1424 p1 = t1425 ).
        ENDIF.
        DATA(t1426) = |shortDescription|.
        DATA t1427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1384->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1384->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1426 p1 = t1427 ).
        ENDIF.
        DATA(t1428) = |extendedInformation|.
        DATA t1429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1384->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1384->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1428 p1 = t1429 ).
        ENDIF.
        DATA(t1430) = |tags|.
        DATA t1431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1384->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1384->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1430 p1 = t1431 ).
        ENDIF.
        t1383 = t1384->key.
        DATA t1432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t1432 = me->conf->zlnt_view_read_sr_b4bcf11cce6c( ).
        t1342 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t1344 i_message_26cb = t1345 i_key = t1383 i_severity = t1432 ).
        t1318 = t1342.
      ELSE.
        CLEAR t1318.
      ENDIF.
      t1274 = t1318.
    ENDIF.
    t1248 = t1274.
    t680->load( ).
    APPEND t1248 TO t680->items.
    t680->save( ).
    DATA t1437 TYPE REF TO zcl_lnt_issue.
    DATA t1440 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1442 TYPE REF TO zcl_lnt_shape_66add1d1.
    t1442 = t5.
    DATA t1444 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t1445) = xsdbool( t1442 IS INITIAL ).
    IF t1445 = abap_true.
    ELSE.
      DATA t1448 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t1449 TYPE REF TO zcl_lnt_shape_66add1d1.
      t1449 = t1442.
      t1448 = t1449->heading.
      t1444 = t1448.
    ENDIF.
    t1440 = t1444.
    DATA t1451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1453 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1454 TYPE REF TO zcl_lnt_shape_66add1d1.
    t1454 = t23.
    DATA t1456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t1457) = xsdbool( t1454 IS INITIAL ).
    IF t1457 = abap_true.
    ELSE.
      DATA t1460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t1461 TYPE REF TO zcl_lnt_shape_66add1d1.
      t1461 = t1454.
      t1460 = t1461->heading.
      t1456 = t1460.
    ENDIF.
    t1453 = t1456.
    IF t1453 IS BOUND AND t1453->has = abap_true.
      CREATE OBJECT t1452.
      t1452->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1452->sval = t1453->value.
    ENDIF.
    t1451 = t1452.
    DATA t1463 TYPE REF TO zcl_lnt_issue.
    DATA(t1464) = VALUE abap_bool( ).
    DATA(t1465) = VALUE abap_bool( ).
    DATA t1466 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1466 = t1440.
    DATA t1468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1470) = VALUE abap_bool( ).
    IF t1466 IS INITIAL.
      t1470 = abap_true.
    ELSEIF t1466->has = abap_false.
      t1470 = abap_true.
    ENDIF.
    t1465 = t1470.
    t1464 = t1465.
    IF t1465 = abap_false.
      DATA(t1472) = VALUE abap_bool( ).
      DATA t1475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t1472 = xsdbool( t1451 IS INITIAL ).
      t1464 = t1472.
    ENDIF.
    IF t1464 = abap_true.
    ELSE.
      DATA(t1481) = VALUE f( ).
      DATA(t1482) = VALUE f( ).
      DATA(t1483) = VALUE abap_bool( ).
      DATA(t1484) = VALUE string( ).
      IF t1451 IS BOUND.
        t1484 = t1451->type_of( ).
        IF t1451->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t1451->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t1484 = `function`.
        ENDIF.
      ELSE.
        t1484 = `undefined`.
      ENDIF.
      DATA(t1486) = |number|.
      t1483 = xsdbool( t1484 = t1486 ).
      IF t1483 = abap_true.
        DATA t1487 TYPE f.
        t1487 = t1451->as_number( ).
        t1482 = t1487.
      ELSE.
        DATA(t1489) = VALUE f( ).
        DATA t1490 TYPE string.
        t1490 = t1451->as_string( ).
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
      DATA t1508 TYPE abap_bool.
      DATA t1509 TYPE f.
      DATA t1511 TYPE string.
      t1511 = t1440->value.
      t1509 = strlen( t1511 ).
      t1508 = xsdbool( t1509 > t1481 ).
      IF t1508 = abap_true.
        DATA(t1516) = VALUE string( ).
        DATA(t1517) = VALUE string( ).
        DATA(t1518) = VALUE abap_bool( ).
        DATA t1519 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF t1518 = abap_true.
          DATA t1520 TYPE string.
          DATA t1521 TYPE string.
          DATA(t1522) = |[|.
          DATA t1523 TYPE string.
          DATA t1524 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t1523 = t1524->value.
          DATA(t1525) = strlen( t1522 ).
          t1521 = |{ t1522 }{ t1523 }|.
          DATA(t1526) = |] |.
          DATA(t1527) = strlen( t1521 ).
          t1520 = |{ t1521 }{ t1526 }|.
          t1517 = t1520.
        ELSE.
          t1517 = ||.
        ENDIF.
        t1516 = t1517.
        DATA t1531 TYPE REF TO zcl_lnt_issue.
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
        DATA(t1546) = strlen( t1544 ).
        t1543 = |{ t1544 }{ t1516 }|.
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
        t1553 = t1440->value.
        DATA(t1555) = strlen( t1540 ).
        t1539 = |{ t1540 }{ t1553 }|.
        DATA(t1556) = |" exceeds maximum length of |.
        DATA(t1557) = strlen( t1539 ).
        t1538 = |{ t1539 }{ t1556 }|.
        DATA(t1558) = VALUE string( ).
        IF t1481 <> trunc( t1481 ) OR t1481 > range_safe_integer OR t1481 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t1560) = CONV int8( t1481 ).
        t1558 = |{ t1560 }|.
        DATA(t1561) = strlen( t1538 ).
        t1537 = |{ t1538 }{ t1558 }|.
        DATA(t1562) = | characters (actual: |.
        DATA(t1563) = strlen( t1537 ).
        t1536 = |{ t1537 }{ t1562 }|.
        DATA t1564 TYPE string.
        DATA t1565 TYPE i.
        DATA t1566 TYPE string.
        t1566 = t1440->value.
        t1565 = strlen( t1566 ).
        t1564 = |{ t1565 }|.
        DATA(t1569) = strlen( t1536 ).
        t1535 = |{ t1536 }{ t1564 }|.
        DATA(t1570) = |)|.
        DATA(t1571) = strlen( t1535 ).
        t1534 = |{ t1535 }{ t1570 }|.
        DATA(t1572) = VALUE string( ).
        DATA t1573 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t1574 TYPE string.
        t1574 = |xml_consistency|.
        DATA t1576 TYPE string.
        t1576 = |XML consistency|.
        DATA t1578 TYPE string.
        t1578 = |Checks the consistency of main XML files|.
        DATA t1580 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t1583) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
        t1583 = t1583 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
        t1583 = t1583 && |ce table and field values\n* Transparent TABL objects have de|.
        t1583 = t1583 && |livery class and size category set\n* Lock parameter names in|.
        t1583 = t1583 && | ENQU objects are max 16 characters\n* Texts and translations|.
        t1583 = t1583 && | do not exceed maximum allowed length.|.
        DATA(t1584) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1584->has = abap_true.
        t1584->value = t1583.
        t1580 = t1584.
        DATA t1586 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t1590 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t1591 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t1591.
        t1590 = t1591.
        DATA(t1593) = |Naming|.
        t1590->load( ).
        APPEND t1593 TO t1590->items.
        t1590->save( ).
        DATA(t1595) = |Syntax|.
        t1590->load( ).
        APPEND t1595 TO t1590->items.
        t1590->save( ).
        t1586 = t1590.
        DATA t1598 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t1600 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t1602 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t1604 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t1573 = NEW zcl_lnt_irule_metadata( i_key = t1574 i_title = t1576 i_short_description = t1578 i_bad_example = t1598 i_good_example = t1600 i_extended_information = t1580 i_tags = t1586 i_pragma = t1602 i_pseudo_comment = t1604 ).
        CREATE OBJECT t1573->zlnt_view_ownkeys_b0e8086400eb.
        t1573->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t1606 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t1573->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1606 ).
        DATA t1607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1573->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1573->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1607 ).
        ENDIF.
        DATA t1608 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1573->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1573->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1608 ).
        ENDIF.
        DATA t1609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1573->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1573->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1609 ).
        ENDIF.
        DATA t1610 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1573->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1573->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1610 ).
        ENDIF.
        CREATE OBJECT t1573->zlnt_json_ownkeys_70e5fd461788.
        t1573->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t1611) = |key|.
        DATA t1612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t1573->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1611 p1 = t1612 ).
        DATA(t1613) = |title|.
        DATA t1614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1573->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1573->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1613 p1 = t1614 ).
        ENDIF.
        DATA(t1615) = |shortDescription|.
        DATA t1616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1573->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1573->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1615 p1 = t1616 ).
        ENDIF.
        DATA(t1617) = |extendedInformation|.
        DATA t1618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1573->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1573->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1617 p1 = t1618 ).
        ENDIF.
        DATA(t1619) = |tags|.
        DATA t1620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1573->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1573->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1619 p1 = t1620 ).
        ENDIF.
        t1572 = t1573->key.
        DATA t1621 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t1621 = me->conf->zlnt_view_read_sr_b4bcf11cce6c( ).
        t1531 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t1533 i_message_26cb = t1534 i_key = t1572 i_severity = t1621 ).
        t1507 = t1531.
      ELSE.
        CLEAR t1507.
      ENDIF.
      t1463 = t1507.
    ENDIF.
    t1437 = t1463.
    t680->load( ).
    APPEND t1437 TO t680->items.
    t680->save( ).
    t679 = t680.
    DATA t1626 TYPE REF TO zcl_lnt_issue.
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
      t1628 = xsdbool( t1626 IS BOUND ).
      IF t1628 = abap_true.
        DATA t1631 TYPE REF TO zcl_lnt_issue.
        t1631 = t1626.
        t3->load( ).
        APPEND t1631 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    DATA t1633 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1634 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1636 TYPE REF TO zcl_lnt_data_element.
    t1636 = t1.
    DATA t1639 TYPE REF TO zcl_lnt_iparse_result.
    t1639 = t1636->pr_in_src_obj_dt_elm_ts_dt_elm( ).
    DATA t1642 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA t1643 TYPE REF TO zcl_lnt_shape_50142cbd.
    t1643 = t1636->parsed_xml.
    t1642 = t1643.
    DATA t1645 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t1646) = xsdbool( t1642 IS INITIAL ).
    IF t1646 = abap_true.
    ELSE.
      DATA t1649 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t1650 TYPE REF TO zcl_lnt_shape_50142cbd.
      t1650 = t1642.
      t1649 = t1650->texts_translations.
      t1645 = t1649.
    ENDIF.
    t1634 = t1645.
    DATA t1652 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t1653) = xsdbool( t1634 IS INITIAL ).
    IF t1653 = abap_true.
      DATA t1655 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t1655.
      t1652 = t1655.
    ELSE.
      t1652 = t1634.
    ENDIF.
    t1633 = t1652.
    DATA t1658 TYPE REF TO zcl_lnt_shape_0802eb0f.
    DATA t1659 TYPE REF TO object.
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
      t1664 = t1658->language.
      t1663 = t1664.
      DATA t1666 TYPE REF TO zlnt_runtime_arra_ea03a77504b6.
      CLEAR t1666.
      DATA t1667 TYPE REF TO zlnt_runtime_arra_ea03a77504b6.
      DATA t1668 TYPE REF TO zlnt_runtime_arra_ea03a77504b6.
      CREATE OBJECT t1668.
      t1667 = t1668.
      DATA t1670 TYPE REF TO zcl_lnt_issue.
      CLEAR t1670.
      DATA t1673 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t1674 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t1674 = t1658->description.
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
      t1679 = t1663.
      DATA t1681 TYPE REF TO zcl_lnt_issue.
      CLEAR t1681.
      DATA(t1682) = VALUE abap_bool( ).
      DATA(t1683) = VALUE abap_bool( ).
      DATA t1684 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t1684 = t1673.
      DATA t1686 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1686.
      DATA(t1688) = VALUE abap_bool( ).
      IF t1684 IS INITIAL.
        t1688 = abap_true.
      ELSEIF t1684->has = abap_false.
        t1688 = abap_true.
      ENDIF.
      t1683 = t1688.
      t1682 = t1683.
      IF t1683 = abap_false.
        DATA(t1690) = VALUE abap_bool( ).
        DATA t1693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1693.
        t1690 = xsdbool( t1676 IS INITIAL ).
        t1682 = t1690.
      ENDIF.
      IF t1682 = abap_true.
        CLEAR t1681.
      ELSE.
        DATA(t1699) = VALUE f( ).
        DATA(t1700) = VALUE f( ).
        DATA(t1701) = VALUE abap_bool( ).
        DATA(t1702) = VALUE string( ).
        IF t1676 IS BOUND.
          t1702 = t1676->type_of( ).
          IF t1676->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t1676->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t1702 = `function`.
          ENDIF.
        ELSE.
          t1702 = `undefined`.
        ENDIF.
        DATA(t1704) = |number|.
        t1701 = xsdbool( t1702 = t1704 ).
        IF t1701 = abap_true.
          DATA t1705 TYPE f.
          t1705 = t1676->as_number( ).
          t1700 = t1705.
        ELSE.
          DATA(t1707) = VALUE f( ).
          DATA t1708 TYPE string.
          t1708 = t1676->as_string( ).
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
        DATA t1729 TYPE string.
        t1729 = t1673->value.
        t1727 = strlen( t1729 ).
        t1726 = xsdbool( t1727 > t1699 ).
        IF t1726 = abap_true.
          DATA(t1734) = VALUE string( ).
          DATA(t1735) = VALUE string( ).
          DATA(t1736) = VALUE abap_bool( ).
          IF t1679 IS BOUND.
            IF t1679->has = abap_true.
              t1736 = xsdbool( strlen( t1679->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t1736 = abap_true.
            DATA t1738 TYPE string.
            DATA t1739 TYPE string.
            DATA(t1740) = |[|.
            DATA t1741 TYPE string.
            t1741 = t1679->value.
            DATA(t1743) = strlen( t1740 ).
            t1739 = |{ t1740 }{ t1741 }|.
            DATA(t1744) = |] |.
            DATA(t1745) = strlen( t1739 ).
            t1738 = |{ t1739 }{ t1744 }|.
            t1735 = t1738.
          ELSE.
            t1735 = ||.
          ENDIF.
          t1734 = t1735.
          DATA t1749 TYPE REF TO zcl_lnt_issue.
          CLEAR t1749.
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
          DATA(t1764) = strlen( t1762 ).
          t1761 = |{ t1762 }{ t1734 }|.
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
          t1771 = t1673->value.
          DATA(t1773) = strlen( t1758 ).
          t1757 = |{ t1758 }{ t1771 }|.
          DATA(t1774) = |" exceeds maximum length of |.
          DATA(t1775) = strlen( t1757 ).
          t1756 = |{ t1757 }{ t1774 }|.
          DATA(t1776) = VALUE string( ).
          IF t1699 <> trunc( t1699 ) OR t1699 > range_safe_integer OR t1699 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t1778) = CONV int8( t1699 ).
          t1776 = |{ t1778 }|.
          DATA(t1779) = strlen( t1756 ).
          t1755 = |{ t1756 }{ t1776 }|.
          DATA(t1780) = | characters (actual: |.
          DATA(t1781) = strlen( t1755 ).
          t1754 = |{ t1755 }{ t1780 }|.
          DATA t1782 TYPE string.
          DATA t1783 TYPE i.
          DATA t1784 TYPE string.
          t1784 = t1673->value.
          t1783 = strlen( t1784 ).
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
          t1792 = |xml_consistency|.
          DATA t1794 TYPE string.
          t1794 = |XML consistency|.
          DATA t1796 TYPE string.
          t1796 = |Checks the consistency of main XML files|.
          DATA t1798 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1798.
          DATA(t1801) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t1801 = t1801 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t1801 = t1801 && |ce table and field values\n* Transparent TABL objects have de|.
          t1801 = t1801 && |livery class and size category set\n* Lock parameter names in|.
          t1801 = t1801 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t1801 = t1801 && | do not exceed maximum allowed length.|.
          DATA(t1802) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1802->has = abap_true.
          t1802->value = t1801.
          t1798 = t1802.
          DATA t1804 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1804.
          DATA t1808 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t1809 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t1809.
          t1808 = t1809.
          DATA(t1811) = |Naming|.
          t1808->load( ).
          APPEND t1811 TO t1808->items.
          t1808->save( ).
          DATA(t1813) = |Syntax|.
          t1808->load( ).
          APPEND t1813 TO t1808->items.
          t1808->save( ).
          t1804 = t1808.
          DATA t1816 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1816.
          DATA t1818 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1818.
          DATA t1820 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1820.
          DATA t1822 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1822.
          t1791 = NEW zcl_lnt_irule_metadata( i_key = t1792 i_title = t1794 i_short_description = t1796 i_bad_example = t1816 i_good_example = t1818 i_extended_information = t1798 i_tags = t1804 i_pragma = t1820 i_pseudo_comment = t1822 ).
          CREATE OBJECT t1791->zlnt_view_ownkeys_b0e8086400eb.
          t1791->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t1824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1824.
          t1791->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1824 ).
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
          t1791->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1829 p1 = t1830 ).
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
          t1839 = me->conf->zlnt_view_read_sr_b4bcf11cce6c( ).
          t1749 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t1751 i_message_26cb = t1752 i_key = t1790 i_severity = t1839 ).
          t1725 = t1749.
        ELSE.
          CLEAR t1725.
        ENDIF.
        t1681 = t1725.
      ENDIF.
      t1670 = t1681.
      t1667->load( ).
      APPEND t1670 TO t1667->items.
      t1667->save( ).
      DATA t1844 TYPE REF TO zcl_lnt_issue.
      CLEAR t1844.
      DATA t1847 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t1848 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t1848 = t1658->short.
      t1847 = t1848.
      DATA t1850 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1850.
      DATA t1851 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1851.
      DATA t1852 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1852.
      DATA t1853 TYPE REF TO zcl_lnt_shape_66add1d1.
      t1853 = t23.
      DATA t1855 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1855.
      DATA(t1856) = xsdbool( t1853 IS INITIAL ).
      IF t1856 = abap_true.
        CLEAR t1855.
      ELSE.
        DATA t1859 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t1860 TYPE REF TO zcl_lnt_shape_66add1d1.
        t1860 = t1853.
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
      t1862 = t1663.
      DATA t1864 TYPE REF TO zcl_lnt_issue.
      CLEAR t1864.
      DATA(t1865) = VALUE abap_bool( ).
      DATA(t1866) = VALUE abap_bool( ).
      DATA t1867 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t1867 = t1847.
      DATA t1869 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1869.
      DATA(t1871) = VALUE abap_bool( ).
      IF t1867 IS INITIAL.
        t1871 = abap_true.
      ELSEIF t1867->has = abap_false.
        t1871 = abap_true.
      ENDIF.
      t1866 = t1871.
      t1865 = t1866.
      IF t1866 = abap_false.
        DATA(t1873) = VALUE abap_bool( ).
        DATA t1876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1876.
        t1873 = xsdbool( t1850 IS INITIAL ).
        t1865 = t1873.
      ENDIF.
      IF t1865 = abap_true.
        CLEAR t1864.
      ELSE.
        DATA(t1882) = VALUE f( ).
        DATA(t1883) = VALUE f( ).
        DATA(t1884) = VALUE abap_bool( ).
        DATA(t1885) = VALUE string( ).
        IF t1850 IS BOUND.
          t1885 = t1850->type_of( ).
          IF t1850->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t1850->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t1885 = `function`.
          ENDIF.
        ELSE.
          t1885 = `undefined`.
        ENDIF.
        DATA(t1887) = |number|.
        t1884 = xsdbool( t1885 = t1887 ).
        IF t1884 = abap_true.
          DATA t1888 TYPE f.
          t1888 = t1850->as_number( ).
          t1883 = t1888.
        ELSE.
          DATA(t1890) = VALUE f( ).
          DATA t1891 TYPE string.
          t1891 = t1850->as_string( ).
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
        DATA t1912 TYPE string.
        t1912 = t1847->value.
        t1910 = strlen( t1912 ).
        t1909 = xsdbool( t1910 > t1882 ).
        IF t1909 = abap_true.
          DATA(t1917) = VALUE string( ).
          DATA(t1918) = VALUE string( ).
          DATA(t1919) = VALUE abap_bool( ).
          IF t1862 IS BOUND.
            IF t1862->has = abap_true.
              t1919 = xsdbool( strlen( t1862->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t1919 = abap_true.
            DATA t1921 TYPE string.
            DATA t1922 TYPE string.
            DATA(t1923) = |[|.
            DATA t1924 TYPE string.
            t1924 = t1862->value.
            DATA(t1926) = strlen( t1923 ).
            t1922 = |{ t1923 }{ t1924 }|.
            DATA(t1927) = |] |.
            DATA(t1928) = strlen( t1922 ).
            t1921 = |{ t1922 }{ t1927 }|.
            t1918 = t1921.
          ELSE.
            t1918 = ||.
          ENDIF.
          t1917 = t1918.
          DATA t1932 TYPE REF TO zcl_lnt_issue.
          CLEAR t1932.
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
          DATA(t1947) = strlen( t1945 ).
          t1944 = |{ t1945 }{ t1917 }|.
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
          t1954 = t1847->value.
          DATA(t1956) = strlen( t1941 ).
          t1940 = |{ t1941 }{ t1954 }|.
          DATA(t1957) = |" exceeds maximum length of |.
          DATA(t1958) = strlen( t1940 ).
          t1939 = |{ t1940 }{ t1957 }|.
          DATA(t1959) = VALUE string( ).
          IF t1882 <> trunc( t1882 ) OR t1882 > range_safe_integer OR t1882 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t1961) = CONV int8( t1882 ).
          t1959 = |{ t1961 }|.
          DATA(t1962) = strlen( t1939 ).
          t1938 = |{ t1939 }{ t1959 }|.
          DATA(t1963) = | characters (actual: |.
          DATA(t1964) = strlen( t1938 ).
          t1937 = |{ t1938 }{ t1963 }|.
          DATA t1965 TYPE string.
          DATA t1966 TYPE i.
          DATA t1967 TYPE string.
          t1967 = t1847->value.
          t1966 = strlen( t1967 ).
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
          t1975 = |xml_consistency|.
          DATA t1977 TYPE string.
          t1977 = |XML consistency|.
          DATA t1979 TYPE string.
          t1979 = |Checks the consistency of main XML files|.
          DATA t1981 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1981.
          DATA(t1984) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t1984 = t1984 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t1984 = t1984 && |ce table and field values\n* Transparent TABL objects have de|.
          t1984 = t1984 && |livery class and size category set\n* Lock parameter names in|.
          t1984 = t1984 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t1984 = t1984 && | do not exceed maximum allowed length.|.
          DATA(t1985) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1985->has = abap_true.
          t1985->value = t1984.
          t1981 = t1985.
          DATA t1987 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1987.
          DATA t1991 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t1992 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t1992.
          t1991 = t1992.
          DATA(t1994) = |Naming|.
          t1991->load( ).
          APPEND t1994 TO t1991->items.
          t1991->save( ).
          DATA(t1996) = |Syntax|.
          t1991->load( ).
          APPEND t1996 TO t1991->items.
          t1991->save( ).
          t1987 = t1991.
          DATA t1999 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1999.
          DATA t2001 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2001.
          DATA t2003 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2003.
          DATA t2005 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2005.
          t1974 = NEW zcl_lnt_irule_metadata( i_key = t1975 i_title = t1977 i_short_description = t1979 i_bad_example = t1999 i_good_example = t2001 i_extended_information = t1981 i_tags = t1987 i_pragma = t2003 i_pseudo_comment = t2005 ).
          CREATE OBJECT t1974->zlnt_view_ownkeys_b0e8086400eb.
          t1974->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2007 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2007.
          t1974->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2007 ).
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
          t1974->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2012 p1 = t2013 ).
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
          t2022 = me->conf->zlnt_view_read_sr_b4bcf11cce6c( ).
          t1932 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t1934 i_message_26cb = t1935 i_key = t1973 i_severity = t2022 ).
          t1908 = t1932.
        ELSE.
          CLEAR t1908.
        ENDIF.
        t1864 = t1908.
      ENDIF.
      t1844 = t1864.
      t1667->load( ).
      APPEND t1844 TO t1667->items.
      t1667->save( ).
      DATA t2027 TYPE REF TO zcl_lnt_issue.
      CLEAR t2027.
      DATA t2030 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t2031 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t2031 = t1658->medium.
      t2030 = t2031.
      DATA t2033 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2033.
      DATA t2034 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2034.
      DATA t2035 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2035.
      DATA t2036 TYPE REF TO zcl_lnt_shape_66add1d1.
      t2036 = t23.
      DATA t2038 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2038.
      DATA(t2039) = xsdbool( t2036 IS INITIAL ).
      IF t2039 = abap_true.
        CLEAR t2038.
      ELSE.
        DATA t2042 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t2043 TYPE REF TO zcl_lnt_shape_66add1d1.
        t2043 = t2036.
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
      t2045 = t1663.
      DATA t2047 TYPE REF TO zcl_lnt_issue.
      CLEAR t2047.
      DATA(t2048) = VALUE abap_bool( ).
      DATA(t2049) = VALUE abap_bool( ).
      DATA t2050 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t2050 = t2030.
      DATA t2052 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2052.
      DATA(t2054) = VALUE abap_bool( ).
      IF t2050 IS INITIAL.
        t2054 = abap_true.
      ELSEIF t2050->has = abap_false.
        t2054 = abap_true.
      ENDIF.
      t2049 = t2054.
      t2048 = t2049.
      IF t2049 = abap_false.
        DATA(t2056) = VALUE abap_bool( ).
        DATA t2059 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2059.
        t2056 = xsdbool( t2033 IS INITIAL ).
        t2048 = t2056.
      ENDIF.
      IF t2048 = abap_true.
        CLEAR t2047.
      ELSE.
        DATA(t2065) = VALUE f( ).
        DATA(t2066) = VALUE f( ).
        DATA(t2067) = VALUE abap_bool( ).
        DATA(t2068) = VALUE string( ).
        IF t2033 IS BOUND.
          t2068 = t2033->type_of( ).
          IF t2033->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t2033->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t2068 = `function`.
          ENDIF.
        ELSE.
          t2068 = `undefined`.
        ENDIF.
        DATA(t2070) = |number|.
        t2067 = xsdbool( t2068 = t2070 ).
        IF t2067 = abap_true.
          DATA t2071 TYPE f.
          t2071 = t2033->as_number( ).
          t2066 = t2071.
        ELSE.
          DATA(t2073) = VALUE f( ).
          DATA t2074 TYPE string.
          t2074 = t2033->as_string( ).
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
        DATA t2095 TYPE string.
        t2095 = t2030->value.
        t2093 = strlen( t2095 ).
        t2092 = xsdbool( t2093 > t2065 ).
        IF t2092 = abap_true.
          DATA(t2100) = VALUE string( ).
          DATA(t2101) = VALUE string( ).
          DATA(t2102) = VALUE abap_bool( ).
          IF t2045 IS BOUND.
            IF t2045->has = abap_true.
              t2102 = xsdbool( strlen( t2045->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t2102 = abap_true.
            DATA t2104 TYPE string.
            DATA t2105 TYPE string.
            DATA(t2106) = |[|.
            DATA t2107 TYPE string.
            t2107 = t2045->value.
            DATA(t2109) = strlen( t2106 ).
            t2105 = |{ t2106 }{ t2107 }|.
            DATA(t2110) = |] |.
            DATA(t2111) = strlen( t2105 ).
            t2104 = |{ t2105 }{ t2110 }|.
            t2101 = t2104.
          ELSE.
            t2101 = ||.
          ENDIF.
          t2100 = t2101.
          DATA t2115 TYPE REF TO zcl_lnt_issue.
          CLEAR t2115.
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
          DATA(t2130) = strlen( t2128 ).
          t2127 = |{ t2128 }{ t2100 }|.
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
          t2137 = t2030->value.
          DATA(t2139) = strlen( t2124 ).
          t2123 = |{ t2124 }{ t2137 }|.
          DATA(t2140) = |" exceeds maximum length of |.
          DATA(t2141) = strlen( t2123 ).
          t2122 = |{ t2123 }{ t2140 }|.
          DATA(t2142) = VALUE string( ).
          IF t2065 <> trunc( t2065 ) OR t2065 > range_safe_integer OR t2065 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t2144) = CONV int8( t2065 ).
          t2142 = |{ t2144 }|.
          DATA(t2145) = strlen( t2122 ).
          t2121 = |{ t2122 }{ t2142 }|.
          DATA(t2146) = | characters (actual: |.
          DATA(t2147) = strlen( t2121 ).
          t2120 = |{ t2121 }{ t2146 }|.
          DATA t2148 TYPE string.
          DATA t2149 TYPE i.
          DATA t2150 TYPE string.
          t2150 = t2030->value.
          t2149 = strlen( t2150 ).
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
          t2158 = |xml_consistency|.
          DATA t2160 TYPE string.
          t2160 = |XML consistency|.
          DATA t2162 TYPE string.
          t2162 = |Checks the consistency of main XML files|.
          DATA t2164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2164.
          DATA(t2167) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t2167 = t2167 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t2167 = t2167 && |ce table and field values\n* Transparent TABL objects have de|.
          t2167 = t2167 && |livery class and size category set\n* Lock parameter names in|.
          t2167 = t2167 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t2167 = t2167 && | do not exceed maximum allowed length.|.
          DATA(t2168) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t2168->has = abap_true.
          t2168->value = t2167.
          t2164 = t2168.
          DATA t2170 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2170.
          DATA t2174 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t2175 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t2175.
          t2174 = t2175.
          DATA(t2177) = |Naming|.
          t2174->load( ).
          APPEND t2177 TO t2174->items.
          t2174->save( ).
          DATA(t2179) = |Syntax|.
          t2174->load( ).
          APPEND t2179 TO t2174->items.
          t2174->save( ).
          t2170 = t2174.
          DATA t2182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2182.
          DATA t2184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2184.
          DATA t2186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2186.
          DATA t2188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2188.
          t2157 = NEW zcl_lnt_irule_metadata( i_key = t2158 i_title = t2160 i_short_description = t2162 i_bad_example = t2182 i_good_example = t2184 i_extended_information = t2164 i_tags = t2170 i_pragma = t2186 i_pseudo_comment = t2188 ).
          CREATE OBJECT t2157->zlnt_view_ownkeys_b0e8086400eb.
          t2157->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2190.
          t2157->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2190 ).
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
          t2157->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2195 p1 = t2196 ).
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
          t2205 = me->conf->zlnt_view_read_sr_b4bcf11cce6c( ).
          t2115 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t2117 i_message_26cb = t2118 i_key = t2156 i_severity = t2205 ).
          t2091 = t2115.
        ELSE.
          CLEAR t2091.
        ENDIF.
        t2047 = t2091.
      ENDIF.
      t2027 = t2047.
      t1667->load( ).
      APPEND t2027 TO t1667->items.
      t1667->save( ).
      DATA t2210 TYPE REF TO zcl_lnt_issue.
      CLEAR t2210.
      DATA t2213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t2214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t2214 = t1658->long.
      t2213 = t2214.
      DATA t2216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2216.
      DATA t2217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2217.
      DATA t2218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2218.
      DATA t2219 TYPE REF TO zcl_lnt_shape_66add1d1.
      t2219 = t23.
      DATA t2221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2221.
      DATA(t2222) = xsdbool( t2219 IS INITIAL ).
      IF t2222 = abap_true.
        CLEAR t2221.
      ELSE.
        DATA t2225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t2226 TYPE REF TO zcl_lnt_shape_66add1d1.
        t2226 = t2219.
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
      t2228 = t1663.
      DATA t2230 TYPE REF TO zcl_lnt_issue.
      CLEAR t2230.
      DATA(t2231) = VALUE abap_bool( ).
      DATA(t2232) = VALUE abap_bool( ).
      DATA t2233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t2233 = t2213.
      DATA t2235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2235.
      DATA(t2237) = VALUE abap_bool( ).
      IF t2233 IS INITIAL.
        t2237 = abap_true.
      ELSEIF t2233->has = abap_false.
        t2237 = abap_true.
      ENDIF.
      t2232 = t2237.
      t2231 = t2232.
      IF t2232 = abap_false.
        DATA(t2239) = VALUE abap_bool( ).
        DATA t2242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2242.
        t2239 = xsdbool( t2216 IS INITIAL ).
        t2231 = t2239.
      ENDIF.
      IF t2231 = abap_true.
        CLEAR t2230.
      ELSE.
        DATA(t2248) = VALUE f( ).
        DATA(t2249) = VALUE f( ).
        DATA(t2250) = VALUE abap_bool( ).
        DATA(t2251) = VALUE string( ).
        IF t2216 IS BOUND.
          t2251 = t2216->type_of( ).
          IF t2216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t2216->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t2251 = `function`.
          ENDIF.
        ELSE.
          t2251 = `undefined`.
        ENDIF.
        DATA(t2253) = |number|.
        t2250 = xsdbool( t2251 = t2253 ).
        IF t2250 = abap_true.
          DATA t2254 TYPE f.
          t2254 = t2216->as_number( ).
          t2249 = t2254.
        ELSE.
          DATA(t2256) = VALUE f( ).
          DATA t2257 TYPE string.
          t2257 = t2216->as_string( ).
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
        DATA t2278 TYPE string.
        t2278 = t2213->value.
        t2276 = strlen( t2278 ).
        t2275 = xsdbool( t2276 > t2248 ).
        IF t2275 = abap_true.
          DATA(t2283) = VALUE string( ).
          DATA(t2284) = VALUE string( ).
          DATA(t2285) = VALUE abap_bool( ).
          IF t2228 IS BOUND.
            IF t2228->has = abap_true.
              t2285 = xsdbool( strlen( t2228->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t2285 = abap_true.
            DATA t2287 TYPE string.
            DATA t2288 TYPE string.
            DATA(t2289) = |[|.
            DATA t2290 TYPE string.
            t2290 = t2228->value.
            DATA(t2292) = strlen( t2289 ).
            t2288 = |{ t2289 }{ t2290 }|.
            DATA(t2293) = |] |.
            DATA(t2294) = strlen( t2288 ).
            t2287 = |{ t2288 }{ t2293 }|.
            t2284 = t2287.
          ELSE.
            t2284 = ||.
          ENDIF.
          t2283 = t2284.
          DATA t2298 TYPE REF TO zcl_lnt_issue.
          CLEAR t2298.
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
          DATA(t2313) = strlen( t2311 ).
          t2310 = |{ t2311 }{ t2283 }|.
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
          t2320 = t2213->value.
          DATA(t2322) = strlen( t2307 ).
          t2306 = |{ t2307 }{ t2320 }|.
          DATA(t2323) = |" exceeds maximum length of |.
          DATA(t2324) = strlen( t2306 ).
          t2305 = |{ t2306 }{ t2323 }|.
          DATA(t2325) = VALUE string( ).
          IF t2248 <> trunc( t2248 ) OR t2248 > range_safe_integer OR t2248 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t2327) = CONV int8( t2248 ).
          t2325 = |{ t2327 }|.
          DATA(t2328) = strlen( t2305 ).
          t2304 = |{ t2305 }{ t2325 }|.
          DATA(t2329) = | characters (actual: |.
          DATA(t2330) = strlen( t2304 ).
          t2303 = |{ t2304 }{ t2329 }|.
          DATA t2331 TYPE string.
          DATA t2332 TYPE i.
          DATA t2333 TYPE string.
          t2333 = t2213->value.
          t2332 = strlen( t2333 ).
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
          t2341 = |xml_consistency|.
          DATA t2343 TYPE string.
          t2343 = |XML consistency|.
          DATA t2345 TYPE string.
          t2345 = |Checks the consistency of main XML files|.
          DATA t2347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2347.
          DATA(t2350) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t2350 = t2350 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t2350 = t2350 && |ce table and field values\n* Transparent TABL objects have de|.
          t2350 = t2350 && |livery class and size category set\n* Lock parameter names in|.
          t2350 = t2350 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t2350 = t2350 && | do not exceed maximum allowed length.|.
          DATA(t2351) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t2351->has = abap_true.
          t2351->value = t2350.
          t2347 = t2351.
          DATA t2353 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2353.
          DATA t2357 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t2358 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t2358.
          t2357 = t2358.
          DATA(t2360) = |Naming|.
          t2357->load( ).
          APPEND t2360 TO t2357->items.
          t2357->save( ).
          DATA(t2362) = |Syntax|.
          t2357->load( ).
          APPEND t2362 TO t2357->items.
          t2357->save( ).
          t2353 = t2357.
          DATA t2365 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2365.
          DATA t2367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2367.
          DATA t2369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2369.
          DATA t2371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2371.
          t2340 = NEW zcl_lnt_irule_metadata( i_key = t2341 i_title = t2343 i_short_description = t2345 i_bad_example = t2365 i_good_example = t2367 i_extended_information = t2347 i_tags = t2353 i_pragma = t2369 i_pseudo_comment = t2371 ).
          CREATE OBJECT t2340->zlnt_view_ownkeys_b0e8086400eb.
          t2340->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2373.
          t2340->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2373 ).
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
          t2340->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2378 p1 = t2379 ).
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
          t2388 = me->conf->zlnt_view_read_sr_b4bcf11cce6c( ).
          t2298 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t2300 i_message_26cb = t2301 i_key = t2339 i_severity = t2388 ).
          t2274 = t2298.
        ELSE.
          CLEAR t2274.
        ENDIF.
        t2230 = t2274.
      ENDIF.
      t2210 = t2230.
      t1667->load( ).
      APPEND t2210 TO t1667->items.
      t1667->save( ).
      DATA t2393 TYPE REF TO zcl_lnt_issue.
      CLEAR t2393.
      DATA t2396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t2397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t2397 = t1658->heading.
      t2396 = t2397.
      DATA t2399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2399.
      DATA t2400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2400.
      DATA t2401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2401.
      DATA t2402 TYPE REF TO zcl_lnt_shape_66add1d1.
      t2402 = t23.
      DATA t2404 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2404.
      DATA(t2405) = xsdbool( t2402 IS INITIAL ).
      IF t2405 = abap_true.
        CLEAR t2404.
      ELSE.
        DATA t2408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t2409 TYPE REF TO zcl_lnt_shape_66add1d1.
        t2409 = t2402.
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
      t2411 = t1663.
      DATA t2413 TYPE REF TO zcl_lnt_issue.
      CLEAR t2413.
      DATA(t2414) = VALUE abap_bool( ).
      DATA(t2415) = VALUE abap_bool( ).
      DATA t2416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t2416 = t2396.
      DATA t2418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2418.
      DATA(t2420) = VALUE abap_bool( ).
      IF t2416 IS INITIAL.
        t2420 = abap_true.
      ELSEIF t2416->has = abap_false.
        t2420 = abap_true.
      ENDIF.
      t2415 = t2420.
      t2414 = t2415.
      IF t2415 = abap_false.
        DATA(t2422) = VALUE abap_bool( ).
        DATA t2425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2425.
        t2422 = xsdbool( t2399 IS INITIAL ).
        t2414 = t2422.
      ENDIF.
      IF t2414 = abap_true.
        CLEAR t2413.
      ELSE.
        DATA(t2431) = VALUE f( ).
        DATA(t2432) = VALUE f( ).
        DATA(t2433) = VALUE abap_bool( ).
        DATA(t2434) = VALUE string( ).
        IF t2399 IS BOUND.
          t2434 = t2399->type_of( ).
          IF t2399->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t2399->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t2434 = `function`.
          ENDIF.
        ELSE.
          t2434 = `undefined`.
        ENDIF.
        DATA(t2436) = |number|.
        t2433 = xsdbool( t2434 = t2436 ).
        IF t2433 = abap_true.
          DATA t2437 TYPE f.
          t2437 = t2399->as_number( ).
          t2432 = t2437.
        ELSE.
          DATA(t2439) = VALUE f( ).
          DATA t2440 TYPE string.
          t2440 = t2399->as_string( ).
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
        DATA t2461 TYPE string.
        t2461 = t2396->value.
        t2459 = strlen( t2461 ).
        t2458 = xsdbool( t2459 > t2431 ).
        IF t2458 = abap_true.
          DATA(t2466) = VALUE string( ).
          DATA(t2467) = VALUE string( ).
          DATA(t2468) = VALUE abap_bool( ).
          IF t2411 IS BOUND.
            IF t2411->has = abap_true.
              t2468 = xsdbool( strlen( t2411->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t2468 = abap_true.
            DATA t2470 TYPE string.
            DATA t2471 TYPE string.
            DATA(t2472) = |[|.
            DATA t2473 TYPE string.
            t2473 = t2411->value.
            DATA(t2475) = strlen( t2472 ).
            t2471 = |{ t2472 }{ t2473 }|.
            DATA(t2476) = |] |.
            DATA(t2477) = strlen( t2471 ).
            t2470 = |{ t2471 }{ t2476 }|.
            t2467 = t2470.
          ELSE.
            t2467 = ||.
          ENDIF.
          t2466 = t2467.
          DATA t2481 TYPE REF TO zcl_lnt_issue.
          CLEAR t2481.
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
          DATA(t2496) = strlen( t2494 ).
          t2493 = |{ t2494 }{ t2466 }|.
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
          t2503 = t2396->value.
          DATA(t2505) = strlen( t2490 ).
          t2489 = |{ t2490 }{ t2503 }|.
          DATA(t2506) = |" exceeds maximum length of |.
          DATA(t2507) = strlen( t2489 ).
          t2488 = |{ t2489 }{ t2506 }|.
          DATA(t2508) = VALUE string( ).
          IF t2431 <> trunc( t2431 ) OR t2431 > range_safe_integer OR t2431 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t2510) = CONV int8( t2431 ).
          t2508 = |{ t2510 }|.
          DATA(t2511) = strlen( t2488 ).
          t2487 = |{ t2488 }{ t2508 }|.
          DATA(t2512) = | characters (actual: |.
          DATA(t2513) = strlen( t2487 ).
          t2486 = |{ t2487 }{ t2512 }|.
          DATA t2514 TYPE string.
          DATA t2515 TYPE i.
          DATA t2516 TYPE string.
          t2516 = t2396->value.
          t2515 = strlen( t2516 ).
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
          t2524 = |xml_consistency|.
          DATA t2526 TYPE string.
          t2526 = |XML consistency|.
          DATA t2528 TYPE string.
          t2528 = |Checks the consistency of main XML files|.
          DATA t2530 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2530.
          DATA(t2533) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t2533 = t2533 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t2533 = t2533 && |ce table and field values\n* Transparent TABL objects have de|.
          t2533 = t2533 && |livery class and size category set\n* Lock parameter names in|.
          t2533 = t2533 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t2533 = t2533 && | do not exceed maximum allowed length.|.
          DATA(t2534) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t2534->has = abap_true.
          t2534->value = t2533.
          t2530 = t2534.
          DATA t2536 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2536.
          DATA t2540 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t2541 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t2541.
          t2540 = t2541.
          DATA(t2543) = |Naming|.
          t2540->load( ).
          APPEND t2543 TO t2540->items.
          t2540->save( ).
          DATA(t2545) = |Syntax|.
          t2540->load( ).
          APPEND t2545 TO t2540->items.
          t2540->save( ).
          t2536 = t2540.
          DATA t2548 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2548.
          DATA t2550 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2550.
          DATA t2552 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2552.
          DATA t2554 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2554.
          t2523 = NEW zcl_lnt_irule_metadata( i_key = t2524 i_title = t2526 i_short_description = t2528 i_bad_example = t2548 i_good_example = t2550 i_extended_information = t2530 i_tags = t2536 i_pragma = t2552 i_pseudo_comment = t2554 ).
          CREATE OBJECT t2523->zlnt_view_ownkeys_b0e8086400eb.
          t2523->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2556 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2556.
          t2523->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2556 ).
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
          t2523->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2561 p1 = t2562 ).
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
          t2571 = me->conf->zlnt_view_read_sr_b4bcf11cce6c( ).
          t2481 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t2483 i_message_26cb = t2484 i_key = t2522 i_severity = t2571 ).
          t2457 = t2481.
        ELSE.
          CLEAR t2457.
        ENDIF.
        t2413 = t2457.
      ENDIF.
      t2393 = t2413.
      t1667->load( ).
      APPEND t2393 TO t1667->items.
      t1667->save( ).
      t1666 = t1667.
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
        t2578 = xsdbool( t2576 IS BOUND ).
        IF t2578 = abap_true.
          DATA t2581 TYPE REF TO zcl_lnt_issue.
          t2581 = t2576.
          t3->load( ).
          APPEND t2581 TO t3->items.
          t3->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD check_required_field.
    DATA(t3) = i_value.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t6 = t3.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = VALUE abap_bool( ).
    IF t6 IS INITIAL.
      t10 = abap_true.
    ELSEIF t6->has = abap_false.
      t10 = abap_true.
    ENDIF.
    t5 = t10.
    t4 = t5.
    IF t5 = abap_false.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE string.
      t13 = t3->value.
      DATA(t15) = ||.
      t12 = xsdbool( t13 = t15 ).
      t4 = t12.
    ENDIF.
    IF t4 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_issue.
      DATA(t19) = i_file.
      DATA(t20) = CONV f( 1 ).
      DATA t21 TYPE string.
      DATA t22 TYPE string.
      DATA(t23) = |Missing required field |.
      DATA(t25) = strlen( t23 ).
      t22 = |{ t23 }{ i_field_name }|.
      DATA(t26) = | in DD04V|.
      DATA(t27) = strlen( t22 ).
      t21 = |{ t22 }{ t26 }|.
      DATA(t28) = VALUE string( ).
      DATA t29 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t30 TYPE string.
      t30 = |xml_consistency|.
      DATA t32 TYPE string.
      t32 = |XML consistency|.
      DATA t34 TYPE string.
      t34 = |Checks the consistency of main XML files|.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t39) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
      t39 = t39 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
      t39 = t39 && |ce table and field values\n* Transparent TABL objects have de|.
      t39 = t39 && |livery class and size category set\n* Lock parameter names in|.
      t39 = t39 && | ENQU objects are max 16 characters\n* Texts and translations|.
      t39 = t39 && | do not exceed maximum allowed length.|.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t39.
      t36 = t40.
      DATA t42 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t46 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t47 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t47.
      t46 = t47.
      DATA(t49) = |Naming|.
      t46->load( ).
      APPEND t49 TO t46->items.
      t46->save( ).
      DATA(t51) = |Syntax|.
      t46->load( ).
      APPEND t51 TO t46->items.
      t46->save( ).
      t42 = t46.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t29 = NEW zcl_lnt_irule_metadata( i_key = t30 i_title = t32 i_short_description = t34 i_bad_example = t54 i_good_example = t56 i_extended_information = t36 i_tags = t42 i_pragma = t58 i_pseudo_comment = t60 ).
      CREATE OBJECT t29->zlnt_view_ownkeys_b0e8086400eb.
      t29->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t62 ).
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t63 ).
      ENDIF.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t64 ).
      ENDIF.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t65 ).
      ENDIF.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t66 ).
      ENDIF.
      CREATE OBJECT t29->zlnt_json_ownkeys_70e5fd461788.
      t29->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t67) = |key|.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t67 p1 = t68 ).
      DATA(t69) = |title|.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t69 p1 = t70 ).
      ENDIF.
      DATA(t71) = |shortDescription|.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t71 p1 = t72 ).
      ENDIF.
      DATA(t73) = |extendedInformation|.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
      ENDIF.
      DATA(t75) = |tags|.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t75 p1 = t76 ).
      ENDIF.
      t28 = t29->key.
      DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t77 = me->conf->zlnt_view_read_sr_d3e3c311c261( ).
      t18 = zcl_lnt_issue=>at_row( i_file = t19 i_row = t20 i_message_26cb = t21 i_key = t28 i_severity = t77 ).
      result = t18.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD run_domain.
    CONSTANTS range_parse_safe_prefix TYPE int8 VALUE '900719925474099'.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_file.
    DATA t3 TYPE i.
    t3 = 60.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t5.
    DATA t9 TYPE REF TO zcl_lnt_issue.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t15 TYPE REF TO zcl_lnt_domain.
    t15 = t1.
    DATA t18 TYPE REF TO zcl_lnt_iparse_result.
    t18 = t15->prs_instn_src_objct_dmn_ts_dmn( ).
    DATA t21 TYPE REF TO zcl_lnt_shape_b346f020.
    DATA t22 TYPE REF TO zcl_lnt_shape_b346f020.
    t22 = t15->parsed_xml.
    t21 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t25) = xsdbool( t21 IS INITIAL ).
    IF t25 = abap_true.
    ELSE.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t29 TYPE REF TO zcl_lnt_shape_b346f020.
      t29 = t21.
      t28 = t29->description.
      t24 = t28.
    ENDIF.
    t13 = t24.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t32->nval = t3.
    t31 = t32.
    DATA t34 TYPE REF TO zcl_lnt_issue.
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = VALUE abap_bool( ).
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t37 = t13.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t41) = VALUE abap_bool( ).
    IF t37 IS INITIAL.
      t41 = abap_true.
    ELSEIF t37->has = abap_false.
      t41 = abap_true.
    ENDIF.
    t36 = t41.
    t35 = t36.
    IF t36 = abap_false.
      DATA(t43) = VALUE abap_bool( ).
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t43 = xsdbool( t31 IS INITIAL ).
      t35 = t43.
    ENDIF.
    IF t35 = abap_true.
    ELSE.
      DATA(t52) = VALUE f( ).
      DATA(t53) = VALUE f( ).
      DATA(t54) = VALUE abap_bool( ).
      DATA(t55) = VALUE string( ).
      IF t31 IS BOUND.
        t55 = t31->type_of( ).
        IF t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t31->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t55 = `function`.
        ENDIF.
      ELSE.
        t55 = `undefined`.
      ENDIF.
      DATA(t57) = |number|.
      t54 = xsdbool( t55 = t57 ).
      IF t54 = abap_true.
        DATA t58 TYPE f.
        t58 = t31->as_number( ).
        t53 = t58.
      ELSE.
        DATA(t60) = VALUE f( ).
        DATA t61 TYPE string.
        t61 = t31->as_string( ).
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
      DATA t79 TYPE abap_bool.
      DATA t80 TYPE f.
      DATA t82 TYPE string.
      t82 = t13->value.
      t80 = strlen( t82 ).
      t79 = xsdbool( t80 > t52 ).
      IF t79 = abap_true.
        DATA(t87) = VALUE string( ).
        DATA(t88) = VALUE string( ).
        DATA(t89) = VALUE abap_bool( ).
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF t89 = abap_true.
          DATA t91 TYPE string.
          DATA t92 TYPE string.
          DATA(t93) = |[|.
          DATA t94 TYPE string.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t94 = t95->value.
          DATA(t96) = strlen( t93 ).
          t92 = |{ t93 }{ t94 }|.
          DATA(t97) = |] |.
          DATA(t98) = strlen( t92 ).
          t91 = |{ t92 }{ t97 }|.
          t88 = t91.
        ELSE.
          t88 = ||.
        ENDIF.
        t87 = t88.
        DATA t102 TYPE REF TO zcl_lnt_issue.
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
        DATA(t117) = strlen( t115 ).
        t114 = |{ t115 }{ t87 }|.
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
        t124 = t13->value.
        DATA(t126) = strlen( t111 ).
        t110 = |{ t111 }{ t124 }|.
        DATA(t127) = |" exceeds maximum length of |.
        DATA(t128) = strlen( t110 ).
        t109 = |{ t110 }{ t127 }|.
        DATA(t129) = VALUE string( ).
        IF t52 <> trunc( t52 ) OR t52 > range_safe_integer OR t52 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t131) = CONV int8( t52 ).
        t129 = |{ t131 }|.
        DATA(t132) = strlen( t109 ).
        t108 = |{ t109 }{ t129 }|.
        DATA(t133) = | characters (actual: |.
        DATA(t134) = strlen( t108 ).
        t107 = |{ t108 }{ t133 }|.
        DATA t135 TYPE string.
        DATA t136 TYPE i.
        DATA t137 TYPE string.
        t137 = t13->value.
        t136 = strlen( t137 ).
        t135 = |{ t136 }|.
        DATA(t140) = strlen( t107 ).
        t106 = |{ t107 }{ t135 }|.
        DATA(t141) = |)|.
        DATA(t142) = strlen( t106 ).
        t105 = |{ t106 }{ t141 }|.
        DATA(t143) = VALUE string( ).
        DATA t144 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t145 TYPE string.
        t145 = |xml_consistency|.
        DATA t147 TYPE string.
        t147 = |XML consistency|.
        DATA t149 TYPE string.
        t149 = |Checks the consistency of main XML files|.
        DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t154) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
        t154 = t154 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
        t154 = t154 && |ce table and field values\n* Transparent TABL objects have de|.
        t154 = t154 && |livery class and size category set\n* Lock parameter names in|.
        t154 = t154 && | ENQU objects are max 16 characters\n* Texts and translations|.
        t154 = t154 && | do not exceed maximum allowed length.|.
        DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t155->has = abap_true.
        t155->value = t154.
        t151 = t155.
        DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t161 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t162 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t162.
        t161 = t162.
        DATA(t164) = |Naming|.
        t161->load( ).
        APPEND t164 TO t161->items.
        t161->save( ).
        DATA(t166) = |Syntax|.
        t161->load( ).
        APPEND t166 TO t161->items.
        t161->save( ).
        t157 = t161.
        DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t144 = NEW zcl_lnt_irule_metadata( i_key = t145 i_title = t147 i_short_description = t149 i_bad_example = t169 i_good_example = t171 i_extended_information = t151 i_tags = t157 i_pragma = t173 i_pseudo_comment = t175 ).
        CREATE OBJECT t144->zlnt_view_ownkeys_b0e8086400eb.
        t144->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t177 ).
        DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t178 ).
        ENDIF.
        DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t179 ).
        ENDIF.
        DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t180 ).
        ENDIF.
        DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t181 ).
        ENDIF.
        CREATE OBJECT t144->zlnt_json_ownkeys_70e5fd461788.
        t144->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t182) = |key|.
        DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t182 p1 = t183 ).
        DATA(t184) = |title|.
        DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t184 p1 = t185 ).
        ENDIF.
        DATA(t186) = |shortDescription|.
        DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t186 p1 = t187 ).
        ENDIF.
        DATA(t188) = |extendedInformation|.
        DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t188 p1 = t189 ).
        ENDIF.
        DATA(t190) = |tags|.
        DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t190 p1 = t191 ).
        ENDIF.
        t143 = t144->key.
        DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t192 = me->conf->zlnt_view_read_sr_b4bcf11cce6c( ).
        t102 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t104 i_message_26cb = t105 i_key = t143 i_severity = t192 ).
        t78 = t102.
      ELSE.
        CLEAR t78.
      ENDIF.
      t34 = t78.
    ENDIF.
    t9 = t34.
    DATA t196 TYPE abap_bool.
    t196 = xsdbool( t9 IS BOUND ).
    IF t196 = abap_true.
      DATA t199 TYPE REF TO zcl_lnt_issue.
      t199 = t9.
      t7->load( ).
      APPEND t199 TO t7->items.
      t7->save( ).
    ENDIF.
    DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t207 TYPE REF TO zcl_lnt_shape_b346f020.
    DATA t208 TYPE REF TO zcl_lnt_shape_b346f020.
    t208 = t1->parsed_xml.
    t207 = t208.
    DATA t210 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t211) = xsdbool( t207 IS INITIAL ).
    IF t211 = abap_true.
    ELSE.
      DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t215 TYPE REF TO zcl_lnt_shape_b346f020.
      t215 = t207.
      t214 = t215->values.
      t210 = t214.
    ENDIF.
    t205 = t210.
    DATA t217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t218) = xsdbool( t205 IS INITIAL ).
    IF t218 = abap_true.
      DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t220.
      t217 = t220.
    ELSE.
      t217 = t205.
    ENDIF.
    t201 = t217.
    DATA t223 TYPE REF TO zcl_lnt_domain_value.
    DATA t224 TYPE REF TO object.
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
      t228 = t5.
      DATA t230 TYPE REF TO zcl_lnt_issue.
      CLEAR t230.
      DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t235 = t223->description.
      t234 = t235.
      DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t238.
      CLEAR t238.
      CREATE OBJECT t238.
      t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t238->nval = t3.
      t237 = t238.
      DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t241 = t223->language.
      t240 = t241.
      DATA t243 TYPE REF TO zcl_lnt_issue.
      CLEAR t243.
      DATA(t244) = VALUE abap_bool( ).
      DATA(t245) = VALUE abap_bool( ).
      DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t246 = t234.
      DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t248.
      DATA(t250) = VALUE abap_bool( ).
      IF t246 IS INITIAL.
        t250 = abap_true.
      ELSEIF t246->has = abap_false.
        t250 = abap_true.
      ENDIF.
      t245 = t250.
      t244 = t245.
      IF t245 = abap_false.
        DATA(t252) = VALUE abap_bool( ).
        DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t255.
        t252 = xsdbool( t237 IS INITIAL ).
        t244 = t252.
      ENDIF.
      IF t244 = abap_true.
        CLEAR t243.
      ELSE.
        DATA(t261) = VALUE f( ).
        DATA(t262) = VALUE f( ).
        DATA(t263) = VALUE abap_bool( ).
        DATA(t264) = VALUE string( ).
        IF t237 IS BOUND.
          t264 = t237->type_of( ).
          IF t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t237->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t264 = `function`.
          ENDIF.
        ELSE.
          t264 = `undefined`.
        ENDIF.
        DATA(t266) = |number|.
        t263 = xsdbool( t264 = t266 ).
        IF t263 = abap_true.
          DATA t267 TYPE f.
          t267 = t237->as_number( ).
          t262 = t267.
        ELSE.
          DATA(t269) = VALUE f( ).
          DATA t270 TYPE string.
          t270 = t237->as_string( ).
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
        DATA t291 TYPE string.
        t291 = t234->value.
        t289 = strlen( t291 ).
        t288 = xsdbool( t289 > t261 ).
        IF t288 = abap_true.
          DATA(t296) = VALUE string( ).
          DATA(t297) = VALUE string( ).
          DATA(t298) = VALUE abap_bool( ).
          IF t240 IS BOUND.
            IF t240->has = abap_true.
              t298 = xsdbool( strlen( t240->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t298 = abap_true.
            DATA t300 TYPE string.
            DATA t301 TYPE string.
            DATA(t302) = |[|.
            DATA t303 TYPE string.
            t303 = t240->value.
            DATA(t305) = strlen( t302 ).
            t301 = |{ t302 }{ t303 }|.
            DATA(t306) = |] |.
            DATA(t307) = strlen( t301 ).
            t300 = |{ t301 }{ t306 }|.
            t297 = t300.
          ELSE.
            t297 = ||.
          ENDIF.
          t296 = t297.
          DATA t311 TYPE REF TO zcl_lnt_issue.
          CLEAR t311.
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
          DATA(t326) = strlen( t324 ).
          t323 = |{ t324 }{ t296 }|.
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
          t333 = t234->value.
          DATA(t335) = strlen( t320 ).
          t319 = |{ t320 }{ t333 }|.
          DATA(t336) = |" exceeds maximum length of |.
          DATA(t337) = strlen( t319 ).
          t318 = |{ t319 }{ t336 }|.
          DATA(t338) = VALUE string( ).
          IF t261 <> trunc( t261 ) OR t261 > range_safe_integer OR t261 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t340) = CONV int8( t261 ).
          t338 = |{ t340 }|.
          DATA(t341) = strlen( t318 ).
          t317 = |{ t318 }{ t338 }|.
          DATA(t342) = | characters (actual: |.
          DATA(t343) = strlen( t317 ).
          t316 = |{ t317 }{ t342 }|.
          DATA t344 TYPE string.
          DATA t345 TYPE i.
          DATA t346 TYPE string.
          t346 = t234->value.
          t345 = strlen( t346 ).
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
          t354 = |xml_consistency|.
          DATA t356 TYPE string.
          t356 = |XML consistency|.
          DATA t358 TYPE string.
          t358 = |Checks the consistency of main XML files|.
          DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t360.
          DATA(t363) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t363 = t363 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t363 = t363 && |ce table and field values\n* Transparent TABL objects have de|.
          t363 = t363 && |livery class and size category set\n* Lock parameter names in|.
          t363 = t363 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t363 = t363 && | do not exceed maximum allowed length.|.
          DATA(t364) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t364->has = abap_true.
          t364->value = t363.
          t360 = t364.
          DATA t366 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t366.
          DATA t370 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t371 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t371.
          t370 = t371.
          DATA(t373) = |Naming|.
          t370->load( ).
          APPEND t373 TO t370->items.
          t370->save( ).
          DATA(t375) = |Syntax|.
          t370->load( ).
          APPEND t375 TO t370->items.
          t370->save( ).
          t366 = t370.
          DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t378.
          DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t380.
          DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t382.
          DATA t384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t384.
          t353 = NEW zcl_lnt_irule_metadata( i_key = t354 i_title = t356 i_short_description = t358 i_bad_example = t378 i_good_example = t380 i_extended_information = t360 i_tags = t366 i_pragma = t382 i_pseudo_comment = t384 ).
          CREATE OBJECT t353->zlnt_view_ownkeys_b0e8086400eb.
          t353->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t386.
          t353->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t386 ).
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
          t353->zlnt_json_ownkeys_70e5fd461788->put( p0 = t391 p1 = t392 ).
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
          t401 = me->conf->zlnt_view_read_sr_b4bcf11cce6c( ).
          t311 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t313 i_message_26cb = t314 i_key = t352 i_severity = t401 ).
          t287 = t311.
        ELSE.
          CLEAR t287.
        ENDIF.
        t243 = t287.
      ENDIF.
      t230 = t243.
      DATA t405 TYPE abap_bool.
      t405 = xsdbool( t230 IS BOUND ).
      IF t405 = abap_true.
        DATA t408 TYPE REF TO zcl_lnt_issue.
        t408 = t230.
        t228->load( ).
        APPEND t408 TO t228->items.
        t228->save( ).
      ENDIF.
    ENDDO.
    DATA t410 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t414 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t416 TYPE REF TO zcl_lnt_shape_b346f020.
    DATA t417 TYPE REF TO zcl_lnt_shape_b346f020.
    t417 = t1->parsed_xml.
    t416 = t417.
    DATA t419 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t420) = xsdbool( t416 IS INITIAL ).
    IF t420 = abap_true.
    ELSE.
      DATA t423 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t424 TYPE REF TO zcl_lnt_shape_b346f020.
      t424 = t416.
      t423 = t424->values_translations.
      t419 = t423.
    ENDIF.
    t414 = t419.
    DATA t426 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t427) = xsdbool( t414 IS INITIAL ).
    IF t427 = abap_true.
      DATA t429 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t429.
      t426 = t429.
    ELSE.
      t426 = t414.
    ENDIF.
    t410 = t426.
    DATA t432 TYPE REF TO zcl_lnt_dmn_vl_trnsltn.
    DATA t433 TYPE REF TO object.
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
      t437 = t5.
      DATA t439 TYPE REF TO zcl_lnt_issue.
      CLEAR t439.
      DATA t443 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t444 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t444 = t432->description.
      t443 = t444.
      DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t447.
      CLEAR t447.
      CREATE OBJECT t447.
      t447->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t447->nval = t3.
      t446 = t447.
      DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t450 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t450 = t432->language.
      t449 = t450.
      DATA t452 TYPE REF TO zcl_lnt_issue.
      CLEAR t452.
      DATA(t453) = VALUE abap_bool( ).
      DATA(t454) = VALUE abap_bool( ).
      DATA t455 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t455 = t443.
      DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t457.
      DATA(t459) = VALUE abap_bool( ).
      IF t455 IS INITIAL.
        t459 = abap_true.
      ELSEIF t455->has = abap_false.
        t459 = abap_true.
      ENDIF.
      t454 = t459.
      t453 = t454.
      IF t454 = abap_false.
        DATA(t461) = VALUE abap_bool( ).
        DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t464.
        t461 = xsdbool( t446 IS INITIAL ).
        t453 = t461.
      ENDIF.
      IF t453 = abap_true.
        CLEAR t452.
      ELSE.
        DATA(t470) = VALUE f( ).
        DATA(t471) = VALUE f( ).
        DATA(t472) = VALUE abap_bool( ).
        DATA(t473) = VALUE string( ).
        IF t446 IS BOUND.
          t473 = t446->type_of( ).
          IF t446->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t446->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t473 = `function`.
          ENDIF.
        ELSE.
          t473 = `undefined`.
        ENDIF.
        DATA(t475) = |number|.
        t472 = xsdbool( t473 = t475 ).
        IF t472 = abap_true.
          DATA t476 TYPE f.
          t476 = t446->as_number( ).
          t471 = t476.
        ELSE.
          DATA(t478) = VALUE f( ).
          DATA t479 TYPE string.
          t479 = t446->as_string( ).
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
        DATA t500 TYPE string.
        t500 = t443->value.
        t498 = strlen( t500 ).
        t497 = xsdbool( t498 > t470 ).
        IF t497 = abap_true.
          DATA(t505) = VALUE string( ).
          DATA(t506) = VALUE string( ).
          DATA(t507) = VALUE abap_bool( ).
          IF t449 IS BOUND.
            IF t449->has = abap_true.
              t507 = xsdbool( strlen( t449->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t507 = abap_true.
            DATA t509 TYPE string.
            DATA t510 TYPE string.
            DATA(t511) = |[|.
            DATA t512 TYPE string.
            t512 = t449->value.
            DATA(t514) = strlen( t511 ).
            t510 = |{ t511 }{ t512 }|.
            DATA(t515) = |] |.
            DATA(t516) = strlen( t510 ).
            t509 = |{ t510 }{ t515 }|.
            t506 = t509.
          ELSE.
            t506 = ||.
          ENDIF.
          t505 = t506.
          DATA t520 TYPE REF TO zcl_lnt_issue.
          CLEAR t520.
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
          DATA(t535) = strlen( t533 ).
          t532 = |{ t533 }{ t505 }|.
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
          t542 = t443->value.
          DATA(t544) = strlen( t529 ).
          t528 = |{ t529 }{ t542 }|.
          DATA(t545) = |" exceeds maximum length of |.
          DATA(t546) = strlen( t528 ).
          t527 = |{ t528 }{ t545 }|.
          DATA(t547) = VALUE string( ).
          IF t470 <> trunc( t470 ) OR t470 > range_safe_integer OR t470 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t549) = CONV int8( t470 ).
          t547 = |{ t549 }|.
          DATA(t550) = strlen( t527 ).
          t526 = |{ t527 }{ t547 }|.
          DATA(t551) = | characters (actual: |.
          DATA(t552) = strlen( t526 ).
          t525 = |{ t526 }{ t551 }|.
          DATA t553 TYPE string.
          DATA t554 TYPE i.
          DATA t555 TYPE string.
          t555 = t443->value.
          t554 = strlen( t555 ).
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
          t563 = |xml_consistency|.
          DATA t565 TYPE string.
          t565 = |XML consistency|.
          DATA t567 TYPE string.
          t567 = |Checks the consistency of main XML files|.
          DATA t569 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t569.
          DATA(t572) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t572 = t572 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t572 = t572 && |ce table and field values\n* Transparent TABL objects have de|.
          t572 = t572 && |livery class and size category set\n* Lock parameter names in|.
          t572 = t572 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t572 = t572 && | do not exceed maximum allowed length.|.
          DATA(t573) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t573->has = abap_true.
          t573->value = t572.
          t569 = t573.
          DATA t575 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t575.
          DATA t579 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t580 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t580.
          t579 = t580.
          DATA(t582) = |Naming|.
          t579->load( ).
          APPEND t582 TO t579->items.
          t579->save( ).
          DATA(t584) = |Syntax|.
          t579->load( ).
          APPEND t584 TO t579->items.
          t579->save( ).
          t575 = t579.
          DATA t587 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t587.
          DATA t589 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t589.
          DATA t591 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t591.
          DATA t593 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t593.
          t562 = NEW zcl_lnt_irule_metadata( i_key = t563 i_title = t565 i_short_description = t567 i_bad_example = t587 i_good_example = t589 i_extended_information = t569 i_tags = t575 i_pragma = t591 i_pseudo_comment = t593 ).
          CREATE OBJECT t562->zlnt_view_ownkeys_b0e8086400eb.
          t562->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t595.
          t562->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t595 ).
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
          t562->zlnt_json_ownkeys_70e5fd461788->put( p0 = t600 p1 = t601 ).
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
          t610 = me->conf->zlnt_view_read_sr_b4bcf11cce6c( ).
          t520 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t522 i_message_26cb = t523 i_key = t561 i_severity = t610 ).
          t496 = t520.
        ELSE.
          CLEAR t496.
        ENDIF.
        t452 = t496.
      ENDIF.
      t439 = t452.
      DATA t614 TYPE abap_bool.
      t614 = xsdbool( t439 IS BOUND ).
      IF t614 = abap_true.
        DATA t617 TYPE REF TO zcl_lnt_issue.
        t617 = t439.
        t437->load( ).
        APPEND t617 TO t437->items.
        t437->save( ).
      ENDIF.
    ENDDO.
    result = t5.

  ENDMETHOD.

  METHOD run_transaction.
    CONSTANTS range_parse_safe_prefix TYPE int8 VALUE '900719925474099'.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_file.
    DATA t3 TYPE i.
    t3 = 36.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t5.
    DATA t9 TYPE REF TO zcl_lnt_issue.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t15 TYPE REF TO zcl_lnt_transaction.
    t15 = t1.
    DATA t18 TYPE REF TO zcl_lnt_iparse_result.
    t18 = t15->prs_inst_src_objc_trns_ts_trns( ).
    DATA t21 TYPE REF TO zcl_lnt_shape_c5606a32.
    DATA t22 TYPE REF TO zcl_lnt_shape_c5606a32.
    t22 = t15->parsed_xml.
    t21 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t25) = xsdbool( t21 IS INITIAL ).
    IF t25 = abap_true.
    ELSE.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t29 TYPE REF TO zcl_lnt_shape_c5606a32.
      t29 = t21.
      t28 = t29->description.
      t24 = t28.
    ENDIF.
    t13 = t24.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t32->nval = t3.
    t31 = t32.
    DATA t34 TYPE REF TO zcl_lnt_issue.
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = VALUE abap_bool( ).
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t37 = t13.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t41) = VALUE abap_bool( ).
    IF t37 IS INITIAL.
      t41 = abap_true.
    ELSEIF t37->has = abap_false.
      t41 = abap_true.
    ENDIF.
    t36 = t41.
    t35 = t36.
    IF t36 = abap_false.
      DATA(t43) = VALUE abap_bool( ).
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t43 = xsdbool( t31 IS INITIAL ).
      t35 = t43.
    ENDIF.
    IF t35 = abap_true.
    ELSE.
      DATA(t52) = VALUE f( ).
      DATA(t53) = VALUE f( ).
      DATA(t54) = VALUE abap_bool( ).
      DATA(t55) = VALUE string( ).
      IF t31 IS BOUND.
        t55 = t31->type_of( ).
        IF t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t31->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t55 = `function`.
        ENDIF.
      ELSE.
        t55 = `undefined`.
      ENDIF.
      DATA(t57) = |number|.
      t54 = xsdbool( t55 = t57 ).
      IF t54 = abap_true.
        DATA t58 TYPE f.
        t58 = t31->as_number( ).
        t53 = t58.
      ELSE.
        DATA(t60) = VALUE f( ).
        DATA t61 TYPE string.
        t61 = t31->as_string( ).
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
      DATA t79 TYPE abap_bool.
      DATA t80 TYPE f.
      DATA t82 TYPE string.
      t82 = t13->value.
      t80 = strlen( t82 ).
      t79 = xsdbool( t80 > t52 ).
      IF t79 = abap_true.
        DATA(t87) = VALUE string( ).
        DATA(t88) = VALUE string( ).
        DATA(t89) = VALUE abap_bool( ).
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF t89 = abap_true.
          DATA t91 TYPE string.
          DATA t92 TYPE string.
          DATA(t93) = |[|.
          DATA t94 TYPE string.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t94 = t95->value.
          DATA(t96) = strlen( t93 ).
          t92 = |{ t93 }{ t94 }|.
          DATA(t97) = |] |.
          DATA(t98) = strlen( t92 ).
          t91 = |{ t92 }{ t97 }|.
          t88 = t91.
        ELSE.
          t88 = ||.
        ENDIF.
        t87 = t88.
        DATA t102 TYPE REF TO zcl_lnt_issue.
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
        DATA(t117) = strlen( t115 ).
        t114 = |{ t115 }{ t87 }|.
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
        t124 = t13->value.
        DATA(t126) = strlen( t111 ).
        t110 = |{ t111 }{ t124 }|.
        DATA(t127) = |" exceeds maximum length of |.
        DATA(t128) = strlen( t110 ).
        t109 = |{ t110 }{ t127 }|.
        DATA(t129) = VALUE string( ).
        IF t52 <> trunc( t52 ) OR t52 > range_safe_integer OR t52 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t131) = CONV int8( t52 ).
        t129 = |{ t131 }|.
        DATA(t132) = strlen( t109 ).
        t108 = |{ t109 }{ t129 }|.
        DATA(t133) = | characters (actual: |.
        DATA(t134) = strlen( t108 ).
        t107 = |{ t108 }{ t133 }|.
        DATA t135 TYPE string.
        DATA t136 TYPE i.
        DATA t137 TYPE string.
        t137 = t13->value.
        t136 = strlen( t137 ).
        t135 = |{ t136 }|.
        DATA(t140) = strlen( t107 ).
        t106 = |{ t107 }{ t135 }|.
        DATA(t141) = |)|.
        DATA(t142) = strlen( t106 ).
        t105 = |{ t106 }{ t141 }|.
        DATA(t143) = VALUE string( ).
        DATA t144 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t145 TYPE string.
        t145 = |xml_consistency|.
        DATA t147 TYPE string.
        t147 = |XML consistency|.
        DATA t149 TYPE string.
        t149 = |Checks the consistency of main XML files|.
        DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t154) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
        t154 = t154 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
        t154 = t154 && |ce table and field values\n* Transparent TABL objects have de|.
        t154 = t154 && |livery class and size category set\n* Lock parameter names in|.
        t154 = t154 && | ENQU objects are max 16 characters\n* Texts and translations|.
        t154 = t154 && | do not exceed maximum allowed length.|.
        DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t155->has = abap_true.
        t155->value = t154.
        t151 = t155.
        DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t161 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t162 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t162.
        t161 = t162.
        DATA(t164) = |Naming|.
        t161->load( ).
        APPEND t164 TO t161->items.
        t161->save( ).
        DATA(t166) = |Syntax|.
        t161->load( ).
        APPEND t166 TO t161->items.
        t161->save( ).
        t157 = t161.
        DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t144 = NEW zcl_lnt_irule_metadata( i_key = t145 i_title = t147 i_short_description = t149 i_bad_example = t169 i_good_example = t171 i_extended_information = t151 i_tags = t157 i_pragma = t173 i_pseudo_comment = t175 ).
        CREATE OBJECT t144->zlnt_view_ownkeys_b0e8086400eb.
        t144->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t177 ).
        DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t178 ).
        ENDIF.
        DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t179 ).
        ENDIF.
        DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t180 ).
        ENDIF.
        DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t181 ).
        ENDIF.
        CREATE OBJECT t144->zlnt_json_ownkeys_70e5fd461788.
        t144->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t182) = |key|.
        DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t182 p1 = t183 ).
        DATA(t184) = |title|.
        DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t184 p1 = t185 ).
        ENDIF.
        DATA(t186) = |shortDescription|.
        DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t186 p1 = t187 ).
        ENDIF.
        DATA(t188) = |extendedInformation|.
        DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t188 p1 = t189 ).
        ENDIF.
        DATA(t190) = |tags|.
        DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t190 p1 = t191 ).
        ENDIF.
        t143 = t144->key.
        DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t192 = me->conf->zlnt_view_read_sr_b4bcf11cce6c( ).
        t102 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t104 i_message_26cb = t105 i_key = t143 i_severity = t192 ).
        t78 = t102.
      ELSE.
        CLEAR t78.
      ENDIF.
      t34 = t78.
    ENDIF.
    t9 = t34.
    DATA t196 TYPE abap_bool.
    t196 = xsdbool( t9 IS BOUND ).
    IF t196 = abap_true.
      DATA t199 TYPE REF TO zcl_lnt_issue.
      t199 = t9.
      t7->load( ).
      APPEND t199 TO t7->items.
      t7->save( ).
    ENDIF.
    DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t204 TYPE REF TO zcl_lnt_transaction.
    t204 = t1.
    DATA t207 TYPE REF TO zcl_lnt_iparse_result.
    t207 = t204->prs_inst_src_objc_trns_ts_trns( ).
    DATA t210 TYPE REF TO zcl_lnt_shape_c5606a32.
    DATA t211 TYPE REF TO zcl_lnt_shape_c5606a32.
    t211 = t204->parsed_xml.
    t210 = t211.
    DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t214) = xsdbool( t210 IS INITIAL ).
    IF t214 = abap_true.
    ELSE.
      DATA t217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t218 TYPE REF TO zcl_lnt_shape_c5606a32.
      t218 = t210.
      t217 = t218->texts_translations.
      t213 = t217.
    ENDIF.
    t202 = t213.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t221) = xsdbool( t202 IS INITIAL ).
    IF t221 = abap_true.
      DATA t223 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t223.
      t220 = t223.
    ELSE.
      t220 = t202.
    ENDIF.
    t201 = t220.
    DATA t226 TYPE REF TO zcl_lnt_dmn_vl_trnsltn.
    DATA t227 TYPE REF TO object.
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
      t231 = t5.
      DATA t233 TYPE REF TO zcl_lnt_issue.
      CLEAR t233.
      DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t238 = t226->description.
      t237 = t238.
      DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t241.
      CLEAR t241.
      CREATE OBJECT t241.
      t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t241->nval = t3.
      t240 = t241.
      DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t244 = t226->language.
      t243 = t244.
      DATA t246 TYPE REF TO zcl_lnt_issue.
      CLEAR t246.
      DATA(t247) = VALUE abap_bool( ).
      DATA(t248) = VALUE abap_bool( ).
      DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t249 = t237.
      DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t251.
      DATA(t253) = VALUE abap_bool( ).
      IF t249 IS INITIAL.
        t253 = abap_true.
      ELSEIF t249->has = abap_false.
        t253 = abap_true.
      ENDIF.
      t248 = t253.
      t247 = t248.
      IF t248 = abap_false.
        DATA(t255) = VALUE abap_bool( ).
        DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t258.
        t255 = xsdbool( t240 IS INITIAL ).
        t247 = t255.
      ENDIF.
      IF t247 = abap_true.
        CLEAR t246.
      ELSE.
        DATA(t264) = VALUE f( ).
        DATA(t265) = VALUE f( ).
        DATA(t266) = VALUE abap_bool( ).
        DATA(t267) = VALUE string( ).
        IF t240 IS BOUND.
          t267 = t240->type_of( ).
          IF t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t240->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t267 = `function`.
          ENDIF.
        ELSE.
          t267 = `undefined`.
        ENDIF.
        DATA(t269) = |number|.
        t266 = xsdbool( t267 = t269 ).
        IF t266 = abap_true.
          DATA t270 TYPE f.
          t270 = t240->as_number( ).
          t265 = t270.
        ELSE.
          DATA(t272) = VALUE f( ).
          DATA t273 TYPE string.
          t273 = t240->as_string( ).
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
        DATA t294 TYPE string.
        t294 = t237->value.
        t292 = strlen( t294 ).
        t291 = xsdbool( t292 > t264 ).
        IF t291 = abap_true.
          DATA(t299) = VALUE string( ).
          DATA(t300) = VALUE string( ).
          DATA(t301) = VALUE abap_bool( ).
          IF t243 IS BOUND.
            IF t243->has = abap_true.
              t301 = xsdbool( strlen( t243->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t301 = abap_true.
            DATA t303 TYPE string.
            DATA t304 TYPE string.
            DATA(t305) = |[|.
            DATA t306 TYPE string.
            t306 = t243->value.
            DATA(t308) = strlen( t305 ).
            t304 = |{ t305 }{ t306 }|.
            DATA(t309) = |] |.
            DATA(t310) = strlen( t304 ).
            t303 = |{ t304 }{ t309 }|.
            t300 = t303.
          ELSE.
            t300 = ||.
          ENDIF.
          t299 = t300.
          DATA t314 TYPE REF TO zcl_lnt_issue.
          CLEAR t314.
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
          DATA(t329) = strlen( t327 ).
          t326 = |{ t327 }{ t299 }|.
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
          t336 = t237->value.
          DATA(t338) = strlen( t323 ).
          t322 = |{ t323 }{ t336 }|.
          DATA(t339) = |" exceeds maximum length of |.
          DATA(t340) = strlen( t322 ).
          t321 = |{ t322 }{ t339 }|.
          DATA(t341) = VALUE string( ).
          IF t264 <> trunc( t264 ) OR t264 > range_safe_integer OR t264 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t343) = CONV int8( t264 ).
          t341 = |{ t343 }|.
          DATA(t344) = strlen( t321 ).
          t320 = |{ t321 }{ t341 }|.
          DATA(t345) = | characters (actual: |.
          DATA(t346) = strlen( t320 ).
          t319 = |{ t320 }{ t345 }|.
          DATA t347 TYPE string.
          DATA t348 TYPE i.
          DATA t349 TYPE string.
          t349 = t237->value.
          t348 = strlen( t349 ).
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
          t357 = |xml_consistency|.
          DATA t359 TYPE string.
          t359 = |XML consistency|.
          DATA t361 TYPE string.
          t361 = |Checks the consistency of main XML files|.
          DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t363.
          DATA(t366) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t366 = t366 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t366 = t366 && |ce table and field values\n* Transparent TABL objects have de|.
          t366 = t366 && |livery class and size category set\n* Lock parameter names in|.
          t366 = t366 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t366 = t366 && | do not exceed maximum allowed length.|.
          DATA(t367) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t367->has = abap_true.
          t367->value = t366.
          t363 = t367.
          DATA t369 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t369.
          DATA t373 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t374 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t374.
          t373 = t374.
          DATA(t376) = |Naming|.
          t373->load( ).
          APPEND t376 TO t373->items.
          t373->save( ).
          DATA(t378) = |Syntax|.
          t373->load( ).
          APPEND t378 TO t373->items.
          t373->save( ).
          t369 = t373.
          DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t381.
          DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t383.
          DATA t385 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t385.
          DATA t387 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t387.
          t356 = NEW zcl_lnt_irule_metadata( i_key = t357 i_title = t359 i_short_description = t361 i_bad_example = t381 i_good_example = t383 i_extended_information = t363 i_tags = t369 i_pragma = t385 i_pseudo_comment = t387 ).
          CREATE OBJECT t356->zlnt_view_ownkeys_b0e8086400eb.
          t356->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t389.
          t356->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t389 ).
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
          t356->zlnt_json_ownkeys_70e5fd461788->put( p0 = t394 p1 = t395 ).
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
          t404 = me->conf->zlnt_view_read_sr_b4bcf11cce6c( ).
          t314 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t316 i_message_26cb = t317 i_key = t355 i_severity = t404 ).
          t290 = t314.
        ELSE.
          CLEAR t290.
        ENDIF.
        t246 = t290.
      ENDIF.
      t233 = t246.
      DATA t408 TYPE abap_bool.
      t408 = xsdbool( t233 IS BOUND ).
      IF t408 = abap_true.
        DATA t411 TYPE REF TO zcl_lnt_issue.
        t411 = t233.
        t231->load( ).
        APPEND t411 TO t231->items.
        t231->save( ).
      ENDIF.
    ENDDO.
    result = t5.

  ENDMETHOD.

  METHOD run_message_class.
    CONSTANTS range_parse_safe_prefix TYPE int8 VALUE '900719925474099'.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_file.
    DATA t3 TYPE i.
    t3 = 73.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zcl_lnt_ob_message_class.
    t8 = t1.
    t8->parse_xml( ).
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zcl_lnt_parsed_message_class.
    DATA t15 TYPE REF TO zcl_lnt_parsed_message_class.
    t15 = t8->xml.
    t14 = t15.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t18) = xsdbool( t14 IS INITIAL ).
    IF t18 = abap_true.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t22 TYPE REF TO zcl_lnt_parsed_message_class.
      t22 = t14.
      t21 = t22->parsed_messages.
      t17 = t21.
    ENDIF.
    t12 = t17.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE abap_bool.
    t25 = xsdbool( t12 IS BOUND ).
    IF t25 = abap_true.
      t24 = t12.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t29.
      t24 = t29.
    ENDIF.
    t7 = t24.
    DATA t30 TYPE REF TO zcl_lnt_ty_message.
    DATA t31 TYPE REF TO object.
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
      t35 = t5.
      DATA t37 TYPE REF TO zcl_lnt_issue.
      CLEAR t37.
      DATA t42 TYPE string.
      DATA t43 TYPE string.
      DATA(t44) = |TEXT[|.
      DATA t45 TYPE string.
      DATA t48 TYPE string.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t49 = t30->number.
      t48 = t49->value.
      t45 = t48.
      DATA(t51) = strlen( t44 ).
      t43 = |{ t44 }{ t45 }|.
      DATA(t52) = |]|.
      DATA(t53) = strlen( t43 ).
      t42 = |{ t43 }{ t52 }|.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      DATA t60 TYPE string.
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t61 = t30->message_25cb.
      t60 = t61->value.
      DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t63->has = abap_true.
      t63->value = t60.
      t54 = t63.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      CLEAR t66.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t66->nval = t3.
      t65 = t66.
      DATA t68 TYPE REF TO zcl_lnt_issue.
      CLEAR t68.
      DATA(t69) = VALUE abap_bool( ).
      DATA(t70) = VALUE abap_bool( ).
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t71 = t54.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t73.
      DATA(t75) = VALUE abap_bool( ).
      IF t71 IS INITIAL.
        t75 = abap_true.
      ELSEIF t71->has = abap_false.
        t75 = abap_true.
      ENDIF.
      t70 = t75.
      t69 = t70.
      IF t70 = abap_false.
        DATA(t77) = VALUE abap_bool( ).
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t80.
        t77 = xsdbool( t65 IS INITIAL ).
        t69 = t77.
      ENDIF.
      IF t69 = abap_true.
        CLEAR t68.
      ELSE.
        DATA(t86) = VALUE f( ).
        DATA(t87) = VALUE f( ).
        DATA(t88) = VALUE abap_bool( ).
        DATA(t89) = VALUE string( ).
        IF t65 IS BOUND.
          t89 = t65->type_of( ).
          IF t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t65->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t89 = `function`.
          ENDIF.
        ELSE.
          t89 = `undefined`.
        ENDIF.
        DATA(t91) = |number|.
        t88 = xsdbool( t89 = t91 ).
        IF t88 = abap_true.
          DATA t92 TYPE f.
          t92 = t65->as_number( ).
          t87 = t92.
        ELSE.
          DATA(t94) = VALUE f( ).
          DATA t95 TYPE string.
          t95 = t65->as_string( ).
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
        DATA t116 TYPE string.
        t116 = t54->value.
        t114 = strlen( t116 ).
        t113 = xsdbool( t114 > t86 ).
        IF t113 = abap_true.
          DATA(t121) = VALUE string( ).
          DATA(t122) = VALUE string( ).
          DATA(t123) = VALUE abap_bool( ).
          DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t124.
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
            t122 = ||.
          ENDIF.
          t121 = t122.
          DATA t136 TYPE REF TO zcl_lnt_issue.
          CLEAR t136.
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
          DATA(t151) = strlen( t149 ).
          t148 = |{ t149 }{ t121 }|.
          DATA(t152) = ||.
          DATA(t153) = strlen( t148 ).
          t147 = |{ t148 }{ t152 }|.
          DATA(t155) = strlen( t147 ).
          t146 = |{ t147 }{ t42 }|.
          DATA(t156) = | "|.
          DATA(t157) = strlen( t146 ).
          t145 = |{ t146 }{ t156 }|.
          DATA t158 TYPE string.
          t158 = t54->value.
          DATA(t160) = strlen( t145 ).
          t144 = |{ t145 }{ t158 }|.
          DATA(t161) = |" exceeds maximum length of |.
          DATA(t162) = strlen( t144 ).
          t143 = |{ t144 }{ t161 }|.
          DATA(t163) = VALUE string( ).
          IF t86 <> trunc( t86 ) OR t86 > range_safe_integer OR t86 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t165) = CONV int8( t86 ).
          t163 = |{ t165 }|.
          DATA(t166) = strlen( t143 ).
          t142 = |{ t143 }{ t163 }|.
          DATA(t167) = | characters (actual: |.
          DATA(t168) = strlen( t142 ).
          t141 = |{ t142 }{ t167 }|.
          DATA t169 TYPE string.
          DATA t170 TYPE i.
          DATA t171 TYPE string.
          t171 = t54->value.
          t170 = strlen( t171 ).
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
          t179 = |xml_consistency|.
          DATA t181 TYPE string.
          t181 = |XML consistency|.
          DATA t183 TYPE string.
          t183 = |Checks the consistency of main XML files|.
          DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t185.
          DATA(t188) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t188 = t188 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t188 = t188 && |ce table and field values\n* Transparent TABL objects have de|.
          t188 = t188 && |livery class and size category set\n* Lock parameter names in|.
          t188 = t188 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t188 = t188 && | do not exceed maximum allowed length.|.
          DATA(t189) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t189->has = abap_true.
          t189->value = t188.
          t185 = t189.
          DATA t191 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t191.
          DATA t195 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t196 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t196.
          t195 = t196.
          DATA(t198) = |Naming|.
          t195->load( ).
          APPEND t198 TO t195->items.
          t195->save( ).
          DATA(t200) = |Syntax|.
          t195->load( ).
          APPEND t200 TO t195->items.
          t195->save( ).
          t191 = t195.
          DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t203.
          DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t205.
          DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t207.
          DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t209.
          t178 = NEW zcl_lnt_irule_metadata( i_key = t179 i_title = t181 i_short_description = t183 i_bad_example = t203 i_good_example = t205 i_extended_information = t185 i_tags = t191 i_pragma = t207 i_pseudo_comment = t209 ).
          CREATE OBJECT t178->zlnt_view_ownkeys_b0e8086400eb.
          t178->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t211.
          t178->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t211 ).
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
          t178->zlnt_json_ownkeys_70e5fd461788->put( p0 = t216 p1 = t217 ).
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
          t226 = me->conf->zlnt_view_read_sr_b4bcf11cce6c( ).
          t136 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t138 i_message_26cb = t139 i_key = t177 i_severity = t226 ).
          t112 = t136.
        ELSE.
          CLEAR t112.
        ENDIF.
        t68 = t112.
      ENDIF.
      t37 = t68.
      DATA t230 TYPE abap_bool.
      t230 = xsdbool( t37 IS BOUND ).
      IF t230 = abap_true.
        DATA t233 TYPE REF TO zcl_lnt_issue.
        t233 = t37.
        t35->load( ).
        APPEND t233 TO t35->items.
        t35->save( ).
      ENDIF.
    ENDDO.
    DATA t235 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t236 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t238 TYPE REF TO zcl_lnt_ob_message_class.
    t238 = t1.
    t238->parse_xml( ).
    DATA t243 TYPE REF TO zcl_lnt_parsed_message_class.
    DATA t244 TYPE REF TO zcl_lnt_parsed_message_class.
    t244 = t238->xml.
    t243 = t244.
    DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t247) = xsdbool( t243 IS INITIAL ).
    IF t247 = abap_true.
    ELSE.
      DATA t250 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t251 TYPE REF TO zcl_lnt_parsed_message_class.
      t251 = t243.
      t250 = t251->texts_translations.
      t246 = t250.
    ENDIF.
    t236 = t246.
    DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t254) = xsdbool( t236 IS INITIAL ).
    IF t254 = abap_true.
      DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t256.
      t253 = t256.
    ELSE.
      t253 = t236.
    ENDIF.
    t235 = t253.
    DATA t259 TYPE REF TO zcl_lnt_shape_327d7720.
    DATA t260 TYPE REF TO object.
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
      t264 = t5.
      DATA t266 TYPE REF TO zcl_lnt_issue.
      CLEAR t266.
      DATA(t270) = VALUE string( ).
      DATA(t271) = VALUE string( ).
      DATA(t272) = VALUE string( ).
      DATA(t273) = |TEXT[|.
      DATA(t274) = VALUE string( ).
      DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t276 = t259->number.
      t275 = t276.
      DATA(t278) = VALUE string( ).
      DATA(t279) = VALUE abap_bool( ).
      IF t275 IS INITIAL.
        t279 = abap_true.
      ELSEIF t275->has = abap_false.
        t279 = abap_true.
      ENDIF.
      IF t279 = abap_true.
        t278 = |undefined|.
      ELSE.
        DATA t282 TYPE string.
        t282 = t275->value.
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
      t288 = t259->text.
      t287 = t288.
      DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t291.
      CLEAR t291.
      CREATE OBJECT t291.
      t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t291->nval = t3.
      t290 = t291.
      DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t294 = t259->language.
      t293 = t294.
      DATA t296 TYPE REF TO zcl_lnt_issue.
      CLEAR t296.
      DATA(t297) = VALUE abap_bool( ).
      DATA(t298) = VALUE abap_bool( ).
      DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t299 = t287.
      DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t301.
      DATA(t303) = VALUE abap_bool( ).
      IF t299 IS INITIAL.
        t303 = abap_true.
      ELSEIF t299->has = abap_false.
        t303 = abap_true.
      ENDIF.
      t298 = t303.
      t297 = t298.
      IF t298 = abap_false.
        DATA(t305) = VALUE abap_bool( ).
        DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t308.
        t305 = xsdbool( t290 IS INITIAL ).
        t297 = t305.
      ENDIF.
      IF t297 = abap_true.
        CLEAR t296.
      ELSE.
        DATA(t314) = VALUE f( ).
        DATA(t315) = VALUE f( ).
        DATA(t316) = VALUE abap_bool( ).
        DATA(t317) = VALUE string( ).
        IF t290 IS BOUND.
          t317 = t290->type_of( ).
          IF t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t290->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t317 = `function`.
          ENDIF.
        ELSE.
          t317 = `undefined`.
        ENDIF.
        DATA(t319) = |number|.
        t316 = xsdbool( t317 = t319 ).
        IF t316 = abap_true.
          DATA t320 TYPE f.
          t320 = t290->as_number( ).
          t315 = t320.
        ELSE.
          DATA(t322) = VALUE f( ).
          DATA t323 TYPE string.
          t323 = t290->as_string( ).
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
        DATA t344 TYPE string.
        t344 = t287->value.
        t342 = strlen( t344 ).
        t341 = xsdbool( t342 > t314 ).
        IF t341 = abap_true.
          DATA(t349) = VALUE string( ).
          DATA(t350) = VALUE string( ).
          DATA(t351) = VALUE abap_bool( ).
          IF t293 IS BOUND.
            IF t293->has = abap_true.
              t351 = xsdbool( strlen( t293->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t351 = abap_true.
            DATA t353 TYPE string.
            DATA t354 TYPE string.
            DATA(t355) = |[|.
            DATA t356 TYPE string.
            t356 = t293->value.
            DATA(t358) = strlen( t355 ).
            t354 = |{ t355 }{ t356 }|.
            DATA(t359) = |] |.
            DATA(t360) = strlen( t354 ).
            t353 = |{ t354 }{ t359 }|.
            t350 = t353.
          ELSE.
            t350 = ||.
          ENDIF.
          t349 = t350.
          DATA t364 TYPE REF TO zcl_lnt_issue.
          CLEAR t364.
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
          DATA(t379) = strlen( t377 ).
          t376 = |{ t377 }{ t349 }|.
          DATA(t380) = ||.
          DATA(t381) = strlen( t376 ).
          t375 = |{ t376 }{ t380 }|.
          DATA(t383) = strlen( t375 ).
          t374 = |{ t375 }{ t270 }|.
          DATA(t384) = | "|.
          DATA(t385) = strlen( t374 ).
          t373 = |{ t374 }{ t384 }|.
          DATA t386 TYPE string.
          t386 = t287->value.
          DATA(t388) = strlen( t373 ).
          t372 = |{ t373 }{ t386 }|.
          DATA(t389) = |" exceeds maximum length of |.
          DATA(t390) = strlen( t372 ).
          t371 = |{ t372 }{ t389 }|.
          DATA(t391) = VALUE string( ).
          IF t314 <> trunc( t314 ) OR t314 > range_safe_integer OR t314 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t393) = CONV int8( t314 ).
          t391 = |{ t393 }|.
          DATA(t394) = strlen( t371 ).
          t370 = |{ t371 }{ t391 }|.
          DATA(t395) = | characters (actual: |.
          DATA(t396) = strlen( t370 ).
          t369 = |{ t370 }{ t395 }|.
          DATA t397 TYPE string.
          DATA t398 TYPE i.
          DATA t399 TYPE string.
          t399 = t287->value.
          t398 = strlen( t399 ).
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
          t407 = |xml_consistency|.
          DATA t409 TYPE string.
          t409 = |XML consistency|.
          DATA t411 TYPE string.
          t411 = |Checks the consistency of main XML files|.
          DATA t413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t413.
          DATA(t416) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
          t416 = t416 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
          t416 = t416 && |ce table and field values\n* Transparent TABL objects have de|.
          t416 = t416 && |livery class and size category set\n* Lock parameter names in|.
          t416 = t416 && | ENQU objects are max 16 characters\n* Texts and translations|.
          t416 = t416 && | do not exceed maximum allowed length.|.
          DATA(t417) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t417->has = abap_true.
          t417->value = t416.
          t413 = t417.
          DATA t419 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t419.
          DATA t423 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t424 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t424.
          t423 = t424.
          DATA(t426) = |Naming|.
          t423->load( ).
          APPEND t426 TO t423->items.
          t423->save( ).
          DATA(t428) = |Syntax|.
          t423->load( ).
          APPEND t428 TO t423->items.
          t423->save( ).
          t419 = t423.
          DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t431.
          DATA t433 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t433.
          DATA t435 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t435.
          DATA t437 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t437.
          t406 = NEW zcl_lnt_irule_metadata( i_key = t407 i_title = t409 i_short_description = t411 i_bad_example = t431 i_good_example = t433 i_extended_information = t413 i_tags = t419 i_pragma = t435 i_pseudo_comment = t437 ).
          CREATE OBJECT t406->zlnt_view_ownkeys_b0e8086400eb.
          t406->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t439.
          t406->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t439 ).
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
          t406->zlnt_json_ownkeys_70e5fd461788->put( p0 = t444 p1 = t445 ).
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
          t454 = me->conf->zlnt_view_read_sr_b4bcf11cce6c( ).
          t364 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t366 i_message_26cb = t367 i_key = t405 i_severity = t454 ).
          t340 = t364.
        ELSE.
          CLEAR t340.
        ENDIF.
        t296 = t340.
      ENDIF.
      t266 = t296.
      DATA t458 TYPE abap_bool.
      t458 = xsdbool( t266 IS BOUND ).
      IF t458 = abap_true.
        DATA t461 TYPE REF TO zcl_lnt_issue.
        t461 = t266.
        t264->load( ).
        APPEND t461 TO t264->items.
        t264->save( ).
      ENDIF.
    ENDDO.
    result = t5.

  ENDMETHOD.

  METHOD run_lock_object.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_file.
    DATA t3 TYPE i.
    t3 = 16.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zcl_lnt_lock_object.
    t10 = t1.
    DATA t13 TYPE REF TO zcl_lnt_iparse_result.
    t13 = t10->pr_in_sr_ob_lck_obj_ts_lck_obj( ).
    DATA t16 TYPE REF TO zcl_lnt_shape_897eae97.
    DATA t17 TYPE REF TO zcl_lnt_shape_897eae97.
    t17 = t10->parsed_xml.
    t16 = t17.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t20) = xsdbool( t16 IS INITIAL ).
    IF t20 = abap_true.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t24 TYPE REF TO zcl_lnt_shape_897eae97.
      t24 = t16.
      t23 = t24->parameters.
      t19 = t23.
    ENDIF.
    t8 = t19.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t27) = xsdbool( t8 IS INITIAL ).
    IF t27 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t29.
      t26 = t29.
    ELSE.
      t26 = t8.
    ENDIF.
    t7 = t26.
    DATA t32 TYPE REF TO zcl_lnt_shape_51788160.
    DATA t33 TYPE REF TO object.
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
      t40 = t32->viewfield.
      t39 = t40->value.
      t38 = strlen( t39 ).
      t37 = xsdbool( t38 > t3 ).
      IF t37 = abap_true.
        DATA(t44) = VALUE string( ).
        DATA(t45) = VALUE string( ).
        DATA(t46) = VALUE string( ).
        DATA(t47) = VALUE string( ).
        DATA(t48) = |Lock parameter |.
        DATA(t49) = VALUE string( ).
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t51 = t32->viewfield.
        t50 = t51.
        DATA(t53) = VALUE string( ).
        DATA(t54) = VALUE abap_bool( ).
        IF t50 IS INITIAL.
          t54 = abap_true.
        ELSEIF t50->has = abap_false.
          t54 = abap_true.
        ENDIF.
        IF t54 = abap_true.
          t53 = |undefined|.
        ELSE.
          DATA t57 TYPE string.
          t57 = t50->value.
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
        t67 = |{ t3 }|.
        DATA(t69) = strlen( t66 ).
        t65 = |{ t66 }{ t67 }|.
        DATA(t70) = | characters (actual: |.
        DATA(t71) = strlen( t65 ).
        t64 = |{ t65 }{ t70 }|.
        DATA t72 TYPE string.
        DATA t73 TYPE i.
        DATA t74 TYPE string.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t75 = t32->viewfield.
        t74 = t75->value.
        t73 = strlen( t74 ).
        t72 = |{ t73 }|.
        DATA(t78) = strlen( t64 ).
        t63 = |{ t64 }{ t72 }|.
        DATA(t79) = |)|.
        DATA(t80) = strlen( t63 ).
        t62 = |{ t63 }{ t79 }|.
        DATA(t81) = strlen( t46 ).
        t45 = |{ t46 }{ t62 }|.
        t44 = t45.
        DATA t83 TYPE REF TO zcl_lnt_issue.
        CLEAR t83.
        DATA(t85) = CONV f( 1 ).
        DATA(t87) = VALUE string( ).
        DATA t88 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t88.
        DATA t89 TYPE string.
        t89 = |xml_consistency|.
        DATA t91 TYPE string.
        t91 = |XML consistency|.
        DATA t93 TYPE string.
        t93 = |Checks the consistency of main XML files|.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t95.
        DATA(t98) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
        t98 = t98 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
        t98 = t98 && |ce table and field values\n* Transparent TABL objects have de|.
        t98 = t98 && |livery class and size category set\n* Lock parameter names in|.
        t98 = t98 && | ENQU objects are max 16 characters\n* Texts and translations|.
        t98 = t98 && | do not exceed maximum allowed length.|.
        DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t99->has = abap_true.
        t99->value = t98.
        t95 = t99.
        DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t101.
        DATA t105 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t106.
        t105 = t106.
        DATA(t108) = |Naming|.
        t105->load( ).
        APPEND t108 TO t105->items.
        t105->save( ).
        DATA(t110) = |Syntax|.
        t105->load( ).
        APPEND t110 TO t105->items.
        t105->save( ).
        t101 = t105.
        DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t113.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t115.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t117.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t119.
        t88 = NEW zcl_lnt_irule_metadata( i_key = t89 i_title = t91 i_short_description = t93 i_bad_example = t113 i_good_example = t115 i_extended_information = t95 i_tags = t101 i_pragma = t117 i_pseudo_comment = t119 ).
        CREATE OBJECT t88->zlnt_view_ownkeys_b0e8086400eb.
        t88->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t121 ).
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
        t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
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
        t136 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        t83 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t85 i_message_26cb = t44 i_key = t87 i_severity = t136 ).
        t5->load( ).
        APPEND t83 TO t5->items.
        t5->save( ).
      ENDIF.
    ENDDO.
    result = t5.

  ENDMETHOD.

  METHOD run_table.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zcl_lnt_table.
    t8 = t1.
    DATA(t11) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t13 = t8->parsed_data.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t11 = xsdbool( t13 IS INITIAL ).
    IF t11 = abap_true.
      t8->parse_xml( ).
    ENDIF.
    DATA t21 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA t22 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t22 = t8->parsed_data.
    t21 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t25) = xsdbool( t21 IS INITIAL ).
    IF t25 = abap_true.
    ELSE.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t29 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      t29 = t21.
      t28 = t29->fields_464c.
      t24 = t28.
    ENDIF.
    t6 = t24.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t32) = xsdbool( t6 IS INITIAL ).
    IF t32 = abap_true.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t34.
      t31 = t34.
    ELSE.
      t31 = t6.
    ENDIF.
    t5 = t31.
    DATA t37 TYPE REF TO zcl_lnt_shape_e534171c.
    DATA t38 TYPE REF TO object.
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
      t44 = t37->datatype_2bc5.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA(t48) = |QUAN|.
      DATA(t49) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t49->has = abap_true.
      t49->value = t48.
      t46 = t49.
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
        t58 = t37->reftable.
        t57 = t58.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        DATA(t61) = VALUE abap_bool( ).
        IF t57 IS INITIAL.
          t61 = abap_true.
        ELSEIF t57->has = abap_false.
          t61 = abap_true.
        ENDIF.
        IF t61 = abap_true.
          CLEAR t60.
        ELSE.
          DATA(t64) = VALUE string( ).
          DATA t65 TYPE string.
          t65 = t57->value.
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
          t91 = t37->reffield.
          t90 = t91.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t93.
          DATA(t94) = VALUE abap_bool( ).
          IF t90 IS INITIAL.
            t94 = abap_true.
          ELSEIF t90->has = abap_false.
            t94 = abap_true.
          ENDIF.
          IF t94 = abap_true.
            CLEAR t93.
          ELSE.
            DATA(t97) = VALUE string( ).
            DATA t98 TYPE string.
            t98 = t90->value.
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
        t126 = t37->fieldname.
        t125 = t126.
        DATA(t128) = VALUE string( ).
        DATA(t129) = VALUE abap_bool( ).
        IF t125 IS INITIAL.
          t129 = abap_true.
        ELSEIF t125->has = abap_false.
          t129 = abap_true.
        ENDIF.
        IF t129 = abap_true.
          t128 = |undefined|.
        ELSE.
          DATA t132 TYPE string.
          t132 = t125->value.
          t128 = t132.
        ENDIF.
        t124 = t128.
        DATA(t134) = strlen( t123 ).
        t122 = |{ t123 }{ t124 }|.
        DATA(t135) = | must have REFTABLE and REFFIELD set|.
        DATA(t136) = strlen( t122 ).
        t121 = |{ t122 }{ t135 }|.
        t120 = t121.
        DATA t138 TYPE REF TO zcl_lnt_issue.
        CLEAR t138.
        DATA(t140) = CONV f( 1 ).
        DATA(t142) = VALUE string( ).
        DATA t143 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t143.
        DATA t144 TYPE string.
        t144 = |xml_consistency|.
        DATA t146 TYPE string.
        t146 = |XML consistency|.
        DATA t148 TYPE string.
        t148 = |Checks the consistency of main XML files|.
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t150.
        DATA(t153) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
        t153 = t153 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
        t153 = t153 && |ce table and field values\n* Transparent TABL objects have de|.
        t153 = t153 && |livery class and size category set\n* Lock parameter names in|.
        t153 = t153 && | ENQU objects are max 16 characters\n* Texts and translations|.
        t153 = t153 && | do not exceed maximum allowed length.|.
        DATA(t154) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t154->has = abap_true.
        t154->value = t153.
        t150 = t154.
        DATA t156 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t156.
        DATA t160 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t161 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t161.
        t160 = t161.
        DATA(t163) = |Naming|.
        t160->load( ).
        APPEND t163 TO t160->items.
        t160->save( ).
        DATA(t165) = |Syntax|.
        t160->load( ).
        APPEND t165 TO t160->items.
        t160->save( ).
        t156 = t160.
        DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t168.
        DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t170.
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t172.
        DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t174.
        t143 = NEW zcl_lnt_irule_metadata( i_key = t144 i_title = t146 i_short_description = t148 i_bad_example = t168 i_good_example = t170 i_extended_information = t150 i_tags = t156 i_pragma = t172 i_pseudo_comment = t174 ).
        CREATE OBJECT t143->zlnt_view_ownkeys_b0e8086400eb.
        t143->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t176.
        t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t176 ).
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
        t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t181 p1 = t182 ).
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
        t191 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        t138 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t140 i_message_26cb = t120 i_key = t142 i_severity = t191 ).
        t3->load( ).
        APPEND t138 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    DATA(t193) = VALUE abap_bool( ).
    DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t195 TYPE REF TO zcl_lnt_table.
    t195 = t1.
    DATA(t198) = VALUE abap_bool( ).
    DATA t200 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t200 = t195->parsed_data.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t198 = xsdbool( t200 IS INITIAL ).
    IF t198 = abap_true.
      t195->parse_xml( ).
    ENDIF.
    DATA t208 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA t209 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t209 = t195->parsed_data.
    t208 = t209.
    DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t212) = xsdbool( t208 IS INITIAL ).
    IF t212 = abap_true.
    ELSE.
      DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t216 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      t216 = t208.
      t215 = t216->table_category.
      t211 = t215.
    ENDIF.
    t194 = t211.
    DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t220) = |TRANSP|.
    DATA(t221) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t221->has = abap_true.
    t221->value = t220.
    t218 = t221.
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
      DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t230 TYPE REF TO zcl_lnt_table.
      t230 = t1.
      DATA(t233) = VALUE abap_bool( ).
      DATA t235 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      t235 = t230->parsed_data.
      DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t233 = xsdbool( t235 IS INITIAL ).
      IF t233 = abap_true.
        t230->parse_xml( ).
      ENDIF.
      DATA t243 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA t244 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      t244 = t230->parsed_data.
      t243 = t244.
      DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t247) = xsdbool( t243 IS INITIAL ).
      IF t247 = abap_true.
      ELSE.
        DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t251 TYPE REF TO zcl_lnt_shape_b90fc0d5.
        t251 = t243.
        t250 = t251->delivery_class.
        t246 = t250.
      ENDIF.
      t228 = t246.
      DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t254) = VALUE abap_bool( ).
      IF t228 IS INITIAL.
        t254 = abap_true.
      ELSEIF t228->has = abap_false.
        t254 = abap_true.
      ENDIF.
      IF t254 = abap_true.
      ELSE.
        DATA(t257) = VALUE string( ).
        DATA t258 TYPE string.
        t258 = t228->value.
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
        DATA(t281) = |Transparent table must have delivery class(CONTFLAG in DD02V|.
        t281 = t281 && |) set|.
        DATA t283 TYPE REF TO zcl_lnt_issue.
        DATA(t285) = CONV f( 1 ).
        DATA(t287) = VALUE string( ).
        DATA t288 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t289 TYPE string.
        t289 = |xml_consistency|.
        DATA t291 TYPE string.
        t291 = |XML consistency|.
        DATA t293 TYPE string.
        t293 = |Checks the consistency of main XML files|.
        DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t298) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
        t298 = t298 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
        t298 = t298 && |ce table and field values\n* Transparent TABL objects have de|.
        t298 = t298 && |livery class and size category set\n* Lock parameter names in|.
        t298 = t298 && | ENQU objects are max 16 characters\n* Texts and translations|.
        t298 = t298 && | do not exceed maximum allowed length.|.
        DATA(t299) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t299->has = abap_true.
        t299->value = t298.
        t295 = t299.
        DATA t301 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t305 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t306 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t306.
        t305 = t306.
        DATA(t308) = |Naming|.
        t305->load( ).
        APPEND t308 TO t305->items.
        t305->save( ).
        DATA(t310) = |Syntax|.
        t305->load( ).
        APPEND t310 TO t305->items.
        t305->save( ).
        t301 = t305.
        DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t288 = NEW zcl_lnt_irule_metadata( i_key = t289 i_title = t291 i_short_description = t293 i_bad_example = t313 i_good_example = t315 i_extended_information = t295 i_tags = t301 i_pragma = t317 i_pseudo_comment = t319 ).
        CREATE OBJECT t288->zlnt_view_ownkeys_b0e8086400eb.
        t288->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t321 ).
        DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t288->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t322 ).
        ENDIF.
        DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t288->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t323 ).
        ENDIF.
        DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t288->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t324 ).
        ENDIF.
        DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t288->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t325 ).
        ENDIF.
        CREATE OBJECT t288->zlnt_json_ownkeys_70e5fd461788.
        t288->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t326) = |key|.
        DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = t326 p1 = t327 ).
        DATA(t328) = |title|.
        DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t288->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = t328 p1 = t329 ).
        ENDIF.
        DATA(t330) = |shortDescription|.
        DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t288->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = t330 p1 = t331 ).
        ENDIF.
        DATA(t332) = |extendedInformation|.
        DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t288->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = t332 p1 = t333 ).
        ENDIF.
        DATA(t334) = |tags|.
        DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t288->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = t334 p1 = t335 ).
        ENDIF.
        t287 = t288->key.
        DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t336 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        t283 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t285 i_message_26cb = t281 i_key = t287 i_severity = t336 ).
        t3->load( ).
        APPEND t283 TO t3->items.
        t3->save( ).
      ENDIF.
      DATA(t338) = VALUE abap_bool( ).
      DATA(t339) = VALUE abap_bool( ).
      DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t343 TYPE REF TO zcl_lnt_table.
      t343 = t1.
      DATA(t346) = VALUE abap_bool( ).
      DATA t348 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      t348 = t343->parsed_data.
      DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t346 = xsdbool( t348 IS INITIAL ).
      IF t346 = abap_true.
        t343->parse_xml( ).
      ENDIF.
      DATA t356 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA t357 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      t357 = t343->parsed_data.
      t356 = t357.
      DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t360) = xsdbool( t356 IS INITIAL ).
      IF t360 = abap_true.
      ELSE.
        DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t364 TYPE REF TO zcl_lnt_shape_b90fc0d5.
        t364 = t356.
        t363 = t364->size_category.
        t359 = t363.
      ENDIF.
      t341 = t359.
      DATA t366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t367) = VALUE abap_bool( ).
      IF t341 IS INITIAL.
        t367 = abap_true.
      ELSEIF t341->has = abap_false.
        t367 = abap_true.
      ENDIF.
      IF t367 = abap_true.
      ELSE.
        DATA(t370) = VALUE string( ).
        DATA t371 TYPE string.
        t371 = t341->value.
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
        DATA(t394) = |Transparent table must have size category(TABKAT in DD09L) s|.
        t394 = t394 && |et|.
        DATA t396 TYPE REF TO zcl_lnt_issue.
        DATA(t398) = CONV f( 1 ).
        DATA(t400) = VALUE string( ).
        DATA t401 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t402 TYPE string.
        t402 = |xml_consistency|.
        DATA t404 TYPE string.
        t404 = |XML consistency|.
        DATA t406 TYPE string.
        t406 = |Checks the consistency of main XML files|.
        DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t411) = |Checks:\n* XML is well-formed and parseable\n* Naming for CLAS|.
        t411 = t411 && | and INTF objects\n* QUAN fields in TABL objects have referen|.
        t411 = t411 && |ce table and field values\n* Transparent TABL objects have de|.
        t411 = t411 && |livery class and size category set\n* Lock parameter names in|.
        t411 = t411 && | ENQU objects are max 16 characters\n* Texts and translations|.
        t411 = t411 && | do not exceed maximum allowed length.|.
        DATA(t412) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t412->has = abap_true.
        t412->value = t411.
        t408 = t412.
        DATA t414 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t418 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t419 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t419.
        t418 = t419.
        DATA(t421) = |Naming|.
        t418->load( ).
        APPEND t421 TO t418->items.
        t418->save( ).
        DATA(t423) = |Syntax|.
        t418->load( ).
        APPEND t423 TO t418->items.
        t418->save( ).
        t414 = t418.
        DATA t426 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t428 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t401 = NEW zcl_lnt_irule_metadata( i_key = t402 i_title = t404 i_short_description = t406 i_bad_example = t426 i_good_example = t428 i_extended_information = t408 i_tags = t414 i_pragma = t430 i_pseudo_comment = t432 ).
        CREATE OBJECT t401->zlnt_view_ownkeys_b0e8086400eb.
        t401->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t434 ).
        DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t401->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t435 ).
        ENDIF.
        DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t401->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t436 ).
        ENDIF.
        DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t401->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t437 ).
        ENDIF.
        DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t401->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t438 ).
        ENDIF.
        CREATE OBJECT t401->zlnt_json_ownkeys_70e5fd461788.
        t401->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t439) = |key|.
        DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t439 p1 = t440 ).
        DATA(t441) = |title|.
        DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t401->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t441 p1 = t442 ).
        ENDIF.
        DATA(t443) = |shortDescription|.
        DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t401->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t443 p1 = t444 ).
        ENDIF.
        DATA(t445) = |extendedInformation|.
        DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t401->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t445 p1 = t446 ).
        ENDIF.
        DATA(t447) = |tags|.
        DATA t448 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t401->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t447 p1 = t448 ).
        ENDIF.
        t400 = t401->key.
        DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t449 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        t396 = zcl_lnt_issue=>at_row( i_file = t2 i_row = t398 i_message_26cb = t394 i_key = t400 i_severity = t449 ).
        t3->load( ).
        APPEND t396 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_xml_consistency_conf( me->gt_cn_in_sr_rl_xm_cn_ts_xm_cns( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_xml_consistency_conf( me->gt_cn_in_sr_rl_xm_cn_ts_xm_cns( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_xml_consistency_conf.
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
        t2 = NEW zcl_lnt_xml_consistency_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_xm_cn_ts_xm_cns( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA t2 TYPE REF TO zcl_lnt_xml_consistency.
    DATA(t3) = i_reg_f149.
    t2 = me->in_in_sr_rl_xml_cns_ts_xml_cns( i_reg_d009 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD fn_push.
    DATA(t1) = i_issues.
    DATA(t2) = i_issue.
    DATA t3 TYPE abap_bool.
    t3 = xsdbool( t2 IS BOUND ).
    IF t3 = abap_true.
      DATA t6 TYPE REF TO zcl_lnt_issue.
      t6 = t2.
      t1->load( ).
      APPEND t6 TO t1->items.
      t1->save( ).
    ENDIF.
  ENDMETHOD.

  METHOD fn_push_9491.
    DATA(t1) = i_issues.
    DATA(t2) = i_issue.
    DATA t3 TYPE abap_bool.
    t3 = xsdbool( t2 IS BOUND ).
    IF t3 = abap_true.
      DATA t6 TYPE REF TO zcl_lnt_issue.
      t6 = t2.
      t1->load( ).
      APPEND t6 TO t1->items.
      t1->save( ).
    ENDIF.
  ENDMETHOD.

  METHOD fn_push_10223.
    DATA(t1) = i_issues.
    DATA(t2) = i_issue.
    DATA t3 TYPE abap_bool.
    t3 = xsdbool( t2 IS BOUND ).
    IF t3 = abap_true.
      DATA t6 TYPE REF TO zcl_lnt_issue.
      t6 = t2.
      t1->load( ).
      APPEND t6 TO t1->items.
      t1->save( ).
    ENDIF.
  ENDMETHOD.

  METHOD fn_push_10744.
    DATA(t1) = i_issues.
    DATA(t2) = i_issue.
    DATA t3 TYPE abap_bool.
    t3 = xsdbool( t2 IS BOUND ).
    IF t3 = abap_true.
      DATA t6 TYPE REF TO zcl_lnt_issue.
      t6 = t2.
      t1->load( ).
      APPEND t6 TO t1->items.
      t1->save( ).
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
