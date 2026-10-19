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
    DATA(t2) = i_filename.
    DATA(t3) = i_type_9913.
    DATA(t4) = i_meta.
    DATA(t5) = i_value.
    DATA(t6) = i_token.
    super->constructor( i_token = t6 i_filename = t2 ).
    DATA t8 TYPE abap_bool.
    t8 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_typed_identifier ).
    IF t8 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t14 TYPE REF TO object.
      t14 = t3.
      t12 ?= t14.
      DATA t15 TYPE REF TO zcl_lnt_abstract_type.
      t15 = t12->type_cba0.
      me->type_cba0 = t15.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `type`.
    ELSE.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      DATA t19 TYPE REF TO object.
      t19 = t3.
      t17 ?= t19.
      me->type_cba0 = t17.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `type`.
    ENDIF.
    me->value = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `value`.
    DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t22.
    me->meta = t22.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `meta`.
    DATA t23 TYPE abap_bool.
    t23 = xsdbool( t4 IS BOUND ).
    IF t23 = abap_true.
      me->meta = t4.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `meta`.
    ENDIF.
  ENDMETHOD.

  METHOD debug_description.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    t1->source_location = |src/abap/types/_typed_identifier.ts:35|.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD from.
    DATA(t1) = i_id.
    DATA(t3) = i_meta.
    DATA t4 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    t8 = t1->token.
    t5 = t8.
    DATA t10 TYPE string.
    DATA t13 TYPE string.
    t13 = t1->filename.
    t10 = t13.
    DATA(t15) = i_type_9913.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4 = NEW zcl_lnt_typed_identifier( i_token = t5 i_filename = t10 i_type_9913 = t15 i_meta = t3 i_value = t17 ).
    result = t4.

  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = VALUE string( ).
    DATA(t2) = VALUE string( ).
    DATA(t3) = |Identifier: ```|.
    DATA(t4) = VALUE string( ).
    DATA t5 TYPE REF TO zcl_lnt_fi_identifier.
    t5 = me.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE string.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    t11 = t5->token.
    DATA t13 TYPE string.
    t13 = t11->str.
    t8 = t13.
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
      t23 = t8.
      DATA(t25) = VALUE string( ).
      DATA(t27) = 1.
      DATA t28 TYPE i.
      t28 = strlen( t23 ).
      DATA(t31) = strlen( t23 ).
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
        t25 = t23+t27(t28).
      ENDIF.
      t22 = t25.
      t8 = t22.
    ENDIF.
    t7 = t8.
    t4 = t7.
    DATA(t33) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t34) = |```|.
    DATA(t35) = strlen( t2 ).
    t1 = |{ t2 }{ t34 }|.
    result = t1.

  ENDMETHOD.

  METHOD get_type.
    result = me->type_cba0.

  ENDMETHOD.

  METHOD get_meta.
    result = me->meta.

  ENDMETHOD.

  METHOD get_value.
    result = me->value.

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
