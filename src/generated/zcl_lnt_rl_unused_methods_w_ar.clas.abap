* TS: src/rules/unused_methods.ts:26:1 WorkArea
CLASS zcl_lnt_rl_unused_methods_w_ar DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA list TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor.
    METHODS push IMPORTING i_id TYPE REF TO zcl_lnt_info_method_definition.
    METHODS remove_if_exists IMPORTING i_id TYPE REF TO zcl_lnt_fi_identifier.
    METHODS contains_proteted RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_length RETURNING VALUE(result) TYPE f.
    METHODS get_db65 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rl_unused_methods_w_ar IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    me->list = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `list`.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    me->list = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `list`.
  ENDMETHOD.

  METHOD push.
    DATA(t2) = me->list.
    DATA(t3) = i_id.
    t2->load( ).
    APPEND t3 TO t2->items.
    t2->save( ).
  ENDMETHOD.

  METHOD remove_if_exists.
    DATA(t1) = i_id.
    DATA t2 TYPE i.
    t2 = 0.
    DO.
      DATA(t7) = me->list.
      t7->load( ).
      IF xsdbool( t2 < lines( t7->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t9 TYPE REF TO zcl_lnt_fi_identifier.
      t9 = t1.
      DATA t11 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t11.
      DATA t13 TYPE REF TO zcl_lnt_info_method_definition.
      CLEAR t13.
      DATA(t14) = me->list.
      DATA(t15) = t2.
      t15 = t15 + 1.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      t14->load( ).
      CLEAR t16.
      READ TABLE t14->items INDEX t15 INTO t16.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      CLEAR t13.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t17 ?= t16.
        DATA t18 TYPE REF TO object.
        t18 = t17->as_ref( ).
        t13 ?= t18.
      ELSE.
        t13 ?= t16.
      ENDIF.
      t11 = t13->identifier.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE abap_bool.
      DATA t21 TYPE REF TO zcl_lnt_position.
      t21 = t11->token->start.
      DATA t34 TYPE REF TO zcl_lnt_position.
      t34 = t9->token->start.
      t20 = t21->equals( i_p = t34 ).
      t19 = t20.
      IF t20 = abap_true.
        t19 = xsdbool( t11->filename = t9->filename ).
      ENDIF.
      IF t19 = abap_true.
        DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t44 = me->list->splice2( p0 = t2 p1 = 1 ).
        RETURN.
      ENDIF.
      DATA(t50) = 1.
      t2 = t2 + t50.
    ENDDO.
  ENDMETHOD.

  METHOD contains_proteted.
    DATA(t1) = me->list.
    DATA t2 TYPE REF TO zcl_lnt_info_method_definition.
    DATA t3 TYPE REF TO object.
    DATA(t4) = VALUE i( ).
    DO.
      t1->load( ).
      IF t4 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t3.
      READ TABLE t1->items INDEX t4 + 1 INTO t3.
      t4 = t4 + 1.
      DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t5.
      CLEAR t2.
      IF t3 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t5 ?= t3.
        DATA t6 TYPE REF TO object.
        t6 = t5->as_ref( ).
        t2 ?= t6.
      ELSE.
        t2 ?= t3.
      ENDIF.
      IF xsdbool( t2->visibility = CONV f( 2 ) ) = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD get_length.
    DATA t1 TYPE f.
    DATA(t3) = me->list.
    t3->load( ).
    t1 = lines( t3->items ).
    result = t1.

  ENDMETHOD.

  METHOD get_db65.
    result = me->list.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1756_5ec04d8fea6e.
  ENDMETHOD.
ENDCLASS.
