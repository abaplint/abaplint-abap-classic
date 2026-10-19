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
    DATA t3 TYPE REF TO zif_lnt_structure.
    DATA t4 TYPE string.
    DATA t5 TYPE REF TO zif_lnt_file.
    t5 = t1->file.
    t4 = t5->get_filename( ).
    t3 = zcl_lnt_structure_parser=>find_structure_for_file( i_filename = t4 ).
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t9 = t1->statements.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    DATA t12 TYPE REF TO object.
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
      t17 = t11->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t16 = t17.
      DATA(t19) = VALUE abap_bool( ).
      DATA t20 TYPE abap_bool.
      DATA t21 TYPE abap_bool.
      t21 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_comment ).
      t20 = t21.
      IF t21 = abap_false.
        DATA t23 TYPE abap_bool.
        t23 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_empty ).
        t20 = t23.
      ENDIF.
      t19 = t20.
      IF t20 = abap_false.
        DATA t25 TYPE abap_bool.
        t25 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_unknown ).
        t19 = t25.
      ENDIF.
      IF t19 = abap_true.
        CONTINUE.
      ENDIF.
      t7->load( ).
      APPEND t11 TO t7->items.
      t7->save( ).
    ENDDO.
    DATA t29 TYPE REF TO zcl_lnt_istructure_result.
    DATA t31 TYPE REF TO zif_lnt_file.
    t31 = t1->file.
    t29 = zcl_lnt_structure_parser=>run_file( i_structure = t3 i_file = t31 i_statements = t7 ).
    result = t29.

  ENDMETHOD.

  METHOD find_structure_for_file.
    IF zcl_lnt_structure_parser=>zlnt_builtin_init_4f5bb8fa61e1 = abap_false.
      zcl_lnt_structure_parser=>zlnt_builtin_init_869df39a38f2( ).
    ENDIF.
    DATA(t1) = i_filename.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t4) = |.clas.abap|.
    DATA(t5) = strlen( t1 ).
    DATA t6 TYPE i.
    DATA(t7) = VALUE i( ).
    DATA(t8) = VALUE string( ).
    t6 = strlen( t4 ).
    IF t6 = 0.
      t2 = abap_true.
    ELSEIF t6 <= t5.
      t7 = 0.
      t7 = t5 - t6.
      t8 = t1+t7(t6).
      IF t8 = t4.
        t2 = abap_true.
      ENDIF.
    ENDIF.
    IF t2 = abap_true.
      result = NEW zcl_lnt_sr_class_global( ).
      RETURN.
    ELSE.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t12) = |.intf.abap|.
      DATA(t13) = strlen( t1 ).
      DATA t14 TYPE i.
      DATA(t15) = VALUE i( ).
      DATA(t16) = VALUE string( ).
      t14 = strlen( t12 ).
      IF t14 = 0.
        t10 = abap_true.
      ELSEIF t14 <= t13.
        t15 = 0.
        t15 = t13 - t14.
        t16 = t1+t15(t14).
        IF t16 = t12.
          t10 = abap_true.
        ENDIF.
      ENDIF.
      IF t10 = abap_true.
        result = NEW zcl_lnt_interface_global( ).
        RETURN.
      ELSE.
        DATA t18 TYPE abap_bool.
        DATA t19 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        DATA(t20) = `\.screen\_\d+\.abap$`.
        DATA(t21) = `\.screen\_[0-9]+\.abap$`.
        DATA(t22) = |i|.
        CREATE OBJECT t19 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t21 flags = t22.
        t19->source = t20.
        t18 = t19->test( p0 = t1 ).
        IF t18 = abap_true.
          result = NEW zcl_lnt_dynpro_logic( ).
          RETURN.
        ELSE.
          result = NEW zcl_lnt_any( ).
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
    t5 = NEW zcl_lnt_structure_node( i_structure = t1 ).
    t4 = t5.
    DATA(t7) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zif_lnt_structure_runnable.
    DATA t10 TYPE REF TO zlnt_runtime_map__05e804ab454e.
    IF zcl_lnt_structure_parser=>zlnt_builtin_init_4f5bb8fa61e1 = abap_false.
      zcl_lnt_structure_parser=>zlnt_builtin_init_869df39a38f2( ).
    ENDIF.
    t10 = zcl_lnt_structure_parser=>singletons.
    DATA t11 TYPE string.
    DATA t12 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    t12 = t1->zlnt_builtin_clas_3f891b097658( ).
    t11 = t12->name.
    t9 = t10->get( p0 = t11 ).
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7 = xsdbool( t9 IS INITIAL ).
    IF t7 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_map__05e804ab454e.
      DATA t19 TYPE REF TO zlnt_runtime_map__05e804ab454e.
      IF zcl_lnt_structure_parser=>zlnt_builtin_init_4f5bb8fa61e1 = abap_false.
        zcl_lnt_structure_parser=>zlnt_builtin_init_869df39a38f2( ).
      ENDIF.
      t19 = zcl_lnt_structure_parser=>singletons.
      DATA t20 TYPE string.
      DATA t21 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      t21 = t1->zlnt_builtin_clas_3f891b097658( ).
      t20 = t21->name.
      DATA t23 TYPE REF TO zif_lnt_structure_runnable.
      t23 = t1->get_matcher( ).
      t18 = t19->set( p0 = t20 p1 = t23 ).
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_imatch.
    DATA t26 TYPE REF TO zcl_lnt_imatch.
    DATA t27 TYPE REF TO zif_lnt_structure_runnable.
    DATA t28 TYPE REF TO zif_lnt_structure_runnable.
    DATA t29 TYPE REF TO zlnt_runtime_map__05e804ab454e.
    IF zcl_lnt_structure_parser=>zlnt_builtin_init_4f5bb8fa61e1 = abap_false.
      zcl_lnt_structure_parser=>zlnt_builtin_init_869df39a38f2( ).
    ENDIF.
    t29 = zcl_lnt_structure_parser=>singletons.
    DATA t30 TYPE string.
    DATA t31 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    t31 = t1->zlnt_builtin_clas_3f891b097658( ).
    t30 = t31->name.
    t28 = t29->get( p0 = t30 ).
    t27 = t28.
    t26 = t27->run( i_statements = t3 i_parent = t4 ).
    t25 = t26.
    DATA(t35) = VALUE abap_bool( ).
    DATA t36 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t36 = t25->error.
    IF t36 IS BOUND.
      IF t36->has = abap_true.
        t35 = xsdbool( t36->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF t35 = abap_true.
      DATA t39 TYPE REF TO zcl_lnt_issue.
      DATA t41 TYPE REF TO zcl_lnt_position.
      DATA(t42) = CONV f( 1 ).
      DATA(t43) = CONV f( 1 ).
      DATA(t44) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t44->has = abap_true.
      t44->value = t43.
      t41 = NEW zcl_lnt_position( i_row = t42 i_col = t44 ).
      DATA t45 TYPE string.
      t45 = t25->error_description.
      DATA(t47) = |structure|.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t50) = |Error|.
      DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t51->has = abap_true.
      t51->value = t50.
      t48 = t51.
      DATA t53 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t39 = zcl_lnt_issue=>at_position( i_file = t2 i_start = t41 i_message_26cb = t45 i_key = t47 i_severity = t48 i_fix = t53 ).
      DATA t54 TYPE REF TO zcl_lnt_istructure_result.
      DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t58.
      t57 = t58.
      t57->load( ).
      APPEND t39 TO t57->items.
      t57->save( ).
      t55 = t57.
      DATA t62 TYPE REF TO zcl_lnt_structure_node.
      t54 = NEW zcl_lnt_istructure_result( i_issues = t55 i_node = t62 ).
      CREATE OBJECT t54->zlnt_view_ownkeys_b0e8086400eb.
      t54->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `issues` p1 = t64 ).
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t65 ).
      ENDIF.
      CREATE OBJECT t54->zlnt_json_ownkeys_70e5fd461788.
      t54->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t66) = |issues|.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t66 p1 = t67 ).
      DATA(t68) = |node|.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t68 p1 = t69 ).
      ENDIF.
      result = t54.
      RETURN.
    ENDIF.
    DATA t70 TYPE abap_bool.
    DATA t71 TYPE i.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t72 = t25->unmatched.
    t72->load( ).
    t71 = lines( t72->items ).
    DATA(t74) = 0.
    t70 = xsdbool( t71 > t74 ).
    IF t70 = abap_true.
      DATA t75 TYPE REF TO zcl_lnt_statement_node.
      DATA t76 TYPE REF TO zcl_lnt_statement_node.
      DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t77 = t25->unmatched.
      DATA t79 TYPE REF TO object.
      t77->load( ).
      READ TABLE t77->items INDEX 1 INTO t79.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
      t88 = t75->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
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
      DATA t93 TYPE REF TO zcl_lnt_issue.
      DATA t95 TYPE REF TO zcl_lnt_position.
      DATA t100 TYPE REF TO zcl_lnt_abstract_token.
      t100 = t75->get_first_token( ).
      DATA t102 TYPE REF TO zcl_lnt_position.
      t102 = t100->start.
      t95 = t102.
      DATA(t105) = |structure|.
      DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t108) = |Error|.
      DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t109->has = abap_true.
      t109->value = t108.
      t106 = t109.
      DATA t111 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t93 = zcl_lnt_issue=>at_position( i_file = t2 i_start = t95 i_message_26cb = t82 i_key = t105 i_severity = t106 i_fix = t111 ).
      DATA t112 TYPE REF TO zcl_lnt_istructure_result.
      DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t116.
      t115 = t116.
      t115->load( ).
      APPEND t93 TO t115->items.
      t115->save( ).
      t113 = t115.
      DATA t120 TYPE REF TO zcl_lnt_structure_node.
      t112 = NEW zcl_lnt_istructure_result( i_issues = t113 i_node = t120 ).
      CREATE OBJECT t112->zlnt_view_ownkeys_b0e8086400eb.
      t112->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `issues` p1 = t122 ).
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t112->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t123 ).
      ENDIF.
      CREATE OBJECT t112->zlnt_json_ownkeys_70e5fd461788.
      t112->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t124) = |issues|.
      DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t124 p1 = t125 ).
      DATA(t126) = |node|.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
      ENDIF.
      result = t112.
      RETURN.
    ENDIF.
    DATA t128 TYPE REF TO zcl_lnt_istructure_result.
    DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t130.
    t129 = t130.
    DATA t131 TYPE REF TO zcl_lnt_structure_node.
    t131 = t4.
    t128 = NEW zcl_lnt_istructure_result( i_issues = t129 i_node = t131 ).
    CREATE OBJECT t128->zlnt_view_ownkeys_b0e8086400eb.
    t128->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `issues` p1 = t136 ).
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t137 ).
    ENDIF.
    CREATE OBJECT t128->zlnt_json_ownkeys_70e5fd461788.
    t128->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t138) = |issues|.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t138 p1 = t139 ).
    DATA(t140) = |node|.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    zcl_lnt_structure_parser=>singletons = NEW zlnt_runtime_map__05e804ab454e( ).
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
