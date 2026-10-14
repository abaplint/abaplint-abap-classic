* TS: src/abap/3_structures/structure_parser.ts:13:1 StructureParser
CLASS zcl_lnt_structure_parser DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA singletons TYPE REF TO zlnt_runtime_map__05e804ab454e.
    CLASS-METHODS run IMPORTING i_input_967e TYPE REF TO zcl_lnt_istatement_result RETURNING VALUE(result) TYPE REF TO zcl_lnt_istructure_result.
    CLASS-METHODS find_structure_for_file IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_structure.
    CLASS-METHODS run_file IMPORTING i_structure TYPE REF TO zif_lnt_structure i_file TYPE REF TO zif_lnt_file i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zcl_lnt_istructure_result.
    CLASS-DATA zlnt_builtin_init_4f5bb8fa61e1 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_869df39a38f2.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_structure_parser IMPLEMENTATION.
  METHOD run.
    IF zcl_lnt_structure_parser=>zlnt_builtin_init_4f5bb8fa61e1 = abap_false.
      zcl_lnt_structure_parser=>zlnt_builtin_init_869df39a38f2( ).
    ENDIF.
    DATA(t1) = CAST zcl_lnt_istatement_result( i_input_967e ).
    DATA t2 TYPE REF TO zif_lnt_structure.
    DATA t3 TYPE REF TO zif_lnt_structure.
    DATA t4 TYPE string.
    DATA t5 TYPE REF TO zif_lnt_file.
    DATA(t6) = CAST zcl_lnt_istatement_result( t1 ).
    t5 = t6->file.
    t4 = t5->get_filename( ).
    t3 = zcl_lnt_structure_parser=>find_structure_for_file( i_filename = t4 ).
    t2 = t3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = CAST zcl_lnt_istatement_result( t1 ).
    t9 = t10->statements.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t11.
    DATA t12 TYPE REF TO object.
    CLEAR t12.
    LOOP AT t9->items INTO t12.
      t11 ?= t12.
      DATA t13 TYPE REF TO zif_lnt_statement.
      DATA t14 TYPE REF TO zif_lnt_statement.
      DATA(t15) = CAST zcl_lnt_statement_node( t11 ).
      t14 = t15->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t13 = t14.
      DATA(t16) = VALUE abap_bool( ).
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE abap_bool.
      DATA(t19) = CAST zif_lnt_statement( t13 ).
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_comment ).
      t17 = t18.
      IF t18 = abap_false.
        DATA t20 TYPE abap_bool.
        DATA(t21) = CAST zif_lnt_statement( t13 ).
        t20 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_empty ).
        t17 = t20.
      ENDIF.
      t16 = t17.
      IF t17 = abap_false.
        DATA t22 TYPE abap_bool.
        DATA(t23) = CAST zif_lnt_statement( t13 ).
        t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_unknown ).
        t16 = t22.
      ENDIF.
      IF t16 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
      DATA(t25) = CAST zcl_lnt_statement_node( t11 ).
      APPEND t25 TO t24->items.
    ENDLOOP.
    DATA t26 TYPE REF TO zcl_lnt_istructure_result.
    DATA(t27) = CAST zif_lnt_structure( t2 ).
    DATA t28 TYPE REF TO zif_lnt_file.
    DATA(t29) = CAST zcl_lnt_istatement_result( t1 ).
    t28 = t29->file.
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    t26 = zcl_lnt_structure_parser=>run_file( i_structure = t27 i_file = t28 i_statements = t30 ).
    result = t26.

  ENDMETHOD.

  METHOD find_structure_for_file.
    IF zcl_lnt_structure_parser=>zlnt_builtin_init_4f5bb8fa61e1 = abap_false.
      zcl_lnt_structure_parser=>zlnt_builtin_init_869df39a38f2( ).
    ENDIF.
    DATA(t1) = i_filename.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = t1.
    DATA(t4) = |.clas.abap|.
    DATA(t5) = strlen( t3 ).
    DATA t6 TYPE i.
    DATA(t7) = VALUE i( ).
    DATA(t8) = VALUE string( ).
    t6 = strlen( t4 ).
    IF t6 = 0.
      t2 = abap_true.
    ELSEIF t6 <= t5.
      t7 = 0.
      t7 = t5 - t6.
      t8 = t3+t7(t6).
      IF t8 = t4.
        t2 = abap_true.
      ENDIF.
    ENDIF.
    IF t2 = abap_true.
      DATA(t9) = NEW zcl_lnt_sr_class_global( ).
      result = t9.
      RETURN.
    ELSE.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = t1.
      DATA(t12) = |.intf.abap|.
      DATA(t13) = strlen( t11 ).
      DATA t14 TYPE i.
      DATA(t15) = VALUE i( ).
      DATA(t16) = VALUE string( ).
      t14 = strlen( t12 ).
      IF t14 = 0.
        t10 = abap_true.
      ELSEIF t14 <= t13.
        t15 = 0.
        t15 = t13 - t14.
        t16 = t11+t15(t14).
        IF t16 = t12.
          t10 = abap_true.
        ENDIF.
      ENDIF.
      IF t10 = abap_true.
        DATA(t17) = NEW zcl_lnt_interface_global( ).
        result = t17.
        RETURN.
      ELSE.
        DATA t18 TYPE abap_bool.
        DATA t19 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t19.
        DATA(t20) = `\.screen\_\d+\.abap$`.
        DATA(t21) = `\.screen\_[0-9]+\.abap$`.
        DATA(t22) = |i|.
        CREATE OBJECT t19 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t21 flags = t22.
        t19->source = t20.
        DATA(t23) = t1.
        t18 = t19->test( p0 = t23 ).
        IF t18 = abap_true.
          DATA(t24) = NEW zcl_lnt_dynpro_logic( ).
          result = t24.
          RETURN.
        ELSE.
          DATA(t25) = NEW zcl_lnt_any( ).
          result = t25.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD run_file.
    IF zcl_lnt_structure_parser=>zlnt_builtin_init_4f5bb8fa61e1 = abap_false.
      zcl_lnt_structure_parser=>zlnt_builtin_init_869df39a38f2( ).
    ENDIF.
    DATA(t1) = CAST zif_lnt_structure( i_structure ).
    DATA(t2) = CAST zif_lnt_file( i_file ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_statements ).
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    DATA(t6) = CAST zif_lnt_structure( t1 ).
    t5 = NEW zcl_lnt_structure_node( i_structure = t6 ).
    t4 = t5.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zif_lnt_structure_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zif_lnt_structure_runnable.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_map__05e804ab454e.
    CLEAR t10.
    IF zcl_lnt_structure_parser=>zlnt_builtin_init_4f5bb8fa61e1 = abap_false.
      zcl_lnt_structure_parser=>zlnt_builtin_init_869df39a38f2( ).
    ENDIF.
    t10 = zcl_lnt_structure_parser=>singletons.
    DATA t11 TYPE string.
    DATA t12 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t13) = CAST zif_lnt_structure( t1 ).
    t12 = t13->zlnt_builtin_clas_3f891b097658( ).
    t11 = t12->name.
    t9 = t10->get( p0 = t11 ).
    t8 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    t14 = t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = CAST zif_lnt_structure_runnable( t8 ).
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    t7 = t16.
    IF t7 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_map__05e804ab454e.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_map__05e804ab454e.
      CLEAR t19.
      IF zcl_lnt_structure_parser=>zlnt_builtin_init_4f5bb8fa61e1 = abap_false.
        zcl_lnt_structure_parser=>zlnt_builtin_init_869df39a38f2( ).
      ENDIF.
      t19 = zcl_lnt_structure_parser=>singletons.
      DATA t20 TYPE string.
      DATA t21 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      DATA(t22) = CAST zif_lnt_structure( t1 ).
      t21 = t22->zlnt_builtin_clas_3f891b097658( ).
      t20 = t21->name.
      DATA t23 TYPE REF TO zif_lnt_structure_runnable.
      DATA(t24) = CAST zif_lnt_structure( t1 ).
      t23 = t24->get_matcher( ).
      t18 = t19->set( p0 = t20 p1 = t23 ).
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_imatch.
    CLEAR t25.
    DATA t26 TYPE REF TO zcl_lnt_imatch.
    CLEAR t26.
    DATA t27 TYPE REF TO zif_lnt_structure_runnable.
    CLEAR t27.
    DATA t28 TYPE REF TO zif_lnt_structure_runnable.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_map__05e804ab454e.
    CLEAR t29.
    IF zcl_lnt_structure_parser=>zlnt_builtin_init_4f5bb8fa61e1 = abap_false.
      zcl_lnt_structure_parser=>zlnt_builtin_init_869df39a38f2( ).
    ENDIF.
    t29 = zcl_lnt_structure_parser=>singletons.
    DATA t30 TYPE string.
    DATA t31 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t32) = CAST zif_lnt_structure( t1 ).
    t31 = t32->zlnt_builtin_clas_3f891b097658( ).
    t30 = t31->name.
    t28 = t29->get( p0 = t30 ).
    t27 = t28.
    DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    DATA(t34) = CAST zcl_lnt_structure_node( t4 ).
    t26 = t27->run( i_statements = t33 i_parent = t34 ).
    t25 = t26.
    DATA t35 TYPE abap_bool.
    DATA(t36) = CAST zcl_lnt_imatch( t25 ).
    t35 = t36->error.
    IF t35 = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_issue.
      CLEAR t37.
      DATA t38 TYPE REF TO zcl_lnt_issue.
      CLEAR t38.
      DATA(t39) = CAST zif_lnt_file( t2 ).
      DATA t40 TYPE REF TO zcl_lnt_position.
      DATA(t41) = CONV int8( 1 ).
      DATA(t42) = CONV int8( 1 ).
      t40 = NEW zcl_lnt_position( i_row = t41 i_col = t42 ).
      DATA t43 TYPE string.
      DATA(t44) = CAST zcl_lnt_imatch( t25 ).
      t43 = t44->error_description.
      DATA(t45) = |structure|.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA(t47) = abap_true.
      IF t47 = abap_true.
        DATA(t48) = |Error|.
        DATA(t49) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t49->has = abap_true.
        t49->value = t48.
        t46 = t49.
      ELSE.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t50.
        t46 = t50.
      ENDIF.
      DATA t51 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t51.
      t38 = zcl_lnt_issue=>at_position( i_file = t39 i_start = t40 i_message_26cb = t43 i_key = t45 i_severity = t46 i_fix = t51 ).
      t37 = t38.
      DATA t52 TYPE REF TO zcl_lnt_istructure_result.
      DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t55.
      t54 = t55.
      DATA(t56) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
      DATA(t57) = CAST zcl_lnt_issue( t37 ).
      APPEND t57 TO t56->items.
      DATA(t58) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
      t53 = t58.
      DATA t59 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t59.
      t52 = NEW zcl_lnt_istructure_result( i_issues = t53 i_node = t59 ).
      result = t52.
      RETURN.
    ENDIF.
    DATA t60 TYPE abap_bool.
    DATA t61 TYPE i.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t63) = CAST zcl_lnt_imatch( t25 ).
    t62 = t63->unmatched.
    t61 = lines( t62->items ).
    DATA(t64) = 0.
    t60 = xsdbool( t61 > t64 ).
    IF t60 = abap_true.
      DATA t65 TYPE REF TO zcl_lnt_statement_node.
      DATA t66 TYPE REF TO zcl_lnt_statement_node.
      DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t68) = CAST zcl_lnt_imatch( t25 ).
      t67 = t68->unmatched.
      DATA t69 TYPE REF TO object.
      CLEAR t69.
      READ TABLE t67->items INDEX 1 INTO t69.
      t66 ?= t69.
      t65 = t66.
      DATA(t70) = VALUE string( ).
      DATA(t71) = VALUE string( ).
      DATA(t72) = |Unexpected |.
      DATA t73 TYPE string.
      DATA t74 TYPE string.
      DATA t75 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      DATA t76 TYPE REF TO zif_lnt_statement.
      DATA(t77) = CAST zcl_lnt_statement_node( t65 ).
      t76 = t77->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t75 = t76->zlnt_builtin_clas_3f891b097658( ).
      t74 = t75->name.
      DATA(t78) = strlen( t74 ).
      t73 = t74.
      IF t73 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t73 TO UPPER CASE.
      ELSE.
        t73 = zlnt_runtime_uppe_91169605024d=>full( t73 ).
      ENDIF.
      DATA(t79) = strlen( t72 ).
      t71 = |{ t72 }{ t73 }|.
      t70 = t71.
      DATA t80 TYPE REF TO zcl_lnt_issue.
      CLEAR t80.
      DATA t81 TYPE REF TO zcl_lnt_issue.
      CLEAR t81.
      DATA(t82) = CAST zif_lnt_file( t2 ).
      DATA t83 TYPE REF TO zcl_lnt_position.
      DATA t84 TYPE REF TO zcl_lnt_statement_node.
      DATA(t85) = CAST zcl_lnt_statement_node( t65 ).
      t84 = t85.
      DATA t86 TYPE REF TO zcl_lnt_position.
      DATA t87 TYPE REF TO zcl_lnt_abstract_token.
      DATA t88 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t89) = CAST zcl_lnt_statement_node( t84 ).
      t88 = t89->get_first_token( ).
      t87 = t88.
      DATA t90 TYPE REF TO zcl_lnt_position.
      DATA(t91) = CAST zcl_lnt_abstract_token( t87 ).
      t90 = t91->start.
      t86 = t90.
      t83 = t86.
      DATA(t92) = t70.
      DATA(t93) = |structure|.
      DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t94.
      DATA(t95) = abap_true.
      IF t95 = abap_true.
        DATA(t96) = |Error|.
        DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t97->has = abap_true.
        t97->value = t96.
        t94 = t97.
      ELSE.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        t94 = t98.
      ENDIF.
      DATA t99 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t99.
      t81 = zcl_lnt_issue=>at_position( i_file = t82 i_start = t83 i_message_26cb = t92 i_key = t93 i_severity = t94 i_fix = t99 ).
      t80 = t81.
      DATA t100 TYPE REF TO zcl_lnt_istructure_result.
      DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t103.
      t102 = t103.
      DATA(t104) = CAST zlnt_runtime_arra_c22708faf2e3( t102 ).
      DATA(t105) = CAST zcl_lnt_issue( t80 ).
      APPEND t105 TO t104->items.
      DATA(t106) = CAST zlnt_runtime_arra_c22708faf2e3( t102 ).
      t101 = t106.
      DATA t107 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t107.
      t100 = NEW zcl_lnt_istructure_result( i_issues = t101 i_node = t107 ).
      result = t100.
      RETURN.
    ENDIF.
    DATA t108 TYPE REF TO zcl_lnt_istructure_result.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t109.
    DATA t110 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t110.
    DATA(t111) = abap_true.
    IF t111 = abap_true.
      DATA(t112) = CAST zcl_lnt_structure_node( t4 ).
      t110 = t112.
    ELSE.
      DATA t113 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t113.
      t110 = t113.
    ENDIF.
    t108 = NEW zcl_lnt_istructure_result( i_issues = t109 i_node = t110 ).
    result = t108.

  ENDMETHOD.

  METHOD zlnt_builtin_init_869df39a38f2.
    IF zlnt_builtin_init_4f5bb8fa61e1 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_4f5bb8fa61e1 = abap_true.
    IF zcl_lnt_structure_parser=>zlnt_builtin_init_4f5bb8fa61e1 = abap_false.
      zcl_lnt_structure_parser=>zlnt_builtin_init_869df39a38f2( ).
    ENDIF.
    DATA t1 TYPE REF TO zlnt_runtime_map__05e804ab454e.
    DATA t2 TYPE REF TO zlnt_runtime_map__05e804ab454e.
    DATA(t3) = NEW zlnt_runtime_map__05e804ab454e( ).
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_map__05e804ab454e( t2 ).
    t1 = t4.
    zcl_lnt_structure_parser=>singletons = t1.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d670_091261a0c907.
  ENDMETHOD.
ENDCLASS.
