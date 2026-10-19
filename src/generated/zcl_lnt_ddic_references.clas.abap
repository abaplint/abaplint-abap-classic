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
    me->name_type_index = NEW zlnt_runtime_map__1966acad182d( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nameTypeIndex`.
    me->filename_index = NEW zlnt_runtime_map__1966acad182d( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `filenameIndex`.
  ENDMETHOD.

  METHOD set_using.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_using.
    me->clear_feba( i_obj_1ed0 = t1 ).
    DATA t5 TYPE REF TO zcl_lnt_iobject_and_token.
    DATA t6 TYPE REF TO object.
    DATA(t7) = VALUE i( ).
    DO.
      t2->load( ).
      IF t7 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t2->items INDEX t7 + 1 INTO t6.
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
      me->add_using( i_obj_1ed0 = t1 i_using = t5 ).
    ENDDO.
  ENDMETHOD.

  METHOD add_using.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_using.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE string( ).
    DATA t11 TYPE string.
    DATA t12 TYPE string.
    t12 = t1->get_name( ).
    DATA(t14) = strlen( t12 ).
    t11 = t12.
    IF t11 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t11 TO UPPER CASE.
    ELSE.
      t11 = zlnt_runtime_uppe_91169605024d=>full( t11 ).
    ENDIF.
    t10 = t11.
    DATA t15 TYPE string.
    t15 = t1->get_type( ).
    DATA t20 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    t20 = me->name_type_index->get( p0 = t10 ).
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t20 IS INITIAL ) = abap_true.
      DATA t27 TYPE REF TO zlnt_runtime_map__1966acad182d.
      t27 = me->name_type_index->set( p0 = t10 p1 = NEW zlnt_runtime_map__8a73eae8287f( ) ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t36 = me->name_type_index->get( p0 = t10 )->get( p0 = t15 ).
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t36 IS INITIAL ) = abap_true.
      DATA t46 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t47 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      t47 = me->name_type_index->get( p0 = t10 ).
      DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t52.
      t46 = t47->set( p0 = t15 p1 = t52 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t53 = me->name_type_index->get( p0 = t10 )->get( p0 = t15 ).
    DATA t60 TYPE REF TO zcl_lnt_iobject_and_token.
    t60 = t2.
    t53->load( ).
    APPEND t60 TO t53->items.
    t53->save( ).
    DATA(t62) = VALUE abap_bool( ).
    DATA(t63) = VALUE abap_bool( ).
    DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t64 = t2->filename.
    IF t64 IS BOUND.
      IF t64->has = abap_true.
        t63 = xsdbool( strlen( t64->value ) > 0 ).
      ENDIF.
    ENDIF.
    t62 = t63.
    IF t63 = abap_true.
      DATA t68 TYPE REF TO zcl_lnt_abstract_token.
      t68 = t2->token.
      t62 = xsdbool( t68 IS BOUND ).
    ENDIF.
    IF t62 = abap_true.
      DATA t73 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t75 TYPE string.
      t75 = t2->filename->value.
      t73 = me->filename_index->get( p0 = t75 ).
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t73 IS INITIAL ) = abap_true.
        DATA t83 TYPE REF TO zlnt_runtime_map__1966acad182d.
        DATA t85 TYPE string.
        t85 = t2->filename->value.
        t83 = me->filename_index->set( p0 = t85 p1 = NEW zlnt_runtime_map__8a73eae8287f( ) ).
      ENDIF.
      DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t96 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t99 TYPE string.
      t99 = t2->filename->value.
      t96 = me->filename_index->get( p0 = t99 ).
      DATA t104 TYPE f.
      t104 = t2->token->start->row.
      IF t104 <> trunc( t104 ) OR t104 > range_safe_integer OR t104 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t116) = CONV int8( t104 ).
      t95 = t96->get( p0 = |{ t116 }| ).
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t95 IS INITIAL ) = abap_true.
        DATA t121 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
        DATA t122 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
        DATA t125 TYPE string.
        t125 = t2->filename->value.
        t122 = me->filename_index->get( p0 = t125 ).
        DATA(t129) = VALUE string( ).
        DATA t130 TYPE f.
        t130 = t2->token->start->row.
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
      DATA t146 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t149 TYPE string.
      t149 = t2->filename->value.
      t146 = me->filename_index->get( p0 = t149 ).
      DATA t154 TYPE f.
      t154 = t2->token->start->row.
      IF t154 <> trunc( t154 ) OR t154 > range_safe_integer OR t154 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t166) = CONV int8( t154 ).
      t144 = t146->get( p0 = |{ t166 }| ).
      DATA t167 TYPE REF TO zcl_lnt_iobject_and_token.
      t167 = t2.
      t144->load( ).
      APPEND t167 TO t144->items.
      t144->save( ).
    ENDIF.
  ENDMETHOD.

  METHOD clear_feba.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zif_lnt_object.
    t3 = t1.
    DATA(t6) = VALUE string( ).
    DATA t7 TYPE string.
    DATA t8 TYPE string.
    t8 = t3->get_name( ).
    DATA(t10) = strlen( t8 ).
    t7 = t8.
    IF t7 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t7 TO UPPER CASE.
    ELSE.
      t7 = zlnt_runtime_uppe_91169605024d=>full( t7 ).
    ENDIF.
    t6 = t7.
    DATA t12 TYPE string.
    t12 = t3->get_type( ).
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t16 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    t16 = me->name_type_index->get( p0 = t6 ).
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t16 IS INITIAL ) = abap_true.
    ELSE.
      t20 = t16->get( p0 = t12 ).
    ENDIF.
    t14 = t20.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t14 IS INITIAL ) = abap_false ) = abap_true.
      t28 = t14.
    ELSE.
      CREATE OBJECT t28.
    ENDIF.
    t2 = t28.
    DATA t40 TYPE REF TO zcl_lnt_iobject_and_token.
    DATA t41 TYPE REF TO object.
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
      t47 = t40->filename.
      IF t47 IS BOUND.
        IF t47->has = abap_true.
          t46 = xsdbool( strlen( t47->value ) > 0 ).
        ENDIF.
      ENDIF.
      t45 = t46.
      IF t46 = abap_true.
        DATA t50 TYPE REF TO zcl_lnt_abstract_token.
        t50 = t40->token.
        t45 = xsdbool( t50 IS BOUND ).
      ENDIF.
      IF t45 = abap_true.
        DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t52.
        DATA t54 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
        DATA t57 TYPE string.
        t57 = t40->filename->value.
        t54 = me->filename_index->get( p0 = t57 ).
        DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t60.
        IF xsdbool( t54 IS INITIAL ) = abap_true.
          CLEAR t60.
        ELSE.
          DATA t65 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
          t65 = t54.
          DATA t68 TYPE f.
          t68 = t40->token->start->row.
          IF t68 <> trunc( t68 ) OR t68 > range_safe_integer OR t68 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t79) = CONV int8( t68 ).
          t60 = t65->get( p0 = |{ t79 }| ).
        ENDIF.
        t52 = t60.
        DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t81 = t52.
        IF xsdbool( t81 IS BOUND ) = abap_true.
          DATA t83 TYPE REF TO zcl_lnt_iobject_and_token.
          CLEAR t83.
          DATA t86 TYPE REF TO object.
          t86 = t52->pop( ).
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
    t91 = t1->get_name( ).
    DATA(t93) = strlen( t91 ).
    t90 = t91.
    IF t90 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t90 TO UPPER CASE.
    ELSE.
      t90 = zlnt_runtime_uppe_91169605024d=>full( t90 ).
    ENDIF.
    t89 = t90.
    DATA t94 TYPE string.
    t94 = t1->get_type( ).
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t99 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    t99 = me->name_type_index->get( p0 = t89 ).
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t99 IS INITIAL ) = abap_true.
    ELSE.
      t103 = t99->get( p0 = t94 ).
    ENDIF.
    t98 = t103.
    IF xsdbool( t98 IS BOUND ) = abap_true.
      DATA t111 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      DATA t112 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      t112 = me->name_type_index->get( p0 = t89 ).
      DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t117.
      t111 = t112->set( p0 = t94 p1 = t117 ).
    ENDIF.
  ENDMETHOD.

  METHOD list_by_filename.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t2) = i_line.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    DATA(t9) = i_filename.
    t6 = me->filename_index->get( p0 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
      t15 = t6.
      IF t2 <> trunc( t2 ) OR t2 > range_safe_integer OR t2 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t19) = CONV int8( t2 ).
      t10 = t15->get( p0 = |{ t19 }| ).
    ENDIF.
    t4 = t10.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t4 IS BOUND ) = abap_true.
      t20 = t4.
    ELSE.
      CREATE OBJECT t20.
    ENDIF.
    result = t20.

  ENDMETHOD.

  METHOD list_using.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    t4 = t1->get_name( ).
    DATA(t6) = strlen( t4 ).
    t3 = t4.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    t2 = t3.
    DATA t8 TYPE string.
    t8 = t1->get_type( ).
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_map__8a73eae8287f.
    t12 = me->name_type_index->get( p0 = t2 ).
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t12 IS INITIAL ) = abap_true.
    ELSE.
      t16 = t12->get( p0 = t8 ).
    ENDIF.
    t10 = t16.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t10 IS INITIAL ) = abap_false ) = abap_true.
      result = t10.
      RETURN.
    ELSE.
      CREATE OBJECT result.

    ENDIF.
  ENDMETHOD.

  METHOD list_where_used.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA(t4) = VALUE string( ).
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    t6 = t1->get_name( ).
    DATA(t8) = strlen( t6 ).
    t5 = t6.
    IF t5 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t5 TO UPPER CASE.
    ELSE.
      t5 = zlnt_runtime_uppe_91169605024d=>full( t5 ).
    ENDIF.
    t4 = t5.
    DATA t9 TYPE string.
    t9 = t1->get_type( ).
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t12 = me->name_type_index->keys( ).
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
      t16 = me->name_type_index->get( p0 = t14 ).
      IF xsdbool( xsdbool( t16 IS INITIAL ) = abap_false ) = abap_true.
        DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t23 = t16->keys( ).
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
          t28 = me->name_type_index->get( p0 = t14 )->get( p0 = t26 ).
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
            t43 = t35->object_a393.
            t42 = xsdbool( t43 IS BOUND ).
            t41 = t42.
            IF t42 = abap_true.
              DATA t48 TYPE REF TO zif_lnt_object.
              t48 = t35->object_a393.
              t41 = xsdbool( t48->get_type( ) = t9 ).
            ENDIF.
            t40 = t41.
            IF t41 = abap_true.
              DATA t54 TYPE REF TO zif_lnt_object.
              t54 = t35->object_a393.
              t40 = xsdbool( t54->get_name( ) = t4 ).
            ENDIF.
            IF t40 = abap_true.
              DATA t58 TYPE REF TO zcl_lnt_shape_7c1b39e6.
              DATA t59 TYPE string.
              t59 = t26.
              DATA t61 TYPE string.
              t61 = t14.
              DATA t63 TYPE REF TO zcl_lnt_abstract_token.
              t63 = t35->token.
              DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t67 = t35->filename.
              t58 = NEW zcl_lnt_shape_7c1b39e6( i_type_9913 = t59 i_name = t61 i_token = t63 i_filename = t67 ).
              CREATE OBJECT t58->zlnt_view_ownkeys_b0e8086400eb.
              t58->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t69.
              t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t69 ).
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
              DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t74.
              t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t74 ).
              DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t76.
              IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t76 ).
              ENDIF.
              DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t78.
              IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = |token| p1 = t78 ).
              ENDIF.
              DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t80.
              IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t80 ).
              ENDIF.
              t2->load( ).
              APPEND t58 TO t2->items.
              t2->save( ).
            ENDIF.
          ENDDO.
        ENDDO.
      ENDIF.
    ENDDO.
    result = t2.

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
