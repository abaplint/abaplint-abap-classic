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
    DATA(t2) = me->arr.
    DATA t3 TYPE string.
    t3 = i_e->concat_tokens( ).
    t2->load( ).
    APPEND t3 TO t2->items.
    t2->save( ).
  ENDMETHOD.

  METHOD find_first_duplicate.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t2 = me->arr.
    DATA t4 TYPE i.
    t2->load( ).
    t4 = lines( t2->items ).
    DATA t7 TYPE i.
    t7 = 0.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DO.
      IF xsdbool( t7 < t4 ) = abap_false.
        EXIT.
      ENDIF.
      IF xsdbool( t2->has( p0 = t7 ) = abap_false ) = abap_true.
        DATA(t18) = NEW zlnt_exception_un_5f2d02892fe8( ).
        t18->source_location = |primitive find requires a present slot|.
        RAISE EXCEPTION t18.
      ENDIF.
      DATA t20 TYPE string.
      t20 = t2->get( p0 = t7 )->value.
      DATA t26 TYPE i.
      t26 = me->arr->indexof( p0 = t20 ).
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t30 = me->arr.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t20.
      t32 = t36.
      DATA t38 TYPE i.
      DATA t40 TYPE i.
      t30->load( ).
      t40 = lines( t30->items ).
      DATA(t42) = 1.
      t38 = t40 - t42.
      DATA t43 TYPE i.
      t43 = -1.
      DO.
        IF xsdbool( t38 >= 0 ) = abap_false.
          EXIT.
        ENDIF.
        IF t30->has( p0 = t38 ) = abap_true.
          DATA(t51) = VALUE abap_bool( ).
          DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t52 = t30->get( p0 = t38 ).
          DATA(t56) = VALUE abap_bool( ).
          DATA(t57) = VALUE abap_bool( ).
          IF t52 IS BOUND.
            t56 = t52->has.
          ENDIF.
          IF t32 IS BOUND.
            t57 = t32->has.
          ENDIF.
          IF t56 = t57.
            IF t56 = abap_false.
              t51 = abap_true.
            ELSEIF t52->value = t32->value.
              t51 = abap_true.
            ENDIF.
          ENDIF.
          IF t51 = abap_true.
            t43 = t38.
            EXIT.
          ENDIF.
        ENDIF.
        DATA(t61) = 1.
        t38 = t38 - t61.
      ENDDO.
      IF xsdbool( t26 <> t43 ) = abap_true.
        DATA(t66) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t66->has = abap_true.
        t66->value = t20.
        t9 = t66.
        EXIT.
      ENDIF.
      DATA(t70) = 1.
      t7 = t7 + t70.
    ENDDO.
    result = t9.

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
