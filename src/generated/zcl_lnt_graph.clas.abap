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
    DATA t1 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
    DATA t2 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
    DATA(t3) = NEW zlnt_runtime_map__1a1c43cd0638( ).
    t2 = t3.
    DATA(t4) = t2.
    t1 = t4.
    me->vertices_includename_index = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `verticesIncludenameIndex`.
    DATA t5 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
    DATA t6 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
    DATA(t7) = NEW zlnt_runtime_map__1a1c43cd0638( ).
    t6 = t7.
    DATA(t8) = t6.
    t5 = t8.
    me->vertices_filename_index = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `verticesFilenameIndex`.
    DATA t9 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
    DATA t10 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
    DATA(t11) = NEW zlnt_runtime_map__9f51cbbe9de8( ).
    t10 = t11.
    DATA(t12) = t10.
    t9 = t12.
    me->edges = t9.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `edges`.
  ENDMETHOD.

  METHOD add_vertex.
    DATA(t1) = i_vertex.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t5) = t1.
    t4 = t5->include_name.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t3.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ELSEIF t10->has = abap_false.
      t9 = abap_true.
    ENDIF.
    t8 = xsdbool( t9 = abap_false ).
    t2 = t8.
    IF t2 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
      CLEAR t11.
      DATA(t12) = me->vertices_includename_index.
      DATA t13 TYPE string.
      DATA t14 TYPE string.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t16) = t1.
      t15 = t16->include_name.
      t14 = t15->value.
      DATA(t17) = strlen( t14 ).
      t13 = t14.
      IF t13 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t13 TO UPPER CASE.
      ELSE.
        t13 = zlnt_runtime_uppe_91169605024d=>full( t13 ).
      ENDIF.
      DATA(t18) = t1.
      t11 = t12->set( p0 = t13 p1 = t18 ).
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
    CLEAR t19.
    DATA(t20) = me->vertices_filename_index.
    DATA t21 TYPE string.
    DATA t22 TYPE string.
    DATA(t23) = t1.
    t22 = t23->filename.
    DATA(t24) = strlen( t22 ).
    t21 = t22.
    IF t21 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t21 TO UPPER CASE.
    ELSE.
      t21 = zlnt_runtime_uppe_91169605024d=>full( t21 ).
    ENDIF.
    DATA(t25) = t1.
    t19 = t20->set( p0 = t21 p1 = t25 ).
  ENDMETHOD.

  METHOD find_vertex_via_includename.
    DATA(t1) = i_include_name.
    DATA t2 TYPE REF TO zcl_lnt_ivertex.
    CLEAR t2.
    DATA(t3) = me->vertices_includename_index.
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

  METHOD find_vertex_by_filename.
    DATA(t1) = i_filename.
    DATA t2 TYPE REF TO zcl_lnt_ivertex.
    CLEAR t2.
    DATA(t3) = me->vertices_filename_index.
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

  METHOD add_edge.
    DATA(t1) = i_from.
    DATA(t2) = i_to_filename.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t6) = me->edges.
    DATA t7 TYPE string.
    DATA(t8) = t1.
    t7 = t8->filename.
    t5 = t6->get( p0 = t7 ).
    t4 = t5.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t4.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    t3 = t11.
    IF t3 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
      DATA(t14) = me->edges.
      DATA t15 TYPE string.
      DATA(t16) = t1.
      t15 = t16->filename.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t17.
      t13 = t14->set( p0 = t15 p1 = t17 ).
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t20) = me->edges.
    DATA t21 TYPE string.
    DATA(t22) = t1.
    t21 = t22->filename.
    t19 = t20->get( p0 = t21 ).
    t18 = t19.
    DATA(t23) = t2.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
  ENDMETHOD.

  METHOD find_top.
    DATA(t1) = i_filename.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t7) = me->edges.
    DATA(t8) = t1.
    t6 = t7->get( p0 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA t10 TYPE abap_bool.
    DATA(t11) = t5.
    t10 = xsdbool( t11 IS BOUND ).
    IF t10 = abap_true.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t13) = t5.
      t12 = t13.
      t9 = t12.
    ELSE.
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t14.
      t9 = t14.
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
      DATA(t19) = t15.
      t18 = me->find_top( i_filename = t19 ).
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
        DATA(t25) = t2.
        DATA(t26) = t20.
        t25->load( ).
        APPEND t26 TO t25->items.
        t25->save( ).
      ENDDO.
      DATA t27 TYPE i.
      DATA(t28) = t2.
      t28->load( ).
      t27 = lines( t28->items ).
      t17 = t27.
    ENDDO.
    DATA t29 TYPE abap_bool.
    DATA t30 TYPE i.
    DATA(t31) = t2.
    t31->load( ).
    t30 = lines( t31->items ).
    DATA(t32) = 0.
    t29 = xsdbool( t30 = t32 ).
    IF t29 = abap_true.
      DATA t33 TYPE REF TO zcl_lnt_ivertex.
      CLEAR t33.
      DATA t34 TYPE REF TO zcl_lnt_ivertex.
      CLEAR t34.
      DATA t35 TYPE string.
      DATA(t36) = t1.
      t35 = t36.
      DATA t37 TYPE REF TO zcl_lnt_ivertex.
      CLEAR t37.
      DATA(t38) = me->vertices_filename_index.
      DATA t39 TYPE string.
      DATA(t40) = t35.
      DATA(t41) = strlen( t40 ).
      t39 = t40.
      IF t39 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t39 TO UPPER CASE.
      ELSE.
        t39 = zlnt_runtime_uppe_91169605024d=>full( t39 ).
      ENDIF.
      t37 = t38->get( p0 = t39 ).
      t34 = t37.
      t33 = t34.
      DATA(t42) = VALUE abap_bool( ).
      DATA t43 TYPE REF TO zcl_lnt_ivertex.
      DATA(t44) = t33.
      t43 = t44.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      t45 = t46.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = t43.
      IF t49 IS INITIAL.
        t48 = abap_true.
      ENDIF.
      t47 = xsdbool( t48 = abap_false ).
      t42 = t47.
      IF t42 = abap_true.
        DATA(t50) = t2.
        DATA t51 TYPE REF TO zcl_lnt_ivertex.
        DATA(t52) = t33.
        t51 = t52.
        t50->load( ).
        APPEND t51 TO t50->items.
        t50->save( ).
      ENDIF.
    ENDIF.
    DATA(t53) = t2.
    result = t53.

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
