* TS: src/abap/types/class_attributes.ts:26:1 Attributes
CLASS zcl_lnt_attributes DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
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
    METHODS get_statics_by_visibility IMPORTING i_visibility_5c1f TYPE f RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_instance RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_instances_by_visibility IMPORTING i_visibility_5c1f TYPE f RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_constants RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_constants_by_visibility IMPORTING i_visibility_5c1f TYPE f RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
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
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_attributes IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    me->static_9977 = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `static`.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    me->instance = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `instance`.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    me->constants = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `constants`.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    me->aliases_62bb = t6.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `aliases`.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t7.
    me->declared_interfaces = t7.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `declaredInterfaces`.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    me->tlist = t8.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tlist`.
    DATA t9 TYPE string.
    DATA(t10) = t2.
    t9 = t10->filename.
    me->filename = t9.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `filename`.
    DATA(t11) = t1.
    DATA(t12) = t2.
    me->parse( i_node = t11 i_input_967e = t12 ).
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t14) = me->static_9977.
    DATA(t15) = me->instance.
    t13 = t14->concat( p0 = t15 ).
    me->all = t13.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `all`.
    DATA(t16) = CAST zlnt_runtime_map__89ba5e9f6101( me->build_by_name( ) ).
    me->by_name = t16.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `byName`.
    DATA t17 TYPE REF TO zcl_lnt_type_definitions.
    DATA(t18) = me->tlist.
    t17 = NEW zcl_lnt_type_definitions( i_list = t18 ).
    me->types = t17.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `types`.
  ENDMETHOD.

  METHOD gt_ty_in_sr_ab_ty_cl_at_ts_att.
    DATA(t1) = me->types.
    result = t1.

  ENDMETHOD.

  METHOD get_static.
    DATA(t1) = me->static_9977.
    result = t1.

  ENDMETHOD.

  METHOD get_aliases.
    DATA(t1) = me->aliases_62bb.
    result = t1.

  ENDMETHOD.

  METHOD get_all.
    DATA(t1) = me->all.
    result = t1.

  ENDMETHOD.

  METHOD get_statics_by_visibility.
    DATA(t1) = i_visibility_5c1f.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = me->static_9977.
    DATA t5 TYPE REF TO zcl_lnt_class_attribute.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE f.
      DATA t12 TYPE REF TO zcl_lnt_class_attribute.
      DATA(t13) = t5.
      t12 = t13.
      DATA t14 TYPE f.
      DATA(t15) = t12.
      t14 = t15->visibility.
      t11 = t14.
      DATA(t16) = t1.
      t10 = xsdbool( t11 = t16 ).
      IF t10 = abap_true.
        DATA(t17) = t2.
        DATA(t18) = t5.
        t17->load( ).
        APPEND t18 TO t17->items.
        t17->save( ).
      ENDIF.
    ENDDO.
    DATA(t19) = t2.
    result = t19.

  ENDMETHOD.

  METHOD get_instance.
    DATA(t1) = me->instance.
    result = t1.

  ENDMETHOD.

  METHOD get_instances_by_visibility.
    DATA(t1) = i_visibility_5c1f.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = me->instance.
    DATA t5 TYPE REF TO zcl_lnt_class_attribute.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE f.
      DATA t12 TYPE REF TO zcl_lnt_class_attribute.
      DATA(t13) = t5.
      t12 = t13.
      DATA t14 TYPE f.
      DATA(t15) = t12.
      t14 = t15->visibility.
      t11 = t14.
      DATA(t16) = t1.
      t10 = xsdbool( t11 = t16 ).
      IF t10 = abap_true.
        DATA(t17) = t2.
        DATA(t18) = t5.
        t17->load( ).
        APPEND t18 TO t17->items.
        t17->save( ).
      ENDIF.
    ENDDO.
    DATA(t19) = t2.
    result = t19.

  ENDMETHOD.

  METHOD get_constants.
    DATA(t1) = me->constants.
    result = t1.

  ENDMETHOD.

  METHOD get_constants_by_visibility.
    DATA(t1) = i_visibility_5c1f.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = me->constants.
    DATA t5 TYPE REF TO zcl_lnt_class_constant.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE f.
      DATA t12 TYPE REF TO zcl_lnt_class_constant.
      DATA(t13) = t5.
      t12 = t13.
      DATA t14 TYPE f.
      DATA(t15) = t12.
      t14 = t15->visibility.
      t11 = t14.
      DATA(t16) = t1.
      t10 = xsdbool( t11 = t16 ).
      IF t10 = abap_true.
        DATA(t17) = t2.
        DATA(t18) = t5.
        t17->load( ).
        APPEND t18 TO t17->items.
        t17->save( ).
      ENDIF.
    ENDDO.
    DATA(t19) = t2.
    result = t19.

  ENDMETHOD.

  METHOD find_by_name.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zif_lnt_union_a346537f.
    CLEAR t2.
    DATA(t3) = me->by_name.
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
    DATA(t5) = t3.
    t2 = t5.
    t1 = t2.
    DATA(t6) = me->static_9977.
    DATA t7 TYPE REF TO zcl_lnt_class_attribute.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    DATA(t9) = VALUE i( ).
    DO.
      t6->load( ).
      IF t9 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t6->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA t12 TYPE REF TO zlnt_runtime_map__89ba5e9f6101.
      CLEAR t12.
      DATA(t13) = t1.
      DATA(t14) = VALUE string( ).
      DATA(t15) = VALUE string( ).
      DATA t16 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t17) = t7.
      t16 = t17.
      DATA(t18) = VALUE string( ).
      DATA t19 TYPE string.
      DATA t20 TYPE string.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t23) = t16.
      t22 = t23->token.
      t21 = t22.
      DATA t24 TYPE string.
      DATA(t25) = t21.
      t24 = t25->str.
      t20 = t24.
      t19 = t20.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE string( ).
      DATA(t28) = t19.
      DATA(t29) = 0.
      DATA(t30) = 1.
      DATA(t31) = strlen( t28 ).
      IF t29 < 0.
        t29 = t29 + t31.
        IF t29 < 0.
          t29 = 0.
        ENDIF.
      ENDIF.
      IF t29 > t31 OR t30 <= 0.
        CLEAR t27.
      ELSE.
        IF t30 > t31 - t29.
          t30 = t31 - t29.
        ENDIF.
        t27 = t28+t29(t30).
      ENDIF.
      DATA(t32) = |!|.
      t26 = xsdbool( t27 = t32 ).
      IF t26 = abap_true.
        DATA(t33) = VALUE string( ).
        DATA t34 TYPE string.
        DATA(t35) = t19.
        t34 = t35.
        DATA(t36) = VALUE string( ).
        DATA(t37) = t34.
        DATA(t38) = 1.
        DATA t39 TYPE i.
        DATA(t40) = t34.
        DATA(t41) = strlen( t40 ).
        t39 = t41.
        DATA(t42) = strlen( t37 ).
        IF t38 < 0.
          t38 = t38 + t42.
          IF t38 < 0.
            t38 = 0.
          ENDIF.
        ENDIF.
        IF t38 > t42 OR t39 <= 0.
          CLEAR t36.
        ELSE.
          IF t39 > t42 - t38.
            t39 = t42 - t38.
          ENDIF.
          t36 = t37+t38(t39).
        ENDIF.
        t33 = t36.
        t19 = t33.
      ENDIF.
      DATA(t43) = t19.
      t18 = t43.
      t15 = t18.
      DATA(t44) = strlen( t15 ).
      t14 = t15.
      IF t14 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t14 TO UPPER CASE.
      ELSE.
        t14 = zlnt_runtime_uppe_91169605024d=>full( t14 ).
      ENDIF.
      DATA(t45) = t7.
      t12 = t13->set( p0 = t14 p1 = t45 ).
    ENDDO.
    DATA(t46) = me->instance.
    DATA t47 TYPE REF TO zcl_lnt_class_attribute.
    CLEAR t47.
    DATA t48 TYPE REF TO object.
    CLEAR t48.
    DATA(t49) = VALUE i( ).
    DO.
      t46->load( ).
      IF t49 >= lines( t46->items ).
        EXIT.
      ENDIF.
      CLEAR t48.
      READ TABLE t46->items INDEX t49 + 1 INTO t48.
      t49 = t49 + 1.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      CLEAR t47.
      IF t48 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t50 ?= t48.
        DATA t51 TYPE REF TO object.
        t51 = t50->as_ref( ).
        t47 ?= t51.
      ELSE.
        t47 ?= t48.
      ENDIF.
      DATA(t52) = VALUE string( ).
      DATA(t53) = VALUE string( ).
      DATA(t54) = VALUE string( ).
      DATA t55 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t56) = t47.
      t55 = t56.
      DATA(t57) = VALUE string( ).
      DATA t58 TYPE string.
      DATA t59 TYPE string.
      DATA t60 TYPE REF TO zcl_lnt_abstract_token.
      DATA t61 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t62) = t55.
      t61 = t62->token.
      t60 = t61.
      DATA t63 TYPE string.
      DATA(t64) = t60.
      t63 = t64->str.
      t59 = t63.
      t58 = t59.
      DATA(t65) = VALUE abap_bool( ).
      DATA(t66) = VALUE string( ).
      DATA(t67) = t58.
      DATA(t68) = 0.
      DATA(t69) = 1.
      DATA(t70) = strlen( t67 ).
      IF t68 < 0.
        t68 = t68 + t70.
        IF t68 < 0.
          t68 = 0.
        ENDIF.
      ENDIF.
      IF t68 > t70 OR t69 <= 0.
        CLEAR t66.
      ELSE.
        IF t69 > t70 - t68.
          t69 = t70 - t68.
        ENDIF.
        t66 = t67+t68(t69).
      ENDIF.
      DATA(t71) = |!|.
      t65 = xsdbool( t66 = t71 ).
      IF t65 = abap_true.
        DATA(t72) = VALUE string( ).
        DATA t73 TYPE string.
        DATA(t74) = t58.
        t73 = t74.
        DATA(t75) = VALUE string( ).
        DATA(t76) = t73.
        DATA(t77) = 1.
        DATA t78 TYPE i.
        DATA(t79) = t73.
        DATA(t80) = strlen( t79 ).
        t78 = t80.
        DATA(t81) = strlen( t76 ).
        IF t77 < 0.
          t77 = t77 + t81.
          IF t77 < 0.
            t77 = 0.
          ENDIF.
        ENDIF.
        IF t77 > t81 OR t78 <= 0.
          CLEAR t75.
        ELSE.
          IF t78 > t81 - t77.
            t78 = t81 - t77.
          ENDIF.
          t75 = t76+t77(t78).
        ENDIF.
        t72 = t75.
        t58 = t72.
      ENDIF.
      DATA(t82) = t58.
      t57 = t82.
      t54 = t57.
      DATA(t83) = strlen( t54 ).
      t53 = t54.
      IF t53 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t53 TO UPPER CASE.
      ELSE.
        t53 = zlnt_runtime_uppe_91169605024d=>full( t53 ).
      ENDIF.
      t52 = t53.
      DATA(t84) = VALUE abap_bool( ).
      DATA t85 TYPE REF TO zif_lnt_union_a346537f.
      DATA t86 TYPE REF TO zif_lnt_union_a346537f.
      DATA(t87) = t1.
      DATA(t88) = t52.
      t86 = t87->get( p0 = t88 ).
      t85 = t86.
      DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      t89 = t90.
      DATA(t91) = VALUE abap_bool( ).
      DATA(t92) = t85.
      IF t92 IS INITIAL.
        t91 = abap_true.
      ENDIF.
      t84 = t91.
      IF t84 = abap_true.
        DATA t93 TYPE REF TO zlnt_runtime_map__89ba5e9f6101.
        DATA(t94) = t1.
        DATA(t95) = t52.
        DATA(t96) = t47.
        t93 = t94->set( p0 = t95 p1 = t96 ).
      ENDIF.
    ENDDO.
    DATA(t97) = me->constants.
    DATA t98 TYPE REF TO zcl_lnt_class_constant.
    CLEAR t98.
    DATA t99 TYPE REF TO object.
    CLEAR t99.
    DATA(t100) = VALUE i( ).
    DO.
      t97->load( ).
      IF t100 >= lines( t97->items ).
        EXIT.
      ENDIF.
      CLEAR t99.
      READ TABLE t97->items INDEX t100 + 1 INTO t99.
      t100 = t100 + 1.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t101.
      CLEAR t98.
      IF t99 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t101 ?= t99.
        DATA t102 TYPE REF TO object.
        t102 = t101->as_ref( ).
        t98 ?= t102.
      ELSE.
        t98 ?= t99.
      ENDIF.
      DATA(t103) = VALUE string( ).
      DATA(t104) = VALUE string( ).
      DATA(t105) = VALUE string( ).
      DATA t106 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t107) = t98.
      t106 = t107.
      DATA(t108) = VALUE string( ).
      DATA t109 TYPE string.
      DATA t110 TYPE string.
      DATA t111 TYPE REF TO zcl_lnt_abstract_token.
      DATA t112 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t113) = t106.
      t112 = t113->token.
      t111 = t112.
      DATA t114 TYPE string.
      DATA(t115) = t111.
      t114 = t115->str.
      t110 = t114.
      t109 = t110.
      DATA(t116) = VALUE abap_bool( ).
      DATA(t117) = VALUE string( ).
      DATA(t118) = t109.
      DATA(t119) = 0.
      DATA(t120) = 1.
      DATA(t121) = strlen( t118 ).
      IF t119 < 0.
        t119 = t119 + t121.
        IF t119 < 0.
          t119 = 0.
        ENDIF.
      ENDIF.
      IF t119 > t121 OR t120 <= 0.
        CLEAR t117.
      ELSE.
        IF t120 > t121 - t119.
          t120 = t121 - t119.
        ENDIF.
        t117 = t118+t119(t120).
      ENDIF.
      DATA(t122) = |!|.
      t116 = xsdbool( t117 = t122 ).
      IF t116 = abap_true.
        DATA(t123) = VALUE string( ).
        DATA t124 TYPE string.
        DATA(t125) = t109.
        t124 = t125.
        DATA(t126) = VALUE string( ).
        DATA(t127) = t124.
        DATA(t128) = 1.
        DATA t129 TYPE i.
        DATA(t130) = t124.
        DATA(t131) = strlen( t130 ).
        t129 = t131.
        DATA(t132) = strlen( t127 ).
        IF t128 < 0.
          t128 = t128 + t132.
          IF t128 < 0.
            t128 = 0.
          ENDIF.
        ENDIF.
        IF t128 > t132 OR t129 <= 0.
          CLEAR t126.
        ELSE.
          IF t129 > t132 - t128.
            t129 = t132 - t128.
          ENDIF.
          t126 = t127+t128(t129).
        ENDIF.
        t123 = t126.
        t109 = t123.
      ENDIF.
      DATA(t133) = t109.
      t108 = t133.
      t105 = t108.
      DATA(t134) = strlen( t105 ).
      t104 = t105.
      IF t104 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t104 TO UPPER CASE.
      ELSE.
        t104 = zlnt_runtime_uppe_91169605024d=>full( t104 ).
      ENDIF.
      t103 = t104.
      DATA(t135) = VALUE abap_bool( ).
      DATA t136 TYPE REF TO zif_lnt_union_a346537f.
      DATA t137 TYPE REF TO zif_lnt_union_a346537f.
      DATA(t138) = t1.
      DATA(t139) = t103.
      t137 = t138->get( p0 = t139 ).
      t136 = t137.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t141.
      t140 = t141.
      DATA(t142) = VALUE abap_bool( ).
      DATA(t143) = t136.
      IF t143 IS INITIAL.
        t142 = abap_true.
      ENDIF.
      t135 = t142.
      IF t135 = abap_true.
        DATA t144 TYPE REF TO zlnt_runtime_map__89ba5e9f6101.
        DATA(t145) = t1.
        DATA(t146) = t103.
        DATA(t147) = t98.
        t144 = t145->set( p0 = t146 p1 = t147 ).
      ENDIF.
    ENDDO.
    DATA(t148) = t1.
    result = t148.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t4.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e.
    t4 = t5->find_direct_structure( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t9.
      DATA t10 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t10.
      DATA(t11) = t3.
      t10 = t11.
      DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d540_b6420013e76a.
      t9 = t10->find_all_statements( i_type_9913 = t12 ).
      DATA t13 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t13.
      DATA t14 TYPE REF TO object.
      CLEAR t14.
      DATA(t15) = VALUE i( ).
      DO.
        t9->load( ).
        IF t15 >= lines( t9->items ).
          EXIT.
        ENDIF.
        CLEAR t14.
        READ TABLE t9->items INDEX t15 + 1 INTO t14.
        t15 = t15 + 1.
        DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t16.
        CLEAR t13.
        IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t16 ?= t14.
          DATA t17 TYPE REF TO object.
          CLEAR t17.
          t17 = t16->as_ref( ).
          t13 ?= t17.
        ELSE.
          t13 ?= t14.
        ENDIF.
        DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t18.
        DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t19.
        DATA t20 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t20.
        DATA t21 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t21.
        DATA t22 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t22.
        DATA t23 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t23.
        DATA(t24) = t13.
        DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2.
        t23 = t24->find_first_expression( i_type_9913 = t25 ).
        t22 = t23.
        DATA t26 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t26.
        DATA(t27) = VALUE abap_bool( ).
        DATA(t28) = t22.
        IF t28 IS INITIAL.
          t27 = abap_true.
        ENDIF.
        IF t27 = abap_true.
          DATA t29 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t29.
          t26 = t29.
        ELSE.
          DATA t30 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t30.
          DATA t31 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t31.
          DATA(t32) = t22.
          t31 = t32.
          t30 = t31->get_first_token( ).
          t26 = t30.
        ENDIF.
        t21 = t26.
        t20 = t21.
        DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t33.
        DATA(t34) = VALUE abap_bool( ).
        DATA(t35) = t20.
        IF t35 IS INITIAL.
          t34 = abap_true.
        ENDIF.
        IF t34 = abap_true.
          DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t36.
          t33 = t36.
        ELSE.
          DATA(t37) = VALUE string( ).
          DATA t38 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t38.
          DATA t39 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t39.
          DATA(t40) = t20.
          t39 = t40.
          t38 = t39.
          DATA(t41) = VALUE string( ).
          DATA(t42) = t38.
          t41 = t42->str.
          t37 = t41.
          DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t43->has = abap_true.
          t43->value = t37.
          t33 = t43.
        ENDIF.
        t19 = t33.
        t18 = t19.
        DATA(t44) = VALUE abap_bool( ).
        DATA(t45) = t18.
        IF t45 IS BOUND.
          IF t45->has = abap_true.
            t44 = xsdbool( strlen( t45->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t44 = abap_true.
          DATA(t46) = me->declared_interfaces.
          DATA(t47) = VALUE string( ).
          DATA(t48) = VALUE string( ).
          DATA(t49) = t18.
          t48 = t49->value.
          DATA(t50) = strlen( t48 ).
          t47 = t48.
          IF t47 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t47 TO UPPER CASE.
          ELSE.
            t47 = zlnt_runtime_uppe_91169605024d=>full( t47 ).
          ENDIF.
          t46->load( ).
          APPEND t47 TO t46->items.
          t46->save( ).
        ENDIF.
      ENDDO.
      DATA t51 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t51.
      DATA t52 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t52.
      DATA(t53) = t3.
      t52 = t53.
      DATA(t54) = zlnt_runtime_desc_78196487750d=>zlnt_member_d716_74fc3af0c6d3.
      t51 = t52->find_direct_structure( i_type_9913 = t54 ).
      DATA(t55) = 3.
      DATA(t56) = t2.
      me->parse_section( i_node = t51 i_visibility_5c1f = t55 i_input_967e = t56 ).
      DATA t57 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t57.
      DATA t58 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t58.
      DATA(t59) = t3.
      t58 = t59.
      DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d717_78ede11c0134.
      t57 = t58->find_direct_structure( i_type_9913 = t60 ).
      DATA(t61) = 2.
      DATA(t62) = t2.
      me->parse_section( i_node = t57 i_visibility_5c1f = t61 i_input_967e = t62 ).
      DATA t63 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t63.
      DATA t64 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t64.
      DATA(t65) = t3.
      t64 = t65.
      DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d718_3ac015f16676.
      t63 = t64->find_direct_structure( i_type_9913 = t66 ).
      DATA(t67) = 1.
      DATA(t68) = t2.
      me->parse_section( i_node = t63 i_visibility_5c1f = t67 i_input_967e = t68 ).
      RETURN.
    ENDIF.
    DATA t69 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t69.
    DATA t70 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t70.
    DATA(t71) = t1.
    DATA(t72) = zlnt_runtime_desc_78196487750d=>zlnt_member_d700_0943ee7a14b4.
    t70 = t71->find_direct_structure( i_type_9913 = t72 ).
    t69 = t70.
    DATA(t73) = VALUE abap_bool( ).
    DATA(t74) = t69.
    t73 = xsdbool( t74 IS BOUND ).
    IF t73 = abap_true.
      DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t75.
      DATA t76 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t76.
      DATA(t77) = t69.
      t76 = t77.
      DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d540_b6420013e76a.
      t75 = t76->find_all_statements( i_type_9913 = t78 ).
      DATA t79 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t79.
      DATA t80 TYPE REF TO object.
      CLEAR t80.
      DATA(t81) = VALUE i( ).
      DO.
        t75->load( ).
        IF t81 >= lines( t75->items ).
          EXIT.
        ENDIF.
        CLEAR t80.
        READ TABLE t75->items INDEX t81 + 1 INTO t80.
        t81 = t81 + 1.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        CLEAR t79.
        IF t80 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t82 ?= t80.
          DATA t83 TYPE REF TO object.
          CLEAR t83.
          t83 = t82->as_ref( ).
          t79 ?= t83.
        ELSE.
          t79 ?= t80.
        ENDIF.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t84.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        DATA t86 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t86.
        DATA t87 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t87.
        DATA t88 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t88.
        DATA t89 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t89.
        DATA(t90) = t79.
        DATA(t91) = zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2.
        t89 = t90->find_first_expression( i_type_9913 = t91 ).
        t88 = t89.
        DATA t92 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t92.
        DATA(t93) = VALUE abap_bool( ).
        DATA(t94) = t88.
        IF t94 IS INITIAL.
          t93 = abap_true.
        ENDIF.
        IF t93 = abap_true.
          DATA t95 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t95.
          t92 = t95.
        ELSE.
          DATA t96 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t96.
          DATA t97 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t97.
          DATA(t98) = t88.
          t97 = t98.
          t96 = t97->get_first_token( ).
          t92 = t96.
        ENDIF.
        t87 = t92.
        t86 = t87.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t99.
        DATA(t100) = VALUE abap_bool( ).
        DATA(t101) = t86.
        IF t101 IS INITIAL.
          t100 = abap_true.
        ENDIF.
        IF t100 = abap_true.
          DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t102.
          t99 = t102.
        ELSE.
          DATA(t103) = VALUE string( ).
          DATA t104 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t104.
          DATA t105 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t105.
          DATA(t106) = t86.
          t105 = t106.
          t104 = t105.
          DATA(t107) = VALUE string( ).
          DATA(t108) = t104.
          t107 = t108->str.
          t103 = t107.
          DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t109->has = abap_true.
          t109->value = t103.
          t99 = t109.
        ENDIF.
        t85 = t99.
        t84 = t85.
        DATA(t110) = VALUE abap_bool( ).
        DATA(t111) = t84.
        IF t111 IS BOUND.
          IF t111->has = abap_true.
            t110 = xsdbool( strlen( t111->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t110 = abap_true.
          DATA(t112) = me->declared_interfaces.
          DATA(t113) = VALUE string( ).
          DATA(t114) = VALUE string( ).
          DATA(t115) = t84.
          t114 = t115->value.
          DATA(t116) = strlen( t114 ).
          t113 = t114.
          IF t113 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t113 TO UPPER CASE.
          ELSE.
            t113 = zlnt_runtime_uppe_91169605024d=>full( t113 ).
          ENDIF.
          t112->load( ).
          APPEND t113 TO t112->items.
          t112->save( ).
        ENDIF.
      ENDDO.
      DATA t117 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t117.
      DATA t118 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t118.
      DATA(t119) = t69.
      t118 = t119.
      DATA(t120) = zlnt_runtime_desc_78196487750d=>zlnt_member_d739_c2cc9ae0214e.
      t117 = t118->find_direct_structure( i_type_9913 = t120 ).
      DATA(t121) = 3.
      DATA(t122) = t2.
      me->parse_section( i_node = t117 i_visibility_5c1f = t121 i_input_967e = t122 ).
      RETURN.
    ENDIF.
    DATA t123 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t123.
    DATA t124 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t125.
    DATA(t126) = abap_true.
    IF t126 = abap_true.
      DATA(t127) = |MethodDefinition, expected ClassDefinition or InterfaceDefin|.
      t127 = t127 && |ition|.
      DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t128->has = abap_true.
      t128->value = t127.
      t125 = t128.
    ELSE.
      DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t129.
      t125 = t129.
    ENDIF.
    t124 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t125 ).
    t123 = NEW #( ).
    t123->payload = t124.
    CLEAR t123->source_value.
    IF t124 IS BOUND.
      DATA t130 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t130.
      DATA t131 TYPE REF TO object.
      CLEAR t131.
      CLEAR t130.
      t131 = t124.
      TRY.
          t123->source_value ?= t131.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t123->source_value IS NOT BOUND.
        TRY.
            t130 ?= t124.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t130 IS BOUND.
          t123->source_value = t130->source( ).
        ENDIF.
        IF t123->source_value IS NOT BOUND.
          CREATE OBJECT t123->source_value.
          t123->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t123->source_value->oval = t124.
        ENDIF.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t123.
  ENDMETHOD.

  METHOD parse_section.
    DATA(t1) = i_node.
    DATA(t2) = i_visibility_5c1f.
    DATA(t3) = i_input_967e.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t5.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t13.
    DATA t14 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t14.
    DATA(t15) = t1.
    t14 = t15.
    t13 = t14.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    DATA(t17) = t13.
    t16 = t17->children.
    t12 = t16.
    t11 ?= t12.
    DATA t18 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t18.
    DATA t19 TYPE REF TO object.
    CLEAR t19.
    DATA(t20) = VALUE i( ).
    DO.
      t11->load( ).
      IF t20 >= lines( t11->items ).
        EXIT.
      ENDIF.
      CLEAR t19.
      READ TABLE t11->items INDEX t20 + 1 INTO t19.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      CLEAR t18.
      IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t21 ?= t19.
        DATA t22 TYPE REF TO object.
        CLEAR t22.
        t22 = t21->as_ref( ).
        t18 ?= t22.
      ELSE.
        t18 ?= t19.
      ENDIF.
      DATA t23 TYPE REF TO zif_lnt_union_dc0fb493.
      CLEAR t23.
      DATA t24 TYPE REF TO zif_lnt_union_dc0fb493.
      CLEAR t24.
      DATA t25 TYPE REF TO object.
      CLEAR t25.
      DATA(t26) = t18.
      t25 = t26->get_db65( ).
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      t27 = t25.
      t24 ?= t27.
      t23 = t24.
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = t18.
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_structure_node ).
      IF t28 = abap_true.
        DATA(t30) = VALUE abap_bool( ).
        DATA(t31) = t23.
        t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_sr_data ).
        IF t30 = abap_true.
          DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t32.
          DATA t33 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t33.
          DATA t34 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t34.
          DATA(t35) = t18.
          DATA t36 TYPE REF TO object.
          CLEAR t36.
          t36 = t35.
          t34 ?= t36.
          DATA(t37) = t3.
          t33 = zcl_lnt_sy_struct_data=>run_syntax( i_node = t34 i_input_967e = t37 ).
          t32 = t33.
          DATA(t38) = VALUE abap_bool( ).
          DATA t39 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t39.
          DATA(t40) = t32.
          t39 = t40.
          DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t41.
          DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t42.
          t41 = t42.
          DATA(t43) = VALUE abap_bool( ).
          DATA(t44) = VALUE abap_bool( ).
          DATA(t45) = t39.
          IF t45 IS INITIAL.
            t44 = abap_true.
          ENDIF.
          t43 = xsdbool( t44 = abap_false ).
          t38 = t43.
          IF t38 = abap_true.
            DATA t46 TYPE REF TO zcl_lnt_class_attribute.
            CLEAR t46.
            DATA t47 TYPE REF TO zcl_lnt_class_attribute.
            CLEAR t47.
            DATA t48 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t48.
            DATA(t49) = t32.
            t48 = t49.
            DATA(t50) = VALUE f( ).
            DATA(t51) = t2.
            t50 = t51.
            DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t52.
            DATA t53 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t53.
            DATA t54 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t54.
            DATA(t55) = t32.
            t54 = t55.
            t53 = t54.
            DATA t56 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t56.
            DATA(t57) = t53.
            t56 = t57->meta.
            t52 = t56.
            DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t58.
            DATA(t59) = abap_true.
            IF t59 = abap_true.
              DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t60.
              DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t61.
              DATA t62 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t62.
              DATA(t63) = t32.
              t62 = t63.
              t61 = t62.
              DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t64.
              DATA(t65) = t61.
              t64 = t65->value.
              t60 = t64.
              t58 = t60.
            ELSE.
              DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t66.
              t58 = t66.
            ENDIF.
            t47 = NEW zcl_lnt_class_attribute( i_id = t48 i_visibility_5c1f = t50 i_meta = t52 i_value = t58 ).
            t46 = t47.
            DATA(t67) = me->instance.
            DATA(t68) = t46.
            t67->load( ).
            APPEND t68 TO t67->items.
            t67->save( ).
            DATA t69 TYPE REF TO zcl_lnt_current_scope.
            CLEAR t69.
            DATA t70 TYPE REF TO zcl_lnt_current_scope.
            CLEAR t70.
            DATA(t71) = t3.
            t70 = t71->scope.
            t69 = t70.
            DATA t72 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t72.
            DATA(t73) = t46.
            t72 = t73.
            DATA(t74) = VALUE abap_bool( ).
            DATA t75 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t75.
            DATA(t76) = t72.
            t75 = t76.
            DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t77.
            DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t78.
            t77 = t78.
            DATA(t79) = VALUE abap_bool( ).
            DATA(t80) = t75.
            IF t80 IS INITIAL.
              t79 = abap_true.
            ENDIF.
            t74 = t79.
            IF t74 = abap_true.
            ELSE.
              DATA(t81) = t69.
              DATA(t82) = VALUE string( ).
              DATA t83 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t83.
              DATA t84 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t84.
              DATA(t85) = t72.
              t84 = t85.
              t83 = t84.
              DATA(t86) = VALUE string( ).
              DATA(t87) = VALUE string( ).
              DATA(t88) = VALUE string( ).
              DATA t89 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t89.
              DATA t90 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t90.
              DATA(t91) = t83.
              t90 = t91->token.
              t89 = t90.
              DATA(t92) = VALUE string( ).
              DATA(t93) = t89.
              t92 = t93->str.
              t88 = t92.
              t87 = t88.
              DATA(t94) = VALUE abap_bool( ).
              DATA(t95) = VALUE string( ).
              DATA(t96) = t87.
              DATA(t97) = 0.
              DATA(t98) = 1.
              DATA(t99) = strlen( t96 ).
              IF t97 < 0.
                t97 = t97 + t99.
                IF t97 < 0.
                  t97 = 0.
                ENDIF.
              ENDIF.
              IF t97 > t99 OR t98 <= 0.
                CLEAR t95.
              ELSE.
                IF t98 > t99 - t97.
                  t98 = t99 - t97.
                ENDIF.
                t95 = t96+t97(t98).
              ENDIF.
              DATA(t100) = |!|.
              t94 = xsdbool( t95 = t100 ).
              IF t94 = abap_true.
                DATA(t101) = VALUE string( ).
                DATA(t102) = VALUE string( ).
                DATA(t103) = t87.
                t102 = t103.
                DATA(t104) = VALUE string( ).
                DATA(t105) = t102.
                DATA(t106) = 1.
                DATA(t107) = VALUE i( ).
                DATA(t108) = t102.
                DATA(t109) = strlen( t108 ).
                t107 = t109.
                DATA(t110) = strlen( t105 ).
                IF t106 < 0.
                  t106 = t106 + t110.
                  IF t106 < 0.
                    t106 = 0.
                  ENDIF.
                ENDIF.
                IF t106 > t110 OR t107 <= 0.
                  CLEAR t104.
                ELSE.
                  IF t107 > t110 - t106.
                    t107 = t110 - t106.
                  ENDIF.
                  t104 = t105+t106(t107).
                ENDIF.
                t101 = t104.
                t87 = t101.
              ENDIF.
              DATA(t111) = t87.
              t86 = t111.
              t82 = t86.
              DATA t112 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t112.
              DATA(t113) = t72.
              t112 = t113.
              t81->add_named_identifier( i_name = t82 i_identifier = t112 ).
            ENDIF.
          ENDIF.
        ELSE.
          DATA(t114) = VALUE abap_bool( ).
          DATA(t115) = t23.
          t114 = xsdbool( t115 IS BOUND AND t115 IS INSTANCE OF zcl_lnt_sr_class_data ).
          IF t114 = abap_true.
            DATA t116 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t116.
            DATA t117 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t117.
            DATA(t118) = NEW zcl_lnt_sy_struct_class_data( ).
            DATA t119 TYPE REF TO zcl_lnt_structure_node.
            CLEAR t119.
            DATA(t120) = t18.
            DATA t121 TYPE REF TO object.
            CLEAR t121.
            t121 = t120.
            t119 ?= t121.
            DATA(t122) = t3.
            t117 = t118->run_syntax( i_node = t119 i_input_967e = t122 ).
            t116 = t117.
            DATA(t123) = VALUE abap_bool( ).
            DATA t124 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t124.
            DATA(t125) = t116.
            t124 = t125.
            DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t126.
            DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t127.
            t126 = t127.
            DATA(t128) = VALUE abap_bool( ).
            DATA(t129) = VALUE abap_bool( ).
            DATA(t130) = t124.
            IF t130 IS INITIAL.
              t129 = abap_true.
            ENDIF.
            t128 = xsdbool( t129 = abap_false ).
            t123 = t128.
            IF t123 = abap_true.
              DATA t131 TYPE REF TO zcl_lnt_class_attribute.
              CLEAR t131.
              DATA t132 TYPE REF TO zcl_lnt_class_attribute.
              CLEAR t132.
              DATA t133 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t133.
              DATA(t134) = t116.
              t133 = t134.
              DATA(t135) = VALUE f( ).
              DATA(t136) = t2.
              t135 = t136.
              DATA t137 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t137.
              DATA t138 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t138.
              DATA t139 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t139.
              DATA(t140) = t116.
              t139 = t140.
              t138 = t139.
              DATA t141 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t141.
              DATA(t142) = t138.
              t141 = t142->meta.
              t137 = t141.
              DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t143.
              DATA(t144) = abap_true.
              IF t144 = abap_true.
                DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t145.
                DATA t146 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t146.
                DATA t147 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t147.
                DATA(t148) = t116.
                t147 = t148.
                t146 = t147.
                DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t149.
                DATA(t150) = t146.
                t149 = t150->value.
                t145 = t149.
                t143 = t145.
              ELSE.
                DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t151.
                t143 = t151.
              ENDIF.
              t132 = NEW zcl_lnt_class_attribute( i_id = t133 i_visibility_5c1f = t135 i_meta = t137 i_value = t143 ).
              t131 = t132.
              DATA(t152) = me->static_9977.
              DATA(t153) = t131.
              t152->load( ).
              APPEND t153 TO t152->items.
              t152->save( ).
              DATA t154 TYPE REF TO zcl_lnt_current_scope.
              CLEAR t154.
              DATA t155 TYPE REF TO zcl_lnt_current_scope.
              CLEAR t155.
              DATA(t156) = t3.
              t155 = t156->scope.
              t154 = t155.
              DATA t157 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t157.
              DATA(t158) = t131.
              t157 = t158.
              DATA(t159) = VALUE abap_bool( ).
              DATA t160 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t160.
              DATA(t161) = t157.
              t160 = t161.
              DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t162.
              DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t163.
              t162 = t163.
              DATA(t164) = VALUE abap_bool( ).
              DATA(t165) = t160.
              IF t165 IS INITIAL.
                t164 = abap_true.
              ENDIF.
              t159 = t164.
              IF t159 = abap_true.
              ELSE.
                DATA(t166) = t154.
                DATA(t167) = VALUE string( ).
                DATA t168 TYPE REF TO zcl_lnt_fi_identifier.
                CLEAR t168.
                DATA t169 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t169.
                DATA(t170) = t157.
                t169 = t170.
                t168 = t169.
                DATA(t171) = VALUE string( ).
                DATA(t172) = VALUE string( ).
                DATA(t173) = VALUE string( ).
                DATA t174 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t174.
                DATA t175 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t175.
                DATA(t176) = t168.
                t175 = t176->token.
                t174 = t175.
                DATA(t177) = VALUE string( ).
                DATA(t178) = t174.
                t177 = t178->str.
                t173 = t177.
                t172 = t173.
                DATA(t179) = VALUE abap_bool( ).
                DATA(t180) = VALUE string( ).
                DATA(t181) = t172.
                DATA(t182) = 0.
                DATA(t183) = 1.
                DATA(t184) = strlen( t181 ).
                IF t182 < 0.
                  t182 = t182 + t184.
                  IF t182 < 0.
                    t182 = 0.
                  ENDIF.
                ENDIF.
                IF t182 > t184 OR t183 <= 0.
                  CLEAR t180.
                ELSE.
                  IF t183 > t184 - t182.
                    t183 = t184 - t182.
                  ENDIF.
                  t180 = t181+t182(t183).
                ENDIF.
                DATA(t185) = |!|.
                t179 = xsdbool( t180 = t185 ).
                IF t179 = abap_true.
                  DATA(t186) = VALUE string( ).
                  DATA(t187) = VALUE string( ).
                  DATA(t188) = t172.
                  t187 = t188.
                  DATA(t189) = VALUE string( ).
                  DATA(t190) = t187.
                  DATA(t191) = 1.
                  DATA(t192) = VALUE i( ).
                  DATA(t193) = t187.
                  DATA(t194) = strlen( t193 ).
                  t192 = t194.
                  DATA(t195) = strlen( t190 ).
                  IF t191 < 0.
                    t191 = t191 + t195.
                    IF t191 < 0.
                      t191 = 0.
                    ENDIF.
                  ENDIF.
                  IF t191 > t195 OR t192 <= 0.
                    CLEAR t189.
                  ELSE.
                    IF t192 > t195 - t191.
                      t192 = t195 - t191.
                    ENDIF.
                    t189 = t190+t191(t192).
                  ENDIF.
                  t186 = t189.
                  t172 = t186.
                ENDIF.
                DATA(t196) = t172.
                t171 = t196.
                t167 = t171.
                DATA t197 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t197.
                DATA(t198) = t157.
                t197 = t198.
                t166->add_named_identifier( i_name = t167 i_identifier = t197 ).
              ENDIF.
            ENDIF.
          ELSE.
            DATA(t199) = VALUE abap_bool( ).
            DATA(t200) = t23.
            t199 = xsdbool( t200 IS BOUND AND t200 IS INSTANCE OF zcl_lnt_sr_constants ).
            IF t199 = abap_true.
              DATA t201 TYPE REF TO zcl_lnt_shape_28fac025.
              CLEAR t201.
              DATA t202 TYPE REF TO zcl_lnt_shape_28fac025.
              CLEAR t202.
              DATA(t203) = NEW zcl_lnt_sy_constants( ).
              DATA t204 TYPE REF TO zcl_lnt_structure_node.
              CLEAR t204.
              DATA(t205) = t18.
              DATA t206 TYPE REF TO object.
              CLEAR t206.
              t206 = t205.
              t204 ?= t206.
              DATA(t207) = t3.
              t202 = t203->run_syntax( i_node = t204 i_input_967e = t207 ).
              t201 = t202.
              DATA t208 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t208.
              DATA t209 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t209.
              DATA(t210) = t201.
              t209 = t210->type_cba0.
              t208 = t209.
              DATA t211 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
              CLEAR t211.
              DATA t212 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
              CLEAR t212.
              DATA(t213) = t201.
              t212 = t213->values.
              t211 = t212.
              DATA(t214) = VALUE abap_bool( ).
              DATA t215 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t215.
              DATA(t216) = t208.
              t215 = t216.
              DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t217.
              DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t218.
              t217 = t218.
              DATA(t219) = VALUE abap_bool( ).
              DATA(t220) = VALUE abap_bool( ).
              DATA(t221) = t215.
              IF t221 IS INITIAL.
                t220 = abap_true.
              ENDIF.
              t219 = xsdbool( t220 = abap_false ).
              t214 = t219.
              IF t214 = abap_true.
                DATA t222 TYPE REF TO zcl_lnt_class_constant.
                CLEAR t222.
                DATA t223 TYPE REF TO zcl_lnt_class_constant.
                CLEAR t223.
                DATA t224 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t224.
                DATA(t225) = t208.
                t224 = t225.
                DATA(t226) = VALUE f( ).
                DATA(t227) = t2.
                t226 = t227.
                DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t228.
                DATA(t229) = t211.
                CLEAR t228.
                IF t229 IS BOUND.
                  DATA t230 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t230.
                  DATA t231 TYPE REF TO object.
                  CLEAR t231.
                  CLEAR t230.
                  t231 = t229.
                  TRY.
                      t228 ?= t231.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t228 IS NOT BOUND.
                    TRY.
                        t230 ?= t229.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t230 IS BOUND.
                      t228 = t230->source( ).
                    ENDIF.
                    IF t228 IS NOT BOUND.
                      CREATE OBJECT t228.
                      t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      t228->oval = t229.
                    ENDIF.
                  ENDIF.
                ENDIF.
                t223 = NEW zcl_lnt_class_constant( i_id = t224 i_visibility_5c1f = t226 i_value = t228 ).
                t222 = t223.
                DATA(t232) = me->constants.
                DATA(t233) = t222.
                t232->load( ).
                APPEND t233 TO t232->items.
                t232->save( ).
                DATA t234 TYPE REF TO zcl_lnt_current_scope.
                CLEAR t234.
                DATA t235 TYPE REF TO zcl_lnt_current_scope.
                CLEAR t235.
                DATA(t236) = t3.
                t235 = t236->scope.
                t234 = t235.
                DATA t237 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t237.
                DATA(t238) = t222.
                t237 = t238.
                DATA(t239) = VALUE abap_bool( ).
                DATA t240 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t240.
                DATA(t241) = t237.
                t240 = t241.
                DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t242.
                DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t243.
                t242 = t243.
                DATA(t244) = VALUE abap_bool( ).
                DATA(t245) = t240.
                IF t245 IS INITIAL.
                  t244 = abap_true.
                ENDIF.
                t239 = t244.
                IF t239 = abap_true.
                ELSE.
                  DATA(t246) = t234.
                  DATA(t247) = VALUE string( ).
                  DATA t248 TYPE REF TO zcl_lnt_fi_identifier.
                  CLEAR t248.
                  DATA t249 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t249.
                  DATA(t250) = t237.
                  t249 = t250.
                  t248 = t249.
                  DATA(t251) = VALUE string( ).
                  DATA(t252) = VALUE string( ).
                  DATA(t253) = VALUE string( ).
                  DATA t254 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t254.
                  DATA t255 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t255.
                  DATA(t256) = t248.
                  t255 = t256->token.
                  t254 = t255.
                  DATA(t257) = VALUE string( ).
                  DATA(t258) = t254.
                  t257 = t258->str.
                  t253 = t257.
                  t252 = t253.
                  DATA(t259) = VALUE abap_bool( ).
                  DATA(t260) = VALUE string( ).
                  DATA(t261) = t252.
                  DATA(t262) = 0.
                  DATA(t263) = 1.
                  DATA(t264) = strlen( t261 ).
                  IF t262 < 0.
                    t262 = t262 + t264.
                    IF t262 < 0.
                      t262 = 0.
                    ENDIF.
                  ENDIF.
                  IF t262 > t264 OR t263 <= 0.
                    CLEAR t260.
                  ELSE.
                    IF t263 > t264 - t262.
                      t263 = t264 - t262.
                    ENDIF.
                    t260 = t261+t262(t263).
                  ENDIF.
                  DATA(t265) = |!|.
                  t259 = xsdbool( t260 = t265 ).
                  IF t259 = abap_true.
                    DATA(t266) = VALUE string( ).
                    DATA(t267) = VALUE string( ).
                    DATA(t268) = t252.
                    t267 = t268.
                    DATA(t269) = VALUE string( ).
                    DATA(t270) = t267.
                    DATA(t271) = 1.
                    DATA(t272) = VALUE i( ).
                    DATA(t273) = t267.
                    DATA(t274) = strlen( t273 ).
                    t272 = t274.
                    DATA(t275) = strlen( t270 ).
                    IF t271 < 0.
                      t271 = t271 + t275.
                      IF t271 < 0.
                        t271 = 0.
                      ENDIF.
                    ENDIF.
                    IF t271 > t275 OR t272 <= 0.
                      CLEAR t269.
                    ELSE.
                      IF t272 > t275 - t271.
                        t272 = t275 - t271.
                      ENDIF.
                      t269 = t270+t271(t272).
                    ENDIF.
                    t266 = t269.
                    t252 = t266.
                  ENDIF.
                  DATA(t276) = t252.
                  t251 = t276.
                  t247 = t251.
                  DATA t277 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t277.
                  DATA(t278) = t237.
                  t277 = t278.
                  t246->add_named_identifier( i_name = t247 i_identifier = t277 ).
                ENDIF.
              ENDIF.
            ELSE.
              DATA(t279) = VALUE abap_bool( ).
              DATA(t280) = t23.
              t279 = xsdbool( t280 IS BOUND AND t280 IS INSTANCE OF zcl_lnt_sr_type_enum ).
              IF t279 = abap_true.
                DATA t281 TYPE REF TO zcl_lnt_shape_33d96643.
                CLEAR t281.
                DATA t282 TYPE REF TO zcl_lnt_shape_33d96643.
                CLEAR t282.
                DATA(t283) = NEW zcl_lnt_sy_type_enum( ).
                DATA t284 TYPE REF TO zcl_lnt_structure_node.
                CLEAR t284.
                DATA(t285) = t18.
                DATA t286 TYPE REF TO object.
                CLEAR t286.
                t286 = t285.
                t284 ?= t286.
                DATA(t287) = t3.
                t282 = t283->run_syntax( i_node = t284 i_input_967e = t287 ).
                t281 = t282.
                DATA t288 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t288.
                DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t289.
                DATA(t290) = t281.
                t289 = t290->values.
                t288 = t289.
                DATA t291 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t291.
                DATA t292 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t292.
                DATA(t293) = t281.
                t292 = t293->types.
                t291 = t292.
                DATA(t294) = t288.
                DATA t295 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t295.
                DATA t296 TYPE REF TO object.
                CLEAR t296.
                DATA(t297) = VALUE i( ).
                DO.
                  t294->load( ).
                  IF t297 >= lines( t294->items ).
                    EXIT.
                  ENDIF.
                  CLEAR t296.
                  READ TABLE t294->items INDEX t297 + 1 INTO t296.
                  t297 = t297 + 1.
                  DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t298.
                  CLEAR t295.
                  IF t296 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                    t298 ?= t296.
                    DATA t299 TYPE REF TO object.
                    CLEAR t299.
                    t299 = t298->as_ref( ).
                    t295 ?= t299.
                  ELSE.
                    t295 ?= t296.
                  ENDIF.
                  DATA t300 TYPE REF TO zcl_lnt_class_constant.
                  CLEAR t300.
                  DATA t301 TYPE REF TO zcl_lnt_class_constant.
                  CLEAR t301.
                  DATA(t302) = t295.
                  DATA(t303) = VALUE f( ).
                  DATA(t304) = t2.
                  t303 = t304.
                  DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t305.
                  DATA(t306) = |novalueClassAttributeEnum|.
                  CLEAR t305.
                  CREATE OBJECT t305.
                  t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                  t305->sval = t306.
                  t301 = NEW zcl_lnt_class_constant( i_id = t302 i_visibility_5c1f = t303 i_value = t305 ).
                  t300 = t301.
                  DATA(t307) = me->constants.
                  DATA(t308) = t300.
                  t307->load( ).
                  APPEND t308 TO t307->items.
                  t307->save( ).
                  DATA t309 TYPE REF TO zcl_lnt_current_scope.
                  CLEAR t309.
                  DATA t310 TYPE REF TO zcl_lnt_current_scope.
                  CLEAR t310.
                  DATA(t311) = t3.
                  t310 = t311->scope.
                  t309 = t310.
                  DATA t312 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t312.
                  DATA(t313) = t300.
                  t312 = t313.
                  DATA(t314) = VALUE abap_bool( ).
                  DATA t315 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t315.
                  DATA(t316) = t312.
                  t315 = t316.
                  DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t317.
                  DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t318.
                  t317 = t318.
                  DATA(t319) = VALUE abap_bool( ).
                  DATA(t320) = t315.
                  IF t320 IS INITIAL.
                    t319 = abap_true.
                  ENDIF.
                  t314 = t319.
                  IF t314 = abap_true.
                  ELSE.
                    DATA(t321) = t309.
                    DATA(t322) = VALUE string( ).
                    DATA t323 TYPE REF TO zcl_lnt_fi_identifier.
                    CLEAR t323.
                    DATA t324 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t324.
                    DATA(t325) = t312.
                    t324 = t325.
                    t323 = t324.
                    DATA(t326) = VALUE string( ).
                    DATA(t327) = VALUE string( ).
                    DATA(t328) = VALUE string( ).
                    DATA t329 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t329.
                    DATA t330 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t330.
                    DATA(t331) = t323.
                    t330 = t331->token.
                    t329 = t330.
                    DATA(t332) = VALUE string( ).
                    DATA(t333) = t329.
                    t332 = t333->str.
                    t328 = t332.
                    t327 = t328.
                    DATA(t334) = VALUE abap_bool( ).
                    DATA(t335) = VALUE string( ).
                    DATA(t336) = t327.
                    DATA(t337) = 0.
                    DATA(t338) = 1.
                    DATA(t339) = strlen( t336 ).
                    IF t337 < 0.
                      t337 = t337 + t339.
                      IF t337 < 0.
                        t337 = 0.
                      ENDIF.
                    ENDIF.
                    IF t337 > t339 OR t338 <= 0.
                      CLEAR t335.
                    ELSE.
                      IF t338 > t339 - t337.
                        t338 = t339 - t337.
                      ENDIF.
                      t335 = t336+t337(t338).
                    ENDIF.
                    DATA(t340) = |!|.
                    t334 = xsdbool( t335 = t340 ).
                    IF t334 = abap_true.
                      DATA(t341) = VALUE string( ).
                      DATA(t342) = VALUE string( ).
                      DATA(t343) = t327.
                      t342 = t343.
                      DATA(t344) = VALUE string( ).
                      DATA(t345) = t342.
                      DATA(t346) = 1.
                      DATA(t347) = VALUE i( ).
                      DATA(t348) = t342.
                      DATA(t349) = strlen( t348 ).
                      t347 = t349.
                      DATA(t350) = strlen( t345 ).
                      IF t346 < 0.
                        t346 = t346 + t350.
                        IF t346 < 0.
                          t346 = 0.
                        ENDIF.
                      ENDIF.
                      IF t346 > t350 OR t347 <= 0.
                        CLEAR t344.
                      ELSE.
                        IF t347 > t350 - t346.
                          t347 = t350 - t346.
                        ENDIF.
                        t344 = t345+t346(t347).
                      ENDIF.
                      t341 = t344.
                      t327 = t341.
                    ENDIF.
                    DATA(t351) = t327.
                    t326 = t351.
                    t322 = t326.
                    DATA t352 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t352.
                    DATA(t353) = t312.
                    t352 = t353.
                    t321->add_named_identifier( i_name = t322 i_identifier = t352 ).
                  ENDIF.
                ENDDO.
                DATA(t354) = t291.
                DATA t355 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t355.
                DATA t356 TYPE REF TO object.
                CLEAR t356.
                DATA(t357) = VALUE i( ).
                DO.
                  t354->load( ).
                  IF t357 >= lines( t354->items ).
                    EXIT.
                  ENDIF.
                  CLEAR t356.
                  READ TABLE t354->items INDEX t357 + 1 INTO t356.
                  t357 = t357 + 1.
                  DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t358.
                  CLEAR t355.
                  IF t356 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                    t358 ?= t356.
                    DATA t359 TYPE REF TO object.
                    CLEAR t359.
                    t359 = t358->as_ref( ).
                    t355 ?= t359.
                  ELSE.
                    t355 ?= t356.
                  ENDIF.
                  DATA(t360) = me->tlist.
                  DATA t361 TYPE REF TO zcl_lnt_type_definitions_entry.
                  CLEAR t361.
                  DATA t362 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t362.
                  DATA(t363) = t355.
                  t362 = t363.
                  DATA(t364) = VALUE f( ).
                  DATA(t365) = VALUE f( ).
                  DATA(t366) = t2.
                  t365 = t366.
                  t364 = t365.
                  t361 = NEW zcl_lnt_type_definitions_entry( i_type_9913 = t362 i_visibility_5c1f = t364 ).
                  CREATE OBJECT t361->zlnt_view_ownkeys_b0e8086400eb.
                  t361->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t367.
                  IF t361->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t361->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t367 ).
                  ENDIF.
                  DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t368.
                  IF t361->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t361->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `visibility` p1 = t368 ).
                  ENDIF.
                  CREATE OBJECT t361->zlnt_json_ownkeys_70e5fd461788.
                  t361->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t369) = |type|.
                  DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t370.
                  IF t361->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = t369 p1 = t370 ).
                  ENDIF.
                  DATA(t371) = |visibility|.
                  DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t372.
                  IF t361->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = t371 p1 = t372 ).
                  ENDIF.
                  t360->load( ).
                  APPEND t361 TO t360->items.
                  t360->save( ).
                ENDDO.
              ELSE.
                DATA(t373) = VALUE abap_bool( ).
                DATA(t374) = t23.
                t373 = xsdbool( t374 IS BOUND AND t374 IS INSTANCE OF zcl_lnt_sr_type_mesh ).
                IF t373 = abap_true.
                  DATA t375 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t375.
                  DATA t376 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t376.
                  DATA(t377) = NEW zcl_lnt_sy_type_mesh( ).
                  DATA t378 TYPE REF TO zcl_lnt_structure_node.
                  CLEAR t378.
                  DATA(t379) = t18.
                  DATA t380 TYPE REF TO object.
                  CLEAR t380.
                  t380 = t379.
                  t378 ?= t380.
                  DATA(t381) = t3.
                  t376 = t377->run_syntax( i_node = t378 i_input_967e = t381 ).
                  t375 = t376.
                  DATA(t382) = VALUE abap_bool( ).
                  DATA(t383) = t375.
                  t382 = xsdbool( t383 IS BOUND ).
                  IF t382 = abap_true.
                    DATA t384 TYPE REF TO zcl_lnt_current_scope.
                    CLEAR t384.
                    DATA t385 TYPE REF TO zcl_lnt_current_scope.
                    CLEAR t385.
                    DATA(t386) = t3.
                    t385 = t386->scope.
                    t384 = t385.
                    DATA t387 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t387.
                    DATA t388 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t388.
                    DATA(t389) = abap_true.
                    IF t389 = abap_true.
                      DATA t390 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t390.
                      DATA(t391) = t375.
                      t390 = t391.
                      t388 = t390.
                    ELSE.
                      DATA t392 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t392.
                      t388 = t392.
                    ENDIF.
                    t387 = t388.
                    DATA(t393) = VALUE abap_bool( ).
                    DATA t394 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t394.
                    DATA(t395) = t387.
                    t394 = t395.
                    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t396.
                    DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t397.
                    t396 = t397.
                    DATA(t398) = VALUE abap_bool( ).
                    DATA(t399) = t394.
                    IF t399 IS INITIAL.
                      t398 = abap_true.
                    ENDIF.
                    t393 = t398.
                    IF t393 = abap_true.
                    ELSE.
                      DATA(t400) = t384.
                      DATA(t401) = VALUE string( ).
                      DATA t402 TYPE REF TO zcl_lnt_fi_identifier.
                      CLEAR t402.
                      DATA t403 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t403.
                      DATA(t404) = t387.
                      t403 = t404.
                      t402 = t403.
                      DATA(t405) = VALUE string( ).
                      DATA(t406) = VALUE string( ).
                      DATA(t407) = VALUE string( ).
                      DATA t408 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t408.
                      DATA t409 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t409.
                      DATA(t410) = t402.
                      t409 = t410->token.
                      t408 = t409.
                      DATA(t411) = VALUE string( ).
                      DATA(t412) = t408.
                      t411 = t412->str.
                      t407 = t411.
                      t406 = t407.
                      DATA(t413) = VALUE abap_bool( ).
                      DATA(t414) = VALUE string( ).
                      DATA(t415) = t406.
                      DATA(t416) = 0.
                      DATA(t417) = 1.
                      DATA(t418) = strlen( t415 ).
                      IF t416 < 0.
                        t416 = t416 + t418.
                        IF t416 < 0.
                          t416 = 0.
                        ENDIF.
                      ENDIF.
                      IF t416 > t418 OR t417 <= 0.
                        CLEAR t414.
                      ELSE.
                        IF t417 > t418 - t416.
                          t417 = t418 - t416.
                        ENDIF.
                        t414 = t415+t416(t417).
                      ENDIF.
                      DATA(t419) = |!|.
                      t413 = xsdbool( t414 = t419 ).
                      IF t413 = abap_true.
                        DATA(t420) = VALUE string( ).
                        DATA(t421) = VALUE string( ).
                        DATA(t422) = t406.
                        t421 = t422.
                        DATA(t423) = VALUE string( ).
                        DATA(t424) = t421.
                        DATA(t425) = 1.
                        DATA(t426) = VALUE i( ).
                        DATA(t427) = t421.
                        DATA(t428) = strlen( t427 ).
                        t426 = t428.
                        DATA(t429) = strlen( t424 ).
                        IF t425 < 0.
                          t425 = t425 + t429.
                          IF t425 < 0.
                            t425 = 0.
                          ENDIF.
                        ENDIF.
                        IF t425 > t429 OR t426 <= 0.
                          CLEAR t423.
                        ELSE.
                          IF t426 > t429 - t425.
                            t426 = t429 - t425.
                          ENDIF.
                          t423 = t424+t425(t426).
                        ENDIF.
                        t420 = t423.
                        t406 = t420.
                      ENDIF.
                      DATA(t430) = t406.
                      t405 = t430.
                      t401 = t405.
                      DATA t431 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t431.
                      DATA(t432) = abap_true.
                      IF t432 = abap_true.
                        DATA t433 TYPE REF TO zcl_lnt_typed_identifier.
                        CLEAR t433.
                        DATA(t434) = t387.
                        t433 = t434.
                        t431 = t433.
                      ELSE.
                        DATA t435 TYPE REF TO zcl_lnt_typed_identifier.
                        CLEAR t435.
                        t431 = t435.
                      ENDIF.
                      t400->add_type_named( i_name = t401 i_type_9913 = t431 ).
                    ENDIF.
                    DATA(t436) = me->tlist.
                    DATA t437 TYPE REF TO zcl_lnt_type_definitions_entry.
                    CLEAR t437.
                    DATA t438 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t438.
                    DATA t439 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t439.
                    DATA(t440) = t375.
                    t439 = t440.
                    t438 = t439.
                    DATA(t441) = VALUE f( ).
                    DATA(t442) = VALUE f( ).
                    DATA(t443) = t2.
                    t442 = t443.
                    t441 = t442.
                    t437 = NEW zcl_lnt_type_definitions_entry( i_type_9913 = t438 i_visibility_5c1f = t441 ).
                    CREATE OBJECT t437->zlnt_view_ownkeys_b0e8086400eb.
                    t437->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t444.
                    IF t437->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t437->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t444 ).
                    ENDIF.
                    DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t445.
                    IF t437->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t437->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `visibility` p1 = t445 ).
                    ENDIF.
                    CREATE OBJECT t437->zlnt_json_ownkeys_70e5fd461788.
                    t437->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t446) = |type|.
                    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t447.
                    IF t437->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t437->zlnt_json_ownkeys_70e5fd461788->put( p0 = t446 p1 = t447 ).
                    ENDIF.
                    DATA(t448) = |visibility|.
                    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t449.
                    IF t437->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t437->zlnt_json_ownkeys_70e5fd461788->put( p0 = t448 p1 = t449 ).
                    ENDIF.
                    t436->load( ).
                    APPEND t437 TO t436->items.
                    t436->save( ).
                  ENDIF.
                ELSE.
                  DATA(t450) = VALUE abap_bool( ).
                  DATA(t451) = t23.
                  t450 = xsdbool( t451 IS BOUND AND t451 IS INSTANCE OF zcl_lnt_sr_types ).
                  IF t450 = abap_true.
                    DATA t452 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t452.
                    DATA t453 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t453.
                    DATA(t454) = NEW zcl_lnt_sy_types( ).
                    DATA t455 TYPE REF TO zcl_lnt_structure_node.
                    CLEAR t455.
                    DATA(t456) = t18.
                    DATA t457 TYPE REF TO object.
                    CLEAR t457.
                    t457 = t456.
                    t455 ?= t457.
                    DATA(t458) = t3.
                    DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t459.
                    t453 = t454->run_syntax( i_node = t455 i_input_967e = t458 i_qualified_name_prefix = t459 ).
                    t452 = t453.
                    DATA(t460) = VALUE abap_bool( ).
                    DATA(t461) = t452.
                    t460 = xsdbool( t461 IS BOUND ).
                    IF t460 = abap_true.
                      DATA t462 TYPE REF TO zcl_lnt_current_scope.
                      CLEAR t462.
                      DATA t463 TYPE REF TO zcl_lnt_current_scope.
                      CLEAR t463.
                      DATA(t464) = t3.
                      t463 = t464->scope.
                      t462 = t463.
                      DATA t465 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t465.
                      DATA t466 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t466.
                      DATA(t467) = abap_true.
                      IF t467 = abap_true.
                        DATA t468 TYPE REF TO zcl_lnt_typed_identifier.
                        CLEAR t468.
                        DATA(t469) = t452.
                        t468 = t469.
                        t466 = t468.
                      ELSE.
                        DATA t470 TYPE REF TO zcl_lnt_typed_identifier.
                        CLEAR t470.
                        t466 = t470.
                      ENDIF.
                      t465 = t466.
                      DATA(t471) = VALUE abap_bool( ).
                      DATA t472 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t472.
                      DATA(t473) = t465.
                      t472 = t473.
                      DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t474.
                      DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t475.
                      t474 = t475.
                      DATA(t476) = VALUE abap_bool( ).
                      DATA(t477) = t472.
                      IF t477 IS INITIAL.
                        t476 = abap_true.
                      ENDIF.
                      t471 = t476.
                      IF t471 = abap_true.
                      ELSE.
                        DATA(t478) = t462.
                        DATA(t479) = VALUE string( ).
                        DATA t480 TYPE REF TO zcl_lnt_fi_identifier.
                        CLEAR t480.
                        DATA t481 TYPE REF TO zcl_lnt_typed_identifier.
                        CLEAR t481.
                        DATA(t482) = t465.
                        t481 = t482.
                        t480 = t481.
                        DATA(t483) = VALUE string( ).
                        DATA(t484) = VALUE string( ).
                        DATA(t485) = VALUE string( ).
                        DATA t486 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t486.
                        DATA t487 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t487.
                        DATA(t488) = t480.
                        t487 = t488->token.
                        t486 = t487.
                        DATA(t489) = VALUE string( ).
                        DATA(t490) = t486.
                        t489 = t490->str.
                        t485 = t489.
                        t484 = t485.
                        DATA(t491) = VALUE abap_bool( ).
                        DATA(t492) = VALUE string( ).
                        DATA(t493) = t484.
                        DATA(t494) = 0.
                        DATA(t495) = 1.
                        DATA(t496) = strlen( t493 ).
                        IF t494 < 0.
                          t494 = t494 + t496.
                          IF t494 < 0.
                            t494 = 0.
                          ENDIF.
                        ENDIF.
                        IF t494 > t496 OR t495 <= 0.
                          CLEAR t492.
                        ELSE.
                          IF t495 > t496 - t494.
                            t495 = t496 - t494.
                          ENDIF.
                          t492 = t493+t494(t495).
                        ENDIF.
                        DATA(t497) = |!|.
                        t491 = xsdbool( t492 = t497 ).
                        IF t491 = abap_true.
                          DATA(t498) = VALUE string( ).
                          DATA(t499) = VALUE string( ).
                          DATA(t500) = t484.
                          t499 = t500.
                          DATA(t501) = VALUE string( ).
                          DATA(t502) = t499.
                          DATA(t503) = 1.
                          DATA(t504) = VALUE i( ).
                          DATA(t505) = t499.
                          DATA(t506) = strlen( t505 ).
                          t504 = t506.
                          DATA(t507) = strlen( t502 ).
                          IF t503 < 0.
                            t503 = t503 + t507.
                            IF t503 < 0.
                              t503 = 0.
                            ENDIF.
                          ENDIF.
                          IF t503 > t507 OR t504 <= 0.
                            CLEAR t501.
                          ELSE.
                            IF t504 > t507 - t503.
                              t504 = t507 - t503.
                            ENDIF.
                            t501 = t502+t503(t504).
                          ENDIF.
                          t498 = t501.
                          t484 = t498.
                        ENDIF.
                        DATA(t508) = t484.
                        t483 = t508.
                        t479 = t483.
                        DATA t509 TYPE REF TO zcl_lnt_typed_identifier.
                        CLEAR t509.
                        DATA(t510) = abap_true.
                        IF t510 = abap_true.
                          DATA t511 TYPE REF TO zcl_lnt_typed_identifier.
                          CLEAR t511.
                          DATA(t512) = t465.
                          t511 = t512.
                          t509 = t511.
                        ELSE.
                          DATA t513 TYPE REF TO zcl_lnt_typed_identifier.
                          CLEAR t513.
                          t509 = t513.
                        ENDIF.
                        t478->add_type_named( i_name = t479 i_type_9913 = t509 ).
                      ENDIF.
                      DATA(t514) = me->tlist.
                      DATA t515 TYPE REF TO zcl_lnt_type_definitions_entry.
                      CLEAR t515.
                      DATA t516 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t516.
                      DATA t517 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t517.
                      DATA(t518) = t452.
                      t517 = t518.
                      t516 = t517.
                      DATA(t519) = VALUE f( ).
                      DATA(t520) = VALUE f( ).
                      DATA(t521) = t2.
                      t520 = t521.
                      t519 = t520.
                      t515 = NEW zcl_lnt_type_definitions_entry( i_type_9913 = t516 i_visibility_5c1f = t519 ).
                      CREATE OBJECT t515->zlnt_view_ownkeys_b0e8086400eb.
                      t515->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t522.
                      IF t515->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t515->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t522 ).
                      ENDIF.
                      DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t523.
                      IF t515->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t515->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `visibility` p1 = t523 ).
                      ENDIF.
                      CREATE OBJECT t515->zlnt_json_ownkeys_70e5fd461788.
                      t515->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t524) = |type|.
                      DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t525.
                      IF t515->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t515->zlnt_json_ownkeys_70e5fd461788->put( p0 = t524 p1 = t525 ).
                      ENDIF.
                      DATA(t526) = |visibility|.
                      DATA t527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t527.
                      IF t515->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t515->zlnt_json_ownkeys_70e5fd461788->put( p0 = t526 p1 = t527 ).
                      ENDIF.
                      t514->load( ).
                      APPEND t515 TO t514->items.
                      t514->save( ).
                    ENDIF.
                  ELSE.
                    DATA t528 TYPE REF TO zcl_lnt_structure_node.
                    CLEAR t528.
                    DATA(t529) = abap_true.
                    IF t529 = abap_true.
                      DATA t530 TYPE REF TO zcl_lnt_structure_node.
                      CLEAR t530.
                      DATA(t531) = t18.
                      DATA t532 TYPE REF TO object.
                      CLEAR t532.
                      t532 = t531.
                      t530 ?= t532.
                      t528 = t530.
                    ELSE.
                      DATA t533 TYPE REF TO zcl_lnt_structure_node.
                      CLEAR t533.
                      t528 = t533.
                    ENDIF.
                    DATA(t534) = t2.
                    DATA(t535) = t3.
                    me->parse_section( i_node = t528 i_visibility_5c1f = t534 i_input_967e = t535 ).
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ELSE.
        DATA(t536) = VALUE abap_bool( ).
        DATA(t537) = t18.
        t536 = xsdbool( t537 IS BOUND AND t537 IS INSTANCE OF zcl_lnt_statement_node ).
        IF t536 = abap_true.
          DATA(t538) = VALUE abap_bool( ).
          DATA(t539) = t23.
          t538 = xsdbool( t539 IS BOUND AND t539 IS INSTANCE OF zcl_lnt_st_data ).
          IF t538 = abap_true.
            DATA(t540) = me->instance.
            DATA t541 TYPE REF TO zcl_lnt_class_attribute.
            CLEAR t541.
            DATA t542 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t542.
            DATA(t543) = t18.
            DATA t544 TYPE REF TO object.
            CLEAR t544.
            t544 = t543.
            t542 ?= t544.
            DATA(t545) = t2.
            DATA(t546) = t3.
            t541 = me->parse_attribute( i_node = t542 i_visibility_5c1f = t545 i_input_967e = t546 ).
            t540->load( ).
            APPEND t541 TO t540->items.
            t540->save( ).
          ELSE.
            DATA(t547) = VALUE abap_bool( ).
            DATA(t548) = t23.
            t547 = xsdbool( t548 IS BOUND AND t548 IS INSTANCE OF zcl_lnt_st_class_data ).
            IF t547 = abap_true.
              DATA(t549) = me->static_9977.
              DATA t550 TYPE REF TO zcl_lnt_class_attribute.
              CLEAR t550.
              DATA t551 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t551.
              DATA(t552) = t18.
              DATA t553 TYPE REF TO object.
              CLEAR t553.
              t553 = t552.
              t551 ?= t553.
              DATA(t554) = t2.
              DATA(t555) = t3.
              t550 = me->parse_attribute( i_node = t551 i_visibility_5c1f = t554 i_input_967e = t555 ).
              t549->load( ).
              APPEND t550 TO t549->items.
              t549->save( ).
            ELSE.
              DATA(t556) = VALUE abap_bool( ).
              DATA(t557) = t23.
              t556 = xsdbool( t557 IS BOUND AND t557 IS INSTANCE OF zcl_lnt_aliases ).
              IF t556 = abap_true.
                DATA t558 TYPE REF TO zcl_lnt_statement_node.
                CLEAR t558.
                DATA(t559) = t18.
                DATA t560 TYPE REF TO object.
                CLEAR t560.
                t560 = t559.
                t558 ?= t560.
                DATA(t561) = t2.
                DATA(t562) = t3.
                me->parse_alias( i_node = t558 i_visibility_5c1f = t561 i_input_967e = t562 ).
              ELSE.
                DATA(t563) = VALUE abap_bool( ).
                DATA(t564) = t23.
                t563 = xsdbool( t564 IS BOUND AND t564 IS INSTANCE OF zcl_lnt_st_statem_constant ).
                IF t563 = abap_true.
                  DATA t565 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t565.
                  DATA t566 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t566.
                  DATA(t567) = NEW zcl_lnt_sy_statem_constant( ).
                  DATA t568 TYPE REF TO zcl_lnt_statement_node.
                  CLEAR t568.
                  DATA(t569) = t18.
                  DATA t570 TYPE REF TO object.
                  CLEAR t570.
                  t570 = t569.
                  t568 ?= t570.
                  DATA(t571) = t3.
                  t566 = t567->run_syntax( i_node = t568 i_input_967e = t571 ).
                  t565 = t566.
                  DATA(t572) = VALUE abap_bool( ).
                  DATA(t573) = t565.
                  t572 = xsdbool( t573 IS BOUND ).
                  IF t572 = abap_true.
                    DATA t574 TYPE REF TO zcl_lnt_class_constant.
                    CLEAR t574.
                    DATA t575 TYPE REF TO zcl_lnt_class_constant.
                    CLEAR t575.
                    DATA(t576) = t565.
                    DATA(t577) = VALUE f( ).
                    DATA(t578) = t2.
                    t577 = t578.
                    DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t579.
                    DATA t580 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t580.
                    DATA(t581) = t565.
                    t580 = t581.
                    DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t582.
                    DATA(t583) = t580.
                    t582 = t583->value.
                    t579 = t582.
                    t575 = NEW zcl_lnt_class_constant( i_id = t576 i_visibility_5c1f = t577 i_value = t579 ).
                    t574 = t575.
                    DATA(t584) = me->constants.
                    DATA(t585) = t574.
                    t584->load( ).
                    APPEND t585 TO t584->items.
                    t584->save( ).
                    DATA t586 TYPE REF TO zcl_lnt_current_scope.
                    CLEAR t586.
                    DATA t587 TYPE REF TO zcl_lnt_current_scope.
                    CLEAR t587.
                    DATA(t588) = t3.
                    t587 = t588->scope.
                    t586 = t587.
                    DATA t589 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t589.
                    DATA(t590) = t574.
                    t589 = t590.
                    DATA(t591) = VALUE abap_bool( ).
                    DATA t592 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t592.
                    DATA(t593) = t589.
                    t592 = t593.
                    DATA t594 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t594.
                    DATA t595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t595.
                    t594 = t595.
                    DATA(t596) = VALUE abap_bool( ).
                    DATA(t597) = t592.
                    IF t597 IS INITIAL.
                      t596 = abap_true.
                    ENDIF.
                    t591 = t596.
                    IF t591 = abap_true.
                    ELSE.
                      DATA(t598) = t586.
                      DATA(t599) = VALUE string( ).
                      DATA t600 TYPE REF TO zcl_lnt_fi_identifier.
                      CLEAR t600.
                      DATA t601 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t601.
                      DATA(t602) = t589.
                      t601 = t602.
                      t600 = t601.
                      DATA(t603) = VALUE string( ).
                      DATA(t604) = VALUE string( ).
                      DATA(t605) = VALUE string( ).
                      DATA t606 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t606.
                      DATA t607 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t607.
                      DATA(t608) = t600.
                      t607 = t608->token.
                      t606 = t607.
                      DATA(t609) = VALUE string( ).
                      DATA(t610) = t606.
                      t609 = t610->str.
                      t605 = t609.
                      t604 = t605.
                      DATA(t611) = VALUE abap_bool( ).
                      DATA(t612) = VALUE string( ).
                      DATA(t613) = t604.
                      DATA(t614) = 0.
                      DATA(t615) = 1.
                      DATA(t616) = strlen( t613 ).
                      IF t614 < 0.
                        t614 = t614 + t616.
                        IF t614 < 0.
                          t614 = 0.
                        ENDIF.
                      ENDIF.
                      IF t614 > t616 OR t615 <= 0.
                        CLEAR t612.
                      ELSE.
                        IF t615 > t616 - t614.
                          t615 = t616 - t614.
                        ENDIF.
                        t612 = t613+t614(t615).
                      ENDIF.
                      DATA(t617) = |!|.
                      t611 = xsdbool( t612 = t617 ).
                      IF t611 = abap_true.
                        DATA(t618) = VALUE string( ).
                        DATA(t619) = VALUE string( ).
                        DATA(t620) = t604.
                        t619 = t620.
                        DATA(t621) = VALUE string( ).
                        DATA(t622) = t619.
                        DATA(t623) = 1.
                        DATA(t624) = VALUE i( ).
                        DATA(t625) = t619.
                        DATA(t626) = strlen( t625 ).
                        t624 = t626.
                        DATA(t627) = strlen( t622 ).
                        IF t623 < 0.
                          t623 = t623 + t627.
                          IF t623 < 0.
                            t623 = 0.
                          ENDIF.
                        ENDIF.
                        IF t623 > t627 OR t624 <= 0.
                          CLEAR t621.
                        ELSE.
                          IF t624 > t627 - t623.
                            t624 = t627 - t623.
                          ENDIF.
                          t621 = t622+t623(t624).
                        ENDIF.
                        t618 = t621.
                        t604 = t618.
                      ENDIF.
                      DATA(t628) = t604.
                      t603 = t628.
                      t599 = t603.
                      DATA t629 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t629.
                      DATA(t630) = t589.
                      t629 = t630.
                      t598->add_named_identifier( i_name = t599 i_identifier = t629 ).
                    ENDIF.
                  ENDIF.
                ELSE.
                  DATA(t631) = VALUE abap_bool( ).
                  DATA(t632) = t23.
                  t631 = xsdbool( t632 IS BOUND AND t632 IS INSTANCE OF zcl_lnt_st_statem_type ).
                  IF t631 = abap_true.
                    DATA t633 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t633.
                    DATA t634 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t634.
                    DATA(t635) = NEW zcl_lnt_sy_type( ).
                    DATA t636 TYPE REF TO zcl_lnt_statement_node.
                    CLEAR t636.
                    DATA(t637) = t18.
                    DATA t638 TYPE REF TO object.
                    CLEAR t638.
                    t638 = t637.
                    t636 ?= t638.
                    DATA(t639) = t3.
                    DATA t640 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t640.
                    t634 = t635->run_syntax( i_node = t636 i_input_967e = t639 i_qualified_name_prefix = t640 ).
                    t633 = t634.
                    DATA(t641) = VALUE abap_bool( ).
                    DATA(t642) = t633.
                    t641 = xsdbool( t642 IS BOUND ).
                    IF t641 = abap_true.
                      DATA t643 TYPE REF TO zcl_lnt_current_scope.
                      CLEAR t643.
                      DATA t644 TYPE REF TO zcl_lnt_current_scope.
                      CLEAR t644.
                      DATA(t645) = t3.
                      t644 = t645->scope.
                      t643 = t644.
                      DATA t646 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t646.
                      DATA t647 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t647.
                      DATA(t648) = abap_true.
                      IF t648 = abap_true.
                        DATA t649 TYPE REF TO zcl_lnt_typed_identifier.
                        CLEAR t649.
                        DATA(t650) = t633.
                        t649 = t650.
                        t647 = t649.
                      ELSE.
                        DATA t651 TYPE REF TO zcl_lnt_typed_identifier.
                        CLEAR t651.
                        t647 = t651.
                      ENDIF.
                      t646 = t647.
                      DATA(t652) = VALUE abap_bool( ).
                      DATA t653 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t653.
                      DATA(t654) = t646.
                      t653 = t654.
                      DATA t655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t655.
                      DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t656.
                      t655 = t656.
                      DATA(t657) = VALUE abap_bool( ).
                      DATA(t658) = t653.
                      IF t658 IS INITIAL.
                        t657 = abap_true.
                      ENDIF.
                      t652 = t657.
                      IF t652 = abap_true.
                      ELSE.
                        DATA(t659) = t643.
                        DATA(t660) = VALUE string( ).
                        DATA t661 TYPE REF TO zcl_lnt_fi_identifier.
                        CLEAR t661.
                        DATA t662 TYPE REF TO zcl_lnt_typed_identifier.
                        CLEAR t662.
                        DATA(t663) = t646.
                        t662 = t663.
                        t661 = t662.
                        DATA(t664) = VALUE string( ).
                        DATA(t665) = VALUE string( ).
                        DATA(t666) = VALUE string( ).
                        DATA t667 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t667.
                        DATA t668 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t668.
                        DATA(t669) = t661.
                        t668 = t669->token.
                        t667 = t668.
                        DATA(t670) = VALUE string( ).
                        DATA(t671) = t667.
                        t670 = t671->str.
                        t666 = t670.
                        t665 = t666.
                        DATA(t672) = VALUE abap_bool( ).
                        DATA(t673) = VALUE string( ).
                        DATA(t674) = t665.
                        DATA(t675) = 0.
                        DATA(t676) = 1.
                        DATA(t677) = strlen( t674 ).
                        IF t675 < 0.
                          t675 = t675 + t677.
                          IF t675 < 0.
                            t675 = 0.
                          ENDIF.
                        ENDIF.
                        IF t675 > t677 OR t676 <= 0.
                          CLEAR t673.
                        ELSE.
                          IF t676 > t677 - t675.
                            t676 = t677 - t675.
                          ENDIF.
                          t673 = t674+t675(t676).
                        ENDIF.
                        DATA(t678) = |!|.
                        t672 = xsdbool( t673 = t678 ).
                        IF t672 = abap_true.
                          DATA(t679) = VALUE string( ).
                          DATA(t680) = VALUE string( ).
                          DATA(t681) = t665.
                          t680 = t681.
                          DATA(t682) = VALUE string( ).
                          DATA(t683) = t680.
                          DATA(t684) = 1.
                          DATA(t685) = VALUE i( ).
                          DATA(t686) = t680.
                          DATA(t687) = strlen( t686 ).
                          t685 = t687.
                          DATA(t688) = strlen( t683 ).
                          IF t684 < 0.
                            t684 = t684 + t688.
                            IF t684 < 0.
                              t684 = 0.
                            ENDIF.
                          ENDIF.
                          IF t684 > t688 OR t685 <= 0.
                            CLEAR t682.
                          ELSE.
                            IF t685 > t688 - t684.
                              t685 = t688 - t684.
                            ENDIF.
                            t682 = t683+t684(t685).
                          ENDIF.
                          t679 = t682.
                          t665 = t679.
                        ENDIF.
                        DATA(t689) = t665.
                        t664 = t689.
                        t660 = t664.
                        DATA t690 TYPE REF TO zcl_lnt_typed_identifier.
                        CLEAR t690.
                        DATA(t691) = abap_true.
                        IF t691 = abap_true.
                          DATA t692 TYPE REF TO zcl_lnt_typed_identifier.
                          CLEAR t692.
                          DATA(t693) = t646.
                          t692 = t693.
                          t690 = t692.
                        ELSE.
                          DATA t694 TYPE REF TO zcl_lnt_typed_identifier.
                          CLEAR t694.
                          t690 = t694.
                        ENDIF.
                        t659->add_type_named( i_name = t660 i_type_9913 = t690 ).
                      ENDIF.
                      DATA(t695) = me->tlist.
                      DATA t696 TYPE REF TO zcl_lnt_type_definitions_entry.
                      CLEAR t696.
                      DATA t697 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t697.
                      DATA t698 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t698.
                      DATA(t699) = t633.
                      t698 = t699.
                      t697 = t698.
                      DATA(t700) = VALUE f( ).
                      DATA(t701) = VALUE f( ).
                      DATA(t702) = t2.
                      t701 = t702.
                      t700 = t701.
                      t696 = NEW zcl_lnt_type_definitions_entry( i_type_9913 = t697 i_visibility_5c1f = t700 ).
                      CREATE OBJECT t696->zlnt_view_ownkeys_b0e8086400eb.
                      t696->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t703 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t703.
                      IF t696->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t696->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t703 ).
                      ENDIF.
                      DATA t704 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t704.
                      IF t696->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t696->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `visibility` p1 = t704 ).
                      ENDIF.
                      CREATE OBJECT t696->zlnt_json_ownkeys_70e5fd461788.
                      t696->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t705) = |type|.
                      DATA t706 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t706.
                      IF t696->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t696->zlnt_json_ownkeys_70e5fd461788->put( p0 = t705 p1 = t706 ).
                      ENDIF.
                      DATA(t707) = |visibility|.
                      DATA t708 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t708.
                      IF t696->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t696->zlnt_json_ownkeys_70e5fd461788->put( p0 = t707 p1 = t708 ).
                      ENDIF.
                      t695->load( ).
                      APPEND t696 TO t695->items.
                      t695->save( ).
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD parse_alias.
    DATA(t1) = i_node.
    DATA(t2) = i_visibility_5c1f.
    DATA(t3) = i_input_967e.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA(t8) = t1.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
    t7 = t8->find_first_expression( i_type_9913 = t9 ).
    t6 = t7.
    t5 = t6->get_first_token( ).
    t4 = t5.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t13.
    DATA(t14) = t1.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    t13 = t14->find_first_expression( i_type_9913 = t15 ).
    t12 = t13.
    t11 = t12->get_first_token( ).
    t10 = t11.
    DATA(t16) = VALUE string( ).
    DATA(t17) = VALUE string( ).
    DATA t18 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t18.
    DATA(t19) = t10.
    t18 = t19.
    DATA(t20) = VALUE string( ).
    DATA(t21) = t18.
    t20 = t21->str.
    t17 = t20.
    t16 = t17.
    DATA(t22) = me->aliases_62bb.
    DATA t23 TYPE REF TO zcl_lnt_alias.
    CLEAR t23.
    DATA(t24) = t4.
    DATA(t25) = VALUE f( ).
    DATA(t26) = t2.
    t25 = t26.
    DATA(t27) = t16.
    DATA(t28) = CONV string( me->filename ).
    t23 = NEW zcl_lnt_alias( i_token = t24 i_visibility_5c1f = t25 i_component = t27 i_filename = t28 ).
    t22->load( ).
    APPEND t23 TO t22->items.
    t22->save( ).
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
      CLEAR t37.
      DATA(t38) = t16.
      DATA(t39) = |~|.
      DATA(t40) = strlen( t38 ).
      DATA(t41) = VALUE i( ).
      DATA(t42) = VALUE i( ).
      DATA(t43) = VALUE i( ).
      DATA(t44) = VALUE i( ).
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
      IF t37->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t37->load( ).
      CLEAR t36.
      READ TABLE t37->items INDEX 1 INTO t36.
      t35 = t36.
      DATA t46 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t46.
      DATA t47 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t47.
      DATA t48 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t48.
      DATA t49 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t49.
      DATA(t50) = t3.
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
      CLEAR t59.
      DATA(t60) = t51.
      t59 = t60.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t61.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      t61 = t62.
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = t59.
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
        CLEAR t69.
        DATA t70 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t70.
        DATA(t71) = t48.
        t70 = t71->current.
        t69 = t70.
        DATA t72 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t72.
        DATA(t73) = VALUE abap_bool( ).
        DATA(t74) = t69.
        IF t74 IS INITIAL.
          t73 = abap_true.
        ENDIF.
        IF t73 = abap_true.
          DATA t75 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t75.
          t72 = t75.
        ELSE.
          DATA t76 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t76.
          DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t77.
          DATA(t78) = t69.
          t77 = t78.
          DATA(t79) = VALUE string( ).
          DATA(t80) = t51.
          t79 = t80->value.
          t76 = t77->find_interface_definition( i_name = t79 ).
          t72 = t76.
        ENDIF.
        t68 = t72.
        t67 = t68.
        DATA t81 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t81.
        DATA(t82) = VALUE abap_bool( ).
        DATA(t83) = t67.
        t82 = xsdbool( t83 IS BOUND ).
        IF t82 = abap_true.
          DATA t84 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t84.
          DATA(t85) = abap_true.
          IF t85 = abap_true.
            DATA t86 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t86.
            DATA(t87) = t67.
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
          CLEAR t93.
          DATA(t94) = t48.
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
            DATA(t102) = VALUE string( ).
            DATA(t103) = t51.
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
          CLEAR t106.
          t106 = t92.
          t91 ?= t106.
          t90 = t91.
          DATA t107 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t107.
          DATA(t108) = VALUE abap_bool( ).
          DATA(t109) = t90.
          t108 = xsdbool( t109 IS BOUND ).
          IF t108 = abap_true.
            DATA t110 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t110.
            DATA t111 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t111.
            DATA t112 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t112.
            DATA(t113) = t90.
            t112 = t113.
            t111 = t112.
            DATA t114 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t114.
            DATA(t115) = t111.
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
      DATA(t117) = VALUE abap_bool( ).
      DATA(t118) = t46.
      t117 = xsdbool( t118 IS BOUND ).
      IF t117 = abap_true.
        DATA t119 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t119.
        DATA(t120) = t3.
        t119 = t120->scope.
        DATA t121 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t121.
        DATA(t122) = abap_true.
        IF t122 = abap_true.
          DATA(t123) = t10.
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
          CLEAR t127.
          DATA t128 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t128.
          DATA(t129) = t46.
          t128 = t129.
          t127 ?= t128.
          t125 = t127.
        ELSE.
          DATA t130 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t130.
          t125 = t130.
        ENDIF.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        DATA(t132) = |Object|.
        CLEAR t131.
        CREATE OBJECT t131.
        t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t131->sval = t132.
        DATA(t133) = VALUE string( ).
        DATA(t134) = t3.
        t133 = t134->filename.
        DATA t135 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t135.
        DATA(t136) = abap_true.
        IF t136 = abap_true.
          DATA t137 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t137.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t138.
          DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t139.
          DATA(t140) = abap_true.
          IF t140 = abap_true.
            DATA(t141) = VALUE string( ).
            DATA(t142) = t35.
            DATA(t143) = strlen( t142 ).
            t141 = t142.
            IF t141 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t141 TO UPPER CASE.
            ELSE.
              t141 = zlnt_runtime_uppe_91169605024d=>full( t141 ).
            ENDIF.
            DATA(t144) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t144->has = abap_true.
            t144->value = t141.
            t139 = t144.
          ELSE.
            DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t145.
            t139 = t145.
          ENDIF.
          t138 = t139.
          DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t146.
          DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t147.
          DATA(t148) = abap_true.
          IF t148 = abap_true.
            DATA(t149) = |INTF|.
            DATA(t150) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t150->has = abap_true.
            t150->value = t149.
            t147 = t150.
          ELSE.
            DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t151.
            t147 = t151.
          ENDIF.
          t146 = t147.
          DATA t152 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t152.
          DATA t153 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t153.
          t152 = t153.
          t137 = NEW zcl_lnt_ireference_extras( i_oo_name = t138 i_oo_type = t146 i_found_qualified = t152 ).
          CREATE OBJECT t137->zlnt_view_ownkeys_b0e8086400eb.
          t137->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t154.
          IF t137->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t137->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t154 ).
          ENDIF.
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t155.
          IF t137->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t137->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t155 ).
          ENDIF.
          CREATE OBJECT t137->zlnt_json_ownkeys_70e5fd461788.
          t137->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t156) = |ooName|.
          DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t157.
          IF t137->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t137->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
          ENDIF.
          DATA(t158) = |ooType|.
          DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t159.
          IF t137->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t137->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
          ENDIF.
          t135 = t137.
        ELSE.
          DATA t160 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t160.
          t135 = t160.
        ENDIF.
        t119->add_reference( i_usage = t121 i_referencing = t125 i_type_9913 = t131 i_filename = t133 i_extra = t135 ).
        DATA t161 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t161.
        DATA t162 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t162.
        DATA t163 TYPE REF TO zif_lnt_type_definitions.
        CLEAR t163.
        DATA t164 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t164.
        DATA(t165) = t46.
        t164 = t165.
        t163 = t164->get_type_definitions( ).
        DATA(t166) = VALUE string( ).
        DATA t167 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t167.
        DATA(t168) = t16.
        DATA(t169) = |~|.
        DATA(t170) = strlen( t168 ).
        DATA(t171) = VALUE i( ).
        DATA(t172) = VALUE i( ).
        DATA(t173) = VALUE i( ).
        DATA(t174) = VALUE i( ).
        DATA(t175) = VALUE string( ).
        CREATE OBJECT t167.
        t174 = strlen( t169 ).
        t171 = 0.
        IF t174 = 0.
          WHILE t171 < t170.
            t175 = t168+t171(1).
            APPEND t175 TO t167->items.
            t171 = t171 + 1.
          ENDWHILE.
        ELSE.
          WHILE t171 <= t170.
            FIND FIRST OCCURRENCE OF t169 IN SECTION OFFSET t171 OF t168 MATCH OFFSET t172.
            IF sy-subrc = 0.
              t173 = t172 - t171.
            ELSE.
              t172 = -1.
              t173 = t170 - t171.
            ENDIF.
            CLEAR t175.
            IF t173 > 0.
              t175 = t168+t171(t173).
            ENDIF.
            APPEND t175 TO t167->items.
            IF t172 < 0.
              EXIT.
            ENDIF.
            t171 = t172 + t174.
          ENDWHILE.
        ENDIF.
        IF t167->has( 2 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t167->load( ).
        CLEAR t166.
        READ TABLE t167->items INDEX 2 INTO t166.
        t162 = t163->get_by_name( i_name = t166 ).
        t161 = t162.
        DATA(t176) = VALUE abap_bool( ).
        DATA(t177) = t161.
        t176 = xsdbool( t177 IS BOUND ).
        IF t176 = abap_true.
          DATA t178 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t178.
          DATA(t179) = t3.
          t178 = t179->scope.
          DATA(t180) = VALUE string( ).
          DATA t181 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t181.
          DATA(t182) = t4.
          t181 = t182.
          DATA(t183) = VALUE string( ).
          DATA(t184) = t181.
          t183 = t184->str.
          t180 = t183.
          DATA t185 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t185.
          DATA(t186) = abap_true.
          IF t186 = abap_true.
            DATA t187 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t187.
            DATA(t188) = t161.
            t187 = t188.
            t185 = t187.
          ELSE.
            DATA t189 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t189.
            t185 = t189.
          ENDIF.
          t178->add_type_named( i_name = t180 i_type_9913 = t185 ).
        ENDIF.
        DATA t190 TYPE REF TO zif_lnt_union_a346537f.
        CLEAR t190.
        DATA t191 TYPE REF TO zif_lnt_union_a346537f.
        CLEAR t191.
        DATA t192 TYPE REF TO zif_lnt_attributes.
        CLEAR t192.
        DATA t193 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t193.
        DATA(t194) = t46.
        t193 = t194.
        t192 = t193->get_attributes( ).
        DATA(t195) = VALUE string( ).
        DATA t196 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t196.
        DATA(t197) = t16.
        DATA(t198) = |~|.
        DATA(t199) = strlen( t197 ).
        DATA(t200) = VALUE i( ).
        DATA(t201) = VALUE i( ).
        DATA(t202) = VALUE i( ).
        DATA(t203) = VALUE i( ).
        DATA(t204) = VALUE string( ).
        CREATE OBJECT t196.
        t203 = strlen( t198 ).
        t200 = 0.
        IF t203 = 0.
          WHILE t200 < t199.
            t204 = t197+t200(1).
            APPEND t204 TO t196->items.
            t200 = t200 + 1.
          ENDWHILE.
        ELSE.
          WHILE t200 <= t199.
            FIND FIRST OCCURRENCE OF t198 IN SECTION OFFSET t200 OF t197 MATCH OFFSET t201.
            IF sy-subrc = 0.
              t202 = t201 - t200.
            ELSE.
              t201 = -1.
              t202 = t199 - t200.
            ENDIF.
            CLEAR t204.
            IF t202 > 0.
              t204 = t197+t200(t202).
            ENDIF.
            APPEND t204 TO t196->items.
            IF t201 < 0.
              EXIT.
            ENDIF.
            t200 = t201 + t203.
          ENDWHILE.
        ENDIF.
        IF t196->has( 2 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t196->load( ).
        CLEAR t195.
        READ TABLE t196->items INDEX 2 INTO t195.
        t191 = t192->find_by_name( i_name = t195 ).
        t190 = t191.
        DATA(t205) = VALUE abap_bool( ).
        DATA(t206) = t190.
        t205 = xsdbool( t206 IS BOUND ).
        IF t205 = abap_true.
          DATA t207 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t207.
          DATA(t208) = t3.
          t207 = t208->scope.
          DATA(t209) = VALUE string( ).
          DATA t210 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t210.
          DATA(t211) = t4.
          t210 = t211.
          DATA(t212) = VALUE string( ).
          DATA(t213) = t210.
          t212 = t213->str.
          t209 = t212.
          DATA t214 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t214.
          DATA t215 TYPE REF TO zif_lnt_union_a346537f.
          CLEAR t215.
          DATA(t216) = t190.
          t215 = t216.
          t214 ?= t215.
          t207->add_named_identifier( i_name = t209 i_identifier = t214 ).
        ENDIF.
        DATA(t217) = VALUE string( ).
        DATA(t218) = VALUE string( ).
        DATA t219 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t219.
        DATA(t220) = t16.
        DATA(t221) = |~|.
        DATA(t222) = strlen( t220 ).
        DATA(t223) = VALUE i( ).
        DATA(t224) = VALUE i( ).
        DATA(t225) = VALUE i( ).
        DATA(t226) = VALUE i( ).
        DATA(t227) = VALUE string( ).
        CREATE OBJECT t219.
        t226 = strlen( t221 ).
        t223 = 0.
        IF t226 = 0.
          WHILE t223 < t222.
            t227 = t220+t223(1).
            APPEND t227 TO t219->items.
            t223 = t223 + 1.
          ENDWHILE.
        ELSE.
          WHILE t223 <= t222.
            FIND FIRST OCCURRENCE OF t221 IN SECTION OFFSET t223 OF t220 MATCH OFFSET t224.
            IF sy-subrc = 0.
              t225 = t224 - t223.
            ELSE.
              t224 = -1.
              t225 = t222 - t223.
            ENDIF.
            CLEAR t227.
            IF t225 > 0.
              t227 = t220+t223(t225).
            ENDIF.
            APPEND t227 TO t219->items.
            IF t224 < 0.
              EXIT.
            ENDIF.
            t223 = t224 + t226.
          ENDWHILE.
        ENDIF.
        IF t219->has( 2 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t219->load( ).
        CLEAR t218.
        READ TABLE t219->items INDEX 2 INTO t218.
        t217 = t218.
        DATA(t228) = VALUE abap_bool( ).
        DATA(t229) = VALUE abap_bool( ).
        DATA(t230) = VALUE abap_bool( ).
        DATA t231 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t231.
        DATA(t232) = t161.
        t231 = t232.
        DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t233.
        DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t234.
        t233 = t234.
        DATA(t235) = VALUE abap_bool( ).
        DATA(t236) = t231.
        IF t236 IS INITIAL.
          t235 = abap_true.
        ENDIF.
        t230 = t235.
        t229 = t230.
        IF t230 = abap_true.
          DATA(t237) = VALUE abap_bool( ).
          DATA t238 TYPE REF TO zif_lnt_union_a346537f.
          CLEAR t238.
          DATA(t239) = t190.
          t238 = t239.
          DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t240.
          DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t241.
          t240 = t241.
          DATA(t242) = VALUE abap_bool( ).
          DATA(t243) = t238.
          IF t243 IS INITIAL.
            t242 = abap_true.
          ENDIF.
          t237 = t242.
          t229 = t237.
        ENDIF.
        t228 = t229.
        IF t229 = abap_true.
          DATA(t244) = VALUE abap_bool( ).
          DATA(t245) = VALUE abap_bool( ).
          DATA t246 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t246.
          DATA(t247) = t46.
          t246 = t247.
          DATA(t248) = t217.
          DATA(t249) = t3.
          DATA t250 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t250.
          CREATE OBJECT t250.
          t245 = me->exists_in_interface( i_idef = t246 i_component = t248 i_input_967e = t249 i_visited = t250 ).
          DATA(t251) = abap_false.
          t244 = xsdbool( t245 = t251 ).
          t228 = t244.
        ENDIF.
        IF t228 = abap_true.
          DATA(t252) = VALUE string( ).
          DATA(t253) = VALUE string( ).
          DATA(t254) = VALUE string( ).
          DATA(t255) = VALUE string( ).
          DATA(t256) = |Component |.
          DATA(t257) = t217.
          DATA(t258) = strlen( t256 ).
          t255 = |{ t256 }{ t257 }|.
          DATA(t259) = | not found in interface |.
          DATA(t260) = strlen( t255 ).
          t254 = |{ t255 }{ t259 }|.
          DATA(t261) = VALUE string( ).
          DATA t262 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t262.
          DATA(t263) = t46.
          t262 = t263.
          t261 = t262->get_name( ).
          DATA(t264) = strlen( t254 ).
          t253 = |{ t254 }{ t261 }|.
          t252 = t253.
          DATA t265 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t265.
          DATA(t266) = t3.
          t265 = t266->issues.
          DATA t267 TYPE REF TO zcl_lnt_issue.
          CLEAR t267.
          DATA(t268) = t3.
          DATA(t269) = t10.
          DATA(t270) = t252.
          DATA t271 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t271.
          t267 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t268 i_token = t269 i_message_26cb = t270 i_fix = t271 ).
          t265->load( ).
          APPEND t267 TO t265->items.
          t265->save( ).
        ENDIF.
      ELSE.
        DATA(t272) = VALUE abap_bool( ).
        DATA(t273) = VALUE abap_bool( ).
        DATA(t274) = me->declared_interfaces.
        DATA(t275) = VALUE string( ).
        DATA(t276) = t35.
        DATA(t277) = strlen( t276 ).
        t275 = t276.
        IF t275 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t275 TO UPPER CASE.
        ELSE.
          t275 = zlnt_runtime_uppe_91169605024d=>full( t275 ).
        ENDIF.
        t273 = t274->includes( p0 = t275 ).
        t272 = t273.
        IF t273 = abap_false.
          DATA(t278) = VALUE abap_bool( ).
          DATA(t279) = VALUE abap_bool( ).
          DATA t280 TYPE REF TO zcl_lnt_ddic.
          CLEAR t280.
          DATA t281 TYPE REF TO zcl_lnt_ddic.
          CLEAR t281.
          DATA t282 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t282.
          DATA t283 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t283.
          DATA(t284) = t3.
          t283 = t284->scope.
          t282 = t283.
          DATA t285 TYPE REF TO zcl_lnt_ddic.
          CLEAR t285.
          DATA t286 TYPE REF TO zif_lnt_registry.
          CLEAR t286.
          DATA(t287) = t282.
          t286 = t287->reg.
          t285 = NEW zcl_lnt_ddic( i_reg_f149 = t286 ).
          t281 = t285.
          t280 = t281.
          DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t288.
          DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t289.
          DATA(t290) = abap_true.
          IF t290 = abap_true.
            DATA(t291) = t35.
            DATA(t292) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t292->has = abap_true.
            t292->value = t291.
            t289 = t292.
          ELSE.
            DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t293.
            t289 = t293.
          ENDIF.
          t288 = t289.
          DATA(t294) = VALUE abap_bool( ).
          DATA(t295) = VALUE abap_bool( ).
          DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t296.
          DATA(t297) = t288.
          t296 = t297.
          DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t298.
          DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t299.
          t298 = t299.
          DATA(t300) = VALUE abap_bool( ).
          DATA(t301) = t296.
          IF t301 IS INITIAL.
            t300 = abap_true.
          ELSEIF t301->has = abap_false.
            t300 = abap_true.
          ENDIF.
          t295 = t300.
          IF t295 = abap_true.
            DATA(t302) = abap_true.
            t294 = t302.
          ELSE.
            DATA(t303) = VALUE abap_bool( ).
            DATA t304 TYPE REF TO zif_lnt_registry.
            CLEAR t304.
            DATA(t305) = t280.
            t304 = t305->reg.
            DATA(t306) = VALUE string( ).
            DATA(t307) = t288.
            t306 = t307->value.
            t303 = t304->in_error_namespace( i_name = t306 ).
            t294 = t303.
          ENDIF.
          t279 = t294.
          DATA(t308) = abap_false.
          t278 = xsdbool( t279 = t308 ).
          t272 = t278.
        ENDIF.
        IF t272 = abap_true.
          DATA t309 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t309.
          DATA(t310) = t3.
          t309 = t310->scope.
          DATA t311 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t311.
          DATA(t312) = abap_true.
          IF t312 = abap_true.
            DATA(t313) = t10.
            t311 = t313.
          ELSE.
            DATA t314 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t314.
            t311 = t314.
          ENDIF.
          DATA t315 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t315.
          DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t316.
          DATA(t317) = |Object (Void)|.
          CLEAR t316.
          CREATE OBJECT t316.
          t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t316->sval = t317.
          DATA(t318) = VALUE string( ).
          DATA(t319) = t3.
          t318 = t319->filename.
          DATA t320 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t320.
          t309->add_reference( i_usage = t311 i_referencing = t315 i_type_9913 = t316 i_filename = t318 i_extra = t320 ).
        ELSE.
          DATA t321 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
          CLEAR t321.
          DATA t322 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
          CLEAR t322.
          DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t323.
          DATA(t324) = abap_true.
          IF t324 = abap_true.
            DATA(t325) = VALUE string( ).
            DATA(t326) = VALUE string( ).
            DATA(t327) = |Interface |.
            DATA(t328) = t35.
            DATA(t329) = strlen( t327 ).
            t326 = |{ t327 }{ t328 }|.
            DATA(t330) = | not found|.
            DATA(t331) = strlen( t326 ).
            t325 = |{ t326 }{ t330 }|.
            DATA(t332) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t332->has = abap_true.
            t332->value = t325.
            t323 = t332.
          ELSE.
            DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t333.
            t323 = t333.
          ENDIF.
          t322 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t323 ).
          t321 = NEW #( ).
          t321->payload = t322.
          CLEAR t321->source_value.
          IF t322 IS BOUND.
            DATA t334 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t334.
            DATA t335 TYPE REF TO object.
            CLEAR t335.
            CLEAR t334.
            t335 = t322.
            TRY.
                t321->source_value ?= t335.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t321->source_value IS NOT BOUND.
              TRY.
                  t334 ?= t322.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t334 IS BOUND.
                t321->source_value = t334->source( ).
              ENDIF.
              IF t321->source_value IS NOT BOUND.
                CREATE OBJECT t321->source_value.
                t321->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t321->source_value->oval = t322.
              ENDIF.
            ENDIF.
          ENDIF.
          RAISE EXCEPTION t321.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD exists_in_interface.
    DATA(t1) = i_idef.
    DATA(t2) = i_component.
    DATA(t3) = i_input_967e.
    DATA(t4) = i_visited.
    DATA(t5) = VALUE string( ).
    DATA t6 TYPE string.
    DATA t7 TYPE string.
    DATA(t8) = t1.
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
    DATA(t11) = t4.
    DATA(t12) = t5.
    t10 = t11->includes( p0 = t12 ).
    IF t10 = abap_true.
      DATA(t13) = abap_false.
      result = t13.
      RETURN.
    ENDIF.
    DATA(t14) = t4.
    DATA(t15) = t5.
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
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
    DATA(t28) = t1.
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
    DATA(t34) = t25.
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
      DATA(t39) = t1.
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
      DATA(t45) = t36.
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
      DATA(t50) = t1.
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
      DATA(t60) = t47.
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
      DATA(t65) = t1.
      t64 = t65->get_events( ).
      DATA t66 TYPE REF TO zif_lnt_event_definition.
      CLEAR t66.
      DATA t67 TYPE REF TO object.
      CLEAR t67.
      DATA(t68) = VALUE i( ).
      DO.
        t64->load( ).
        IF t68 >= lines( t64->items ).
          EXIT.
        ENDIF.
        CLEAR t67.
        READ TABLE t64->items INDEX t68 + 1 INTO t67.
        t68 = t68 + 1.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t69.
        CLEAR t66.
        IF t67 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t69 ?= t67.
          DATA t70 TYPE REF TO object.
          t70 = t69->as_ref( ).
          t66 ?= t70.
        ELSE.
          t66 ?= t67.
        ENDIF.
        DATA(t71) = VALUE abap_bool( ).
        DATA t72 TYPE string.
        DATA t73 TYPE string.
        DATA(t74) = t66.
        t73 = t74->get_name( ).
        DATA(t75) = strlen( t73 ).
        t72 = t73.
        IF t72 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t72 TO UPPER CASE.
        ELSE.
          t72 = zlnt_runtime_uppe_91169605024d=>full( t72 ).
        ENDIF.
        DATA(t76) = t16.
        t71 = xsdbool( t72 = t76 ).
        IF t71 = abap_true.
          DATA(t77) = abap_true.
          t62 = t77.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t78) = t62.
      t61 = t78.
      t21 = t61.
    ENDIF.
    t20 = t21.
    IF t21 = abap_false.
      DATA(t79) = VALUE abap_bool( ).
      DATA t80 TYPE abap_bool.
      DATA(t81) = abap_false.
      t80 = t81.
      DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t83) = t1.
      t82 = t83->get_aliases( ).
      DATA t84 TYPE REF TO zcl_lnt_alias.
      CLEAR t84.
      DATA t85 TYPE REF TO object.
      CLEAR t85.
      DATA(t86) = VALUE i( ).
      DO.
        t82->load( ).
        IF t86 >= lines( t82->items ).
          EXIT.
        ENDIF.
        CLEAR t85.
        READ TABLE t82->items INDEX t86 + 1 INTO t85.
        t86 = t86 + 1.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        CLEAR t84.
        IF t85 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t87 ?= t85.
          DATA t88 TYPE REF TO object.
          t88 = t87->as_ref( ).
          t84 ?= t88.
        ELSE.
          t84 ?= t85.
        ENDIF.
        DATA(t89) = VALUE abap_bool( ).
        DATA(t90) = VALUE string( ).
        DATA(t91) = VALUE string( ).
        DATA t92 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t93) = t84.
        t92 = t93.
        DATA(t94) = VALUE string( ).
        DATA t95 TYPE string.
        DATA t96 TYPE string.
        DATA t97 TYPE REF TO zcl_lnt_abstract_token.
        DATA t98 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t99) = t92.
        t98 = t99->token.
        t97 = t98.
        DATA t100 TYPE string.
        DATA(t101) = t97.
        t100 = t101->str.
        t96 = t100.
        t95 = t96.
        DATA(t102) = VALUE abap_bool( ).
        DATA(t103) = VALUE string( ).
        DATA(t104) = t95.
        DATA(t105) = 0.
        DATA(t106) = 1.
        DATA(t107) = strlen( t104 ).
        IF t105 < 0.
          t105 = t105 + t107.
          IF t105 < 0.
            t105 = 0.
          ENDIF.
        ENDIF.
        IF t105 > t107 OR t106 <= 0.
          CLEAR t103.
        ELSE.
          IF t106 > t107 - t105.
            t106 = t107 - t105.
          ENDIF.
          t103 = t104+t105(t106).
        ENDIF.
        DATA(t108) = |!|.
        t102 = xsdbool( t103 = t108 ).
        IF t102 = abap_true.
          DATA(t109) = VALUE string( ).
          DATA t110 TYPE string.
          DATA(t111) = t95.
          t110 = t111.
          DATA(t112) = VALUE string( ).
          DATA(t113) = t110.
          DATA(t114) = 1.
          DATA t115 TYPE i.
          DATA(t116) = t110.
          DATA(t117) = strlen( t116 ).
          t115 = t117.
          DATA(t118) = strlen( t113 ).
          IF t114 < 0.
            t114 = t114 + t118.
            IF t114 < 0.
              t114 = 0.
            ENDIF.
          ENDIF.
          IF t114 > t118 OR t115 <= 0.
            CLEAR t112.
          ELSE.
            IF t115 > t118 - t114.
              t115 = t118 - t114.
            ENDIF.
            t112 = t113+t114(t115).
          ENDIF.
          t109 = t112.
          t95 = t109.
        ENDIF.
        DATA(t119) = t95.
        t94 = t119.
        t91 = t94.
        DATA(t120) = strlen( t91 ).
        t90 = t91.
        IF t90 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t90 TO UPPER CASE.
        ELSE.
          t90 = zlnt_runtime_uppe_91169605024d=>full( t90 ).
        ENDIF.
        DATA(t121) = t16.
        t89 = xsdbool( t90 = t121 ).
        IF t89 = abap_true.
          DATA(t122) = abap_true.
          t80 = t122.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t123) = t80.
      t79 = t123.
      t20 = t79.
    ENDIF.
    IF t20 = abap_true.
      DATA(t124) = abap_true.
      result = t124.
      RETURN.
    ENDIF.
    DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t126) = t1.
    t125 = t126->get_implementing( ).
    DATA t127 TYPE REF TO zcl_lnt_iimplementing.
    CLEAR t127.
    DATA t128 TYPE REF TO object.
    CLEAR t128.
    DATA(t129) = VALUE i( ).
    DO.
      t125->load( ).
      IF t129 >= lines( t125->items ).
        EXIT.
      ENDIF.
      CLEAR t128.
      READ TABLE t125->items INDEX t129 + 1 INTO t128.
      t129 = t129 + 1.
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t130.
      CLEAR t127.
      IF t128 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t130 ?= t128.
        DATA t131 TYPE REF TO object.
        t131 = t130->as_ref( ).
        t127 ?= t131.
      ELSE.
        t127 ?= t128.
      ENDIF.
      DATA t132 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t132.
      DATA t133 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t133.
      DATA t134 TYPE REF TO zcl_lnt_current_scope.
      DATA t135 TYPE REF TO zcl_lnt_current_scope.
      DATA(t136) = t3.
      t135 = t136->scope.
      t134 = t135.
      DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t137.
      DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t138.
      DATA(t139) = abap_true.
      IF t139 = abap_true.
        DATA t140 TYPE string.
        DATA(t141) = t127.
        t140 = t141->name.
        DATA(t142) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t142->has = abap_true.
        t142->value = t140.
        t138 = t142.
      ELSE.
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t143.
        t138 = t143.
      ENDIF.
      t137 = t138.
      DATA t144 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t144.
      DATA(t145) = VALUE abap_bool( ).
      DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t147) = t137.
      t146 = t147.
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t149.
      t148 = t149.
      DATA(t150) = VALUE abap_bool( ).
      DATA(t151) = t146.
      IF t151 IS INITIAL.
        t150 = abap_true.
      ELSEIF t151->has = abap_false.
        t150 = abap_true.
      ENDIF.
      t145 = t150.
      IF t145 = abap_true.
        DATA t152 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t152.
        t144 = t152.
      ELSE.
        DATA t153 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t153.
        DATA t154 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t154.
        DATA t155 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t155.
        DATA t156 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t157 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t158) = t134.
        t157 = t158->current.
        t156 = t157.
        DATA t159 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t159.
        DATA(t160) = VALUE abap_bool( ).
        DATA(t161) = t156.
        IF t161 IS INITIAL.
          t160 = abap_true.
        ENDIF.
        IF t160 = abap_true.
          DATA t162 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t162.
          t159 = t162.
        ELSE.
          DATA t163 TYPE REF TO zif_lnt_interface_definition.
          DATA t164 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t165) = t156.
          t164 = t165.
          DATA t166 TYPE string.
          DATA(t167) = t137.
          t166 = t167->value.
          t163 = t164->find_interface_definition( i_name = t166 ).
          t159 = t163.
        ENDIF.
        t155 = t159.
        t154 = t155.
        DATA t168 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t168.
        DATA t169 TYPE abap_bool.
        DATA(t170) = t154.
        t169 = xsdbool( t170 IS BOUND ).
        IF t169 = abap_true.
          DATA t171 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t171.
          DATA(t172) = abap_true.
          IF t172 = abap_true.
            DATA t173 TYPE REF TO zif_lnt_interface_definition.
            DATA(t174) = t154.
            t173 = t174.
            t171 = t173.
          ELSE.
            DATA t175 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t175.
            t171 = t175.
          ENDIF.
          t168 = t171.
        ELSE.
          DATA t176 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t176.
          DATA t177 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t177.
          DATA t178 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t178.
          DATA t179 TYPE REF TO zif_lnt_object.
          CLEAR t179.
          DATA t180 TYPE REF TO zif_lnt_registry.
          DATA(t181) = t134.
          t180 = t181->reg.
          DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t182.
          DATA(t183) = abap_true.
          IF t183 = abap_true.
            DATA(t184) = |INTF|.
            DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t185->has = abap_true.
            t185->value = t184.
            t182 = t185.
          ELSE.
            DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t186.
            t182 = t186.
          ENDIF.
          DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t187.
          DATA(t188) = abap_true.
          IF t188 = abap_true.
            DATA t189 TYPE string.
            DATA(t190) = t137.
            t189 = t190->value.
            DATA(t191) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t191->has = abap_true.
            t191->value = t189.
            t187 = t191.
          ELSE.
            DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t192.
            t187 = t192.
          ENDIF.
          t179 = t180->get_object( i_type_9913 = t182 i_name = t187 ).
          DATA t193 TYPE REF TO object.
          t193 = t179.
          t178 ?= t193.
          t177 = t178.
          DATA t194 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t194.
          DATA t195 TYPE abap_bool.
          DATA(t196) = t177.
          t195 = xsdbool( t196 IS BOUND ).
          IF t195 = abap_true.
            DATA t197 TYPE REF TO zif_lnt_interface_definition.
            DATA t198 TYPE REF TO zcl_lnt_ob_interface.
            DATA t199 TYPE REF TO zcl_lnt_ob_interface.
            DATA(t200) = t177.
            t199 = t200.
            t198 = t199.
            DATA t201 TYPE REF TO zif_lnt_interface_definition.
            DATA(t202) = t198.
            t201 = t202->def.
            t197 = t201.
            t194 = t197.
          ELSE.
            DATA t203 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t203.
            t194 = t203.
          ENDIF.
          t176 = t194.
          t168 = t176.
        ENDIF.
        t153 = t168.
        t144 = t153.
      ENDIF.
      t133 = t144.
      t132 = t133.
      DATA(t204) = VALUE abap_bool( ).
      DATA t205 TYPE REF TO zif_lnt_interface_definition.
      DATA(t206) = t132.
      t205 = t206.
      DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t208.
      t207 = t208.
      DATA(t209) = VALUE abap_bool( ).
      DATA(t210) = t205.
      IF t210 IS INITIAL.
        t209 = abap_true.
      ENDIF.
      t204 = t209.
      IF t204 = abap_true.
        DATA(t211) = abap_true.
        result = t211.
        RETURN.
      ELSE.
        DATA t212 TYPE abap_bool.
        DATA t213 TYPE REF TO zif_lnt_interface_definition.
        DATA(t214) = t132.
        t213 = t214.
        DATA(t215) = t2.
        DATA(t216) = t3.
        DATA(t217) = t4.
        t212 = me->exists_in_interface( i_idef = t213 i_component = t215 i_input_967e = t216 i_visited = t217 ).
        IF t212 = abap_true.
          DATA(t218) = abap_true.
          result = t218.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t219) = abap_false.
    result = t219.

  ENDMETHOD.

  METHOD parse_attribute.
    DATA(t1) = i_node.
    DATA(t2) = i_visibility_5c1f.
    DATA(t3) = i_input_967e.
    DATA t4 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t5.
    t4 = t5.
    DATA t6 TYPE REF TO zif_lnt_statement.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_statement.
    CLEAR t7.
    DATA(t8) = t1.
    t7 = t8->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t6 = t7.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t6.
    t9 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_st_data ).
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t11.
      DATA(t12) = NEW zcl_lnt_sy_statem_data( ).
      DATA(t13) = t1.
      DATA(t14) = t3.
      t11 = t12->run_syntax( i_node = t13 i_input_967e = t14 ).
      t4 = t11.
    ELSE.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = t6.
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_class_data ).
      IF t15 = abap_true.
        DATA t17 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t17.
        DATA(t18) = NEW zcl_lnt_sy_statem_class_data( ).
        DATA(t19) = t1.
        DATA(t20) = t3.
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
          DATA(t25) = VALUE string( ).
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
        CLEAR t21->source_value.
        IF t22 IS BOUND.
          DATA t31 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t31.
          DATA t32 TYPE REF TO object.
          CLEAR t32.
          CLEAR t31.
          t32 = t22.
          TRY.
              t21->source_value ?= t32.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t21->source_value IS NOT BOUND.
            TRY.
                t31 ?= t22.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t31 IS BOUND.
              t21->source_value = t31->source( ).
            ENDIF.
            IF t21->source_value IS NOT BOUND.
              CREATE OBJECT t21->source_value.
              t21->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t21->source_value->oval = t22.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t21.
      ENDIF.
    ENDIF.
    DATA(t33) = VALUE abap_bool( ).
    DATA t34 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t34.
    DATA(t35) = t4.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    t36 = t37.
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = t34.
    IF t39 IS INITIAL.
      t38 = abap_true.
    ENDIF.
    t33 = t38.
    IF t33 = abap_true.
      DATA t40 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t40.
      DATA t41 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t41.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t42.
      DATA(t43) = abap_true.
      IF t43 = abap_true.
        DATA(t44) = VALUE string( ).
        DATA(t45) = |ClassAttribute, unexpected node, |.
        DATA(t46) = CONV string( me->filename ).
        DATA(t47) = strlen( t45 ).
        t44 = |{ t45 }{ t46 }|.
        DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t48->has = abap_true.
        t48->value = t44.
        t42 = t48.
      ELSE.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        t42 = t49.
      ENDIF.
      t41 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t42 ).
      t40 = NEW #( ).
      t40->payload = t41.
      CLEAR t40->source_value.
      IF t41 IS BOUND.
        DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t50.
        DATA t51 TYPE REF TO object.
        CLEAR t51.
        CLEAR t50.
        t51 = t41.
        TRY.
            t40->source_value ?= t51.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t40->source_value IS NOT BOUND.
          TRY.
              t50 ?= t41.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t50 IS BOUND.
            t40->source_value = t50->source( ).
          ENDIF.
          IF t40->source_value IS NOT BOUND.
            CREATE OBJECT t40->source_value.
            t40->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t40->source_value->oval = t41.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t40.
    ENDIF.
    DATA t52 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t52.
    DATA t53 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t53.
    DATA(t54) = t3.
    t53 = t54->scope.
    t52 = t53.
    DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t55.
    DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t56.
    DATA(t57) = abap_true.
    IF t57 = abap_true.
      DATA t58 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t58.
      DATA(t59) = t4.
      t58 = t59.
      t56 = t58.
    ELSE.
      DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t60.
      t56 = t60.
    ENDIF.
    t55 = t56.
    DATA(t61) = VALUE abap_bool( ).
    DATA t62 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t62.
    DATA(t63) = t55.
    t62 = t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    t64 = t65.
    DATA(t66) = VALUE abap_bool( ).
    DATA(t67) = t62.
    IF t67 IS INITIAL.
      t66 = abap_true.
    ENDIF.
    t61 = t66.
    IF t61 = abap_true.
    ELSE.
      DATA(t68) = t52.
      DATA(t69) = VALUE string( ).
      DATA t70 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t70.
      DATA t71 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t71.
      DATA(t72) = t55.
      t71 = t72.
      t70 = t71.
      DATA(t73) = VALUE string( ).
      DATA(t74) = VALUE string( ).
      DATA(t75) = VALUE string( ).
      DATA t76 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t76.
      DATA t77 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t77.
      DATA(t78) = t70.
      t77 = t78->token.
      t76 = t77.
      DATA(t79) = VALUE string( ).
      DATA(t80) = t76.
      t79 = t80->str.
      t75 = t79.
      t74 = t75.
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = VALUE string( ).
      DATA(t83) = t74.
      DATA(t84) = 0.
      DATA(t85) = 1.
      DATA(t86) = strlen( t83 ).
      IF t84 < 0.
        t84 = t84 + t86.
        IF t84 < 0.
          t84 = 0.
        ENDIF.
      ENDIF.
      IF t84 > t86 OR t85 <= 0.
        CLEAR t82.
      ELSE.
        IF t85 > t86 - t84.
          t85 = t86 - t84.
        ENDIF.
        t82 = t83+t84(t85).
      ENDIF.
      DATA(t87) = |!|.
      t81 = xsdbool( t82 = t87 ).
      IF t81 = abap_true.
        DATA(t88) = VALUE string( ).
        DATA(t89) = VALUE string( ).
        DATA(t90) = t74.
        t89 = t90.
        DATA(t91) = VALUE string( ).
        DATA(t92) = t89.
        DATA(t93) = 1.
        DATA(t94) = VALUE i( ).
        DATA(t95) = t89.
        DATA(t96) = strlen( t95 ).
        t94 = t96.
        DATA(t97) = strlen( t92 ).
        IF t93 < 0.
          t93 = t93 + t97.
          IF t93 < 0.
            t93 = 0.
          ENDIF.
        ENDIF.
        IF t93 > t97 OR t94 <= 0.
          CLEAR t91.
        ELSE.
          IF t94 > t97 - t93.
            t94 = t97 - t93.
          ENDIF.
          t91 = t92+t93(t94).
        ENDIF.
        t88 = t91.
        t74 = t88.
      ENDIF.
      DATA(t98) = t74.
      t73 = t98.
      t69 = t73.
      DATA t99 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t99.
      DATA(t100) = t55.
      t99 = t100.
      t68->add_named_identifier( i_name = t69 i_identifier = t99 ).
    ENDIF.
    DATA t101 TYPE REF TO zcl_lnt_class_attribute.
    CLEAR t101.
    DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t102.
    DATA(t103) = t4.
    t102 = t103.
    DATA(t104) = VALUE f( ).
    DATA(t105) = t2.
    t104 = t105.
    DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t106.
    DATA t107 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t107.
    DATA t108 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t108.
    DATA(t109) = t4.
    t108 = t109.
    t107 = t108.
    DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t110.
    DATA(t111) = t107.
    t110 = t111->meta.
    t106 = t110.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA(t113) = abap_true.
    IF t113 = abap_true.
      DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t114.
      DATA t115 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t115.
      DATA t116 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t116.
      DATA(t117) = t4.
      t116 = t117.
      t115 = t116.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      DATA(t119) = t115.
      t118 = t119->value.
      t114 = t118.
      t112 = t114.
    ELSE.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t120.
      t112 = t120.
    ENDIF.
    t101 = NEW zcl_lnt_class_attribute( i_id = t102 i_visibility_5c1f = t104 i_meta = t106 i_value = t112 ).
    result = t101.

  ENDMETHOD.

  METHOD get_types.
    DATA(t1) = CAST zcl_lnt_type_definitions( me->gt_ty_in_sr_ab_ty_cl_at_ts_att( ) ).
    result = t1.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1052_c7af40439c34.
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
