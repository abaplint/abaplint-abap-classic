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
    DATA(t2) = i_filename.
    me->token = i_token.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `token`.
    me->filename = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `filename`.
  ENDMETHOD.

  METHOD get_name.
    DATA t1 TYPE string.
    DATA t5 TYPE string.
    t5 = me->token->str.
    t1 = t5.
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
      t15 = t1.
      DATA(t17) = VALUE string( ).
      DATA(t19) = 1.
      DATA t20 TYPE i.
      t20 = strlen( t15 ).
      DATA(t23) = strlen( t15 ).
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
        t17 = t15+t19(t20).
      ENDIF.
      t14 = t17.
      t1 = t14.
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD equals.
    DATA(t1) = i_id.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    t9 = t1->token.
    DATA t11 TYPE REF TO zcl_lnt_position.
    t11 = t9->start.
    t4 = t11.
    DATA t13 TYPE REF TO zcl_lnt_position.
    DATA t16 TYPE REF TO zcl_lnt_position.
    t16 = me->token->start.
    t13 = t16.
    t3 = t4->equals( i_p = t13 ).
    t2 = t3.
    IF t3 = abap_true.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE string.
      DATA t22 TYPE string.
      t22 = t1->filename.
      t19 = t22.
      DATA(t24) = CONV string( me->filename ).
      t18 = xsdbool( t19 = t24 ).
      t2 = t18.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD get_token.
    result = me->token.

  ENDMETHOD.

  METHOD get_filename.
    DATA(t1) = CONV string( me->filename ).
    result = t1.

  ENDMETHOD.

  METHOD get_start.
    DATA t4 TYPE REF TO zcl_lnt_position.
    t4 = me->token->start.
    result = t4.

  ENDMETHOD.

  METHOD get_end.
    DATA t2 TYPE REF TO zcl_lnt_abstract_token.
    t2 = me->token.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA t5 TYPE f.
    DATA t7 TYPE REF TO zcl_lnt_position.
    t7 = t2->start.
    DATA t9 TYPE f.
    t9 = t7->row.
    t5 = t9.
    DATA t11 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t12 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t14 TYPE REF TO zcl_lnt_position.
    t14 = t2->start.
    DATA t16 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t16 = t14->col.
    t12 = t16.
    DATA t18 TYPE f.
    DATA t20 TYPE string.
    t20 = t2->str.
    t18 = strlen( t20 ).
    DATA(t23) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t23->has = abap_true.
    t23->value = t18.
    t11 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t12 right = t23 op = `+` ).
    t4 = NEW zcl_lnt_position( i_row = t5 i_col = t11 ).
    result = t4.

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
