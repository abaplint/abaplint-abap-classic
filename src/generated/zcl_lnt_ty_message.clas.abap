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
    DATA(t1) = i_number.
    DATA(t2) = i_message_26cb.
    DATA(t3) = i_class_name.
    DATA(t4) = t1.
    me->number = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `number`.
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t7) = me->number.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    t8 = t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t6.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ELSEIF t11->has = abap_false.
      t10 = abap_true.
    ENDIF.
    t5 = t10.
    IF t5 = abap_true.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      DATA(t13) = abap_true.
      IF t13 = abap_true.
        DATA(t14) = ||.
        DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t15->has = abap_true.
        t15->value = t14.
        t12 = t15.
      ELSE.
        DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t16.
        t12 = t16.
      ENDIF.
      me->number = t12.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `number`.
    ENDIF.
    DATA(t17) = t2.
    me->message_25cb = t17.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `message`.
    DATA(t18) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t20) = me->message_25cb.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    t21 = t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t19.
    IF t24 IS INITIAL.
      t23 = abap_true.
    ELSEIF t24->has = abap_false.
      t23 = abap_true.
    ENDIF.
    t18 = t23.
    IF t18 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA(t26) = abap_true.
      IF t26 = abap_true.
        DATA(t27) = ||.
        DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t28->has = abap_true.
        t28->value = t27.
        t25 = t28.
      ELSE.
        DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t29.
        t25 = t29.
      ENDIF.
      me->message_25cb = t25.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `message`.
    ENDIF.
    DATA(t30) = t3.
    me->class_name = t30.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `className`.
    DATA(t31) = VALUE abap_bool( ).
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t33) = me->class_name.
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    t34 = t35.
    DATA(t36) = VALUE abap_bool( ).
    DATA(t37) = t32.
    IF t37 IS INITIAL.
      t36 = abap_true.
    ELSEIF t37->has = abap_false.
      t36 = abap_true.
    ENDIF.
    t31 = t36.
    IF t31 = abap_true.
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t38.
      DATA(t39) = abap_true.
      IF t39 = abap_true.
        DATA(t40) = ||.
        DATA(t41) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t41->has = abap_true.
        t41->value = t40.
        t38 = t41.
      ELSE.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t42.
        t38 = t42.
      ENDIF.
      me->class_name = t38.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `className`.
    ENDIF.
  ENDMETHOD.

  METHOD get_message_class.
    DATA t1 TYPE string.
    DATA(t2) = me->class_name.
    t1 = t2->value.
    result = t1.

  ENDMETHOD.

  METHOD get_number.
    DATA t1 TYPE string.
    DATA(t2) = me->number.
    t1 = t2->value.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA t1 TYPE string.
    DATA(t2) = me->message_25cb.
    t1 = t2->value.
    result = t1.

  ENDMETHOD.

  METHOD get_placeholder_count.
    DATA(t1) = VALUE i( ).
    DATA(t2) = VALUE i( ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t6 TYPE string.
    DATA t7 TYPE string.
    DATA(t8) = me->message_25cb.
    t7 = t8->value.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t10) = t6.
    DATA t11 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t11.
    DATA(t12) = |&&|.
    DATA(t13) = |g|.
    CREATE OBJECT t11 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t12 flags = t13 checked = abap_true.
    t9 = t11->match( t10 ).
    t5 = t9.
    t4 = t5.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA t15 TYPE abap_bool.
    DATA(t16) = t4.
    t15 = xsdbool( t16 IS BOUND ).
    IF t15 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t18) = t4.
      t17 = t18.
      t14 = t17.
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
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t27 TYPE string.
    DATA t28 TYPE string.
    DATA(t29) = me->message_25cb.
    t28 = t29->value.
    t27 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t31) = t27.
    DATA t32 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t32.
    DATA(t33) = |&|.
    DATA(t34) = |g|.
    CREATE OBJECT t32 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t33 flags = t34 checked = abap_true.
    t30 = t32->match( t31 ).
    t26 = t30.
    t25 = t26.
    DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t35.
    DATA t36 TYPE abap_bool.
    DATA(t37) = t25.
    t36 = xsdbool( t37 IS BOUND ).
    IF t36 = abap_true.
      DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t39) = t25.
      t38 = t39.
      t35 = t38.
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
    DATA(t43) = t1.
    t42 = t43.
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
