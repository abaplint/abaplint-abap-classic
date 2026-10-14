* TS: src/abap/2_statements/expand_macros.ts:18:1 Macros
CLASS zcl_lnt_macros DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA macros TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
    METHODS constructor IMPORTING i_global_macros_5535 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS add_macro IMPORTING i_name TYPE string i_contents TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_filename TYPE string.
    METHODS get_contents IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_macro_names RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS is_macro IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_macro_filename IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_macros IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_global_macros_5535 ).
    DATA t2 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
    DATA t3 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
    DATA(t4) = NEW zlnt_runtime_map__755fcb8e49f3(  ).
    t3 = t4.
    DATA(t5) = CAST zlnt_runtime_map__755fcb8e49f3( t3 ).
    t2 = t5.
    me->macros = t2.
    DATA(t6) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1 ).
    DATA(t7) = VALUE string( ).
    LOOP AT t6->items INTO t7.
      DATA t8 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
      CLEAR t8.
      DATA(t9) = CAST zlnt_runtime_map__755fcb8e49f3( me->macros ).
      DATA t10 TYPE string.
      DATA(t11) = t7.
      DATA(t12) = strlen( t11 ).
      t10 = t11.
      IF t10 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t10 TO UPPER CASE.
      ELSE.
        t10 = zlnt_runtime_uppe_91169605024d=>full( t10 ).
      ENDIF.
      DATA t13 TYPE REF TO zcl_lnt_shape_9d228663.
      CLEAR t13.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t14.
      DATA(t15) = abap_true.
      IF t15 = abap_true.
        DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t16.
        t14 = t16.
      ELSE.
        DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t17.
        t14 = t17.
      ENDIF.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      t13 = NEW zcl_lnt_shape_9d228663( i_statements = t14 i_filename = t18 ).
      t8 = t9->set( p0 = t10 p1 = t13 ).
    ENDLOOP.
  ENDMETHOD.
  METHOD add_macro.
    DATA(t1) = i_name.
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_contents ).
    DATA(t3) = i_filename.
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/abap/2_statements/expand_macros.ts:34|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD get_contents.
    DATA(t1) = i_name.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/2_statements/expand_macros.ts:44|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD list_macro_names.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/expand_macros.ts:48|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD is_macro.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_shape_9d228663.
    CLEAR t3.
    DATA(t4) = CAST zlnt_runtime_map__755fcb8e49f3( me->macros ).
    DATA t5 TYPE string.
    DATA(t6) = t1.
    DATA(t7) = strlen( t6 ).
    t5 = t6.
    IF t5 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t5 TO UPPER CASE.
    ELSE.
      t5 = zlnt_runtime_uppe_91169605024d=>full( t5 ).
    ENDIF.
    t3 = t4->get( p0 = t5 ).
    t2 = xsdbool( t3 IS BOUND ).
    IF t2 = abap_true.
      DATA(t8) = abap_true.
      result = t8.
      RETURN.
    ENDIF.
    DATA(t9) = abap_false.
    result = t9.

  ENDMETHOD.
  METHOD get_macro_filename.
    DATA(t1) = i_name.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/2_statements/expand_macros.ts:59|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d82_3e282ab4800467.
  ENDMETHOD.
ENDCLASS.
