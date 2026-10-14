* TS: src/ddic_references.ts:4:1 DDICReferences
CLASS zcl_lnt_ddic_references DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_ddic_references.
    DATA name_type_index TYPE REF TO zlnt_runtime_map__1966acad182d.
    DATA filename_index TYPE REF TO zlnt_runtime_map__1966acad182d.
    METHODS constructor.
    METHODS set_using IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_using TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS add_using IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_using TYPE REF TO zcl_lnt_iobject_and_token.
    METHODS clear_feba IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object.
    METHODS list_by_filename IMPORTING i_filename TYPE string i_line TYPE int8 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_using IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_where_used IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ddic_references IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zlnt_runtime_map__1966acad182d.
    DATA t2 TYPE REF TO zlnt_runtime_map__1966acad182d.
    DATA(t3) = NEW zlnt_runtime_map__1966acad182d(  ).
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_map__1966acad182d( t2 ).
    t1 = t4.
    me->name_type_index = t1.
    DATA t5 TYPE REF TO zlnt_runtime_map__1966acad182d.
    DATA t6 TYPE REF TO zlnt_runtime_map__1966acad182d.
    DATA(t7) = NEW zlnt_runtime_map__1966acad182d(  ).
    t6 = t7.
    DATA(t8) = CAST zlnt_runtime_map__1966acad182d( t6 ).
    t5 = t8.
    me->filename_index = t5.
  ENDMETHOD.
  METHOD set_using.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_using ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/ddic_references.ts:8|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD add_using.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = CAST zcl_lnt_iobject_and_token( i_using ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_iobject_and_token.
    DATA(t5) = CAST zcl_lnt_iobject_and_token( t2 ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = CAST zcl_lnt_iobject_and_token( t4 ).
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
    DATA(t13) = CAST zif_lnt_object( t1 ).
    t12 = t13->get_name(  ).
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
    DATA(t17) = CAST zif_lnt_object( t1 ).
    t16 = t17->get_type(  ).
    t15 = t16.
    DATA(t18) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA t20 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA(t21) = CAST zlnt_runtime_map__1966acad182d( me->name_type_index ).
    DATA(t22) = t10.
    t20 = t21->get( p0 = t22 ).
    t19 = t20.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    t23 = t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = CAST zlnt_runtime_map__8a73eae8287f( t19 ).
    IF t26 IS INITIAL.
      t25 = abap_true.
    ENDIF.
    t18 = t25.
    IF t18 = abap_true.
      DATA t27 TYPE REF TO zlnt_runtime_map__1966acad182d.
      DATA(t28) = CAST zlnt_runtime_map__1966acad182d( me->name_type_index ).
      DATA(t29) = t10.
      DATA t30 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t31 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA(t32) = NEW zlnt_runtime_map__8a73eae8287f(  ).
      t31 = t32.
      DATA(t33) = CAST zlnt_runtime_map__8a73eae8287f( t31 ).
      t30 = t33.
      t27 = t28->set( p0 = t29 p1 = t30 ).
    ENDIF.
    DATA(t34) = VALUE abap_bool( ).
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA t38 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA(t39) = CAST zlnt_runtime_map__1966acad182d( me->name_type_index ).
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
    DATA(t45) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
    IF t45 IS INITIAL.
      t44 = abap_true.
    ENDIF.
    t34 = t44.
    IF t34 = abap_true.
      DATA t46 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t47 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t48 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA(t49) = CAST zlnt_runtime_map__1966acad182d( me->name_type_index ).
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
    DATA(t57) = CAST zlnt_runtime_map__1966acad182d( me->name_type_index ).
    DATA(t58) = t10.
    t56 = t57->get( p0 = t58 ).
    t55 = t56.
    DATA(t59) = t15.
    t54 = t55->get( p0 = t59 ).
    t53 = t54.
    DATA t60 TYPE REF TO zcl_lnt_iobject_and_token.
    DATA(t61) = CAST zcl_lnt_iobject_and_token( t2 ).
    t60 = t61.
    APPEND t60 TO t53->items.
    DATA(t62) = VALUE abap_bool( ).
    DATA(t63) = VALUE abap_bool( ).
    DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t65 TYPE REF TO zcl_lnt_iobject_and_token.
    DATA(t66) = CAST zcl_lnt_iobject_and_token( t2 ).
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
      DATA(t70) = CAST zcl_lnt_iobject_and_token( t2 ).
      t69 = t70.
      t68 = t69->token.
      t67 = xsdbool( t68 IS BOUND ).
      t62 = t67.
    ENDIF.
    IF t62 = abap_true.
      DATA(t71) = VALUE abap_bool( ).
      DATA t72 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t73 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA(t74) = CAST zlnt_runtime_map__1966acad182d( me->filename_index ).
      DATA t75 TYPE string.
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t77 TYPE REF TO zcl_lnt_iobject_and_token.
      DATA(t78) = CAST zcl_lnt_iobject_and_token( t2 ).
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
      DATA(t82) = CAST zlnt_runtime_map__8a73eae8287f( t72 ).
      IF t82 IS INITIAL.
        t81 = abap_true.
      ENDIF.
      t71 = t81.
      IF t71 = abap_true.
        DATA t83 TYPE REF TO zlnt_runtime_map__1966acad182d.
        DATA(t84) = CAST zlnt_runtime_map__1966acad182d( me->filename_index ).
        DATA t85 TYPE string.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t87 TYPE REF TO zcl_lnt_iobject_and_token.
        DATA(t88) = CAST zcl_lnt_iobject_and_token( t2 ).
        t87 = t88.
        t86 = t87->filename.
        t85 = t86->value.
        DATA t89 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
        DATA t90 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
        DATA(t91) = NEW zlnt_runtime_map__8a73eae8287f(  ).
        t90 = t91.
        DATA(t92) = CAST zlnt_runtime_map__8a73eae8287f( t90 ).
        t89 = t92.
        t83 = t84->set( p0 = t85 p1 = t89 ).
      ENDIF.
      DATA(t93) = VALUE abap_bool( ).
      DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t96 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t97 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA(t98) = CAST zlnt_runtime_map__1966acad182d( me->filename_index ).
      DATA t99 TYPE string.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t101 TYPE REF TO zcl_lnt_iobject_and_token.
      DATA(t102) = CAST zcl_lnt_iobject_and_token( t2 ).
      t101 = t102.
      t100 = t101->filename.
      t99 = t100->value.
      t97 = t98->get( p0 = t99 ).
      t96 = t97.
      DATA t103 TYPE string.
      DATA t104 TYPE int8.
      DATA t105 TYPE REF TO zcl_lnt_abstract_token.
      DATA t106 TYPE REF TO zcl_lnt_abstract_token.
      DATA t107 TYPE REF TO zcl_lnt_abstract_token.
      DATA t108 TYPE REF TO zcl_lnt_iobject_and_token.
      DATA(t109) = CAST zcl_lnt_iobject_and_token( t2 ).
      t108 = t109.
      t107 = t108->token.
      t106 = t107.
      t105 = t106.
      DATA t110 TYPE int8.
      DATA t111 TYPE REF TO zcl_lnt_position.
      DATA t112 TYPE REF TO zcl_lnt_position.
      DATA(t113) = CAST zcl_lnt_abstract_token( t105 ).
      t112 = t113->start.
      t111 = t112.
      DATA t114 TYPE int8.
      DATA(t115) = CAST zcl_lnt_position( t111 ).
      t114 = t115->row.
      t110 = t114.
      t104 = t110.
      t103 = |{ t104 }|.
      t95 = t96->get( p0 = t103 ).
      t94 = t95.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      t116 = t117.
      DATA(t118) = VALUE abap_bool( ).
      DATA(t119) = CAST zlnt_runtime_arra_c22708faf2e3( t94 ).
      IF t119 IS INITIAL.
        t118 = abap_true.
      ENDIF.
      t93 = t118.
      IF t93 = abap_true.
        DATA t120 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
        DATA t121 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
        DATA t122 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
        DATA(t123) = CAST zlnt_runtime_map__1966acad182d( me->filename_index ).
        DATA t124 TYPE string.
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t126 TYPE REF TO zcl_lnt_iobject_and_token.
        DATA(t127) = CAST zcl_lnt_iobject_and_token( t2 ).
        t126 = t127.
        t125 = t126->filename.
        t124 = t125->value.
        t122 = t123->get( p0 = t124 ).
        t121 = t122.
        DATA t128 TYPE string.
        DATA t129 TYPE int8.
        DATA t130 TYPE REF TO zcl_lnt_abstract_token.
        DATA t131 TYPE REF TO zcl_lnt_abstract_token.
        DATA t132 TYPE REF TO zcl_lnt_abstract_token.
        DATA t133 TYPE REF TO zcl_lnt_iobject_and_token.
        DATA(t134) = CAST zcl_lnt_iobject_and_token( t2 ).
        t133 = t134.
        t132 = t133->token.
        t131 = t132.
        t130 = t131.
        DATA t135 TYPE int8.
        DATA t136 TYPE REF TO zcl_lnt_position.
        DATA t137 TYPE REF TO zcl_lnt_position.
        DATA(t138) = CAST zcl_lnt_abstract_token( t130 ).
        t137 = t138->start.
        t136 = t137.
        DATA t139 TYPE int8.
        DATA(t140) = CAST zcl_lnt_position( t136 ).
        t139 = t140->row.
        t135 = t139.
        t129 = t135.
        t128 = |{ t129 }|.
        DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t141.
        t120 = t121->set( p0 = t128 p1 = t141 ).
      ENDIF.
      DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t144 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t145 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA(t146) = CAST zlnt_runtime_map__1966acad182d( me->filename_index ).
      DATA t147 TYPE string.
      DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t149 TYPE REF TO zcl_lnt_iobject_and_token.
      DATA(t150) = CAST zcl_lnt_iobject_and_token( t2 ).
      t149 = t150.
      t148 = t149->filename.
      t147 = t148->value.
      t145 = t146->get( p0 = t147 ).
      t144 = t145.
      DATA t151 TYPE string.
      DATA t152 TYPE int8.
      DATA t153 TYPE REF TO zcl_lnt_abstract_token.
      DATA t154 TYPE REF TO zcl_lnt_abstract_token.
      DATA t155 TYPE REF TO zcl_lnt_abstract_token.
      DATA t156 TYPE REF TO zcl_lnt_iobject_and_token.
      DATA(t157) = CAST zcl_lnt_iobject_and_token( t2 ).
      t156 = t157.
      t155 = t156->token.
      t154 = t155.
      t153 = t154.
      DATA t158 TYPE int8.
      DATA t159 TYPE REF TO zcl_lnt_position.
      DATA t160 TYPE REF TO zcl_lnt_position.
      DATA(t161) = CAST zcl_lnt_abstract_token( t153 ).
      t160 = t161->start.
      t159 = t160.
      DATA t162 TYPE int8.
      DATA(t163) = CAST zcl_lnt_position( t159 ).
      t162 = t163->row.
      t158 = t162.
      t152 = t158.
      t151 = |{ t152 }|.
      t143 = t144->get( p0 = t151 ).
      t142 = t143.
      DATA t164 TYPE REF TO zcl_lnt_iobject_and_token.
      DATA(t165) = CAST zcl_lnt_iobject_and_token( t2 ).
      t164 = t165.
      APPEND t164 TO t142->items.
    ENDIF.
  ENDMETHOD.
  METHOD clear_feba.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_object.
    DATA(t4) = CAST zif_lnt_object( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA(t6) = VALUE string( ).
    DATA t7 TYPE string.
    DATA t8 TYPE string.
    DATA(t9) = CAST zif_lnt_object( t3 ).
    t8 = t9->get_name(  ).
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
    DATA(t13) = CAST zif_lnt_object( t3 ).
    t12 = t13->get_type(  ).
    t11 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA t17 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA(t18) = CAST zlnt_runtime_map__1966acad182d( me->name_type_index ).
    DATA(t19) = t6.
    t17 = t18->get( p0 = t19 ).
    t16 = t17.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t20.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = CAST zlnt_runtime_map__8a73eae8287f( t16 ).
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
      DATA(t26) = CAST zlnt_runtime_map__8a73eae8287f( t16 ).
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
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    t32 = t33.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = CAST zlnt_runtime_arra_c22708faf2e3( t30 ).
    IF t36 IS INITIAL.
      t35 = abap_true.
    ENDIF.
    t34 = xsdbool( t35 = abap_false ).
    t29 = t34.
    IF t29 = abap_true.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
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
    LOOP AT t2->items INTO t41.
      t40 ?= t41.
      DATA(t42) = VALUE abap_bool( ).
      DATA(t43) = VALUE abap_bool( ).
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t45) = CAST zcl_lnt_iobject_and_token( t40 ).
      t44 = t45->filename.
      IF t44 IS BOUND.
        IF t44->has = abap_true.
          t43 = xsdbool( strlen( t44->value ) > 0 ).
        ENDIF.
      ENDIF.
      t42 = t43.
      IF t43 = abap_true.
        DATA t46 TYPE abap_bool.
        DATA t47 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t48) = CAST zcl_lnt_iobject_and_token( t40 ).
        t47 = t48->token.
        t46 = xsdbool( t47 IS BOUND ).
        t42 = t46.
      ENDIF.
      IF t42 = abap_true.
        DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t49.
        DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t50.
        DATA t51 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
        DATA t52 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
        DATA(t53) = CAST zlnt_runtime_map__1966acad182d( me->filename_index ).
        DATA t54 TYPE string.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t56) = CAST zcl_lnt_iobject_and_token( t40 ).
        t55 = t56->filename.
        t54 = t55->value.
        t52 = t53->get( p0 = t54 ).
        t51 = t52.
        DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t57.
        DATA(t58) = VALUE abap_bool( ).
        DATA(t59) = CAST zlnt_runtime_map__8a73eae8287f( t51 ).
        IF t59 IS INITIAL.
          t58 = abap_true.
        ENDIF.
        IF t58 = abap_true.
          DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t60.
          t57 = t60.
        ELSE.
          DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t62 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
          DATA(t63) = CAST zlnt_runtime_map__8a73eae8287f( t51 ).
          t62 = t63.
          DATA t64 TYPE string.
          DATA t65 TYPE int8.
          DATA t66 TYPE REF TO zcl_lnt_abstract_token.
          DATA t67 TYPE REF TO zcl_lnt_abstract_token.
          DATA t68 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t69) = CAST zcl_lnt_iobject_and_token( t40 ).
          t68 = t69->token.
          t67 = t68.
          t66 = t67.
          DATA t70 TYPE int8.
          DATA t71 TYPE REF TO zcl_lnt_position.
          DATA t72 TYPE REF TO zcl_lnt_position.
          DATA(t73) = CAST zcl_lnt_abstract_token( t66 ).
          t72 = t73->start.
          t71 = t72.
          DATA t74 TYPE int8.
          DATA(t75) = CAST zcl_lnt_position( t71 ).
          t74 = t75->row.
          t70 = t74.
          t65 = t70.
          t64 = |{ t65 }|.
          t61 = t62->get( p0 = t64 ).
          t57 = t61.
        ENDIF.
        t50 = t57.
        t49 = t50.
        DATA t76 TYPE abap_bool.
        DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t78) = CAST zlnt_runtime_arra_c22708faf2e3( t49 ).
        t77 = t78.
        t76 = xsdbool( t77 IS BOUND ).
        IF t76 = abap_true.
          DATA t79 TYPE REF TO zcl_lnt_iobject_and_token.
          DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t81) = CAST zlnt_runtime_arra_c22708faf2e3( t49 ).
          t80 = t81.
          DATA t82 TYPE REF TO object.
          t82 = t80->pop(  ).
          t79 ?= t82.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA(t83) = VALUE string( ).
    DATA t84 TYPE string.
    DATA t85 TYPE string.
    DATA(t86) = CAST zif_lnt_object( t1 ).
    t85 = t86->get_name(  ).
    DATA(t87) = strlen( t85 ).
    t84 = t85.
    IF t84 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t84 TO UPPER CASE.
    ELSE.
      t84 = zlnt_runtime_uppe_91169605024d=>full( t84 ).
    ENDIF.
    t83 = t84.
    DATA t88 TYPE string.
    DATA t89 TYPE string.
    DATA(t90) = CAST zif_lnt_object( t1 ).
    t89 = t90->get_type(  ).
    t88 = t89.
    DATA(t91) = VALUE abap_bool( ).
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA t94 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA(t95) = CAST zlnt_runtime_map__1966acad182d( me->name_type_index ).
    DATA(t96) = t83.
    t94 = t95->get( p0 = t96 ).
    t93 = t94.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t97.
    DATA(t98) = VALUE abap_bool( ).
    DATA(t99) = CAST zlnt_runtime_map__8a73eae8287f( t93 ).
    IF t99 IS INITIAL.
      t98 = abap_true.
    ENDIF.
    IF t98 = abap_true.
      DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t100.
      t97 = t100.
    ELSE.
      DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t102 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA(t103) = CAST zlnt_runtime_map__8a73eae8287f( t93 ).
      t102 = t103.
      DATA(t104) = t88.
      t101 = t102->get( p0 = t104 ).
      t97 = t101.
    ENDIF.
    t92 = t97.
    t91 = xsdbool( t92 IS BOUND ).
    IF t91 = abap_true.
      DATA t105 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t106 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t107 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA(t108) = CAST zlnt_runtime_map__1966acad182d( me->name_type_index ).
      DATA(t109) = t83.
      t107 = t108->get( p0 = t109 ).
      t106 = t107.
      DATA(t110) = t88.
      DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t111.
      t105 = t106->set( p0 = t110 p1 = t111 ).
    ENDIF.
  ENDMETHOD.
  METHOD list_by_filename.
    DATA(t1) = i_filename.
    DATA(t2) = i_line.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/ddic_references.ts:62|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD list_using.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA(t5) = CAST zif_lnt_object( t1 ).
    t4 = t5->get_name(  ).
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
    DATA(t9) = CAST zif_lnt_object( t1 ).
    t8 = t9->get_type(  ).
    t7 = t8.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA t13 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA(t14) = CAST zlnt_runtime_map__1966acad182d( me->name_type_index ).
    DATA(t15) = t2.
    t13 = t14->get( p0 = t15 ).
    t12 = t13.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = CAST zlnt_runtime_map__8a73eae8287f( t12 ).
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
      DATA(t22) = CAST zlnt_runtime_map__8a73eae8287f( t12 ).
      t21 = t22.
      DATA(t23) = t7.
      t20 = t21->get( p0 = t23 ).
      t16 = t20.
    ENDIF.
    t11 = t16.
    t10 = t11.
    DATA(t24) = VALUE abap_bool( ).
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t26) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
    t25 = t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    t27 = t28.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    IF t31 IS INITIAL.
      t30 = abap_true.
    ENDIF.
    t29 = xsdbool( t30 = abap_false ).
    t24 = t29.
    IF t24 = abap_true.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
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
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/ddic_references.ts:78|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1053_933feba7ea8b.
  ENDMETHOD.
  METHOD zif_lnt_ddic_references~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_ddic_references~set_using.
    me->set_using(  i_obj_1ed0 = i_obj_1ed0 i_using = i_using ).
  ENDMETHOD.
  METHOD zif_lnt_ddic_references~add_using.
    me->add_using(  i_obj_1ed0 = i_obj_1ed0 i_using = i_using ).
  ENDMETHOD.
  METHOD zif_lnt_ddic_references~clear_feba.
    me->clear_feba(  i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.
  METHOD zif_lnt_ddic_references~list_using.
    result = me->list_using(  i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.
  METHOD zif_lnt_ddic_references~list_by_filename.
    result = me->list_by_filename(  i_filename = i_filename i_line = i_line ).
  ENDMETHOD.
  METHOD zif_lnt_ddic_references~list_where_used.
    result = me->list_where_used(  i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.
ENDCLASS.
