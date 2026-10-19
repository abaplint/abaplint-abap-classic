* TS: src/rules/short_case.ts:21:1 ShortCase
CLASS zcl_lnt_short_case DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_short_case_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_sh_cs_ts_shr_cs RETURNING VALUE(result) TYPE REF TO zcl_lnt_short_case_conf.
    METHODS st_cn_in_sr_rl_sh_cs_ts_shr_cs IMPORTING i_conf TYPE REF TO zcl_lnt_short_case_conf.
    METHODS rn_pr_in_sr_rl_sh_cs_ts_shr_cs IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_short_case IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_short_case_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |short_case|.
    DATA t4 TYPE string.
    t4 = |Short CASE|.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for CASE statements which have fewer than the specifi|.
    t7 = t7 && |ed number of branches|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Short CASE constructs can be changed to IF|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |SingleFile|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t27) = |CASE moo.\nWHEN 'X'.\nENDCASE.|.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t27.
    t24 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t33) = |IF moo = 'X'.\nENDIF.|.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = t33.
    t30 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t47) = |key|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    DATA(t49) = |title|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |shortDescription|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |extendedInformation|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |tags|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |badExample|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |goodExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = VALUE string( ).
    DATA(t2) = VALUE string( ).
    DATA(t3) = |CASE construct too short, it must have a minimum of |.
    DATA(t4) = VALUE string( ).
    DATA t5 TYPE f.
    DATA t6 TYPE f.
    t6 = me->conf->zlnt_view_read_sr_658d1eb08573( ).
    DATA(t8) = CONV f( 1 ).
    t5 = t6 + t8.
    IF t5 <> trunc( t5 ) OR t5 > range_safe_integer OR t5 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t9) = CONV int8( t5 ).
    t4 = |{ t9 }|.
    DATA(t10) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t11) = | WHEN branches|.
    DATA(t12) = strlen( t2 ).
    t1 = |{ t2 }{ t11 }|.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_sh_cs_ts_shr_cs.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_sh_cs_ts_shr_cs.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_sh_cs_ts_shr_cs.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    t8 = t1->structure.
    t4 = t8.
    DATA(t10) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10 = xsdbool( t4 IS INITIAL ).
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    t19 = t4.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d709_9d7d29fb0565.
    t18 = t19->find_all_structures( i_type_9913 = t21 ).
    DATA t22 TYPE REF TO zcl_lnt_structure_node.
    DATA t23 TYPE REF TO object.
    DATA(t24) = VALUE i( ).
    DO.
      t18->load( ).
      IF t24 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t18->items INDEX t24 + 1 INTO t23.
      t24 = t24 + 1.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t22.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t23.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t22 ?= t26.
      ELSE.
        t22 ?= t23.
      ENDIF.
      DATA t27 TYPE REF TO zcl_lnt_statement_node.
      DATA t28 TYPE REF TO zcl_lnt_statement_node.
      DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d400_37d69a21ca3a.
      t28 = t22->find_direct_statement( i_type_9913 = t30 ).
      t27 = t28.
      DATA(t31) = VALUE abap_bool( ).
      DATA t32 TYPE abap_bool.
      DATA t33 TYPE abap_bool.
      t33 = xsdbool( t27 IS BOUND ).
      t32 = t33.
      IF t33 = abap_true.
        DATA t35 TYPE abap_bool.
        DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t36 = me->conf->zlnt_view_read_sr_516b41c0c2a3( ).
        t35 = xsdbool( t36 IS BOUND ).
        t32 = t35.
      ENDIF.
      t31 = t32.
      IF t32 = abap_true.
        DATA(t38) = VALUE abap_bool( ).
        DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t39.
        DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t41 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t41 = me->conf->zlnt_view_read_sr_516b41c0c2a3( ).
        t40 = t41.
        DATA t43 TYPE i.
        DATA t44 TYPE i.
        t40->load( ).
        t44 = lines( t40->items ).
        t43 = t44.
        DATA t46 TYPE i.
        t46 = 0.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t48.
        DO.
          DATA t50 TYPE abap_bool.
          t50 = xsdbool( t46 < t43 ).
          IF t50 = abap_false.
            EXIT.
          ENDIF.
          DATA t53 TYPE string.
          DATA t54 TYPE string.
          DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t55 = t40->get( p0 = t46 ).
          t54 = t55->value.
          t53 = t54.
          DATA(t58) = VALUE abap_bool( ).
          DATA(t60) = VALUE string( ).
          DATA t62 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t62.
          DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t64 TYPE REF TO zcl_lnt_statement_node.
          t64 = t27.
          t63 = t64->get_tokens( ).
          DATA t66 TYPE REF TO object.
          CLEAR t66.
          t63->load( ).
          CLEAR t66.
          READ TABLE t63->items INDEX 2 INTO t66.
          DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t67.
          CLEAR t62.
          IF t66 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t67 ?= t66.
            DATA t68 TYPE REF TO object.
            t68 = t67->as_ref( ).
            t62 ?= t68.
          ELSE.
            t62 ?= t66.
          ENDIF.
          DATA t69 TYPE string.
          t69 = t62->str.
          t60 = t69.
          t58 = xsdbool( t53 = t60 ).
          IF t58 = abap_true.
            DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t74->has = abap_true.
            t74->value = t53.
            t48 = t74.
            EXIT.
          ENDIF.
          DATA t76 TYPE i.
          DATA(t78) = 1.
          t76 = t46 + t78.
          t46 = t76.
        ENDDO.
        t39 = t48.
        IF t39 IS BOUND.
          IF t39->has = abap_true.
            t38 = xsdbool( strlen( t39->value ) > 0 ).
          ENDIF.
        ENDIF.
        t31 = t38.
      ENDIF.
      IF t31 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t80 TYPE abap_bool.
      DATA t81 TYPE f.
      DATA t82 TYPE i.
      DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d708_dde8d9743472.
      t83 = t22->find_direct_structures( i_type_9913 = t85 ).
      t83->load( ).
      t82 = lines( t83->items ).
      t81 = t82.
      DATA t86 TYPE f.
      t86 = me->conf->zlnt_view_read_sr_658d1eb08573( ).
      t80 = xsdbool( t81 <= t86 ).
      IF t80 = abap_true.
        DATA t88 TYPE abap_bool.
        DATA t89 TYPE REF TO zcl_lnt_expression_node.
        DATA(t91) = zlnt_runtime_desc_78196487750d=>zlnt_member_d240_19cb4e87e8c0.
        t89 = t22->find_first_expression( i_type_9913 = t91 ).
        t88 = xsdbool( t89 IS BOUND ).
        IF t88 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t93 TYPE REF TO zcl_lnt_issue.
        CLEAR t93.
        DATA t95 TYPE REF TO zcl_lnt_abstract_token.
        t95 = t22->get_first_token( ).
        DATA(t97) = VALUE string( ).
        DATA(t98) = VALUE string( ).
        DATA(t99) = |CASE construct too short, it must have a minimum of |.
        DATA(t100) = VALUE string( ).
        DATA t101 TYPE f.
        DATA t102 TYPE f.
        t102 = me->conf->zlnt_view_read_sr_658d1eb08573( ).
        DATA(t104) = CONV f( 1 ).
        t101 = t102 + t104.
        IF t101 <> trunc( t101 ) OR t101 > range_safe_integer OR t101 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t105) = CONV int8( t101 ).
        t100 = |{ t105 }|.
        DATA(t106) = strlen( t99 ).
        t98 = |{ t99 }{ t100 }|.
        DATA(t107) = | WHEN branches|.
        DATA(t108) = strlen( t98 ).
        t97 = |{ t98 }{ t107 }|.
        DATA(t109) = VALUE string( ).
        DATA t110 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t110.
        DATA t111 TYPE string.
        t111 = |short_case|.
        DATA t113 TYPE string.
        t113 = |Short CASE|.
        DATA t115 TYPE string.
        DATA(t116) = |Checks for CASE statements which have fewer than the specifi|.
        t116 = t116 && |ed number of branches|.
        t115 = t116.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t117.
        DATA(t120) = |Short CASE constructs can be changed to IF|.
        DATA(t121) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t121->has = abap_true.
        t121->value = t120.
        t117 = t121.
        DATA t123 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t123.
        DATA t127 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t128 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t128.
        t127 = t128.
        DATA(t130) = |SingleFile|.
        t127->load( ).
        APPEND t130 TO t127->items.
        t127->save( ).
        t123 = t127.
        DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t133.
        DATA(t136) = |CASE moo.\nWHEN 'X'.\nENDCASE.|.
        DATA(t137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t137->has = abap_true.
        t137->value = t136.
        t133 = t137.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t139.
        DATA(t142) = |IF moo = 'X'.\nENDIF.|.
        DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t143->has = abap_true.
        t143->value = t142.
        t139 = t143.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t145.
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t147.
        t110 = NEW zcl_lnt_irule_metadata( i_key = t111 i_title = t113 i_short_description = t115 i_bad_example = t133 i_good_example = t139 i_extended_information = t117 i_tags = t123 i_pragma = t145 i_pseudo_comment = t147 ).
        CREATE OBJECT t110->zlnt_view_ownkeys_b0e8086400eb.
        t110->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t149.
        t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t149 ).
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t150.
        IF t110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t150 ).
        ENDIF.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        IF t110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t151 ).
        ENDIF.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        IF t110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t152 ).
        ENDIF.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        IF t110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t153 ).
        ENDIF.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        IF t110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t154 ).
        ENDIF.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        IF t110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t155 ).
        ENDIF.
        CREATE OBJECT t110->zlnt_json_ownkeys_70e5fd461788.
        t110->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t156) = |key|.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
        DATA(t158) = |title|.
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
        ENDIF.
        DATA(t160) = |shortDescription|.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t160 p1 = t161 ).
        ENDIF.
        DATA(t162) = |extendedInformation|.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t162 p1 = t163 ).
        ENDIF.
        DATA(t164) = |tags|.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t164 p1 = t165 ).
        ENDIF.
        DATA(t166) = |badExample|.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
        ENDIF.
        DATA(t168) = |goodExample|.
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t169.
        IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
        ENDIF.
        t109 = t110->key.
        DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t170 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t172 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t172.
        t93 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t95 i_message_26cb = t97 i_key = t109 i_severity = t170 i_fix = t172 ).
        t2->load( ).
        APPEND t93 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_short_case_conf( me->gt_cn_in_sr_rl_sh_cs_ts_shr_cs( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_short_case_conf( me->gt_cn_in_sr_rl_sh_cs_ts_shr_cs( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_short_case_conf.
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
        t1 = NEW zcl_lnt_short_case_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_sh_cs_ts_shr_cs( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_sh_cs_ts_shr_cs( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1698_432cfd4f8410.
  ENDMETHOD.
ENDCLASS.
