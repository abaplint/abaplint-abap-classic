* TS: src/abap/types/message.ts:1:1 Message
CLASS zcl_lnt_ty_message DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA number TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA message_25cb TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA class_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_number TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_message_26cb TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_class_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    METHODS get_message_class RETURNING VALUE(result) TYPE string.
    METHODS get_number RETURNING VALUE(result) TYPE string.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS get_placeholder_count RETURNING VALUE(result) TYPE f.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ty_message IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_message_26cb.
    DATA(t3) = i_class_name.
    me->number = i_number.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `number`.
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t6 = me->number.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = VALUE abap_bool( ).
    IF t6 IS INITIAL.
      t10 = abap_true.
    ELSEIF t6->has = abap_false.
      t10 = abap_true.
    ENDIF.
    t5 = t10.
    IF t5 = abap_true.
      DATA(t14) = ||.
      DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t15->has = abap_true.
      t15->value = t14.
      me->number = t15.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `number`.
    ENDIF.
    me->message_25cb = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `message`.
    DATA(t18) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t19 = me->message_25cb.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t23) = VALUE abap_bool( ).
    IF t19 IS INITIAL.
      t23 = abap_true.
    ELSEIF t19->has = abap_false.
      t23 = abap_true.
    ENDIF.
    t18 = t23.
    IF t18 = abap_true.
      DATA(t27) = ||.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t27.
      me->message_25cb = t28.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `message`.
    ENDIF.
    me->class_name = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `className`.
    DATA(t31) = VALUE abap_bool( ).
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t32 = me->class_name.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = VALUE abap_bool( ).
    IF t32 IS INITIAL.
      t36 = abap_true.
    ELSEIF t32->has = abap_false.
      t36 = abap_true.
    ENDIF.
    t31 = t36.
    IF t31 = abap_true.
      DATA(t40) = ||.
      DATA(t41) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t41->has = abap_true.
      t41->value = t40.
      me->class_name = t41.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `className`.
    ENDIF.
  ENDMETHOD.

  METHOD get_message_class.
    DATA t1 TYPE string.
    t1 = me->class_name->value.
    result = t1.

  ENDMETHOD.

  METHOD get_number.
    DATA t1 TYPE string.
    t1 = me->number->value.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA t1 TYPE string.
    t1 = me->message_25cb->value.
    result = t1.

  ENDMETHOD.

  METHOD get_placeholder_count.
    DATA(t1) = VALUE i( ).
    DATA(t2) = VALUE i( ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t7 TYPE string.
    t7 = me->message_25cb->value.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t11 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t12) = |&&|.
    DATA(t13) = |g|.
    CREATE OBJECT t11 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t12 flags = t13 checked = abap_true.
    t9 = t11->match( t7 ).
    t4 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t15 TYPE abap_bool.
    t15 = xsdbool( t4 IS BOUND ).
    IF t15 = abap_true.
      t14 = t4.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t14 = t19.
    ENDIF.
    t3 = t14.
    t3->load( ).
    t2 = lines( t3->items ).
    t1 = t2.
    DATA(t20) = VALUE f( ).
    DATA(t21) = VALUE int8( ).
    DATA(t22) = VALUE int8( ).
    DATA(t23) = VALUE i( ).
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t28 TYPE string.
    t28 = me->message_25cb->value.
    DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t32 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t33) = |&|.
    DATA(t34) = |g|.
    CREATE OBJECT t32 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t33 flags = t34 checked = abap_true.
    t30 = t32->match( t28 ).
    t25 = t30.
    DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t36 TYPE abap_bool.
    t36 = xsdbool( t25 IS BOUND ).
    IF t36 = abap_true.
      t35 = t25.
    ELSE.
      DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t40.
      t35 = t40.
    ENDIF.
    t24 = t35.
    t24->load( ).
    t23 = lines( t24->items ).
    t22 = t23.
    DATA t41 TYPE int8.
    DATA t42 TYPE int8.
    t42 = t1.
    DATA(t44) = CONV int8( 2 ).
    t41 = t42 * t44.
    t21 = t22 - t41.
    t20 = t21.
    result = t20.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1061_f55ce9cf1de0.
  ENDMETHOD.
ENDCLASS.
