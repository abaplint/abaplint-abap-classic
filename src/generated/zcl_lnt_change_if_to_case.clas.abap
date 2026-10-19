* TS: src/rules/change_if_to_case.ts:18:1 ChangeIfToCase
CLASS zcl_lnt_change_if_to_case DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_change_if_to_case_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_c_i_t_c_t_ch_if_t_cs RETURNING VALUE(result) TYPE REF TO zcl_lnt_change_if_to_case_conf.
    METHODS s_c_i_s_r_c_i_t_c_t_ch_if_t_cs IMPORTING i_conf TYPE REF TO zcl_lnt_change_if_to_case_conf.
    METHODS r_p_i_s_r_c_i_t_c_t_ch_if_t_cs IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS analyze IMPORTING i_conds TYPE REF TO zlnt_runtime_arra_3615468a4bf8 RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_change_if_to_case IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_change_if_to_case_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#prefer-case-to-else-if-for-multiple-alternative-con|.
    t11 = t11 && |ditions\n\nIf the first comparison is a boolean compare, no is|.
    t11 = t11 && |sue is reported.|.
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
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t29) = |IF l_fcat-fieldname EQ 'FOO'.\nELSEIF l_fcat-fieldname = 'BAR|.
    t29 = t29 && |'\n    OR l_fcat-fieldname = 'MOO'.\nENDIF.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA(t35) = |CASE l_fcat-fieldname.\n  WHEN 'FOO'.\n  WHEN 'BAR' OR 'MOO'.\n|.
    t35 = t35 && |ENDCASE.|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |change_if_to_case| i_title = |Change IF to CASE| i_short_description = |Finds IF constructs that can be changed to CASE| i_bad_example = t26 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
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

  METHOD g_c_i_s_r_c_i_t_c_t_ch_if_t_cs.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_c_i_t_c_t_ch_if_t_cs.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_c_i_t_c_t_ch_if_t_cs.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    t4 = t1->structure.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      result = t2.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    t19 = t4.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d738_747279fb02d5.
    t18 = t19->find_all_structures_recursive( i_type_9913 = t21 ).
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
      DATA t27 TYPE REF TO zlnt_runtime_arra_3615468a4bf8.
      CREATE OBJECT t27.
      DATA t29 TYPE REF TO zcl_lnt_statement_node.
      DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d525_ab3a9a5b3f8b.
      t29 = t22->find_direct_statement( i_type_9913 = t32 ).
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      IF xsdbool( t29 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t42 TYPE string.
      t42 = t29->concat_tokens( ).
      DATA t46 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t46.
      DATA(t48) = | (abap_true\|abap_false)[\t\n|.
      DATA t49 TYPE c LENGTH 1.
      CLEAR t49.
      t49 = cl_abap_conv_in_ce=>uccpi( 11 ).
      CONCATENATE t48 t49 INTO t48 RESPECTING BLANKS.
      DATA t50 TYPE c LENGTH 1.
      CLEAR t50.
      t50 = cl_abap_conv_in_ce=>uccpi( 12 ).
      CONCATENATE t48 t50 INTO t48 RESPECTING BLANKS.
      t48 = t48 && |\r    - |.
      DATA t51 TYPE c LENGTH 1.
      CLEAR t51.
      t51 = cl_abap_conv_in_ce=>uccpi( 8232 ).
      CONCATENATE t48 t51 INTO t48 RESPECTING BLANKS.
      DATA t52 TYPE c LENGTH 1.
      CLEAR t52.
      t52 = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CONCATENATE t48 t52 INTO t48 RESPECTING BLANKS.
      t48 = t48 && |  　|.
      DATA t53 TYPE c LENGTH 1.
      CLEAR t53.
      t53 = cl_abap_conv_in_ce=>uccpi( 65279 ).
      CONCATENATE t48 t53 INTO t48 RESPECTING BLANKS.
      t48 = t48 && `]*\.`.
      CREATE OBJECT t46 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t48 flags = |i|.
      t46->source = ` (abap_true|abap_false)\s*\.`.
      IF t46->match_test( p0 = t42 ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t57.
      DATA t58 TYPE REF TO zcl_lnt_statement_node.
      t58 = t29.
      DATA t61 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t61.
      IF xsdbool( t58 IS INITIAL ) = abap_true.
        CLEAR t61.
      ELSE.
        DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
        t61 = t58->find_direct_expression( i_type_9913 = t67 ).
      ENDIF.
      t57 = t61.
      t27->load( ).
      APPEND t57 TO t27->items.
      t27->save( ).
      DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t70) = zlnt_runtime_desc_78196487750d=>zlnt_member_d735_6e36d2820627.
      t68 = t22->find_direct_structures( i_type_9913 = t70 ).
      DATA t71 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t71.
      DATA t72 TYPE REF TO object.
      CLEAR t72.
      DATA(t73) = VALUE i( ).
      DO.
        t68->load( ).
        IF t73 >= lines( t68->items ).
          EXIT.
        ENDIF.
        CLEAR t72.
        READ TABLE t68->items INDEX t73 + 1 INTO t72.
        t73 = t73 + 1.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        CLEAR t71.
        IF t72 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t74 ?= t72.
          DATA t75 TYPE REF TO object.
          t75 = t74->as_ref( ).
          t71 ?= t75.
        ELSE.
          t71 ?= t72.
        ENDIF.
        DATA t77 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t77.
        DATA t78 TYPE REF TO zcl_lnt_statement_node.
        DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d457_9791cc858be9.
        t78 = t71->find_direct_statement( i_type_9913 = t81 ).
        DATA t82 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t82.
        IF xsdbool( t78 IS INITIAL ) = abap_true.
          CLEAR t82.
        ELSE.
          DATA t87 TYPE REF TO zcl_lnt_statement_node.
          t87 = t78.
          DATA(t89) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
          t82 = t87->find_direct_expression( i_type_9913 = t89 ).
        ENDIF.
        t77 = t82.
        t27->load( ).
        APPEND t77 TO t27->items.
        t27->save( ).
      ENDDO.
      t27->load( ).
      IF xsdbool( lines( t27->items ) = 1 ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t95 TYPE abap_bool.
      t95 = me->analyze( i_conds = t27 ).
      IF xsdbool( t95 = abap_true ) = abap_true.
        DATA t103 TYPE REF TO zcl_lnt_issue.
        CLEAR t103.
        DATA t105 TYPE REF TO zcl_lnt_statement_node.
        t105 = t29.
        DATA(t108) = VALUE string( ).
        DATA t109 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t109.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t116.
        DATA(t119) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t119 = t119 && |nABAP.md#prefer-case-to-else-if-for-multiple-alternative-con|.
        t119 = t119 && |ditions\n\nIf the first comparison is a boolean compare, no is|.
        t119 = t119 && |sue is reported.|.
        DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t120->has = abap_true.
        t120->value = t119.
        t116 = t120.
        DATA t122 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t122.
        DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t126.
        t126->load( ).
        APPEND |SingleFile| TO t126->items.
        t126->save( ).
        t126->load( ).
        APPEND |Styleguide| TO t126->items.
        t126->save( ).
        t122 = t126.
        DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t134.
        DATA(t137) = |IF l_fcat-fieldname EQ 'FOO'.\nELSEIF l_fcat-fieldname = 'BAR|.
        t137 = t137 && |'\n    OR l_fcat-fieldname = 'MOO'.\nENDIF.|.
        DATA(t138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t138->has = abap_true.
        t138->value = t137.
        t134 = t138.
        DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t140.
        DATA(t143) = |CASE l_fcat-fieldname.\n  WHEN 'FOO'.\n  WHEN 'BAR' OR 'MOO'.\n|.
        t143 = t143 && |ENDCASE.|.
        DATA(t144) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t144->has = abap_true.
        t144->value = t143.
        t140 = t144.
        DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t146.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t148.
        t109 = NEW zcl_lnt_irule_metadata( i_key = |change_if_to_case| i_title = |Change IF to CASE| i_short_description = |Finds IF constructs that can be changed to CASE| i_bad_example = t134 i_good_example = t140 i_extended_information = t116 i_tags = t122 i_pragma = t146 i_pseudo_comment = t148 ).
        CREATE OBJECT t109->zlnt_view_ownkeys_b0e8086400eb.
        t109->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t150.
        t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t150 ).
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t151 ).
        ENDIF.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t152 ).
        ENDIF.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t153 ).
        ENDIF.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t154 ).
        ENDIF.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t155 ).
        ENDIF.
        DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t156.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t156 ).
        ENDIF.
        CREATE OBJECT t109->zlnt_json_ownkeys_70e5fd461788.
        t109->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t158 ).
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t160 ).
        ENDIF.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t162 ).
        ENDIF.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t164 ).
        ENDIF.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t166.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t166 ).
        ENDIF.
        DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t168.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t168 ).
        ENDIF.
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t170.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t170 ).
        ENDIF.
        t108 = t109->key.
        DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t171 = CAST zcl_lnt_change_if_to_case_conf( me->g_c_i_s_r_c_i_t_c_t_ch_if_t_cs( ) )->zlnt_view_read_sr_15c06369f827( ).
        DATA t173 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t173.
        DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t174.
        t103 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t105 i_message_26cb = |Change IF to CASE| i_key = t108 i_severity = t171 i_fix = t173 i_alternative_fixes = t174 ).
        t2->load( ).
        APPEND t103 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD analyze.
    DATA(t1) = i_conds.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = VALUE i( ).
    DO.
      t1->load( ).
      IF t6 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t5.
      READ TABLE t1->items INDEX t6 + 1 INTO t5.
      t6 = t6 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      IF xsdbool( t5 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      t16 = t5.
      DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d135_0d084eddc054.
      t15 = t16->find_first_expression( i_type_9913 = t18 ).
      IF xsdbool( t15 IS BOUND ) = abap_true.
        result = abap_false.
        RETURN.
      ELSE.
        DATA t20 TYPE abap_bool.
        DATA t21 TYPE abap_bool.
        DATA t22 TYPE REF TO zcl_lnt_abstract_token.
        t22 = t5->find_direct_token_by_text( i_text = |AND| ).
        t21 = xsdbool( t22 IS BOUND ).
        t20 = t21.
        IF t21 = abap_false.
          DATA t27 TYPE REF TO zcl_lnt_abstract_token.
          t27 = t5->find_direct_token_by_text( i_text = |EQUIV| ).
          t20 = xsdbool( t27 IS BOUND ).
        ENDIF.
        IF t20 = abap_true.
          result = abap_false.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t33 TYPE REF TO zcl_lnt_expression_node.
      t33 = t5.
      DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d125_e2c9d8de971e.
      t32 = t33->find_all_expressions( i_type_9913 = t35 ).
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t36.
      DATA t37 TYPE REF TO object.
      CLEAR t37.
      DATA(t38) = VALUE i( ).
      DO.
        t32->load( ).
        IF t38 >= lines( t32->items ).
          EXIT.
        ENDIF.
        CLEAR t37.
        READ TABLE t32->items INDEX t38 + 1 INTO t37.
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
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        DATA t45 TYPE REF TO zcl_lnt_expression_node.
        DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d123_b66c920b623e.
        t45 = t36->find_direct_expression( i_type_9913 = t48 ).
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        IF xsdbool( t45 IS INITIAL ) = abap_true.
          CLEAR t49.
        ELSE.
          DATA t53 TYPE string.
          t53 = t45->concat_tokens( ).
          DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t56->has = abap_true.
          t56->value = t53.
          t49 = t56.
        ENDIF.
        t43 = t49.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t57.
        DATA(t58) = VALUE abap_bool( ).
        IF t43 IS INITIAL.
          t58 = abap_true.
        ELSEIF t43->has = abap_false.
          t58 = abap_true.
        ENDIF.
        IF t58 = abap_true.
          CLEAR t57.
        ELSE.
          DATA t61 TYPE string.
          DATA t62 TYPE string.
          t62 = t43->value.
          DATA(t64) = strlen( t62 ).
          t61 = t62.
          IF t61 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t61 TO UPPER CASE.
          ELSE.
            t61 = zlnt_runtime_uppe_91169605024d=>full( t61 ).
          ENDIF.
          DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t65->has = abap_true.
          t65->value = t61.
          t57 = t65.
        ENDIF.
        t41 = t57.
        DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t70 TYPE REF TO zcl_lnt_abstract_node.
        t70 = t36.
        t69 = t70->children.
        t68 ?= t69.
        t68->load( ).
        IF xsdbool( lines( t68->items ) <> 3 ) = abap_true.
          result = abap_false.
          RETURN.
        ELSE.
          DATA(t76) = VALUE abap_bool( ).
          DATA(t77) = VALUE abap_bool( ).
          DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t79.
          DATA(t82) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t82->has = abap_true.
          t82->value = |=|.
          t79 = t82.
          DATA(t84) = VALUE abap_bool( ).
          DATA(t85) = VALUE abap_bool( ).
          IF t41 IS BOUND.
            t84 = t41->has.
          ENDIF.
          IF t79 IS BOUND.
            t85 = t79->has.
          ENDIF.
          IF t84 = t85.
            IF t84 = abap_false.
              t77 = abap_true.
            ELSEIF t41->value = t79->value.
              t77 = abap_true.
            ENDIF.
          ENDIF.
          IF t77 = abap_true.
            t77 = abap_false.
          ELSE.
            t77 = abap_true.
          ENDIF.
          t76 = t77.
          IF t77 = abap_true.
            DATA(t86) = VALUE abap_bool( ).
            DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t88.
            DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t91->has = abap_true.
            t91->value = |EQ|.
            t88 = t91.
            DATA(t93) = VALUE abap_bool( ).
            DATA(t94) = VALUE abap_bool( ).
            IF t41 IS BOUND.
              t93 = t41->has.
            ENDIF.
            IF t88 IS BOUND.
              t94 = t88->has.
            ENDIF.
            IF t93 = t94.
              IF t93 = abap_false.
                t86 = abap_true.
              ELSEIF t41->value = t88->value.
                t86 = abap_true.
              ENDIF.
            ENDIF.
            IF t86 = abap_true.
              t86 = abap_false.
            ELSE.
              t86 = abap_true.
            ENDIF.
            t76 = t86.
          ENDIF.
          IF t76 = abap_true.
            result = abap_false.
            RETURN.
          ENDIF.
        ENDIF.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        DATA t100 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t100.
        DATA t101 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t101.
        DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t104 TYPE REF TO zcl_lnt_abstract_node.
        t104 = t36.
        t103 = t104->children.
        t102 ?= t103.
        DATA t109 TYPE REF TO object.
        t109 = t102->get( p0 = 0 ).
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        CLEAR t101.
        IF t109 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t110 ?= t109.
          DATA t111 TYPE REF TO object.
          t111 = t110->as_ref( ).
          t101 ?= t111.
        ELSE.
          t101 ?= t109.
        ENDIF.
        t100 = t101.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        IF xsdbool( t100 IS INITIAL ) = abap_true.
          CLEAR t112.
        ELSE.
          DATA t116 TYPE string.
          t116 = t100->concat_tokens( ).
          DATA(t119) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t119->has = abap_true.
          t119->value = t116.
          t112 = t119.
        ENDIF.
        t98 = t112.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t120.
        DATA(t121) = VALUE abap_bool( ).
        IF t98 IS INITIAL.
          t121 = abap_true.
        ELSEIF t98->has = abap_false.
          t121 = abap_true.
        ENDIF.
        IF t121 = abap_true.
          CLEAR t120.
        ELSE.
          DATA t124 TYPE string.
          DATA t125 TYPE string.
          t125 = t98->value.
          DATA(t127) = strlen( t125 ).
          t124 = t125.
          IF t124 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t124 TO UPPER CASE.
          ELSE.
            t124 = zlnt_runtime_uppe_91169605024d=>full( t124 ).
          ENDIF.
          DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t128->has = abap_true.
          t128->value = t124.
          t120 = t128.
        ENDIF.
        DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t131.
        DATA t133 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t133.
        DATA t134 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t134.
        DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t137 TYPE REF TO zcl_lnt_abstract_node.
        t137 = t36.
        t136 = t137->children.
        t135 ?= t136.
        DATA t142 TYPE REF TO object.
        t142 = t135->get( p0 = 2 ).
        DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t143.
        CLEAR t134.
        IF t142 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t143 ?= t142.
          DATA t144 TYPE REF TO object.
          t144 = t143->as_ref( ).
          t134 ?= t144.
        ELSE.
          t134 ?= t142.
        ENDIF.
        t133 = t134.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t145.
        IF xsdbool( t133 IS INITIAL ) = abap_true.
          CLEAR t145.
        ELSE.
          DATA t149 TYPE string.
          t149 = t133->concat_tokens( ).
          DATA(t152) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t152->has = abap_true.
          t152->value = t149.
          t145 = t152.
        ENDIF.
        t131 = t145.
        DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t153.
        DATA(t154) = VALUE abap_bool( ).
        IF t131 IS INITIAL.
          t154 = abap_true.
        ELSEIF t131->has = abap_false.
          t154 = abap_true.
        ENDIF.
        IF t154 = abap_true.
          CLEAR t153.
        ELSE.
          DATA t157 TYPE string.
          DATA t158 TYPE string.
          t158 = t131->value.
          DATA(t160) = strlen( t158 ).
          t157 = t158.
          IF t157 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t157 TO UPPER CASE.
          ELSE.
            t157 = zlnt_runtime_uppe_91169605024d=>full( t157 ).
          ENDIF.
          DATA(t161) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t161->has = abap_true.
          t161->value = t157.
          t153 = t161.
        ENDIF.
        DATA t163 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
        DATA t164 TYPE string.
        t164 = t120->value.
        DATA t168 TYPE string.
        t168 = t153->value.
        t163 = NEW zcl_lnt_shape_c1ce1ff3( i_left = t164 i_right = t168 ).
        CREATE OBJECT t163->zlnt_view_ownkeys_b0e8086400eb.
        t163->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t170.
        t163->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t170 ).
        DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t171.
        IF t163->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t163->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `right` p1 = t171 ).
        ENDIF.
        CREATE OBJECT t163->zlnt_json_ownkeys_70e5fd461788.
        t163->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t173.
        t163->zlnt_json_ownkeys_70e5fd461788->put( p0 = |left| p1 = t173 ).
        DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t175.
        IF t163->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t163->zlnt_json_ownkeys_70e5fd461788->put( p0 = |right| p1 = t175 ).
        ENDIF.
        t2->load( ).
        APPEND t163 TO t2->items.
        t2->save( ).
      ENDDO.
    ENDDO.
    t2->load( ).
    IF xsdbool( lines( t2->items ) = 1 ) = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t181 TYPE string.
    t181 = ||.
    DATA(t184) = VALUE string( ).
    DATA t185 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
    DATA t187 TYPE REF TO object.
    t2->load( ).
    READ TABLE t2->items INDEX 1 INTO t187.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t187 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t188 ?= t187.
      DATA t189 TYPE REF TO object.
      t189 = t188->as_ref( ).
      t185 ?= t189.
    ELSE.
      t185 ?= t187.
    ENDIF.
    t184 = t185->left.
    DATA t191 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
    DATA t193 TYPE REF TO object.
    t2->load( ).
    READ TABLE t2->items INDEX 2 INTO t193.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t193 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t194 ?= t193.
      DATA t195 TYPE REF TO object.
      t195 = t194->as_ref( ).
      t191 ?= t195.
    ELSE.
      t191 ?= t193.
    ENDIF.
    IF xsdbool( t184 = t191->left ) = abap_true.
      DATA t197 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
      DATA t199 TYPE REF TO object.
      t2->load( ).
      READ TABLE t2->items INDEX 1 INTO t199.
      DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t199 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t200 ?= t199.
        DATA t201 TYPE REF TO object.
        t201 = t200->as_ref( ).
        t197 ?= t201.
      ELSE.
        t197 ?= t199.
      ENDIF.
      t181 = t197->left.
    ELSE.
      DATA(t203) = VALUE string( ).
      DATA t204 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
      DATA t206 TYPE REF TO object.
      t2->load( ).
      READ TABLE t2->items INDEX 1 INTO t206.
      DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t206 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t207 ?= t206.
        DATA t208 TYPE REF TO object.
        t208 = t207->as_ref( ).
        t204 ?= t208.
      ELSE.
        t204 ?= t206.
      ENDIF.
      t203 = t204->left.
      DATA t210 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
      DATA t212 TYPE REF TO object.
      t2->load( ).
      READ TABLE t2->items INDEX 2 INTO t212.
      DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t212 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t213 ?= t212.
        DATA t214 TYPE REF TO object.
        t214 = t213->as_ref( ).
        t210 ?= t214.
      ELSE.
        t210 ?= t212.
      ENDIF.
      IF xsdbool( t203 = t210->right ) = abap_true.
        DATA t216 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
        DATA t218 TYPE REF TO object.
        t2->load( ).
        READ TABLE t2->items INDEX 1 INTO t218.
        DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t218 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t219 ?= t218.
          DATA t220 TYPE REF TO object.
          t220 = t219->as_ref( ).
          t216 ?= t220.
        ELSE.
          t216 ?= t218.
        ENDIF.
        t181 = t216->left.
      ELSE.
        DATA(t222) = VALUE string( ).
        DATA t223 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
        DATA t225 TYPE REF TO object.
        t2->load( ).
        READ TABLE t2->items INDEX 1 INTO t225.
        DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t225 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t226 ?= t225.
          DATA t227 TYPE REF TO object.
          t227 = t226->as_ref( ).
          t223 ?= t227.
        ELSE.
          t223 ?= t225.
        ENDIF.
        t222 = t223->right.
        DATA t229 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
        DATA t231 TYPE REF TO object.
        t2->load( ).
        READ TABLE t2->items INDEX 2 INTO t231.
        DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t231 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t232 ?= t231.
          DATA t233 TYPE REF TO object.
          t233 = t232->as_ref( ).
          t229 ?= t233.
        ELSE.
          t229 ?= t231.
        ENDIF.
        IF xsdbool( t222 = t229->right ) = abap_true.
          DATA t235 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
          DATA t237 TYPE REF TO object.
          t2->load( ).
          READ TABLE t2->items INDEX 1 INTO t237.
          DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t237 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t238 ?= t237.
            DATA t239 TYPE REF TO object.
            t239 = t238->as_ref( ).
            t235 ?= t239.
          ELSE.
            t235 ?= t237.
          ENDIF.
          t181 = t235->right.
        ELSE.
          DATA(t241) = VALUE string( ).
          DATA t242 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
          DATA t244 TYPE REF TO object.
          t2->load( ).
          READ TABLE t2->items INDEX 1 INTO t244.
          DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t244 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t245 ?= t244.
            DATA t246 TYPE REF TO object.
            t246 = t245->as_ref( ).
            t242 ?= t246.
          ELSE.
            t242 ?= t244.
          ENDIF.
          t241 = t242->right.
          DATA t248 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
          DATA t250 TYPE REF TO object.
          t2->load( ).
          READ TABLE t2->items INDEX 2 INTO t250.
          DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t250 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t251 ?= t250.
            DATA t252 TYPE REF TO object.
            t252 = t251->as_ref( ).
            t248 ?= t252.
          ELSE.
            t248 ?= t250.
          ENDIF.
          IF xsdbool( t241 = t248->left ) = abap_true.
            DATA t254 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
            DATA t256 TYPE REF TO object.
            t2->load( ).
            READ TABLE t2->items INDEX 1 INTO t256.
            DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t256 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t257 ?= t256.
              DATA t258 TYPE REF TO object.
              t258 = t257->as_ref( ).
              t254 ?= t258.
            ELSE.
              t254 ?= t256.
            ENDIF.
            t181 = t254->right.
          ELSE.
            result = abap_false.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t260 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t261 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t261 = CAST zcl_lnt_change_if_to_case_conf( me->g_c_i_s_r_c_i_t_c_t_ch_if_t_cs( ) )->zlnt_view_read_sr_f278c155bea6( ).
    DATA t264 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    IF xsdbool( t261 IS BOUND ) = abap_true.
      t264 = t261.
    ELSE.
      CREATE OBJECT t264.
    ENDIF.
    t260 = t264.
    DATA(t270) = VALUE string( ).
    t260->dense( ).
    DATA(t271) = VALUE i( ).
    DO.
      t260->load( ).
      IF t271 >= lines( t260->items ).
        EXIT.
      ENDIF.
      CLEAR t270.
      READ TABLE t260->items INDEX t271 + 1 INTO t270.
      IF t260->has( t271 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t271 = t271 + 1.
      DATA t273 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t273.
      CREATE OBJECT t273 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t270 flags = |i|.
      IF t273->match_test( p0 = t181 ) = abap_true.
        result = abap_false.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t284 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
    DATA t285 TYPE REF TO object.
    DATA(t286) = VALUE i( ).
    DO.
      t2->load( ).
      IF t286 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t285.
      READ TABLE t2->items INDEX t286 + 1 INTO t285.
      t286 = t286 + 1.
      DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t287.
      CLEAR t284.
      IF t285 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t287 ?= t285.
        DATA t288 TYPE REF TO object.
        t288 = t287->as_ref( ).
        t284 ?= t288.
      ELSE.
        t284 ?= t285.
      ENDIF.
      DATA t289 TYPE abap_bool.
      DATA t290 TYPE abap_bool.
      t290 = xsdbool( t284->left <> t181 ).
      t289 = t290.
      IF t290 = abap_true.
        t289 = xsdbool( t284->right <> t181 ).
      ENDIF.
      IF t289 = abap_true.
        result = abap_false.
        RETURN.
      ENDIF.
    ENDDO.
    result = abap_true.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_change_if_to_case_conf( me->g_c_i_s_r_c_i_t_c_t_ch_if_t_cs( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_change_if_to_case_conf( me->g_c_i_s_r_c_i_t_c_t_ch_if_t_cs( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_change_if_to_case_conf.
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
        t1 = NEW zcl_lnt_change_if_to_case_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_c_i_t_c_t_ch_if_t_cs( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_c_i_t_c_t_ch_if_t_cs( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1432_0af7a1c2c068.
  ENDMETHOD.
ENDCLASS.
