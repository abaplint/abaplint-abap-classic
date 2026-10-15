* TS: src/abap/types/type_definitions.ts:4:1 TypeDefinitions
CLASS zcl_lnt_type_definitions DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_type_definitions.
    DATA list TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA map TYPE REF TO zlnt_runtime_map__d1f17afcc3e9.
    METHODS constructor IMPORTING i_list TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_all RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_by_name IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_type_definitions IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_list.
    DATA t2 TYPE REF TO zlnt_runtime_map__d1f17afcc3e9.
    DATA t3 TYPE REF TO zlnt_runtime_map__d1f17afcc3e9.
    DATA(t4) = NEW zlnt_runtime_map__d1f17afcc3e9( ).
    t3 = t4.
    DATA(t5) = t3.
    t2 = t5.
    me->map = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `map`.
    DATA(t6) = t1.
    me->list = t6.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `list`.
    DATA(t7) = t1.
    DATA t8 TYPE REF TO zcl_lnt_type_definitions_entry.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t7->load( ).
      IF t10 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t7->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA t13 TYPE REF TO zlnt_runtime_map__d1f17afcc3e9.
      CLEAR t13.
      DATA(t14) = me->map.
      DATA(t15) = VALUE string( ).
      DATA(t16) = VALUE string( ).
      DATA t17 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t18 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t19) = t8.
      t18 = t19->type_cba0.
      t17 = t18.
      DATA(t20) = VALUE string( ).
      DATA t21 TYPE string.
      DATA t22 TYPE string.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      DATA t24 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t25) = t17.
      t24 = t25->token.
      t23 = t24.
      DATA t26 TYPE string.
      DATA(t27) = t23.
      t26 = t27->str.
      t22 = t26.
      t21 = t22.
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = VALUE string( ).
      DATA(t30) = t21.
      DATA(t31) = 0.
      DATA(t32) = 1.
      DATA(t33) = strlen( t30 ).
      IF t31 < 0.
        t31 = t31 + t33.
        IF t31 < 0.
          t31 = 0.
        ENDIF.
      ENDIF.
      IF t31 > t33 OR t32 <= 0.
        CLEAR t29.
      ELSE.
        IF t32 > t33 - t31.
          t32 = t33 - t31.
        ENDIF.
        t29 = t30+t31(t32).
      ENDIF.
      DATA(t34) = |!|.
      t28 = xsdbool( t29 = t34 ).
      IF t28 = abap_true.
        DATA(t35) = VALUE string( ).
        DATA t36 TYPE string.
        DATA(t37) = t21.
        t36 = t37.
        DATA(t38) = VALUE string( ).
        DATA(t39) = t36.
        DATA(t40) = 1.
        DATA t41 TYPE i.
        DATA(t42) = t36.
        DATA(t43) = strlen( t42 ).
        t41 = t43.
        DATA(t44) = strlen( t39 ).
        IF t40 < 0.
          t40 = t40 + t44.
          IF t40 < 0.
            t40 = 0.
          ENDIF.
        ENDIF.
        IF t40 > t44 OR t41 <= 0.
          CLEAR t38.
        ELSE.
          IF t41 > t44 - t40.
            t41 = t44 - t40.
          ENDIF.
          t38 = t39+t40(t41).
        ENDIF.
        t35 = t38.
        t21 = t35.
      ENDIF.
      DATA(t45) = t21.
      t20 = t45.
      t16 = t20.
      DATA(t46) = strlen( t16 ).
      t15 = t16.
      IF t15 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t15 TO UPPER CASE.
      ELSE.
        t15 = zlnt_runtime_uppe_91169605024d=>full( t15 ).
      ENDIF.
      DATA(t47) = t8.
      t13 = t14->set( p0 = t15 p1 = t47 ).
    ENDDO.
  ENDMETHOD.

  METHOD get_all.
    DATA(t1) = me->list.
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
    DATA(t5) = me->map.
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
    DATA(t11) = t3.
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
      DATA(t15) = t3.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1066_3fb2b9a19997.
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
