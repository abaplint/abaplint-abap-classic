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
    DATA(t1) = i_id.
    DATA(t2) = me->list.
    DATA(t3) = t1.
    t2->load( ).
    APPEND t3 TO t2->items.
    t2->save( ).
  ENDMETHOD.

  METHOD remove_if_exists.
    DATA(t1) = i_id.
    DATA t2 TYPE i.
    DATA(t3) = 0.
    t2 = t3.
    DO.
      DATA t4 TYPE abap_bool.
      DATA(t5) = t2.
      DATA t6 TYPE i.
      DATA(t7) = me->list.
      t7->load( ).
      t6 = lines( t7->items ).
      t4 = xsdbool( t5 < t6 ).
      IF t4 = abap_false.
        EXIT.
      ENDIF.
      DATA(t8) = VALUE abap_bool( ).
      DATA t9 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t10) = t1.
      t9 = t10.
      DATA t11 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t12.
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
      t12 = t13->identifier.
      t11 = t12.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE abap_bool.
      DATA t21 TYPE REF TO zcl_lnt_position.
      DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t23) = t11.
      t22 = t23.
      DATA t24 TYPE REF TO zcl_lnt_position.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t27) = t22.
      t26 = t27->token.
      t25 = t26.
      DATA t28 TYPE REF TO zcl_lnt_position.
      DATA(t29) = t25.
      t28 = t29->start.
      t24 = t28.
      t21 = t24.
      DATA t30 TYPE REF TO zcl_lnt_position.
      DATA t31 TYPE REF TO zcl_lnt_abstract_token.
      DATA t32 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t33) = t9.
      t32 = t33->token.
      t31 = t32.
      DATA t34 TYPE REF TO zcl_lnt_position.
      DATA(t35) = t31.
      t34 = t35->start.
      t30 = t34.
      t20 = t21->equals( i_p = t30 ).
      t19 = t20.
      IF t20 = abap_true.
        DATA t36 TYPE abap_bool.
        DATA t37 TYPE string.
        DATA t38 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t39) = t11.
        t38 = t39.
        DATA t40 TYPE string.
        DATA(t41) = t38.
        t40 = t41->filename.
        t37 = t40.
        DATA t42 TYPE string.
        DATA(t43) = t9.
        t42 = t43->filename.
        t36 = xsdbool( t37 = t42 ).
        t19 = t36.
      ENDIF.
      t8 = t19.
      IF t8 = abap_true.
        DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t45) = me->list.
        DATA(t46) = t2.
        DATA(t47) = 1.
        t44 = t45->splice2( p0 = t46 p1 = t47 ).
        RETURN.
      ENDIF.
      DATA t48 TYPE i.
      DATA(t49) = t2.
      DATA(t50) = 1.
      t48 = t49 + t50.
      t2 = t48.
    ENDDO.
  ENDMETHOD.

  METHOD contains_proteted.
    DATA(t1) = me->list.
    DATA t2 TYPE REF TO zcl_lnt_info_method_definition.
    CLEAR t2.
    DATA t3 TYPE REF TO object.
    CLEAR t3.
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
      DATA t7 TYPE abap_bool.
      DATA t8 TYPE f.
      DATA(t9) = t2.
      t8 = t9->visibility.
      DATA(t10) = CONV f( 2 ).
      t7 = xsdbool( t8 = t10 ).
      IF t7 = abap_true.
        DATA(t11) = abap_true.
        result = t11.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t12) = abap_false.
    result = t12.

  ENDMETHOD.

  METHOD get_length.
    DATA t1 TYPE f.
    DATA t2 TYPE i.
    DATA(t3) = me->list.
    t3->load( ).
    t2 = lines( t3->items ).
    t1 = t2.
    result = t1.

  ENDMETHOD.

  METHOD get_db65.
    DATA(t1) = me->list.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1756_5ec04d8fea6e.
  ENDMETHOD.
ENDCLASS.
