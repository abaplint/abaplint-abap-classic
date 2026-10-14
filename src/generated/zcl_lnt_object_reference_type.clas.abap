* TS: src/abap/types/basic/object_reference_type.ts:5:1 ObjectReferenceType
CLASS zcl_lnt_object_reference_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_168ba5e4.
    INTERFACES zif_lnt_union_265b2b50.
    DATA identifier TYPE REF TO zcl_lnt_fi_identifier.
    METHODS constructor IMPORTING i_id TYPE REF TO zcl_lnt_fi_identifier i_extra TYPE REF TO zcl_lnt_abstract_type_data OPTIONAL.
    METHODS get_identifier_name RETURNING VALUE(result) TYPE string.
    METHODS t_t_i_s_a_t_b_o_r_t_t_ob_rf_ty RETURNING VALUE(result) TYPE string.
    METHODS to_abap REDEFINITION.
    METHODS is_generic REDEFINITION.
    METHODS contains_void REDEFINITION.
    METHODS get_identifier RETURNING VALUE(result) TYPE REF TO zcl_lnt_fi_identifier.
    METHODS to_cds REDEFINITION.
    METHODS to_text REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_object_reference_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_fi_identifier( i_id ).
    DATA(t2) = CAST zcl_lnt_abstract_type_data( i_extra ).
    DATA(t3) = CAST zcl_lnt_abstract_type_data( t2 ).
    super->constructor( i_input_967e = t3 ).
    DATA(t4) = CAST zcl_lnt_fi_identifier( t1 ).
    me->identifier = t4.
  ENDMETHOD.

  METHOD get_identifier_name.
    DATA(t1) = VALUE string( ).
    DATA t2 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t3) = CAST zcl_lnt_fi_identifier( me->identifier ).
    t2 = t3.
    DATA(t4) = VALUE string( ).
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t9) = CAST zcl_lnt_fi_identifier( t2 ).
    t8 = t9->token.
    t7 = t8.
    DATA t10 TYPE string.
    DATA(t11) = CAST zcl_lnt_abstract_token( t7 ).
    t10 = t11->str.
    t6 = t10.
    t5 = t6.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE string( ).
    DATA(t14) = t5.
    DATA(t15) = 0.
    DATA(t16) = 1.
    DATA(t17) = strlen( t14 ).
    IF t15 < 0.
      t15 = t15 + t17.
      IF t15 < 0.
        t15 = 0.
      ENDIF.
    ENDIF.
    IF t15 > t17 OR t16 <= 0.
      CLEAR t13.
    ELSE.
      IF t16 > t17 - t15.
        t16 = t17 - t15.
      ENDIF.
      t13 = t14+t15(t16).
    ENDIF.
    DATA(t18) = |!|.
    t12 = xsdbool( t13 = t18 ).
    IF t12 = abap_true.
      DATA(t19) = VALUE string( ).
      DATA t20 TYPE string.
      DATA(t21) = t5.
      t20 = t21.
      DATA(t22) = VALUE string( ).
      DATA(t23) = t20.
      DATA(t24) = 1.
      DATA t25 TYPE i.
      DATA(t26) = t20.
      DATA(t27) = strlen( t26 ).
      t25 = t27.
      DATA(t28) = strlen( t23 ).
      IF t24 < 0.
        t24 = t24 + t28.
        IF t24 < 0.
          t24 = 0.
        ENDIF.
      ENDIF.
      IF t24 > t28 OR t25 <= 0.
        CLEAR t22.
      ELSE.
        IF t25 > t28 - t24.
          t25 = t28 - t24.
        ENDIF.
        t22 = t23+t24(t25).
      ENDIF.
      t19 = t22.
      t5 = t19.
    ENDIF.
    DATA(t29) = t5.
    t4 = t29.
    t1 = t4.
    result = t1.

  ENDMETHOD.

  METHOD t_t_i_s_a_t_b_o_r_t_t_ob_rf_ty.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/object_reference_type.ts:17|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD to_abap.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/object_reference_type.ts:21|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD is_generic.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.

  METHOD contains_void.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/object_reference_type.ts:29|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_identifier.
    DATA(t1) = CAST zcl_lnt_fi_identifier( me->identifier ).
    result = t1.

  ENDMETHOD.

  METHOD to_cds.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/object_reference_type.ts:37|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = CONV string( me->t_t_i_s_a_t_b_o_r_t_t_ob_rf_ty( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1014_35d4c9b56606.
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~contains_void.
    result = me->contains_void( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~get_abstract_type_data.
    result = me->get_abstract_type_data( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~get_conversion_exit.
    result = me->get_conversion_exit( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~get_ddic_name.
    result = me->get_ddic_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~get_qualified_name.
    result = me->get_qualified_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~get_rtti_name.
    result = me->get_rtti_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~is_generic.
    result = me->is_generic( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~to_abap.
    result = me->to_abap( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~to_cds.
    result = me->to_cds( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~to_text.
    result = me->to_text( i_level = i_level ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~contains_void.
    result = me->contains_void( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~get_abstract_type_data.
    result = me->get_abstract_type_data( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~get_conversion_exit.
    result = me->get_conversion_exit( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~get_ddic_name.
    result = me->get_ddic_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~get_qualified_name.
    result = me->get_qualified_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~get_rtti_name.
    result = me->get_rtti_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~is_generic.
    result = me->is_generic( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~to_abap.
    result = me->to_abap( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~to_cds.
    result = me->to_cds( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~to_text.
    result = me->to_text( i_level = i_level ).
  ENDMETHOD.
ENDCLASS.
