* TS: src/rules/unnecessary_pragma.ts:19:1 UnnecessaryPragma
CLASS zcl_lnt_unnecessary_pragma DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_unncssry_prgm_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_un_pr_ts_un_prg RETURNING VALUE(result) TYPE REF TO zcl_lnt_unncssry_prgm_cnf.
    METHODS st_cn_in_sr_rl_un_pr_ts_un_prg IMPORTING i_conf TYPE REF TO zcl_lnt_unncssry_prgm_cnf.
    METHODS rn_pr_in_sr_rl_un_pr_ts_un_prg IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_text IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_subrc IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node i_next TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_needed IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS contains_no_handler IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node i_next TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unnecessary_pragma IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_unncssry_prgm_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |unnecessary_pragma|.
    DATA t4 TYPE string.
    t4 = |Unnecessary Pragma|.
    DATA t6 TYPE string.
    t6 = |Finds pragmas which can be removed|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |* NO_HANDLER with handler\n\n* NEEDED without definition\n\n* NO|.
    t11 = t11 && |_TEXT without texts\n\n* SUBRC_OK where sy-subrc is checked\n\nN|.
    t11 = t11 && |O_HANDLER inside macros are not checked|.
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
    DATA(t27) = |TRY.\n    ...\n  CATCH zcx_abapgit_exception ##NO_HANDLER.\n   |.
    t27 = t27 && | RETURN. " it has a handler\nENDTRY.\nMESSAGE w125(zbar) WITH |.
    t27 = t27 && |c_foo INTO message ##NEEDED ##NO_TEXT.\nSELECT SINGLE * FROM |.
    t27 = t27 && |tadir INTO @DATA(sdfs) ##SUBRC_OK.\nIF sy-subrc <> 0.\nENDIF.|.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t27.
    t24 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t33) = |TRY.\n    ...\n  CATCH zcx_abapgit_exception.\n    RETURN.\nENDT|.
    t33 = t33 && |RY.\nMESSAGE w125(zbar) WITH c_foo INTO message.\nSELECT SINGL|.
    t33 = t33 && |E * FROM tadir INTO @DATA(sdfs).\nIF sy-subrc <> 0.\nENDIF.\n\nD|.
    t33 = t33 && |ATA: BEGIN OF blah ##NEEDED,\n        test1 TYPE string,\n    |.
    t33 = t33 && |    test2 TYPE string,\n      END OF blah.|.
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

  METHOD gt_cn_in_sr_rl_un_pr_ts_un_prg.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_un_pr_ts_un_prg.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_un_pr_ts_un_prg.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    t4 = abap_false.
    DATA t6 TYPE abap_bool.
    t6 = abap_false.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t12 = t1->statements.
    t8 = t12.
    DATA t14 TYPE i.
    t14 = 0.
    DO.
      DATA t16 TYPE abap_bool.
      DATA t18 TYPE i.
      t8->load( ).
      t18 = lines( t8->items ).
      t16 = xsdbool( t14 < t18 ).
      IF t16 = abap_false.
        EXIT.
      ENDIF.
      DATA t20 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t21.
      DATA(t23) = t14.
      t23 = t23 + 1.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      t8->load( ).
      CLEAR t24.
      READ TABLE t8->items INDEX t23 INTO t24.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t21.
      IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t24.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t21 ?= t26.
      ELSE.
        t21 ?= t24.
      ENDIF.
      t20 = t21.
      DATA t28 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t28.
      DATA t30 TYPE i.
      DATA(t32) = 1.
      t30 = t14 + t32.
      t30 = t30 + 1.
      DATA t33 TYPE REF TO object.
      CLEAR t33.
      t8->load( ).
      CLEAR t33.
      READ TABLE t8->items INDEX t30 INTO t33.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      CLEAR t28.
      IF t33 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t34 ?= t33.
        DATA t35 TYPE REF TO object.
        t35 = t34->as_ref( ).
        t28 ?= t35.
      ELSE.
        t28 ?= t33.
      ENDIF.
      DATA t36 TYPE abap_bool.
      DATA t37 TYPE abap_bool.
      DATA t38 TYPE REF TO zif_lnt_statement.
      t38 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_empty ).
      t36 = t37.
      IF t37 = abap_true.
        DATA t40 TYPE abap_bool.
        DATA t41 TYPE i.
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t44 TYPE REF TO zcl_lnt_abstract_node.
        t44 = t20.
        DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t46 = t44->children.
        t43 = t46.
        t42 ?= t43.
        t42->load( ).
        t41 = lines( t42->items ).
        DATA(t48) = 1.
        t40 = xsdbool( t41 = t48 ).
        t36 = t40.
      ENDIF.
      IF t36 = abap_true.
        DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t50 = t20->get_tokens( ).
        t49 = t50.
        DATA t52 TYPE abap_bool.
        DATA t53 TYPE abap_bool.
        DATA t54 TYPE i.
        t49->load( ).
        t54 = lines( t49->items ).
        DATA(t56) = 1.
        t53 = xsdbool( t54 = t56 ).
        t52 = t53.
        IF t53 = abap_true.
          DATA(t57) = VALUE abap_bool( ).
          DATA t58 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t58.
          DATA t60 TYPE REF TO object.
          CLEAR t60.
          t49->load( ).
          CLEAR t60.
          READ TABLE t49->items INDEX 1 INTO t60.
          DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t61.
          CLEAR t58.
          IF t60 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t61 ?= t60.
            DATA t62 TYPE REF TO object.
            t62 = t61->as_ref( ).
            t58 ?= t62.
          ELSE.
            t58 ?= t60.
          ENDIF.
          t57 = xsdbool( t58 IS BOUND AND t58 IS INSTANCE OF zcl_lnt_pragma ).
          t52 = t57.
        ENDIF.
        IF t52 = abap_true.
          DATA(t64) = |Pragma without a statement can be removed|.
          DATA t66 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t66.
          DATA t68 TYPE REF TO zcl_lnt_pragma.
          CLEAR t68.
          DATA t69 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t69.
          DATA t71 TYPE REF TO object.
          CLEAR t71.
          t49->load( ).
          CLEAR t71.
          READ TABLE t49->items INDEX 1 INTO t71.
          DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t72.
          CLEAR t69.
          IF t71 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t72 ?= t71.
            DATA t73 TYPE REF TO object.
            t73 = t72->as_ref( ).
            t69 ?= t73.
          ELSE.
            t69 ?= t71.
          ENDIF.
          t68 ?= t69.
          t66 = zcl_lnt_edit_helper=>delete_token( i_file = t1 i_token = t68 ).
          DATA t75 TYPE REF TO zcl_lnt_issue.
          CLEAR t75.
          DATA t77 TYPE REF TO zcl_lnt_pragma.
          CLEAR t77.
          DATA t78 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t78.
          DATA t80 TYPE REF TO object.
          CLEAR t80.
          t49->load( ).
          CLEAR t80.
          READ TABLE t49->items INDEX 1 INTO t80.
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
          t77 ?= t78.
          DATA(t84) = VALUE string( ).
          DATA t85 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t85.
          DATA t86 TYPE string.
          t86 = |unnecessary_pragma|.
          DATA t88 TYPE string.
          t88 = |Unnecessary Pragma|.
          DATA t90 TYPE string.
          t90 = |Finds pragmas which can be removed|.
          DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t92.
          DATA(t95) = |* NO_HANDLER with handler\n\n* NEEDED without definition\n\n* NO|.
          t95 = t95 && |_TEXT without texts\n\n* SUBRC_OK where sy-subrc is checked\n\nN|.
          t95 = t95 && |O_HANDLER inside macros are not checked|.
          DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t96->has = abap_true.
          t96->value = t95.
          t92 = t96.
          DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t98.
          DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t103 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t103.
          t102 = t103.
          DATA(t105) = |SingleFile|.
          t102->load( ).
          APPEND t105 TO t102->items.
          t102->save( ).
          t98 = t102.
          DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t108.
          DATA(t111) = |TRY.\n    ...\n  CATCH zcx_abapgit_exception ##NO_HANDLER.\n   |.
          t111 = t111 && | RETURN. " it has a handler\nENDTRY.\nMESSAGE w125(zbar) WITH |.
          t111 = t111 && |c_foo INTO message ##NEEDED ##NO_TEXT.\nSELECT SINGLE * FROM |.
          t111 = t111 && |tadir INTO @DATA(sdfs) ##SUBRC_OK.\nIF sy-subrc <> 0.\nENDIF.|.
          DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t112->has = abap_true.
          t112->value = t111.
          t108 = t112.
          DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t114.
          DATA(t117) = |TRY.\n    ...\n  CATCH zcx_abapgit_exception.\n    RETURN.\nENDT|.
          t117 = t117 && |RY.\nMESSAGE w125(zbar) WITH c_foo INTO message.\nSELECT SINGL|.
          t117 = t117 && |E * FROM tadir INTO @DATA(sdfs).\nIF sy-subrc <> 0.\nENDIF.\n\nD|.
          t117 = t117 && |ATA: BEGIN OF blah ##NEEDED,\n        test1 TYPE string,\n    |.
          t117 = t117 && |    test2 TYPE string,\n      END OF blah.|.
          DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t118->has = abap_true.
          t118->value = t117.
          t114 = t118.
          DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t120.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          t85 = NEW zcl_lnt_irule_metadata( i_key = t86 i_title = t88 i_short_description = t90 i_bad_example = t108 i_good_example = t114 i_extended_information = t92 i_tags = t98 i_pragma = t120 i_pseudo_comment = t122 ).
          CREATE OBJECT t85->zlnt_view_ownkeys_b0e8086400eb.
          t85->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t124.
          t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t124 ).
          DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t125.
          IF t85->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t125 ).
          ENDIF.
          DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t126.
          IF t85->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t126 ).
          ENDIF.
          DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t127.
          IF t85->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t127 ).
          ENDIF.
          DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t128.
          IF t85->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t128 ).
          ENDIF.
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t129.
          IF t85->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t129 ).
          ENDIF.
          DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t130.
          IF t85->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t130 ).
          ENDIF.
          CREATE OBJECT t85->zlnt_json_ownkeys_70e5fd461788.
          t85->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t131) = |key|.
          DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t132.
          t85->zlnt_json_ownkeys_70e5fd461788->put( p0 = t131 p1 = t132 ).
          DATA(t133) = |title|.
          DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t134.
          IF t85->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t85->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
          ENDIF.
          DATA(t135) = |shortDescription|.
          DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t136.
          IF t85->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t85->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
          ENDIF.
          DATA(t137) = |extendedInformation|.
          DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t138.
          IF t85->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t85->zlnt_json_ownkeys_70e5fd461788->put( p0 = t137 p1 = t138 ).
          ENDIF.
          DATA(t139) = |tags|.
          DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t140.
          IF t85->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t85->zlnt_json_ownkeys_70e5fd461788->put( p0 = t139 p1 = t140 ).
          ENDIF.
          DATA(t141) = |badExample|.
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t142.
          IF t85->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t85->zlnt_json_ownkeys_70e5fd461788->put( p0 = t141 p1 = t142 ).
          ENDIF.
          DATA(t143) = |goodExample|.
          DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t144.
          IF t85->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t85->zlnt_json_ownkeys_70e5fd461788->put( p0 = t143 p1 = t144 ).
          ENDIF.
          t84 = t85->key.
          DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t145 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t147 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t147.
          t147 = t66.
          t75 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t77 i_message_26cb = t64 i_key = t84 i_severity = t145 i_fix = t147 ).
          t2->load( ).
          APPEND t75 TO t2->items.
          t2->save( ).
          DATA t151 TYPE i.
          DATA(t153) = 1.
          t151 = t14 + t153.
          t14 = t151.
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA t154 TYPE abap_bool.
      DATA t155 TYPE REF TO zif_lnt_statement.
      t155 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t154 = xsdbool( t155 IS BOUND AND t155 IS INSTANCE OF zcl_lnt_end_try ).
      IF t154 = abap_true.
        t4 = abap_false.
      ELSE.
        DATA t158 TYPE abap_bool.
        DATA t159 TYPE abap_bool.
        DATA t160 TYPE REF TO zif_lnt_statement.
        t160 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t159 = xsdbool( t160 IS BOUND AND t160 IS INSTANCE OF zcl_lnt_st_class_definition ).
        t158 = t159.
        IF t159 = abap_false.
          DATA t162 TYPE abap_bool.
          DATA t163 TYPE REF TO zif_lnt_statement.
          t163 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t162 = xsdbool( t163 IS BOUND AND t163 IS INSTANCE OF zcl_lnt_st_interface ).
          t158 = t162.
        ENDIF.
        IF t158 = abap_true.
          DATA t165 TYPE abap_bool.
          DATA t166 TYPE REF TO zcl_lnt_expression_node.
          DATA(t168) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
          t166 = t20->find_direct_expression( i_type_9913 = t168 ).
          t165 = xsdbool( t166 IS BOUND ).
          IF t165 = abap_true.
            t6 = abap_true.
          ENDIF.
        ELSE.
          DATA t170 TYPE abap_bool.
          DATA t171 TYPE abap_bool.
          DATA t172 TYPE REF TO zif_lnt_statement.
          t172 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t171 = xsdbool( t172 IS BOUND AND t172 IS INSTANCE OF zcl_lnt_end_class ).
          t170 = t171.
          IF t171 = abap_false.
            DATA t174 TYPE abap_bool.
            DATA t175 TYPE REF TO zif_lnt_statement.
            t175 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t174 = xsdbool( t175 IS BOUND AND t175 IS INSTANCE OF zcl_lnt_end_interface ).
            t170 = t174.
          ENDIF.
          IF t170 = abap_true.
            t6 = abap_false.
          ELSE.
            DATA t178 TYPE abap_bool.
            DATA t179 TYPE REF TO zif_lnt_statement.
            t179 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t178 = xsdbool( t179 IS BOUND AND t179 IS INSTANCE OF zcl_lnt_st_comment ).
            IF t178 = abap_true.
              DATA t181 TYPE i.
              DATA(t183) = 1.
              t181 = t14 + t183.
              t14 = t181.
              CONTINUE.
            ELSE.
              DATA t184 TYPE abap_bool.
              DATA t185 TYPE abap_bool.
              t185 = xsdbool( t4 = abap_true ).
              t184 = t185.
              IF t185 = abap_true.
                DATA t188 TYPE abap_bool.
                DATA t189 TYPE abap_bool.
                DATA t190 TYPE REF TO zif_lnt_statement.
                t190 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                t189 = xsdbool( t190 IS BOUND AND t190 IS INSTANCE OF zcl_lnt_st_catch ).
                t188 = xsdbool( t189 = abap_false ).
                t184 = t188.
              ENDIF.
              IF t184 = abap_true.
                DATA(t193) = |NO_HANDLER pragma or pseudo comment can be removed|.
                DATA t195 TYPE REF TO zcl_lnt_issue.
                CLEAR t195.
                DATA(t199) = VALUE string( ).
                DATA t200 TYPE REF TO zcl_lnt_irule_metadata.
                CLEAR t200.
                DATA t201 TYPE string.
                t201 = |unnecessary_pragma|.
                DATA t203 TYPE string.
                t203 = |Unnecessary Pragma|.
                DATA t205 TYPE string.
                t205 = |Finds pragmas which can be removed|.
                DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t207.
                DATA(t210) = |* NO_HANDLER with handler\n\n* NEEDED without definition\n\n* NO|.
                t210 = t210 && |_TEXT without texts\n\n* SUBRC_OK where sy-subrc is checked\n\nN|.
                t210 = t210 && |O_HANDLER inside macros are not checked|.
                DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t211->has = abap_true.
                t211->value = t210.
                t207 = t211.
                DATA t213 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t213.
                DATA t217 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t218 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t218.
                t217 = t218.
                DATA(t220) = |SingleFile|.
                t217->load( ).
                APPEND t220 TO t217->items.
                t217->save( ).
                t213 = t217.
                DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t223.
                DATA(t226) = |TRY.\n    ...\n  CATCH zcx_abapgit_exception ##NO_HANDLER.\n   |.
                t226 = t226 && | RETURN. " it has a handler\nENDTRY.\nMESSAGE w125(zbar) WITH |.
                t226 = t226 && |c_foo INTO message ##NEEDED ##NO_TEXT.\nSELECT SINGLE * FROM |.
                t226 = t226 && |tadir INTO @DATA(sdfs) ##SUBRC_OK.\nIF sy-subrc <> 0.\nENDIF.|.
                DATA(t227) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t227->has = abap_true.
                t227->value = t226.
                t223 = t227.
                DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t229.
                DATA(t232) = |TRY.\n    ...\n  CATCH zcx_abapgit_exception.\n    RETURN.\nENDT|.
                t232 = t232 && |RY.\nMESSAGE w125(zbar) WITH c_foo INTO message.\nSELECT SINGL|.
                t232 = t232 && |E * FROM tadir INTO @DATA(sdfs).\nIF sy-subrc <> 0.\nENDIF.\n\nD|.
                t232 = t232 && |ATA: BEGIN OF blah ##NEEDED,\n        test1 TYPE string,\n    |.
                t232 = t232 && |    test2 TYPE string,\n      END OF blah.|.
                DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t233->has = abap_true.
                t233->value = t232.
                t229 = t233.
                DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t235.
                DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t237.
                t200 = NEW zcl_lnt_irule_metadata( i_key = t201 i_title = t203 i_short_description = t205 i_bad_example = t223 i_good_example = t229 i_extended_information = t207 i_tags = t213 i_pragma = t235 i_pseudo_comment = t237 ).
                CREATE OBJECT t200->zlnt_view_ownkeys_b0e8086400eb.
                t200->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t239.
                t200->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t239 ).
                DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t240.
                IF t200->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t200->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t240 ).
                ENDIF.
                DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t241.
                IF t200->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t200->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t241 ).
                ENDIF.
                DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t242.
                IF t200->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t200->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t242 ).
                ENDIF.
                DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t243.
                IF t200->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t200->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t243 ).
                ENDIF.
                DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t244.
                IF t200->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t200->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t244 ).
                ENDIF.
                DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t245.
                IF t200->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t200->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t245 ).
                ENDIF.
                CREATE OBJECT t200->zlnt_json_ownkeys_70e5fd461788.
                t200->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t246) = |key|.
                DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t247.
                t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = t246 p1 = t247 ).
                DATA(t248) = |title|.
                DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t249.
                IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = t248 p1 = t249 ).
                ENDIF.
                DATA(t250) = |shortDescription|.
                DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t251.
                IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = t250 p1 = t251 ).
                ENDIF.
                DATA(t252) = |extendedInformation|.
                DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t253.
                IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = t252 p1 = t253 ).
                ENDIF.
                DATA(t254) = |tags|.
                DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t255.
                IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = t254 p1 = t255 ).
                ENDIF.
                DATA(t256) = |badExample|.
                DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t257.
                IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = t256 p1 = t257 ).
                ENDIF.
                DATA(t258) = |goodExample|.
                DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t259.
                IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = t258 p1 = t259 ).
                ENDIF.
                t199 = t200->key.
                DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t260 = me->conf->zlnt_view_read_sr_15c06369f827( ).
                DATA t262 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t262.
                DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t263.
                t195 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t20 i_message_26cb = t193 i_key = t199 i_severity = t260 i_fix = t262 i_alternative_fixes = t263 ).
                t2->load( ).
                APPEND t195 TO t2->items.
                t2->save( ).
                t4 = abap_false.
              ELSE.
                DATA(t267) = VALUE abap_bool( ).
                DATA t269 TYPE REF TO zcl_lnt_statement_node.
                CLEAR t269.
                DATA t271 TYPE REF TO zcl_lnt_statement_node.
                CLEAR t271.
                DATA t273 TYPE i.
                DATA(t275) = 1.
                t273 = t14 + t275.
                t273 = t273 + 1.
                DATA t276 TYPE REF TO object.
                CLEAR t276.
                t8->load( ).
                CLEAR t276.
                READ TABLE t8->items INDEX t273 INTO t276.
                DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t277.
                CLEAR t271.
                IF t276 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t277 ?= t276.
                  DATA t278 TYPE REF TO object.
                  t278 = t277->as_ref( ).
                  t271 ?= t278.
                ELSE.
                  t271 ?= t276.
                ENDIF.
                t269 = t271.
                t267 = me->contains_no_handler( i_statement = t20 i_next = t269 ).
                t4 = t267.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t280) = VALUE abap_bool( ).
      DATA(t281) = VALUE abap_bool( ).
      DATA t282 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t283) = CAST zcl_lnt_unncssry_prgm_cnf( me->gt_cn_in_sr_rl_un_pr_ts_un_prg( ) ).
      t282 = t283->zlnt_view_read_sr_07d686a5c487( ).
      DATA t284 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t284.
      DATA(t287) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t287->has = abap_true.
      t287->value = abap_true.
      t284 = t287.
      DATA(t289) = VALUE abap_bool( ).
      DATA(t290) = VALUE abap_bool( ).
      IF t282 IS BOUND.
        t289 = t282->has.
      ENDIF.
      IF t284 IS BOUND.
        t290 = t284->has.
      ENDIF.
      IF t289 = t290.
        IF t289 = abap_false.
          t281 = abap_true.
        ELSEIF t282->value = t284->value.
          t281 = abap_true.
        ENDIF.
      ENDIF.
      t280 = t281.
      IF t281 = abap_true.
        DATA t291 TYPE abap_bool.
        t291 = xsdbool( t6 = abap_true ).
        t280 = t291.
      ENDIF.
      IF t280 = abap_true.
      ELSE.
        DATA(t294) = VALUE i( ).
        DATA t295 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t295 = me->check_text( i_statement = t20 i_file = t1 ).
        DATA t298 TYPE REF TO zcl_lnt_issue.
        CLEAR t298.
        DATA t299 TYPE REF TO object.
        CLEAR t299.
        DATA(t300) = VALUE i( ).
        DO.
          t295->load( ).
          IF t300 >= lines( t295->items ).
            EXIT.
          ENDIF.
          CLEAR t299.
          READ TABLE t295->items INDEX t300 + 1 INTO t299.
          t300 = t300 + 1.
          DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t301.
          CLEAR t298.
          IF t299 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t301 ?= t299.
            DATA t302 TYPE REF TO object.
            t302 = t301->as_ref( ).
            t298 ?= t302.
          ELSE.
            t298 ?= t299.
          ENDIF.
          t2->load( ).
          APPEND t298 TO t2->items.
          t2->save( ).
        ENDDO.
        DATA t305 TYPE i.
        t2->load( ).
        t305 = lines( t2->items ).
        t294 = t305.
      ENDIF.
      DATA(t307) = VALUE i( ).
      DATA t308 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t308 = me->check_needed( i_statement = t20 i_file = t1 ).
      DATA t311 TYPE REF TO zcl_lnt_issue.
      CLEAR t311.
      DATA t312 TYPE REF TO object.
      CLEAR t312.
      DATA(t313) = VALUE i( ).
      DO.
        t308->load( ).
        IF t313 >= lines( t308->items ).
          EXIT.
        ENDIF.
        CLEAR t312.
        READ TABLE t308->items INDEX t313 + 1 INTO t312.
        t313 = t313 + 1.
        DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t314.
        CLEAR t311.
        IF t312 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t314 ?= t312.
          DATA t315 TYPE REF TO object.
          t315 = t314->as_ref( ).
          t311 ?= t315.
        ELSE.
          t311 ?= t312.
        ENDIF.
        t2->load( ).
        APPEND t311 TO t2->items.
        t2->save( ).
      ENDDO.
      DATA t318 TYPE i.
      t2->load( ).
      t318 = lines( t2->items ).
      t307 = t318.
      DATA t320 TYPE abap_bool.
      t320 = xsdbool( t6 = abap_false ).
      IF t320 = abap_true.
        DATA(t323) = VALUE i( ).
        DATA t324 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t324 = me->check_subrc( i_statement = t20 i_next = t28 i_file = t1 ).
        DATA t328 TYPE REF TO zcl_lnt_issue.
        CLEAR t328.
        DATA t329 TYPE REF TO object.
        CLEAR t329.
        DATA(t330) = VALUE i( ).
        DO.
          t324->load( ).
          IF t330 >= lines( t324->items ).
            EXIT.
          ENDIF.
          CLEAR t329.
          READ TABLE t324->items INDEX t330 + 1 INTO t329.
          t330 = t330 + 1.
          DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t331.
          CLEAR t328.
          IF t329 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t331 ?= t329.
            DATA t332 TYPE REF TO object.
            t332 = t331->as_ref( ).
            t328 ?= t332.
          ELSE.
            t328 ?= t329.
          ENDIF.
          t2->load( ).
          APPEND t328 TO t2->items.
          t2->save( ).
        ENDDO.
        DATA t335 TYPE i.
        t2->load( ).
        t335 = lines( t2->items ).
        t323 = t335.
      ENDIF.
      DATA t337 TYPE i.
      DATA(t339) = 1.
      t337 = t14 + t339.
      t14 = t337.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD check_text.
    DATA(t1) = i_statement.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t9 = t1->pragmas.
    t5 = t9.
    DATA t11 TYPE i.
    DATA t12 TYPE i.
    t5->load( ).
    t12 = lines( t5->items ).
    t11 = t12.
    DATA t14 TYPE i.
    t14 = 0.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    DO.
      DATA t18 TYPE abap_bool.
      t18 = xsdbool( t14 < t11 ).
      IF t18 = abap_false.
        EXIT.
      ENDIF.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t21.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t23.
      DATA t26 TYPE REF TO object.
      t26 = t5->get( p0 = t14 ).
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t23.
      IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t26.
        DATA t28 TYPE REF TO object.
        t28 = t27->as_ref( ).
        t23 ?= t28.
      ELSE.
        t23 ?= t26.
      ENDIF.
      t21 = t23.
      DATA(t29) = VALUE abap_bool( ).
      DATA t30 TYPE string.
      DATA t31 TYPE string.
      DATA t34 TYPE string.
      t34 = t21->str.
      t31 = t34.
      DATA(t36) = strlen( t31 ).
      t30 = t31.
      IF t30 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t30 TO UPPER CASE.
      ELSE.
        t30 = zlnt_runtime_uppe_91169605024d=>full( t30 ).
      ENDIF.
      DATA(t37) = |##NO_TEXT|.
      t29 = xsdbool( t30 = t37 ).
      IF t29 = abap_true.
        t16 = t21.
        EXIT.
      ENDIF.
      DATA t42 TYPE i.
      DATA(t44) = 1.
      t42 = t14 + t44.
      t14 = t42.
    ENDDO.
    t3 = t16.
    DATA(t46) = VALUE abap_bool( ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t46 = xsdbool( t3 IS INITIAL ).
    IF t46 = abap_true.
      DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t53.
      result = t53.
      RETURN.
    ENDIF.
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = VALUE abap_bool( ).
    DATA t57 TYPE REF TO zcl_lnt_expression_node.
    DATA(t59) = zlnt_runtime_desc_78196487750d=>zlnt_member_d140_ecb7e995244f.
    t57 = t1->find_first_expression( i_type_9913 = t59 ).
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t55 = xsdbool( t57 IS INITIAL ).
    t54 = t55.
    IF t55 = abap_true.
      DATA(t64) = VALUE abap_bool( ).
      DATA t66 TYPE REF TO zcl_lnt_expression_node.
      DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d278_cacef970a917.
      t66 = t1->find_first_expression( i_type_9913 = t68 ).
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t64 = xsdbool( t66 IS INITIAL ).
      t54 = t64.
    ENDIF.
    IF t54 = abap_true.
      DATA(t74) = |There is no text, NO_TEXT can be removed|.
      DATA t76 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t78 TYPE REF TO zcl_lnt_abstract_token.
      t78 = t3.
      t76 = zcl_lnt_edit_helper=>delete_token( i_file = t2 i_token = t78 ).
      DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t82.
      t81 = t82.
      DATA t84 TYPE REF TO zcl_lnt_issue.
      DATA t86 TYPE REF TO zcl_lnt_abstract_token.
      t86 = t3.
      DATA(t89) = VALUE string( ).
      DATA t90 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t91 TYPE string.
      t91 = |unnecessary_pragma|.
      DATA t93 TYPE string.
      t93 = |Unnecessary Pragma|.
      DATA t95 TYPE string.
      t95 = |Finds pragmas which can be removed|.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t100) = |* NO_HANDLER with handler\n\n* NEEDED without definition\n\n* NO|.
      t100 = t100 && |_TEXT without texts\n\n* SUBRC_OK where sy-subrc is checked\n\nN|.
      t100 = t100 && |O_HANDLER inside macros are not checked|.
      DATA(t101) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t101->has = abap_true.
      t101->value = t100.
      t97 = t101.
      DATA t103 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t108 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t108.
      t107 = t108.
      DATA(t110) = |SingleFile|.
      t107->load( ).
      APPEND t110 TO t107->items.
      t107->save( ).
      t103 = t107.
      DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t116) = |TRY.\n    ...\n  CATCH zcx_abapgit_exception ##NO_HANDLER.\n   |.
      t116 = t116 && | RETURN. " it has a handler\nENDTRY.\nMESSAGE w125(zbar) WITH |.
      t116 = t116 && |c_foo INTO message ##NEEDED ##NO_TEXT.\nSELECT SINGLE * FROM |.
      t116 = t116 && |tadir INTO @DATA(sdfs) ##SUBRC_OK.\nIF sy-subrc <> 0.\nENDIF.|.
      DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t117->has = abap_true.
      t117->value = t116.
      t113 = t117.
      DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t122) = |TRY.\n    ...\n  CATCH zcx_abapgit_exception.\n    RETURN.\nENDT|.
      t122 = t122 && |RY.\nMESSAGE w125(zbar) WITH c_foo INTO message.\nSELECT SINGL|.
      t122 = t122 && |E * FROM tadir INTO @DATA(sdfs).\nIF sy-subrc <> 0.\nENDIF.\n\nD|.
      t122 = t122 && |ATA: BEGIN OF blah ##NEEDED,\n        test1 TYPE string,\n    |.
      t122 = t122 && |    test2 TYPE string,\n      END OF blah.|.
      DATA(t123) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t123->has = abap_true.
      t123->value = t122.
      t119 = t123.
      DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t90 = NEW zcl_lnt_irule_metadata( i_key = t91 i_title = t93 i_short_description = t95 i_bad_example = t113 i_good_example = t119 i_extended_information = t97 i_tags = t103 i_pragma = t125 i_pseudo_comment = t127 ).
      CREATE OBJECT t90->zlnt_view_ownkeys_b0e8086400eb.
      t90->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t129 ).
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t130 ).
      ENDIF.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t131 ).
      ENDIF.
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t132 ).
      ENDIF.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t133 ).
      ENDIF.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t134 ).
      ENDIF.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t135 ).
      ENDIF.
      CREATE OBJECT t90->zlnt_json_ownkeys_70e5fd461788.
      t90->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t136) = |key|.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t136 p1 = t137 ).
      DATA(t138) = |title|.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t138 p1 = t139 ).
      ENDIF.
      DATA(t140) = |shortDescription|.
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t140 p1 = t141 ).
      ENDIF.
      DATA(t142) = |extendedInformation|.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t142 p1 = t143 ).
      ENDIF.
      DATA(t144) = |tags|.
      DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t144 p1 = t145 ).
      ENDIF.
      DATA(t146) = |badExample|.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t146 p1 = t147 ).
      ENDIF.
      DATA(t148) = |goodExample|.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t148 p1 = t149 ).
      ENDIF.
      t89 = t90->key.
      DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t151) = CAST zcl_lnt_unncssry_prgm_cnf( me->gt_cn_in_sr_rl_un_pr_ts_un_prg( ) ).
      t150 = t151->zlnt_view_read_sr_15c06369f827( ).
      DATA t152 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t152 = t76.
      t84 = zcl_lnt_issue=>at_token( i_file = t2 i_token = t86 i_message_26cb = t74 i_key = t89 i_severity = t150 i_fix = t152 ).
      t81->load( ).
      APPEND t84 TO t81->items.
      t81->save( ).
      result = t81.
      RETURN.
    ENDIF.
    DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t157.
    result = t157.

  ENDMETHOD.

  METHOD check_subrc.
    DATA(t2) = i_next.
    DATA(t3) = i_file.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t10 = i_statement->pragmas.
    t6 = t10.
    DATA t12 TYPE i.
    DATA t13 TYPE i.
    t6->load( ).
    t13 = lines( t6->items ).
    t12 = t13.
    DATA t15 TYPE i.
    t15 = 0.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DO.
      DATA t19 TYPE abap_bool.
      t19 = xsdbool( t15 < t12 ).
      IF t19 = abap_false.
        EXIT.
      ENDIF.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t22.
      DATA t24 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t24.
      DATA t27 TYPE REF TO object.
      t27 = t6->get( p0 = t15 ).
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      CLEAR t24.
      IF t27 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t28 ?= t27.
        DATA t29 TYPE REF TO object.
        t29 = t28->as_ref( ).
        t24 ?= t29.
      ELSE.
        t24 ?= t27.
      ENDIF.
      t22 = t24.
      DATA(t30) = VALUE abap_bool( ).
      DATA t31 TYPE string.
      DATA t32 TYPE string.
      DATA t35 TYPE string.
      t35 = t22->str.
      t32 = t35.
      DATA(t37) = strlen( t32 ).
      t31 = t32.
      IF t31 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t31 TO UPPER CASE.
      ELSE.
        t31 = zlnt_runtime_uppe_91169605024d=>full( t31 ).
      ENDIF.
      DATA(t38) = |##SUBRC_OK|.
      t30 = xsdbool( t31 = t38 ).
      IF t30 = abap_true.
        t17 = t22.
        EXIT.
      ENDIF.
      DATA t43 TYPE i.
      DATA(t45) = 1.
      t43 = t15 + t45.
      t15 = t43.
    ENDDO.
    t4 = t17.
    DATA(t47) = VALUE abap_bool( ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t47 = xsdbool( t4 IS INITIAL ).
    IF t47 = abap_true.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t54.
      result = t54.
      RETURN.
    ENDIF.
    DATA(t55) = VALUE string( ).
    DATA(t56) = VALUE string( ).
    DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t61 TYPE REF TO zcl_lnt_statement_node.
    t61 = t2.
    DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t64) = xsdbool( t61 IS INITIAL ).
    IF t64 = abap_true.
    ELSE.
      DATA t67 TYPE string.
      t67 = t61->concat_tokens( ).
      DATA(t69) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t69->has = abap_true.
      t69->value = t67.
      t63 = t69.
    ENDIF.
    t59 = t63.
    DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t71) = VALUE abap_bool( ).
    IF t59 IS INITIAL.
      t71 = abap_true.
    ELSEIF t59->has = abap_false.
      t71 = abap_true.
    ENDIF.
    IF t71 = abap_true.
    ELSE.
      DATA t74 TYPE string.
      DATA t75 TYPE string.
      t75 = t59->value.
      DATA(t77) = strlen( t75 ).
      t74 = t75.
      IF t74 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t74 TO UPPER CASE.
      ELSE.
        t74 = zlnt_runtime_uppe_91169605024d=>full( t74 ).
      ENDIF.
      DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t78->has = abap_true.
      t78->value = t74.
      t70 = t78.
    ENDIF.
    t57 = t70.
    DATA(t79) = VALUE string( ).
    DATA(t80) = VALUE abap_bool( ).
    IF t57 IS BOUND.
      IF t57->has = abap_true.
        t80 = xsdbool( strlen( t57->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t80 = abap_true.
      DATA t82 TYPE string.
      t82 = t57->value.
      t79 = t82.
    ELSE.
      t79 = ||.
    ENDIF.
    t56 = t79.
    t55 = t56.
    DATA(t85) = VALUE abap_bool( ).
    DATA(t86) = VALUE i( ).
    DATA(t88) = | SY-SUBRC|.
    DATA(t89) = strlen( t55 ).
    IF t88 IS INITIAL.
      t86 = 0.
    ELSE.
      FIND t88 IN t55 MATCH OFFSET t86.
      IF sy-subrc <> 0.
        t86 = -1.
      ENDIF.
    ENDIF.
    DATA(t90) = 0.
    t85 = xsdbool( t86 >= t90 ).
    IF t85 = abap_true.
      DATA(t92) = |SUBRC_OK can be removed as sy-subrc is checked|.
      DATA t94 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t96 TYPE REF TO zcl_lnt_abstract_token.
      t96 = t4.
      t94 = zcl_lnt_edit_helper=>delete_token( i_file = t3 i_token = t96 ).
      DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t100.
      t99 = t100.
      DATA t102 TYPE REF TO zcl_lnt_issue.
      DATA t104 TYPE REF TO zcl_lnt_abstract_token.
      t104 = t4.
      DATA(t107) = VALUE string( ).
      DATA t108 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t109 TYPE string.
      t109 = |unnecessary_pragma|.
      DATA t111 TYPE string.
      t111 = |Unnecessary Pragma|.
      DATA t113 TYPE string.
      t113 = |Finds pragmas which can be removed|.
      DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t118) = |* NO_HANDLER with handler\n\n* NEEDED without definition\n\n* NO|.
      t118 = t118 && |_TEXT without texts\n\n* SUBRC_OK where sy-subrc is checked\n\nN|.
      t118 = t118 && |O_HANDLER inside macros are not checked|.
      DATA(t119) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t119->has = abap_true.
      t119->value = t118.
      t115 = t119.
      DATA t121 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t125 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t126.
      t125 = t126.
      DATA(t128) = |SingleFile|.
      t125->load( ).
      APPEND t128 TO t125->items.
      t125->save( ).
      t121 = t125.
      DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t134) = |TRY.\n    ...\n  CATCH zcx_abapgit_exception ##NO_HANDLER.\n   |.
      t134 = t134 && | RETURN. " it has a handler\nENDTRY.\nMESSAGE w125(zbar) WITH |.
      t134 = t134 && |c_foo INTO message ##NEEDED ##NO_TEXT.\nSELECT SINGLE * FROM |.
      t134 = t134 && |tadir INTO @DATA(sdfs) ##SUBRC_OK.\nIF sy-subrc <> 0.\nENDIF.|.
      DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t135->has = abap_true.
      t135->value = t134.
      t131 = t135.
      DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t140) = |TRY.\n    ...\n  CATCH zcx_abapgit_exception.\n    RETURN.\nENDT|.
      t140 = t140 && |RY.\nMESSAGE w125(zbar) WITH c_foo INTO message.\nSELECT SINGL|.
      t140 = t140 && |E * FROM tadir INTO @DATA(sdfs).\nIF sy-subrc <> 0.\nENDIF.\n\nD|.
      t140 = t140 && |ATA: BEGIN OF blah ##NEEDED,\n        test1 TYPE string,\n    |.
      t140 = t140 && |    test2 TYPE string,\n      END OF blah.|.
      DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t141->has = abap_true.
      t141->value = t140.
      t137 = t141.
      DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t108 = NEW zcl_lnt_irule_metadata( i_key = t109 i_title = t111 i_short_description = t113 i_bad_example = t131 i_good_example = t137 i_extended_information = t115 i_tags = t121 i_pragma = t143 i_pseudo_comment = t145 ).
      CREATE OBJECT t108->zlnt_view_ownkeys_b0e8086400eb.
      t108->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t147 ).
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t148 ).
      ENDIF.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t149 ).
      ENDIF.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t150 ).
      ENDIF.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t151 ).
      ENDIF.
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t152 ).
      ENDIF.
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t153 ).
      ENDIF.
      CREATE OBJECT t108->zlnt_json_ownkeys_70e5fd461788.
      t108->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t154) = |key|.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
      DATA(t156) = |title|.
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
      ENDIF.
      DATA(t158) = |shortDescription|.
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
      ENDIF.
      DATA(t160) = |extendedInformation|.
      DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = t160 p1 = t161 ).
      ENDIF.
      DATA(t162) = |tags|.
      DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = t162 p1 = t163 ).
      ENDIF.
      DATA(t164) = |badExample|.
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = t164 p1 = t165 ).
      ENDIF.
      DATA(t166) = |goodExample|.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
      ENDIF.
      t107 = t108->key.
      DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t169) = CAST zcl_lnt_unncssry_prgm_cnf( me->gt_cn_in_sr_rl_un_pr_ts_un_prg( ) ).
      t168 = t169->zlnt_view_read_sr_15c06369f827( ).
      DATA t170 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t170 = t94.
      t102 = zcl_lnt_issue=>at_token( i_file = t3 i_token = t104 i_message_26cb = t92 i_key = t107 i_severity = t168 i_fix = t170 ).
      t99->load( ).
      APPEND t102 TO t99->items.
      t99->save( ).
      result = t99.
      RETURN.
    ENDIF.
    DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t175.
    result = t175.

  ENDMETHOD.

  METHOD check_needed.
    DATA(t1) = i_statement.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t9 = t1->pragmas.
    t5 = t9.
    DATA t11 TYPE i.
    DATA t12 TYPE i.
    t5->load( ).
    t12 = lines( t5->items ).
    t11 = t12.
    DATA t14 TYPE i.
    t14 = 0.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    DO.
      DATA t18 TYPE abap_bool.
      t18 = xsdbool( t14 < t11 ).
      IF t18 = abap_false.
        EXIT.
      ENDIF.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t21.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t23.
      DATA t26 TYPE REF TO object.
      t26 = t5->get( p0 = t14 ).
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t23.
      IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t26.
        DATA t28 TYPE REF TO object.
        t28 = t27->as_ref( ).
        t23 ?= t28.
      ELSE.
        t23 ?= t26.
      ENDIF.
      t21 = t23.
      DATA(t29) = VALUE abap_bool( ).
      DATA t30 TYPE string.
      DATA t31 TYPE string.
      DATA t34 TYPE string.
      t34 = t21->str.
      t31 = t34.
      DATA(t36) = strlen( t31 ).
      t30 = t31.
      IF t30 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t30 TO UPPER CASE.
      ELSE.
        t30 = zlnt_runtime_uppe_91169605024d=>full( t30 ).
      ENDIF.
      DATA(t37) = |##NEEDED|.
      t29 = xsdbool( t30 = t37 ).
      IF t29 = abap_true.
        t16 = t21.
        EXIT.
      ENDIF.
      DATA t42 TYPE i.
      DATA(t44) = 1.
      t42 = t14 + t44.
      t14 = t42.
    ENDDO.
    t3 = t16.
    DATA(t46) = VALUE abap_bool( ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t46 = xsdbool( t3 IS INITIAL ).
    IF t46 = abap_true.
      DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t53.
      result = t53.
      RETURN.
    ENDIF.
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = VALUE abap_bool( ).
    DATA(t56) = VALUE abap_bool( ).
    DATA(t57) = VALUE abap_bool( ).
    DATA(t58) = VALUE abap_bool( ).
    DATA(t59) = VALUE abap_bool( ).
    DATA(t60) = VALUE abap_bool( ).
    DATA(t61) = VALUE abap_bool( ).
    DATA(t62) = VALUE abap_bool( ).
    DATA(t63) = VALUE abap_bool( ).
    DATA(t64) = VALUE abap_bool( ).
    DATA(t65) = VALUE abap_bool( ).
    DATA(t66) = VALUE abap_bool( ).
    DATA(t67) = VALUE abap_bool( ).
    DATA(t68) = VALUE abap_bool( ).
    DATA(t69) = VALUE abap_bool( ).
    DATA(t70) = VALUE abap_bool( ).
    DATA t72 TYPE REF TO zcl_lnt_expression_node.
    DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
    t72 = t1->find_first_expression( i_type_9913 = t74 ).
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t70 = xsdbool( t72 IS INITIAL ).
    t69 = t70.
    IF t70 = abap_true.
      DATA t79 TYPE abap_bool.
      DATA t80 TYPE abap_bool.
      DATA t81 TYPE REF TO zif_lnt_statement.
      t81 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t80 = xsdbool( t81 IS BOUND AND t81 IS INSTANCE OF zcl_lnt_st_parameter ).
      t79 = xsdbool( t80 = abap_false ).
      t69 = t79.
    ENDIF.
    t68 = t69.
    IF t69 = abap_true.
      DATA t83 TYPE abap_bool.
      DATA t84 TYPE abap_bool.
      DATA t85 TYPE REF TO zif_lnt_statement.
      t85 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t84 = xsdbool( t85 IS BOUND AND t85 IS INSTANCE OF zcl_lnt_st_data ).
      t83 = xsdbool( t84 = abap_false ).
      t68 = t83.
    ENDIF.
    t67 = t68.
    IF t68 = abap_true.
      DATA t87 TYPE abap_bool.
      DATA t88 TYPE abap_bool.
      DATA t89 TYPE REF TO zif_lnt_statement.
      t89 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t88 = xsdbool( t89 IS BOUND AND t89 IS INSTANCE OF zcl_lnt_data_begin ).
      t87 = xsdbool( t88 = abap_false ).
      t67 = t87.
    ENDIF.
    t66 = t67.
    IF t67 = abap_true.
      DATA t91 TYPE abap_bool.
      DATA t92 TYPE abap_bool.
      DATA t93 TYPE REF TO zif_lnt_statement.
      t93 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t92 = xsdbool( t93 IS BOUND AND t93 IS INSTANCE OF zcl_lnt_st_class_data ).
      t91 = xsdbool( t92 = abap_false ).
      t66 = t91.
    ENDIF.
    t65 = t66.
    IF t66 = abap_true.
      DATA t95 TYPE abap_bool.
      DATA t96 TYPE abap_bool.
      DATA t97 TYPE REF TO zif_lnt_statement.
      t97 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t96 = xsdbool( t97 IS BOUND AND t97 IS INSTANCE OF zcl_lnt_class_data_begin ).
      t95 = xsdbool( t96 = abap_false ).
      t65 = t95.
    ENDIF.
    t64 = t65.
    IF t65 = abap_true.
      DATA t99 TYPE abap_bool.
      DATA t100 TYPE abap_bool.
      DATA t101 TYPE REF TO zif_lnt_statement.
      t101 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t100 = xsdbool( t101 IS BOUND AND t101 IS INSTANCE OF zcl_lnt_st_statem_type ).
      t99 = xsdbool( t100 = abap_false ).
      t64 = t99.
    ENDIF.
    t63 = t64.
    IF t64 = abap_true.
      DATA t103 TYPE abap_bool.
      DATA t104 TYPE abap_bool.
      DATA t105 TYPE REF TO zif_lnt_statement.
      t105 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t104 = xsdbool( t105 IS BOUND AND t105 IS INSTANCE OF zcl_lnt_st_form ).
      t103 = xsdbool( t104 = abap_false ).
      t63 = t103.
    ENDIF.
    t62 = t63.
    IF t63 = abap_true.
      DATA t107 TYPE abap_bool.
      DATA t108 TYPE abap_bool.
      DATA t109 TYPE REF TO zif_lnt_statement.
      t109 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t108 = xsdbool( t109 IS BOUND AND t109 IS INSTANCE OF zcl_lnt_st_tables ).
      t107 = xsdbool( t108 = abap_false ).
      t62 = t107.
    ENDIF.
    t61 = t62.
    IF t62 = abap_true.
      DATA t111 TYPE abap_bool.
      DATA t112 TYPE abap_bool.
      DATA t113 TYPE REF TO zif_lnt_statement.
      t113 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t112 = xsdbool( t113 IS BOUND AND t113 IS INSTANCE OF zcl_lnt_type_begin ).
      t111 = xsdbool( t112 = abap_false ).
      t61 = t111.
    ENDIF.
    t60 = t61.
    IF t61 = abap_true.
      DATA t115 TYPE abap_bool.
      DATA t116 TYPE abap_bool.
      DATA t117 TYPE REF TO zif_lnt_statement.
      t117 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t116 = xsdbool( t117 IS BOUND AND t117 IS INSTANCE OF zcl_lnt_st_statem_constant ).
      t115 = xsdbool( t116 = abap_false ).
      t60 = t115.
    ENDIF.
    t59 = t60.
    IF t60 = abap_true.
      DATA t119 TYPE abap_bool.
      DATA t120 TYPE abap_bool.
      DATA t121 TYPE REF TO zif_lnt_statement.
      t121 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t120 = xsdbool( t121 IS BOUND AND t121 IS INSTANCE OF zcl_lnt_constant_begin ).
      t119 = xsdbool( t120 = abap_false ).
      t59 = t119.
    ENDIF.
    t58 = t59.
    IF t59 = abap_true.
      DATA t123 TYPE abap_bool.
      DATA t124 TYPE abap_bool.
      DATA t125 TYPE REF TO zif_lnt_statement.
      t125 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t124 = xsdbool( t125 IS BOUND AND t125 IS INSTANCE OF zcl_lnt_st_type_enum ).
      t123 = xsdbool( t124 = abap_false ).
      t58 = t123.
    ENDIF.
    t57 = t58.
    IF t58 = abap_true.
      DATA t127 TYPE abap_bool.
      DATA t128 TYPE abap_bool.
      DATA t129 TYPE REF TO zif_lnt_statement.
      t129 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t128 = xsdbool( t129 IS BOUND AND t129 IS INSTANCE OF zcl_lnt_type_enum_begin ).
      t127 = xsdbool( t128 = abap_false ).
      t57 = t127.
    ENDIF.
    t56 = t57.
    IF t57 = abap_true.
      DATA t131 TYPE abap_bool.
      DATA t132 TYPE abap_bool.
      DATA t133 TYPE REF TO zif_lnt_statement.
      t133 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t132 = xsdbool( t133 IS BOUND AND t133 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ).
      t131 = xsdbool( t132 = abap_false ).
      t56 = t131.
    ENDIF.
    t55 = t56.
    IF t56 = abap_true.
      DATA t135 TYPE abap_bool.
      DATA t136 TYPE abap_bool.
      DATA t137 TYPE REF TO zif_lnt_statement.
      t137 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t136 = xsdbool( t137 IS BOUND AND t137 IS INSTANCE OF zcl_lnt_method_def ).
      t135 = xsdbool( t136 = abap_false ).
      t55 = t135.
    ENDIF.
    t54 = t55.
    IF t55 = abap_true.
      DATA(t139) = VALUE abap_bool( ).
      DATA t141 TYPE REF TO zcl_lnt_expression_node.
      DATA(t143) = zlnt_runtime_desc_78196487750d=>zlnt_member_d193_7f7e5054ef0a.
      t141 = t1->find_first_expression( i_type_9913 = t143 ).
      DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t139 = xsdbool( t141 IS INITIAL ).
      t54 = t139.
    ENDIF.
    IF t54 = abap_true.
      DATA(t149) = |There is no data definition, NEEDED can be removed|.
      DATA t151 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t153 TYPE REF TO zcl_lnt_abstract_token.
      t153 = t3.
      t151 = zcl_lnt_edit_helper=>delete_token( i_file = t2 i_token = t153 ).
      DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t157.
      t156 = t157.
      DATA t159 TYPE REF TO zcl_lnt_issue.
      DATA t161 TYPE REF TO zcl_lnt_abstract_token.
      t161 = t3.
      DATA(t164) = VALUE string( ).
      DATA t165 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t166 TYPE string.
      t166 = |unnecessary_pragma|.
      DATA t168 TYPE string.
      t168 = |Unnecessary Pragma|.
      DATA t170 TYPE string.
      t170 = |Finds pragmas which can be removed|.
      DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t175) = |* NO_HANDLER with handler\n\n* NEEDED without definition\n\n* NO|.
      t175 = t175 && |_TEXT without texts\n\n* SUBRC_OK where sy-subrc is checked\n\nN|.
      t175 = t175 && |O_HANDLER inside macros are not checked|.
      DATA(t176) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t176->has = abap_true.
      t176->value = t175.
      t172 = t176.
      DATA t178 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t182 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t183 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t183.
      t182 = t183.
      DATA(t185) = |SingleFile|.
      t182->load( ).
      APPEND t185 TO t182->items.
      t182->save( ).
      t178 = t182.
      DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t191) = |TRY.\n    ...\n  CATCH zcx_abapgit_exception ##NO_HANDLER.\n   |.
      t191 = t191 && | RETURN. " it has a handler\nENDTRY.\nMESSAGE w125(zbar) WITH |.
      t191 = t191 && |c_foo INTO message ##NEEDED ##NO_TEXT.\nSELECT SINGLE * FROM |.
      t191 = t191 && |tadir INTO @DATA(sdfs) ##SUBRC_OK.\nIF sy-subrc <> 0.\nENDIF.|.
      DATA(t192) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t192->has = abap_true.
      t192->value = t191.
      t188 = t192.
      DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t197) = |TRY.\n    ...\n  CATCH zcx_abapgit_exception.\n    RETURN.\nENDT|.
      t197 = t197 && |RY.\nMESSAGE w125(zbar) WITH c_foo INTO message.\nSELECT SINGL|.
      t197 = t197 && |E * FROM tadir INTO @DATA(sdfs).\nIF sy-subrc <> 0.\nENDIF.\n\nD|.
      t197 = t197 && |ATA: BEGIN OF blah ##NEEDED,\n        test1 TYPE string,\n    |.
      t197 = t197 && |    test2 TYPE string,\n      END OF blah.|.
      DATA(t198) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t198->has = abap_true.
      t198->value = t197.
      t194 = t198.
      DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t165 = NEW zcl_lnt_irule_metadata( i_key = t166 i_title = t168 i_short_description = t170 i_bad_example = t188 i_good_example = t194 i_extended_information = t172 i_tags = t178 i_pragma = t200 i_pseudo_comment = t202 ).
      CREATE OBJECT t165->zlnt_view_ownkeys_b0e8086400eb.
      t165->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t165->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t204 ).
      DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t165->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t165->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t205 ).
      ENDIF.
      DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t165->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t165->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t206 ).
      ENDIF.
      DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t165->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t165->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t207 ).
      ENDIF.
      DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t165->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t165->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t208 ).
      ENDIF.
      DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t165->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t165->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t209 ).
      ENDIF.
      DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t165->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t165->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t210 ).
      ENDIF.
      CREATE OBJECT t165->zlnt_json_ownkeys_70e5fd461788.
      t165->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t211) = |key|.
      DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t165->zlnt_json_ownkeys_70e5fd461788->put( p0 = t211 p1 = t212 ).
      DATA(t213) = |title|.
      DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t165->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t165->zlnt_json_ownkeys_70e5fd461788->put( p0 = t213 p1 = t214 ).
      ENDIF.
      DATA(t215) = |shortDescription|.
      DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t165->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t165->zlnt_json_ownkeys_70e5fd461788->put( p0 = t215 p1 = t216 ).
      ENDIF.
      DATA(t217) = |extendedInformation|.
      DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t165->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t165->zlnt_json_ownkeys_70e5fd461788->put( p0 = t217 p1 = t218 ).
      ENDIF.
      DATA(t219) = |tags|.
      DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t165->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t165->zlnt_json_ownkeys_70e5fd461788->put( p0 = t219 p1 = t220 ).
      ENDIF.
      DATA(t221) = |badExample|.
      DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t165->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t165->zlnt_json_ownkeys_70e5fd461788->put( p0 = t221 p1 = t222 ).
      ENDIF.
      DATA(t223) = |goodExample|.
      DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t165->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t165->zlnt_json_ownkeys_70e5fd461788->put( p0 = t223 p1 = t224 ).
      ENDIF.
      t164 = t165->key.
      DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t226) = CAST zcl_lnt_unncssry_prgm_cnf( me->gt_cn_in_sr_rl_un_pr_ts_un_prg( ) ).
      t225 = t226->zlnt_view_read_sr_15c06369f827( ).
      DATA t227 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t227 = t151.
      t159 = zcl_lnt_issue=>at_token( i_file = t2 i_token = t161 i_message_26cb = t149 i_key = t164 i_severity = t225 i_fix = t227 ).
      t156->load( ).
      APPEND t159 TO t156->items.
      t156->save( ).
      result = t156.
      RETURN.
    ENDIF.
    DATA t232 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t232.
    result = t232.

  ENDMETHOD.

  METHOD contains_no_handler.
    DATA(t1) = i_statement.
    DATA(t2) = i_next.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = t1->pragmas.
    t3 = t6.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t3->load( ).
      IF t10 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t3->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE string.
      DATA t15 TYPE string.
      DATA t18 TYPE string.
      t18 = t8->str.
      t15 = t18.
      DATA(t20) = strlen( t15 ).
      t14 = t15.
      IF t14 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t14 TO UPPER CASE.
      ELSE.
        t14 = zlnt_runtime_uppe_91169605024d=>full( t14 ).
      ENDIF.
      DATA(t21) = |##NO_HANDLER|.
      t13 = xsdbool( t14 = t21 ).
      IF t13 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = VALUE abap_bool( ).
    DATA t25 TYPE abap_bool.
    DATA t26 TYPE abap_bool.
    t26 = xsdbool( t2 IS BOUND ).
    t25 = t26.
    IF t26 = abap_true.
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE REF TO zif_lnt_statement.
      DATA t30 TYPE REF TO zcl_lnt_statement_node.
      t30 = t2.
      t29 = t30->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_st_comment ).
      t25 = t28.
    ENDIF.
    t24 = t25.
    IF t25 = abap_true.
      DATA t32 TYPE abap_bool.
      DATA t33 TYPE abap_bool.
      DATA t34 TYPE REF TO zif_lnt_statement.
      t34 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_macro_content ).
      t32 = xsdbool( t33 = abap_false ).
      t24 = t32.
    ENDIF.
    t23 = t24.
    IF t24 = abap_true.
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = VALUE i( ).
      DATA t38 TYPE string.
      DATA t39 TYPE string.
      DATA t40 TYPE REF TO zcl_lnt_statement_node.
      t40 = t2.
      t39 = t40->concat_tokens( ).
      DATA(t42) = strlen( t39 ).
      t38 = t39.
      IF t38 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t38 TO UPPER CASE.
      ELSE.
        t38 = zlnt_runtime_uppe_91169605024d=>full( t38 ).
      ENDIF.
      DATA(t43) = |#EC NO_HANDLER|.
      DATA(t44) = strlen( t38 ).
      IF t43 IS INITIAL.
        t37 = 0.
      ELSE.
        FIND t43 IN t38 MATCH OFFSET t37.
        IF sy-subrc <> 0.
          t37 = -1.
        ENDIF.
      ENDIF.
      DATA(t45) = 0.
      t36 = xsdbool( t37 >= t45 ).
      t23 = t36.
    ENDIF.
    IF t23 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    result = abap_false.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_unncssry_prgm_cnf( me->gt_cn_in_sr_rl_un_pr_ts_un_prg( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_unncssry_prgm_cnf( me->gt_cn_in_sr_rl_un_pr_ts_un_prg( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_unncssry_prgm_cnf.
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
        t1 = NEW zcl_lnt_unncssry_prgm_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_un_pr_ts_un_prg( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_un_pr_ts_un_prg( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1744_4383d7e77ea8.
  ENDMETHOD.
ENDCLASS.
