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
    me->filename = t2->filename.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `filename`.
    me->parse( i_node = t1 i_input_967e = t2 ).
    DATA(t15) = me->instance.
    me->all = me->static_9977->concat( p0 = t15 ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `all`.
    me->by_name = CAST zlnt_runtime_map__89ba5e9f6101( me->build_by_name( ) ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `byName`.
    DATA(t18) = me->tlist.
    me->types = NEW zcl_lnt_type_definitions( i_list = t18 ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `types`.
  ENDMETHOD.

  METHOD gt_ty_in_sr_ab_ty_cl_at_ts_att.
    result = me->types.

  ENDMETHOD.

  METHOD get_static.
    result = me->static_9977.

  ENDMETHOD.

  METHOD get_aliases.
    result = me->aliases_62bb.

  ENDMETHOD.

  METHOD get_all.
    result = me->all.

  ENDMETHOD.

  METHOD get_statics_by_visibility.
    DATA(t1) = i_visibility_5c1f.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA(t4) = me->static_9977.
    DATA t5 TYPE REF TO zcl_lnt_class_attribute.
    DATA t6 TYPE REF TO object.
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
      IF xsdbool( t5->visibility = t1 ) = abap_true.
        t2->load( ).
        APPEND t5 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_instance.
    result = me->instance.

  ENDMETHOD.

  METHOD get_instances_by_visibility.
    DATA(t1) = i_visibility_5c1f.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA(t4) = me->instance.
    DATA t5 TYPE REF TO zcl_lnt_class_attribute.
    DATA t6 TYPE REF TO object.
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
      IF xsdbool( t5->visibility = t1 ) = abap_true.
        t2->load( ).
        APPEND t5 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_constants.
    result = me->constants.

  ENDMETHOD.

  METHOD get_constants_by_visibility.
    DATA(t1) = i_visibility_5c1f.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA(t4) = me->constants.
    DATA t5 TYPE REF TO zcl_lnt_class_constant.
    DATA t6 TYPE REF TO object.
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
      IF xsdbool( t5->visibility = t1 ) = abap_true.
        t2->load( ).
        APPEND t5 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_by_name.
    DATA(t1) = i_name.
    DATA(t3) = me->by_name.
    DATA t4 TYPE string.
    DATA(t6) = strlen( t1 ).
    t4 = t1.
    IF t4 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t4 TO UPPER CASE.
    ELSE.
      t4 = zlnt_runtime_uppe_91169605024d=>full( t4 ).
    ENDIF.
    result = t3->get( p0 = t4 ).

  ENDMETHOD.

  METHOD build_by_name.
    DATA t1 TYPE REF TO zlnt_runtime_map__89ba5e9f6101.
    t1 = NEW zlnt_runtime_map__89ba5e9f6101( ).
    DATA(t6) = me->static_9977.
    DATA t7 TYPE REF TO zcl_lnt_class_attribute.
    DATA t8 TYPE REF TO object.
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
      DATA(t14) = VALUE string( ).
      DATA(t15) = VALUE string( ).
      DATA t16 TYPE REF TO zcl_lnt_fi_identifier.
      t16 = t7.
      DATA t19 TYPE string.
      t19 = t16->token->str.
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
      ELSE.
        IF t30 > t31 - t29.
          t30 = t31 - t29.
        ENDIF.
        t27 = t28+t29(t30).
      ENDIF.
      IF xsdbool( t27 = |!| ) = abap_true.
        DATA t34 TYPE string.
        t34 = t19.
        DATA(t36) = VALUE string( ).
        DATA(t38) = 1.
        DATA t39 TYPE i.
        t39 = strlen( t34 ).
        DATA(t42) = strlen( t34 ).
        IF t38 < 0.
          t38 = t38 + t42.
          IF t38 < 0.
            t38 = 0.
          ENDIF.
        ENDIF.
        IF t38 > t42 OR t39 <= 0.
        ELSE.
          IF t39 > t42 - t38.
            t39 = t42 - t38.
          ENDIF.
          t36 = t34+t38(t39).
        ENDIF.
        t19 = t36.
      ENDIF.
      t15 = t19.
      DATA(t44) = strlen( t15 ).
      t14 = t15.
      IF t14 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t14 TO UPPER CASE.
      ELSE.
        t14 = zlnt_runtime_uppe_91169605024d=>full( t14 ).
      ENDIF.
      t12 = t1->set( p0 = t14 p1 = t7 ).
    ENDDO.
    DATA(t46) = me->instance.
    DATA t47 TYPE REF TO zcl_lnt_class_attribute.
    DATA t48 TYPE REF TO object.
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
      t55 = t47.
      DATA t58 TYPE string.
      t58 = t55->token->str.
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
      ELSE.
        IF t69 > t70 - t68.
          t69 = t70 - t68.
        ENDIF.
        t66 = t67+t68(t69).
      ENDIF.
      IF xsdbool( t66 = |!| ) = abap_true.
        DATA t73 TYPE string.
        t73 = t58.
        DATA(t75) = VALUE string( ).
        DATA(t77) = 1.
        DATA t78 TYPE i.
        t78 = strlen( t73 ).
        DATA(t81) = strlen( t73 ).
        IF t77 < 0.
          t77 = t77 + t81.
          IF t77 < 0.
            t77 = 0.
          ENDIF.
        ENDIF.
        IF t77 > t81 OR t78 <= 0.
        ELSE.
          IF t78 > t81 - t77.
            t78 = t81 - t77.
          ENDIF.
          t75 = t73+t77(t78).
        ENDIF.
        t58 = t75.
      ENDIF.
      t54 = t58.
      DATA(t83) = strlen( t54 ).
      t53 = t54.
      IF t53 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t53 TO UPPER CASE.
      ELSE.
        t53 = zlnt_runtime_uppe_91169605024d=>full( t53 ).
      ENDIF.
      t52 = t53.
      DATA t86 TYPE REF TO zif_lnt_union_a346537f.
      t86 = t1->get( p0 = t52 ).
      DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t89.
      IF xsdbool( t86 IS INITIAL ) = abap_true.
        DATA t93 TYPE REF TO zlnt_runtime_map__89ba5e9f6101.
        t93 = t1->set( p0 = t52 p1 = t47 ).
      ENDIF.
    ENDDO.
    DATA(t97) = me->constants.
    DATA t98 TYPE REF TO zcl_lnt_class_constant.
    DATA t99 TYPE REF TO object.
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
      t106 = t98.
      DATA t109 TYPE string.
      t109 = t106->token->str.
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
      ELSE.
        IF t120 > t121 - t119.
          t120 = t121 - t119.
        ENDIF.
        t117 = t118+t119(t120).
      ENDIF.
      IF xsdbool( t117 = |!| ) = abap_true.
        DATA t124 TYPE string.
        t124 = t109.
        DATA(t126) = VALUE string( ).
        DATA(t128) = 1.
        DATA t129 TYPE i.
        t129 = strlen( t124 ).
        DATA(t132) = strlen( t124 ).
        IF t128 < 0.
          t128 = t128 + t132.
          IF t128 < 0.
            t128 = 0.
          ENDIF.
        ENDIF.
        IF t128 > t132 OR t129 <= 0.
        ELSE.
          IF t129 > t132 - t128.
            t129 = t132 - t128.
          ENDIF.
          t126 = t124+t128(t129).
        ENDIF.
        t109 = t126.
      ENDIF.
      t105 = t109.
      DATA(t134) = strlen( t105 ).
      t104 = t105.
      IF t104 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t104 TO UPPER CASE.
      ELSE.
        t104 = zlnt_runtime_uppe_91169605024d=>full( t104 ).
      ENDIF.
      t103 = t104.
      DATA t137 TYPE REF TO zif_lnt_union_a346537f.
      t137 = t1->get( p0 = t103 ).
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      IF xsdbool( t137 IS INITIAL ) = abap_true.
        DATA t144 TYPE REF TO zlnt_runtime_map__89ba5e9f6101.
        t144 = t1->set( p0 = t103 p1 = t98 ).
      ENDIF.
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_structure_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e.
    t3 = t1->find_direct_structure( i_type_9913 = t6 ).
    IF xsdbool( t3 IS BOUND ) = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t10 TYPE REF TO zcl_lnt_structure_node.
      t10 = t3.
      DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d540_b6420013e76a.
      t9 = t10->find_all_statements( i_type_9913 = t12 ).
      DATA t13 TYPE REF TO zcl_lnt_statement_node.
      DATA t14 TYPE REF TO object.
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
        DATA t20 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t20.
        DATA t22 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t22.
        DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2.
        t22 = t13->find_first_expression( i_type_9913 = t25 ).
        DATA t26 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t26.
        IF xsdbool( t22 IS INITIAL ) = abap_true.
          CLEAR t26.
        ELSE.
          t26 = t22->get_first_token( ).
        ENDIF.
        t20 = t26.
        DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t33.
        IF xsdbool( t20 IS INITIAL ) = abap_true.
          CLEAR t33.
        ELSE.
          DATA(t41) = VALUE string( ).
          t41 = t20->str.
          DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t43->has = abap_true.
          t43->value = t41.
          t33 = t43.
        ENDIF.
        t18 = t33.
        DATA(t44) = VALUE abap_bool( ).
        IF t18 IS BOUND.
          IF t18->has = abap_true.
            t44 = xsdbool( strlen( t18->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t44 = abap_true.
          DATA(t46) = me->declared_interfaces.
          DATA(t47) = VALUE string( ).
          DATA(t48) = VALUE string( ).
          t48 = t18->value.
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
      DATA t52 TYPE REF TO zcl_lnt_structure_node.
      t52 = t3.
      DATA(t54) = zlnt_runtime_desc_78196487750d=>zlnt_member_d716_74fc3af0c6d3.
      me->parse_section( i_node = t52->find_direct_structure( i_type_9913 = t54 ) i_visibility_5c1f = 3 i_input_967e = t2 ).
      DATA t58 TYPE REF TO zcl_lnt_structure_node.
      t58 = t3.
      DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d717_78ede11c0134.
      me->parse_section( i_node = t58->find_direct_structure( i_type_9913 = t60 ) i_visibility_5c1f = 2 i_input_967e = t2 ).
      DATA t64 TYPE REF TO zcl_lnt_structure_node.
      t64 = t3.
      DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d718_3ac015f16676.
      me->parse_section( i_node = t64->find_direct_structure( i_type_9913 = t66 ) i_visibility_5c1f = 1 i_input_967e = t2 ).
      RETURN.
    ENDIF.
    DATA t69 TYPE REF TO zcl_lnt_structure_node.
    DATA(t72) = zlnt_runtime_desc_78196487750d=>zlnt_member_d700_0943ee7a14b4.
    t69 = t1->find_direct_structure( i_type_9913 = t72 ).
    IF xsdbool( t69 IS BOUND ) = abap_true.
      DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t76 TYPE REF TO zcl_lnt_structure_node.
      t76 = t69.
      DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d540_b6420013e76a.
      t75 = t76->find_all_statements( i_type_9913 = t78 ).
      DATA t79 TYPE REF TO zcl_lnt_statement_node.
      DATA t80 TYPE REF TO object.
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
        DATA t86 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t86.
        DATA t88 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t88.
        DATA(t91) = zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2.
        t88 = t79->find_first_expression( i_type_9913 = t91 ).
        DATA t92 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t92.
        IF xsdbool( t88 IS INITIAL ) = abap_true.
          CLEAR t92.
        ELSE.
          t92 = t88->get_first_token( ).
        ENDIF.
        t86 = t92.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t99.
        IF xsdbool( t86 IS INITIAL ) = abap_true.
          CLEAR t99.
        ELSE.
          DATA(t107) = VALUE string( ).
          t107 = t86->str.
          DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t109->has = abap_true.
          t109->value = t107.
          t99 = t109.
        ENDIF.
        t84 = t99.
        DATA(t110) = VALUE abap_bool( ).
        IF t84 IS BOUND.
          IF t84->has = abap_true.
            t110 = xsdbool( strlen( t84->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t110 = abap_true.
          DATA(t112) = me->declared_interfaces.
          DATA(t113) = VALUE string( ).
          DATA(t114) = VALUE string( ).
          t114 = t84->value.
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
      DATA t118 TYPE REF TO zcl_lnt_structure_node.
      t118 = t69.
      DATA(t120) = zlnt_runtime_desc_78196487750d=>zlnt_member_d739_c2cc9ae0214e.
      me->parse_section( i_node = t118->find_direct_structure( i_type_9913 = t120 ) i_visibility_5c1f = 3 i_input_967e = t2 ).
      RETURN.
    ENDIF.
    DATA t123 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    DATA t124 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    DATA(t127) = |MethodDefinition, expected ClassDefinition or InterfaceDefin|.
    t127 = t127 && |ition|.
    DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t128->has = abap_true.
    t128->value = t127.
    t124 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t128 ).
    t123 = NEW #( ).
    t123->payload = t124.
    CLEAR t123->source_value.
    DATA t130 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t131 TYPE REF TO object.
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
    RAISE EXCEPTION t123.
  ENDMETHOD.

  METHOD parse_section.
    DATA(t1) = i_node.
    DATA(t2) = i_visibility_5c1f.
    DATA(t3) = i_input_967e.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zcl_lnt_abstract_node.
    t13 = t1.
    t12 = t13->children.
    t11 ?= t12.
    DATA t18 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t19 TYPE REF TO object.
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
      t25 = t18->get_db65( ).
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      t27 = t25.
      t24 ?= t27.
      t23 = t24.
      IF xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_structure_node ) = abap_true.
        IF xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_sr_data ) = abap_true.
          DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t32.
          DATA t34 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t34.
          DATA t36 TYPE REF TO object.
          CLEAR t36.
          t36 = t18.
          t34 ?= t36.
          t32 = zcl_lnt_sy_struct_data=>run_syntax( i_node = t34 i_input_967e = t3 ).
          DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t41.
          CLEAR t41.
          IF xsdbool( xsdbool( t32 IS INITIAL ) = abap_false ) = abap_true.
            DATA t46 TYPE REF TO zcl_lnt_class_attribute.
            CLEAR t46.
            DATA t48 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t48.
            t48 = t32.
            DATA(t50) = VALUE f( ).
            t50 = t2.
            DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t52.
            t52 = t32->meta.
            DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t58.
            t58 = t32->value.
            t46 = NEW zcl_lnt_class_attribute( i_id = t48 i_visibility_5c1f = t50 i_meta = t52 i_value = t58 ).
            DATA(t67) = me->instance.
            t67->load( ).
            APPEND t46 TO t67->items.
            t67->save( ).
            DATA t70 TYPE REF TO zcl_lnt_current_scope.
            CLEAR t70.
            t70 = t3->scope.
            DATA t72 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t72.
            t72 = t46.
            DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t77.
            CLEAR t77.
            IF xsdbool( t72 IS INITIAL ) = abap_true.
            ELSE.
              DATA t83 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t83.
              t83 = t72.
              DATA(t87) = VALUE string( ).
              t87 = t83->token->str.
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
              ELSE.
                IF t98 > t99 - t97.
                  t98 = t99 - t97.
                ENDIF.
                t95 = t96+t97(t98).
              ENDIF.
              IF xsdbool( t95 = |!| ) = abap_true.
                DATA(t102) = VALUE string( ).
                t102 = t87.
                DATA(t104) = VALUE string( ).
                DATA(t106) = 1.
                DATA(t107) = VALUE i( ).
                t107 = strlen( t102 ).
                DATA(t110) = strlen( t102 ).
                IF t106 < 0.
                  t106 = t106 + t110.
                  IF t106 < 0.
                    t106 = 0.
                  ENDIF.
                ENDIF.
                IF t106 > t110 OR t107 <= 0.
                ELSE.
                  IF t107 > t110 - t106.
                    t107 = t110 - t106.
                  ENDIF.
                  t104 = t102+t106(t107).
                ENDIF.
                t87 = t104.
              ENDIF.
              t70->add_named_identifier( i_name = t87 i_identifier = t72 ).
            ENDIF.
          ENDIF.
        ELSE.
          IF xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_sr_class_data ) = abap_true.
            DATA t116 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t116.
            DATA(t118) = NEW zcl_lnt_sy_struct_class_data( ).
            DATA t119 TYPE REF TO zcl_lnt_structure_node.
            CLEAR t119.
            DATA t121 TYPE REF TO object.
            CLEAR t121.
            t121 = t18.
            t119 ?= t121.
            t116 = t118->run_syntax( i_node = t119 i_input_967e = t3 ).
            DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t126.
            CLEAR t126.
            IF xsdbool( xsdbool( t116 IS INITIAL ) = abap_false ) = abap_true.
              DATA t131 TYPE REF TO zcl_lnt_class_attribute.
              CLEAR t131.
              DATA t133 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t133.
              t133 = t116.
              DATA(t135) = VALUE f( ).
              t135 = t2.
              DATA t137 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t137.
              t137 = t116->meta.
              DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t143.
              t143 = t116->value.
              t131 = NEW zcl_lnt_class_attribute( i_id = t133 i_visibility_5c1f = t135 i_meta = t137 i_value = t143 ).
              DATA(t152) = me->static_9977.
              t152->load( ).
              APPEND t131 TO t152->items.
              t152->save( ).
              DATA t155 TYPE REF TO zcl_lnt_current_scope.
              CLEAR t155.
              t155 = t3->scope.
              DATA t157 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t157.
              t157 = t131.
              DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t162.
              CLEAR t162.
              IF xsdbool( t157 IS INITIAL ) = abap_true.
              ELSE.
                DATA t168 TYPE REF TO zcl_lnt_fi_identifier.
                CLEAR t168.
                t168 = t157.
                DATA(t172) = VALUE string( ).
                t172 = t168->token->str.
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
                ELSE.
                  IF t183 > t184 - t182.
                    t183 = t184 - t182.
                  ENDIF.
                  t180 = t181+t182(t183).
                ENDIF.
                IF xsdbool( t180 = |!| ) = abap_true.
                  DATA(t187) = VALUE string( ).
                  t187 = t172.
                  DATA(t189) = VALUE string( ).
                  DATA(t191) = 1.
                  DATA(t192) = VALUE i( ).
                  t192 = strlen( t187 ).
                  DATA(t195) = strlen( t187 ).
                  IF t191 < 0.
                    t191 = t191 + t195.
                    IF t191 < 0.
                      t191 = 0.
                    ENDIF.
                  ENDIF.
                  IF t191 > t195 OR t192 <= 0.
                  ELSE.
                    IF t192 > t195 - t191.
                      t192 = t195 - t191.
                    ENDIF.
                    t189 = t187+t191(t192).
                  ENDIF.
                  t172 = t189.
                ENDIF.
                t155->add_named_identifier( i_name = t172 i_identifier = t157 ).
              ENDIF.
            ENDIF.
          ELSE.
            IF xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_sr_constants ) = abap_true.
              DATA t201 TYPE REF TO zcl_lnt_shape_28fac025.
              CLEAR t201.
              DATA(t203) = NEW zcl_lnt_sy_constants( ).
              DATA t204 TYPE REF TO zcl_lnt_structure_node.
              CLEAR t204.
              DATA t206 TYPE REF TO object.
              CLEAR t206.
              t206 = t18.
              t204 ?= t206.
              t201 = t203->run_syntax( i_node = t204 i_input_967e = t3 ).
              DATA t208 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t208.
              t208 = t201->type_cba0.
              DATA t211 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
              CLEAR t211.
              t211 = t201->values.
              DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t217.
              CLEAR t217.
              IF xsdbool( xsdbool( t208 IS INITIAL ) = abap_false ) = abap_true.
                DATA t222 TYPE REF TO zcl_lnt_class_constant.
                CLEAR t222.
                DATA t224 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t224.
                t224 = t208.
                DATA(t226) = VALUE f( ).
                t226 = t2.
                DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t228.
                CLEAR t228.
                IF t211 IS BOUND.
                  DATA t230 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t230.
                  DATA t231 TYPE REF TO object.
                  CLEAR t231.
                  CLEAR t230.
                  t231 = t211.
                  TRY.
                      t228 ?= t231.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t228 IS NOT BOUND.
                    TRY.
                        t230 ?= t211.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t230 IS BOUND.
                      t228 = t230->source( ).
                    ENDIF.
                    IF t228 IS NOT BOUND.
                      CREATE OBJECT t228.
                      t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      t228->oval = t211.
                    ENDIF.
                  ENDIF.
                ENDIF.
                t222 = NEW zcl_lnt_class_constant( i_id = t224 i_visibility_5c1f = t226 i_value = t228 ).
                DATA(t232) = me->constants.
                t232->load( ).
                APPEND t222 TO t232->items.
                t232->save( ).
                DATA t235 TYPE REF TO zcl_lnt_current_scope.
                CLEAR t235.
                t235 = t3->scope.
                DATA t237 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t237.
                t237 = t222.
                DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t242.
                CLEAR t242.
                IF xsdbool( t237 IS INITIAL ) = abap_true.
                ELSE.
                  DATA t248 TYPE REF TO zcl_lnt_fi_identifier.
                  CLEAR t248.
                  t248 = t237.
                  DATA(t252) = VALUE string( ).
                  t252 = t248->token->str.
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
                  ELSE.
                    IF t263 > t264 - t262.
                      t263 = t264 - t262.
                    ENDIF.
                    t260 = t261+t262(t263).
                  ENDIF.
                  IF xsdbool( t260 = |!| ) = abap_true.
                    DATA(t267) = VALUE string( ).
                    t267 = t252.
                    DATA(t269) = VALUE string( ).
                    DATA(t271) = 1.
                    DATA(t272) = VALUE i( ).
                    t272 = strlen( t267 ).
                    DATA(t275) = strlen( t267 ).
                    IF t271 < 0.
                      t271 = t271 + t275.
                      IF t271 < 0.
                        t271 = 0.
                      ENDIF.
                    ENDIF.
                    IF t271 > t275 OR t272 <= 0.
                    ELSE.
                      IF t272 > t275 - t271.
                        t272 = t275 - t271.
                      ENDIF.
                      t269 = t267+t271(t272).
                    ENDIF.
                    t252 = t269.
                  ENDIF.
                  t235->add_named_identifier( i_name = t252 i_identifier = t237 ).
                ENDIF.
              ENDIF.
            ELSE.
              IF xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_sr_type_enum ) = abap_true.
                DATA t281 TYPE REF TO zcl_lnt_shape_33d96643.
                CLEAR t281.
                DATA(t283) = NEW zcl_lnt_sy_type_enum( ).
                DATA t284 TYPE REF TO zcl_lnt_structure_node.
                CLEAR t284.
                DATA t286 TYPE REF TO object.
                CLEAR t286.
                t286 = t18.
                t284 ?= t286.
                t281 = t283->run_syntax( i_node = t284 i_input_967e = t3 ).
                DATA t288 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t288.
                t288 = t281->values.
                DATA t291 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t291.
                t291 = t281->types.
                DATA t295 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t295.
                DATA t296 TYPE REF TO object.
                CLEAR t296.
                DATA(t297) = VALUE i( ).
                DO.
                  t288->load( ).
                  IF t297 >= lines( t288->items ).
                    EXIT.
                  ENDIF.
                  CLEAR t296.
                  READ TABLE t288->items INDEX t297 + 1 INTO t296.
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
                  DATA(t303) = VALUE f( ).
                  t303 = t2.
                  DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t305.
                  CLEAR t305.
                  CREATE OBJECT t305.
                  t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                  t305->sval = |novalueClassAttributeEnum|.
                  t300 = NEW zcl_lnt_class_constant( i_id = t295 i_visibility_5c1f = t303 i_value = t305 ).
                  DATA(t307) = me->constants.
                  t307->load( ).
                  APPEND t300 TO t307->items.
                  t307->save( ).
                  DATA t310 TYPE REF TO zcl_lnt_current_scope.
                  CLEAR t310.
                  t310 = t3->scope.
                  DATA t312 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t312.
                  t312 = t300.
                  DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t317.
                  CLEAR t317.
                  IF xsdbool( t312 IS INITIAL ) = abap_true.
                  ELSE.
                    DATA t323 TYPE REF TO zcl_lnt_fi_identifier.
                    CLEAR t323.
                    t323 = t312.
                    DATA(t327) = VALUE string( ).
                    t327 = t323->token->str.
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
                    ELSE.
                      IF t338 > t339 - t337.
                        t338 = t339 - t337.
                      ENDIF.
                      t335 = t336+t337(t338).
                    ENDIF.
                    IF xsdbool( t335 = |!| ) = abap_true.
                      DATA(t342) = VALUE string( ).
                      t342 = t327.
                      DATA(t344) = VALUE string( ).
                      DATA(t346) = 1.
                      DATA(t347) = VALUE i( ).
                      t347 = strlen( t342 ).
                      DATA(t350) = strlen( t342 ).
                      IF t346 < 0.
                        t346 = t346 + t350.
                        IF t346 < 0.
                          t346 = 0.
                        ENDIF.
                      ENDIF.
                      IF t346 > t350 OR t347 <= 0.
                      ELSE.
                        IF t347 > t350 - t346.
                          t347 = t350 - t346.
                        ENDIF.
                        t344 = t342+t346(t347).
                      ENDIF.
                      t327 = t344.
                    ENDIF.
                    t310->add_named_identifier( i_name = t327 i_identifier = t312 ).
                  ENDIF.
                ENDDO.
                DATA t355 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t355.
                DATA t356 TYPE REF TO object.
                CLEAR t356.
                DATA(t357) = VALUE i( ).
                DO.
                  t291->load( ).
                  IF t357 >= lines( t291->items ).
                    EXIT.
                  ENDIF.
                  CLEAR t356.
                  READ TABLE t291->items INDEX t357 + 1 INTO t356.
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
                  t362 = t355.
                  DATA(t365) = VALUE f( ).
                  t365 = t2.
                  t361 = NEW zcl_lnt_type_definitions_entry( i_type_9913 = t362 i_visibility_5c1f = t365 ).
                  CREATE OBJECT t361->zlnt_view_ownkeys_b0e8086400eb.
                  t361->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t367.
                  t361->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t367 ).
                  DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t368.
                  IF t361->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t361->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `visibility` p1 = t368 ).
                  ENDIF.
                  CREATE OBJECT t361->zlnt_json_ownkeys_70e5fd461788.
                  t361->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t370.
                  t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t370 ).
                  DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t372.
                  IF t361->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = |visibility| p1 = t372 ).
                  ENDIF.
                  t360->load( ).
                  APPEND t361 TO t360->items.
                  t360->save( ).
                ENDDO.
              ELSE.
                IF xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_sr_type_mesh ) = abap_true.
                  DATA t375 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t375.
                  DATA(t377) = NEW zcl_lnt_sy_type_mesh( ).
                  DATA t378 TYPE REF TO zcl_lnt_structure_node.
                  CLEAR t378.
                  DATA t380 TYPE REF TO object.
                  CLEAR t380.
                  t380 = t18.
                  t378 ?= t380.
                  t375 = t377->run_syntax( i_node = t378 i_input_967e = t3 ).
                  IF xsdbool( t375 IS BOUND ) = abap_true.
                    DATA t385 TYPE REF TO zcl_lnt_current_scope.
                    CLEAR t385.
                    t385 = t3->scope.
                    DATA t387 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t387.
                    t387 = t375.
                    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t396.
                    CLEAR t396.
                    IF xsdbool( t387 IS INITIAL ) = abap_true.
                    ELSE.
                      DATA t402 TYPE REF TO zcl_lnt_fi_identifier.
                      CLEAR t402.
                      t402 = t387.
                      DATA(t406) = VALUE string( ).
                      t406 = t402->token->str.
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
                      ELSE.
                        IF t417 > t418 - t416.
                          t417 = t418 - t416.
                        ENDIF.
                        t414 = t415+t416(t417).
                      ENDIF.
                      IF xsdbool( t414 = |!| ) = abap_true.
                        DATA(t421) = VALUE string( ).
                        t421 = t406.
                        DATA(t423) = VALUE string( ).
                        DATA(t425) = 1.
                        DATA(t426) = VALUE i( ).
                        t426 = strlen( t421 ).
                        DATA(t429) = strlen( t421 ).
                        IF t425 < 0.
                          t425 = t425 + t429.
                          IF t425 < 0.
                            t425 = 0.
                          ENDIF.
                        ENDIF.
                        IF t425 > t429 OR t426 <= 0.
                        ELSE.
                          IF t426 > t429 - t425.
                            t426 = t429 - t425.
                          ENDIF.
                          t423 = t421+t425(t426).
                        ENDIF.
                        t406 = t423.
                      ENDIF.
                      t385->add_type_named( i_name = t406 i_type_9913 = t387 ).
                    ENDIF.
                    DATA(t436) = me->tlist.
                    DATA t437 TYPE REF TO zcl_lnt_type_definitions_entry.
                    CLEAR t437.
                    DATA t438 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t438.
                    t438 = t375.
                    DATA(t442) = VALUE f( ).
                    t442 = t2.
                    t437 = NEW zcl_lnt_type_definitions_entry( i_type_9913 = t438 i_visibility_5c1f = t442 ).
                    CREATE OBJECT t437->zlnt_view_ownkeys_b0e8086400eb.
                    t437->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t444.
                    t437->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t444 ).
                    DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t445.
                    IF t437->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t437->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `visibility` p1 = t445 ).
                    ENDIF.
                    CREATE OBJECT t437->zlnt_json_ownkeys_70e5fd461788.
                    t437->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t447.
                    t437->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t447 ).
                    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t449.
                    IF t437->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t437->zlnt_json_ownkeys_70e5fd461788->put( p0 = |visibility| p1 = t449 ).
                    ENDIF.
                    t436->load( ).
                    APPEND t437 TO t436->items.
                    t436->save( ).
                  ENDIF.
                ELSE.
                  IF xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_sr_types ) = abap_true.
                    DATA t452 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t452.
                    DATA(t454) = NEW zcl_lnt_sy_types( ).
                    DATA t455 TYPE REF TO zcl_lnt_structure_node.
                    CLEAR t455.
                    DATA t457 TYPE REF TO object.
                    CLEAR t457.
                    t457 = t18.
                    t455 ?= t457.
                    DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t459.
                    t452 = t454->run_syntax( i_node = t455 i_input_967e = t3 i_qualified_name_prefix = t459 ).
                    IF xsdbool( t452 IS BOUND ) = abap_true.
                      DATA t463 TYPE REF TO zcl_lnt_current_scope.
                      CLEAR t463.
                      t463 = t3->scope.
                      DATA t465 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t465.
                      t465 = t452.
                      DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t474.
                      CLEAR t474.
                      IF xsdbool( t465 IS INITIAL ) = abap_true.
                      ELSE.
                        DATA t480 TYPE REF TO zcl_lnt_fi_identifier.
                        CLEAR t480.
                        t480 = t465.
                        DATA(t484) = VALUE string( ).
                        t484 = t480->token->str.
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
                        ELSE.
                          IF t495 > t496 - t494.
                            t495 = t496 - t494.
                          ENDIF.
                          t492 = t493+t494(t495).
                        ENDIF.
                        IF xsdbool( t492 = |!| ) = abap_true.
                          DATA(t499) = VALUE string( ).
                          t499 = t484.
                          DATA(t501) = VALUE string( ).
                          DATA(t503) = 1.
                          DATA(t504) = VALUE i( ).
                          t504 = strlen( t499 ).
                          DATA(t507) = strlen( t499 ).
                          IF t503 < 0.
                            t503 = t503 + t507.
                            IF t503 < 0.
                              t503 = 0.
                            ENDIF.
                          ENDIF.
                          IF t503 > t507 OR t504 <= 0.
                          ELSE.
                            IF t504 > t507 - t503.
                              t504 = t507 - t503.
                            ENDIF.
                            t501 = t499+t503(t504).
                          ENDIF.
                          t484 = t501.
                        ENDIF.
                        t463->add_type_named( i_name = t484 i_type_9913 = t465 ).
                      ENDIF.
                      DATA(t514) = me->tlist.
                      DATA t515 TYPE REF TO zcl_lnt_type_definitions_entry.
                      CLEAR t515.
                      DATA t516 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t516.
                      t516 = t452.
                      DATA(t520) = VALUE f( ).
                      t520 = t2.
                      t515 = NEW zcl_lnt_type_definitions_entry( i_type_9913 = t516 i_visibility_5c1f = t520 ).
                      CREATE OBJECT t515->zlnt_view_ownkeys_b0e8086400eb.
                      t515->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t522.
                      t515->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t522 ).
                      DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t523.
                      IF t515->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t515->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `visibility` p1 = t523 ).
                      ENDIF.
                      CREATE OBJECT t515->zlnt_json_ownkeys_70e5fd461788.
                      t515->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t525.
                      t515->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t525 ).
                      DATA t527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t527.
                      IF t515->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t515->zlnt_json_ownkeys_70e5fd461788->put( p0 = |visibility| p1 = t527 ).
                      ENDIF.
                      t514->load( ).
                      APPEND t515 TO t514->items.
                      t514->save( ).
                    ENDIF.
                  ELSE.
                    DATA t530 TYPE REF TO zcl_lnt_structure_node.
                    CLEAR t530.
                    DATA t532 TYPE REF TO object.
                    CLEAR t532.
                    t532 = t18.
                    t530 ?= t532.
                    me->parse_section( i_node = t530 i_visibility_5c1f = t2 i_input_967e = t3 ).
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ELSE.
        IF xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_statement_node ) = abap_true.
          IF xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_st_data ) = abap_true.
            DATA(t540) = me->instance.
            DATA t541 TYPE REF TO zcl_lnt_class_attribute.
            CLEAR t541.
            DATA t542 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t542.
            DATA t544 TYPE REF TO object.
            CLEAR t544.
            t544 = t18.
            t542 ?= t544.
            t541 = me->parse_attribute( i_node = t542 i_visibility_5c1f = t2 i_input_967e = t3 ).
            t540->load( ).
            APPEND t541 TO t540->items.
            t540->save( ).
          ELSE.
            IF xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_st_class_data ) = abap_true.
              DATA(t549) = me->static_9977.
              DATA t550 TYPE REF TO zcl_lnt_class_attribute.
              CLEAR t550.
              DATA t551 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t551.
              DATA t553 TYPE REF TO object.
              CLEAR t553.
              t553 = t18.
              t551 ?= t553.
              t550 = me->parse_attribute( i_node = t551 i_visibility_5c1f = t2 i_input_967e = t3 ).
              t549->load( ).
              APPEND t550 TO t549->items.
              t549->save( ).
            ELSE.
              IF xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_aliases ) = abap_true.
                DATA t558 TYPE REF TO zcl_lnt_statement_node.
                CLEAR t558.
                DATA t560 TYPE REF TO object.
                CLEAR t560.
                t560 = t18.
                t558 ?= t560.
                me->parse_alias( i_node = t558 i_visibility_5c1f = t2 i_input_967e = t3 ).
              ELSE.
                IF xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_st_statem_constant ) = abap_true.
                  DATA t565 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t565.
                  DATA(t567) = NEW zcl_lnt_sy_statem_constant( ).
                  DATA t568 TYPE REF TO zcl_lnt_statement_node.
                  CLEAR t568.
                  DATA t570 TYPE REF TO object.
                  CLEAR t570.
                  t570 = t18.
                  t568 ?= t570.
                  t565 = t567->run_syntax( i_node = t568 i_input_967e = t3 ).
                  IF xsdbool( t565 IS BOUND ) = abap_true.
                    DATA t574 TYPE REF TO zcl_lnt_class_constant.
                    CLEAR t574.
                    DATA(t577) = VALUE f( ).
                    t577 = t2.
                    DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t579.
                    t579 = t565->value.
                    t574 = NEW zcl_lnt_class_constant( i_id = t565 i_visibility_5c1f = t577 i_value = t579 ).
                    DATA(t584) = me->constants.
                    t584->load( ).
                    APPEND t574 TO t584->items.
                    t584->save( ).
                    DATA t587 TYPE REF TO zcl_lnt_current_scope.
                    CLEAR t587.
                    t587 = t3->scope.
                    DATA t589 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t589.
                    t589 = t574.
                    DATA t594 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t594.
                    CLEAR t594.
                    IF xsdbool( t589 IS INITIAL ) = abap_true.
                    ELSE.
                      DATA t600 TYPE REF TO zcl_lnt_fi_identifier.
                      CLEAR t600.
                      t600 = t589.
                      DATA(t604) = VALUE string( ).
                      t604 = t600->token->str.
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
                      ELSE.
                        IF t615 > t616 - t614.
                          t615 = t616 - t614.
                        ENDIF.
                        t612 = t613+t614(t615).
                      ENDIF.
                      IF xsdbool( t612 = |!| ) = abap_true.
                        DATA(t619) = VALUE string( ).
                        t619 = t604.
                        DATA(t621) = VALUE string( ).
                        DATA(t623) = 1.
                        DATA(t624) = VALUE i( ).
                        t624 = strlen( t619 ).
                        DATA(t627) = strlen( t619 ).
                        IF t623 < 0.
                          t623 = t623 + t627.
                          IF t623 < 0.
                            t623 = 0.
                          ENDIF.
                        ENDIF.
                        IF t623 > t627 OR t624 <= 0.
                        ELSE.
                          IF t624 > t627 - t623.
                            t624 = t627 - t623.
                          ENDIF.
                          t621 = t619+t623(t624).
                        ENDIF.
                        t604 = t621.
                      ENDIF.
                      t587->add_named_identifier( i_name = t604 i_identifier = t589 ).
                    ENDIF.
                  ENDIF.
                ELSE.
                  IF xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_st_statem_type ) = abap_true.
                    DATA t633 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t633.
                    DATA(t635) = NEW zcl_lnt_sy_type( ).
                    DATA t636 TYPE REF TO zcl_lnt_statement_node.
                    CLEAR t636.
                    DATA t638 TYPE REF TO object.
                    CLEAR t638.
                    t638 = t18.
                    t636 ?= t638.
                    DATA t640 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t640.
                    t633 = t635->run_syntax( i_node = t636 i_input_967e = t3 i_qualified_name_prefix = t640 ).
                    IF xsdbool( t633 IS BOUND ) = abap_true.
                      DATA t644 TYPE REF TO zcl_lnt_current_scope.
                      CLEAR t644.
                      t644 = t3->scope.
                      DATA t646 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t646.
                      t646 = t633.
                      DATA t655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t655.
                      CLEAR t655.
                      IF xsdbool( t646 IS INITIAL ) = abap_true.
                      ELSE.
                        DATA t661 TYPE REF TO zcl_lnt_fi_identifier.
                        CLEAR t661.
                        t661 = t646.
                        DATA(t665) = VALUE string( ).
                        t665 = t661->token->str.
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
                        ELSE.
                          IF t676 > t677 - t675.
                            t676 = t677 - t675.
                          ENDIF.
                          t673 = t674+t675(t676).
                        ENDIF.
                        IF xsdbool( t673 = |!| ) = abap_true.
                          DATA(t680) = VALUE string( ).
                          t680 = t665.
                          DATA(t682) = VALUE string( ).
                          DATA(t684) = 1.
                          DATA(t685) = VALUE i( ).
                          t685 = strlen( t680 ).
                          DATA(t688) = strlen( t680 ).
                          IF t684 < 0.
                            t684 = t684 + t688.
                            IF t684 < 0.
                              t684 = 0.
                            ENDIF.
                          ENDIF.
                          IF t684 > t688 OR t685 <= 0.
                          ELSE.
                            IF t685 > t688 - t684.
                              t685 = t688 - t684.
                            ENDIF.
                            t682 = t680+t684(t685).
                          ENDIF.
                          t665 = t682.
                        ENDIF.
                        t644->add_type_named( i_name = t665 i_type_9913 = t646 ).
                      ENDIF.
                      DATA(t695) = me->tlist.
                      DATA t696 TYPE REF TO zcl_lnt_type_definitions_entry.
                      CLEAR t696.
                      DATA t697 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t697.
                      t697 = t633.
                      DATA(t701) = VALUE f( ).
                      t701 = t2.
                      t696 = NEW zcl_lnt_type_definitions_entry( i_type_9913 = t697 i_visibility_5c1f = t701 ).
                      CREATE OBJECT t696->zlnt_view_ownkeys_b0e8086400eb.
                      t696->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t703 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t703.
                      t696->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t703 ).
                      DATA t704 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t704.
                      IF t696->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t696->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `visibility` p1 = t704 ).
                      ENDIF.
                      CREATE OBJECT t696->zlnt_json_ownkeys_70e5fd461788.
                      t696->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t706 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t706.
                      t696->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t706 ).
                      DATA t708 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t708.
                      IF t696->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t696->zlnt_json_ownkeys_70e5fd461788->put( p0 = |visibility| p1 = t708 ).
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
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
    t4 = t1->find_first_expression( i_type_9913 = t9 )->get_first_token( ).
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    t10 = t1->find_first_expression( i_type_9913 = t15 )->get_first_token( ).
    DATA(t16) = VALUE string( ).
    t16 = t10->str.
    DATA(t22) = me->aliases_62bb.
    DATA t23 TYPE REF TO zcl_lnt_alias.
    DATA(t25) = VALUE f( ).
    t25 = t2.
    DATA(t28) = CONV string( me->filename ).
    t23 = NEW zcl_lnt_alias( i_token = t4 i_visibility_5c1f = t25 i_component = t16 i_filename = t28 ).
    t22->load( ).
    APPEND t23 TO t22->items.
    t22->save( ).
    DATA(t30) = VALUE i( ).
    DATA(t32) = |~|.
    DATA(t33) = strlen( t16 ).
    IF t32 IS INITIAL.
      t30 = 0.
    ELSE.
      FIND t32 IN t16 MATCH OFFSET t30.
      IF sy-subrc <> 0.
        t30 = -1.
      ENDIF.
    ENDIF.
    IF xsdbool( t30 >= 0 ) = abap_true.
      DATA(t35) = VALUE string( ).
      DATA(t36) = VALUE string( ).
      DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t39) = |~|.
      DATA(t40) = strlen( t16 ).
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
          t45 = t16+t41(1).
          APPEND t45 TO t37->items.
          t41 = t41 + 1.
        ENDWHILE.
      ELSE.
        WHILE t41 <= t40.
          FIND FIRST OCCURRENCE OF t39 IN SECTION OFFSET t41 OF t16 MATCH OFFSET t42.
          IF sy-subrc = 0.
            t43 = t42 - t41.
          ELSE.
            t42 = -1.
            t43 = t40 - t41.
          ENDIF.
          CLEAR t45.
          IF t43 > 0.
            t45 = t16+t41(t43).
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
      READ TABLE t37->items INDEX 1 INTO t36.
      t35 = t36.
      DATA t46 TYPE REF TO zif_lnt_interface_definition.
      DATA t48 TYPE REF TO zcl_lnt_current_scope.
      t48 = t3->scope.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t55->has = abap_true.
      t55->value = t35.
      t51 = t55.
      DATA t57 TYPE REF TO zif_lnt_interface_definition.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t59 = t51.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t63) = VALUE abap_bool( ).
      IF t59 IS INITIAL.
        t63 = abap_true.
      ELSEIF t59->has = abap_false.
        t63 = abap_true.
      ENDIF.
      IF t63 = abap_true.
      ELSE.
        DATA t67 TYPE REF TO zif_lnt_interface_definition.
        DATA t69 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t69 = t48->current.
        DATA t72 TYPE REF TO zif_lnt_interface_definition.
        IF xsdbool( t69 IS INITIAL ) = abap_true.
        ELSE.
          DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t77 = t69.
          DATA(t79) = VALUE string( ).
          t79 = t51->value.
          t72 = t77->find_interface_definition( i_name = t79 ).
        ENDIF.
        t67 = t72.
        DATA t81 TYPE REF TO zif_lnt_interface_definition.
        IF xsdbool( t67 IS BOUND ) = abap_true.
          t81 = t67.
        ELSE.
          DATA t90 TYPE REF TO zcl_lnt_ob_interface.
          DATA t91 TYPE REF TO zcl_lnt_ob_interface.
          DATA t93 TYPE REF TO zif_lnt_registry.
          t93 = t48->reg.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t98) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t98->has = abap_true.
          t98->value = |INTF|.
          t95 = t98.
          DATA(t102) = VALUE string( ).
          t102 = t51->value.
          DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t104->has = abap_true.
          t104->value = t102.
          DATA t106 TYPE REF TO object.
          t106 = t93->get_object( i_type_9913 = t95 i_name = t104 ).
          t91 ?= t106.
          t90 = t91.
          DATA t107 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t90 IS BOUND ) = abap_true.
            t107 = t90->def.
          ELSE.
            CLEAR t107.
          ENDIF.
          t81 = t107.
        ENDIF.
        t57 = t81.
      ENDIF.
      t46 = t57.
      IF xsdbool( t46 IS BOUND ) = abap_true.
        DATA t119 TYPE REF TO zcl_lnt_current_scope.
        t119 = t3->scope.
        DATA t121 TYPE REF TO zcl_lnt_abstract_token.
        t121 = t10.
        DATA t125 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t127 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t128 TYPE REF TO zif_lnt_interface_definition.
        t128 = t46.
        t127 ?= t128.
        t125 = t127.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t131.
        t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t131->sval = |Object|.
        DATA(t133) = VALUE string( ).
        t133 = t3->filename.
        DATA t137 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t141) = VALUE string( ).
        DATA(t143) = strlen( t35 ).
        t141 = t35.
        IF t141 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t141 TO UPPER CASE.
        ELSE.
          t141 = zlnt_runtime_uppe_91169605024d=>full( t141 ).
        ENDIF.
        DATA(t144) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t144->has = abap_true.
        t144->value = t141.
        t138 = t144.
        DATA(t150) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t150->has = abap_true.
        t150->value = |INTF|.
        DATA t152 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t137 = NEW zcl_lnt_ireference_extras( i_oo_name = t138 i_oo_type = t150 i_found_qualified = t152 ).
        CREATE OBJECT t137->zlnt_view_ownkeys_b0e8086400eb.
        t137->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t137->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t154 ).
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t137->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t137->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t155 ).
        ENDIF.
        CREATE OBJECT t137->zlnt_json_ownkeys_70e5fd461788.
        t137->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t137->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t157 ).
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t137->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t137->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t159 ).
        ENDIF.
        t119->add_reference( i_usage = t121 i_referencing = t125 i_type_9913 = t131 i_filename = t133 i_extra = t137 ).
        DATA t161 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t163 TYPE REF TO zif_lnt_type_definitions.
        t163 = t46->get_type_definitions( ).
        DATA(t166) = VALUE string( ).
        DATA t167 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t169) = |~|.
        DATA(t170) = strlen( t16 ).
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
            t175 = t16+t171(1).
            APPEND t175 TO t167->items.
            t171 = t171 + 1.
          ENDWHILE.
        ELSE.
          WHILE t171 <= t170.
            FIND FIRST OCCURRENCE OF t169 IN SECTION OFFSET t171 OF t16 MATCH OFFSET t172.
            IF sy-subrc = 0.
              t173 = t172 - t171.
            ELSE.
              t172 = -1.
              t173 = t170 - t171.
            ENDIF.
            CLEAR t175.
            IF t173 > 0.
              t175 = t16+t171(t173).
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
        READ TABLE t167->items INDEX 2 INTO t166.
        t161 = t163->get_by_name( i_name = t166 ).
        IF xsdbool( t161 IS BOUND ) = abap_true.
          DATA t178 TYPE REF TO zcl_lnt_current_scope.
          t178 = t3->scope.
          DATA(t180) = VALUE string( ).
          t180 = t4->str.
          t178->add_type_named( i_name = t180 i_type_9913 = t161 ).
        ENDIF.
        DATA t190 TYPE REF TO zif_lnt_union_a346537f.
        DATA t192 TYPE REF TO zif_lnt_attributes.
        t192 = t46->get_attributes( ).
        DATA(t195) = VALUE string( ).
        DATA t196 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t198) = |~|.
        DATA(t199) = strlen( t16 ).
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
            t204 = t16+t200(1).
            APPEND t204 TO t196->items.
            t200 = t200 + 1.
          ENDWHILE.
        ELSE.
          WHILE t200 <= t199.
            FIND FIRST OCCURRENCE OF t198 IN SECTION OFFSET t200 OF t16 MATCH OFFSET t201.
            IF sy-subrc = 0.
              t202 = t201 - t200.
            ELSE.
              t201 = -1.
              t202 = t199 - t200.
            ENDIF.
            CLEAR t204.
            IF t202 > 0.
              t204 = t16+t200(t202).
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
        READ TABLE t196->items INDEX 2 INTO t195.
        t190 = t192->find_by_name( i_name = t195 ).
        IF xsdbool( t190 IS BOUND ) = abap_true.
          DATA t207 TYPE REF TO zcl_lnt_current_scope.
          t207 = t3->scope.
          DATA(t209) = VALUE string( ).
          t209 = t4->str.
          DATA t214 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t215 TYPE REF TO zif_lnt_union_a346537f.
          t215 = t190.
          t214 ?= t215.
          t207->add_named_identifier( i_name = t209 i_identifier = t214 ).
        ENDIF.
        DATA(t217) = VALUE string( ).
        DATA(t218) = VALUE string( ).
        DATA t219 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t221) = |~|.
        DATA(t222) = strlen( t16 ).
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
            t227 = t16+t223(1).
            APPEND t227 TO t219->items.
            t223 = t223 + 1.
          ENDWHILE.
        ELSE.
          WHILE t223 <= t222.
            FIND FIRST OCCURRENCE OF t221 IN SECTION OFFSET t223 OF t16 MATCH OFFSET t224.
            IF sy-subrc = 0.
              t225 = t224 - t223.
            ELSE.
              t224 = -1.
              t225 = t222 - t223.
            ENDIF.
            CLEAR t227.
            IF t225 > 0.
              t227 = t16+t223(t225).
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
        READ TABLE t219->items INDEX 2 INTO t218.
        t217 = t218.
        DATA(t228) = VALUE abap_bool( ).
        DATA(t229) = VALUE abap_bool( ).
        DATA(t230) = VALUE abap_bool( ).
        DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t230 = xsdbool( t161 IS INITIAL ).
        t229 = t230.
        IF t230 = abap_true.
          DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t229 = xsdbool( t190 IS INITIAL ).
        ENDIF.
        t228 = t229.
        IF t229 = abap_true.
          DATA(t245) = VALUE abap_bool( ).
          DATA t246 TYPE REF TO zif_lnt_interface_definition.
          t246 = t46.
          DATA t250 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t250.
          t245 = me->exists_in_interface( i_idef = t246 i_component = t217 i_input_967e = t3 i_visited = t250 ).
          t228 = xsdbool( t245 = abap_false ).
        ENDIF.
        IF t228 = abap_true.
          DATA(t252) = VALUE string( ).
          DATA(t254) = VALUE string( ).
          DATA(t255) = VALUE string( ).
          DATA(t256) = |Component |.
          DATA(t258) = strlen( t256 ).
          t255 = |{ t256 }{ t217 }|.
          DATA(t260) = strlen( t255 ).
          t254 = |{ t255 }{ | not found in interface | }|.
          DATA(t261) = VALUE string( ).
          t261 = t46->get_name( ).
          DATA(t264) = strlen( t254 ).
          t252 = |{ t254 }{ t261 }|.
          DATA t265 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t265 = t3->issues.
          DATA t267 TYPE REF TO zcl_lnt_issue.
          DATA t271 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t267 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t10 i_message_26cb = t252 i_fix = t271 ).
          t265->load( ).
          APPEND t267 TO t265->items.
          t265->save( ).
        ENDIF.
      ELSE.
        DATA(t272) = VALUE abap_bool( ).
        DATA(t273) = VALUE abap_bool( ).
        DATA(t274) = me->declared_interfaces.
        DATA(t275) = VALUE string( ).
        DATA(t277) = strlen( t35 ).
        t275 = t35.
        IF t275 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t275 TO UPPER CASE.
        ELSE.
          t275 = zlnt_runtime_uppe_91169605024d=>full( t275 ).
        ENDIF.
        t273 = t274->includes( p0 = t275 ).
        t272 = t273.
        IF t273 = abap_false.
          DATA t285 TYPE REF TO zcl_lnt_ddic.
          DATA t286 TYPE REF TO zif_lnt_registry.
          t286 = t3->scope->reg.
          t285 = NEW zcl_lnt_ddic( i_reg_f149 = t286 ).
          DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t292) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t292->has = abap_true.
          t292->value = t35.
          t288 = t292.
          DATA(t294) = VALUE abap_bool( ).
          DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t296 = t288.
          DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t300) = VALUE abap_bool( ).
          IF t296 IS INITIAL.
            t300 = abap_true.
          ELSEIF t296->has = abap_false.
            t300 = abap_true.
          ENDIF.
          IF t300 = abap_true.
            t294 = abap_true.
          ELSE.
            DATA t304 TYPE REF TO zif_lnt_registry.
            t304 = t285->reg.
            DATA(t306) = VALUE string( ).
            t306 = t288->value.
            t294 = t304->in_error_namespace( i_name = t306 ).
          ENDIF.
          t272 = xsdbool( t294 = abap_false ).
        ENDIF.
        IF t272 = abap_true.
          DATA t309 TYPE REF TO zcl_lnt_current_scope.
          t309 = t3->scope.
          DATA t311 TYPE REF TO zcl_lnt_abstract_token.
          t311 = t10.
          DATA t315 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t316.
          t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t316->sval = |Object (Void)|.
          DATA(t318) = VALUE string( ).
          t318 = t3->filename.
          DATA t320 TYPE REF TO zcl_lnt_ireference_extras.
          t309->add_reference( i_usage = t311 i_referencing = t315 i_type_9913 = t316 i_filename = t318 i_extra = t320 ).
        ELSE.
          DATA t321 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
          DATA t322 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
          DATA(t325) = VALUE string( ).
          DATA(t326) = VALUE string( ).
          DATA(t327) = |Interface |.
          DATA(t329) = strlen( t327 ).
          t326 = |{ t327 }{ t35 }|.
          DATA(t331) = strlen( t326 ).
          t325 = |{ t326 }{ | not found| }|.
          DATA(t332) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t332->has = abap_true.
          t332->value = t325.
          t322 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t332 ).
          t321 = NEW #( ).
          t321->payload = t322.
          CLEAR t321->source_value.
          DATA t334 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t335 TYPE REF TO object.
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
    t7 = t1->get_name( ).
    DATA(t9) = strlen( t7 ).
    t6 = t7.
    IF t6 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t6 TO UPPER CASE.
    ELSE.
      t6 = zlnt_runtime_uppe_91169605024d=>full( t6 ).
    ENDIF.
    t5 = t6.
    IF t4->includes( p0 = t5 ) = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    t4->load( ).
    APPEND t5 TO t4->items.
    t4->save( ).
    DATA(t16) = VALUE string( ).
    DATA t17 TYPE string.
    DATA(t19) = strlen( t2 ).
    t17 = t2.
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
    DATA t26 TYPE REF TO zcl_lnt_typed_identifier.
    t26 = t1->get_type_definitions( )->get_by_name( i_name = t2 ).
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t24 = xsdbool( xsdbool( t26 IS INITIAL ) = abap_false ).
    t23 = t24.
    IF t24 = abap_false.
      DATA t37 TYPE REF TO zif_lnt_union_a346537f.
      t37 = t1->get_attributes( )->find_by_name( i_name = t2 ).
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t23 = xsdbool( xsdbool( t37 IS INITIAL ) = abap_false ).
    ENDIF.
    t22 = t23.
    IF t23 = abap_false.
      DATA t48 TYPE REF TO zif_lnt_method_definition.
      DATA t49 TYPE REF TO zif_lnt_method_definitions.
      t49 = t1->get_method_definitions( ).
      DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t54->has = abap_true.
      t54->value = t2.
      t48 = t49->get_by_name( i_name = t54 ).
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t22 = xsdbool( xsdbool( t48 IS INITIAL ) = abap_false ).
    ENDIF.
    t21 = t22.
    IF t22 = abap_false.
      DATA t62 TYPE abap_bool.
      t62 = abap_false.
      DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t64 = t1->get_events( ).
      DATA t66 TYPE REF TO zif_lnt_event_definition.
      DATA t67 TYPE REF TO object.
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
        DATA t72 TYPE string.
        DATA t73 TYPE string.
        t73 = t66->get_name( ).
        DATA(t75) = strlen( t73 ).
        t72 = t73.
        IF t72 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t72 TO UPPER CASE.
        ELSE.
          t72 = zlnt_runtime_uppe_91169605024d=>full( t72 ).
        ENDIF.
        IF xsdbool( t72 = t16 ) = abap_true.
          t62 = abap_true.
          EXIT.
        ENDIF.
      ENDDO.
      t21 = t62.
    ENDIF.
    t20 = t21.
    IF t21 = abap_false.
      DATA t80 TYPE abap_bool.
      t80 = abap_false.
      DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t82 = t1->get_aliases( ).
      DATA t84 TYPE REF TO zcl_lnt_alias.
      DATA t85 TYPE REF TO object.
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
        DATA(t90) = VALUE string( ).
        DATA(t91) = VALUE string( ).
        DATA t92 TYPE REF TO zcl_lnt_fi_identifier.
        t92 = t84.
        DATA t95 TYPE string.
        t95 = t92->token->str.
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
        ELSE.
          IF t106 > t107 - t105.
            t106 = t107 - t105.
          ENDIF.
          t103 = t104+t105(t106).
        ENDIF.
        IF xsdbool( t103 = |!| ) = abap_true.
          DATA t110 TYPE string.
          t110 = t95.
          DATA(t112) = VALUE string( ).
          DATA(t114) = 1.
          DATA t115 TYPE i.
          t115 = strlen( t110 ).
          DATA(t118) = strlen( t110 ).
          IF t114 < 0.
            t114 = t114 + t118.
            IF t114 < 0.
              t114 = 0.
            ENDIF.
          ENDIF.
          IF t114 > t118 OR t115 <= 0.
          ELSE.
            IF t115 > t118 - t114.
              t115 = t118 - t114.
            ENDIF.
            t112 = t110+t114(t115).
          ENDIF.
          t95 = t112.
        ENDIF.
        t91 = t95.
        DATA(t120) = strlen( t91 ).
        t90 = t91.
        IF t90 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t90 TO UPPER CASE.
        ELSE.
          t90 = zlnt_runtime_uppe_91169605024d=>full( t90 ).
        ENDIF.
        IF xsdbool( t90 = t16 ) = abap_true.
          t80 = abap_true.
          EXIT.
        ENDIF.
      ENDDO.
      t20 = t80.
    ENDIF.
    IF t20 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t125 = t1->get_implementing( ).
    DATA t127 TYPE REF TO zcl_lnt_iimplementing.
    DATA t128 TYPE REF TO object.
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
      DATA t134 TYPE REF TO zcl_lnt_current_scope.
      t134 = t3->scope.
      DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t137.
      DATA t140 TYPE string.
      t140 = t127->name.
      DATA(t142) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t142->has = abap_true.
      t142->value = t140.
      t137 = t142.
      DATA t144 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t144.
      DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t146 = t137.
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t148.
      DATA(t150) = VALUE abap_bool( ).
      IF t146 IS INITIAL.
        t150 = abap_true.
      ELSEIF t146->has = abap_false.
        t150 = abap_true.
      ENDIF.
      IF t150 = abap_true.
        CLEAR t144.
      ELSE.
        DATA t154 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t154.
        DATA t156 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t156 = t134->current.
        DATA t159 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t159.
        IF xsdbool( t156 IS INITIAL ) = abap_true.
          CLEAR t159.
        ELSE.
          DATA t164 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t164 = t156.
          DATA t166 TYPE string.
          t166 = t137->value.
          t159 = t164->find_interface_definition( i_name = t166 ).
        ENDIF.
        t154 = t159.
        DATA t168 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t168.
        IF xsdbool( t154 IS BOUND ) = abap_true.
          t168 = t154.
        ELSE.
          DATA t177 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t177.
          DATA t178 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t178.
          DATA t180 TYPE REF TO zif_lnt_registry.
          t180 = t134->reg.
          DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t182.
          DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t185->has = abap_true.
          t185->value = |INTF|.
          t182 = t185.
          DATA t189 TYPE string.
          t189 = t137->value.
          DATA(t191) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t191->has = abap_true.
          t191->value = t189.
          DATA t193 TYPE REF TO object.
          t193 = t180->get_object( i_type_9913 = t182 i_name = t191 ).
          t178 ?= t193.
          t177 = t178.
          DATA t194 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t194.
          IF xsdbool( t177 IS BOUND ) = abap_true.
            t194 = t177->def.
          ELSE.
            CLEAR t194.
          ENDIF.
          t168 = t194.
        ENDIF.
        t144 = t168.
      ENDIF.
      t132 = t144.
      DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t207.
      IF xsdbool( t132 IS INITIAL ) = abap_true.
        result = abap_true.
        RETURN.
      ELSE.
        IF me->exists_in_interface( i_idef = t132 i_component = t2 i_input_967e = t3 i_visited = t4 ) = abap_true.
          result = abap_true.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD parse_attribute.
    DATA(t1) = i_node.
    DATA(t2) = i_visibility_5c1f.
    DATA(t3) = i_input_967e.
    DATA t4 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t6 TYPE REF TO zif_lnt_statement.
    t6 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    IF xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_st_data ) = abap_true.
      t4 = NEW zcl_lnt_sy_statem_data( )->run_syntax( i_node = t1 i_input_967e = t3 ).
    ELSE.
      IF xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_st_class_data ) = abap_true.
        t4 = NEW zcl_lnt_sy_statem_class_data( )->run_syntax( i_node = t1 i_input_967e = t3 ).
      ELSE.
        DATA t21 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        DATA t22 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        DATA(t25) = VALUE string( ).
        DATA(t26) = |ClassAttribute, unexpected node, 1, |.
        DATA(t27) = CONV string( me->filename ).
        DATA(t28) = strlen( t26 ).
        t25 = |{ t26 }{ t27 }|.
        DATA(t29) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t29->has = abap_true.
        t29->value = t25.
        t22 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t29 ).
        t21 = NEW #( ).
        t21->payload = t22.
        CLEAR t21->source_value.
        DATA t31 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t32 TYPE REF TO object.
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
        RAISE EXCEPTION t21.
      ENDIF.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      DATA t40 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t41 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t44) = VALUE string( ).
      DATA(t45) = |ClassAttribute, unexpected node, |.
      DATA(t46) = CONV string( me->filename ).
      DATA(t47) = strlen( t45 ).
      t44 = |{ t45 }{ t46 }|.
      DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t48->has = abap_true.
      t48->value = t44.
      t41 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t48 ).
      t40 = NEW #( ).
      t40->payload = t41.
      CLEAR t40->source_value.
      DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t51 TYPE REF TO object.
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
      RAISE EXCEPTION t40.
    ENDIF.
    DATA t53 TYPE REF TO zcl_lnt_current_scope.
    t53 = t3->scope.
    DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
    t55 = t4.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t55 IS INITIAL ) = abap_true.
    ELSE.
      DATA t70 TYPE REF TO zcl_lnt_fi_identifier.
      t70 = t55.
      DATA(t74) = VALUE string( ).
      t74 = t70->token->str.
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
      ELSE.
        IF t85 > t86 - t84.
          t85 = t86 - t84.
        ENDIF.
        t82 = t83+t84(t85).
      ENDIF.
      IF xsdbool( t82 = |!| ) = abap_true.
        DATA(t89) = VALUE string( ).
        t89 = t74.
        DATA(t91) = VALUE string( ).
        DATA(t93) = 1.
        DATA(t94) = VALUE i( ).
        t94 = strlen( t89 ).
        DATA(t97) = strlen( t89 ).
        IF t93 < 0.
          t93 = t93 + t97.
          IF t93 < 0.
            t93 = 0.
          ENDIF.
        ENDIF.
        IF t93 > t97 OR t94 <= 0.
        ELSE.
          IF t94 > t97 - t93.
            t94 = t97 - t93.
          ENDIF.
          t91 = t89+t93(t94).
        ENDIF.
        t74 = t91.
      ENDIF.
      t53->add_named_identifier( i_name = t74 i_identifier = t55 ).
    ENDIF.
    DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
    t102 = t4.
    DATA(t104) = VALUE f( ).
    t104 = t2.
    DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t106 = t4->meta.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t112 = t4->value.
    result = NEW zcl_lnt_class_attribute( i_id = t102 i_visibility_5c1f = t104 i_meta = t106 i_value = t112 ).

  ENDMETHOD.

  METHOD get_types.
    result = CAST zcl_lnt_type_definitions( me->gt_ty_in_sr_ab_ty_cl_at_ts_att( ) ).

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
