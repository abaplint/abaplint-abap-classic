* TS: src/abap/types/_typed_identifier.ts:31:1 TypedIdentifier
CLASS zcl_lnt_typed_identifier DEFINITION PUBLIC INHERITING FROM zcl_lnt_fi_identifier CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_ea265422.
    INTERFACES zif_lnt_union_f405367a.
    DATA type_cba0 TYPE REF TO zcl_lnt_abstract_type.
    DATA meta TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA value TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS constructor IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_filename TYPE string i_type_9913 TYPE REF TO zif_lnt_union_ea265422 i_meta TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 OPTIONAL i_value TYPE REF TO
    zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    METHODS debug_description RETURNING VALUE(result) TYPE string.
    CLASS-METHODS from IMPORTING i_id TYPE REF TO zcl_lnt_fi_identifier i_type_9913 TYPE REF TO zif_lnt_union_ea265422 i_meta TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS to_text RETURNING VALUE(result) TYPE string.
    METHODS get_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS get_meta RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_value RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_typed_identifier IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_token.
    DATA(t2) = i_filename.
    DATA(t3) = i_type_9913.
    DATA(t4) = i_meta.
    DATA(t5) = i_value.
    DATA(t6) = t1.
    DATA(t7) = t2.
    super->constructor( i_token = t6 i_filename = t7 ).
    DATA t8 TYPE abap_bool.
    DATA(t9) = t3.
    t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_typed_identifier ).
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_abstract_type.
      DATA t11 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t12 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t13) = t3.
      DATA t14 TYPE REF TO object.
      t14 = t13.
      t12 ?= t14.
      t11 = t12.
      DATA t15 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t16) = t11.
      t15 = t16->type_cba0.
      t10 = t15.
      me->type_cba0 = t10.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `type`.
    ELSE.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t18) = t3.
      DATA t19 TYPE REF TO object.
      t19 = t18.
      t17 ?= t19.
      me->type_cba0 = t17.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `type`.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t21) = t5.
    t20 = t21.
    me->value = t20.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `value`.
    DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t22.
    me->meta = t22.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `meta`.
    DATA t23 TYPE abap_bool.
    DATA(t24) = t4.
    t23 = xsdbool( t24 IS BOUND ).
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t26) = t4.
      t25 = t26.
      me->meta = t25.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `meta`.
    ENDIF.
  ENDMETHOD.

  METHOD debug_description.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/_typed_identifier.ts:35|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD from.
    DATA(t1) = i_id.
    DATA(t2) = i_type_9913.
    DATA(t3) = i_meta.
    DATA t4 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t9) = t6.
    t8 = t9->token.
    t5 = t8.
    DATA t10 TYPE string.
    DATA t11 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t12) = t1.
    t11 = t12.
    DATA t13 TYPE string.
    DATA(t14) = t11.
    t13 = t14->filename.
    t10 = t13.
    DATA(t15) = t2.
    DATA(t16) = t3.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    t4 = NEW zcl_lnt_typed_identifier( i_token = t5 i_filename = t10 i_type_9913 = t15 i_meta = t16 i_value = t17 ).
    result = t4.

  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = VALUE string( ).
    DATA(t2) = VALUE string( ).
    DATA(t3) = |Identifier: ```|.
    DATA(t4) = VALUE string( ).
    DATA t5 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t6) = me.
    t5 = t6.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE string.
    DATA t9 TYPE string.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t12) = t5.
    t11 = t12->token.
    t10 = t11.
    DATA t13 TYPE string.
    DATA(t14) = t10.
    t13 = t14->str.
    t9 = t13.
    t8 = t9.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = VALUE string( ).
    DATA(t17) = t8.
    DATA(t18) = 0.
    DATA(t19) = 1.
    DATA(t20) = strlen( t17 ).
    IF t18 < 0.
      t18 = t18 + t20.
      IF t18 < 0.
        t18 = 0.
      ENDIF.
    ENDIF.
    IF t18 > t20 OR t19 <= 0.
      CLEAR t16.
    ELSE.
      IF t19 > t20 - t18.
        t19 = t20 - t18.
      ENDIF.
      t16 = t17+t18(t19).
    ENDIF.
    DATA(t21) = |!|.
    t15 = xsdbool( t16 = t21 ).
    IF t15 = abap_true.
      DATA(t22) = VALUE string( ).
      DATA t23 TYPE string.
      DATA(t24) = t8.
      t23 = t24.
      DATA(t25) = VALUE string( ).
      DATA(t26) = t23.
      DATA(t27) = 1.
      DATA t28 TYPE i.
      DATA(t29) = t23.
      DATA(t30) = strlen( t29 ).
      t28 = t30.
      DATA(t31) = strlen( t26 ).
      IF t27 < 0.
        t27 = t27 + t31.
        IF t27 < 0.
          t27 = 0.
        ENDIF.
      ENDIF.
      IF t27 > t31 OR t28 <= 0.
        CLEAR t25.
      ELSE.
        IF t28 > t31 - t27.
          t28 = t31 - t27.
        ENDIF.
        t25 = t26+t27(t28).
      ENDIF.
      t22 = t25.
      t8 = t22.
    ENDIF.
    DATA(t32) = t8.
    t7 = t32.
    t4 = t7.
    DATA(t33) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t34) = |```|.
    DATA(t35) = strlen( t2 ).
    t1 = |{ t2 }{ t34 }|.
    result = t1.

  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = me->type_cba0.
    result = t1.

  ENDMETHOD.

  METHOD get_meta.
    DATA(t1) = me->meta.
    result = t1.

  ENDMETHOD.

  METHOD get_value.
    DATA(t1) = me->value.
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1013_9a70b4e42342.
  ENDMETHOD.

  METHOD zif_lnt_union_ea265422~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f405367a~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f405367a~equals.
    result = me->equals( i_id = i_id ).
  ENDMETHOD.

  METHOD zif_lnt_union_f405367a~get_end.
    result = me->get_end( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f405367a~get_filename.
    result = me->get_filename( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f405367a~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f405367a~get_start.
    result = me->get_start( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f405367a~get_token.
    result = me->get_token( ).
  ENDMETHOD.
ENDCLASS.
