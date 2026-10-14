* TS: src/abap/types/class_attributes.ts:26:1 Attributes
CLASS zcl_lnt_attributes DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_attributes.
    DATA static_9977 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA instance TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA constants TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA types TYPE REF TO zcl_lnt_type_definitions.
    DATA tlist TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA filename TYPE string.
    DATA aliases_62bb TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA declared_interfaces TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA all TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA by_name TYPE REF TO zlnt_runtime_map__89ba5e9f6101.
    METHODS constructor IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS gt_ty_in_sr_ab_ty_cl_at_ts_att RETURNING VALUE(result) TYPE REF TO zcl_lnt_type_definitions.
    METHODS get_static RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_aliases RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_all RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_statics_by_visibility IMPORTING i_visibility_5c1f TYPE int8 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_instance RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_instances_by_visibility IMPORTING i_visibility_5c1f TYPE int8 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_constants RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_constants_by_visibility IMPORTING i_visibility_5c1f TYPE int8 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_by_name IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_union_a346537f.
    METHODS build_by_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__89ba5e9f6101.
    METHODS parse IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS parse_section IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_visibility_5c1f TYPE i i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS parse_alias IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_visibility_5c1f TYPE i i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS exists_in_interface IMPORTING i_idef TYPE REF TO zif_lnt_interface_definition i_component TYPE string i_input_967e TYPE REF TO zcl_lnt_syntax_input i_visited TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 RETURNING VALUE(result) TYPE abap_bool.
    METHODS parse_attribute IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_visibility_5c1f TYPE i i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_class_attribute.
    METHODS get_types RETURNING VALUE(result) TYPE REF TO zif_lnt_type_definitions.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_attributes IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_structure_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    me->static_9977 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    me->instance = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    me->constants = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    me->aliases_62bb = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t7.
    me->declared_interfaces = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    me->tlist = t8.
    DATA t9 TYPE string.
    DATA(t10) = CAST zcl_lnt_syntax_input( t2 ).
    t9 = t10->filename.
    me->filename = t9.
    DATA(t11) = CAST zcl_lnt_structure_node( t1 ).
    DATA(t12) = CAST zcl_lnt_syntax_input( t2 ).
    me->parse( i_node = t11 i_input_967e = t12 ).
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( me->static_9977 ).
    DATA(t15) = CAST zlnt_runtime_arra_c22708faf2e3( me->instance ).
    t13 = t14->concat( p0 = t15 ).
    me->all = t13.
    DATA(t16) = CAST zlnt_runtime_map__89ba5e9f6101( me->build_by_name( ) ).
    me->by_name = t16.
    DATA t17 TYPE REF TO zcl_lnt_type_definitions.
    DATA(t18) = CAST zlnt_runtime_arra_c22708faf2e3( me->tlist ).
    t17 = NEW zcl_lnt_type_definitions( i_list = t18 ).
    me->types = t17.
  ENDMETHOD.

  METHOD gt_ty_in_sr_ab_ty_cl_at_ts_att.
    DATA(t1) = CAST zcl_lnt_type_definitions( me->types ).
    result = t1.

  ENDMETHOD.

  METHOD get_static.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->static_9977 ).
    result = t1.

  ENDMETHOD.

  METHOD get_aliases.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->aliases_62bb ).
    result = t1.

  ENDMETHOD.

  METHOD get_all.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->all ).
    result = t1.

  ENDMETHOD.

  METHOD get_statics_by_visibility.
    DATA(t1) = i_visibility_5c1f.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/types/class_attributes.ts:68|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD get_instance.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->instance ).
    result = t1.

  ENDMETHOD.

  METHOD get_instances_by_visibility.
    DATA(t1) = i_visibility_5c1f.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/types/class_attributes.ts:82|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD get_constants.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->constants ).
    result = t1.

  ENDMETHOD.

  METHOD get_constants_by_visibility.
    DATA(t1) = i_visibility_5c1f.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/types/class_attributes.ts:96|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD find_by_name.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zif_lnt_union_a346537f.
    CLEAR t2.
    DATA(t3) = CAST zlnt_runtime_map__89ba5e9f6101( me->by_name ).
    DATA t4 TYPE string.
    DATA(t5) = t1.
    DATA(t6) = strlen( t5 ).
    t4 = t5.
    IF t4 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t4 TO UPPER CASE.
    ELSE.
      t4 = zlnt_runtime_uppe_91169605024d=>full( t4 ).
    ENDIF.
    t2 = t3->get( p0 = t4 ).
    result = t2.

  ENDMETHOD.

  METHOD build_by_name.
    DATA t1 TYPE REF TO zlnt_runtime_map__89ba5e9f6101.
    DATA t2 TYPE REF TO zlnt_runtime_map__89ba5e9f6101.
    DATA t3 TYPE REF TO zlnt_runtime_map__89ba5e9f6101.
    DATA(t4) = NEW zlnt_runtime_map__89ba5e9f6101( ).
    t3 = t4.
    DATA(t5) = CAST zlnt_runtime_map__89ba5e9f6101( t3 ).
    t2 = t5.
    t1 = t2.
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( me->static_9977 ).
    DATA t7 TYPE REF TO zcl_lnt_class_attribute.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    LOOP AT t6->items INTO t8.
      t7 ?= t8.
      DATA t9 TYPE REF TO zlnt_runtime_map__89ba5e9f6101.
      CLEAR t9.
      DATA(t10) = CAST zlnt_runtime_map__89ba5e9f6101( t1 ).
      DATA(t11) = VALUE string( ).
      DATA(t12) = VALUE string( ).
      DATA t13 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t14) = CAST zcl_lnt_class_attribute( t7 ).
      t13 = t14.
      DATA(t15) = VALUE string( ).
      DATA t16 TYPE string.
      DATA t17 TYPE string.
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t20) = CAST zcl_lnt_fi_identifier( t13 ).
      t19 = t20->token.
      t18 = t19.
      DATA t21 TYPE string.
      DATA(t22) = CAST zcl_lnt_abstract_token( t18 ).
      t21 = t22->str.
      t17 = t21.
      t16 = t17.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE string( ).
      DATA(t25) = t16.
      DATA(t26) = 0.
      DATA(t27) = 1.
      DATA(t28) = strlen( t25 ).
      IF t26 < 0.
        t26 = t26 + t28.
        IF t26 < 0.
          t26 = 0.
        ENDIF.
      ENDIF.
      IF t26 > t28 OR t27 <= 0.
        CLEAR t24.
      ELSE.
        IF t27 > t28 - t26.
          t27 = t28 - t26.
        ENDIF.
        t24 = t25+t26(t27).
      ENDIF.
      DATA(t29) = |!|.
      t23 = xsdbool( t24 = t29 ).
      IF t23 = abap_true.
        DATA(t30) = VALUE string( ).
        DATA t31 TYPE string.
        DATA(t32) = t16.
        t31 = t32.
        DATA(t33) = VALUE string( ).
        DATA(t34) = t31.
        DATA(t35) = 1.
        DATA t36 TYPE i.
        DATA(t37) = t31.
        DATA(t38) = strlen( t37 ).
        t36 = t38.
        DATA(t39) = strlen( t34 ).
        IF t35 < 0.
          t35 = t35 + t39.
          IF t35 < 0.
            t35 = 0.
          ENDIF.
        ENDIF.
        IF t35 > t39 OR t36 <= 0.
          CLEAR t33.
        ELSE.
          IF t36 > t39 - t35.
            t36 = t39 - t35.
          ENDIF.
          t33 = t34+t35(t36).
        ENDIF.
        t30 = t33.
        t16 = t30.
      ENDIF.
      DATA(t40) = t16.
      t15 = t40.
      t12 = t15.
      DATA(t41) = strlen( t12 ).
      t11 = t12.
      IF t11 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t11 TO UPPER CASE.
      ELSE.
        t11 = zlnt_runtime_uppe_91169605024d=>full( t11 ).
      ENDIF.
      DATA(t42) = CAST zcl_lnt_class_attribute( t7 ).
      t9 = t10->set( p0 = t11 p1 = t42 ).
    ENDLOOP.
    DATA(t43) = CAST zlnt_runtime_arra_c22708faf2e3( me->instance ).
    DATA t44 TYPE REF TO zcl_lnt_class_attribute.
    CLEAR t44.
    DATA t45 TYPE REF TO object.
    CLEAR t45.
    LOOP AT t43->items INTO t45.
      t44 ?= t45.
      DATA(t46) = VALUE string( ).
      DATA(t47) = VALUE string( ).
      DATA(t48) = VALUE string( ).
      DATA t49 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t50) = CAST zcl_lnt_class_attribute( t44 ).
      t49 = t50.
      DATA(t51) = VALUE string( ).
      DATA t52 TYPE string.
      DATA t53 TYPE string.
      DATA t54 TYPE REF TO zcl_lnt_abstract_token.
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t56) = CAST zcl_lnt_fi_identifier( t49 ).
      t55 = t56->token.
      t54 = t55.
      DATA t57 TYPE string.
      DATA(t58) = CAST zcl_lnt_abstract_token( t54 ).
      t57 = t58->str.
      t53 = t57.
      t52 = t53.
      DATA(t59) = VALUE abap_bool( ).
      DATA(t60) = VALUE string( ).
      DATA(t61) = t52.
      DATA(t62) = 0.
      DATA(t63) = 1.
      DATA(t64) = strlen( t61 ).
      IF t62 < 0.
        t62 = t62 + t64.
        IF t62 < 0.
          t62 = 0.
        ENDIF.
      ENDIF.
      IF t62 > t64 OR t63 <= 0.
        CLEAR t60.
      ELSE.
        IF t63 > t64 - t62.
          t63 = t64 - t62.
        ENDIF.
        t60 = t61+t62(t63).
      ENDIF.
      DATA(t65) = |!|.
      t59 = xsdbool( t60 = t65 ).
      IF t59 = abap_true.
        DATA(t66) = VALUE string( ).
        DATA t67 TYPE string.
        DATA(t68) = t52.
        t67 = t68.
        DATA(t69) = VALUE string( ).
        DATA(t70) = t67.
        DATA(t71) = 1.
        DATA t72 TYPE i.
        DATA(t73) = t67.
        DATA(t74) = strlen( t73 ).
        t72 = t74.
        DATA(t75) = strlen( t70 ).
        IF t71 < 0.
          t71 = t71 + t75.
          IF t71 < 0.
            t71 = 0.
          ENDIF.
        ENDIF.
        IF t71 > t75 OR t72 <= 0.
          CLEAR t69.
        ELSE.
          IF t72 > t75 - t71.
            t72 = t75 - t71.
          ENDIF.
          t69 = t70+t71(t72).
        ENDIF.
        t66 = t69.
        t52 = t66.
      ENDIF.
      DATA(t76) = t52.
      t51 = t76.
      t48 = t51.
      DATA(t77) = strlen( t48 ).
      t47 = t48.
      IF t47 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t47 TO UPPER CASE.
      ELSE.
        t47 = zlnt_runtime_uppe_91169605024d=>full( t47 ).
      ENDIF.
      t46 = t47.
      DATA(t78) = VALUE abap_bool( ).
      DATA t79 TYPE REF TO zif_lnt_union_a346537f.
      DATA t80 TYPE REF TO zif_lnt_union_a346537f.
      DATA(t81) = CAST zlnt_runtime_map__89ba5e9f6101( t1 ).
      DATA(t82) = t46.
      t80 = t81->get( p0 = t82 ).
      t79 = t80.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t84.
      t83 = t84.
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = CAST zif_lnt_union_a346537f( t79 ).
      IF t86 IS INITIAL.
        t85 = abap_true.
      ENDIF.
      t78 = t85.
      IF t78 = abap_true.
        DATA t87 TYPE REF TO zlnt_runtime_map__89ba5e9f6101.
        DATA(t88) = CAST zlnt_runtime_map__89ba5e9f6101( t1 ).
        DATA(t89) = t46.
        DATA(t90) = CAST zcl_lnt_class_attribute( t44 ).
        t87 = t88->set( p0 = t89 p1 = t90 ).
      ENDIF.
    ENDLOOP.
    DATA(t91) = CAST zlnt_runtime_arra_c22708faf2e3( me->constants ).
    DATA t92 TYPE REF TO zcl_lnt_class_constant.
    CLEAR t92.
    DATA t93 TYPE REF TO object.
    CLEAR t93.
    LOOP AT t91->items INTO t93.
      t92 ?= t93.
      DATA(t94) = VALUE string( ).
      DATA(t95) = VALUE string( ).
      DATA(t96) = VALUE string( ).
      DATA t97 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t98) = CAST zcl_lnt_class_constant( t92 ).
      t97 = t98.
      DATA(t99) = VALUE string( ).
      DATA t100 TYPE string.
      DATA t101 TYPE string.
      DATA t102 TYPE REF TO zcl_lnt_abstract_token.
      DATA t103 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t104) = CAST zcl_lnt_fi_identifier( t97 ).
      t103 = t104->token.
      t102 = t103.
      DATA t105 TYPE string.
      DATA(t106) = CAST zcl_lnt_abstract_token( t102 ).
      t105 = t106->str.
      t101 = t105.
      t100 = t101.
      DATA(t107) = VALUE abap_bool( ).
      DATA(t108) = VALUE string( ).
      DATA(t109) = t100.
      DATA(t110) = 0.
      DATA(t111) = 1.
      DATA(t112) = strlen( t109 ).
      IF t110 < 0.
        t110 = t110 + t112.
        IF t110 < 0.
          t110 = 0.
        ENDIF.
      ENDIF.
      IF t110 > t112 OR t111 <= 0.
        CLEAR t108.
      ELSE.
        IF t111 > t112 - t110.
          t111 = t112 - t110.
        ENDIF.
        t108 = t109+t110(t111).
      ENDIF.
      DATA(t113) = |!|.
      t107 = xsdbool( t108 = t113 ).
      IF t107 = abap_true.
        DATA(t114) = VALUE string( ).
        DATA t115 TYPE string.
        DATA(t116) = t100.
        t115 = t116.
        DATA(t117) = VALUE string( ).
        DATA(t118) = t115.
        DATA(t119) = 1.
        DATA t120 TYPE i.
        DATA(t121) = t115.
        DATA(t122) = strlen( t121 ).
        t120 = t122.
        DATA(t123) = strlen( t118 ).
        IF t119 < 0.
          t119 = t119 + t123.
          IF t119 < 0.
            t119 = 0.
          ENDIF.
        ENDIF.
        IF t119 > t123 OR t120 <= 0.
          CLEAR t117.
        ELSE.
          IF t120 > t123 - t119.
            t120 = t123 - t119.
          ENDIF.
          t117 = t118+t119(t120).
        ENDIF.
        t114 = t117.
        t100 = t114.
      ENDIF.
      DATA(t124) = t100.
      t99 = t124.
      t96 = t99.
      DATA(t125) = strlen( t96 ).
      t95 = t96.
      IF t95 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t95 TO UPPER CASE.
      ELSE.
        t95 = zlnt_runtime_uppe_91169605024d=>full( t95 ).
      ENDIF.
      t94 = t95.
      DATA(t126) = VALUE abap_bool( ).
      DATA t127 TYPE REF TO zif_lnt_union_a346537f.
      DATA t128 TYPE REF TO zif_lnt_union_a346537f.
      DATA(t129) = CAST zlnt_runtime_map__89ba5e9f6101( t1 ).
      DATA(t130) = t94.
      t128 = t129->get( p0 = t130 ).
      t127 = t128.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t132.
      t131 = t132.
      DATA(t133) = VALUE abap_bool( ).
      DATA(t134) = CAST zif_lnt_union_a346537f( t127 ).
      IF t134 IS INITIAL.
        t133 = abap_true.
      ENDIF.
      t126 = t133.
      IF t126 = abap_true.
        DATA t135 TYPE REF TO zlnt_runtime_map__89ba5e9f6101.
        DATA(t136) = CAST zlnt_runtime_map__89ba5e9f6101( t1 ).
        DATA(t137) = t94.
        DATA(t138) = CAST zcl_lnt_class_constant( t92 ).
        t135 = t136->set( p0 = t137 p1 = t138 ).
      ENDIF.
    ENDLOOP.
    DATA(t139) = CAST zlnt_runtime_map__89ba5e9f6101( t1 ).
    result = t139.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = CAST zcl_lnt_structure_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_structure_node.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA(t5) = CAST zcl_lnt_structure_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d684_dd4b0670faf6 ).
    t4 = t5->find_direct_structure( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE abap_bool.
    DATA(t8) = CAST zcl_lnt_structure_node( t3 ).
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t10 TYPE REF TO zcl_lnt_structure_node.
      DATA(t11) = CAST zcl_lnt_structure_node( t3 ).
      t10 = t11.
      DATA(t12) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d523_88ac7053af9c ).
      t9 = t10->find_all_statements( i_type_9913 = t12 ).
      DATA t13 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t13.
      DATA t14 TYPE REF TO object.
      CLEAR t14.
      LOOP AT t9->items INTO t14.
        t13 ?= t14.
        DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t15.
        DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t16.
        DATA t17 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t17.
        DATA t18 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t18.
        DATA t19 TYPE REF TO zcl_lnt_expression_node.
        DATA t20 TYPE REF TO zcl_lnt_expression_node.
        DATA(t21) = CAST zcl_lnt_statement_node( t13 ).
        DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d198_f214049174db ).
        t20 = t21->find_first_expression( i_type_9913 = t22 ).
        t19 = t20.
        DATA t23 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t23.
        DATA(t24) = VALUE abap_bool( ).
        DATA(t25) = CAST zcl_lnt_expression_node( t19 ).
        IF t25 IS INITIAL.
          t24 = abap_true.
        ENDIF.
        IF t24 = abap_true.
          DATA t26 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t26.
          t23 = t26.
        ELSE.
          DATA t27 TYPE REF TO zcl_lnt_abstract_token.
          DATA t28 TYPE REF TO zcl_lnt_expression_node.
          DATA(t29) = CAST zcl_lnt_expression_node( t19 ).
          t28 = t29.
          t27 = t28->get_first_token( ).
          t23 = t27.
        ENDIF.
        t18 = t23.
        t17 = t18.
        DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t30.
        DATA(t31) = VALUE abap_bool( ).
        DATA(t32) = CAST zcl_lnt_abstract_token( t17 ).
        IF t32 IS INITIAL.
          t31 = abap_true.
        ENDIF.
        IF t31 = abap_true.
          DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t33.
          t30 = t33.
        ELSE.
          DATA t34 TYPE string.
          DATA t35 TYPE REF TO zcl_lnt_abstract_token.
          DATA t36 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t37) = CAST zcl_lnt_abstract_token( t17 ).
          t36 = t37.
          t35 = t36.
          DATA t38 TYPE string.
          DATA(t39) = CAST zcl_lnt_abstract_token( t35 ).
          t38 = t39->str.
          t34 = t38.
          DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t40->has = abap_true.
          t40->value = t34.
          t30 = t40.
        ENDIF.
        t16 = t30.
        t15 = t16.
        DATA(t41) = VALUE abap_bool( ).
        DATA(t42) = CAST zlnt_runtime_opti_4ba3bdccd169( t15 ).
        IF t42 IS BOUND.
          IF t42->has = abap_true.
            t41 = xsdbool( strlen( t42->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t41 = abap_true.
          DATA(t43) = CAST zlnt_runtime_arra_8ecd6afe19e0( me->declared_interfaces ).
          DATA t44 TYPE string.
          DATA t45 TYPE string.
          DATA(t46) = CAST zlnt_runtime_opti_4ba3bdccd169( t15 ).
          t45 = t46->value.
          DATA(t47) = strlen( t45 ).
          t44 = t45.
          IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t44 TO UPPER CASE.
          ELSE.
            t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
          ENDIF.
          APPEND t44 TO t43->items.
        ENDIF.
      ENDLOOP.
      DATA t48 TYPE REF TO zcl_lnt_structure_node.
      DATA t49 TYPE REF TO zcl_lnt_structure_node.
      DATA(t50) = CAST zcl_lnt_structure_node( t3 ).
      t49 = t50.
      DATA(t51) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d699_5bd4c856ada5 ).
      t48 = t49->find_direct_structure( i_type_9913 = t51 ).
      DATA(t52) = 3.
      DATA(t53) = CAST zcl_lnt_syntax_input( t2 ).
      me->parse_section( i_node = t48 i_visibility_5c1f = t52 i_input_967e = t53 ).
      DATA t54 TYPE REF TO zcl_lnt_structure_node.
      DATA t55 TYPE REF TO zcl_lnt_structure_node.
      DATA(t56) = CAST zcl_lnt_structure_node( t3 ).
      t55 = t56.
      DATA(t57) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d700_0943ee7a14b4 ).
      t54 = t55->find_direct_structure( i_type_9913 = t57 ).
      DATA(t58) = 2.
      DATA(t59) = CAST zcl_lnt_syntax_input( t2 ).
      me->parse_section( i_node = t54 i_visibility_5c1f = t58 i_input_967e = t59 ).
      DATA t60 TYPE REF TO zcl_lnt_structure_node.
      DATA t61 TYPE REF TO zcl_lnt_structure_node.
      DATA(t62) = CAST zcl_lnt_structure_node( t3 ).
      t61 = t62.
      DATA(t63) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e ).
      t60 = t61->find_direct_structure( i_type_9913 = t63 ).
      DATA(t64) = 1.
      DATA(t65) = CAST zcl_lnt_syntax_input( t2 ).
      me->parse_section( i_node = t60 i_visibility_5c1f = t64 i_input_967e = t65 ).
      RETURN.
    ENDIF.
    DATA t66 TYPE REF TO zcl_lnt_structure_node.
    DATA t67 TYPE REF TO zcl_lnt_structure_node.
    DATA(t68) = CAST zcl_lnt_structure_node( t1 ).
    DATA(t69) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d683_aa96b8bd10e1 ).
    t67 = t68->find_direct_structure( i_type_9913 = t69 ).
    t66 = t67.
    DATA t70 TYPE abap_bool.
    DATA(t71) = CAST zcl_lnt_structure_node( t66 ).
    t70 = xsdbool( t71 IS BOUND ).
    IF t70 = abap_true.
      DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t73 TYPE REF TO zcl_lnt_structure_node.
      DATA(t74) = CAST zcl_lnt_structure_node( t66 ).
      t73 = t74.
      DATA(t75) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d523_88ac7053af9c ).
      t72 = t73->find_all_statements( i_type_9913 = t75 ).
      DATA t76 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t76.
      DATA t77 TYPE REF TO object.
      CLEAR t77.
      LOOP AT t72->items INTO t77.
        t76 ?= t77.
        DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t78.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        DATA t80 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t80.
        DATA t81 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t81.
        DATA t82 TYPE REF TO zcl_lnt_expression_node.
        DATA t83 TYPE REF TO zcl_lnt_expression_node.
        DATA(t84) = CAST zcl_lnt_statement_node( t76 ).
        DATA(t85) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d198_f214049174db ).
        t83 = t84->find_first_expression( i_type_9913 = t85 ).
        t82 = t83.
        DATA t86 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t86.
        DATA(t87) = VALUE abap_bool( ).
        DATA(t88) = CAST zcl_lnt_expression_node( t82 ).
        IF t88 IS INITIAL.
          t87 = abap_true.
        ENDIF.
        IF t87 = abap_true.
          DATA t89 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t89.
          t86 = t89.
        ELSE.
          DATA t90 TYPE REF TO zcl_lnt_abstract_token.
          DATA t91 TYPE REF TO zcl_lnt_expression_node.
          DATA(t92) = CAST zcl_lnt_expression_node( t82 ).
          t91 = t92.
          t90 = t91->get_first_token( ).
          t86 = t90.
        ENDIF.
        t81 = t86.
        t80 = t81.
        DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t93.
        DATA(t94) = VALUE abap_bool( ).
        DATA(t95) = CAST zcl_lnt_abstract_token( t80 ).
        IF t95 IS INITIAL.
          t94 = abap_true.
        ENDIF.
        IF t94 = abap_true.
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t96.
          t93 = t96.
        ELSE.
          DATA t97 TYPE string.
          DATA t98 TYPE REF TO zcl_lnt_abstract_token.
          DATA t99 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t100) = CAST zcl_lnt_abstract_token( t80 ).
          t99 = t100.
          t98 = t99.
          DATA t101 TYPE string.
          DATA(t102) = CAST zcl_lnt_abstract_token( t98 ).
          t101 = t102->str.
          t97 = t101.
          DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t103->has = abap_true.
          t103->value = t97.
          t93 = t103.
        ENDIF.
        t79 = t93.
        t78 = t79.
        DATA(t104) = VALUE abap_bool( ).
        DATA(t105) = CAST zlnt_runtime_opti_4ba3bdccd169( t78 ).
        IF t105 IS BOUND.
          IF t105->has = abap_true.
            t104 = xsdbool( strlen( t105->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t104 = abap_true.
          DATA(t106) = CAST zlnt_runtime_arra_8ecd6afe19e0( me->declared_interfaces ).
          DATA t107 TYPE string.
          DATA t108 TYPE string.
          DATA(t109) = CAST zlnt_runtime_opti_4ba3bdccd169( t78 ).
          t108 = t109->value.
          DATA(t110) = strlen( t108 ).
          t107 = t108.
          IF t107 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t107 TO UPPER CASE.
          ELSE.
            t107 = zlnt_runtime_uppe_91169605024d=>full( t107 ).
          ENDIF.
          APPEND t107 TO t106->items.
        ENDIF.
      ENDLOOP.
      DATA t111 TYPE REF TO zcl_lnt_structure_node.
      DATA t112 TYPE REF TO zcl_lnt_structure_node.
      DATA(t113) = CAST zcl_lnt_structure_node( t66 ).
      t112 = t113.
      DATA(t114) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d717_78ede11c0134 ).
      t111 = t112->find_direct_structure( i_type_9913 = t114 ).
      DATA(t115) = 3.
      DATA(t116) = CAST zcl_lnt_syntax_input( t2 ).
      me->parse_section( i_node = t111 i_visibility_5c1f = t115 i_input_967e = t116 ).
      RETURN.
    ENDIF.
    DATA t117 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t117.
    DATA t118 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t119.
    DATA(t120) = abap_true.
    IF t120 = abap_true.
      DATA(t121) = |MethodDefinition, expected ClassDefinition or InterfaceDefin|.
      t121 = t121 && |ition|.
      DATA(t122) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t122->has = abap_true.
      t122->value = t121.
      t119 = t122.
    ELSE.
      DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t123.
      t119 = t123.
    ENDIF.
    t118 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t119 ).
    t117 = NEW #( ).
    t117->payload = t118.
    RAISE EXCEPTION t117.
  ENDMETHOD.

  METHOD parse_section.
    DATA(t1) = CAST zcl_lnt_structure_node( i_node ).
    DATA(t2) = i_visibility_5c1f.
    DATA(t3) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    DATA(t6) = CAST zcl_lnt_structure_node( t1 ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = CAST zcl_lnt_structure_node( t5 ).
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zcl_lnt_abstract_node.
    DATA t14 TYPE REF TO zcl_lnt_structure_node.
    DATA(t15) = CAST zcl_lnt_structure_node( t1 ).
    t14 = t15.
    t13 = t14.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t17) = CAST zcl_lnt_abstract_node( t13 ).
    t16 = t17->children.
    t12 = t16.
    t11 ?= t12.
    DATA t18 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t18.
    DATA t19 TYPE REF TO object.
    CLEAR t19.
    LOOP AT t11->items INTO t19.
      t18 ?= t19.
      DATA t20 TYPE REF TO zif_lnt_union_dc0fb493.
      DATA t21 TYPE REF TO zif_lnt_union_dc0fb493.
      DATA t22 TYPE REF TO object.
      DATA(t23) = CAST zif_lnt_union_8249fcb1( t18 ).
      t22 = t23->get_db65( ).
      DATA t24 TYPE REF TO object.
      t24 = t22.
      t21 ?= t24.
      t20 = t21.
      DATA t25 TYPE abap_bool.
      DATA(t26) = CAST zif_lnt_union_8249fcb1( t18 ).
      t25 = xsdbool( t26 IS BOUND AND t26 IS INSTANCE OF zcl_lnt_structure_node ).
      IF t25 = abap_true.
        DATA t27 TYPE abap_bool.
        DATA(t28) = CAST zif_lnt_union_dc0fb493( t20 ).
        t27 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_sr_data ).
        IF t27 = abap_true.
          DATA t29 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t30 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t31 TYPE REF TO zcl_lnt_structure_node.
          DATA(t32) = CAST zif_lnt_union_8249fcb1( t18 ).
          DATA t33 TYPE REF TO object.
          t33 = t32.
          t31 ?= t33.
          DATA(t34) = CAST zcl_lnt_syntax_input( t3 ).
          t30 = zcl_lnt_sy_struct_data=>run_syntax( i_node = t31 i_input_967e = t34 ).
          t29 = t30.
          DATA(t35) = VALUE abap_bool( ).
          DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t37) = CAST zcl_lnt_typed_identifier( t29 ).
          t36 = t37.
          DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t39.
          t38 = t39.
          DATA(t40) = VALUE abap_bool( ).
          DATA(t41) = VALUE abap_bool( ).
          DATA(t42) = CAST zcl_lnt_typed_identifier( t36 ).
          IF t42 IS INITIAL.
            t41 = abap_true.
          ENDIF.
          t40 = xsdbool( t41 = abap_false ).
          t35 = t40.
          IF t35 = abap_true.
            DATA t43 TYPE REF TO zcl_lnt_class_attribute.
            CLEAR t43.
            DATA t44 TYPE REF TO zcl_lnt_class_attribute.
            CLEAR t44.
            DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t46) = CAST zcl_lnt_typed_identifier( t29 ).
            t45 = t46.
            DATA t47 TYPE int8.
            DATA(t48) = t2.
            t47 = t48.
            DATA t49 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t50 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t51 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t52) = CAST zcl_lnt_typed_identifier( t29 ).
            t51 = t52.
            t50 = t51.
            DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA(t54) = CAST zcl_lnt_typed_identifier( t50 ).
            t53 = t54->meta.
            t49 = t53.
            DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t55.
            DATA(t56) = abap_true.
            IF t56 = abap_true.
              DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t58 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t59 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t60) = CAST zcl_lnt_typed_identifier( t29 ).
              t59 = t60.
              t58 = t59.
              DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA(t62) = CAST zcl_lnt_typed_identifier( t58 ).
              t61 = t62->value.
              t57 = t61.
              t55 = t57.
            ELSE.
              DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t63.
              t55 = t63.
            ENDIF.
            t44 = NEW zcl_lnt_class_attribute( i_id = t45 i_visibility_5c1f = t47 i_meta = t49 i_value = t55 ).
            t43 = t44.
            DATA(t64) = CAST zlnt_runtime_arra_c22708faf2e3( me->instance ).
            DATA(t65) = CAST zcl_lnt_class_attribute( t43 ).
            APPEND t65 TO t64->items.
            DATA t66 TYPE REF TO zcl_lnt_current_scope.
            DATA t67 TYPE REF TO zcl_lnt_current_scope.
            DATA(t68) = CAST zcl_lnt_syntax_input( t3 ).
            t67 = t68->scope.
            t66 = t67.
            DATA t69 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t70) = CAST zcl_lnt_class_attribute( t43 ).
            t69 = t70.
            DATA(t71) = VALUE abap_bool( ).
            DATA t72 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t73) = CAST zcl_lnt_typed_identifier( t69 ).
            t72 = t73.
            DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t75.
            t74 = t75.
            DATA(t76) = VALUE abap_bool( ).
            DATA(t77) = CAST zcl_lnt_typed_identifier( t72 ).
            IF t77 IS INITIAL.
              t76 = abap_true.
            ENDIF.
            t71 = t76.
            IF t71 = abap_true.
            ELSE.
              DATA(t78) = CAST zcl_lnt_current_scope( t66 ).
              DATA(t79) = VALUE string( ).
              DATA t80 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t81 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t82) = CAST zcl_lnt_typed_identifier( t69 ).
              t81 = t82.
              t80 = t81.
              DATA(t83) = VALUE string( ).
              DATA t84 TYPE string.
              DATA t85 TYPE string.
              DATA t86 TYPE REF TO zcl_lnt_abstract_token.
              DATA t87 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t88) = CAST zcl_lnt_fi_identifier( t80 ).
              t87 = t88->token.
              t86 = t87.
              DATA t89 TYPE string.
              DATA(t90) = CAST zcl_lnt_abstract_token( t86 ).
              t89 = t90->str.
              t85 = t89.
              t84 = t85.
              DATA(t91) = VALUE abap_bool( ).
              DATA(t92) = VALUE string( ).
              DATA(t93) = t84.
              DATA(t94) = 0.
              DATA(t95) = 1.
              DATA(t96) = strlen( t93 ).
              IF t94 < 0.
                t94 = t94 + t96.
                IF t94 < 0.
                  t94 = 0.
                ENDIF.
              ENDIF.
              IF t94 > t96 OR t95 <= 0.
                CLEAR t92.
              ELSE.
                IF t95 > t96 - t94.
                  t95 = t96 - t94.
                ENDIF.
                t92 = t93+t94(t95).
              ENDIF.
              DATA(t97) = |!|.
              t91 = xsdbool( t92 = t97 ).
              IF t91 = abap_true.
                DATA(t98) = VALUE string( ).
                DATA t99 TYPE string.
                DATA(t100) = t84.
                t99 = t100.
                DATA(t101) = VALUE string( ).
                DATA(t102) = t99.
                DATA(t103) = 1.
                DATA t104 TYPE i.
                DATA(t105) = t99.
                DATA(t106) = strlen( t105 ).
                t104 = t106.
                DATA(t107) = strlen( t102 ).
                IF t103 < 0.
                  t103 = t103 + t107.
                  IF t103 < 0.
                    t103 = 0.
                  ENDIF.
                ENDIF.
                IF t103 > t107 OR t104 <= 0.
                  CLEAR t101.
                ELSE.
                  IF t104 > t107 - t103.
                    t104 = t107 - t103.
                  ENDIF.
                  t101 = t102+t103(t104).
                ENDIF.
                t98 = t101.
                t84 = t98.
              ENDIF.
              DATA(t108) = t84.
              t83 = t108.
              t79 = t83.
              DATA t109 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t110) = CAST zcl_lnt_typed_identifier( t69 ).
              t109 = t110.
              t78->add_named_identifier( i_name = t79 i_identifier = t109 ).
            ENDIF.
          ENDIF.
        ELSE.
          DATA t111 TYPE abap_bool.
          DATA(t112) = CAST zif_lnt_union_dc0fb493( t20 ).
          t111 = xsdbool( t112 IS BOUND AND t112 IS INSTANCE OF zcl_lnt_sr_class_data ).
          IF t111 = abap_true.
            DATA t113 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t114 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t115) = NEW zcl_lnt_sy_struct_class_data( ).
            DATA t116 TYPE REF TO zcl_lnt_structure_node.
            DATA(t117) = CAST zif_lnt_union_8249fcb1( t18 ).
            DATA t118 TYPE REF TO object.
            t118 = t117.
            t116 ?= t118.
            DATA(t119) = CAST zcl_lnt_syntax_input( t3 ).
            t114 = t115->run_syntax( i_node = t116 i_input_967e = t119 ).
            t113 = t114.
            DATA(t120) = VALUE abap_bool( ).
            DATA t121 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t122) = CAST zcl_lnt_typed_identifier( t113 ).
            t121 = t122.
            DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t124.
            t123 = t124.
            DATA(t125) = VALUE abap_bool( ).
            DATA(t126) = VALUE abap_bool( ).
            DATA(t127) = CAST zcl_lnt_typed_identifier( t121 ).
            IF t127 IS INITIAL.
              t126 = abap_true.
            ENDIF.
            t125 = xsdbool( t126 = abap_false ).
            t120 = t125.
            IF t120 = abap_true.
              DATA t128 TYPE REF TO zcl_lnt_class_attribute.
              CLEAR t128.
              DATA t129 TYPE REF TO zcl_lnt_class_attribute.
              CLEAR t129.
              DATA t130 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t131) = CAST zcl_lnt_typed_identifier( t113 ).
              t130 = t131.
              DATA t132 TYPE int8.
              DATA(t133) = t2.
              t132 = t133.
              DATA t134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t135 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t136 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t137) = CAST zcl_lnt_typed_identifier( t113 ).
              t136 = t137.
              t135 = t136.
              DATA t138 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA(t139) = CAST zcl_lnt_typed_identifier( t135 ).
              t138 = t139->meta.
              t134 = t138.
              DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t140.
              DATA(t141) = abap_true.
              IF t141 = abap_true.
                DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t143 TYPE REF TO zcl_lnt_typed_identifier.
                DATA t144 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t145) = CAST zcl_lnt_typed_identifier( t113 ).
                t144 = t145.
                t143 = t144.
                DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA(t147) = CAST zcl_lnt_typed_identifier( t143 ).
                t146 = t147->value.
                t142 = t146.
                t140 = t142.
              ELSE.
                DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t148.
                t140 = t148.
              ENDIF.
              t129 = NEW zcl_lnt_class_attribute( i_id = t130 i_visibility_5c1f = t132 i_meta = t134 i_value = t140 ).
              t128 = t129.
              DATA(t149) = CAST zlnt_runtime_arra_c22708faf2e3( me->static_9977 ).
              DATA(t150) = CAST zcl_lnt_class_attribute( t128 ).
              APPEND t150 TO t149->items.
              DATA t151 TYPE REF TO zcl_lnt_current_scope.
              DATA t152 TYPE REF TO zcl_lnt_current_scope.
              DATA(t153) = CAST zcl_lnt_syntax_input( t3 ).
              t152 = t153->scope.
              t151 = t152.
              DATA t154 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t155) = CAST zcl_lnt_class_attribute( t128 ).
              t154 = t155.
              DATA(t156) = VALUE abap_bool( ).
              DATA t157 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t158) = CAST zcl_lnt_typed_identifier( t154 ).
              t157 = t158.
              DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t160.
              t159 = t160.
              DATA(t161) = VALUE abap_bool( ).
              DATA(t162) = CAST zcl_lnt_typed_identifier( t157 ).
              IF t162 IS INITIAL.
                t161 = abap_true.
              ENDIF.
              t156 = t161.
              IF t156 = abap_true.
              ELSE.
                DATA(t163) = CAST zcl_lnt_current_scope( t151 ).
                DATA(t164) = VALUE string( ).
                DATA t165 TYPE REF TO zcl_lnt_fi_identifier.
                DATA t166 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t167) = CAST zcl_lnt_typed_identifier( t154 ).
                t166 = t167.
                t165 = t166.
                DATA(t168) = VALUE string( ).
                DATA t169 TYPE string.
                DATA t170 TYPE string.
                DATA t171 TYPE REF TO zcl_lnt_abstract_token.
                DATA t172 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t173) = CAST zcl_lnt_fi_identifier( t165 ).
                t172 = t173->token.
                t171 = t172.
                DATA t174 TYPE string.
                DATA(t175) = CAST zcl_lnt_abstract_token( t171 ).
                t174 = t175->str.
                t170 = t174.
                t169 = t170.
                DATA(t176) = VALUE abap_bool( ).
                DATA(t177) = VALUE string( ).
                DATA(t178) = t169.
                DATA(t179) = 0.
                DATA(t180) = 1.
                DATA(t181) = strlen( t178 ).
                IF t179 < 0.
                  t179 = t179 + t181.
                  IF t179 < 0.
                    t179 = 0.
                  ENDIF.
                ENDIF.
                IF t179 > t181 OR t180 <= 0.
                  CLEAR t177.
                ELSE.
                  IF t180 > t181 - t179.
                    t180 = t181 - t179.
                  ENDIF.
                  t177 = t178+t179(t180).
                ENDIF.
                DATA(t182) = |!|.
                t176 = xsdbool( t177 = t182 ).
                IF t176 = abap_true.
                  DATA(t183) = VALUE string( ).
                  DATA t184 TYPE string.
                  DATA(t185) = t169.
                  t184 = t185.
                  DATA(t186) = VALUE string( ).
                  DATA(t187) = t184.
                  DATA(t188) = 1.
                  DATA t189 TYPE i.
                  DATA(t190) = t184.
                  DATA(t191) = strlen( t190 ).
                  t189 = t191.
                  DATA(t192) = strlen( t187 ).
                  IF t188 < 0.
                    t188 = t188 + t192.
                    IF t188 < 0.
                      t188 = 0.
                    ENDIF.
                  ENDIF.
                  IF t188 > t192 OR t189 <= 0.
                    CLEAR t186.
                  ELSE.
                    IF t189 > t192 - t188.
                      t189 = t192 - t188.
                    ENDIF.
                    t186 = t187+t188(t189).
                  ENDIF.
                  t183 = t186.
                  t169 = t183.
                ENDIF.
                DATA(t193) = t169.
                t168 = t193.
                t164 = t168.
                DATA t194 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t195) = CAST zcl_lnt_typed_identifier( t154 ).
                t194 = t195.
                t163->add_named_identifier( i_name = t164 i_identifier = t194 ).
              ENDIF.
            ENDIF.
          ELSE.
            DATA t196 TYPE abap_bool.
            DATA(t197) = CAST zif_lnt_union_dc0fb493( t20 ).
            t196 = xsdbool( t197 IS BOUND AND t197 IS INSTANCE OF zcl_lnt_sr_constants ).
            IF t196 = abap_true.
              DATA t198 TYPE REF TO zcl_lnt_shape_28fac025.
              DATA t199 TYPE REF TO zcl_lnt_shape_28fac025.
              DATA(t200) = NEW zcl_lnt_sy_constants( ).
              DATA t201 TYPE REF TO zcl_lnt_structure_node.
              DATA(t202) = CAST zif_lnt_union_8249fcb1( t18 ).
              DATA t203 TYPE REF TO object.
              t203 = t202.
              t201 ?= t203.
              DATA(t204) = CAST zcl_lnt_syntax_input( t3 ).
              t199 = t200->run_syntax( i_node = t201 i_input_967e = t204 ).
              t198 = t199.
              DATA t205 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t206 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t207) = CAST zcl_lnt_shape_28fac025( t198 ).
              t206 = t207->type_cba0.
              t205 = t206.
              DATA t208 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
              DATA t209 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
              DATA(t210) = CAST zcl_lnt_shape_28fac025( t198 ).
              t209 = t210->values.
              t208 = t209.
              DATA(t211) = VALUE abap_bool( ).
              DATA t212 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t213) = CAST zcl_lnt_typed_identifier( t205 ).
              t212 = t213.
              DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t215.
              t214 = t215.
              DATA(t216) = VALUE abap_bool( ).
              DATA(t217) = VALUE abap_bool( ).
              DATA(t218) = CAST zcl_lnt_typed_identifier( t212 ).
              IF t218 IS INITIAL.
                t217 = abap_true.
              ENDIF.
              t216 = xsdbool( t217 = abap_false ).
              t211 = t216.
              IF t211 = abap_true.
                DATA t219 TYPE REF TO zcl_lnt_class_constant.
                CLEAR t219.
                DATA t220 TYPE REF TO zcl_lnt_class_constant.
                CLEAR t220.
                DATA t221 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t222) = CAST zcl_lnt_typed_identifier( t205 ).
                t221 = t222.
                DATA t223 TYPE int8.
                DATA(t224) = t2.
                t223 = t224.
                DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t225.
                DATA(t226) = CAST zlnt_runtime_map__abd6fd794ffb( t208 ).
                IF t226 IS BOUND.
                  CREATE OBJECT t225.
                  t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  DATA t227 TYPE REF TO object.
                  t227 = t226.
                  t225->oval = t227.
                ENDIF.
                t220 = NEW zcl_lnt_class_constant( i_id = t221 i_visibility_5c1f = t223 i_value = t225 ).
                t219 = t220.
                DATA(t228) = CAST zlnt_runtime_arra_c22708faf2e3( me->constants ).
                DATA(t229) = CAST zcl_lnt_class_constant( t219 ).
                APPEND t229 TO t228->items.
                DATA t230 TYPE REF TO zcl_lnt_current_scope.
                DATA t231 TYPE REF TO zcl_lnt_current_scope.
                DATA(t232) = CAST zcl_lnt_syntax_input( t3 ).
                t231 = t232->scope.
                t230 = t231.
                DATA t233 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t234) = CAST zcl_lnt_class_constant( t219 ).
                t233 = t234.
                DATA(t235) = VALUE abap_bool( ).
                DATA t236 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t237) = CAST zcl_lnt_typed_identifier( t233 ).
                t236 = t237.
                DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t239.
                t238 = t239.
                DATA(t240) = VALUE abap_bool( ).
                DATA(t241) = CAST zcl_lnt_typed_identifier( t236 ).
                IF t241 IS INITIAL.
                  t240 = abap_true.
                ENDIF.
                t235 = t240.
                IF t235 = abap_true.
                ELSE.
                  DATA(t242) = CAST zcl_lnt_current_scope( t230 ).
                  DATA(t243) = VALUE string( ).
                  DATA t244 TYPE REF TO zcl_lnt_fi_identifier.
                  DATA t245 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t246) = CAST zcl_lnt_typed_identifier( t233 ).
                  t245 = t246.
                  t244 = t245.
                  DATA(t247) = VALUE string( ).
                  DATA t248 TYPE string.
                  DATA t249 TYPE string.
                  DATA t250 TYPE REF TO zcl_lnt_abstract_token.
                  DATA t251 TYPE REF TO zcl_lnt_abstract_token.
                  DATA(t252) = CAST zcl_lnt_fi_identifier( t244 ).
                  t251 = t252->token.
                  t250 = t251.
                  DATA t253 TYPE string.
                  DATA(t254) = CAST zcl_lnt_abstract_token( t250 ).
                  t253 = t254->str.
                  t249 = t253.
                  t248 = t249.
                  DATA(t255) = VALUE abap_bool( ).
                  DATA(t256) = VALUE string( ).
                  DATA(t257) = t248.
                  DATA(t258) = 0.
                  DATA(t259) = 1.
                  DATA(t260) = strlen( t257 ).
                  IF t258 < 0.
                    t258 = t258 + t260.
                    IF t258 < 0.
                      t258 = 0.
                    ENDIF.
                  ENDIF.
                  IF t258 > t260 OR t259 <= 0.
                    CLEAR t256.
                  ELSE.
                    IF t259 > t260 - t258.
                      t259 = t260 - t258.
                    ENDIF.
                    t256 = t257+t258(t259).
                  ENDIF.
                  DATA(t261) = |!|.
                  t255 = xsdbool( t256 = t261 ).
                  IF t255 = abap_true.
                    DATA(t262) = VALUE string( ).
                    DATA t263 TYPE string.
                    DATA(t264) = t248.
                    t263 = t264.
                    DATA(t265) = VALUE string( ).
                    DATA(t266) = t263.
                    DATA(t267) = 1.
                    DATA t268 TYPE i.
                    DATA(t269) = t263.
                    DATA(t270) = strlen( t269 ).
                    t268 = t270.
                    DATA(t271) = strlen( t266 ).
                    IF t267 < 0.
                      t267 = t267 + t271.
                      IF t267 < 0.
                        t267 = 0.
                      ENDIF.
                    ENDIF.
                    IF t267 > t271 OR t268 <= 0.
                      CLEAR t265.
                    ELSE.
                      IF t268 > t271 - t267.
                        t268 = t271 - t267.
                      ENDIF.
                      t265 = t266+t267(t268).
                    ENDIF.
                    t262 = t265.
                    t248 = t262.
                  ENDIF.
                  DATA(t272) = t248.
                  t247 = t272.
                  t243 = t247.
                  DATA t273 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t274) = CAST zcl_lnt_typed_identifier( t233 ).
                  t273 = t274.
                  t242->add_named_identifier( i_name = t243 i_identifier = t273 ).
                ENDIF.
              ENDIF.
            ELSE.
              DATA t275 TYPE abap_bool.
              DATA(t276) = CAST zif_lnt_union_dc0fb493( t20 ).
              t275 = xsdbool( t276 IS BOUND AND t276 IS INSTANCE OF zcl_lnt_sr_type_enum ).
              IF t275 = abap_true.
                DATA t277 TYPE REF TO zcl_lnt_shape_33d96643.
                DATA t278 TYPE REF TO zcl_lnt_shape_33d96643.
                DATA(t279) = NEW zcl_lnt_sy_type_enum( ).
                DATA t280 TYPE REF TO zcl_lnt_structure_node.
                DATA(t281) = CAST zif_lnt_union_8249fcb1( t18 ).
                DATA t282 TYPE REF TO object.
                t282 = t281.
                t280 ?= t282.
                DATA(t283) = CAST zcl_lnt_syntax_input( t3 ).
                t278 = t279->run_syntax( i_node = t280 i_input_967e = t283 ).
                t277 = t278.
                DATA t284 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA t285 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t286) = CAST zcl_lnt_shape_33d96643( t277 ).
                t285 = t286->values.
                t284 = t285.
                DATA t287 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA t288 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t289) = CAST zcl_lnt_shape_33d96643( t277 ).
                t288 = t289->types.
                t287 = t288.
                DATA(t290) = CAST zlnt_runtime_arra_c22708faf2e3( t284 ).
                DATA t291 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t291.
                DATA t292 TYPE REF TO object.
                CLEAR t292.
                LOOP AT t290->items INTO t292.
                  t291 ?= t292.
                  DATA t293 TYPE REF TO zcl_lnt_class_constant.
                  DATA t294 TYPE REF TO zcl_lnt_class_constant.
                  DATA(t295) = CAST zcl_lnt_typed_identifier( t291 ).
                  DATA t296 TYPE int8.
                  DATA(t297) = t2.
                  t296 = t297.
                  DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA(t299) = |novalueClassAttributeEnum|.
                  CREATE OBJECT t298.
                  t298->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                  t298->sval = t299.
                  t294 = NEW zcl_lnt_class_constant( i_id = t295 i_visibility_5c1f = t296 i_value = t298 ).
                  t293 = t294.
                  DATA(t300) = CAST zlnt_runtime_arra_c22708faf2e3( me->constants ).
                  DATA(t301) = CAST zcl_lnt_class_constant( t293 ).
                  APPEND t301 TO t300->items.
                  DATA t302 TYPE REF TO zcl_lnt_current_scope.
                  DATA t303 TYPE REF TO zcl_lnt_current_scope.
                  DATA(t304) = CAST zcl_lnt_syntax_input( t3 ).
                  t303 = t304->scope.
                  t302 = t303.
                  DATA t305 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t306) = CAST zcl_lnt_class_constant( t293 ).
                  t305 = t306.
                  DATA(t307) = VALUE abap_bool( ).
                  DATA t308 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t309) = CAST zcl_lnt_typed_identifier( t305 ).
                  t308 = t309.
                  DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t311.
                  t310 = t311.
                  DATA(t312) = VALUE abap_bool( ).
                  DATA(t313) = CAST zcl_lnt_typed_identifier( t308 ).
                  IF t313 IS INITIAL.
                    t312 = abap_true.
                  ENDIF.
                  t307 = t312.
                  IF t307 = abap_true.
                  ELSE.
                    DATA(t314) = CAST zcl_lnt_current_scope( t302 ).
                    DATA(t315) = VALUE string( ).
                    DATA t316 TYPE REF TO zcl_lnt_fi_identifier.
                    DATA t317 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA(t318) = CAST zcl_lnt_typed_identifier( t305 ).
                    t317 = t318.
                    t316 = t317.
                    DATA(t319) = VALUE string( ).
                    DATA t320 TYPE string.
                    DATA t321 TYPE string.
                    DATA t322 TYPE REF TO zcl_lnt_abstract_token.
                    DATA t323 TYPE REF TO zcl_lnt_abstract_token.
                    DATA(t324) = CAST zcl_lnt_fi_identifier( t316 ).
                    t323 = t324->token.
                    t322 = t323.
                    DATA t325 TYPE string.
                    DATA(t326) = CAST zcl_lnt_abstract_token( t322 ).
                    t325 = t326->str.
                    t321 = t325.
                    t320 = t321.
                    DATA(t327) = VALUE abap_bool( ).
                    DATA(t328) = VALUE string( ).
                    DATA(t329) = t320.
                    DATA(t330) = 0.
                    DATA(t331) = 1.
                    DATA(t332) = strlen( t329 ).
                    IF t330 < 0.
                      t330 = t330 + t332.
                      IF t330 < 0.
                        t330 = 0.
                      ENDIF.
                    ENDIF.
                    IF t330 > t332 OR t331 <= 0.
                      CLEAR t328.
                    ELSE.
                      IF t331 > t332 - t330.
                        t331 = t332 - t330.
                      ENDIF.
                      t328 = t329+t330(t331).
                    ENDIF.
                    DATA(t333) = |!|.
                    t327 = xsdbool( t328 = t333 ).
                    IF t327 = abap_true.
                      DATA(t334) = VALUE string( ).
                      DATA t335 TYPE string.
                      DATA(t336) = t320.
                      t335 = t336.
                      DATA(t337) = VALUE string( ).
                      DATA(t338) = t335.
                      DATA(t339) = 1.
                      DATA t340 TYPE i.
                      DATA(t341) = t335.
                      DATA(t342) = strlen( t341 ).
                      t340 = t342.
                      DATA(t343) = strlen( t338 ).
                      IF t339 < 0.
                        t339 = t339 + t343.
                        IF t339 < 0.
                          t339 = 0.
                        ENDIF.
                      ENDIF.
                      IF t339 > t343 OR t340 <= 0.
                        CLEAR t337.
                      ELSE.
                        IF t340 > t343 - t339.
                          t340 = t343 - t339.
                        ENDIF.
                        t337 = t338+t339(t340).
                      ENDIF.
                      t334 = t337.
                      t320 = t334.
                    ENDIF.
                    DATA(t344) = t320.
                    t319 = t344.
                    t315 = t319.
                    DATA t345 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA(t346) = CAST zcl_lnt_typed_identifier( t305 ).
                    t345 = t346.
                    t314->add_named_identifier( i_name = t315 i_identifier = t345 ).
                  ENDIF.
                ENDLOOP.
                DATA(t347) = CAST zlnt_runtime_arra_c22708faf2e3( t287 ).
                DATA t348 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t348.
                DATA t349 TYPE REF TO object.
                CLEAR t349.
                LOOP AT t347->items INTO t349.
                  t348 ?= t349.
                  DATA(t350) = CAST zlnt_runtime_arra_c22708faf2e3( me->tlist ).
                  DATA t351 TYPE REF TO zcl_lnt_type_definitions_entry.
                  DATA(t352) = CAST zcl_lnt_typed_identifier( t348 ).
                  DATA t353 TYPE int8.
                  DATA(t354) = t2.
                  t353 = t354.
                  t351 = NEW zcl_lnt_type_definitions_entry( i_type_9913 = t352 i_visibility_5c1f = t353 ).
                  APPEND t351 TO t350->items.
                ENDLOOP.
              ELSE.
                DATA t355 TYPE abap_bool.
                DATA(t356) = CAST zif_lnt_union_dc0fb493( t20 ).
                t355 = xsdbool( t356 IS BOUND AND t356 IS INSTANCE OF zcl_lnt_sr_type_mesh ).
                IF t355 = abap_true.
                  DATA t357 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA t358 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t359) = NEW zcl_lnt_sy_type_mesh( ).
                  DATA t360 TYPE REF TO zcl_lnt_structure_node.
                  DATA(t361) = CAST zif_lnt_union_8249fcb1( t18 ).
                  DATA t362 TYPE REF TO object.
                  t362 = t361.
                  t360 ?= t362.
                  DATA(t363) = CAST zcl_lnt_syntax_input( t3 ).
                  t358 = t359->run_syntax( i_node = t360 i_input_967e = t363 ).
                  t357 = t358.
                  DATA t364 TYPE abap_bool.
                  DATA(t365) = CAST zcl_lnt_typed_identifier( t357 ).
                  t364 = xsdbool( t365 IS BOUND ).
                  IF t364 = abap_true.
                    DATA t366 TYPE REF TO zcl_lnt_current_scope.
                    DATA t367 TYPE REF TO zcl_lnt_current_scope.
                    DATA(t368) = CAST zcl_lnt_syntax_input( t3 ).
                    t367 = t368->scope.
                    t366 = t367.
                    DATA t369 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t369.
                    DATA t370 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t370.
                    DATA(t371) = abap_true.
                    IF t371 = abap_true.
                      DATA t372 TYPE REF TO zcl_lnt_typed_identifier.
                      DATA(t373) = CAST zcl_lnt_typed_identifier( t357 ).
                      t372 = t373.
                      t370 = t372.
                    ELSE.
                      DATA t374 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t374.
                      t370 = t374.
                    ENDIF.
                    t369 = t370.
                    DATA(t375) = VALUE abap_bool( ).
                    DATA t376 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA(t377) = CAST zcl_lnt_typed_identifier( t369 ).
                    t376 = t377.
                    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t379.
                    t378 = t379.
                    DATA(t380) = VALUE abap_bool( ).
                    DATA(t381) = CAST zcl_lnt_typed_identifier( t376 ).
                    IF t381 IS INITIAL.
                      t380 = abap_true.
                    ENDIF.
                    t375 = t380.
                    IF t375 = abap_true.
                    ELSE.
                      DATA(t382) = CAST zcl_lnt_current_scope( t366 ).
                      DATA(t383) = VALUE string( ).
                      DATA t384 TYPE REF TO zcl_lnt_fi_identifier.
                      DATA t385 TYPE REF TO zcl_lnt_typed_identifier.
                      DATA(t386) = CAST zcl_lnt_typed_identifier( t369 ).
                      t385 = t386.
                      t384 = t385.
                      DATA(t387) = VALUE string( ).
                      DATA t388 TYPE string.
                      DATA t389 TYPE string.
                      DATA t390 TYPE REF TO zcl_lnt_abstract_token.
                      DATA t391 TYPE REF TO zcl_lnt_abstract_token.
                      DATA(t392) = CAST zcl_lnt_fi_identifier( t384 ).
                      t391 = t392->token.
                      t390 = t391.
                      DATA t393 TYPE string.
                      DATA(t394) = CAST zcl_lnt_abstract_token( t390 ).
                      t393 = t394->str.
                      t389 = t393.
                      t388 = t389.
                      DATA(t395) = VALUE abap_bool( ).
                      DATA(t396) = VALUE string( ).
                      DATA(t397) = t388.
                      DATA(t398) = 0.
                      DATA(t399) = 1.
                      DATA(t400) = strlen( t397 ).
                      IF t398 < 0.
                        t398 = t398 + t400.
                        IF t398 < 0.
                          t398 = 0.
                        ENDIF.
                      ENDIF.
                      IF t398 > t400 OR t399 <= 0.
                        CLEAR t396.
                      ELSE.
                        IF t399 > t400 - t398.
                          t399 = t400 - t398.
                        ENDIF.
                        t396 = t397+t398(t399).
                      ENDIF.
                      DATA(t401) = |!|.
                      t395 = xsdbool( t396 = t401 ).
                      IF t395 = abap_true.
                        DATA(t402) = VALUE string( ).
                        DATA t403 TYPE string.
                        DATA(t404) = t388.
                        t403 = t404.
                        DATA(t405) = VALUE string( ).
                        DATA(t406) = t403.
                        DATA(t407) = 1.
                        DATA t408 TYPE i.
                        DATA(t409) = t403.
                        DATA(t410) = strlen( t409 ).
                        t408 = t410.
                        DATA(t411) = strlen( t406 ).
                        IF t407 < 0.
                          t407 = t407 + t411.
                          IF t407 < 0.
                            t407 = 0.
                          ENDIF.
                        ENDIF.
                        IF t407 > t411 OR t408 <= 0.
                          CLEAR t405.
                        ELSE.
                          IF t408 > t411 - t407.
                            t408 = t411 - t407.
                          ENDIF.
                          t405 = t406+t407(t408).
                        ENDIF.
                        t402 = t405.
                        t388 = t402.
                      ENDIF.
                      DATA(t412) = t388.
                      t387 = t412.
                      t383 = t387.
                      DATA t413 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t413.
                      DATA(t414) = abap_true.
                      IF t414 = abap_true.
                        DATA t415 TYPE REF TO zcl_lnt_typed_identifier.
                        DATA(t416) = CAST zcl_lnt_typed_identifier( t369 ).
                        t415 = t416.
                        t413 = t415.
                      ELSE.
                        DATA t417 TYPE REF TO zcl_lnt_typed_identifier.
                        CLEAR t417.
                        t413 = t417.
                      ENDIF.
                      t382->add_type_named( i_name = t383 i_type_9913 = t413 ).
                    ENDIF.
                    DATA(t418) = CAST zlnt_runtime_arra_c22708faf2e3( me->tlist ).
                    DATA t419 TYPE REF TO zcl_lnt_type_definitions_entry.
                    DATA t420 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA(t421) = CAST zcl_lnt_typed_identifier( t357 ).
                    t420 = t421.
                    DATA t422 TYPE int8.
                    DATA(t423) = t2.
                    t422 = t423.
                    t419 = NEW zcl_lnt_type_definitions_entry( i_type_9913 = t420 i_visibility_5c1f = t422 ).
                    APPEND t419 TO t418->items.
                  ENDIF.
                ELSE.
                  DATA t424 TYPE abap_bool.
                  DATA(t425) = CAST zif_lnt_union_dc0fb493( t20 ).
                  t424 = xsdbool( t425 IS BOUND AND t425 IS INSTANCE OF zcl_lnt_sr_types ).
                  IF t424 = abap_true.
                    DATA t426 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA t427 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA(t428) = NEW zcl_lnt_sy_types( ).
                    DATA t429 TYPE REF TO zcl_lnt_structure_node.
                    DATA(t430) = CAST zif_lnt_union_8249fcb1( t18 ).
                    DATA t431 TYPE REF TO object.
                    t431 = t430.
                    t429 ?= t431.
                    DATA(t432) = CAST zcl_lnt_syntax_input( t3 ).
                    DATA t433 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t433.
                    t427 = t428->run_syntax( i_node = t429 i_input_967e = t432 i_qualified_name_prefix = t433 ).
                    t426 = t427.
                    DATA t434 TYPE abap_bool.
                    DATA(t435) = CAST zcl_lnt_typed_identifier( t426 ).
                    t434 = xsdbool( t435 IS BOUND ).
                    IF t434 = abap_true.
                      DATA t436 TYPE REF TO zcl_lnt_current_scope.
                      DATA t437 TYPE REF TO zcl_lnt_current_scope.
                      DATA(t438) = CAST zcl_lnt_syntax_input( t3 ).
                      t437 = t438->scope.
                      t436 = t437.
                      DATA t439 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t439.
                      DATA t440 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t440.
                      DATA(t441) = abap_true.
                      IF t441 = abap_true.
                        DATA t442 TYPE REF TO zcl_lnt_typed_identifier.
                        DATA(t443) = CAST zcl_lnt_typed_identifier( t426 ).
                        t442 = t443.
                        t440 = t442.
                      ELSE.
                        DATA t444 TYPE REF TO zcl_lnt_typed_identifier.
                        CLEAR t444.
                        t440 = t444.
                      ENDIF.
                      t439 = t440.
                      DATA(t445) = VALUE abap_bool( ).
                      DATA t446 TYPE REF TO zcl_lnt_typed_identifier.
                      DATA(t447) = CAST zcl_lnt_typed_identifier( t439 ).
                      t446 = t447.
                      DATA t448 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t449.
                      t448 = t449.
                      DATA(t450) = VALUE abap_bool( ).
                      DATA(t451) = CAST zcl_lnt_typed_identifier( t446 ).
                      IF t451 IS INITIAL.
                        t450 = abap_true.
                      ENDIF.
                      t445 = t450.
                      IF t445 = abap_true.
                      ELSE.
                        DATA(t452) = CAST zcl_lnt_current_scope( t436 ).
                        DATA(t453) = VALUE string( ).
                        DATA t454 TYPE REF TO zcl_lnt_fi_identifier.
                        DATA t455 TYPE REF TO zcl_lnt_typed_identifier.
                        DATA(t456) = CAST zcl_lnt_typed_identifier( t439 ).
                        t455 = t456.
                        t454 = t455.
                        DATA(t457) = VALUE string( ).
                        DATA t458 TYPE string.
                        DATA t459 TYPE string.
                        DATA t460 TYPE REF TO zcl_lnt_abstract_token.
                        DATA t461 TYPE REF TO zcl_lnt_abstract_token.
                        DATA(t462) = CAST zcl_lnt_fi_identifier( t454 ).
                        t461 = t462->token.
                        t460 = t461.
                        DATA t463 TYPE string.
                        DATA(t464) = CAST zcl_lnt_abstract_token( t460 ).
                        t463 = t464->str.
                        t459 = t463.
                        t458 = t459.
                        DATA(t465) = VALUE abap_bool( ).
                        DATA(t466) = VALUE string( ).
                        DATA(t467) = t458.
                        DATA(t468) = 0.
                        DATA(t469) = 1.
                        DATA(t470) = strlen( t467 ).
                        IF t468 < 0.
                          t468 = t468 + t470.
                          IF t468 < 0.
                            t468 = 0.
                          ENDIF.
                        ENDIF.
                        IF t468 > t470 OR t469 <= 0.
                          CLEAR t466.
                        ELSE.
                          IF t469 > t470 - t468.
                            t469 = t470 - t468.
                          ENDIF.
                          t466 = t467+t468(t469).
                        ENDIF.
                        DATA(t471) = |!|.
                        t465 = xsdbool( t466 = t471 ).
                        IF t465 = abap_true.
                          DATA(t472) = VALUE string( ).
                          DATA t473 TYPE string.
                          DATA(t474) = t458.
                          t473 = t474.
                          DATA(t475) = VALUE string( ).
                          DATA(t476) = t473.
                          DATA(t477) = 1.
                          DATA t478 TYPE i.
                          DATA(t479) = t473.
                          DATA(t480) = strlen( t479 ).
                          t478 = t480.
                          DATA(t481) = strlen( t476 ).
                          IF t477 < 0.
                            t477 = t477 + t481.
                            IF t477 < 0.
                              t477 = 0.
                            ENDIF.
                          ENDIF.
                          IF t477 > t481 OR t478 <= 0.
                            CLEAR t475.
                          ELSE.
                            IF t478 > t481 - t477.
                              t478 = t481 - t477.
                            ENDIF.
                            t475 = t476+t477(t478).
                          ENDIF.
                          t472 = t475.
                          t458 = t472.
                        ENDIF.
                        DATA(t482) = t458.
                        t457 = t482.
                        t453 = t457.
                        DATA t483 TYPE REF TO zcl_lnt_typed_identifier.
                        CLEAR t483.
                        DATA(t484) = abap_true.
                        IF t484 = abap_true.
                          DATA t485 TYPE REF TO zcl_lnt_typed_identifier.
                          DATA(t486) = CAST zcl_lnt_typed_identifier( t439 ).
                          t485 = t486.
                          t483 = t485.
                        ELSE.
                          DATA t487 TYPE REF TO zcl_lnt_typed_identifier.
                          CLEAR t487.
                          t483 = t487.
                        ENDIF.
                        t452->add_type_named( i_name = t453 i_type_9913 = t483 ).
                      ENDIF.
                      DATA(t488) = CAST zlnt_runtime_arra_c22708faf2e3( me->tlist ).
                      DATA t489 TYPE REF TO zcl_lnt_type_definitions_entry.
                      DATA t490 TYPE REF TO zcl_lnt_typed_identifier.
                      DATA(t491) = CAST zcl_lnt_typed_identifier( t426 ).
                      t490 = t491.
                      DATA t492 TYPE int8.
                      DATA(t493) = t2.
                      t492 = t493.
                      t489 = NEW zcl_lnt_type_definitions_entry( i_type_9913 = t490 i_visibility_5c1f = t492 ).
                      APPEND t489 TO t488->items.
                    ENDIF.
                  ELSE.
                    DATA t494 TYPE REF TO zcl_lnt_structure_node.
                    CLEAR t494.
                    DATA(t495) = abap_true.
                    IF t495 = abap_true.
                      DATA t496 TYPE REF TO zcl_lnt_structure_node.
                      DATA(t497) = CAST zif_lnt_union_8249fcb1( t18 ).
                      DATA t498 TYPE REF TO object.
                      t498 = t497.
                      t496 ?= t498.
                      t494 = t496.
                    ELSE.
                      DATA t499 TYPE REF TO zcl_lnt_structure_node.
                      CLEAR t499.
                      t494 = t499.
                    ENDIF.
                    DATA(t500) = t2.
                    DATA(t501) = CAST zcl_lnt_syntax_input( t3 ).
                    me->parse_section( i_node = t494 i_visibility_5c1f = t500 i_input_967e = t501 ).
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ELSE.
        DATA t502 TYPE abap_bool.
        DATA(t503) = CAST zif_lnt_union_8249fcb1( t18 ).
        t502 = xsdbool( t503 IS BOUND AND t503 IS INSTANCE OF zcl_lnt_statement_node ).
        IF t502 = abap_true.
          DATA t504 TYPE abap_bool.
          DATA(t505) = CAST zif_lnt_union_dc0fb493( t20 ).
          t504 = xsdbool( t505 IS BOUND AND t505 IS INSTANCE OF zcl_lnt_st_data ).
          IF t504 = abap_true.
            DATA(t506) = CAST zlnt_runtime_arra_c22708faf2e3( me->instance ).
            DATA t507 TYPE REF TO zcl_lnt_class_attribute.
            DATA t508 TYPE REF TO zcl_lnt_statement_node.
            DATA(t509) = CAST zif_lnt_union_8249fcb1( t18 ).
            DATA t510 TYPE REF TO object.
            t510 = t509.
            t508 ?= t510.
            DATA(t511) = t2.
            DATA(t512) = CAST zcl_lnt_syntax_input( t3 ).
            t507 = me->parse_attribute( i_node = t508 i_visibility_5c1f = t511 i_input_967e = t512 ).
            APPEND t507 TO t506->items.
          ELSE.
            DATA t513 TYPE abap_bool.
            DATA(t514) = CAST zif_lnt_union_dc0fb493( t20 ).
            t513 = xsdbool( t514 IS BOUND AND t514 IS INSTANCE OF zcl_lnt_st_class_data ).
            IF t513 = abap_true.
              DATA(t515) = CAST zlnt_runtime_arra_c22708faf2e3( me->static_9977 ).
              DATA t516 TYPE REF TO zcl_lnt_class_attribute.
              DATA t517 TYPE REF TO zcl_lnt_statement_node.
              DATA(t518) = CAST zif_lnt_union_8249fcb1( t18 ).
              DATA t519 TYPE REF TO object.
              t519 = t518.
              t517 ?= t519.
              DATA(t520) = t2.
              DATA(t521) = CAST zcl_lnt_syntax_input( t3 ).
              t516 = me->parse_attribute( i_node = t517 i_visibility_5c1f = t520 i_input_967e = t521 ).
              APPEND t516 TO t515->items.
            ELSE.
              DATA t522 TYPE abap_bool.
              DATA(t523) = CAST zif_lnt_union_dc0fb493( t20 ).
              t522 = xsdbool( t523 IS BOUND AND t523 IS INSTANCE OF zcl_lnt_aliases ).
              IF t522 = abap_true.
                DATA t524 TYPE REF TO zcl_lnt_statement_node.
                DATA(t525) = CAST zif_lnt_union_8249fcb1( t18 ).
                DATA t526 TYPE REF TO object.
                t526 = t525.
                t524 ?= t526.
                DATA(t527) = t2.
                DATA(t528) = CAST zcl_lnt_syntax_input( t3 ).
                me->parse_alias( i_node = t524 i_visibility_5c1f = t527 i_input_967e = t528 ).
              ELSE.
                DATA t529 TYPE abap_bool.
                DATA(t530) = CAST zif_lnt_union_dc0fb493( t20 ).
                t529 = xsdbool( t530 IS BOUND AND t530 IS INSTANCE OF zcl_lnt_st_statem_constant ).
                IF t529 = abap_true.
                  DATA t531 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA t532 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t533) = NEW zcl_lnt_sy_statem_constant( ).
                  DATA t534 TYPE REF TO zcl_lnt_statement_node.
                  DATA(t535) = CAST zif_lnt_union_8249fcb1( t18 ).
                  DATA t536 TYPE REF TO object.
                  t536 = t535.
                  t534 ?= t536.
                  DATA(t537) = CAST zcl_lnt_syntax_input( t3 ).
                  t532 = t533->run_syntax( i_node = t534 i_input_967e = t537 ).
                  t531 = t532.
                  DATA t538 TYPE abap_bool.
                  DATA(t539) = CAST zcl_lnt_typed_identifier( t531 ).
                  t538 = xsdbool( t539 IS BOUND ).
                  IF t538 = abap_true.
                    DATA t540 TYPE REF TO zcl_lnt_class_constant.
                    DATA t541 TYPE REF TO zcl_lnt_class_constant.
                    DATA(t542) = CAST zcl_lnt_typed_identifier( t531 ).
                    DATA t543 TYPE int8.
                    DATA(t544) = t2.
                    t543 = t544.
                    DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA t546 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA(t547) = CAST zcl_lnt_typed_identifier( t531 ).
                    t546 = t547.
                    DATA t548 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA(t549) = CAST zcl_lnt_typed_identifier( t546 ).
                    t548 = t549->value.
                    t545 = t548.
                    t541 = NEW zcl_lnt_class_constant( i_id = t542 i_visibility_5c1f = t543 i_value = t545 ).
                    t540 = t541.
                    DATA(t550) = CAST zlnt_runtime_arra_c22708faf2e3( me->constants ).
                    DATA(t551) = CAST zcl_lnt_class_constant( t540 ).
                    APPEND t551 TO t550->items.
                    DATA t552 TYPE REF TO zcl_lnt_current_scope.
                    DATA t553 TYPE REF TO zcl_lnt_current_scope.
                    DATA(t554) = CAST zcl_lnt_syntax_input( t3 ).
                    t553 = t554->scope.
                    t552 = t553.
                    DATA t555 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA(t556) = CAST zcl_lnt_class_constant( t540 ).
                    t555 = t556.
                    DATA(t557) = VALUE abap_bool( ).
                    DATA t558 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA(t559) = CAST zcl_lnt_typed_identifier( t555 ).
                    t558 = t559.
                    DATA t560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t561.
                    t560 = t561.
                    DATA(t562) = VALUE abap_bool( ).
                    DATA(t563) = CAST zcl_lnt_typed_identifier( t558 ).
                    IF t563 IS INITIAL.
                      t562 = abap_true.
                    ENDIF.
                    t557 = t562.
                    IF t557 = abap_true.
                    ELSE.
                      DATA(t564) = CAST zcl_lnt_current_scope( t552 ).
                      DATA(t565) = VALUE string( ).
                      DATA t566 TYPE REF TO zcl_lnt_fi_identifier.
                      DATA t567 TYPE REF TO zcl_lnt_typed_identifier.
                      DATA(t568) = CAST zcl_lnt_typed_identifier( t555 ).
                      t567 = t568.
                      t566 = t567.
                      DATA(t569) = VALUE string( ).
                      DATA t570 TYPE string.
                      DATA t571 TYPE string.
                      DATA t572 TYPE REF TO zcl_lnt_abstract_token.
                      DATA t573 TYPE REF TO zcl_lnt_abstract_token.
                      DATA(t574) = CAST zcl_lnt_fi_identifier( t566 ).
                      t573 = t574->token.
                      t572 = t573.
                      DATA t575 TYPE string.
                      DATA(t576) = CAST zcl_lnt_abstract_token( t572 ).
                      t575 = t576->str.
                      t571 = t575.
                      t570 = t571.
                      DATA(t577) = VALUE abap_bool( ).
                      DATA(t578) = VALUE string( ).
                      DATA(t579) = t570.
                      DATA(t580) = 0.
                      DATA(t581) = 1.
                      DATA(t582) = strlen( t579 ).
                      IF t580 < 0.
                        t580 = t580 + t582.
                        IF t580 < 0.
                          t580 = 0.
                        ENDIF.
                      ENDIF.
                      IF t580 > t582 OR t581 <= 0.
                        CLEAR t578.
                      ELSE.
                        IF t581 > t582 - t580.
                          t581 = t582 - t580.
                        ENDIF.
                        t578 = t579+t580(t581).
                      ENDIF.
                      DATA(t583) = |!|.
                      t577 = xsdbool( t578 = t583 ).
                      IF t577 = abap_true.
                        DATA(t584) = VALUE string( ).
                        DATA t585 TYPE string.
                        DATA(t586) = t570.
                        t585 = t586.
                        DATA(t587) = VALUE string( ).
                        DATA(t588) = t585.
                        DATA(t589) = 1.
                        DATA t590 TYPE i.
                        DATA(t591) = t585.
                        DATA(t592) = strlen( t591 ).
                        t590 = t592.
                        DATA(t593) = strlen( t588 ).
                        IF t589 < 0.
                          t589 = t589 + t593.
                          IF t589 < 0.
                            t589 = 0.
                          ENDIF.
                        ENDIF.
                        IF t589 > t593 OR t590 <= 0.
                          CLEAR t587.
                        ELSE.
                          IF t590 > t593 - t589.
                            t590 = t593 - t589.
                          ENDIF.
                          t587 = t588+t589(t590).
                        ENDIF.
                        t584 = t587.
                        t570 = t584.
                      ENDIF.
                      DATA(t594) = t570.
                      t569 = t594.
                      t565 = t569.
                      DATA t595 TYPE REF TO zcl_lnt_typed_identifier.
                      DATA(t596) = CAST zcl_lnt_typed_identifier( t555 ).
                      t595 = t596.
                      t564->add_named_identifier( i_name = t565 i_identifier = t595 ).
                    ENDIF.
                  ENDIF.
                ELSE.
                  DATA t597 TYPE abap_bool.
                  DATA(t598) = CAST zif_lnt_union_dc0fb493( t20 ).
                  t597 = xsdbool( t598 IS BOUND AND t598 IS INSTANCE OF zcl_lnt_st_statem_type ).
                  IF t597 = abap_true.
                    DATA t599 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA t600 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA(t601) = NEW zcl_lnt_sy_type( ).
                    DATA t602 TYPE REF TO zcl_lnt_statement_node.
                    DATA(t603) = CAST zif_lnt_union_8249fcb1( t18 ).
                    DATA t604 TYPE REF TO object.
                    t604 = t603.
                    t602 ?= t604.
                    DATA(t605) = CAST zcl_lnt_syntax_input( t3 ).
                    DATA t606 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t606.
                    t600 = t601->run_syntax( i_node = t602 i_input_967e = t605 i_qualified_name_prefix = t606 ).
                    t599 = t600.
                    DATA t607 TYPE abap_bool.
                    DATA(t608) = CAST zcl_lnt_typed_identifier( t599 ).
                    t607 = xsdbool( t608 IS BOUND ).
                    IF t607 = abap_true.
                      DATA t609 TYPE REF TO zcl_lnt_current_scope.
                      DATA t610 TYPE REF TO zcl_lnt_current_scope.
                      DATA(t611) = CAST zcl_lnt_syntax_input( t3 ).
                      t610 = t611->scope.
                      t609 = t610.
                      DATA t612 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t612.
                      DATA t613 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t613.
                      DATA(t614) = abap_true.
                      IF t614 = abap_true.
                        DATA t615 TYPE REF TO zcl_lnt_typed_identifier.
                        DATA(t616) = CAST zcl_lnt_typed_identifier( t599 ).
                        t615 = t616.
                        t613 = t615.
                      ELSE.
                        DATA t617 TYPE REF TO zcl_lnt_typed_identifier.
                        CLEAR t617.
                        t613 = t617.
                      ENDIF.
                      t612 = t613.
                      DATA(t618) = VALUE abap_bool( ).
                      DATA t619 TYPE REF TO zcl_lnt_typed_identifier.
                      DATA(t620) = CAST zcl_lnt_typed_identifier( t612 ).
                      t619 = t620.
                      DATA t621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t622.
                      t621 = t622.
                      DATA(t623) = VALUE abap_bool( ).
                      DATA(t624) = CAST zcl_lnt_typed_identifier( t619 ).
                      IF t624 IS INITIAL.
                        t623 = abap_true.
                      ENDIF.
                      t618 = t623.
                      IF t618 = abap_true.
                      ELSE.
                        DATA(t625) = CAST zcl_lnt_current_scope( t609 ).
                        DATA(t626) = VALUE string( ).
                        DATA t627 TYPE REF TO zcl_lnt_fi_identifier.
                        DATA t628 TYPE REF TO zcl_lnt_typed_identifier.
                        DATA(t629) = CAST zcl_lnt_typed_identifier( t612 ).
                        t628 = t629.
                        t627 = t628.
                        DATA(t630) = VALUE string( ).
                        DATA t631 TYPE string.
                        DATA t632 TYPE string.
                        DATA t633 TYPE REF TO zcl_lnt_abstract_token.
                        DATA t634 TYPE REF TO zcl_lnt_abstract_token.
                        DATA(t635) = CAST zcl_lnt_fi_identifier( t627 ).
                        t634 = t635->token.
                        t633 = t634.
                        DATA t636 TYPE string.
                        DATA(t637) = CAST zcl_lnt_abstract_token( t633 ).
                        t636 = t637->str.
                        t632 = t636.
                        t631 = t632.
                        DATA(t638) = VALUE abap_bool( ).
                        DATA(t639) = VALUE string( ).
                        DATA(t640) = t631.
                        DATA(t641) = 0.
                        DATA(t642) = 1.
                        DATA(t643) = strlen( t640 ).
                        IF t641 < 0.
                          t641 = t641 + t643.
                          IF t641 < 0.
                            t641 = 0.
                          ENDIF.
                        ENDIF.
                        IF t641 > t643 OR t642 <= 0.
                          CLEAR t639.
                        ELSE.
                          IF t642 > t643 - t641.
                            t642 = t643 - t641.
                          ENDIF.
                          t639 = t640+t641(t642).
                        ENDIF.
                        DATA(t644) = |!|.
                        t638 = xsdbool( t639 = t644 ).
                        IF t638 = abap_true.
                          DATA(t645) = VALUE string( ).
                          DATA t646 TYPE string.
                          DATA(t647) = t631.
                          t646 = t647.
                          DATA(t648) = VALUE string( ).
                          DATA(t649) = t646.
                          DATA(t650) = 1.
                          DATA t651 TYPE i.
                          DATA(t652) = t646.
                          DATA(t653) = strlen( t652 ).
                          t651 = t653.
                          DATA(t654) = strlen( t649 ).
                          IF t650 < 0.
                            t650 = t650 + t654.
                            IF t650 < 0.
                              t650 = 0.
                            ENDIF.
                          ENDIF.
                          IF t650 > t654 OR t651 <= 0.
                            CLEAR t648.
                          ELSE.
                            IF t651 > t654 - t650.
                              t651 = t654 - t650.
                            ENDIF.
                            t648 = t649+t650(t651).
                          ENDIF.
                          t645 = t648.
                          t631 = t645.
                        ENDIF.
                        DATA(t655) = t631.
                        t630 = t655.
                        t626 = t630.
                        DATA t656 TYPE REF TO zcl_lnt_typed_identifier.
                        CLEAR t656.
                        DATA(t657) = abap_true.
                        IF t657 = abap_true.
                          DATA t658 TYPE REF TO zcl_lnt_typed_identifier.
                          DATA(t659) = CAST zcl_lnt_typed_identifier( t612 ).
                          t658 = t659.
                          t656 = t658.
                        ELSE.
                          DATA t660 TYPE REF TO zcl_lnt_typed_identifier.
                          CLEAR t660.
                          t656 = t660.
                        ENDIF.
                        t625->add_type_named( i_name = t626 i_type_9913 = t656 ).
                      ENDIF.
                      DATA(t661) = CAST zlnt_runtime_arra_c22708faf2e3( me->tlist ).
                      DATA t662 TYPE REF TO zcl_lnt_type_definitions_entry.
                      DATA t663 TYPE REF TO zcl_lnt_typed_identifier.
                      DATA(t664) = CAST zcl_lnt_typed_identifier( t599 ).
                      t663 = t664.
                      DATA t665 TYPE int8.
                      DATA(t666) = t2.
                      t665 = t666.
                      t662 = NEW zcl_lnt_type_definitions_entry( i_type_9913 = t663 i_visibility_5c1f = t665 ).
                      APPEND t662 TO t661->items.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD parse_alias.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = i_visibility_5c1f.
    DATA(t3) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t9) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d256_4aab5e345b39 ).
    t7 = t8->find_first_expression( i_type_9913 = t9 ).
    t6 = t7.
    t5 = t6->get_first_token( ).
    t4 = t5.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    DATA(t14) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t15) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    t13 = t14->find_first_expression( i_type_9913 = t15 ).
    t12 = t13.
    t11 = t12->get_first_token( ).
    t10 = t11.
    DATA t16 TYPE string.
    DATA t17 TYPE string.
    DATA t18 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t19) = CAST zcl_lnt_abstract_token( t10 ).
    t18 = t19.
    DATA t20 TYPE string.
    DATA(t21) = CAST zcl_lnt_abstract_token( t18 ).
    t20 = t21->str.
    t17 = t20.
    t16 = t17.
    DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( me->aliases_62bb ).
    DATA t23 TYPE REF TO zcl_lnt_alias.
    DATA(t24) = CAST zcl_lnt_abstract_token( t4 ).
    DATA t25 TYPE int8.
    DATA(t26) = t2.
    t25 = t26.
    DATA(t27) = t16.
    DATA(t28) = CONV string( me->filename ).
    t23 = NEW zcl_lnt_alias( i_token = t24 i_visibility_5c1f = t25 i_component = t27 i_filename = t28 ).
    APPEND t23 TO t22->items.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = VALUE i( ).
    DATA(t31) = t16.
    DATA(t32) = |~|.
    DATA(t33) = strlen( t31 ).
    IF t32 IS INITIAL.
      t30 = 0.
    ELSE.
      FIND t32 IN t31 MATCH OFFSET t30.
      IF sy-subrc <> 0.
        t30 = -1.
      ENDIF.
    ENDIF.
    DATA(t34) = 0.
    t29 = xsdbool( t30 >= t34 ).
    IF t29 = abap_true.
      DATA(t35) = VALUE string( ).
      DATA(t36) = VALUE string( ).
      DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t38) = t16.
      DATA(t39) = |~|.
      DATA(t40) = strlen( t38 ).
      DATA t41 TYPE i.
      DATA(t42) = VALUE i( ).
      DATA(t43) = VALUE i( ).
      DATA t44 TYPE i.
      DATA(t45) = VALUE string( ).
      CREATE OBJECT t37.
      t44 = strlen( t39 ).
      t41 = 0.
      IF t44 = 0.
        WHILE t41 < t40.
          t45 = t38+t41(1).
          APPEND t45 TO t37->items.
          t41 = t41 + 1.
        ENDWHILE.
      ELSE.
        WHILE t41 <= t40.
          FIND FIRST OCCURRENCE OF t39 IN SECTION OFFSET t41 OF t38 MATCH OFFSET t42.
          IF sy-subrc = 0.
            t43 = t42 - t41.
          ELSE.
            t42 = -1.
            t43 = t40 - t41.
          ENDIF.
          CLEAR t45.
          IF t43 > 0.
            t45 = t38+t41(t43).
          ENDIF.
          APPEND t45 TO t37->items.
          IF t42 < 0.
            EXIT.
          ENDIF.
          t41 = t42 + t44.
        ENDWHILE.
      ENDIF.
      READ TABLE t37->items INDEX 1 INTO t36.
      t35 = t36.
      DATA t46 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t46.
      DATA t47 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t47.
      DATA t48 TYPE REF TO zcl_lnt_current_scope.
      DATA t49 TYPE REF TO zcl_lnt_current_scope.
      DATA(t50) = CAST zcl_lnt_syntax_input( t3 ).
      t49 = t50->scope.
      t48 = t49.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t52.
      DATA(t53) = abap_true.
      IF t53 = abap_true.
        DATA(t54) = t35.
        DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t55->has = abap_true.
        t55->value = t54.
        t52 = t55.
      ELSE.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        t52 = t56.
      ENDIF.
      t51 = t52.
      DATA t57 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t57.
      DATA(t58) = VALUE abap_bool( ).
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t60) = CAST zlnt_runtime_opti_4ba3bdccd169( t51 ).
      t59 = t60.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      t61 = t62.
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = CAST zlnt_runtime_opti_4ba3bdccd169( t59 ).
      IF t64 IS INITIAL.
        t63 = abap_true.
      ELSEIF t64->has = abap_false.
        t63 = abap_true.
      ENDIF.
      t58 = t63.
      IF t58 = abap_true.
        DATA t65 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t65.
        t57 = t65.
      ELSE.
        DATA t66 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t66.
        DATA t67 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t67.
        DATA t68 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t68.
        DATA t69 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t70 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t71) = CAST zcl_lnt_current_scope( t48 ).
        t70 = t71->current.
        t69 = t70.
        DATA t72 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t72.
        DATA(t73) = VALUE abap_bool( ).
        DATA(t74) = CAST zcl_lnt_spaghetti_scope_node( t69 ).
        IF t74 IS INITIAL.
          t73 = abap_true.
        ENDIF.
        IF t73 = abap_true.
          DATA t75 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t75.
          t72 = t75.
        ELSE.
          DATA t76 TYPE REF TO zif_lnt_interface_definition.
          DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t78) = CAST zcl_lnt_spaghetti_scope_node( t69 ).
          t77 = t78.
          DATA t79 TYPE string.
          DATA(t80) = CAST zlnt_runtime_opti_4ba3bdccd169( t51 ).
          t79 = t80->value.
          t76 = t77->find_interface_definition( i_name = t79 ).
          t72 = t76.
        ENDIF.
        t68 = t72.
        t67 = t68.
        DATA t81 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t81.
        DATA t82 TYPE abap_bool.
        DATA(t83) = CAST zif_lnt_interface_definition( t67 ).
        t82 = xsdbool( t83 IS BOUND ).
        IF t82 = abap_true.
          DATA t84 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t84.
          DATA(t85) = abap_true.
          IF t85 = abap_true.
            DATA t86 TYPE REF TO zif_lnt_interface_definition.
            DATA(t87) = CAST zif_lnt_interface_definition( t67 ).
            t86 = t87.
            t84 = t86.
          ELSE.
            DATA t88 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t88.
            t84 = t88.
          ENDIF.
          t81 = t84.
        ELSE.
          DATA t89 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t89.
          DATA t90 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t90.
          DATA t91 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t91.
          DATA t92 TYPE REF TO zif_lnt_object.
          CLEAR t92.
          DATA t93 TYPE REF TO zif_lnt_registry.
          DATA(t94) = CAST zcl_lnt_current_scope( t48 ).
          t93 = t94->reg.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          DATA(t96) = abap_true.
          IF t96 = abap_true.
            DATA(t97) = |INTF|.
            DATA(t98) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t98->has = abap_true.
            t98->value = t97.
            t95 = t98.
          ELSE.
            DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t99.
            t95 = t99.
          ENDIF.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          DATA(t101) = abap_true.
          IF t101 = abap_true.
            DATA t102 TYPE string.
            DATA(t103) = CAST zlnt_runtime_opti_4ba3bdccd169( t51 ).
            t102 = t103->value.
            DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t104->has = abap_true.
            t104->value = t102.
            t100 = t104.
          ELSE.
            DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t105.
            t100 = t105.
          ENDIF.
          t92 = t93->get_object( i_type_9913 = t95 i_name = t100 ).
          DATA t106 TYPE REF TO object.
          t106 = t92.
          t91 ?= t106.
          t90 = t91.
          DATA t107 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t107.
          DATA t108 TYPE abap_bool.
          DATA(t109) = CAST zcl_lnt_ob_interface( t90 ).
          t108 = xsdbool( t109 IS BOUND ).
          IF t108 = abap_true.
            DATA t110 TYPE REF TO zif_lnt_interface_definition.
            DATA t111 TYPE REF TO zcl_lnt_ob_interface.
            DATA t112 TYPE REF TO zcl_lnt_ob_interface.
            DATA(t113) = CAST zcl_lnt_ob_interface( t90 ).
            t112 = t113.
            t111 = t112.
            DATA t114 TYPE REF TO zif_lnt_interface_definition.
            DATA(t115) = CAST zcl_lnt_ob_interface( t111 ).
            t114 = t115->def.
            t110 = t114.
            t107 = t110.
          ELSE.
            DATA t116 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t116.
            t107 = t116.
          ENDIF.
          t89 = t107.
          t81 = t89.
        ENDIF.
        t66 = t81.
        t57 = t66.
      ENDIF.
      t47 = t57.
      t46 = t47.
      DATA t117 TYPE abap_bool.
      DATA(t118) = CAST zif_lnt_interface_definition( t46 ).
      t117 = xsdbool( t118 IS BOUND ).
      IF t117 = abap_true.
        DATA t119 TYPE REF TO zcl_lnt_current_scope.
        DATA(t120) = CAST zcl_lnt_syntax_input( t3 ).
        t119 = t120->scope.
        DATA t121 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t121.
        DATA(t122) = abap_true.
        IF t122 = abap_true.
          DATA(t123) = CAST zcl_lnt_abstract_token( t10 ).
          t121 = t123.
        ELSE.
          DATA t124 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t124.
          t121 = t124.
        ENDIF.
        DATA t125 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t125.
        DATA(t126) = abap_true.
        IF t126 = abap_true.
          DATA t127 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t128 TYPE REF TO zif_lnt_interface_definition.
          DATA(t129) = CAST zif_lnt_interface_definition( t46 ).
          t128 = t129.
          t127 ?= t128.
          t125 = t127.
        ELSE.
          DATA t130 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t130.
          t125 = t130.
        ENDIF.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t132) = |Object|.
        CREATE OBJECT t131.
        t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t131->sval = t132.
        DATA t133 TYPE string.
        DATA(t134) = CAST zcl_lnt_syntax_input( t3 ).
        t133 = t134->filename.
        DATA t135 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t135.
        DATA(t136) = abap_true.
        IF t136 = abap_true.
          DATA t137 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t137.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t138.
          DATA(t139) = abap_true.
          IF t139 = abap_true.
            DATA t140 TYPE string.
            DATA(t141) = t35.
            DATA(t142) = strlen( t141 ).
            t140 = t141.
            IF t140 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t140 TO UPPER CASE.
            ELSE.
              t140 = zlnt_runtime_uppe_91169605024d=>full( t140 ).
            ENDIF.
            DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t143->has = abap_true.
            t143->value = t140.
            t138 = t143.
          ELSE.
            DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t144.
            t138 = t144.
          ENDIF.
          DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t145.
          DATA(t146) = abap_true.
          IF t146 = abap_true.
            DATA(t147) = |INTF|.
            DATA(t148) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t148->has = abap_true.
            t148->value = t147.
            t145 = t148.
          ELSE.
            DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t149.
            t145 = t149.
          ENDIF.
          DATA t150 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t150.
          t137 = NEW zcl_lnt_ireference_extras( i_oo_name = t138 i_oo_type = t145 i_found_qualified = t150 ).
          t135 = t137.
        ELSE.
          DATA t151 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t151.
          t135 = t151.
        ENDIF.
        t119->add_reference( i_usage = t121 i_referencing = t125 i_type_9913 = t131 i_filename = t133 i_extra = t135 ).
        DATA t152 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t152.
        DATA t153 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t153.
        DATA t154 TYPE REF TO zif_lnt_type_definitions.
        DATA t155 TYPE REF TO zif_lnt_interface_definition.
        DATA(t156) = CAST zif_lnt_interface_definition( t46 ).
        t155 = t156.
        t154 = t155->get_type_definitions( ).
        DATA(t157) = VALUE string( ).
        DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t159) = t16.
        DATA(t160) = |~|.
        DATA(t161) = strlen( t159 ).
        DATA t162 TYPE i.
        DATA(t163) = VALUE i( ).
        DATA(t164) = VALUE i( ).
        DATA t165 TYPE i.
        DATA(t166) = VALUE string( ).
        CREATE OBJECT t158.
        t165 = strlen( t160 ).
        t162 = 0.
        IF t165 = 0.
          WHILE t162 < t161.
            t166 = t159+t162(1).
            APPEND t166 TO t158->items.
            t162 = t162 + 1.
          ENDWHILE.
        ELSE.
          WHILE t162 <= t161.
            FIND FIRST OCCURRENCE OF t160 IN SECTION OFFSET t162 OF t159 MATCH OFFSET t163.
            IF sy-subrc = 0.
              t164 = t163 - t162.
            ELSE.
              t163 = -1.
              t164 = t161 - t162.
            ENDIF.
            CLEAR t166.
            IF t164 > 0.
              t166 = t159+t162(t164).
            ENDIF.
            APPEND t166 TO t158->items.
            IF t163 < 0.
              EXIT.
            ENDIF.
            t162 = t163 + t165.
          ENDWHILE.
        ENDIF.
        READ TABLE t158->items INDEX 2 INTO t157.
        t153 = t154->get_by_name( i_name = t157 ).
        t152 = t153.
        DATA t167 TYPE abap_bool.
        DATA(t168) = CAST zcl_lnt_typed_identifier( t152 ).
        t167 = xsdbool( t168 IS BOUND ).
        IF t167 = abap_true.
          DATA t169 TYPE REF TO zcl_lnt_current_scope.
          DATA(t170) = CAST zcl_lnt_syntax_input( t3 ).
          t169 = t170->scope.
          DATA t171 TYPE string.
          DATA t172 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t173) = CAST zcl_lnt_abstract_token( t4 ).
          t172 = t173.
          DATA t174 TYPE string.
          DATA(t175) = CAST zcl_lnt_abstract_token( t172 ).
          t174 = t175->str.
          t171 = t174.
          DATA t176 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t176.
          DATA(t177) = abap_true.
          IF t177 = abap_true.
            DATA t178 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t179) = CAST zcl_lnt_typed_identifier( t152 ).
            t178 = t179.
            t176 = t178.
          ELSE.
            DATA t180 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t180.
            t176 = t180.
          ENDIF.
          t169->add_type_named( i_name = t171 i_type_9913 = t176 ).
        ENDIF.
        DATA t181 TYPE REF TO zif_lnt_union_a346537f.
        CLEAR t181.
        DATA t182 TYPE REF TO zif_lnt_union_a346537f.
        CLEAR t182.
        DATA t183 TYPE REF TO zif_lnt_attributes.
        DATA t184 TYPE REF TO zif_lnt_interface_definition.
        DATA(t185) = CAST zif_lnt_interface_definition( t46 ).
        t184 = t185.
        t183 = t184->get_attributes( ).
        DATA(t186) = VALUE string( ).
        DATA t187 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t188) = t16.
        DATA(t189) = |~|.
        DATA(t190) = strlen( t188 ).
        DATA t191 TYPE i.
        DATA(t192) = VALUE i( ).
        DATA(t193) = VALUE i( ).
        DATA t194 TYPE i.
        DATA(t195) = VALUE string( ).
        CREATE OBJECT t187.
        t194 = strlen( t189 ).
        t191 = 0.
        IF t194 = 0.
          WHILE t191 < t190.
            t195 = t188+t191(1).
            APPEND t195 TO t187->items.
            t191 = t191 + 1.
          ENDWHILE.
        ELSE.
          WHILE t191 <= t190.
            FIND FIRST OCCURRENCE OF t189 IN SECTION OFFSET t191 OF t188 MATCH OFFSET t192.
            IF sy-subrc = 0.
              t193 = t192 - t191.
            ELSE.
              t192 = -1.
              t193 = t190 - t191.
            ENDIF.
            CLEAR t195.
            IF t193 > 0.
              t195 = t188+t191(t193).
            ENDIF.
            APPEND t195 TO t187->items.
            IF t192 < 0.
              EXIT.
            ENDIF.
            t191 = t192 + t194.
          ENDWHILE.
        ENDIF.
        READ TABLE t187->items INDEX 2 INTO t186.
        t182 = t183->find_by_name( i_name = t186 ).
        t181 = t182.
        DATA t196 TYPE abap_bool.
        DATA(t197) = CAST zif_lnt_union_a346537f( t181 ).
        t196 = xsdbool( t197 IS BOUND ).
        IF t196 = abap_true.
          DATA t198 TYPE REF TO zcl_lnt_current_scope.
          DATA(t199) = CAST zcl_lnt_syntax_input( t3 ).
          t198 = t199->scope.
          DATA t200 TYPE string.
          DATA t201 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t202) = CAST zcl_lnt_abstract_token( t4 ).
          t201 = t202.
          DATA t203 TYPE string.
          DATA(t204) = CAST zcl_lnt_abstract_token( t201 ).
          t203 = t204->str.
          t200 = t203.
          DATA t205 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t206 TYPE REF TO zif_lnt_union_a346537f.
          DATA(t207) = CAST zif_lnt_union_a346537f( t181 ).
          t206 = t207.
          t205 ?= t206.
          t198->add_named_identifier( i_name = t200 i_identifier = t205 ).
        ENDIF.
        DATA(t208) = VALUE string( ).
        DATA(t209) = VALUE string( ).
        DATA t210 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t211) = t16.
        DATA(t212) = |~|.
        DATA(t213) = strlen( t211 ).
        DATA t214 TYPE i.
        DATA(t215) = VALUE i( ).
        DATA(t216) = VALUE i( ).
        DATA t217 TYPE i.
        DATA(t218) = VALUE string( ).
        CREATE OBJECT t210.
        t217 = strlen( t212 ).
        t214 = 0.
        IF t217 = 0.
          WHILE t214 < t213.
            t218 = t211+t214(1).
            APPEND t218 TO t210->items.
            t214 = t214 + 1.
          ENDWHILE.
        ELSE.
          WHILE t214 <= t213.
            FIND FIRST OCCURRENCE OF t212 IN SECTION OFFSET t214 OF t211 MATCH OFFSET t215.
            IF sy-subrc = 0.
              t216 = t215 - t214.
            ELSE.
              t215 = -1.
              t216 = t213 - t214.
            ENDIF.
            CLEAR t218.
            IF t216 > 0.
              t218 = t211+t214(t216).
            ENDIF.
            APPEND t218 TO t210->items.
            IF t215 < 0.
              EXIT.
            ENDIF.
            t214 = t215 + t217.
          ENDWHILE.
        ENDIF.
        READ TABLE t210->items INDEX 2 INTO t209.
        t208 = t209.
        DATA(t219) = VALUE abap_bool( ).
        DATA(t220) = VALUE abap_bool( ).
        DATA(t221) = VALUE abap_bool( ).
        DATA t222 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t223) = CAST zcl_lnt_typed_identifier( t152 ).
        t222 = t223.
        DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t225.
        t224 = t225.
        DATA(t226) = VALUE abap_bool( ).
        DATA(t227) = CAST zcl_lnt_typed_identifier( t222 ).
        IF t227 IS INITIAL.
          t226 = abap_true.
        ENDIF.
        t221 = t226.
        t220 = t221.
        IF t221 = abap_true.
          DATA(t228) = VALUE abap_bool( ).
          DATA t229 TYPE REF TO zif_lnt_union_a346537f.
          DATA(t230) = CAST zif_lnt_union_a346537f( t181 ).
          t229 = t230.
          DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t232.
          t231 = t232.
          DATA(t233) = VALUE abap_bool( ).
          DATA(t234) = CAST zif_lnt_union_a346537f( t229 ).
          IF t234 IS INITIAL.
            t233 = abap_true.
          ENDIF.
          t228 = t233.
          t220 = t228.
        ENDIF.
        t219 = t220.
        IF t220 = abap_true.
          DATA t235 TYPE abap_bool.
          DATA t236 TYPE abap_bool.
          DATA t237 TYPE REF TO zif_lnt_interface_definition.
          DATA(t238) = CAST zif_lnt_interface_definition( t46 ).
          t237 = t238.
          DATA(t239) = t208.
          DATA(t240) = CAST zcl_lnt_syntax_input( t3 ).
          DATA t241 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t241.
          t236 = me->exists_in_interface( i_idef = t237 i_component = t239 i_input_967e = t240 i_visited = t241 ).
          DATA(t242) = abap_false.
          t235 = xsdbool( t236 = t242 ).
          t219 = t235.
        ENDIF.
        IF t219 = abap_true.
          DATA t243 TYPE string.
          DATA t244 TYPE string.
          DATA t245 TYPE string.
          DATA t246 TYPE string.
          DATA(t247) = |Component |.
          DATA(t248) = t208.
          DATA(t249) = strlen( t247 ).
          t246 = |{ t247 }{ t248 }|.
          DATA(t250) = | not found in interface |.
          DATA(t251) = strlen( t246 ).
          t245 = |{ t246 }{ t250 }|.
          DATA t252 TYPE string.
          DATA t253 TYPE REF TO zif_lnt_interface_definition.
          DATA(t254) = CAST zif_lnt_interface_definition( t46 ).
          t253 = t254.
          t252 = t253->get_name( ).
          DATA(t255) = strlen( t245 ).
          t244 = |{ t245 }{ t252 }|.
          t243 = t244.
          DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t257) = CAST zcl_lnt_syntax_input( t3 ).
          t256 = t257->issues.
          DATA t258 TYPE REF TO zcl_lnt_issue.
          DATA(t259) = CAST zcl_lnt_syntax_input( t3 ).
          DATA(t260) = CAST zcl_lnt_abstract_token( t10 ).
          DATA(t261) = t243.
          DATA t262 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t262.
          t258 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t259 i_token = t260 i_message_26cb = t261 i_fix = t262 ).
          APPEND t258 TO t256->items.
        ENDIF.
      ELSE.
        DATA(t263) = VALUE abap_bool( ).
        DATA(t264) = VALUE abap_bool( ).
        DATA(t265) = CAST zlnt_runtime_arra_8ecd6afe19e0( me->declared_interfaces ).
        DATA t266 TYPE string.
        DATA(t267) = t35.
        DATA(t268) = strlen( t267 ).
        t266 = t267.
        IF t266 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t266 TO UPPER CASE.
        ELSE.
          t266 = zlnt_runtime_uppe_91169605024d=>full( t266 ).
        ENDIF.
        t264 = t265->includes( p0 = t266 ).
        t263 = t264.
        IF t264 = abap_false.
          DATA(t269) = VALUE abap_bool( ).
          DATA(t270) = VALUE abap_bool( ).
          DATA t271 TYPE REF TO zcl_lnt_ddic.
          DATA t272 TYPE REF TO zcl_lnt_ddic.
          DATA t273 TYPE REF TO zcl_lnt_current_scope.
          DATA t274 TYPE REF TO zcl_lnt_current_scope.
          DATA(t275) = CAST zcl_lnt_syntax_input( t3 ).
          t274 = t275->scope.
          t273 = t274.
          DATA t276 TYPE REF TO zcl_lnt_ddic.
          DATA t277 TYPE REF TO zif_lnt_registry.
          DATA(t278) = CAST zcl_lnt_current_scope( t273 ).
          t277 = t278->reg.
          t276 = NEW zcl_lnt_ddic( i_reg_f149 = t277 ).
          t272 = t276.
          t271 = t272.
          DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t279.
          DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t280.
          DATA(t281) = abap_true.
          IF t281 = abap_true.
            DATA(t282) = t35.
            DATA(t283) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t283->has = abap_true.
            t283->value = t282.
            t280 = t283.
          ELSE.
            DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t284.
            t280 = t284.
          ENDIF.
          t279 = t280.
          DATA(t285) = VALUE abap_bool( ).
          DATA(t286) = VALUE abap_bool( ).
          DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t288) = CAST zlnt_runtime_opti_4ba3bdccd169( t279 ).
          t287 = t288.
          DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t290.
          t289 = t290.
          DATA(t291) = VALUE abap_bool( ).
          DATA(t292) = CAST zlnt_runtime_opti_4ba3bdccd169( t287 ).
          IF t292 IS INITIAL.
            t291 = abap_true.
          ELSEIF t292->has = abap_false.
            t291 = abap_true.
          ENDIF.
          t286 = t291.
          IF t286 = abap_true.
            DATA(t293) = abap_true.
            t285 = t293.
          ELSE.
            DATA t294 TYPE abap_bool.
            DATA t295 TYPE REF TO zif_lnt_registry.
            DATA(t296) = CAST zcl_lnt_ddic( t271 ).
            t295 = t296->reg.
            DATA t297 TYPE string.
            DATA(t298) = CAST zlnt_runtime_opti_4ba3bdccd169( t279 ).
            t297 = t298->value.
            t294 = t295->in_error_namespace( i_name = t297 ).
            t285 = t294.
          ENDIF.
          t270 = t285.
          DATA(t299) = abap_false.
          t269 = xsdbool( t270 = t299 ).
          t263 = t269.
        ENDIF.
        IF t263 = abap_true.
          DATA t300 TYPE REF TO zcl_lnt_current_scope.
          DATA(t301) = CAST zcl_lnt_syntax_input( t3 ).
          t300 = t301->scope.
          DATA t302 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t302.
          DATA(t303) = abap_true.
          IF t303 = abap_true.
            DATA(t304) = CAST zcl_lnt_abstract_token( t10 ).
            t302 = t304.
          ELSE.
            DATA t305 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t305.
            t302 = t305.
          ENDIF.
          DATA t306 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t306.
          DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t308) = |Object (Void)|.
          CREATE OBJECT t307.
          t307->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t307->sval = t308.
          DATA t309 TYPE string.
          DATA(t310) = CAST zcl_lnt_syntax_input( t3 ).
          t309 = t310->filename.
          DATA t311 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t311.
          t300->add_reference( i_usage = t302 i_referencing = t306 i_type_9913 = t307 i_filename = t309 i_extra = t311 ).
        ELSE.
          DATA t312 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
          CLEAR t312.
          DATA t313 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
          CLEAR t313.
          DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t314.
          DATA(t315) = abap_true.
          IF t315 = abap_true.
            DATA t316 TYPE string.
            DATA t317 TYPE string.
            DATA(t318) = |Interface |.
            DATA(t319) = t35.
            DATA(t320) = strlen( t318 ).
            t317 = |{ t318 }{ t319 }|.
            DATA(t321) = | not found|.
            DATA(t322) = strlen( t317 ).
            t316 = |{ t317 }{ t321 }|.
            DATA(t323) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t323->has = abap_true.
            t323->value = t316.
            t314 = t323.
          ELSE.
            DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t324.
            t314 = t324.
          ENDIF.
          t313 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t314 ).
          t312 = NEW #( ).
          t312->payload = t313.
          RAISE EXCEPTION t312.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD exists_in_interface.
    DATA(t1) = CAST zif_lnt_interface_definition( i_idef ).
    DATA(t2) = i_component.
    DATA(t3) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t4) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_visited ).
    DATA(t5) = VALUE string( ).
    DATA t6 TYPE string.
    DATA t7 TYPE string.
    DATA(t8) = CAST zif_lnt_interface_definition( t1 ).
    t7 = t8->get_name( ).
    DATA(t9) = strlen( t7 ).
    t6 = t7.
    IF t6 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t6 TO UPPER CASE.
    ELSE.
      t6 = zlnt_runtime_uppe_91169605024d=>full( t6 ).
    ENDIF.
    t5 = t6.
    DATA t10 TYPE abap_bool.
    DATA(t11) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
    DATA(t12) = t5.
    t10 = t11->includes( p0 = t12 ).
    IF t10 = abap_true.
      DATA(t13) = abap_false.
      result = t13.
      RETURN.
    ENDIF.
    DATA(t14) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
    DATA(t15) = t5.
    APPEND t15 TO t14->items.
    DATA(t16) = VALUE string( ).
    DATA t17 TYPE string.
    DATA(t18) = t2.
    DATA(t19) = strlen( t18 ).
    t17 = t18.
    IF t17 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t17 TO UPPER CASE.
    ELSE.
      t17 = zlnt_runtime_uppe_91169605024d=>full( t17 ).
    ENDIF.
    t16 = t17.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = VALUE abap_bool( ).
    DATA t25 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t26 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t27 TYPE REF TO zif_lnt_type_definitions.
    DATA(t28) = CAST zif_lnt_interface_definition( t1 ).
    t27 = t28->get_type_definitions( ).
    DATA(t29) = t2.
    t26 = t27->get_by_name( i_name = t29 ).
    t25 = t26.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    t30 = t31.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = CAST zcl_lnt_typed_identifier( t25 ).
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    t32 = xsdbool( t33 = abap_false ).
    t24 = t32.
    t23 = t24.
    IF t24 = abap_false.
      DATA(t35) = VALUE abap_bool( ).
      DATA t36 TYPE REF TO zif_lnt_union_a346537f.
      DATA t37 TYPE REF TO zif_lnt_union_a346537f.
      DATA t38 TYPE REF TO zif_lnt_attributes.
      DATA(t39) = CAST zif_lnt_interface_definition( t1 ).
      t38 = t39->get_attributes( ).
      DATA(t40) = t2.
      t37 = t38->find_by_name( i_name = t40 ).
      t36 = t37.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      t41 = t42.
      DATA(t43) = VALUE abap_bool( ).
      DATA(t44) = VALUE abap_bool( ).
      DATA(t45) = CAST zif_lnt_union_a346537f( t36 ).
      IF t45 IS INITIAL.
        t44 = abap_true.
      ENDIF.
      t43 = xsdbool( t44 = abap_false ).
      t35 = t43.
      t23 = t35.
    ENDIF.
    t22 = t23.
    IF t23 = abap_false.
      DATA(t46) = VALUE abap_bool( ).
      DATA t47 TYPE REF TO zif_lnt_method_definition.
      CLEAR t47.
      DATA t48 TYPE REF TO zif_lnt_method_definition.
      CLEAR t48.
      DATA t49 TYPE REF TO zif_lnt_method_definitions.
      DATA(t50) = CAST zif_lnt_interface_definition( t1 ).
      t49 = t50->get_method_definitions( ).
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      DATA(t52) = abap_true.
      IF t52 = abap_true.
        DATA(t53) = t2.
        DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t54->has = abap_true.
        t54->value = t53.
        t51 = t54.
      ELSE.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        t51 = t55.
      ENDIF.
      t48 = t49->get_by_name( i_name = t51 ).
      t47 = t48.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      t56 = t57.
      DATA(t58) = VALUE abap_bool( ).
      DATA(t59) = VALUE abap_bool( ).
      DATA(t60) = CAST zif_lnt_method_definition( t47 ).
      IF t60 IS INITIAL.
        t59 = abap_true.
      ENDIF.
      t58 = xsdbool( t59 = abap_false ).
      t46 = t58.
      t22 = t46.
    ENDIF.
    t21 = t22.
    IF t22 = abap_false.
      DATA(t61) = VALUE abap_bool( ).
      DATA t62 TYPE abap_bool.
      DATA(t63) = abap_false.
      t62 = t63.
      DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t65) = CAST zif_lnt_interface_definition( t1 ).
      t64 = t65->get_events( ).
      DATA t66 TYPE REF TO zif_lnt_event_definition.
      CLEAR t66.
      DATA t67 TYPE REF TO object.
      CLEAR t67.
      LOOP AT t64->items INTO t67.
        t66 ?= t67.
        DATA(t68) = VALUE abap_bool( ).
        DATA t69 TYPE string.
        DATA t70 TYPE string.
        DATA(t71) = CAST zif_lnt_event_definition( t66 ).
        t70 = t71->get_name( ).
        DATA(t72) = strlen( t70 ).
        t69 = t70.
        IF t69 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t69 TO UPPER CASE.
        ELSE.
          t69 = zlnt_runtime_uppe_91169605024d=>full( t69 ).
        ENDIF.
        DATA(t73) = t16.
        t68 = xsdbool( t69 = t73 ).
        IF t68 = abap_true.
          DATA(t74) = abap_true.
          t62 = t74.
          EXIT.
        ENDIF.
      ENDLOOP.
      DATA(t75) = t62.
      t61 = t75.
      t21 = t61.
    ENDIF.
    t20 = t21.
    IF t21 = abap_false.
      DATA(t76) = VALUE abap_bool( ).
      DATA t77 TYPE abap_bool.
      DATA(t78) = abap_false.
      t77 = t78.
      DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t80) = CAST zif_lnt_interface_definition( t1 ).
      t79 = t80->get_aliases( ).
      DATA t81 TYPE REF TO zcl_lnt_alias.
      CLEAR t81.
      DATA t82 TYPE REF TO object.
      CLEAR t82.
      LOOP AT t79->items INTO t82.
        t81 ?= t82.
        DATA(t83) = VALUE abap_bool( ).
        DATA(t84) = VALUE string( ).
        DATA(t85) = VALUE string( ).
        DATA t86 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t87) = CAST zcl_lnt_alias( t81 ).
        t86 = t87.
        DATA(t88) = VALUE string( ).
        DATA t89 TYPE string.
        DATA t90 TYPE string.
        DATA t91 TYPE REF TO zcl_lnt_abstract_token.
        DATA t92 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t93) = CAST zcl_lnt_fi_identifier( t86 ).
        t92 = t93->token.
        t91 = t92.
        DATA t94 TYPE string.
        DATA(t95) = CAST zcl_lnt_abstract_token( t91 ).
        t94 = t95->str.
        t90 = t94.
        t89 = t90.
        DATA(t96) = VALUE abap_bool( ).
        DATA(t97) = VALUE string( ).
        DATA(t98) = t89.
        DATA(t99) = 0.
        DATA(t100) = 1.
        DATA(t101) = strlen( t98 ).
        IF t99 < 0.
          t99 = t99 + t101.
          IF t99 < 0.
            t99 = 0.
          ENDIF.
        ENDIF.
        IF t99 > t101 OR t100 <= 0.
          CLEAR t97.
        ELSE.
          IF t100 > t101 - t99.
            t100 = t101 - t99.
          ENDIF.
          t97 = t98+t99(t100).
        ENDIF.
        DATA(t102) = |!|.
        t96 = xsdbool( t97 = t102 ).
        IF t96 = abap_true.
          DATA(t103) = VALUE string( ).
          DATA t104 TYPE string.
          DATA(t105) = t89.
          t104 = t105.
          DATA(t106) = VALUE string( ).
          DATA(t107) = t104.
          DATA(t108) = 1.
          DATA t109 TYPE i.
          DATA(t110) = t104.
          DATA(t111) = strlen( t110 ).
          t109 = t111.
          DATA(t112) = strlen( t107 ).
          IF t108 < 0.
            t108 = t108 + t112.
            IF t108 < 0.
              t108 = 0.
            ENDIF.
          ENDIF.
          IF t108 > t112 OR t109 <= 0.
            CLEAR t106.
          ELSE.
            IF t109 > t112 - t108.
              t109 = t112 - t108.
            ENDIF.
            t106 = t107+t108(t109).
          ENDIF.
          t103 = t106.
          t89 = t103.
        ENDIF.
        DATA(t113) = t89.
        t88 = t113.
        t85 = t88.
        DATA(t114) = strlen( t85 ).
        t84 = t85.
        IF t84 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t84 TO UPPER CASE.
        ELSE.
          t84 = zlnt_runtime_uppe_91169605024d=>full( t84 ).
        ENDIF.
        DATA(t115) = t16.
        t83 = xsdbool( t84 = t115 ).
        IF t83 = abap_true.
          DATA(t116) = abap_true.
          t77 = t116.
          EXIT.
        ENDIF.
      ENDLOOP.
      DATA(t117) = t77.
      t76 = t117.
      t20 = t76.
    ENDIF.
    IF t20 = abap_true.
      DATA(t118) = abap_true.
      result = t118.
      RETURN.
    ENDIF.
    DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t120) = CAST zif_lnt_interface_definition( t1 ).
    t119 = t120->get_implementing( ).
    DATA t121 TYPE REF TO zcl_lnt_iimplementing.
    CLEAR t121.
    DATA t122 TYPE REF TO object.
    CLEAR t122.
    LOOP AT t119->items INTO t122.
      t121 ?= t122.
      DATA t123 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t123.
      DATA t124 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t124.
      DATA t125 TYPE REF TO zcl_lnt_current_scope.
      DATA t126 TYPE REF TO zcl_lnt_current_scope.
      DATA(t127) = CAST zcl_lnt_syntax_input( t3 ).
      t126 = t127->scope.
      t125 = t126.
      DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t128.
      DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t129.
      DATA(t130) = abap_true.
      IF t130 = abap_true.
        DATA t131 TYPE string.
        DATA(t132) = CAST zcl_lnt_iimplementing( t121 ).
        t131 = t132->name.
        DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t133->has = abap_true.
        t133->value = t131.
        t129 = t133.
      ELSE.
        DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t134.
        t129 = t134.
      ENDIF.
      t128 = t129.
      DATA t135 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t135.
      DATA(t136) = VALUE abap_bool( ).
      DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t138) = CAST zlnt_runtime_opti_4ba3bdccd169( t128 ).
      t137 = t138.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      t139 = t140.
      DATA(t141) = VALUE abap_bool( ).
      DATA(t142) = CAST zlnt_runtime_opti_4ba3bdccd169( t137 ).
      IF t142 IS INITIAL.
        t141 = abap_true.
      ELSEIF t142->has = abap_false.
        t141 = abap_true.
      ENDIF.
      t136 = t141.
      IF t136 = abap_true.
        DATA t143 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t143.
        t135 = t143.
      ELSE.
        DATA t144 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t144.
        DATA t145 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t145.
        DATA t146 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t146.
        DATA t147 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t148 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t149) = CAST zcl_lnt_current_scope( t125 ).
        t148 = t149->current.
        t147 = t148.
        DATA t150 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t150.
        DATA(t151) = VALUE abap_bool( ).
        DATA(t152) = CAST zcl_lnt_spaghetti_scope_node( t147 ).
        IF t152 IS INITIAL.
          t151 = abap_true.
        ENDIF.
        IF t151 = abap_true.
          DATA t153 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t153.
          t150 = t153.
        ELSE.
          DATA t154 TYPE REF TO zif_lnt_interface_definition.
          DATA t155 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t156) = CAST zcl_lnt_spaghetti_scope_node( t147 ).
          t155 = t156.
          DATA t157 TYPE string.
          DATA(t158) = CAST zlnt_runtime_opti_4ba3bdccd169( t128 ).
          t157 = t158->value.
          t154 = t155->find_interface_definition( i_name = t157 ).
          t150 = t154.
        ENDIF.
        t146 = t150.
        t145 = t146.
        DATA t159 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t159.
        DATA t160 TYPE abap_bool.
        DATA(t161) = CAST zif_lnt_interface_definition( t145 ).
        t160 = xsdbool( t161 IS BOUND ).
        IF t160 = abap_true.
          DATA t162 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t162.
          DATA(t163) = abap_true.
          IF t163 = abap_true.
            DATA t164 TYPE REF TO zif_lnt_interface_definition.
            DATA(t165) = CAST zif_lnt_interface_definition( t145 ).
            t164 = t165.
            t162 = t164.
          ELSE.
            DATA t166 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t166.
            t162 = t166.
          ENDIF.
          t159 = t162.
        ELSE.
          DATA t167 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t167.
          DATA t168 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t168.
          DATA t169 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t169.
          DATA t170 TYPE REF TO zif_lnt_object.
          CLEAR t170.
          DATA t171 TYPE REF TO zif_lnt_registry.
          DATA(t172) = CAST zcl_lnt_current_scope( t125 ).
          t171 = t172->reg.
          DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t173.
          DATA(t174) = abap_true.
          IF t174 = abap_true.
            DATA(t175) = |INTF|.
            DATA(t176) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t176->has = abap_true.
            t176->value = t175.
            t173 = t176.
          ELSE.
            DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t177.
            t173 = t177.
          ENDIF.
          DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t178.
          DATA(t179) = abap_true.
          IF t179 = abap_true.
            DATA t180 TYPE string.
            DATA(t181) = CAST zlnt_runtime_opti_4ba3bdccd169( t128 ).
            t180 = t181->value.
            DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t182->has = abap_true.
            t182->value = t180.
            t178 = t182.
          ELSE.
            DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t183.
            t178 = t183.
          ENDIF.
          t170 = t171->get_object( i_type_9913 = t173 i_name = t178 ).
          DATA t184 TYPE REF TO object.
          t184 = t170.
          t169 ?= t184.
          t168 = t169.
          DATA t185 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t185.
          DATA t186 TYPE abap_bool.
          DATA(t187) = CAST zcl_lnt_ob_interface( t168 ).
          t186 = xsdbool( t187 IS BOUND ).
          IF t186 = abap_true.
            DATA t188 TYPE REF TO zif_lnt_interface_definition.
            DATA t189 TYPE REF TO zcl_lnt_ob_interface.
            DATA t190 TYPE REF TO zcl_lnt_ob_interface.
            DATA(t191) = CAST zcl_lnt_ob_interface( t168 ).
            t190 = t191.
            t189 = t190.
            DATA t192 TYPE REF TO zif_lnt_interface_definition.
            DATA(t193) = CAST zcl_lnt_ob_interface( t189 ).
            t192 = t193->def.
            t188 = t192.
            t185 = t188.
          ELSE.
            DATA t194 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t194.
            t185 = t194.
          ENDIF.
          t167 = t185.
          t159 = t167.
        ENDIF.
        t144 = t159.
        t135 = t144.
      ENDIF.
      t124 = t135.
      t123 = t124.
      DATA(t195) = VALUE abap_bool( ).
      DATA t196 TYPE REF TO zif_lnt_interface_definition.
      DATA(t197) = CAST zif_lnt_interface_definition( t123 ).
      t196 = t197.
      DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t199.
      t198 = t199.
      DATA(t200) = VALUE abap_bool( ).
      DATA(t201) = CAST zif_lnt_interface_definition( t196 ).
      IF t201 IS INITIAL.
        t200 = abap_true.
      ENDIF.
      t195 = t200.
      IF t195 = abap_true.
        DATA(t202) = abap_true.
        result = t202.
        RETURN.
      ELSE.
        DATA t203 TYPE abap_bool.
        DATA t204 TYPE REF TO zif_lnt_interface_definition.
        DATA(t205) = CAST zif_lnt_interface_definition( t123 ).
        t204 = t205.
        DATA(t206) = t2.
        DATA(t207) = CAST zcl_lnt_syntax_input( t3 ).
        DATA(t208) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
        t203 = me->exists_in_interface( i_idef = t204 i_component = t206 i_input_967e = t207 i_visited = t208 ).
        IF t203 = abap_true.
          DATA(t209) = abap_true.
          result = t209.
          RETURN.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA(t210) = abap_false.
    result = t210.

  ENDMETHOD.

  METHOD parse_attribute.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = i_visibility_5c1f.
    DATA(t3) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t4 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t5 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t5.
    t4 = t5.
    DATA t6 TYPE REF TO zif_lnt_statement.
    DATA t7 TYPE REF TO zif_lnt_statement.
    DATA(t8) = CAST zcl_lnt_statement_node( t1 ).
    t7 = t8->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t6 = t7.
    DATA t9 TYPE abap_bool.
    DATA(t10) = CAST zif_lnt_statement( t6 ).
    t9 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_st_data ).
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t12) = NEW zcl_lnt_sy_statem_data( ).
      DATA(t13) = CAST zcl_lnt_statement_node( t1 ).
      DATA(t14) = CAST zcl_lnt_syntax_input( t3 ).
      t11 = t12->run_syntax( i_node = t13 i_input_967e = t14 ).
      t4 = t11.
    ELSE.
      DATA t15 TYPE abap_bool.
      DATA(t16) = CAST zif_lnt_statement( t6 ).
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_class_data ).
      IF t15 = abap_true.
        DATA t17 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t18) = NEW zcl_lnt_sy_statem_class_data( ).
        DATA(t19) = CAST zcl_lnt_statement_node( t1 ).
        DATA(t20) = CAST zcl_lnt_syntax_input( t3 ).
        t17 = t18->run_syntax( i_node = t19 i_input_967e = t20 ).
        t4 = t17.
      ELSE.
        DATA t21 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t21.
        DATA t22 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t22.
        DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t23.
        DATA(t24) = abap_true.
        IF t24 = abap_true.
          DATA t25 TYPE string.
          DATA(t26) = |ClassAttribute, unexpected node, 1, |.
          DATA(t27) = CONV string( me->filename ).
          DATA(t28) = strlen( t26 ).
          t25 = |{ t26 }{ t27 }|.
          DATA(t29) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t29->has = abap_true.
          t29->value = t25.
          t23 = t29.
        ELSE.
          DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t30.
          t23 = t30.
        ENDIF.
        t22 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t23 ).
        t21 = NEW #( ).
        t21->payload = t22.
        RAISE EXCEPTION t21.
      ENDIF.
    ENDIF.
    DATA(t31) = VALUE abap_bool( ).
    DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t33) = CAST zcl_lnt_typed_identifier( t4 ).
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    t34 = t35.
    DATA(t36) = VALUE abap_bool( ).
    DATA(t37) = CAST zcl_lnt_typed_identifier( t32 ).
    IF t37 IS INITIAL.
      t36 = abap_true.
    ENDIF.
    t31 = t36.
    IF t31 = abap_true.
      DATA t38 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t38.
      DATA t39 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t39.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t40.
      DATA(t41) = abap_true.
      IF t41 = abap_true.
        DATA t42 TYPE string.
        DATA(t43) = |ClassAttribute, unexpected node, |.
        DATA(t44) = CONV string( me->filename ).
        DATA(t45) = strlen( t43 ).
        t42 = |{ t43 }{ t44 }|.
        DATA(t46) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t46->has = abap_true.
        t46->value = t42.
        t40 = t46.
      ELSE.
        DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t47.
        t40 = t47.
      ENDIF.
      t39 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t40 ).
      t38 = NEW #( ).
      t38->payload = t39.
      RAISE EXCEPTION t38.
    ENDIF.
    DATA t48 TYPE REF TO zcl_lnt_current_scope.
    DATA t49 TYPE REF TO zcl_lnt_current_scope.
    DATA(t50) = CAST zcl_lnt_syntax_input( t3 ).
    t49 = t50->scope.
    t48 = t49.
    DATA t51 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t51.
    DATA t52 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t52.
    DATA(t53) = abap_true.
    IF t53 = abap_true.
      DATA t54 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t55) = CAST zcl_lnt_typed_identifier( t4 ).
      t54 = t55.
      t52 = t54.
    ELSE.
      DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t56.
      t52 = t56.
    ENDIF.
    t51 = t52.
    DATA(t57) = VALUE abap_bool( ).
    DATA t58 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t59) = CAST zcl_lnt_typed_identifier( t51 ).
    t58 = t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    t60 = t61.
    DATA(t62) = VALUE abap_bool( ).
    DATA(t63) = CAST zcl_lnt_typed_identifier( t58 ).
    IF t63 IS INITIAL.
      t62 = abap_true.
    ENDIF.
    t57 = t62.
    IF t57 = abap_true.
    ELSE.
      DATA(t64) = CAST zcl_lnt_current_scope( t48 ).
      DATA(t65) = VALUE string( ).
      DATA t66 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t67 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t68) = CAST zcl_lnt_typed_identifier( t51 ).
      t67 = t68.
      t66 = t67.
      DATA(t69) = VALUE string( ).
      DATA t70 TYPE string.
      DATA t71 TYPE string.
      DATA t72 TYPE REF TO zcl_lnt_abstract_token.
      DATA t73 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t74) = CAST zcl_lnt_fi_identifier( t66 ).
      t73 = t74->token.
      t72 = t73.
      DATA t75 TYPE string.
      DATA(t76) = CAST zcl_lnt_abstract_token( t72 ).
      t75 = t76->str.
      t71 = t75.
      t70 = t71.
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = VALUE string( ).
      DATA(t79) = t70.
      DATA(t80) = 0.
      DATA(t81) = 1.
      DATA(t82) = strlen( t79 ).
      IF t80 < 0.
        t80 = t80 + t82.
        IF t80 < 0.
          t80 = 0.
        ENDIF.
      ENDIF.
      IF t80 > t82 OR t81 <= 0.
        CLEAR t78.
      ELSE.
        IF t81 > t82 - t80.
          t81 = t82 - t80.
        ENDIF.
        t78 = t79+t80(t81).
      ENDIF.
      DATA(t83) = |!|.
      t77 = xsdbool( t78 = t83 ).
      IF t77 = abap_true.
        DATA(t84) = VALUE string( ).
        DATA t85 TYPE string.
        DATA(t86) = t70.
        t85 = t86.
        DATA(t87) = VALUE string( ).
        DATA(t88) = t85.
        DATA(t89) = 1.
        DATA t90 TYPE i.
        DATA(t91) = t85.
        DATA(t92) = strlen( t91 ).
        t90 = t92.
        DATA(t93) = strlen( t88 ).
        IF t89 < 0.
          t89 = t89 + t93.
          IF t89 < 0.
            t89 = 0.
          ENDIF.
        ENDIF.
        IF t89 > t93 OR t90 <= 0.
          CLEAR t87.
        ELSE.
          IF t90 > t93 - t89.
            t90 = t93 - t89.
          ENDIF.
          t87 = t88+t89(t90).
        ENDIF.
        t84 = t87.
        t70 = t84.
      ENDIF.
      DATA(t94) = t70.
      t69 = t94.
      t65 = t69.
      DATA t95 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t96) = CAST zcl_lnt_typed_identifier( t51 ).
      t95 = t96.
      t64->add_named_identifier( i_name = t65 i_identifier = t95 ).
    ENDIF.
    DATA t97 TYPE REF TO zcl_lnt_class_attribute.
    CLEAR t97.
    DATA t98 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t99) = CAST zcl_lnt_typed_identifier( t4 ).
    t98 = t99.
    DATA t100 TYPE int8.
    DATA(t101) = t2.
    t100 = t101.
    DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t103 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t104 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t105) = CAST zcl_lnt_typed_identifier( t4 ).
    t104 = t105.
    t103 = t104.
    DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t107) = CAST zcl_lnt_typed_identifier( t103 ).
    t106 = t107->meta.
    t102 = t106.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA(t109) = abap_true.
    IF t109 = abap_true.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t111 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t112 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t113) = CAST zcl_lnt_typed_identifier( t4 ).
      t112 = t113.
      t111 = t112.
      DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t115) = CAST zcl_lnt_typed_identifier( t111 ).
      t114 = t115->value.
      t110 = t114.
      t108 = t110.
    ELSE.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      t108 = t116.
    ENDIF.
    t97 = NEW zcl_lnt_class_attribute( i_id = t98 i_visibility_5c1f = t100 i_meta = t102 i_value = t108 ).
    result = t97.

  ENDMETHOD.

  METHOD get_types.
    DATA(t1) = CAST zcl_lnt_type_definitions( me->gt_ty_in_sr_ab_ty_cl_at_ts_att( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1030_6600c335ee28.
  ENDMETHOD.

  METHOD zif_lnt_attributes~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_attributes~get_static.
    result = me->get_static( ).
  ENDMETHOD.

  METHOD zif_lnt_attributes~get_statics_by_visibility.
    result = me->get_statics_by_visibility( i_visibility_5c1f = i_visibility_5c1f ).
  ENDMETHOD.

  METHOD zif_lnt_attributes~get_instance.
    result = me->get_instance( ).
  ENDMETHOD.

  METHOD zif_lnt_attributes~get_instances_by_visibility.
    result = me->get_instances_by_visibility( i_visibility_5c1f = i_visibility_5c1f ).
  ENDMETHOD.

  METHOD zif_lnt_attributes~get_constants_by_visibility.
    result = me->get_constants_by_visibility( i_visibility_5c1f = i_visibility_5c1f ).
  ENDMETHOD.

  METHOD zif_lnt_attributes~find_by_name.
    result = me->find_by_name( i_name = i_name ).
  ENDMETHOD.

  METHOD zif_lnt_attributes~get_constants.
    result = me->get_constants( ).
  ENDMETHOD.

  METHOD zif_lnt_attributes~get_all.
    result = me->get_all( ).
  ENDMETHOD.

  METHOD zif_lnt_attributes~get_aliases.
    result = me->get_aliases( ).
  ENDMETHOD.

  METHOD zif_lnt_attributes~get_types.
    result = me->get_types( ).
  ENDMETHOD.
ENDCLASS.
