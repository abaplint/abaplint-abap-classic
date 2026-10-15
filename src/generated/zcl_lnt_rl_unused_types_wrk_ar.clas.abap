* TS: src/rules/unused_types.ts:18:1 WorkArea
CLASS zcl_lnt_rl_unused_types_wrk_ar DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA workarea TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor.
    METHODS push IMPORTING i_id TYPE REF TO zcl_lnt_typed_identifier.
    METHODS remove_if_exists IMPORTING i_id TYPE REF TO zcl_lnt_fi_identifier.
    METHODS get_db65 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS count RETURNING VALUE(result) TYPE f.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rl_unused_types_wrk_ar IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    me->workarea = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `workarea`.
  ENDMETHOD.

  METHOD push.
    DATA(t1) = i_id.
    DATA(t2) = me->workarea.
    DATA t3 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t3.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    DATA(t5) = VALUE i( ).
    DO.
      t2->load( ).
      IF t5 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t4.
      READ TABLE t2->items INDEX t5 + 1 INTO t4.
      t5 = t5 + 1.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      CLEAR t3.
      IF t4 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t6 ?= t4.
        DATA t7 TYPE REF TO object.
        t7 = t6->as_ref( ).
        t3 ?= t7.
      ELSE.
        t3 ?= t4.
      ENDIF.
      DATA(t8) = VALUE abap_bool( ).
      DATA t9 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t10) = t1.
      t9 = t10.
      DATA t11 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t12) = t3.
      t11 = t12.
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE REF TO zcl_lnt_position.
      DATA t16 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t17) = t11.
      t16 = t17.
      DATA t18 TYPE REF TO zcl_lnt_position.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t21) = t16.
      t20 = t21->token.
      t19 = t20.
      DATA t22 TYPE REF TO zcl_lnt_position.
      DATA(t23) = t19.
      t22 = t23->start.
      t18 = t22.
      t15 = t18.
      DATA t24 TYPE REF TO zcl_lnt_position.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t27) = t9.
      t26 = t27->token.
      t25 = t26.
      DATA t28 TYPE REF TO zcl_lnt_position.
      DATA(t29) = t25.
      t28 = t29->start.
      t24 = t28.
      t14 = t15->equals( i_p = t24 ).
      t13 = t14.
      IF t14 = abap_true.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE string.
        DATA t32 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t33) = t11.
        t32 = t33.
        DATA t34 TYPE string.
        DATA(t35) = t32.
        t34 = t35->filename.
        t31 = t34.
        DATA t36 TYPE string.
        DATA(t37) = t9.
        t36 = t37->filename.
        t30 = xsdbool( t31 = t36 ).
        t13 = t30.
      ENDIF.
      t8 = t13.
      IF t8 = abap_true.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t38) = me->workarea.
    DATA(t39) = t1.
    t38->load( ).
    APPEND t39 TO t38->items.
    t38->save( ).
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
      DATA(t7) = me->workarea.
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
      DATA t12 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t12.
      DATA(t13) = me->workarea.
      DATA(t14) = t2.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO object.
      CLEAR t15.
      t13->load( ).
      CLEAR t15.
      READ TABLE t13->items INDEX t14 INTO t15.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      CLEAR t12.
      IF t15 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t16 ?= t15.
        DATA t17 TYPE REF TO object.
        t17 = t16->as_ref( ).
        t12 ?= t17.
      ELSE.
        t12 ?= t15.
      ENDIF.
      t11 = t12.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE REF TO zcl_lnt_position.
      DATA t21 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t22) = t11.
      t21 = t22.
      DATA t23 TYPE REF TO zcl_lnt_position.
      DATA t24 TYPE REF TO zcl_lnt_abstract_token.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t26) = t21.
      t25 = t26->token.
      t24 = t25.
      DATA t27 TYPE REF TO zcl_lnt_position.
      DATA(t28) = t24.
      t27 = t28->start.
      t23 = t27.
      t20 = t23.
      DATA t29 TYPE REF TO zcl_lnt_position.
      DATA t30 TYPE REF TO zcl_lnt_abstract_token.
      DATA t31 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t32) = t9.
      t31 = t32->token.
      t30 = t31.
      DATA t33 TYPE REF TO zcl_lnt_position.
      DATA(t34) = t30.
      t33 = t34->start.
      t29 = t33.
      t19 = t20->equals( i_p = t29 ).
      t18 = t19.
      IF t19 = abap_true.
        DATA t35 TYPE abap_bool.
        DATA t36 TYPE string.
        DATA t37 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t38) = t11.
        t37 = t38.
        DATA t39 TYPE string.
        DATA(t40) = t37.
        t39 = t40->filename.
        t36 = t39.
        DATA t41 TYPE string.
        DATA(t42) = t9.
        t41 = t42->filename.
        t35 = xsdbool( t36 = t41 ).
        t18 = t35.
      ENDIF.
      t8 = t18.
      IF t8 = abap_true.
        DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t44) = me->workarea.
        DATA(t45) = t2.
        DATA(t46) = 1.
        t43 = t44->splice2( p0 = t45 p1 = t46 ).
        RETURN.
      ENDIF.
      DATA t47 TYPE i.
      DATA(t48) = t2.
      DATA(t49) = 1.
      t47 = t48 + t49.
      t2 = t47.
    ENDDO.
  ENDMETHOD.

  METHOD get_db65.
    DATA(t1) = me->workarea.
    result = t1.

  ENDMETHOD.

  METHOD count.
    DATA t1 TYPE f.
    DATA t2 TYPE i.
    DATA(t3) = me->workarea.
    t3->load( ).
    t2 = lines( t3->items ).
    t1 = t2.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1758_6018aa39bf96.
  ENDMETHOD.
ENDCLASS.
