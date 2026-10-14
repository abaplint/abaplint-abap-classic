* TS: src/abap/types/message.ts:1:1 Message
CLASS zcl_lnt_ty_message DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA number TYPE string.
    DATA message_25cb TYPE string.
    DATA class_name TYPE string.
    METHODS constructor IMPORTING i_number TYPE string i_message_26cb TYPE string i_class_name TYPE string.
    METHODS get_message_class RETURNING VALUE(result) TYPE string.
    METHODS get_number RETURNING VALUE(result) TYPE string.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS get_placeholder_count RETURNING VALUE(result) TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
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
    DATA t5 TYPE string.
    DATA(t6) = CONV string( me->number ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = t2.
    me->message_25cb = t9.
    DATA t10 TYPE string.
    DATA(t11) = CONV string( me->message_25cb ).
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    t12 = t13.
    DATA(t14) = t3.
    me->class_name = t14.
    DATA t15 TYPE string.
    DATA(t16) = CONV string( me->class_name ).
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    t17 = t18.
  ENDMETHOD.

  METHOD get_message_class.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/message.ts:22|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_number.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/message.ts:26|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/message.ts:30|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_placeholder_count.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/message.ts:34|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1039_204717d2f6bf.
  ENDMETHOD.
ENDCLASS.
