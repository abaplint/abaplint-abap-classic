* TS: src/ddic_references.ts:4:1 DDICReferences
CLASS zcl_lnt_ddic_references DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_ddic_references.
    DATA name_type_index TYPE REF TO zlnt_runtime_map__1966acad182d.
    DATA filename_index TYPE REF TO zlnt_runtime_map__1966acad182d.
    METHODS constructor.
    METHODS set_using IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_using TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS add_using IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_using TYPE REF TO zcl_lnt_iobject_and_token.
    METHODS clear_feba IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object.
    METHODS list_by_filename IMPORTING i_filename TYPE string i_line TYPE f RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_using IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_where_used IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ddic_references IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zlnt_runtime_map__1966acad182d.
    DATA t2 TYPE REF TO zlnt_runtime_map__1966acad182d.
    DATA(t3) = NEW zlnt_runtime_map__1966acad182d( ).
    t2 = t3.
    DATA(t4) = t2.
    t1 = t4.
    me->name_type_index = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nameTypeIndex`.
    DATA t5 TYPE REF TO zlnt_runtime_map__1966acad182d.
    DATA t6 TYPE REF TO zlnt_runtime_map__1966acad182d.
    DATA(t7) = NEW zlnt_runtime_map__1966acad182d( ).
    t6 = t7.
    DATA(t8) = t6.
    t5 = t8.
    me->filename_index = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `filenameIndex`.
  ENDMETHOD.

  METHOD set_using.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_using.
    DATA(t3) = t1.
    me->clear_feba( i_obj_1ed0 = t3 ).
    DATA(t4) = t2.
    DATA t5 TYPE REF TO zcl_lnt_iobject_and_token.
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
      DATA(t10) = t1.
      DATA t11 TYPE REF TO zcl_lnt_iobject_and_token.
      CLEAR t11.
      DATA(t12) = abap_true.
      IF t12 = abap_true.
        DATA(t13) = t5.
        t11 = t13.
      ELSE.
        DATA t14 TYPE REF TO zcl_lnt_iobject_and_token.
        CLEAR t14.
        t11 = t14.
      ENDIF.
      me->add_using( i_obj_1ed0 = t10 i_using = t11 ).
    ENDDO.
  ENDMETHOD.

  METHOD add_using.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_using.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_iobject_and_token.
    DATA(t5) = t2.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE string( ).
    DATA t11 TYPE string.
    DATA t12 TYPE string.
    DATA(t13) = t1.
    t12 = t13->get_name( ).
    DATA(t14) = strlen( t12 ).
    t11 = t12.
    IF t11 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t11 TO UPPER CASE.
    ELSE.
      t11 = zlnt_runtime_uppe_91169605024d=>full( t11 ).
    ENDIF.
    t10 = t11.
    DATA t15 TYPE string.
    DATA t16 TYPE string.
    DATA(t17) = t1.
    t16 = t17->get_type( ).
    t15 = t16.
    DATA(t18) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA t20 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA(t21) = me->name_type_index.
    DATA(t22) = t10.
    t20 = t21->get( p0 = t22 ).
    t19 = t20.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    t23 = t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = t19.
    IF t26 IS INITIAL.
      t25 = abap_true.
    ENDIF.
    t18 = t25.
    IF t18 = abap_true.
      DATA t27 TYPE REF TO zlnt_runtime_map__1966acad182d.
      DATA(t28) = me->name_type_index.
      DATA(t29) = t10.
      DATA t30 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t31 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA(t32) = NEW zlnt_runtime_map__8a73eae8287f( ).
      t31 = t32.
      DATA(t33) = t31.
      t30 = t33.
      t27 = t28->set( p0 = t29 p1 = t30 ).
    ENDIF.
    DATA(t34) = VALUE abap_bool( ).
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA t38 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA(t39) = me->name_type_index.
    DATA(t40) = t10.
    t38 = t39->get( p0 = t40 ).
    t37 = t38.
    DATA(t41) = t15.
    t36 = t37->get( p0 = t41 ).
    t35 = t36.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    t42 = t43.
    DATA(t44) = VALUE abap_bool( ).
    DATA(t45) = t35.
    IF t45 IS INITIAL.
      t44 = abap_true.
    ENDIF.
    t34 = t44.
    IF t34 = abap_true.
      DATA t46 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t47 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t48 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA(t49) = me->name_type_index.
      DATA(t50) = t10.
      t48 = t49->get( p0 = t50 ).
      t47 = t48.
      DATA(t51) = t15.
      DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t52.
      t46 = t47->set( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t55 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA t56 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA(t57) = me->name_type_index.
    DATA(t58) = t10.
    t56 = t57->get( p0 = t58 ).
    t55 = t56.
    DATA(t59) = t15.
    t54 = t55->get( p0 = t59 ).
    t53 = t54.
    DATA t60 TYPE REF TO zcl_lnt_iobject_and_token.
    DATA(t61) = t2.
    t60 = t61.
    t53->load( ).
    APPEND t60 TO t53->items.
    t53->save( ).
    DATA(t62) = VALUE abap_bool( ).
    DATA(t63) = VALUE abap_bool( ).
    DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t65 TYPE REF TO zcl_lnt_iobject_and_token.
    DATA(t66) = t2.
    t65 = t66.
    t64 = t65->filename.
    IF t64 IS BOUND.
      IF t64->has = abap_true.
        t63 = xsdbool( strlen( t64->value ) > 0 ).
      ENDIF.
    ENDIF.
    t62 = t63.
    IF t63 = abap_true.
      DATA t67 TYPE abap_bool.
      DATA t68 TYPE REF TO zcl_lnt_abstract_token.
      DATA t69 TYPE REF TO zcl_lnt_iobject_and_token.
      DATA(t70) = t2.
      t69 = t70.
      t68 = t69->token.
      t67 = xsdbool( t68 IS BOUND ).
      t62 = t67.
    ENDIF.
    IF t62 = abap_true.
      DATA(t71) = VALUE abap_bool( ).
      DATA t72 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t73 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA(t74) = me->filename_index.
      DATA t75 TYPE string.
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t77 TYPE REF TO zcl_lnt_iobject_and_token.
      DATA(t78) = t2.
      t77 = t78.
      t76 = t77->filename.
      t75 = t76->value.
      t73 = t74->get( p0 = t75 ).
      t72 = t73.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      t79 = t80.
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = t72.
      IF t82 IS INITIAL.
        t81 = abap_true.
      ENDIF.
      t71 = t81.
      IF t71 = abap_true.
        DATA t83 TYPE REF TO zlnt_runtime_map__1966acad182d.
        DATA(t84) = me->filename_index.
        DATA t85 TYPE string.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t87 TYPE REF TO zcl_lnt_iobject_and_token.
        DATA(t88) = t2.
        t87 = t88.
        t86 = t87->filename.
        t85 = t86->value.
        DATA t89 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
        DATA t90 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
        DATA(t91) = NEW zlnt_runtime_map__8a73eae8287f( ).
        t90 = t91.
        DATA(t92) = t90.
        t89 = t92.
        t83 = t84->set( p0 = t85 p1 = t89 ).
      ENDIF.
      DATA(t93) = VALUE abap_bool( ).
      DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t94.
      DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t95.
      DATA t96 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t97 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA(t98) = me->filename_index.
      DATA t99 TYPE string.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t101 TYPE REF TO zcl_lnt_iobject_and_token.
      DATA(t102) = t2.
      t101 = t102.
      t100 = t101->filename.
      t99 = t100->value.
      t97 = t98->get( p0 = t99 ).
      t96 = t97.
      DATA(t103) = VALUE string( ).
      DATA t104 TYPE f.
      DATA t105 TYPE REF TO zcl_lnt_abstract_token.
      DATA t106 TYPE REF TO zcl_lnt_abstract_token.
      DATA t107 TYPE REF TO zcl_lnt_abstract_token.
      DATA t108 TYPE REF TO zcl_lnt_iobject_and_token.
      DATA(t109) = t2.
      t108 = t109.
      t107 = t108->token.
      t106 = t107.
      t105 = t106.
      DATA t110 TYPE f.
      DATA t111 TYPE REF TO zcl_lnt_position.
      DATA t112 TYPE REF TO zcl_lnt_position.
      DATA(t113) = t105.
      t112 = t113->start.
      t111 = t112.
      DATA t114 TYPE f.
      DATA(t115) = t111.
      t114 = t115->row.
      t110 = t114.
      t104 = t110.
      IF t104 <> trunc( t104 ) OR t104 > range_safe_integer OR t104 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t116) = CONV int8( t104 ).
      t103 = |{ t116 }|.
      t95 = t96->get( p0 = t103 ).
      t94 = t95.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      t117 = t118.
      DATA(t119) = VALUE abap_bool( ).
      DATA(t120) = t94.
      IF t120 IS INITIAL.
        t119 = abap_true.
      ENDIF.
      t93 = t119.
      IF t93 = abap_true.
        DATA t121 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
        CLEAR t121.
        DATA t122 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
        DATA t123 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
        DATA(t124) = me->filename_index.
        DATA t125 TYPE string.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t127 TYPE REF TO zcl_lnt_iobject_and_token.
        DATA(t128) = t2.
        t127 = t128.
        t126 = t127->filename.
        t125 = t126->value.
        t123 = t124->get( p0 = t125 ).
        t122 = t123.
        DATA(t129) = VALUE string( ).
        DATA t130 TYPE f.
        DATA t131 TYPE REF TO zcl_lnt_abstract_token.
        DATA t132 TYPE REF TO zcl_lnt_abstract_token.
        DATA t133 TYPE REF TO zcl_lnt_abstract_token.
        DATA t134 TYPE REF TO zcl_lnt_iobject_and_token.
        DATA(t135) = t2.
        t134 = t135.
        t133 = t134->token.
        t132 = t133.
        t131 = t132.
        DATA t136 TYPE f.
        DATA t137 TYPE REF TO zcl_lnt_position.
        DATA t138 TYPE REF TO zcl_lnt_position.
        DATA(t139) = t131.
        t138 = t139->start.
        t137 = t138.
        DATA t140 TYPE f.
        DATA(t141) = t137.
        t140 = t141->row.
        t136 = t140.
        t130 = t136.
        IF t130 <> trunc( t130 ) OR t130 > range_safe_integer OR t130 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t142) = CONV int8( t130 ).
        t129 = |{ t142 }|.
        DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t143.
        t121 = t122->set( p0 = t129 p1 = t143 ).
      ENDIF.
      DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t144.
      DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t145.
      DATA t146 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t147 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA(t148) = me->filename_index.
      DATA t149 TYPE string.
      DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t151 TYPE REF TO zcl_lnt_iobject_and_token.
      DATA(t152) = t2.
      t151 = t152.
      t150 = t151->filename.
      t149 = t150->value.
      t147 = t148->get( p0 = t149 ).
      t146 = t147.
      DATA(t153) = VALUE string( ).
      DATA t154 TYPE f.
      DATA t155 TYPE REF TO zcl_lnt_abstract_token.
      DATA t156 TYPE REF TO zcl_lnt_abstract_token.
      DATA t157 TYPE REF TO zcl_lnt_abstract_token.
      DATA t158 TYPE REF TO zcl_lnt_iobject_and_token.
      DATA(t159) = t2.
      t158 = t159.
      t157 = t158->token.
      t156 = t157.
      t155 = t156.
      DATA t160 TYPE f.
      DATA t161 TYPE REF TO zcl_lnt_position.
      DATA t162 TYPE REF TO zcl_lnt_position.
      DATA(t163) = t155.
      t162 = t163->start.
      t161 = t162.
      DATA t164 TYPE f.
      DATA(t165) = t161.
      t164 = t165->row.
      t160 = t164.
      t154 = t160.
      IF t154 <> trunc( t154 ) OR t154 > range_safe_integer OR t154 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t166) = CONV int8( t154 ).
      t153 = |{ t166 }|.
      t145 = t146->get( p0 = t153 ).
      t144 = t145.
      DATA t167 TYPE REF TO zcl_lnt_iobject_and_token.
      DATA(t168) = t2.
      t167 = t168.
      t144->load( ).
      APPEND t167 TO t144->items.
      t144->save( ).
    ENDIF.
  ENDMETHOD.

  METHOD clear_feba.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_object.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA(t6) = VALUE string( ).
    DATA t7 TYPE string.
    DATA t8 TYPE string.
    DATA(t9) = t3.
    t8 = t9->get_name( ).
    DATA(t10) = strlen( t8 ).
    t7 = t8.
    IF t7 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t7 TO UPPER CASE.
    ELSE.
      t7 = zlnt_runtime_uppe_91169605024d=>full( t7 ).
    ENDIF.
    t6 = t7.
    DATA t11 TYPE string.
    DATA t12 TYPE string.
    DATA(t13) = t3.
    t12 = t13->get_type( ).
    t11 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA t17 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA(t18) = me->name_type_index.
    DATA(t19) = t6.
    t17 = t18->get( p0 = t19 ).
    t16 = t17.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t20.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = t16.
    IF t22 IS INITIAL.
      t21 = abap_true.
    ENDIF.
    IF t21 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t23.
      t20 = t23.
    ELSE.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t25 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA(t26) = t16.
      t25 = t26.
      DATA(t27) = t11.
      t24 = t25->get( p0 = t27 ).
      t20 = t24.
    ENDIF.
    t15 = t20.
    t14 = t15.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t28.
    DATA(t29) = VALUE abap_bool( ).
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t31) = t14.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    t32 = t33.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = t30.
    IF t36 IS INITIAL.
      t35 = abap_true.
    ENDIF.
    t34 = xsdbool( t35 = abap_false ).
    t29 = t34.
    IF t29 = abap_true.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t38) = t14.
      t37 = t38.
      t28 = t37.
    ELSE.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t39.
      t28 = t39.
    ENDIF.
    t5 = t28.
    t2 = t5.
    DATA t40 TYPE REF TO zcl_lnt_iobject_and_token.
    CLEAR t40.
    DATA t41 TYPE REF TO object.
    CLEAR t41.
    DATA(t42) = VALUE i( ).
    DO.
      t2->load( ).
      IF t42 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t41.
      READ TABLE t2->items INDEX t42 + 1 INTO t41.
      t42 = t42 + 1.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t43.
      CLEAR t40.
      IF t41 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t43 ?= t41.
        DATA t44 TYPE REF TO object.
        t44 = t43->as_ref( ).
        t40 ?= t44.
      ELSE.
        t40 ?= t41.
      ENDIF.
      DATA(t45) = VALUE abap_bool( ).
      DATA(t46) = VALUE abap_bool( ).
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t48) = t40.
      t47 = t48->filename.
      IF t47 IS BOUND.
        IF t47->has = abap_true.
          t46 = xsdbool( strlen( t47->value ) > 0 ).
        ENDIF.
      ENDIF.
      t45 = t46.
      IF t46 = abap_true.
        DATA t49 TYPE abap_bool.
        DATA t50 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t51) = t40.
        t50 = t51->token.
        t49 = xsdbool( t50 IS BOUND ).
        t45 = t49.
      ENDIF.
      IF t45 = abap_true.
        DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t52.
        DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t53.
        DATA t54 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
        DATA t55 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
        DATA(t56) = me->filename_index.
        DATA t57 TYPE string.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t59) = t40.
        t58 = t59->filename.
        t57 = t58->value.
        t55 = t56->get( p0 = t57 ).
        t54 = t55.
        DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t60.
        DATA(t61) = VALUE abap_bool( ).
        DATA(t62) = t54.
        IF t62 IS INITIAL.
          t61 = abap_true.
        ENDIF.
        IF t61 = abap_true.
          DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t63.
          t60 = t63.
        ELSE.
          DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t64.
          DATA t65 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
          DATA(t66) = t54.
          t65 = t66.
          DATA(t67) = VALUE string( ).
          DATA t68 TYPE f.
          DATA t69 TYPE REF TO zcl_lnt_abstract_token.
          DATA t70 TYPE REF TO zcl_lnt_abstract_token.
          DATA t71 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t72) = t40.
          t71 = t72->token.
          t70 = t71.
          t69 = t70.
          DATA t73 TYPE f.
          DATA t74 TYPE REF TO zcl_lnt_position.
          DATA t75 TYPE REF TO zcl_lnt_position.
          DATA(t76) = t69.
          t75 = t76->start.
          t74 = t75.
          DATA t77 TYPE f.
          DATA(t78) = t74.
          t77 = t78->row.
          t73 = t77.
          t68 = t73.
          IF t68 <> trunc( t68 ) OR t68 > range_safe_integer OR t68 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t79) = CONV int8( t68 ).
          t67 = |{ t79 }|.
          t64 = t65->get( p0 = t67 ).
          t60 = t64.
        ENDIF.
        t53 = t60.
        t52 = t53.
        DATA t80 TYPE abap_bool.
        DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t82) = t52.
        t81 = t82.
        t80 = xsdbool( t81 IS BOUND ).
        IF t80 = abap_true.
          DATA t83 TYPE REF TO zcl_lnt_iobject_and_token.
          CLEAR t83.
          DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t85) = t52.
          t84 = t85.
          DATA t86 TYPE REF TO object.
          t86 = t84->pop( ).
          DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t87.
          CLEAR t83.
          IF t86 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t87 ?= t86.
            DATA t88 TYPE REF TO object.
            t88 = t87->as_ref( ).
            t83 ?= t88.
          ELSE.
            t83 ?= t86.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t89) = VALUE string( ).
    DATA t90 TYPE string.
    DATA t91 TYPE string.
    DATA(t92) = t1.
    t91 = t92->get_name( ).
    DATA(t93) = strlen( t91 ).
    t90 = t91.
    IF t90 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t90 TO UPPER CASE.
    ELSE.
      t90 = zlnt_runtime_uppe_91169605024d=>full( t90 ).
    ENDIF.
    t89 = t90.
    DATA t94 TYPE string.
    DATA t95 TYPE string.
    DATA(t96) = t1.
    t95 = t96->get_type( ).
    t94 = t95.
    DATA(t97) = VALUE abap_bool( ).
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA t100 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA(t101) = me->name_type_index.
    DATA(t102) = t89.
    t100 = t101->get( p0 = t102 ).
    t99 = t100.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t103.
    DATA(t104) = VALUE abap_bool( ).
    DATA(t105) = t99.
    IF t105 IS INITIAL.
      t104 = abap_true.
    ENDIF.
    IF t104 = abap_true.
      DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t106.
      t103 = t106.
    ELSE.
      DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t108 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA(t109) = t99.
      t108 = t109.
      DATA(t110) = t94.
      t107 = t108->get( p0 = t110 ).
      t103 = t107.
    ENDIF.
    t98 = t103.
    t97 = xsdbool( t98 IS BOUND ).
    IF t97 = abap_true.
      DATA t111 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t112 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t113 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA(t114) = me->name_type_index.
      DATA(t115) = t89.
      t113 = t114->get( p0 = t115 ).
      t112 = t113.
      DATA(t116) = t94.
      DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t117.
      t111 = t112->set( p0 = t116 p1 = t117 ).
    ENDIF.
  ENDMETHOD.

  METHOD list_by_filename.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_filename.
    DATA(t2) = i_line.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA t7 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA(t8) = me->filename_index.
    DATA(t9) = t1.
    t7 = t8->get( p0 = t9 ).
    t6 = t7.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t6.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t13.
      t10 = t13.
    ELSE.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA(t16) = t6.
      t15 = t16.
      DATA(t17) = VALUE string( ).
      DATA(t18) = t2.
      IF t18 <> trunc( t18 ) OR t18 > range_safe_integer OR t18 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t19) = CONV int8( t18 ).
      t17 = |{ t19 }|.
      t14 = t15->get( p0 = t17 ).
      t10 = t14.
    ENDIF.
    t5 = t10.
    t4 = t5.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t20.
    DATA t21 TYPE abap_bool.
    DATA(t22) = t4.
    t21 = xsdbool( t22 IS BOUND ).
    IF t21 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t24) = t4.
      t23 = t24.
      t20 = t23.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t25.
      t20 = t25.
    ENDIF.
    t3 = t20.
    result = t3.

  ENDMETHOD.

  METHOD list_using.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA(t5) = t1.
    t4 = t5->get_name( ).
    DATA(t6) = strlen( t4 ).
    t3 = t4.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    t2 = t3.
    DATA t7 TYPE string.
    DATA t8 TYPE string.
    DATA(t9) = t1.
    t8 = t9->get_type( ).
    t7 = t8.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA t13 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA(t14) = me->name_type_index.
    DATA(t15) = t2.
    t13 = t14->get( p0 = t15 ).
    t12 = t13.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = t12.
    IF t18 IS INITIAL.
      t17 = abap_true.
    ENDIF.
    IF t17 = abap_true.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t19.
      t16 = t19.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t21 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA(t22) = t12.
      t21 = t22.
      DATA(t23) = t7.
      t20 = t21->get( p0 = t23 ).
      t16 = t20.
    ENDIF.
    t11 = t16.
    t10 = t11.
    DATA(t24) = VALUE abap_bool( ).
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t26) = t10.
    t25 = t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    t27 = t28.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = t25.
    IF t31 IS INITIAL.
      t30 = abap_true.
    ENDIF.
    t29 = xsdbool( t30 = abap_false ).
    t24 = t29.
    IF t24 = abap_true.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t33) = t10.
      t32 = t33.
      result = t32.
      RETURN.
    ELSE.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t34.
      result = t34.

    ENDIF.
  ENDMETHOD.

  METHOD list_where_used.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE string( ).
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    DATA(t7) = t1.
    t6 = t7->get_name( ).
    DATA(t8) = strlen( t6 ).
    t5 = t6.
    IF t5 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t5 TO UPPER CASE.
    ELSE.
      t5 = zlnt_runtime_uppe_91169605024d=>full( t5 ).
    ENDIF.
    t4 = t5.
    DATA t9 TYPE string.
    DATA t10 TYPE string.
    DATA(t11) = t1.
    t10 = t11->get_type( ).
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t13) = me->name_type_index.
    t12 = t13->keys( ).
    DATA(t14) = VALUE string( ).
    t12->dense( ).
    DATA(t15) = VALUE i( ).
    DO.
      t12->load( ).
      IF t15 >= lines( t12->items ).
        EXIT.
      ENDIF.
      CLEAR t14.
      READ TABLE t12->items INDEX t15 + 1 INTO t14.
      IF t12->has( t15 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t15 = t15 + 1.
      DATA t16 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t17 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA(t18) = me->name_type_index.
      DATA(t19) = t14.
      t17 = t18->get( p0 = t19 ).
      t16 = t17.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = t16.
      IF t22 IS INITIAL.
        t21 = abap_true.
      ENDIF.
      t20 = xsdbool( t21 = abap_false ).
      IF t20 = abap_true.
        DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t24 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
        DATA(t25) = t16.
        t24 = t25.
        t23 = t24->keys( ).
        DATA(t26) = VALUE string( ).
        t23->dense( ).
        DATA(t27) = VALUE i( ).
        DO.
          t23->load( ).
          IF t27 >= lines( t23->items ).
            EXIT.
          ENDIF.
          CLEAR t26.
          READ TABLE t23->items INDEX t27 + 1 INTO t26.
          IF t23->has( t27 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t27 = t27 + 1.
          DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t30 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
          DATA t31 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
          DATA(t32) = me->name_type_index.
          DATA(t33) = t14.
          t31 = t32->get( p0 = t33 ).
          t30 = t31.
          DATA(t34) = t26.
          t29 = t30->get( p0 = t34 ).
          t28 = t29.
          DATA t35 TYPE REF TO zcl_lnt_iobject_and_token.
          CLEAR t35.
          DATA t36 TYPE REF TO object.
          CLEAR t36.
          DATA(t37) = VALUE i( ).
          DO.
            t28->load( ).
            IF t37 >= lines( t28->items ).
              EXIT.
            ENDIF.
            CLEAR t36.
            READ TABLE t28->items INDEX t37 + 1 INTO t36.
            t37 = t37 + 1.
            DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t38.
            CLEAR t35.
            IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t38 ?= t36.
              DATA t39 TYPE REF TO object.
              t39 = t38->as_ref( ).
              t35 ?= t39.
            ELSE.
              t35 ?= t36.
            ENDIF.
            DATA(t40) = VALUE abap_bool( ).
            DATA t41 TYPE abap_bool.
            DATA t42 TYPE abap_bool.
            DATA t43 TYPE REF TO zif_lnt_object.
            DATA(t44) = t35.
            t43 = t44->object_a393.
            t42 = xsdbool( t43 IS BOUND ).
            t41 = t42.
            IF t42 = abap_true.
              DATA t45 TYPE abap_bool.
              DATA t46 TYPE string.
              DATA t47 TYPE REF TO zif_lnt_object.
              DATA t48 TYPE REF TO zif_lnt_object.
              DATA(t49) = t35.
              t48 = t49->object_a393.
              t47 = t48.
              t46 = t47->get_type( ).
              DATA(t50) = t9.
              t45 = xsdbool( t46 = t50 ).
              t41 = t45.
            ENDIF.
            t40 = t41.
            IF t41 = abap_true.
              DATA t51 TYPE abap_bool.
              DATA t52 TYPE string.
              DATA t53 TYPE REF TO zif_lnt_object.
              DATA t54 TYPE REF TO zif_lnt_object.
              DATA(t55) = t35.
              t54 = t55->object_a393.
              t53 = t54.
              t52 = t53->get_name( ).
              DATA(t56) = t4.
              t51 = xsdbool( t52 = t56 ).
              t40 = t51.
            ENDIF.
            IF t40 = abap_true.
              DATA(t57) = t2.
              DATA t58 TYPE REF TO zcl_lnt_shape_7c1b39e6.
              DATA t59 TYPE string.
              DATA(t60) = t26.
              t59 = t60.
              DATA t61 TYPE string.
              DATA(t62) = t14.
              t61 = t62.
              DATA t63 TYPE REF TO zcl_lnt_abstract_token.
              DATA t64 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t65) = t35.
              t64 = t65->token.
              t63 = t64.
              DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t68) = t35.
              t67 = t68->filename.
              t66 = t67.
              t58 = NEW zcl_lnt_shape_7c1b39e6( i_type_9913 = t59 i_name = t61 i_token = t63 i_filename = t66 ).
              CREATE OBJECT t58->zlnt_view_ownkeys_b0e8086400eb.
              t58->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t69.
              IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t69 ).
              ENDIF.
              DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t70.
              IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t70 ).
              ENDIF.
              DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t71.
              IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t71 ).
              ENDIF.
              DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t72.
              IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t72 ).
              ENDIF.
              CREATE OBJECT t58->zlnt_json_ownkeys_70e5fd461788.
              t58->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t73) = |type|.
              DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t74.
              IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
              ENDIF.
              DATA(t75) = |name|.
              DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t76.
              IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t75 p1 = t76 ).
              ENDIF.
              DATA(t77) = |token|.
              DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t78.
              IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t77 p1 = t78 ).
              ENDIF.
              DATA(t79) = |filename|.
              DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t80.
              IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t79 p1 = t80 ).
              ENDIF.
              t57->load( ).
              APPEND t58 TO t57->items.
              t57->save( ).
            ENDIF.
          ENDDO.
        ENDDO.
      ENDIF.
    ENDDO.
    DATA(t81) = t2.
    result = t81.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1122_baf19f6a7aee.
  ENDMETHOD.

  METHOD zif_lnt_ddic_references~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_ddic_references~set_using.
    me->set_using( i_obj_1ed0 = i_obj_1ed0 i_using = i_using ).
  ENDMETHOD.

  METHOD zif_lnt_ddic_references~add_using.
    me->add_using( i_obj_1ed0 = i_obj_1ed0 i_using = i_using ).
  ENDMETHOD.

  METHOD zif_lnt_ddic_references~clear_feba.
    me->clear_feba( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.

  METHOD zif_lnt_ddic_references~list_using.
    result = me->list_using( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.

  METHOD zif_lnt_ddic_references~list_by_filename.
    result = me->list_by_filename( i_filename = i_filename i_line = i_line ).
  ENDMETHOD.

  METHOD zif_lnt_ddic_references~list_where_used.
    result = me->list_where_used( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.
ENDCLASS.
