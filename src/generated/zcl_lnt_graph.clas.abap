* TS: src/utils/include_graph.ts:34:1 Graph
CLASS zcl_lnt_graph DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_graph IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
    DATA t2 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
    DATA(t3) = NEW zlnt_runtime_map__1a1c43cd0638(  ).
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_map__1a1c43cd0638( t2 ).
    t1 = t4.
    me->vertices_includename_index = t1.
    DATA t5 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
    DATA t6 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
    DATA(t7) = NEW zlnt_runtime_map__1a1c43cd0638(  ).
    t6 = t7.
    DATA(t8) = CAST zlnt_runtime_map__1a1c43cd0638( t6 ).
    t5 = t8.
    me->vertices_filename_index = t5.
    DATA t9 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
    DATA t10 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
    DATA(t11) = NEW zlnt_runtime_map__9f51cbbe9de8(  ).
    t10 = t11.
    DATA(t12) = CAST zlnt_runtime_map__9f51cbbe9de8( t10 ).
    t9 = t12.
    me->edges = t9.
  ENDMETHOD.
  METHOD add_vertex.
    DATA(t1) = CAST zcl_lnt_ivertex( i_vertex ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t5) = CAST zcl_lnt_ivertex( t1 ).
    t4 = t5->include_name.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
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
      DATA(t12) = CAST zlnt_runtime_map__1a1c43cd0638( me->vertices_includename_index ).
      DATA t13 TYPE string.
      DATA t14 TYPE string.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t16) = CAST zcl_lnt_ivertex( t1 ).
      t15 = t16->include_name.
      t14 = t15->value.
      DATA(t17) = strlen( t14 ).
      t13 = t14.
      IF t13 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t13 TO UPPER CASE.
      ELSE.
        t13 = zlnt_runtime_uppe_91169605024d=>full( t13 ).
      ENDIF.
      DATA(t18) = CAST zcl_lnt_ivertex( t1 ).
      t11 = t12->set( p0 = t13 p1 = t18 ).
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
    CLEAR t19.
    DATA(t20) = CAST zlnt_runtime_map__1a1c43cd0638( me->vertices_filename_index ).
    DATA t21 TYPE string.
    DATA t22 TYPE string.
    DATA(t23) = CAST zcl_lnt_ivertex( t1 ).
    t22 = t23->filename.
    DATA(t24) = strlen( t22 ).
    t21 = t22.
    IF t21 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t21 TO UPPER CASE.
    ELSE.
      t21 = zlnt_runtime_uppe_91169605024d=>full( t21 ).
    ENDIF.
    DATA(t25) = CAST zcl_lnt_ivertex( t1 ).
    t19 = t20->set( p0 = t21 p1 = t25 ).
  ENDMETHOD.
  METHOD find_vertex_via_includename.
    DATA(t1) = i_include_name.
    DATA t2 TYPE REF TO zcl_lnt_ivertex.
    CLEAR t2.
    DATA(t3) = CAST zlnt_runtime_map__1a1c43cd0638( me->vertices_includename_index ).
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
    DATA(t3) = CAST zlnt_runtime_map__1a1c43cd0638( me->vertices_filename_index ).
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
    DATA(t1) = CAST zcl_lnt_ivertex( i_from ).
    DATA(t2) = i_to_filename.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/utils/include_graph.ts:60|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
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
    DATA(t7) = CAST zlnt_runtime_map__9f51cbbe9de8( me->edges ).
    DATA(t8) = t1.
    t6 = t7->get( p0 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA t10 TYPE abap_bool.
    DATA(t11) = CAST zlnt_runtime_arra_8ecd6afe19e0( t5 ).
    t10 = xsdbool( t11 IS BOUND ).
    IF t10 = abap_true.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t13) = CAST zlnt_runtime_arra_8ecd6afe19e0( t5 ).
      t12 = t13.
      t9 = t12.
    ELSE.
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t14.
      t9 = t14.
    ENDIF.
    t4 = t9.
    DATA(t15) = VALUE string( ).
    LOOP AT t4->items INTO t15.
      DATA(t16) = VALUE i( ).
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t18) = t15.
      t17 = me->find_top( i_filename = t18 ).
      DATA t19 TYPE REF TO zcl_lnt_ivertex.
      CLEAR t19.
      DATA t20 TYPE REF TO object.
      CLEAR t20.
      LOOP AT t17->items INTO t20.
        t19 ?= t20.
        DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA(t22) = CAST zcl_lnt_ivertex( t19 ).
        APPEND t22 TO t21->items.
      ENDLOOP.
      DATA t23 TYPE i.
      DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      t23 = lines( t24->items ).
      t16 = t23.
    ENDLOOP.
    DATA t25 TYPE abap_bool.
    DATA t26 TYPE i.
    DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    t26 = lines( t27->items ).
    DATA(t28) = 0.
    t25 = xsdbool( t26 = t28 ).
    IF t25 = abap_true.
      DATA t29 TYPE REF TO zcl_lnt_ivertex.
      CLEAR t29.
      DATA t30 TYPE REF TO zcl_lnt_ivertex.
      CLEAR t30.
      DATA t31 TYPE string.
      DATA(t32) = t1.
      t31 = t32.
      DATA t33 TYPE REF TO zcl_lnt_ivertex.
      CLEAR t33.
      DATA(t34) = CAST zlnt_runtime_map__1a1c43cd0638( me->vertices_filename_index ).
      DATA t35 TYPE string.
      DATA(t36) = t31.
      DATA(t37) = strlen( t36 ).
      t35 = t36.
      IF t35 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t35 TO UPPER CASE.
      ELSE.
        t35 = zlnt_runtime_uppe_91169605024d=>full( t35 ).
      ENDIF.
      t33 = t34->get( p0 = t35 ).
      t30 = t33.
      t29 = t30.
      DATA(t38) = VALUE abap_bool( ).
      DATA t39 TYPE REF TO zcl_lnt_ivertex.
      DATA(t40) = CAST zcl_lnt_ivertex( t29 ).
      t39 = t40.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      t41 = t42.
      DATA(t43) = VALUE abap_bool( ).
      DATA(t44) = VALUE abap_bool( ).
      DATA(t45) = CAST zcl_lnt_ivertex( t39 ).
      IF t45 IS INITIAL.
        t44 = abap_true.
      ENDIF.
      t43 = xsdbool( t44 = abap_false ).
      t38 = t43.
      IF t38 = abap_true.
        DATA(t46) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t47 TYPE REF TO zcl_lnt_ivertex.
        DATA(t48) = CAST zcl_lnt_ivertex( t29 ).
        t47 = t48.
        APPEND t47 TO t46->items.
      ENDIF.
    ENDIF.
    DATA(t49) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t49.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1692_29dfda0dd844.
  ENDMETHOD.
ENDCLASS.
