* TS: src/utils/name_validator.ts:3:1 NameValidator
CLASS zcl_lnt_name_validator DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS violates_rule IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_pattern TYPE REF TO zlnt_runtime_rege_5a210f82384e i_params_4c59 TYPE REF TO zcl_lnt_naming_rule_config RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_name_validator IMPLEMENTATION.
  METHOD violates_rule.
    DATA(t1) = i_name.
    DATA(t2) = i_pattern.
    DATA(t3) = i_params_4c59.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t6 = t3->zlnt_view_read_sr_7cd1e1e70d45( ).
    t5 = xsdbool( t6 IS BOUND ).
    t4 = t5.
    IF t5 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t10 = t3->zlnt_view_read_sr_7cd1e1e70d45( ).
      DATA t13 TYPE string.
      DATA t14 TYPE string.
      t14 = t1->value.
      DATA(t16) = strlen( t14 ).
      t13 = t14.
      IF t13 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t13 TO UPPER CASE.
      ELSE.
        t13 = zlnt_runtime_uppe_91169605024d=>full( t13 ).
      ENDIF.
      t4 = xsdbool( t10->indexof( p0 = t13 ) >= 0 ).
    ENDIF.
    IF t4 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t20 = t3->zlnt_view_read_sr_92fa7b522e13( ).
    DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    IF xsdbool( t20 IS BOUND ) = abap_true.
      t23 = t20.
    ELSE.
      CREATE OBJECT t23.
    ENDIF.
    t19 = t23.
    DATA(t29) = VALUE string( ).
    t19->dense( ).
    DATA(t30) = VALUE i( ).
    DO.
      t19->load( ).
      IF t30 >= lines( t19->items ).
        EXIT.
      ENDIF.
      CLEAR t29.
      READ TABLE t19->items INDEX t30 + 1 INTO t29.
      IF t19->has( t30 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t30 = t30 + 1.
      DATA t32 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t32.
      CREATE OBJECT t32 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t29 flags = |i|.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t36 = t1.
      DATA(t38) = VALUE string( ).
      DATA(t39) = VALUE abap_bool( ).
      IF t36 IS INITIAL.
        t39 = abap_true.
      ELSEIF t36->has = abap_false.
        t39 = abap_true.
      ENDIF.
      IF t39 = abap_true.
        t38 = |undefined|.
      ELSE.
        t38 = t36->value.
      ENDIF.
      IF t32->test( p0 = t38 ) = abap_true.
        result = abap_false.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t45) = VALUE abap_bool( ).
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = VALUE abap_bool( ).
    DATA(t48) = VALUE abap_bool( ).
    DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t49 = t3->zlnt_view_read_sr_ef452f77fd06( ).
    IF t49 IS BOUND.
      IF t49->has = abap_true.
        t48 = xsdbool( strlen( t49->value ) > 0 ).
      ENDIF.
    ENDIF.
    t47 = xsdbool( t48 = abap_false ).
    t46 = t47.
    IF t47 = abap_false.
      DATA t52 TYPE string.
      t52 = t3->zlnt_view_read_sr_ef452f77fd06( )->value.
      t46 = xsdbool( t52 = |required| ).
    ENDIF.
    IF t46 = abap_true.
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t60 = t1.
      DATA(t62) = VALUE string( ).
      DATA(t63) = VALUE abap_bool( ).
      IF t60 IS INITIAL.
        t63 = abap_true.
      ELSEIF t60->has = abap_false.
        t63 = abap_true.
      ENDIF.
      IF t63 = abap_true.
        t62 = |undefined|.
      ELSE.
        t62 = t60->value.
      ENDIF.
      t45 = xsdbool( t2->test( p0 = t62 ) = abap_false ).
    ELSE.
      DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t73 = t1.
      DATA(t75) = VALUE string( ).
      DATA(t76) = VALUE abap_bool( ).
      IF t73 IS INITIAL.
        t76 = abap_true.
      ELSEIF t73->has = abap_false.
        t76 = abap_true.
      ENDIF.
      IF t76 = abap_true.
        t75 = |undefined|.
      ELSE.
        t75 = t73->value.
      ENDIF.
      t45 = xsdbool( t2->test( p0 = t75 ) = abap_true ).
    ENDIF.
    result = t45.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1795_59c4e6d5bad6.
  ENDMETHOD.
ENDCLASS.
