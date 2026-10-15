* TS: src/rules/mix_returning.ts:13:1 MixReturning
CLASS zcl_lnt_mix_returning DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_mix_returning_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_mx_rt_ts_mx_rtr RETURNING VALUE(result) TYPE REF TO zcl_lnt_mix_returning_conf.
    METHODS st_cn_in_sr_rl_mx_rt_ts_mx_rtr IMPORTING i_conf TYPE REF TO zcl_lnt_mix_returning_conf.
    METHODS rn_pr_in_sr_rl_mx_rt_ts_mx_rtr IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_mix_returning IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_mix_returning_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |mix_returning|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Mix of returning and exporting|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that methods don't have a mixture of returning and ex|.
    t7 = t7 && |porting/changing parameters|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#use-either-returning-or-exporting-or-changing-but-n|.
      t11 = t11 && |ot-a-combination\n\nThis syntax is not allowed on versions ear|.
      t11 = t11 && |lier than 740sp02, https://help.sap.com/doc/abapdocu_latest_|.
      t11 = t11 && |index_htm/latest/en-us/abennews-740-abap_objects.html#!ABAP_|.
      t11 = t11 && |MODIFICATION_1@1@|.
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
      DATA(t21) = |Styleguide|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |SingleFile|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      DATA(t25) = |Syntax|.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
      DATA(t26) = t18.
      t17 = t26.
      t15 = t17.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t27.
      t15 = t27.
    ENDIF.
    t14 = t15.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS\n      fo|.
      t31 = t31 && |obar\n        EXPORTING foo TYPE i\n        RETURNING VALUE(rv|.
      t31 = t31 && |_string) TYPE string.\nENDCLASS.|.
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
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t28 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t46) = |key|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |title|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |shortDescription|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |extendedInformation|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |tags|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    DATA(t56) = |badExample|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |Don't mix RETURNING and EXPORTING/CHANGING parameters in a s|.
    t1 = t1 && |ingle method.|.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_mx_rt_ts_mx_rtr.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_mx_rt_ts_mx_rtr.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_mx_rt_ts_mx_rtr.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    DATA(t9) = t6.
    t8 = t9->structure.
    t5 = t8.
    t4 = t5.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA(t12) = t4.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t11.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    DATA(t20) = t4.
    t19 = t20.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
    t18 = t19->find_all_statements( i_type_9913 = t21 ).
    DATA t22 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t22.
    DATA t23 TYPE REF TO object.
    CLEAR t23.
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
      DATA t27 TYPE abap_bool.
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE REF TO zcl_lnt_expression_node.
      DATA(t30) = t22.
      DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d235_40ca0b5f4dca.
      t29 = t30->find_first_expression( i_type_9913 = t31 ).
      t28 = xsdbool( t29 IS BOUND ).
      t27 = xsdbool( t28 = abap_false ).
      IF t27 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t32 TYPE abap_bool.
      DATA t33 TYPE abap_bool.
      DATA t34 TYPE REF TO zcl_lnt_expression_node.
      DATA(t35) = t22.
      DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d231_5616e0c1afc0.
      t34 = t35->find_first_expression( i_type_9913 = t36 ).
      t33 = xsdbool( t34 IS BOUND ).
      t32 = t33.
      IF t33 = abap_false.
        DATA t37 TYPE abap_bool.
        DATA t38 TYPE REF TO zcl_lnt_expression_node.
        DATA(t39) = t22.
        DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d227_3477e061b4c4.
        t38 = t39->find_first_expression( i_type_9913 = t40 ).
        t37 = xsdbool( t38 IS BOUND ).
        t32 = t37.
      ENDIF.
      IF t32 = abap_true.
        DATA t41 TYPE REF TO zcl_lnt_abstract_token.
        DATA t42 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t43) = t22.
        t42 = t43->get_first_token( ).
        t41 = t42.
        DATA t44 TYPE REF TO zcl_lnt_issue.
        CLEAR t44.
        DATA t45 TYPE REF TO zcl_lnt_issue.
        CLEAR t45.
        DATA(t46) = t1.
        DATA(t47) = t41.
        DATA(t48) = |Don't mix RETURNING and EXPORTING/CHANGING parameters in a s|.
        t48 = t48 && |ingle method.|.
        DATA(t49) = VALUE string( ).
        DATA t50 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t50.
        DATA t51 TYPE string.
        DATA(t52) = |mix_returning|.
        t51 = t52.
        DATA t53 TYPE string.
        DATA(t54) = |Mix of returning and exporting|.
        t53 = t54.
        DATA t55 TYPE string.
        DATA(t56) = |Checks that methods don't have a mixture of returning and ex|.
        t56 = t56 && |porting/changing parameters|.
        t55 = t56.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t57.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        DATA(t59) = abap_true.
        IF t59 = abap_true.
          DATA(t60) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t60 = t60 && |nABAP.md#use-either-returning-or-exporting-or-changing-but-n|.
          t60 = t60 && |ot-a-combination\n\nThis syntax is not allowed on versions ear|.
          t60 = t60 && |lier than 740sp02, https://help.sap.com/doc/abapdocu_latest_|.
          t60 = t60 && |index_htm/latest/en-us/abennews-740-abap_objects.html#!ABAP_|.
          t60 = t60 && |MODIFICATION_1@1@|.
          DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t61->has = abap_true.
          t61->value = t60.
          t58 = t61.
        ELSE.
          DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t62.
          t58 = t62.
        ENDIF.
        t57 = t58.
        DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t63.
        DATA t64 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t64.
        DATA(t65) = abap_true.
        IF t65 = abap_true.
          DATA t66 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t68.
          t67 = t68.
          DATA(t69) = t67.
          DATA(t70) = |Styleguide|.
          t69->load( ).
          APPEND t70 TO t69->items.
          t69->save( ).
          DATA(t71) = t67.
          DATA(t72) = |SingleFile|.
          t71->load( ).
          APPEND t72 TO t71->items.
          t71->save( ).
          DATA(t73) = t67.
          DATA(t74) = |Syntax|.
          t73->load( ).
          APPEND t74 TO t73->items.
          t73->save( ).
          DATA(t75) = t67.
          t66 = t75.
          t64 = t66.
        ELSE.
          DATA t76 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t76.
          t64 = t76.
        ENDIF.
        t63 = t64.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t77.
        DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t78.
        DATA(t79) = abap_true.
        IF t79 = abap_true.
          DATA(t80) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS\n      fo|.
          t80 = t80 && |obar\n        EXPORTING foo TYPE i\n        RETURNING VALUE(rv|.
          t80 = t80 && |_string) TYPE string.\nENDCLASS.|.
          DATA(t81) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t81->has = abap_true.
          t81->value = t80.
          t78 = t81.
        ELSE.
          DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t82.
          t78 = t82.
        ENDIF.
        t77 = t78.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t84.
        t83 = t84.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t86.
        t85 = t86.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        t87 = t88.
        t50 = NEW zcl_lnt_irule_metadata( i_key = t51 i_title = t53 i_short_description = t55 i_bad_example = t77 i_good_example = t83 i_extended_information = t57 i_tags = t63 i_pragma = t85 i_pseudo_comment = t87 ).
        CREATE OBJECT t50->zlnt_view_ownkeys_b0e8086400eb.
        t50->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        IF t50->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t50->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t89 ).
        ENDIF.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        IF t50->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t50->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t90 ).
        ENDIF.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        IF t50->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t50->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t91 ).
        ENDIF.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF t50->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t50->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t92 ).
        ENDIF.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        IF t50->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t50->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t93 ).
        ENDIF.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t94.
        IF t50->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t50->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t94 ).
        ENDIF.
        CREATE OBJECT t50->zlnt_json_ownkeys_70e5fd461788.
        t50->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t95) = |key|.
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t96.
        IF t50->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t50->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
        ENDIF.
        DATA(t97) = |title|.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        IF t50->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t50->zlnt_json_ownkeys_70e5fd461788->put( p0 = t97 p1 = t98 ).
        ENDIF.
        DATA(t99) = |shortDescription|.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        IF t50->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t50->zlnt_json_ownkeys_70e5fd461788->put( p0 = t99 p1 = t100 ).
        ENDIF.
        DATA(t101) = |extendedInformation|.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF t50->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t50->zlnt_json_ownkeys_70e5fd461788->put( p0 = t101 p1 = t102 ).
        ENDIF.
        DATA(t103) = |tags|.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        IF t50->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t50->zlnt_json_ownkeys_70e5fd461788->put( p0 = t103 p1 = t104 ).
        ENDIF.
        DATA(t105) = |badExample|.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t50->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t50->zlnt_json_ownkeys_70e5fd461788->put( p0 = t105 p1 = t106 ).
        ENDIF.
        t49 = t50->key.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t108) = me->conf.
        t107 = t108->zlnt_view_read_sr_15c06369f827( ).
        DATA t109 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t109.
        t45 = zcl_lnt_issue=>at_token( i_file = t46 i_token = t47 i_message_26cb = t48 i_key = t49 i_severity = t107 i_fix = t109 ).
        t44 = t45.
        DATA(t110) = t2.
        DATA(t111) = t44.
        t110->load( ).
        APPEND t111 TO t110->items.
        t110->save( ).
      ENDIF.
    ENDDO.
    DATA(t112) = t2.
    result = t112.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_mix_returning_conf( me->gt_cn_in_sr_rl_mx_rt_ts_mx_rtr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_mix_returning_conf( me->gt_cn_in_sr_rl_mx_rt_ts_mx_rtr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_mix_returning_conf.
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
        t1 = NEW zcl_lnt_mix_returning_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_mx_rt_ts_mx_rtr( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_mx_rt_ts_mx_rtr( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1593_50ae645b6f52.
  ENDMETHOD.
ENDCLASS.
