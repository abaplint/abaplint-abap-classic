* TS: src/rules/add_test_attributes.ts:12:1 AddTestAttributes
CLASS zcl_lnt_add_test_attributes DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_add_tst_attrbts_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_ad_ts_at_ts_ad_ts_at RETURNING VALUE(result) TYPE REF TO zcl_lnt_add_tst_attrbts_cnf.
    METHODS s_c_i_s_r_ad_ts_at_ts_ad_ts_at IMPORTING i_conf TYPE REF TO zcl_lnt_add_tst_attrbts_cnf.
    METHODS r_p_i_s_r_ad_ts_at_ts_ad_ts_at IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_add_test_attributes IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_add_tst_attrbts_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |add_test_attributes|.
    DATA t4 TYPE string.
    t4 = |Add test attributes for tests classes with test methods|.
    DATA t6 TYPE string.
    DATA(t7) = |Add test attributes DURATION and RISK LEVEL for tests classe|.
    t7 = t7 && |s with test methods|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t15) = |SingleFile|.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t21) = |CLASS ltcl_test1 DEFINITION FINAL FOR TESTING.\n  PUBLIC SECT|.
    t21 = t21 && |ION.\n  PROTECTED SECTION.\n  PRIVATE SECTION.\n    METHODS tes|.
    t21 = t21 && |t FOR TESTING RAISING cx_static_check.\nENDCLASS.\n\nCLASS ltcl|.
    t21 = t21 && |_test1 IMPLEMENTATION.\n  METHOD test.\n  ENDMETHOD.\nENDCLASS.|.
    DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t22->has = abap_true.
    t22->value = t21.
    t18 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t27) = |CLASS ltcl_test2 DEFINITION FINAL FOR TESTING DURATION SHORT|.
    t27 = t27 && | RISK LEVEL HARMLESS.\n  PUBLIC SECTION.\n  PROTECTED SECTION.|.
    t27 = t27 && |\n  PRIVATE SECTION.\n    METHODS test FOR TESTING RAISING cx_|.
    t27 = t27 && |static_check.\nENDCLASS.\n\nCLASS ltcl_test2 IMPLEMENTATION.\n  |.
    t27 = t27 && |METHOD test.\n  ENDMETHOD.\nENDCLASS.|.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t27.
    t24 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t18 i_good_example = t24 i_extended_information = t30 i_tags = t8 i_pragma = t32 i_pseudo_comment = t34 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t36 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t41 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t42) = |key|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    DATA(t44) = |title|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = |shortDescription|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |tags|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |badExample|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |goodExample|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_ad_ts_at_ts_ad_ts_at.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_ad_ts_at_ts_ad_ts_at.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_ad_ts_at_ts_ad_ts_at.
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
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e.
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
      DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d411_59ccb35321de.
      t28 = t22->find_first_statement( i_type_9913 = t30 ).
      t27 = t28.
      DATA(t31) = VALUE abap_bool( ).
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      t31 = xsdbool( t27 IS INITIAL ).
      IF t31 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t38.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t40.
      DATA t42 TYPE REF TO zcl_lnt_statement_node.
      t42 = t27.
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t45.
      DATA(t46) = xsdbool( t42 IS INITIAL ).
      IF t46 = abap_true.
        CLEAR t45.
      ELSE.
        DATA t49 TYPE string.
        t49 = t42->concat_tokens( ).
        DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t51->has = abap_true.
        t51->value = t49.
        t45 = t51.
      ENDIF.
      t40 = t45.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t52.
      DATA(t53) = VALUE abap_bool( ).
      IF t40 IS INITIAL.
        t53 = abap_true.
      ELSEIF t40->has = abap_false.
        t53 = abap_true.
      ENDIF.
      IF t53 = abap_true.
        CLEAR t52.
      ELSE.
        DATA t56 TYPE string.
        DATA t57 TYPE string.
        t57 = t40->value.
        DATA(t59) = strlen( t57 ).
        t56 = t57.
        IF t56 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t56 TO UPPER CASE.
        ELSE.
          t56 = zlnt_runtime_uppe_91169605024d=>full( t56 ).
        ENDIF.
        DATA(t60) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t60->has = abap_true.
        t60->value = t56.
        t52 = t60.
      ENDIF.
      t38 = t52.
      DATA(t61) = VALUE abap_bool( ).
      DATA t62 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t62.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t63 = t38.
      DATA t65 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t65.
      DATA(t66) = VALUE abap_bool( ).
      IF t63 IS INITIAL.
        t66 = abap_true.
      ELSEIF t63->has = abap_false.
        t66 = abap_true.
      ENDIF.
      IF t66 = abap_true.
        CLEAR t65.
      ELSE.
        DATA(t69) = VALUE abap_bool( ).
        DATA(t70) = VALUE i( ).
        DATA t71 TYPE string.
        t71 = t63->value.
        DATA(t73) = | FOR TESTING|.
        DATA(t74) = strlen( t71 ).
        IF t73 IS INITIAL.
          t70 = 0.
        ELSE.
          FIND t73 IN t71 MATCH OFFSET t70.
          IF sy-subrc <> 0.
            t70 = -1.
          ENDIF.
        ENDIF.
        DATA(t75) = 0.
        t69 = xsdbool( t70 >= t75 ).
        DATA(t76) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t76->has = abap_true.
        t76->value = t69.
        t65 = t76.
      ENDIF.
      t62 = t65.
      DATA t77 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t77.
      DATA(t80) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t80->has = abap_true.
      t80->value = abap_false.
      t77 = t80.
      DATA(t82) = VALUE abap_bool( ).
      DATA(t83) = VALUE abap_bool( ).
      IF t62 IS BOUND.
        t82 = t62->has.
      ENDIF.
      IF t77 IS BOUND.
        t83 = t77->has.
      ENDIF.
      IF t82 = t83.
        IF t82 = abap_false.
          t61 = abap_true.
        ELSEIF t62->value = t77->value.
          t61 = abap_true.
        ENDIF.
      ENDIF.
      IF t61 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t84 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t84.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t86 = t38.
      DATA t88 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t88.
      DATA(t89) = VALUE abap_bool( ).
      IF t86 IS INITIAL.
        t89 = abap_true.
      ELSEIF t86->has = abap_false.
        t89 = abap_true.
      ENDIF.
      IF t89 = abap_true.
        CLEAR t88.
      ELSE.
        DATA(t92) = VALUE abap_bool( ).
        DATA(t93) = VALUE i( ).
        DATA t94 TYPE string.
        t94 = t86->value.
        DATA(t96) = | DURATION |.
        DATA(t97) = strlen( t94 ).
        IF t96 IS INITIAL.
          t93 = 0.
        ELSE.
          FIND t96 IN t94 MATCH OFFSET t93.
          IF sy-subrc <> 0.
            t93 = -1.
          ENDIF.
        ENDIF.
        DATA(t98) = 0.
        t92 = xsdbool( t93 >= t98 ).
        DATA(t99) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t99->has = abap_true.
        t99->value = t92.
        t88 = t99.
      ENDIF.
      t84 = t88.
      DATA t100 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t100.
      DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t102 = t38.
      DATA t104 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t104.
      DATA(t105) = VALUE abap_bool( ).
      IF t102 IS INITIAL.
        t105 = abap_true.
      ELSEIF t102->has = abap_false.
        t105 = abap_true.
      ENDIF.
      IF t105 = abap_true.
        CLEAR t104.
      ELSE.
        DATA(t108) = VALUE abap_bool( ).
        DATA(t109) = VALUE i( ).
        DATA t110 TYPE string.
        t110 = t102->value.
        DATA(t112) = | RISK LEVEL |.
        DATA(t113) = strlen( t110 ).
        IF t112 IS INITIAL.
          t109 = 0.
        ELSE.
          FIND t112 IN t110 MATCH OFFSET t109.
          IF sy-subrc <> 0.
            t109 = -1.
          ENDIF.
        ENDIF.
        DATA(t114) = 0.
        t108 = xsdbool( t109 >= t114 ).
        DATA(t115) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t115->has = abap_true.
        t115->value = t108.
        t104 = t115.
      ENDIF.
      t100 = t104.
      DATA t116 TYPE abap_bool.
      DATA t117 TYPE abap_bool.
      DATA t118 TYPE abap_bool.
      t118 = t84->value.
      t117 = xsdbool( t118 = abap_true ).
      t116 = t117.
      IF t117 = abap_true.
        DATA t121 TYPE abap_bool.
        DATA t122 TYPE abap_bool.
        t122 = t100->value.
        t121 = xsdbool( t122 = abap_true ).
        t116 = t121.
      ENDIF.
      IF t116 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t125 TYPE abap_bool.
      t125 = abap_false.
      DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
      t127 = t22->find_all_statements( i_type_9913 = t129 ).
      DATA t130 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t130.
      DATA t131 TYPE REF TO object.
      CLEAR t131.
      DATA(t132) = VALUE i( ).
      DO.
        t127->load( ).
        IF t132 >= lines( t127->items ).
          EXIT.
        ENDIF.
        CLEAR t131.
        READ TABLE t127->items INDEX t132 + 1 INTO t131.
        t132 = t132 + 1.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        CLEAR t130.
        IF t131 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t133 ?= t131.
          DATA t134 TYPE REF TO object.
          t134 = t133->as_ref( ).
          t130 ?= t134.
        ELSE.
          t130 ?= t131.
        ENDIF.
        DATA(t135) = VALUE string( ).
        DATA t136 TYPE string.
        DATA t137 TYPE string.
        t137 = t130->concat_tokens( ).
        DATA(t139) = strlen( t137 ).
        t136 = t137.
        IF t136 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t136 TO UPPER CASE.
        ELSE.
          t136 = zlnt_runtime_uppe_91169605024d=>full( t136 ).
        ENDIF.
        t135 = t136.
        DATA(t140) = VALUE abap_bool( ).
        DATA(t141) = VALUE i( ).
        DATA(t143) = | FOR TESTING|.
        DATA(t144) = strlen( t135 ).
        IF t143 IS INITIAL.
          t141 = 0.
        ELSE.
          FIND t143 IN t135 MATCH OFFSET t141.
          IF sy-subrc <> 0.
            t141 = -1.
          ENDIF.
        ENDIF.
        DATA(t145) = 0.
        t140 = xsdbool( t141 >= t145 ).
        IF t140 = abap_true.
          t125 = abap_true.
        ENDIF.
      ENDDO.
      DATA t147 TYPE abap_bool.
      t147 = xsdbool( t125 = abap_false ).
      IF t147 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t150 TYPE abap_bool.
      DATA t151 TYPE abap_bool.
      t151 = t84->value.
      t150 = xsdbool( t151 = abap_false ).
      IF t150 = abap_true.
        DATA t155 TYPE REF TO zcl_lnt_issue.
        CLEAR t155.
        DATA t157 TYPE REF TO zcl_lnt_statement_node.
        t157 = t27.
        DATA(t159) = |Add DURATION|.
        DATA(t160) = VALUE string( ).
        DATA t161 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t161.
        DATA t162 TYPE string.
        t162 = |add_test_attributes|.
        DATA t164 TYPE string.
        t164 = |Add test attributes for tests classes with test methods|.
        DATA t166 TYPE string.
        DATA(t167) = |Add test attributes DURATION and RISK LEVEL for tests classe|.
        t167 = t167 && |s with test methods|.
        t166 = t167.
        DATA t168 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t168.
        DATA t172 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t173 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t173.
        t172 = t173.
        DATA(t175) = |SingleFile|.
        t172->load( ).
        APPEND t175 TO t172->items.
        t172->save( ).
        t168 = t172.
        DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t178.
        DATA(t181) = |CLASS ltcl_test1 DEFINITION FINAL FOR TESTING.\n  PUBLIC SECT|.
        t181 = t181 && |ION.\n  PROTECTED SECTION.\n  PRIVATE SECTION.\n    METHODS tes|.
        t181 = t181 && |t FOR TESTING RAISING cx_static_check.\nENDCLASS.\n\nCLASS ltcl|.
        t181 = t181 && |_test1 IMPLEMENTATION.\n  METHOD test.\n  ENDMETHOD.\nENDCLASS.|.
        DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t182->has = abap_true.
        t182->value = t181.
        t178 = t182.
        DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t184.
        DATA(t187) = |CLASS ltcl_test2 DEFINITION FINAL FOR TESTING DURATION SHORT|.
        t187 = t187 && | RISK LEVEL HARMLESS.\n  PUBLIC SECTION.\n  PROTECTED SECTION.|.
        t187 = t187 && |\n  PRIVATE SECTION.\n    METHODS test FOR TESTING RAISING cx_|.
        t187 = t187 && |static_check.\nENDCLASS.\n\nCLASS ltcl_test2 IMPLEMENTATION.\n  |.
        t187 = t187 && |METHOD test.\n  ENDMETHOD.\nENDCLASS.|.
        DATA(t188) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t188->has = abap_true.
        t188->value = t187.
        t184 = t188.
        DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t190.
        DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t192.
        DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t194.
        t161 = NEW zcl_lnt_irule_metadata( i_key = t162 i_title = t164 i_short_description = t166 i_bad_example = t178 i_good_example = t184 i_extended_information = t190 i_tags = t168 i_pragma = t192 i_pseudo_comment = t194 ).
        CREATE OBJECT t161->zlnt_view_ownkeys_b0e8086400eb.
        t161->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t196.
        t161->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t196 ).
        DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t197.
        IF t161->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t161->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t197 ).
        ENDIF.
        DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t198.
        IF t161->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t161->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t198 ).
        ENDIF.
        DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t199.
        IF t161->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t161->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t199 ).
        ENDIF.
        DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t200.
        IF t161->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t161->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t200 ).
        ENDIF.
        DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t201.
        IF t161->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t161->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t201 ).
        ENDIF.
        CREATE OBJECT t161->zlnt_json_ownkeys_70e5fd461788.
        t161->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t202) = |key|.
        DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t203.
        t161->zlnt_json_ownkeys_70e5fd461788->put( p0 = t202 p1 = t203 ).
        DATA(t204) = |title|.
        DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t205.
        IF t161->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t161->zlnt_json_ownkeys_70e5fd461788->put( p0 = t204 p1 = t205 ).
        ENDIF.
        DATA(t206) = |shortDescription|.
        DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t207.
        IF t161->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t161->zlnt_json_ownkeys_70e5fd461788->put( p0 = t206 p1 = t207 ).
        ENDIF.
        DATA(t208) = |tags|.
        DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t209.
        IF t161->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t161->zlnt_json_ownkeys_70e5fd461788->put( p0 = t208 p1 = t209 ).
        ENDIF.
        DATA(t210) = |badExample|.
        DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t211.
        IF t161->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t161->zlnt_json_ownkeys_70e5fd461788->put( p0 = t210 p1 = t211 ).
        ENDIF.
        DATA(t212) = |goodExample|.
        DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t213.
        IF t161->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t161->zlnt_json_ownkeys_70e5fd461788->put( p0 = t212 p1 = t213 ).
        ENDIF.
        t160 = t161->key.
        DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t215) = CAST zcl_lnt_add_tst_attrbts_cnf( me->g_c_i_s_r_ad_ts_at_ts_ad_ts_at( ) ).
        t214 = t215->zlnt_view_read_sr_15c06369f827( ).
        DATA t216 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t216.
        DATA t217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t217.
        t155 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t157 i_message_26cb = t159 i_key = t160 i_severity = t214 i_fix = t216 i_alternative_fixes = t217 ).
        t2->load( ).
        APPEND t155 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA t218 TYPE abap_bool.
      DATA t219 TYPE abap_bool.
      t219 = t100->value.
      t218 = xsdbool( t219 = abap_false ).
      IF t218 = abap_true.
        DATA t223 TYPE REF TO zcl_lnt_issue.
        CLEAR t223.
        DATA t225 TYPE REF TO zcl_lnt_statement_node.
        t225 = t27.
        DATA(t227) = |Add RISK LEVEL|.
        DATA(t228) = VALUE string( ).
        DATA t229 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t229.
        DATA t230 TYPE string.
        t230 = |add_test_attributes|.
        DATA t232 TYPE string.
        t232 = |Add test attributes for tests classes with test methods|.
        DATA t234 TYPE string.
        DATA(t235) = |Add test attributes DURATION and RISK LEVEL for tests classe|.
        t235 = t235 && |s with test methods|.
        t234 = t235.
        DATA t236 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t236.
        DATA t240 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t241 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t241.
        t240 = t241.
        DATA(t243) = |SingleFile|.
        t240->load( ).
        APPEND t243 TO t240->items.
        t240->save( ).
        t236 = t240.
        DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t246.
        DATA(t249) = |CLASS ltcl_test1 DEFINITION FINAL FOR TESTING.\n  PUBLIC SECT|.
        t249 = t249 && |ION.\n  PROTECTED SECTION.\n  PRIVATE SECTION.\n    METHODS tes|.
        t249 = t249 && |t FOR TESTING RAISING cx_static_check.\nENDCLASS.\n\nCLASS ltcl|.
        t249 = t249 && |_test1 IMPLEMENTATION.\n  METHOD test.\n  ENDMETHOD.\nENDCLASS.|.
        DATA(t250) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t250->has = abap_true.
        t250->value = t249.
        t246 = t250.
        DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t252.
        DATA(t255) = |CLASS ltcl_test2 DEFINITION FINAL FOR TESTING DURATION SHORT|.
        t255 = t255 && | RISK LEVEL HARMLESS.\n  PUBLIC SECTION.\n  PROTECTED SECTION.|.
        t255 = t255 && |\n  PRIVATE SECTION.\n    METHODS test FOR TESTING RAISING cx_|.
        t255 = t255 && |static_check.\nENDCLASS.\n\nCLASS ltcl_test2 IMPLEMENTATION.\n  |.
        t255 = t255 && |METHOD test.\n  ENDMETHOD.\nENDCLASS.|.
        DATA(t256) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t256->has = abap_true.
        t256->value = t255.
        t252 = t256.
        DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t258.
        DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t260.
        DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t262.
        t229 = NEW zcl_lnt_irule_metadata( i_key = t230 i_title = t232 i_short_description = t234 i_bad_example = t246 i_good_example = t252 i_extended_information = t258 i_tags = t236 i_pragma = t260 i_pseudo_comment = t262 ).
        CREATE OBJECT t229->zlnt_view_ownkeys_b0e8086400eb.
        t229->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t264.
        t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t264 ).
        DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t265.
        IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t265 ).
        ENDIF.
        DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t266.
        IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t266 ).
        ENDIF.
        DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t267.
        IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t267 ).
        ENDIF.
        DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t268.
        IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t268 ).
        ENDIF.
        DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t269.
        IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t269 ).
        ENDIF.
        CREATE OBJECT t229->zlnt_json_ownkeys_70e5fd461788.
        t229->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t270) = |key|.
        DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t271.
        t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = t270 p1 = t271 ).
        DATA(t272) = |title|.
        DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t273.
        IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = t272 p1 = t273 ).
        ENDIF.
        DATA(t274) = |shortDescription|.
        DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t275.
        IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = t274 p1 = t275 ).
        ENDIF.
        DATA(t276) = |tags|.
        DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t277.
        IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = t276 p1 = t277 ).
        ENDIF.
        DATA(t278) = |badExample|.
        DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t279.
        IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = t278 p1 = t279 ).
        ENDIF.
        DATA(t280) = |goodExample|.
        DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t281.
        IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = t280 p1 = t281 ).
        ENDIF.
        t228 = t229->key.
        DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t283) = CAST zcl_lnt_add_tst_attrbts_cnf( me->g_c_i_s_r_ad_ts_at_ts_ad_ts_at( ) ).
        t282 = t283->zlnt_view_read_sr_15c06369f827( ).
        DATA t284 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t284.
        DATA t285 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t285.
        t223 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t225 i_message_26cb = t227 i_key = t228 i_severity = t282 i_fix = t284 i_alternative_fixes = t285 ).
        t2->load( ).
        APPEND t223 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_add_tst_attrbts_cnf( me->g_c_i_s_r_ad_ts_at_ts_ad_ts_at( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_add_tst_attrbts_cnf( me->g_c_i_s_r_ad_ts_at_ts_ad_ts_at( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_add_tst_attrbts_cnf.
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
        t1 = NEW zcl_lnt_add_tst_attrbts_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_ad_ts_at_ts_ad_ts_at( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_ad_ts_at_ts_ad_ts_at( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1388_008124b94723.
  ENDMETHOD.
ENDCLASS.
