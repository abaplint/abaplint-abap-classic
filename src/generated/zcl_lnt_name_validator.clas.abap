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
    DATA(t7) = t3.
    t6 = t7->zlnt_view_read_sr_7cd1e1e70d45( ).
    t5 = xsdbool( t6 IS BOUND ).
    t4 = t5.
    IF t5 = abap_true.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE i( ).
      DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t12) = t3.
      t11 = t12->zlnt_view_read_sr_7cd1e1e70d45( ).
      t10 = t11.
      DATA t13 TYPE string.
      DATA t14 TYPE string.
      DATA(t15) = t1.
      t14 = t15->value.
      DATA(t16) = strlen( t14 ).
      t13 = t14.
      IF t13 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t13 TO UPPER CASE.
      ELSE.
        t13 = zlnt_runtime_uppe_91169605024d=>full( t13 ).
      ENDIF.
      t9 = t10->indexof( p0 = t13 ).
      DATA(t17) = 0.
      t8 = xsdbool( t9 >= t17 ).
      t4 = t8.
    ENDIF.
    IF t4 = abap_true.
      DATA(t18) = abap_false.
      result = t18.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t22) = t3.
    t21 = t22->zlnt_view_read_sr_92fa7b522e13( ).
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t23.
    DATA t24 TYPE abap_bool.
    DATA(t25) = t20.
    t24 = xsdbool( t25 IS BOUND ).
    IF t24 = abap_true.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t27) = t20.
      t26 = t27.
      t23 = t26.
    ELSE.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t28.
      t23 = t28.
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
      DATA(t31) = VALUE abap_bool( ).
      DATA t32 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t32.
      DATA(t33) = t29.
      DATA(t34) = |i|.
      CREATE OBJECT t32 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t33 flags = t34.
      DATA(t35) = VALUE string( ).
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t37) = t1.
      t36 = t37.
      DATA(t38) = VALUE string( ).
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = t36.
      IF t40 IS INITIAL.
        t39 = abap_true.
      ELSEIF t40->has = abap_false.
        t39 = abap_true.
      ENDIF.
      IF t39 = abap_true.
        DATA(t41) = |undefined|.
        t38 = t41.
      ELSE.
        DATA t42 TYPE string.
        DATA(t43) = t36.
        t42 = t43->value.
        t38 = t42.
      ENDIF.
      t35 = t38.
      t31 = t32->test( p0 = t35 ).
      IF t31 = abap_true.
        DATA(t44) = abap_false.
        result = t44.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t45) = VALUE abap_bool( ).
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = VALUE abap_bool( ).
    DATA(t48) = VALUE abap_bool( ).
    DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t50) = t3.
    t49 = t50->zlnt_view_read_sr_ef452f77fd06( ).
    IF t49 IS BOUND.
      IF t49->has = abap_true.
        t48 = xsdbool( strlen( t49->value ) > 0 ).
      ENDIF.
    ENDIF.
    t47 = xsdbool( t48 = abap_false ).
    t46 = t47.
    IF t47 = abap_false.
      DATA t51 TYPE abap_bool.
      DATA t52 TYPE string.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t54) = t3.
      t53 = t54->zlnt_view_read_sr_ef452f77fd06( ).
      t52 = t53->value.
      DATA(t55) = |required|.
      t51 = xsdbool( t52 = t55 ).
      t46 = t51.
    ENDIF.
    IF t46 = abap_true.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = VALUE abap_bool( ).
      DATA(t58) = t2.
      DATA(t59) = VALUE string( ).
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t61) = t1.
      t60 = t61.
      DATA(t62) = VALUE string( ).
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = t60.
      IF t64 IS INITIAL.
        t63 = abap_true.
      ELSEIF t64->has = abap_false.
        t63 = abap_true.
      ENDIF.
      IF t63 = abap_true.
        DATA(t65) = |undefined|.
        t62 = t65.
      ELSE.
        DATA t66 TYPE string.
        DATA(t67) = t60.
        t66 = t67->value.
        t62 = t66.
      ENDIF.
      t59 = t62.
      t57 = t58->test( p0 = t59 ).
      DATA(t68) = abap_false.
      t56 = xsdbool( t57 = t68 ).
      t45 = t56.
    ELSE.
      DATA(t69) = VALUE abap_bool( ).
      DATA(t70) = VALUE abap_bool( ).
      DATA(t71) = t2.
      DATA(t72) = VALUE string( ).
      DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t74) = t1.
      t73 = t74.
      DATA(t75) = VALUE string( ).
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = t73.
      IF t77 IS INITIAL.
        t76 = abap_true.
      ELSEIF t77->has = abap_false.
        t76 = abap_true.
      ENDIF.
      IF t76 = abap_true.
        DATA(t78) = |undefined|.
        t75 = t78.
      ELSE.
        DATA t79 TYPE string.
        DATA(t80) = t73.
        t79 = t80->value.
        t75 = t79.
      ENDIF.
      t72 = t75.
      t70 = t71->test( p0 = t72 ).
      DATA(t81) = abap_true.
      t69 = xsdbool( t70 = t81 ).
      t45 = t69.
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
