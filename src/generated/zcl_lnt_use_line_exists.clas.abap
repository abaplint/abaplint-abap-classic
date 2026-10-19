* TS: src/rules/use_line_exists.ts:16:1 UseLineExists
CLASS zcl_lnt_use_line_exists DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_use_line_exists_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_us_ln_ex_ts_us_ln_ex RETURNING VALUE(result) TYPE REF TO zcl_lnt_use_line_exists_conf.
    METHODS s_c_i_s_r_us_ln_ex_ts_us_ln_ex IMPORTING i_conf TYPE REF TO zcl_lnt_use_line_exists_conf.
    METHODS run_parsed REDEFINITION.
    METHODS checks_subrc IMPORTING i_index TYPE i i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE abap_bool.
    METHODS uses_tabix IMPORTING i_index TYPE i i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_use_line_exists IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_use_line_exists_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
    t11 = t11 && |anABAP.md#prefer-line_exists-to-read-table-or-loop-at\n\nNot r|.
    t11 = t11 && |eported if the READ TABLE statement contains BINARY SEARCH.|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Upport| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t31) = |READ TABLE my_table TRANSPORTING NO FIELDS WITH KEY key = 'A|.
    t31 = t31 && |'.\nIF sy-subrc = 0.\nENDIF.|.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = t31.
    t28 = t32.
    DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t38->has = abap_true.
    t38->value = |IF line_exists( my_table[ key = 'A' ] ).\nENDIF.|.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |use_line_exists| i_title = |Use line_exists| i_short_description = |Use line_exists, from 740sp02 and up| i_bad_example = t28 i_good_example = t38 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t50 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t52 ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_us_ln_ex_ts_us_ln_ex.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_us_ln_ex_ts_us_ln_ex.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    IF xsdbool( t2->get_type( ) = |INTF| ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_abap_release.
    t11 = me->reg->get_config( )->get_release( ).
    DATA t15 TYPE string.
    t15 = me->reg->get_config( )->get_language_version( ).
    IF me->reg->get_config( )->is_open_abap( ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ELSE.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t28 = zcl_lnt_version_module=>release_b8cd.
      t23 = xsdbool( zcl_lnt_version_module=>release_at_least( i_running = t11 i_required = t28->get( p0 = |v740sp02| ) ) = abap_false ).
      t22 = t23.
      IF t23 = abap_true.
        t22 = xsdbool( t15 <> |Cloud| ).
      ENDIF.
      IF t22 = abap_true.
        CREATE OBJECT result.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t34 = t1->statements.
    DATA t40 TYPE i.
    t40 = 0.
    DO.
      t34->load( ).
      IF xsdbool( t40 < lines( t34->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t46 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t46.
      DATA t47 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t47.
      DATA(t49) = t40.
      t49 = t49 + 1.
      DATA t50 TYPE REF TO object.
      CLEAR t50.
      t34->load( ).
      CLEAR t50.
      READ TABLE t34->items INDEX t49 INTO t50.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      CLEAR t47.
      IF t50 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t51 ?= t50.
        DATA t52 TYPE REF TO object.
        t52 = t51->as_ref( ).
        t47 ?= t52.
      ELSE.
        t47 ?= t50.
      ENDIF.
      t46 = t47.
      DATA t55 TYPE REF TO zif_lnt_statement.
      t55 = t46->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_st_read_table ) = abap_false ) = abap_true.
        DATA(t59) = 1.
        t40 = t40 + t59.
        CONTINUE.
      ENDIF.
      DATA(t60) = VALUE string( ).
      DATA t61 TYPE string.
      DATA t62 TYPE string.
      t62 = t46->concat_tokens( ).
      DATA(t64) = strlen( t62 ).
      t61 = t62.
      IF t61 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t61 TO UPPER CASE.
      ELSE.
        t61 = zlnt_runtime_uppe_91169605024d=>full( t61 ).
      ENDIF.
      t60 = t61.
      DATA(t65) = VALUE abap_bool( ).
      DATA(t66) = VALUE abap_bool( ).
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = VALUE abap_bool( ).
      DATA(t70) = VALUE i( ).
      DATA(t72) = | TRANSPORTING NO FIELDS|.
      DATA(t73) = strlen( t60 ).
      IF t72 IS INITIAL.
        t70 = 0.
      ELSE.
        FIND t72 IN t60 MATCH OFFSET t70.
        IF sy-subrc <> 0.
          t70 = -1.
        ENDIF.
      ENDIF.
      t68 = xsdbool( xsdbool( t70 >= 0 ) = abap_true ).
      t67 = t68.
      IF t68 = abap_true.
        DATA(t78) = VALUE i( ).
        DATA(t80) = | BINARY SEARCH|.
        DATA(t81) = strlen( t60 ).
        IF t80 IS INITIAL.
          t78 = 0.
        ELSE.
          FIND t80 IN t60 MATCH OFFSET t78.
          IF sy-subrc <> 0.
            t78 = -1.
          ENDIF.
        ENDIF.
        t67 = xsdbool( xsdbool( t78 >= 0 ) = abap_false ).
      ENDIF.
      t66 = t67.
      IF t67 = abap_true.
        DATA t85 TYPE abap_bool.
        t85 = me->checks_subrc( i_index = t40 i_statements = t34 ).
        t66 = xsdbool( t85 = abap_true ).
      ENDIF.
      t65 = t66.
      IF t66 = abap_true.
        DATA t90 TYPE abap_bool.
        t90 = me->uses_tabix( i_index = t40 i_statements = t34 ).
        t65 = xsdbool( t90 = abap_false ).
      ENDIF.
      IF t65 = abap_true.
        DATA t95 TYPE REF TO zcl_lnt_issue.
        CLEAR t95.
        DATA(t99) = VALUE string( ).
        DATA t100 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t100.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t107.
        DATA(t110) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
        t110 = t110 && |anABAP.md#prefer-line_exists-to-read-table-or-loop-at\n\nNot r|.
        t110 = t110 && |eported if the READ TABLE statement contains BINARY SEARCH.|.
        DATA(t111) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t111->has = abap_true.
        t111->value = t110.
        t107 = t111.
        DATA t113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t113.
        DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t117.
        t117->load( ).
        APPEND |Upport| TO t117->items.
        t117->save( ).
        t117->load( ).
        APPEND |Styleguide| TO t117->items.
        t117->save( ).
        t117->load( ).
        APPEND |SingleFile| TO t117->items.
        t117->save( ).
        t113 = t117.
        DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t127.
        DATA(t130) = |READ TABLE my_table TRANSPORTING NO FIELDS WITH KEY key = 'A|.
        t130 = t130 && |'.\nIF sy-subrc = 0.\nENDIF.|.
        DATA(t131) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t131->has = abap_true.
        t131->value = t130.
        t127 = t131.
        DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t133.
        DATA(t137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t137->has = abap_true.
        t137->value = |IF line_exists( my_table[ key = 'A' ] ).\nENDIF.|.
        t133 = t137.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t139.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t141.
        t100 = NEW zcl_lnt_irule_metadata( i_key = |use_line_exists| i_title = |Use line_exists| i_short_description = |Use line_exists, from 740sp02 and up| i_bad_example = t127 i_good_example = t133 i_extended_information = t107 i_tags = t113 i_pragma = t139 i_pseudo_comment = t141 ).
        CREATE OBJECT t100->zlnt_view_ownkeys_b0e8086400eb.
        t100->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t143.
        t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t143 ).
        DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t144.
        IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t144 ).
        ENDIF.
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t145.
        IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t145 ).
        ENDIF.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t146.
        IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t146 ).
        ENDIF.
        DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t147.
        IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t147 ).
        ENDIF.
        DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t148.
        IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t148 ).
        ENDIF.
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t149.
        IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t149 ).
        ENDIF.
        CREATE OBJECT t100->zlnt_json_ownkeys_70e5fd461788.
        t100->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t151 ).
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t153 ).
        ENDIF.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t155 ).
        ENDIF.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t157 ).
        ENDIF.
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t159 ).
        ENDIF.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t161 ).
        ENDIF.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t163 ).
        ENDIF.
        t99 = t100->key.
        DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t164 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t166 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t166.
        DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t167.
        t95 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t46 i_message_26cb = |Use line_exists| i_key = t99 i_severity = t164 i_fix = t166 i_alternative_fixes = t167 ).
        t3->load( ).
        APPEND t95 TO t3->items.
        t3->save( ).
      ENDIF.
      DATA(t170) = 1.
      t40 = t40 + t170.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD checks_subrc.
    DATA(t2) = i_statements.
    DATA t3 TYPE i.
    DATA(t6) = 1.
    t3 = i_index + t6.
    DO.
      t2->load( ).
      IF xsdbool( t3 < lines( t2->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t12.
      DATA(t14) = t3.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO object.
      CLEAR t15.
      t2->load( ).
      CLEAR t15.
      READ TABLE t2->items INDEX t14 INTO t15.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      CLEAR t12.
      IF t15 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t16 ?= t15.
        DATA t17 TYPE REF TO object.
        t17 = t16->as_ref( ).
        t12 ?= t17.
      ELSE.
        t12 ?= t15.
      ENDIF.
      t11 = t12.
      DATA t19 TYPE REF TO zif_lnt_statement.
      t19 = t11->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_comment ) = abap_true.
        DATA(t23) = 1.
        t3 = t3 + t23.
        CONTINUE.
      ENDIF.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
      t24 = t11->find_all_expressions( i_type_9913 = t26 ).
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t27.
      DATA t28 TYPE REF TO object.
      CLEAR t28.
      DATA(t29) = VALUE i( ).
      DO.
        t24->load( ).
        IF t29 >= lines( t24->items ).
          EXIT.
        ENDIF.
        CLEAR t28.
        READ TABLE t24->items INDEX t29 + 1 INTO t28.
        t29 = t29 + 1.
        DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t30.
        CLEAR t27.
        IF t28 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t30 ?= t28.
          DATA t31 TYPE REF TO object.
          t31 = t30->as_ref( ).
          t27 ?= t31.
        ELSE.
          t27 ?= t28.
        ENDIF.
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
        t32 = t27->find_all_expressions( i_type_9913 = t34 ).
        DATA t35 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t35.
        DATA t36 TYPE REF TO object.
        CLEAR t36.
        DATA(t37) = VALUE i( ).
        DO.
          t32->load( ).
          IF t37 >= lines( t32->items ).
            EXIT.
          ENDIF.
          CLEAR t36.
          READ TABLE t32->items INDEX t37 + 1 INTO t36.
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
          DATA t41 TYPE string.
          DATA t42 TYPE string.
          t42 = t35->concat_tokens( ).
          DATA(t44) = strlen( t42 ).
          t41 = t42.
          IF t41 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t41 TO UPPER CASE.
          ELSE.
            t41 = zlnt_runtime_uppe_91169605024d=>full( t41 ).
          ENDIF.
          IF xsdbool( t41 = |SY-SUBRC| ) = abap_true.
            result = abap_true.
            RETURN.
          ENDIF.
        ENDDO.
      ENDDO.
      result = abap_false.
      RETURN.
      DATA(t50) = 1.
      t3 = t3 + t50.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD uses_tabix.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_index.
    DATA(t2) = i_statements.
    DATA t3 TYPE int8.
    DATA t4 TYPE int8.
    DATA t5 TYPE i.
    DATA(t7) = 1.
    t5 = t1 + t7.
    t4 = t5.
    t3 = t4.
    DO.
      DATA t10 TYPE int8.
      DATA t11 TYPE int8.
      t11 = t1.
      DATA(t13) = CONV int8( 5 ).
      t10 = t11 + t13.
      IF xsdbool( t3 < t10 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t14 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t14.
      DATA t15 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t15.
      DATA(t17) = VALUE i( ).
      DATA t18 TYPE f.
      t18 = t3.
      IF t18 > range_i32_upper.
        t17 = range_i32_upper.
      ELSEIF t18 < range_i32_lower.
        t17 = range_i32_lower.
      ELSE.
        t17 = trunc( t18 ).
      ENDIF.
      t17 = t17 + 1.
      DATA t20 TYPE REF TO object.
      CLEAR t20.
      t2->load( ).
      CLEAR t20.
      READ TABLE t2->items INDEX t17 INTO t20.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      CLEAR t15.
      IF t20 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t21 ?= t20.
        DATA t22 TYPE REF TO object.
        t22 = t21->as_ref( ).
        t15 ?= t22.
      ELSE.
        t15 ?= t20.
      ENDIF.
      t14 = t15.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      IF xsdbool( t14 IS INITIAL ) = abap_true.
        EXIT.
      ELSE.
        DATA t31 TYPE REF TO zif_lnt_statement.
        t31 = t14->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        IF xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_st_comment ) = abap_true.
          DATA(t35) = CONV int8( 1 ).
          t3 = t3 + t35.
          CONTINUE.
        ELSE.
          DATA(t37) = VALUE i( ).
          DATA t38 TYPE string.
          DATA t39 TYPE string.
          t39 = t14->concat_tokens( ).
          DATA(t41) = strlen( t39 ).
          t38 = t39.
          IF t38 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t38 TO UPPER CASE.
          ELSE.
            t38 = zlnt_runtime_uppe_91169605024d=>full( t38 ).
          ENDIF.
          DATA(t42) = | SY-TABIX|.
          DATA(t43) = strlen( t38 ).
          IF t42 IS INITIAL.
            t37 = 0.
          ELSE.
            FIND t42 IN t38 MATCH OFFSET t37.
            IF sy-subrc <> 0.
              t37 = -1.
            ENDIF.
          ENDIF.
          IF xsdbool( t37 >= 0 ) = abap_true.
            result = abap_true.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t48) = CONV int8( 1 ).
      t3 = t3 + t48.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_use_line_exists_conf( me->g_c_i_s_r_us_ln_ex_ts_us_ln_ex( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_use_line_exists_conf( me->g_c_i_s_r_us_ln_ex_ts_us_ln_ex( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_use_line_exists_conf.
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
        t1 = NEW zcl_lnt_use_line_exists_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_us_ln_ex_ts_us_ln_ex( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1769_b5baf18a4c69.
  ENDMETHOD.
ENDCLASS.
