* TS: src/rules/if_in_if.ts:14:1 IfInIf
CLASS zcl_lnt_if_in_if DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_if_in_if_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_if_in_if_ts_if_in_if RETURNING VALUE(result) TYPE REF TO zcl_lnt_if_in_if_conf.
    METHODS s_c_i_s_r_if_in_if_ts_if_in_if IMPORTING i_conf TYPE REF TO zcl_lnt_if_in_if_conf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_if_in_if IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_if_in_if_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |if_in_if|.
    DATA t4 TYPE string.
    t4 = |IF in IF|.
    DATA t6 TYPE string.
    t6 = |Detects nested ifs which can be refactored.|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |\nDirectly nested IFs without ELSE can be refactored to a sin|.
    t11 = t11 && |gle condition using AND.\n\nELSE condtions with directly neste|.
    t11 = t11 && |d IF refactored to ELSEIF, quickfixes are suggested for this|.
    t11 = t11 && | case.\n\nhttps://docs.abapopenchecks.org/checks/01/\nhttps://g|.
    t11 = t11 && |ithub.com/SAP/styleguides/blob/main/clean-abap/CleanABAP.md#|.
    t11 = t11 && |keep-the-nesting-depth-low|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t17) = |IF condition1.\n  IF condition2.\n    ...\n  ENDIF.\nENDIF.\n\nIF |.
    t17 = t17 && |condition1.\n  ...\nELSE.\n  IF condition2.\n    ...\n  ENDIF.\nEN|.
    t17 = t17 && |DIF.|.
    DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t18->has = abap_true.
    t18->value = t17.
    t14 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t23) = |IF ( condition1 ) AND ( condition2 ).\n  ...\nENDIF.\n\nIF condi|.
    t23 = t23 && |tion1.\n  ...\nELSEIF condition2.\n  ...\nENDIF.\n\nCASE variable.|.
    t23 = t23 && |\n  WHEN value1.\n  ...\n  WHEN value2.\n    IF condition2.\n    |.
    t23 = t23 && |  ...\n    ENDIF.\nENDCASE.|.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = t23.
    t20 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t31.
    t30 = t31.
    DATA(t33) = |Styleguide|.
    t30->load( ).
    APPEND t33 TO t30->items.
    t30->save( ).
    DATA(t35) = |SingleFile|.
    t30->load( ).
    APPEND t35 TO t30->items.
    t30->save( ).
    DATA(t37) = |Quickfix|.
    t30->load( ).
    APPEND t37 TO t30->items.
    t30->save( ).
    t26 = t30.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t14 i_good_example = t20 i_extended_information = t8 i_tags = t26 i_pragma = t40 i_pseudo_comment = t42 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t51) = |key|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    DATA(t53) = |title|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |shortDescription|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |extendedInformation|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |badExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |goodExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |tags|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_if_in_if_ts_if_in_if.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_if_in_if_ts_if_in_if.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
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
    t6 = t2->get_type( ).
    DATA(t8) = |INTF|.
    t5 = xsdbool( t6 = t8 ).
    IF t5 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_structure_node.
    DATA t14 TYPE REF TO zcl_lnt_structure_node.
    t14 = t1->structure.
    t10 = t14.
    DATA(t16) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t16 = xsdbool( t10 IS INITIAL ).
    IF t16 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t23.
      result = t23.
      RETURN.
    ENDIF.
    DATA t24 TYPE abap_bool.
    t24 = abap_false.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t28 TYPE REF TO zcl_lnt_structure_node.
    t28 = t10.
    DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d738_747279fb02d5.
    t27 = t28->find_all_structures( i_type_9913 = t30 ).
    t26 = t27.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t34 TYPE REF TO zcl_lnt_structure_node.
    t34 = t10.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d734_f05b24426da6.
    t33 = t34->find_all_structures( i_type_9913 = t36 ).
    t31 = t26->concat( p0 = t33 ).
    t26 = t31.
    DATA t38 TYPE REF TO zcl_lnt_structure_node.
    DATA t39 TYPE REF TO object.
    DATA(t40) = VALUE i( ).
    DO.
      t26->load( ).
      IF t40 >= lines( t26->items ).
        EXIT.
      ENDIF.
      CLEAR t39.
      READ TABLE t26->items INDEX t40 + 1 INTO t39.
      t40 = t40 + 1.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      CLEAR t38.
      IF t39 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t41 ?= t39.
        DATA t42 TYPE REF TO object.
        t42 = t41->as_ref( ).
        t38 ?= t42.
      ELSE.
        t38 ?= t39.
      ENDIF.
      DATA t43 TYPE abap_bool.
      DATA t44 TYPE abap_bool.
      DATA t45 TYPE i.
      DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d735_6e36d2820627.
      t46 = t38->find_direct_structures( i_type_9913 = t48 ).
      t46->load( ).
      t45 = lines( t46->items ).
      DATA(t49) = 0.
      t44 = xsdbool( t45 > t49 ).
      t43 = t44.
      IF t44 = abap_false.
        DATA t50 TYPE abap_bool.
        DATA t51 TYPE i.
        DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t54) = zlnt_runtime_desc_78196487750d=>zlnt_member_d734_f05b24426da6.
        t52 = t38->find_direct_structures( i_type_9913 = t54 ).
        t52->load( ).
        t51 = lines( t52->items ).
        DATA(t55) = 0.
        t50 = xsdbool( t51 > t55 ).
        t43 = t50.
      ENDIF.
      IF t43 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t59) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
      t57 = t38->find_direct_structures( i_type_9913 = t59 ).
      t56 = t57.
      DATA t60 TYPE abap_bool.
      DATA t61 TYPE i.
      t56->load( ).
      t61 = lines( t56->items ).
      DATA(t63) = 0.
      t60 = xsdbool( t61 = t63 ).
      IF t60 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t64.
      DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t65.
      DATA t66 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t66.
      DATA t68 TYPE REF TO object.
      CLEAR t68.
      t56->load( ).
      CLEAR t68.
      READ TABLE t56->items INDEX 1 INTO t68.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      CLEAR t66.
      IF t68 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t69 ?= t68.
        DATA t70 TYPE REF TO object.
        t70 = t69->as_ref( ).
        t66 ?= t70.
      ELSE.
        t66 ?= t68.
      ENDIF.
      DATA(t71) = zlnt_runtime_desc_78196487750d=>zlnt_member_d696_1c7fc9b8a532.
      t65 = t66->find_direct_structures( i_type_9913 = t71 ).
      t64 = t65.
      DATA t72 TYPE abap_bool.
      DATA t73 TYPE i.
      t64->load( ).
      t73 = lines( t64->items ).
      DATA(t75) = 1.
      t72 = xsdbool( t73 <> t75 ).
      IF t72 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t76.
      DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t77.
      DATA t78 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t78.
      DATA t80 TYPE REF TO object.
      CLEAR t80.
      t64->load( ).
      CLEAR t80.
      READ TABLE t64->items INDEX 1 INTO t80.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      CLEAR t78.
      IF t80 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t81 ?= t80.
        DATA t82 TYPE REF TO object.
        t82 = t81->as_ref( ).
        t78 ?= t82.
      ELSE.
        t78 ?= t80.
      ENDIF.
      DATA(t83) = zlnt_runtime_desc_78196487750d=>zlnt_member_d738_747279fb02d5.
      t77 = t78->find_direct_structures( i_type_9913 = t83 ).
      t76 = t77.
      DATA t84 TYPE abap_bool.
      DATA t85 TYPE i.
      t76->load( ).
      t85 = lines( t76->items ).
      DATA(t87) = 1.
      t84 = xsdbool( t85 <> t87 ).
      IF t84 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t88 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t88.
      DATA t89 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t89.
      DATA t91 TYPE REF TO object.
      CLEAR t91.
      t76->load( ).
      CLEAR t91.
      READ TABLE t76->items INDEX 1 INTO t91.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      CLEAR t89.
      IF t91 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t92 ?= t91.
        DATA t93 TYPE REF TO object.
        t93 = t92->as_ref( ).
        t89 ?= t93.
      ELSE.
        t89 ?= t91.
      ENDIF.
      t88 = t89.
      DATA t94 TYPE abap_bool.
      DATA t95 TYPE abap_bool.
      DATA t96 TYPE REF TO zif_lnt_structure.
      t96 = t38->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
      t95 = xsdbool( t96 IS BOUND AND t96 IS INSTANCE OF zcl_lnt_sr_if ).
      t94 = t95.
      IF t95 = abap_true.
        DATA t98 TYPE abap_bool.
        DATA t99 TYPE abap_bool.
        DATA t100 TYPE i.
        DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t103) = zlnt_runtime_desc_78196487750d=>zlnt_member_d735_6e36d2820627.
        t101 = t88->find_direct_structures( i_type_9913 = t103 ).
        t101->load( ).
        t100 = lines( t101->items ).
        DATA(t104) = 0.
        t99 = xsdbool( t100 > t104 ).
        t98 = t99.
        IF t99 = abap_false.
          DATA t105 TYPE abap_bool.
          DATA t106 TYPE i.
          DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t109) = zlnt_runtime_desc_78196487750d=>zlnt_member_d734_f05b24426da6.
          t107 = t88->find_direct_structures( i_type_9913 = t109 ).
          t107->load( ).
          t106 = lines( t107->items ).
          DATA(t110) = 0.
          t105 = xsdbool( t106 > t110 ).
          t98 = t105.
        ENDIF.
        t94 = t98.
      ENDIF.
      IF t94 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t111 TYPE string.
      t111 = |IF in IF. Use IF cond1 AND cond2 instead|.
      DATA t113 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t113.
      DATA t115 TYPE abap_bool.
      DATA t116 TYPE REF TO zif_lnt_structure.
      t116 = t38->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
      t115 = xsdbool( t116 IS BOUND AND t116 IS INSTANCE OF zcl_lnt_sr_else ).
      IF t115 = abap_true.
        t111 = |Change ELSE part to ELSEIF|.
        DATA t119 TYPE REF TO zcl_lnt_statement_node.
        DATA t120 TYPE REF TO zcl_lnt_statement_node.
        DATA(t122) = zlnt_runtime_desc_78196487750d=>zlnt_member_d456_24ada5b62172.
        t120 = t38->find_first_statement( i_type_9913 = t122 ).
        t119 = t120.
        DATA t123 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t123.
        DATA t125 TYPE REF TO zcl_lnt_structure_node.
        DATA t126 TYPE REF TO zcl_lnt_structure_node.
        DATA(t128) = zlnt_runtime_desc_78196487750d=>zlnt_member_d738_747279fb02d5.
        t126 = t38->find_first_structure( i_type_9913 = t128 ).
        t125 = t126.
        DATA t129 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t129.
        DATA(t130) = xsdbool( t125 IS INITIAL ).
        IF t130 = abap_true.
          CLEAR t129.
        ELSE.
          DATA t133 TYPE REF TO zcl_lnt_statement_node.
          DATA t134 TYPE REF TO zcl_lnt_structure_node.
          t134 = t125.
          DATA(t136) = zlnt_runtime_desc_78196487750d=>zlnt_member_d525_ab3a9a5b3f8b.
          t133 = t134->find_direct_statement( i_type_9913 = t136 ).
          t129 = t133.
        ENDIF.
        t123 = t129.
        DATA t137 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t137.
        DATA t139 TYPE REF TO zcl_lnt_structure_node.
        DATA t140 TYPE REF TO zcl_lnt_structure_node.
        DATA(t142) = zlnt_runtime_desc_78196487750d=>zlnt_member_d738_747279fb02d5.
        t140 = t38->find_first_structure( i_type_9913 = t142 ).
        t139 = t140.
        DATA t143 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t143.
        DATA(t144) = xsdbool( t139 IS INITIAL ).
        IF t144 = abap_true.
          CLEAR t143.
        ELSE.
          DATA t147 TYPE REF TO zcl_lnt_statement_node.
          DATA t148 TYPE REF TO zcl_lnt_structure_node.
          t148 = t139.
          DATA(t150) = zlnt_runtime_desc_78196487750d=>zlnt_member_d474_51fcc2a31b27.
          t147 = t148->find_direct_statement( i_type_9913 = t150 ).
          t143 = t147.
        ENDIF.
        t137 = t143.
        DATA(t151) = VALUE abap_bool( ).
        DATA(t152) = VALUE abap_bool( ).
        DATA t153 TYPE abap_bool.
        DATA t154 TYPE abap_bool.
        t154 = xsdbool( t24 = abap_false ).
        t153 = t154.
        IF t154 = abap_true.
          DATA t157 TYPE abap_bool.
          t157 = xsdbool( t123 IS BOUND ).
          t153 = t157.
        ENDIF.
        t152 = t153.
        IF t153 = abap_true.
          DATA t159 TYPE abap_bool.
          t159 = xsdbool( t119 IS BOUND ).
          t152 = t159.
        ENDIF.
        t151 = t152.
        IF t152 = abap_true.
          DATA t161 TYPE abap_bool.
          t161 = xsdbool( t137 IS BOUND ).
          t151 = t161.
        ENDIF.
        IF t151 = abap_true.
          DATA t164 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t164.
          DATA t166 TYPE REF TO zcl_lnt_position.
          DATA t168 TYPE REF TO zcl_lnt_abstract_token.
          DATA t169 TYPE REF TO zcl_lnt_statement_node.
          t169 = t119.
          t168 = t169->get_last_token( ).
          DATA t171 TYPE REF TO zcl_lnt_position.
          t171 = t168->start.
          t166 = t171.
          DATA t173 TYPE REF TO zcl_lnt_position.
          CLEAR t173.
          DATA t175 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t175.
          DATA t177 TYPE REF TO zcl_lnt_statement_node.
          t177 = t123.
          DATA t180 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t180.
          DATA(t181) = xsdbool( t177 IS INITIAL ).
          IF t181 = abap_true.
            CLEAR t180.
          ELSE.
            DATA t184 TYPE REF TO zcl_lnt_abstract_token.
            t184 = t177->get_first_token( ).
            t180 = t184.
          ENDIF.
          t175 = t180.
          DATA t186 TYPE REF TO zcl_lnt_position.
          CLEAR t186.
          DATA(t187) = xsdbool( t175 IS INITIAL ).
          IF t187 = abap_true.
            CLEAR t186.
          ELSE.
            DATA t194 TYPE REF TO zcl_lnt_position.
            t194 = t175->start.
            t186 = t194.
          ENDIF.
          t173 = t186.
          t164 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t166 i_end = t173 ).
          DATA t197 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t199 TYPE REF TO zcl_lnt_statement_node.
          t199 = t137.
          t197 = zcl_lnt_edit_helper=>delete_statement( i_file = t1 i_statement = t199 ).
          DATA t203 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t203 = zcl_lnt_edit_helper=>merge( i_fix1 = t164 i_fix2 = t197 ).
          t113 = t203.
          t24 = abap_true.
        ENDIF.
      ENDIF.
      DATA t209 TYPE REF TO zcl_lnt_abstract_token.
      t209 = t38->get_first_token( ).
      DATA t212 TYPE REF TO zcl_lnt_issue.
      CLEAR t212.
      DATA(t216) = VALUE string( ).
      DATA t217 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t217.
      DATA t218 TYPE string.
      t218 = |if_in_if|.
      DATA t220 TYPE string.
      t220 = |IF in IF|.
      DATA t222 TYPE string.
      t222 = |Detects nested ifs which can be refactored.|.
      DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t224.
      DATA(t227) = |\nDirectly nested IFs without ELSE can be refactored to a sin|.
      t227 = t227 && |gle condition using AND.\n\nELSE condtions with directly neste|.
      t227 = t227 && |d IF refactored to ELSEIF, quickfixes are suggested for this|.
      t227 = t227 && | case.\n\nhttps://docs.abapopenchecks.org/checks/01/\nhttps://g|.
      t227 = t227 && |ithub.com/SAP/styleguides/blob/main/clean-abap/CleanABAP.md#|.
      t227 = t227 && |keep-the-nesting-depth-low|.
      DATA(t228) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t228->has = abap_true.
      t228->value = t227.
      t224 = t228.
      DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t230.
      DATA(t233) = |IF condition1.\n  IF condition2.\n    ...\n  ENDIF.\nENDIF.\n\nIF |.
      t233 = t233 && |condition1.\n  ...\nELSE.\n  IF condition2.\n    ...\n  ENDIF.\nEN|.
      t233 = t233 && |DIF.|.
      DATA(t234) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t234->has = abap_true.
      t234->value = t233.
      t230 = t234.
      DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t236.
      DATA(t239) = |IF ( condition1 ) AND ( condition2 ).\n  ...\nENDIF.\n\nIF condi|.
      t239 = t239 && |tion1.\n  ...\nELSEIF condition2.\n  ...\nENDIF.\n\nCASE variable.|.
      t239 = t239 && |\n  WHEN value1.\n  ...\n  WHEN value2.\n    IF condition2.\n    |.
      t239 = t239 && |  ...\n    ENDIF.\nENDCASE.|.
      DATA(t240) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t240->has = abap_true.
      t240->value = t239.
      t236 = t240.
      DATA t242 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t242.
      DATA t246 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t247 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t247.
      t246 = t247.
      DATA(t249) = |Styleguide|.
      t246->load( ).
      APPEND t249 TO t246->items.
      t246->save( ).
      DATA(t251) = |SingleFile|.
      t246->load( ).
      APPEND t251 TO t246->items.
      t246->save( ).
      DATA(t253) = |Quickfix|.
      t246->load( ).
      APPEND t253 TO t246->items.
      t246->save( ).
      t242 = t246.
      DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t256.
      DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t258.
      t217 = NEW zcl_lnt_irule_metadata( i_key = t218 i_title = t220 i_short_description = t222 i_bad_example = t230 i_good_example = t236 i_extended_information = t224 i_tags = t242 i_pragma = t256 i_pseudo_comment = t258 ).
      CREATE OBJECT t217->zlnt_view_ownkeys_b0e8086400eb.
      t217->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t260.
      t217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t260 ).
      DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t261.
      IF t217->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t261 ).
      ENDIF.
      DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t262.
      IF t217->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t262 ).
      ENDIF.
      DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t263.
      IF t217->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t263 ).
      ENDIF.
      DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t264.
      IF t217->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t264 ).
      ENDIF.
      DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t265.
      IF t217->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t265 ).
      ENDIF.
      DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t266.
      IF t217->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t266 ).
      ENDIF.
      CREATE OBJECT t217->zlnt_json_ownkeys_70e5fd461788.
      t217->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t267) = |key|.
      DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t268.
      t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = t267 p1 = t268 ).
      DATA(t269) = |title|.
      DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t270.
      IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = t269 p1 = t270 ).
      ENDIF.
      DATA(t271) = |shortDescription|.
      DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t272.
      IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = t271 p1 = t272 ).
      ENDIF.
      DATA(t273) = |extendedInformation|.
      DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t274.
      IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = t273 p1 = t274 ).
      ENDIF.
      DATA(t275) = |badExample|.
      DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t276.
      IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = t275 p1 = t276 ).
      ENDIF.
      DATA(t277) = |goodExample|.
      DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t278.
      IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = t277 p1 = t278 ).
      ENDIF.
      DATA(t279) = |tags|.
      DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t280.
      IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = t279 p1 = t280 ).
      ENDIF.
      t216 = t217->key.
      DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t281 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      t212 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t209 i_message_26cb = t111 i_key = t216 i_severity = t281 i_fix = t113 ).
      t3->load( ).
      APPEND t212 TO t3->items.
      t3->save( ).
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_if_in_if_conf( me->g_c_i_s_r_if_in_if_ts_if_in_if( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_if_in_if_conf( me->g_c_i_s_r_if_in_if_ts_if_in_if( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_if_in_if_conf.
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
        t1 = NEW zcl_lnt_if_in_if_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_if_in_if_ts_if_in_if( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1535_3ea8c1c21557.
  ENDMETHOD.
ENDCLASS.
