* TS: src/abap/types/type_definitions.ts:4:1 TypeDefinitions
CLASS zcl_lnt_type_definitions DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_type_definitions.
    DATA list TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA map TYPE REF TO zlnt_runtime_map__d1f17afcc3e9.
    METHODS constructor IMPORTING i_list TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_all RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_by_name IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_type_definitions IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_list ).
    DATA t2 TYPE REF TO zlnt_runtime_map__d1f17afcc3e9.
    DATA t3 TYPE REF TO zlnt_runtime_map__d1f17afcc3e9.
    DATA(t4) = NEW zlnt_runtime_map__d1f17afcc3e9( ).
    t3 = t4.
    DATA(t5) = CAST zlnt_runtime_map__d1f17afcc3e9( t3 ).
    t2 = t5.
    me->map = t2.
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    me->list = t6.
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t8 TYPE REF TO zcl_lnt_type_definitions_entry.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    LOOP AT t7->items INTO t9.
      t8 ?= t9.
      DATA t10 TYPE REF TO zlnt_runtime_map__d1f17afcc3e9.
      CLEAR t10.
      DATA(t11) = CAST zlnt_runtime_map__d1f17afcc3e9( me->map ).
      DATA(t12) = VALUE string( ).
      DATA(t13) = VALUE string( ).
      DATA t14 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t15 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t16) = CAST zcl_lnt_type_definitions_entry( t8 ).
      t15 = t16->type_cba0.
      t14 = t15.
      DATA(t17) = VALUE string( ).
      DATA t18 TYPE string.
      DATA t19 TYPE string.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t22) = CAST zcl_lnt_fi_identifier( t14 ).
      t21 = t22->token.
      t20 = t21.
      DATA t23 TYPE string.
      DATA(t24) = CAST zcl_lnt_abstract_token( t20 ).
      t23 = t24->str.
      t19 = t23.
      t18 = t19.
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = VALUE string( ).
      DATA(t27) = t18.
      DATA(t28) = 0.
      DATA(t29) = 1.
      DATA(t30) = strlen( t27 ).
      IF t28 < 0.
        t28 = t28 + t30.
        IF t28 < 0.
          t28 = 0.
        ENDIF.
      ENDIF.
      IF t28 > t30 OR t29 <= 0.
        CLEAR t26.
      ELSE.
        IF t29 > t30 - t28.
          t29 = t30 - t28.
        ENDIF.
        t26 = t27+t28(t29).
      ENDIF.
      DATA(t31) = |!|.
      t25 = xsdbool( t26 = t31 ).
      IF t25 = abap_true.
        DATA(t32) = VALUE string( ).
        DATA t33 TYPE string.
        DATA(t34) = t18.
        t33 = t34.
        DATA(t35) = VALUE string( ).
        DATA(t36) = t33.
        DATA(t37) = 1.
        DATA t38 TYPE i.
        DATA(t39) = t33.
        DATA(t40) = strlen( t39 ).
        t38 = t40.
        DATA(t41) = strlen( t36 ).
        IF t37 < 0.
          t37 = t37 + t41.
          IF t37 < 0.
            t37 = 0.
          ENDIF.
        ENDIF.
        IF t37 > t41 OR t38 <= 0.
          CLEAR t35.
        ELSE.
          IF t38 > t41 - t37.
            t38 = t41 - t37.
          ENDIF.
          t35 = t36+t37(t38).
        ENDIF.
        t32 = t35.
        t18 = t32.
      ENDIF.
      DATA(t42) = t18.
      t17 = t42.
      t13 = t17.
      DATA(t43) = strlen( t13 ).
      t12 = t13.
      IF t12 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t12 TO UPPER CASE.
      ELSE.
        t12 = zlnt_runtime_uppe_91169605024d=>full( t12 ).
      ENDIF.
      DATA(t44) = CAST zcl_lnt_type_definitions_entry( t8 ).
      t10 = t11->set( p0 = t12 p1 = t44 ).
    ENDLOOP.
  ENDMETHOD.

  METHOD get_all.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->list ).
    result = t1.

  ENDMETHOD.

  METHOD get_by_name.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_type_definitions_entry.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_type_definitions_entry.
    CLEAR t4.
    DATA(t5) = CAST zlnt_runtime_map__d1f17afcc3e9( me->map ).
    DATA t6 TYPE string.
    DATA(t7) = t1.
    DATA(t8) = strlen( t7 ).
    t6 = t7.
    IF t6 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t6 TO UPPER CASE.
    ELSE.
      t6 = zlnt_runtime_uppe_91169605024d=>full( t6 ).
    ENDIF.
    t4 = t5->get( p0 = t6 ).
    t3 = t4.
    DATA t9 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = CAST zcl_lnt_type_definitions_entry( t3 ).
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    IF t10 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t12.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t14 TYPE REF TO zcl_lnt_type_definitions_entry.
      DATA(t15) = CAST zcl_lnt_type_definitions_entry( t3 ).
      t14 = t15.
      t13 = t14->type_cba0.
      t9 = t13.
    ENDIF.
    t2 = t9.
    result = t2.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1044_85fc144000cd.
  ENDMETHOD.

  METHOD zif_lnt_type_definitions~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_type_definitions~get_all.
    result = me->get_all( ).
  ENDMETHOD.

  METHOD zif_lnt_type_definitions~get_by_name.
    result = me->get_by_name( i_name = i_name ).
  ENDMETHOD.
ENDCLASS.
