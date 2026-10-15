* TS: src/abap/4_file_information/_identifier.ts:4:1 Identifier
CLASS zcl_lnt_fi_identifier DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA token TYPE REF TO zcl_lnt_abstract_token.
    DATA filename TYPE string.
    METHODS constructor IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_filename TYPE string.
    METHODS get_name RETURNING VALUE(result) TYPE string.
    METHODS equals IMPORTING i_id TYPE REF TO zcl_lnt_fi_identifier RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
    METHODS get_filename RETURNING VALUE(result) TYPE string.
    METHODS get_start RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS get_end RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_fi_identifier IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_token.
    DATA(t2) = i_filename.
    DATA(t3) = t1.
    me->token = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `token`.
    DATA(t4) = t2.
    me->filename = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `filename`.
  ENDMETHOD.

  METHOD get_name.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t4) = me->token.
    t3 = t4.
    DATA t5 TYPE string.
    DATA(t6) = t3.
    t5 = t6->str.
    t2 = t5.
    t1 = t2.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE string( ).
    DATA(t9) = t1.
    DATA(t10) = 0.
    DATA(t11) = 1.
    DATA(t12) = strlen( t9 ).
    IF t10 < 0.
      t10 = t10 + t12.
      IF t10 < 0.
        t10 = 0.
      ENDIF.
    ENDIF.
    IF t10 > t12 OR t11 <= 0.
      CLEAR t8.
    ELSE.
      IF t11 > t12 - t10.
        t11 = t12 - t10.
      ENDIF.
      t8 = t9+t10(t11).
    ENDIF.
    DATA(t13) = |!|.
    t7 = xsdbool( t8 = t13 ).
    IF t7 = abap_true.
      DATA(t14) = VALUE string( ).
      DATA t15 TYPE string.
      DATA(t16) = t1.
      t15 = t16.
      DATA(t17) = VALUE string( ).
      DATA(t18) = t15.
      DATA(t19) = 1.
      DATA t20 TYPE i.
      DATA(t21) = t15.
      DATA(t22) = strlen( t21 ).
      t20 = t22.
      DATA(t23) = strlen( t18 ).
      IF t19 < 0.
        t19 = t19 + t23.
        IF t19 < 0.
          t19 = 0.
        ENDIF.
      ENDIF.
      IF t19 > t23 OR t20 <= 0.
        CLEAR t17.
      ELSE.
        IF t20 > t23 - t19.
          t20 = t23 - t19.
        ENDIF.
        t17 = t18+t19(t20).
      ENDIF.
      t14 = t17.
      t1 = t14.
    ENDIF.
    DATA(t24) = t1.
    result = t24.

  ENDMETHOD.

  METHOD equals.
    DATA(t1) = i_id.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA t5 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zcl_lnt_position.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t10) = t5.
    t9 = t10->token.
    t8 = t9.
    DATA t11 TYPE REF TO zcl_lnt_position.
    DATA(t12) = t8.
    t11 = t12->start.
    t7 = t11.
    t4 = t7.
    DATA t13 TYPE REF TO zcl_lnt_position.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t15) = me->token.
    t14 = t15.
    DATA t16 TYPE REF TO zcl_lnt_position.
    DATA(t17) = t14.
    t16 = t17->start.
    t13 = t16.
    t3 = t4->equals( i_p = t13 ).
    t2 = t3.
    IF t3 = abap_true.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE string.
      DATA t20 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t21) = t1.
      t20 = t21.
      DATA t22 TYPE string.
      DATA(t23) = t20.
      t22 = t23->filename.
      t19 = t22.
      DATA(t24) = CONV string( me->filename ).
      t18 = xsdbool( t19 = t24 ).
      t2 = t18.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD get_token.
    DATA(t1) = me->token.
    result = t1.

  ENDMETHOD.

  METHOD get_filename.
    DATA(t1) = CONV string( me->filename ).
    result = t1.

  ENDMETHOD.

  METHOD get_start.
    DATA t1 TYPE REF TO zcl_lnt_position.
    DATA t2 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t3) = me->token.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA(t5) = t2.
    t4 = t5->start.
    t1 = t4.
    result = t1.

  ENDMETHOD.

  METHOD get_end.
    DATA t1 TYPE REF TO zcl_lnt_position.
    DATA t2 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t3) = me->token.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA t5 TYPE f.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA t7 TYPE REF TO zcl_lnt_position.
    DATA(t8) = t2.
    t7 = t8->start.
    t6 = t7.
    DATA t9 TYPE f.
    DATA(t10) = t6.
    t9 = t10->row.
    t5 = t9.
    DATA t11 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t12 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t13 TYPE REF TO zcl_lnt_position.
    DATA t14 TYPE REF TO zcl_lnt_position.
    DATA(t15) = t2.
    t14 = t15->start.
    t13 = t14.
    DATA t16 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t17) = t13.
    t16 = t17->col.
    t12 = t16.
    DATA t18 TYPE f.
    DATA t19 TYPE i.
    DATA t20 TYPE string.
    DATA(t21) = t2.
    t20 = t21->str.
    DATA(t22) = strlen( t20 ).
    t19 = t22.
    t18 = t19.
    DATA(t23) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t23->has = abap_true.
    t23->value = t18.
    t11 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t12 right = t23 op = `+` ).
    t4 = NEW zcl_lnt_position( i_row = t5 i_col = t11 ).
    t1 = t4.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d765_78a92a32d2a4.
  ENDMETHOD.
ENDCLASS.
