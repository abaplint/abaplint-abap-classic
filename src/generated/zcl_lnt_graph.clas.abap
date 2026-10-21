* TS: src/utils/include_graph.ts:34:1 Graph
CLASS zcl_lnt_graph DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA vertices_includename_index TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
    DATA vertices_filename_index TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
    DATA edges TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
    METHODS constructor.
    METHODS add_vertex IMPORTING i_vertex TYPE REF TO zcl_lnt_ivertex.
    METHODS find_vertex_via_includename IMPORTING i_include_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_ivertex.
    METHODS find_vertex_by_filename IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_ivertex.
    METHODS add_edge IMPORTING i_from TYPE REF TO zcl_lnt_ivertex i_to_filename TYPE string.
    METHODS find_top IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_graph IMPLEMENTATION.
  METHOD constructor.
    me->vertices_includename_index = NEW zlnt_runtime_map__1a1c43cd0638( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `verticesIncludenameIndex`.
    me->vertices_filename_index = NEW zlnt_runtime_map__1a1c43cd0638( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `verticesFilenameIndex`.
    me->edges = NEW zlnt_runtime_map__9f51cbbe9de8( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `edges`.
  ENDMETHOD.

  METHOD add_vertex.
    DATA(t1) = i_vertex.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1->include_name.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t9) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t9 = abap_true.
    ELSEIF t3->has = abap_false.
      t9 = abap_true.
    ENDIF.
    IF xsdbool( t9 = abap_false ) = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
      DATA(t12) = me->vertices_includename_index.
      DATA t13 TYPE string.
      DATA t14 TYPE string.
      t14 = t1->include_name->value.
      DATA(t17) = strlen( t14 ).
      t13 = t14.
      IF t13 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t13 TO UPPER CASE.
      ELSE.
        t13 = zlnt_runtime_uppe_91169605024d=>full( t13 ).
      ENDIF.
      t11 = t12->set( p0 = t13 p1 = t1 ).
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
    DATA(t20) = me->vertices_filename_index.
    DATA t21 TYPE string.
    DATA t22 TYPE string.
    t22 = t1->filename.
    DATA(t24) = strlen( t22 ).
    t21 = t22.
    IF t21 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t21 TO UPPER CASE.
    ELSE.
      t21 = zlnt_runtime_uppe_91169605024d=>full( t21 ).
    ENDIF.
    t19 = t20->set( p0 = t21 p1 = t1 ).
  ENDMETHOD.

  METHOD find_vertex_via_includename.
    DATA(t1) = i_include_name.
    DATA(t3) = me->vertices_includename_index.
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

  METHOD find_vertex_by_filename.
    DATA(t1) = i_filename.
    DATA(t3) = me->vertices_filename_index.
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

  METHOD add_edge.
    DATA(t1) = i_from.
    DATA(t2) = i_to_filename.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t7 TYPE string.
    t7 = t1->filename.
    t5 = me->edges->get( p0 = t7 ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
      DATA(t14) = me->edges.
      DATA t15 TYPE string.
      t15 = t1->filename.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t17.
      t13 = t14->set( p0 = t15 p1 = t17 ).
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t21 TYPE string.
    t21 = t1->filename.
    t18 = me->edges->get( p0 = t21 ).
    t18->load( ).
    APPEND t2 TO t18->items.
    t18->save( ).
  ENDMETHOD.

  METHOD find_top.
    DATA(t1) = i_filename.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t5 = me->edges->get( p0 = t1 ).
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    IF xsdbool( t5 IS BOUND ) = abap_true.
      t9 = t5.
    ELSE.
      CREATE OBJECT t9.
    ENDIF.
    t4 = t9.
    DATA(t15) = VALUE string( ).
    t4->dense( ).
    DATA(t16) = VALUE i( ).
    DO.
      t4->load( ).
      IF t16 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t15.
      READ TABLE t4->items INDEX t16 + 1 INTO t15.
      IF t4->has( t16 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t16 = t16 + 1.
      DATA(t17) = VALUE i( ).
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t18 = me->find_top( i_filename = t15 ).
      DATA t20 TYPE REF TO zcl_lnt_ivertex.
      CLEAR t20.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      DATA(t22) = VALUE i( ).
      DO.
        t18->load( ).
        IF t22 >= lines( t18->items ).
          EXIT.
        ENDIF.
        CLEAR t21.
        READ TABLE t18->items INDEX t22 + 1 INTO t21.
        t22 = t22 + 1.
        DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t23.
        CLEAR t20.
        IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t23 ?= t21.
          DATA t24 TYPE REF TO object.
          t24 = t23->as_ref( ).
          t20 ?= t24.
        ELSE.
          t20 ?= t21.
        ENDIF.
        t2->load( ).
        APPEND t20 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t17 = lines( t2->items ).
    ENDDO.
    t2->load( ).
    IF xsdbool( lines( t2->items ) = 0 ) = abap_true.
      DATA t33 TYPE REF TO zcl_lnt_ivertex.
      DATA t35 TYPE string.
      t35 = t1.
      DATA(t38) = me->vertices_filename_index.
      DATA t39 TYPE string.
      DATA(t41) = strlen( t35 ).
      t39 = t35.
      IF t39 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t39 TO UPPER CASE.
      ELSE.
        t39 = zlnt_runtime_uppe_91169605024d=>full( t39 ).
      ENDIF.
      t33 = t38->get( p0 = t39 ).
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( xsdbool( t33 IS INITIAL ) = abap_false ) = abap_true.
        DATA t51 TYPE REF TO zcl_lnt_ivertex.
        t51 = t33.
        t2->load( ).
        APPEND t51 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1791_3181ca2a0cee.
  ENDMETHOD.
ENDCLASS.
