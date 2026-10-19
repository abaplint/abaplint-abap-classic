* TS: src/abap/2_statements/expand_macros.ts:18:1 Macros
CLASS zcl_lnt_macros DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA macros TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
    METHODS constructor IMPORTING i_global_macros_5535 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS add_macro IMPORTING i_name TYPE string i_contents TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_filename TYPE string.
    METHODS get_contents IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_macro_names RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS is_macro IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_macro_filename IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_macros IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_global_macros_5535.
    me->macros = NEW zlnt_runtime_map__755fcb8e49f3( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `macros`.
    DATA(t7) = VALUE string( ).
    t1->dense( ).
    DATA(t8) = VALUE i( ).
    DO.
      t1->load( ).
      IF t8 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t1->items INDEX t8 + 1 INTO t7.
      IF t1->has( t8 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
      CLEAR t9.
      DATA(t10) = me->macros.
      DATA t11 TYPE string.
      DATA(t13) = strlen( t7 ).
      t11 = t7.
      IF t11 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t11 TO UPPER CASE.
      ELSE.
        t11 = zlnt_runtime_uppe_91169605024d=>full( t11 ).
      ENDIF.
      DATA t14 TYPE REF TO zcl_lnt_shape_9d228663.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t15.
      CREATE OBJECT t15.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t14 = NEW zcl_lnt_shape_9d228663( i_statements = t15 i_filename = t20 ).
      CREATE OBJECT t14->zlnt_view_ownkeys_b0e8086400eb.
      t14->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      t14->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `statements` p1 = t22 ).
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      IF t14->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t14->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t23 ).
      ENDIF.
      CREATE OBJECT t14->zlnt_json_ownkeys_70e5fd461788.
      t14->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      t14->zlnt_json_ownkeys_70e5fd461788->put( p0 = |statements| p1 = t25 ).
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      IF t14->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t14->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t27 ).
      ENDIF.
      t9 = t10->set( p0 = t11 p1 = t14 ).
    ENDDO.
  ENDMETHOD.

  METHOD add_macro.
    DATA(t1) = i_name.
    DATA(t2) = i_contents.
    DATA(t3) = i_filename.
    DATA t5 TYPE string.
    t5 = t1.
    DATA(t7) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zcl_lnt_shape_9d228663.
    DATA(t10) = me->macros.
    DATA t11 TYPE string.
    DATA(t13) = strlen( t5 ).
    t11 = t5.
    IF t11 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t11 TO UPPER CASE.
    ELSE.
      t11 = zlnt_runtime_uppe_91169605024d=>full( t11 ).
    ENDIF.
    t9 = t10->get( p0 = t11 ).
    IF xsdbool( t9 IS BOUND ) = abap_true.
      t7 = abap_true.
    ELSE.
      t7 = abap_false.
    ENDIF.
    IF t7 = abap_true.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
    DATA(t17) = me->macros.
    DATA t18 TYPE string.
    DATA(t20) = strlen( t1 ).
    t18 = t1.
    IF t18 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t18 TO UPPER CASE.
    ELSE.
      t18 = zlnt_runtime_uppe_91169605024d=>full( t18 ).
    ENDIF.
    DATA t21 TYPE REF TO zcl_lnt_shape_9d228663.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t22 = t2.
    DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t31->has = abap_true.
    t31->value = t3.
    t21 = NEW zcl_lnt_shape_9d228663( i_statements = t22 i_filename = t31 ).
    CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
    t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `statements` p1 = t33 ).
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t34 ).
    ENDIF.
    CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
    t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |statements| p1 = t36 ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t38 ).
    ENDIF.
    t16 = t17->set( p0 = t18 p1 = t21 ).
  ENDMETHOD.

  METHOD get_contents.
    DATA(t1) = i_name.
    DATA(t7) = me->macros.
    DATA t8 TYPE string.
    DATA(t10) = strlen( t1 ).
    t8 = t1.
    IF t8 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t8 TO UPPER CASE.
    ELSE.
      t8 = zlnt_runtime_uppe_91169605024d=>full( t8 ).
    ENDIF.
    result = t7->get( p0 = t8 )->statements.

  ENDMETHOD.

  METHOD list_macro_names.
    result = me->macros->keys( ).

  ENDMETHOD.

  METHOD is_macro.
    DATA(t1) = i_name.
    DATA t3 TYPE REF TO zcl_lnt_shape_9d228663.
    DATA(t4) = me->macros.
    DATA t5 TYPE string.
    DATA(t7) = strlen( t1 ).
    t5 = t1.
    IF t5 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t5 TO UPPER CASE.
    ELSE.
      t5 = zlnt_runtime_uppe_91169605024d=>full( t5 ).
    ENDIF.
    t3 = t4->get( p0 = t5 ).
    IF xsdbool( t3 IS BOUND ) = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    result = abap_false.

  ENDMETHOD.

  METHOD get_macro_filename.
    DATA(t1) = i_name.
    DATA(t5) = me->macros.
    DATA t6 TYPE string.
    DATA(t8) = strlen( t1 ).
    t6 = t1.
    IF t6 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t6 TO UPPER CASE.
    ELSE.
      t6 = zlnt_runtime_uppe_91169605024d=>full( t6 ).
    ENDIF.
    result = t5->get( p0 = t6 )->filename.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d84_6c3754131a0578.
  ENDMETHOD.
ENDCLASS.
