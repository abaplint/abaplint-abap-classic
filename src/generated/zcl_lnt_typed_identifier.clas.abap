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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_typed_identifier IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_abstract_token( i_token ).
    DATA(t2) = i_filename.
    DATA(t3) = CAST zif_lnt_union_ea265422( i_type_9913 ).
    DATA(t4) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_meta ).
    DATA(t5) = CAST zlnt_runtime_dyna_a429568d5be8( i_value ).
    DATA(t6) = CAST zcl_lnt_abstract_token( t1 ).
    DATA(t7) = t2.
    super->constructor( i_token = t6 i_filename = t7 ).
    DATA t8 TYPE abap_bool.
    DATA(t9) = CAST zif_lnt_union_ea265422( t3 ).
    t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_typed_identifier ).
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_abstract_type.
      DATA t11 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t12 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t13) = CAST zif_lnt_union_ea265422( t3 ).
      DATA t14 TYPE REF TO object.
      t14 = t13.
      t12 ?= t14.
      t11 = t12.
      DATA t15 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t16) = CAST zcl_lnt_typed_identifier( t11 ).
      t15 = t16->type_cba0.
      t10 = t15.
      me->type_cba0 = t10.
    ELSE.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t18) = CAST zif_lnt_union_ea265422( t3 ).
      DATA t19 TYPE REF TO object.
      t19 = t18.
      t17 ?= t19.
      me->type_cba0 = t17.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t21) = CAST zlnt_runtime_dyna_a429568d5be8( t5 ).
    t20 = t21.
    me->value = t20.
    DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t22.
    me->meta = t22.
    DATA t23 TYPE abap_bool.
    DATA(t24) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
    t23 = xsdbool( t24 IS BOUND ).
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t26) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
      t25 = t26.
      me->meta = t25.
    ENDIF.
  ENDMETHOD.

  METHOD debug_description.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/_typed_identifier.ts:35|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD from.
    DATA(t1) = CAST zcl_lnt_fi_identifier( i_id ).
    DATA(t2) = CAST zif_lnt_union_ea265422( i_type_9913 ).
    DATA(t3) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_meta ).
    DATA t4 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t7) = CAST zcl_lnt_fi_identifier( t1 ).
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t9) = CAST zcl_lnt_fi_identifier( t6 ).
    t8 = t9->token.
    t5 = t8.
    DATA t10 TYPE string.
    DATA t11 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t12) = CAST zcl_lnt_fi_identifier( t1 ).
    t11 = t12.
    DATA t13 TYPE string.
    DATA(t14) = CAST zcl_lnt_fi_identifier( t11 ).
    t13 = t14->filename.
    t10 = t13.
    DATA(t15) = CAST zif_lnt_union_ea265422( t2 ).
    DATA(t16) = CAST zlnt_runtime_arra_8ecd6afe19e0( t3 ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    t4 = NEW zcl_lnt_typed_identifier( i_token = t5 i_filename = t10 i_type_9913 = t15 i_meta = t16 i_value = t17 ).
    result = t4.

  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/_typed_identifier.ts:59|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = CAST zcl_lnt_abstract_type( me->type_cba0 ).
    result = t1.

  ENDMETHOD.

  METHOD get_meta.
    DATA(t1) = CAST zlnt_runtime_arra_8ecd6afe19e0( me->meta ).
    result = t1.

  ENDMETHOD.

  METHOD get_value.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->value ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d991_2c1bbfdb8e80.
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
