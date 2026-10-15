* TS: src/abap/3_structures/structure_parser.ts:13:1 StructureParser
CLASS zcl_lnt_structure_parser DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA singletons TYPE REF TO zlnt_runtime_map__05e804ab454e.
    CLASS-METHODS run IMPORTING i_input_967e TYPE REF TO zcl_lnt_istatement_result RETURNING VALUE(result) TYPE REF TO zcl_lnt_istructure_result.
    CLASS-METHODS find_structure_for_file IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_structure.
    CLASS-METHODS run_file IMPORTING i_structure TYPE REF TO zif_lnt_structure i_file TYPE REF TO zif_lnt_file i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zcl_lnt_istructure_result.
    CLASS-DATA zlnt_builtin_init_4f5bb8fa61e1 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_869df39a38f2.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_structure_parser IMPLEMENTATION.
  METHOD run.
    IF zcl_lnt_structure_parser=>zlnt_builtin_init_4f5bb8fa61e1 = abap_false.
      zcl_lnt_structure_parser=>zlnt_builtin_init_869df39a38f2( ).
    ENDIF.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zif_lnt_structure.
    DATA t3 TYPE REF TO zif_lnt_structure.
    DATA t4 TYPE string.
    DATA t5 TYPE REF TO zif_lnt_file.
    DATA(t6) = t1.
    t5 = t6->file.
    t4 = t5->get_filename( ).
    t3 = zcl_lnt_structure_parser=>find_structure_for_file( i_filename = t4 ).
    t2 = t3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = t1.
    t9 = t10->statements.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t11.
    DATA t12 TYPE REF TO object.
    CLEAR t12.
    DATA(t13) = VALUE i( ).
    DO.
      t9->load( ).
      IF t13 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t9->items INDEX t13 + 1 INTO t12.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t11.
      IF t12 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t12.
        DATA t15 TYPE REF TO object.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      DATA t16 TYPE REF TO zif_lnt_statement.
      DATA t17 TYPE REF TO zif_lnt_statement.
      DATA(t18) = t11.
      t17 = t18->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t16 = t17.
      DATA(t19) = VALUE abap_bool( ).
      DATA t20 TYPE abap_bool.
      DATA t21 TYPE abap_bool.
      DATA(t22) = t16.
      t21 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_comment ).
      t20 = t21.
      IF t21 = abap_false.
        DATA t23 TYPE abap_bool.
        DATA(t24) = t16.
        t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_empty ).
        t20 = t23.
      ENDIF.
      t19 = t20.
      IF t20 = abap_false.
        DATA t25 TYPE abap_bool.
        DATA(t26) = t16.
        t25 = xsdbool( t26 IS BOUND AND t26 IS INSTANCE OF zcl_lnt_unknown ).
        t19 = t25.
      ENDIF.
      IF t19 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t27) = t7.
      DATA(t28) = t11.
      t27->load( ).
      APPEND t28 TO t27->items.
      t27->save( ).
    ENDDO.
    DATA t29 TYPE REF TO zcl_lnt_istructure_result.
    DATA(t30) = t2.
    DATA t31 TYPE REF TO zif_lnt_file.
    DATA(t32) = t1.
    t31 = t32->file.
    DATA(t33) = t7.
    t29 = zcl_lnt_structure_parser=>run_file( i_structure = t30 i_file = t31 i_statements = t33 ).
    result = t29.

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
    DATA(t1) = i_structure.
    DATA(t2) = i_file.
    DATA(t3) = i_statements.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    DATA(t6) = t1.
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
    DATA(t13) = t1.
    t12 = t13->zlnt_builtin_clas_3f891b097658( ).
    t11 = t12->name.
    t9 = t10->get( p0 = t11 ).
    t8 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    t14 = t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t8.
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
      DATA(t22) = t1.
      t21 = t22->zlnt_builtin_clas_3f891b097658( ).
      t20 = t21->name.
      DATA t23 TYPE REF TO zif_lnt_structure_runnable.
      DATA(t24) = t1.
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
    DATA(t32) = t1.
    t31 = t32->zlnt_builtin_clas_3f891b097658( ).
    t30 = t31->name.
    t28 = t29->get( p0 = t30 ).
    t27 = t28.
    DATA(t33) = t3.
    DATA(t34) = t4.
    t26 = t27->run( i_statements = t33 i_parent = t34 ).
    t25 = t26.
    DATA(t35) = VALUE abap_bool( ).
    DATA t36 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t37) = t25.
    t36 = t37->error.
    IF t36 IS BOUND.
      IF t36->has = abap_true.
        t35 = xsdbool( t36->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF t35 = abap_true.
      DATA t38 TYPE REF TO zcl_lnt_issue.
      CLEAR t38.
      DATA t39 TYPE REF TO zcl_lnt_issue.
      CLEAR t39.
      DATA(t40) = t2.
      DATA t41 TYPE REF TO zcl_lnt_position.
      DATA(t42) = CONV f( 1 ).
      DATA(t43) = CONV f( 1 ).
      DATA(t44) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t44->has = abap_true.
      t44->value = t43.
      t41 = NEW zcl_lnt_position( i_row = t42 i_col = t44 ).
      DATA t45 TYPE string.
      DATA(t46) = t25.
      t45 = t46->error_description.
      DATA(t47) = |structure|.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t48.
      DATA(t49) = abap_true.
      IF t49 = abap_true.
        DATA(t50) = |Error|.
        DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t51->has = abap_true.
        t51->value = t50.
        t48 = t51.
      ELSE.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        t48 = t52.
      ENDIF.
      DATA t53 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t53.
      t39 = zcl_lnt_issue=>at_position( i_file = t40 i_start = t41 i_message_26cb = t45 i_key = t47 i_severity = t48 i_fix = t53 ).
      t38 = t39.
      DATA t54 TYPE REF TO zcl_lnt_istructure_result.
      DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t58.
      t57 = t58.
      DATA(t59) = t57.
      DATA(t60) = t38.
      t59->load( ).
      APPEND t60 TO t59->items.
      t59->save( ).
      DATA(t61) = t57.
      t56 = t61.
      t55 = t56.
      DATA t62 TYPE REF TO zcl_lnt_structure_node.
      DATA t63 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t63.
      t62 = t63.
      t54 = NEW zcl_lnt_istructure_result( i_issues = t55 i_node = t62 ).
      CREATE OBJECT t54->zlnt_view_ownkeys_b0e8086400eb.
      t54->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t64.
      IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `issues` p1 = t64 ).
      ENDIF.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t65.
      IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t65 ).
      ENDIF.
      CREATE OBJECT t54->zlnt_json_ownkeys_70e5fd461788.
      t54->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t66) = |issues|.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t66 p1 = t67 ).
      ENDIF.
      DATA(t68) = |node|.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t68 p1 = t69 ).
      ENDIF.
      result = t54.
      RETURN.
    ENDIF.
    DATA t70 TYPE abap_bool.
    DATA t71 TYPE i.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t73) = t25.
    t72 = t73->unmatched.
    t72->load( ).
    t71 = lines( t72->items ).
    DATA(t74) = 0.
    t70 = xsdbool( t71 > t74 ).
    IF t70 = abap_true.
      DATA t75 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t75.
      DATA t76 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t76.
      DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t78) = t25.
      t77 = t78->unmatched.
      DATA t79 TYPE REF TO object.
      CLEAR t79.
      t77->load( ).
      CLEAR t79.
      READ TABLE t77->items INDEX 1 INTO t79.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      CLEAR t76.
      IF t79 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t80 ?= t79.
        DATA t81 TYPE REF TO object.
        t81 = t80->as_ref( ).
        t76 ?= t81.
      ELSE.
        t76 ?= t79.
      ENDIF.
      t75 = t76.
      DATA(t82) = VALUE string( ).
      DATA(t83) = VALUE string( ).
      DATA(t84) = |Unexpected |.
      DATA t85 TYPE string.
      DATA t86 TYPE string.
      DATA t87 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      DATA t88 TYPE REF TO zif_lnt_statement.
      DATA(t89) = t75.
      t88 = t89->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t87 = t88->zlnt_builtin_clas_3f891b097658( ).
      t86 = t87->name.
      DATA(t90) = strlen( t86 ).
      t85 = t86.
      IF t85 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t85 TO UPPER CASE.
      ELSE.
        t85 = zlnt_runtime_uppe_91169605024d=>full( t85 ).
      ENDIF.
      DATA(t91) = strlen( t84 ).
      t83 = |{ t84 }{ t85 }|.
      t82 = t83.
      DATA t92 TYPE REF TO zcl_lnt_issue.
      CLEAR t92.
      DATA t93 TYPE REF TO zcl_lnt_issue.
      CLEAR t93.
      DATA(t94) = t2.
      DATA t95 TYPE REF TO zcl_lnt_position.
      DATA t96 TYPE REF TO zcl_lnt_statement_node.
      DATA(t97) = t75.
      t96 = t97.
      DATA t98 TYPE REF TO zcl_lnt_position.
      DATA t99 TYPE REF TO zcl_lnt_abstract_token.
      DATA t100 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t101) = t96.
      t100 = t101->get_first_token( ).
      t99 = t100.
      DATA t102 TYPE REF TO zcl_lnt_position.
      DATA(t103) = t99.
      t102 = t103->start.
      t98 = t102.
      t95 = t98.
      DATA(t104) = t82.
      DATA(t105) = |structure|.
      DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t106.
      DATA(t107) = abap_true.
      IF t107 = abap_true.
        DATA(t108) = |Error|.
        DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t109->has = abap_true.
        t109->value = t108.
        t106 = t109.
      ELSE.
        DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t110.
        t106 = t110.
      ENDIF.
      DATA t111 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t111.
      t93 = zcl_lnt_issue=>at_position( i_file = t94 i_start = t95 i_message_26cb = t104 i_key = t105 i_severity = t106 i_fix = t111 ).
      t92 = t93.
      DATA t112 TYPE REF TO zcl_lnt_istructure_result.
      DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t116.
      t115 = t116.
      DATA(t117) = t115.
      DATA(t118) = t92.
      t117->load( ).
      APPEND t118 TO t117->items.
      t117->save( ).
      DATA(t119) = t115.
      t114 = t119.
      t113 = t114.
      DATA t120 TYPE REF TO zcl_lnt_structure_node.
      DATA t121 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t121.
      t120 = t121.
      t112 = NEW zcl_lnt_istructure_result( i_issues = t113 i_node = t120 ).
      CREATE OBJECT t112->zlnt_view_ownkeys_b0e8086400eb.
      t112->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      IF t112->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `issues` p1 = t122 ).
      ENDIF.
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t123.
      IF t112->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t123 ).
      ENDIF.
      CREATE OBJECT t112->zlnt_json_ownkeys_70e5fd461788.
      t112->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t124) = |issues|.
      DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t125.
      IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t124 p1 = t125 ).
      ENDIF.
      DATA(t126) = |node|.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t127.
      IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
      ENDIF.
      result = t112.
      RETURN.
    ENDIF.
    DATA t128 TYPE REF TO zcl_lnt_istructure_result.
    CLEAR t128.
    DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t130.
    t129 = t130.
    DATA t131 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t131.
    DATA t132 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t132.
    DATA(t133) = abap_true.
    IF t133 = abap_true.
      DATA(t134) = t4.
      t132 = t134.
    ELSE.
      DATA t135 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t135.
      t132 = t135.
    ENDIF.
    t131 = t132.
    t128 = NEW zcl_lnt_istructure_result( i_issues = t129 i_node = t131 ).
    CREATE OBJECT t128->zlnt_view_ownkeys_b0e8086400eb.
    t128->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `issues` p1 = t136 ).
    ENDIF.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t137 ).
    ENDIF.
    CREATE OBJECT t128->zlnt_json_ownkeys_70e5fd461788.
    t128->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t138) = |issues|.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t138 p1 = t139 ).
    ENDIF.
    DATA(t140) = |node|.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t140 p1 = t141 ).
    ENDIF.
    result = t128.

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
    DATA(t4) = t2.
    t1 = t4.
    zcl_lnt_structure_parser=>singletons = t1.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d687_99e32c3ed690.
  ENDMETHOD.
ENDCLASS.
