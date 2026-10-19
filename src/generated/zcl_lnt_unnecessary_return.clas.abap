* TS: src/rules/unnecessary_return.ts:15:1 UnnecessaryReturn
CLASS zcl_lnt_unnecessary_return DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_unncssry_rtrn_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_un_rt_ts_un_rtr RETURNING VALUE(result) TYPE REF TO zcl_lnt_unncssry_rtrn_cnf.
    METHODS st_cn_in_sr_rl_un_rt_ts_un_rtr IMPORTING i_conf TYPE REF TO zcl_lnt_unncssry_rtrn_cnf.
    METHODS rn_pr_in_sr_rl_un_rt_ts_un_rtr IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unnecessary_return IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_unncssry_rtrn_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |unnecessary_return|.
    DATA t4 TYPE string.
    t4 = |Unnecessary Return|.
    DATA t6 TYPE string.
    t6 = |Finds unnecessary RETURN statements|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Finds unnecessary RETURN statements|.
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
    DATA(t23) = |Quickfix|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t29) = |FORM hello1.\n  WRITE 'world'.\n  RETURN.\nENDFORM.\n\nFORM foo.\n|.
    t29 = t29 && |  IF 1 = 2.\n    RETURN.\n  ENDIF.\nENDFORM.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t35) = |FORM hello2.\n  WRITE 'world'.\nENDFORM.|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    t32 = t36.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t32 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
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
    DATA(t49) = |key|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    DATA(t51) = |title|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |shortDescription|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |extendedInformation|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |tags|.
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
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_un_rt_ts_un_rtr.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_un_rt_ts_un_rtr.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_un_rt_ts_un_rtr.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    t8 = t1->structure.
    DATA(t10) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10 = xsdbool( t8 IS INITIAL ).
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE string.
    t18 = |Unnecessary RETURN|.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t24 = t1->statements.
    t20 = t24.
    DATA t26 TYPE f.
    DATA(t27) = CONV f( 0 ).
    t26 = t27.
    DATA t28 TYPE i.
    t28 = 0.
    DO.
      DATA t30 TYPE abap_bool.
      DATA t32 TYPE i.
      t20->load( ).
      t32 = lines( t20->items ).
      t30 = xsdbool( t28 < t32 ).
      IF t30 = abap_false.
        EXIT.
      ENDIF.
      DATA t35 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t35.
      DATA(t37) = t28.
      t37 = t37 + 1.
      DATA t38 TYPE REF TO object.
      CLEAR t38.
      t20->load( ).
      CLEAR t38.
      READ TABLE t20->items INDEX t37 INTO t38.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      CLEAR t35.
      IF t38 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t39 ?= t38.
        DATA t40 TYPE REF TO object.
        t40 = t39->as_ref( ).
        t35 ?= t40.
      ELSE.
        t35 ?= t38.
      ENDIF.
      DATA t41 TYPE REF TO zif_lnt_statement.
      DATA t42 TYPE REF TO zif_lnt_statement.
      t42 = t35->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t41 = t42.
      DATA(t44) = VALUE abap_bool( ).
      DATA t45 TYPE abap_bool.
      DATA t46 TYPE abap_bool.
      t46 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ).
      t45 = t46.
      IF t46 = abap_false.
        DATA t48 TYPE abap_bool.
        t48 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_st_form ).
        t45 = t48.
      ENDIF.
      t44 = t45.
      IF t45 = abap_false.
        DATA t50 TYPE abap_bool.
        t50 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_st_function_module ).
        t44 = t50.
      ENDIF.
      IF t44 = abap_true.
        DATA(t52) = CONV f( 0 ).
        t26 = t52.
        DATA t53 TYPE i.
        DATA(t55) = 1.
        t53 = t28 + t55.
        t28 = t53.
        CONTINUE.
      ENDIF.
      DATA t56 TYPE abap_bool.
      DATA t57 TYPE abap_bool.
      t57 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_st_comment ).
      t56 = xsdbool( t57 = abap_false ).
      IF t56 = abap_true.
        DATA t59 TYPE f.
        DATA(t61) = CONV f( 1 ).
        t59 = t26 + t61.
        t26 = t59.
      ENDIF.
      DATA(t62) = VALUE abap_bool( ).
      DATA(t63) = VALUE abap_bool( ).
      DATA t64 TYPE abap_bool.
      DATA t65 TYPE abap_bool.
      t65 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_end_method ).
      t64 = t65.
      IF t65 = abap_false.
        DATA t67 TYPE abap_bool.
        t67 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_end_form ).
        t64 = t67.
      ENDIF.
      t63 = t64.
      IF t64 = abap_false.
        DATA t69 TYPE abap_bool.
        t69 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_end_function ).
        t63 = t69.
      ENDIF.
      t62 = xsdbool( t63 = abap_false ).
      IF t62 = abap_true.
        DATA t71 TYPE i.
        DATA(t73) = 1.
        t71 = t28 + t73.
        t28 = t71.
        CONTINUE.
      ENDIF.
      DATA t74 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t74.
      DATA t75 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t75.
      DATA t77 TYPE i.
      DATA(t79) = 1.
      t77 = t28 - t79.
      t77 = t77 + 1.
      DATA t80 TYPE REF TO object.
      CLEAR t80.
      t20->load( ).
      CLEAR t80.
      READ TABLE t20->items INDEX t77 INTO t80.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      CLEAR t75.
      IF t80 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t81 ?= t80.
        DATA t82 TYPE REF TO object.
        t82 = t81->as_ref( ).
        t75 ?= t82.
      ELSE.
        t75 ?= t80.
      ENDIF.
      t74 = t75.
      DATA(t83) = VALUE abap_bool( ).
      DATA t84 TYPE abap_bool.
      DATA t85 TYPE abap_bool.
      t85 = xsdbool( t74 IS BOUND ).
      t84 = t85.
      IF t85 = abap_true.
        DATA t87 TYPE abap_bool.
        DATA t88 TYPE REF TO zif_lnt_statement.
        t88 = t74->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t87 = xsdbool( t88 IS BOUND AND t88 IS INSTANCE OF zcl_lnt_st_return ).
        t84 = t87.
      ENDIF.
      t83 = t84.
      IF t84 = abap_true.
        DATA t90 TYPE abap_bool.
        DATA t91 TYPE i.
        DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t94 TYPE REF TO zcl_lnt_abstract_node.
        t94 = t74.
        DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t96 = t94->children.
        t93 = t96.
        t92 ?= t93.
        t92->load( ).
        t91 = lines( t92->items ).
        DATA(t98) = 2.
        t90 = xsdbool( t91 = t98 ).
        t83 = t90.
      ENDIF.
      IF t83 = abap_true.
        DATA t99 TYPE abap_bool.
        DATA t100 TYPE abap_bool.
        DATA t101 TYPE abap_bool.
        t101 = me->conf->zlnt_view_read_sr_b8269287eadd( ).
        t100 = xsdbool( t101 = abap_true ).
        t99 = t100.
        IF t100 = abap_true.
          DATA t104 TYPE abap_bool.
          DATA(t106) = CONV f( 2 ).
          t104 = xsdbool( t26 = t106 ).
          t99 = t104.
        ENDIF.
        IF t99 = abap_true.
          DATA t107 TYPE i.
          DATA(t109) = 1.
          t107 = t28 + t109.
          t28 = t107.
          CONTINUE.
        ENDIF.
        DATA t111 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t111 = zcl_lnt_edit_helper=>delete_statement( i_file = t1 i_statement = t74 ).
        DATA t115 TYPE REF TO zcl_lnt_issue.
        CLEAR t115.
        DATA(t119) = VALUE string( ).
        DATA t120 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t120.
        DATA t121 TYPE string.
        t121 = |unnecessary_return|.
        DATA t123 TYPE string.
        t123 = |Unnecessary Return|.
        DATA t125 TYPE string.
        t125 = |Finds unnecessary RETURN statements|.
        DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t127.
        DATA(t130) = |Finds unnecessary RETURN statements|.
        DATA(t131) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t131->has = abap_true.
        t131->value = t130.
        t127 = t131.
        DATA t133 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t133.
        DATA t137 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t138 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t138.
        t137 = t138.
        DATA(t140) = |SingleFile|.
        t137->load( ).
        APPEND t140 TO t137->items.
        t137->save( ).
        DATA(t142) = |Quickfix|.
        t137->load( ).
        APPEND t142 TO t137->items.
        t137->save( ).
        t133 = t137.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t145.
        DATA(t148) = |FORM hello1.\n  WRITE 'world'.\n  RETURN.\nENDFORM.\n\nFORM foo.\n|.
        t148 = t148 && |  IF 1 = 2.\n    RETURN.\n  ENDIF.\nENDFORM.|.
        DATA(t149) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t149->has = abap_true.
        t149->value = t148.
        t145 = t149.
        DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t151.
        DATA(t154) = |FORM hello2.\n  WRITE 'world'.\nENDFORM.|.
        DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t155->has = abap_true.
        t155->value = t154.
        t151 = t155.
        DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t157.
        DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t159.
        t120 = NEW zcl_lnt_irule_metadata( i_key = t121 i_title = t123 i_short_description = t125 i_bad_example = t145 i_good_example = t151 i_extended_information = t127 i_tags = t133 i_pragma = t157 i_pseudo_comment = t159 ).
        CREATE OBJECT t120->zlnt_view_ownkeys_b0e8086400eb.
        t120->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t161 ).
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t162 ).
        ENDIF.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t163 ).
        ENDIF.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t164 ).
        ENDIF.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t165 ).
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
        CREATE OBJECT t120->zlnt_json_ownkeys_70e5fd461788.
        t120->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t168) = |key|.
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t169.
        t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
        DATA(t170) = |title|.
        DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t171.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
        ENDIF.
        DATA(t172) = |shortDescription|.
        DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t173.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
        ENDIF.
        DATA(t174) = |extendedInformation|.
        DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t175.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
        ENDIF.
        DATA(t176) = |tags|.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
        ENDIF.
        DATA(t178) = |badExample|.
        DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t179.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t178 p1 = t179 ).
        ENDIF.
        DATA(t180) = |goodExample|.
        DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t181.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t180 p1 = t181 ).
        ENDIF.
        t119 = t120->key.
        DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t183) = CAST zcl_lnt_unncssry_rtrn_cnf( me->gt_cn_in_sr_rl_un_rt_ts_un_rtr( ) ).
        t182 = t183->zlnt_view_read_sr_15c06369f827( ).
        DATA t184 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t184.
        t184 = t111.
        DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t188.
        t115 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t74 i_message_26cb = t18 i_key = t119 i_severity = t182 i_fix = t184 i_alternative_fixes = t188 ).
        t2->load( ).
        APPEND t115 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA t189 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t189.
      DATA t190 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t190.
      DATA t192 TYPE i.
      DATA(t194) = 2.
      t192 = t28 - t194.
      t192 = t192 + 1.
      DATA t195 TYPE REF TO object.
      CLEAR t195.
      t20->load( ).
      CLEAR t195.
      READ TABLE t20->items INDEX t192 INTO t195.
      DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t196.
      CLEAR t190.
      IF t195 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t196 ?= t195.
        DATA t197 TYPE REF TO object.
        t197 = t196->as_ref( ).
        t190 ?= t197.
      ELSE.
        t190 ?= t195.
      ENDIF.
      t189 = t190.
      DATA(t198) = VALUE abap_bool( ).
      DATA(t199) = VALUE abap_bool( ).
      DATA(t200) = VALUE abap_bool( ).
      DATA t201 TYPE abap_bool.
      DATA t202 TYPE abap_bool.
      t202 = xsdbool( t74 IS BOUND ).
      t201 = t202.
      IF t202 = abap_true.
        DATA t204 TYPE abap_bool.
        t204 = xsdbool( t189 IS BOUND ).
        t201 = t204.
      ENDIF.
      t200 = t201.
      IF t201 = abap_true.
        DATA t206 TYPE abap_bool.
        DATA t207 TYPE REF TO zif_lnt_statement.
        t207 = t189->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t206 = xsdbool( t207 IS BOUND AND t207 IS INSTANCE OF zcl_lnt_st_return ).
        t200 = t206.
      ENDIF.
      t199 = t200.
      IF t200 = abap_true.
        DATA t209 TYPE abap_bool.
        DATA t210 TYPE i.
        DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t213 TYPE REF TO zcl_lnt_abstract_node.
        t213 = t189.
        DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t215 = t213->children.
        t212 = t215.
        t211 ?= t212.
        t211->load( ).
        t210 = lines( t211->items ).
        DATA(t217) = 2.
        t209 = xsdbool( t210 = t217 ).
        t199 = t209.
      ENDIF.
      t198 = t199.
      IF t199 = abap_true.
        DATA t218 TYPE abap_bool.
        DATA t219 TYPE REF TO zif_lnt_statement.
        t219 = t74->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t218 = xsdbool( t219 IS BOUND AND t219 IS INSTANCE OF zcl_lnt_end_if ).
        t198 = t218.
      ENDIF.
      IF t198 = abap_true.
        DATA t222 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t222 = zcl_lnt_edit_helper=>delete_statement( i_file = t1 i_statement = t189 ).
        DATA t226 TYPE REF TO zcl_lnt_issue.
        CLEAR t226.
        DATA(t230) = VALUE string( ).
        DATA t231 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t231.
        DATA t232 TYPE string.
        t232 = |unnecessary_return|.
        DATA t234 TYPE string.
        t234 = |Unnecessary Return|.
        DATA t236 TYPE string.
        t236 = |Finds unnecessary RETURN statements|.
        DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t238.
        DATA(t241) = |Finds unnecessary RETURN statements|.
        DATA(t242) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t242->has = abap_true.
        t242->value = t241.
        t238 = t242.
        DATA t244 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t244.
        DATA t248 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t249 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t249.
        t248 = t249.
        DATA(t251) = |SingleFile|.
        t248->load( ).
        APPEND t251 TO t248->items.
        t248->save( ).
        DATA(t253) = |Quickfix|.
        t248->load( ).
        APPEND t253 TO t248->items.
        t248->save( ).
        t244 = t248.
        DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t256.
        DATA(t259) = |FORM hello1.\n  WRITE 'world'.\n  RETURN.\nENDFORM.\n\nFORM foo.\n|.
        t259 = t259 && |  IF 1 = 2.\n    RETURN.\n  ENDIF.\nENDFORM.|.
        DATA(t260) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t260->has = abap_true.
        t260->value = t259.
        t256 = t260.
        DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t262.
        DATA(t265) = |FORM hello2.\n  WRITE 'world'.\nENDFORM.|.
        DATA(t266) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t266->has = abap_true.
        t266->value = t265.
        t262 = t266.
        DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t268.
        DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t270.
        t231 = NEW zcl_lnt_irule_metadata( i_key = t232 i_title = t234 i_short_description = t236 i_bad_example = t256 i_good_example = t262 i_extended_information = t238 i_tags = t244 i_pragma = t268 i_pseudo_comment = t270 ).
        CREATE OBJECT t231->zlnt_view_ownkeys_b0e8086400eb.
        t231->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t272.
        t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t272 ).
        DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t273.
        IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t273 ).
        ENDIF.
        DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t274.
        IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t274 ).
        ENDIF.
        DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t275.
        IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t275 ).
        ENDIF.
        DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t276.
        IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t276 ).
        ENDIF.
        DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t277.
        IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t277 ).
        ENDIF.
        DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t278.
        IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t278 ).
        ENDIF.
        CREATE OBJECT t231->zlnt_json_ownkeys_70e5fd461788.
        t231->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t279) = |key|.
        DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t280.
        t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = t279 p1 = t280 ).
        DATA(t281) = |title|.
        DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t282.
        IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = t281 p1 = t282 ).
        ENDIF.
        DATA(t283) = |shortDescription|.
        DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t284.
        IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = t283 p1 = t284 ).
        ENDIF.
        DATA(t285) = |extendedInformation|.
        DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t286.
        IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = t285 p1 = t286 ).
        ENDIF.
        DATA(t287) = |tags|.
        DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t288.
        IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = t287 p1 = t288 ).
        ENDIF.
        DATA(t289) = |badExample|.
        DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t290.
        IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = t289 p1 = t290 ).
        ENDIF.
        DATA(t291) = |goodExample|.
        DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t292.
        IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = t291 p1 = t292 ).
        ENDIF.
        t230 = t231->key.
        DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t294) = CAST zcl_lnt_unncssry_rtrn_cnf( me->gt_cn_in_sr_rl_un_rt_ts_un_rtr( ) ).
        t293 = t294->zlnt_view_read_sr_15c06369f827( ).
        DATA t295 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t295.
        t295 = t222.
        DATA t299 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t299.
        t226 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t189 i_message_26cb = t18 i_key = t230 i_severity = t293 i_fix = t295 i_alternative_fixes = t299 ).
        t2->load( ).
        APPEND t226 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA t300 TYPE i.
      DATA(t302) = 1.
      t300 = t28 + t302.
      t28 = t300.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_unncssry_rtrn_cnf( me->gt_cn_in_sr_rl_un_rt_ts_un_rtr( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_unncssry_rtrn_cnf( me->gt_cn_in_sr_rl_un_rt_ts_un_rtr( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_unncssry_rtrn_cnf.
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
        t1 = NEW zcl_lnt_unncssry_rtrn_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_un_rt_ts_un_rtr( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_un_rt_ts_un_rtr( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1746_707b0ebcc113.
  ENDMETHOD.
ENDCLASS.
