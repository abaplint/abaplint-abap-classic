* TS: src/rules/identical_conditions.ts:11:1 Conditions
CLASS zcl_lnt_conditions DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA arr TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor.
    METHODS push IMPORTING i_e TYPE REF TO zcl_lnt_expression_node.
    METHODS find_first_duplicate RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_conditions IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t1.
    me->arr = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `arr`.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t2.
    me->arr = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `arr`.
  ENDMETHOD.

  METHOD push.
    DATA(t1) = i_e.
    DATA(t2) = me->arr.
    DATA t3 TYPE string.
    DATA(t4) = t1.
    t3 = t4->concat_tokens( ).
    t2->load( ).
    APPEND t3 TO t2->items.
    t2->save( ).
  ENDMETHOD.

  METHOD find_first_duplicate.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t3) = me->arr.
    t2 = t3.
    DATA t4 TYPE i.
    DATA t5 TYPE i.
    DATA(t6) = t2.
    t6->load( ).
    t5 = lines( t6->items ).
    t4 = t5.
    DATA t7 TYPE i.
    DATA(t8) = 0.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    t9 = t10.
    DO.
      DATA t11 TYPE abap_bool.
      DATA(t12) = t7.
      DATA(t13) = t4.
      t11 = xsdbool( t12 < t13 ).
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE abap_bool.
      DATA(t16) = t2.
      DATA(t17) = t7.
      t15 = t16->has( p0 = t17 ).
      t14 = xsdbool( t15 = abap_false ).
      IF t14 = abap_true.
        DATA(t18) = NEW zlnt_exception_un_5f2d02892fe8( ).
        DATA(t19) = |primitive find requires a present slot|.
        t18->source_location = t19.
        RAISE EXCEPTION t18.
      ENDIF.
      DATA t20 TYPE string.
      DATA t21 TYPE string.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t23) = t2.
      DATA(t24) = t7.
      t22 = t23->get( p0 = t24 ).
      t21 = t22->value.
      t20 = t21.
      DATA(t25) = VALUE abap_bool( ).
      DATA t26 TYPE i.
      DATA(t27) = me->arr.
      DATA(t28) = t20.
      t26 = t27->indexof( p0 = t28 ).
      DATA(t29) = VALUE i( ).
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t31) = me->arr.
      t30 = t31.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA(t34) = abap_true.
      IF t34 = abap_true.
        DATA(t35) = t20.
        DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t36->has = abap_true.
        t36->value = t35.
        t33 = t36.
      ELSE.
        DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t37.
        t33 = t37.
      ENDIF.
      t32 = t33.
      DATA t38 TYPE i.
      DATA t39 TYPE i.
      DATA t40 TYPE i.
      DATA(t41) = t30.
      t41->load( ).
      t40 = lines( t41->items ).
      DATA(t42) = 1.
      t39 = t40 - t42.
      t38 = t39.
      DATA t43 TYPE i.
      DATA(t44) = -1.
      t43 = t44.
      DO.
        DATA t45 TYPE abap_bool.
        DATA(t46) = t38.
        DATA(t47) = 0.
        t45 = xsdbool( t46 >= t47 ).
        IF t45 = abap_false.
          EXIT.
        ENDIF.
        DATA t48 TYPE abap_bool.
        DATA(t49) = t30.
        DATA(t50) = t38.
        t48 = t49->has( p0 = t50 ).
        IF t48 = abap_true.
          DATA(t51) = VALUE abap_bool( ).
          DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t53) = t30.
          DATA(t54) = t38.
          t52 = t53->get( p0 = t54 ).
          DATA(t55) = t32.
          DATA(t56) = VALUE abap_bool( ).
          DATA(t57) = VALUE abap_bool( ).
          IF t52 IS BOUND.
            t56 = t52->has.
          ENDIF.
          IF t55 IS BOUND.
            t57 = t55->has.
          ENDIF.
          IF t56 = t57.
            IF t56 = abap_false.
              t51 = abap_true.
            ELSEIF t52->value = t55->value.
              t51 = abap_true.
            ENDIF.
          ENDIF.
          IF t51 = abap_true.
            DATA(t58) = t38.
            t43 = t58.
            EXIT.
          ENDIF.
        ENDIF.
        DATA t59 TYPE i.
        DATA(t60) = t38.
        DATA(t61) = 1.
        t59 = t60 - t61.
        t38 = t59.
      ENDDO.
      DATA(t62) = t43.
      t29 = t62.
      t25 = xsdbool( t26 <> t29 ).
      IF t25 = abap_true.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t63.
        DATA(t64) = abap_true.
        IF t64 = abap_true.
          DATA(t65) = t20.
          DATA(t66) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t66->has = abap_true.
          t66->value = t65.
          t63 = t66.
        ELSE.
          DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t67.
          t63 = t67.
        ENDIF.
        t9 = t63.
        EXIT.
      ENDIF.
      DATA t68 TYPE i.
      DATA(t69) = t7.
      DATA(t70) = 1.
      t68 = t69 + t70.
      t7 = t68.
    ENDDO.
    DATA(t71) = t9.
    t1 = t71.
    result = t1.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1523_69b421e5aaca.
  ENDMETHOD.
ENDCLASS.
