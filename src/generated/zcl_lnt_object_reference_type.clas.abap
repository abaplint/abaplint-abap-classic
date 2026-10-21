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
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_object_reference_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_id.
    DATA(t3) = i_extra.
    super->constructor( i_input_967e = t3 ).
    me->identifier = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `identifier`.
  ENDMETHOD.

  METHOD get_identifier_name.
    DATA t5 TYPE string.
    t5 = me->identifier->token->str.
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
    ELSE.
      IF t16 > t17 - t15.
        t16 = t17 - t15.
      ENDIF.
      t13 = t14+t15(t16).
    ENDIF.
    IF xsdbool( t13 = |!| ) = abap_true.
      DATA t20 TYPE string.
      t20 = t5.
      DATA(t22) = VALUE string( ).
      DATA(t24) = 1.
      DATA t25 TYPE i.
      t25 = strlen( t20 ).
      DATA(t28) = strlen( t20 ).
      IF t24 < 0.
        t24 = t24 + t28.
        IF t24 < 0.
          t24 = 0.
        ENDIF.
      ENDIF.
      IF t24 > t28 OR t25 <= 0.
      ELSE.
        IF t25 > t28 - t24.
          t25 = t28 - t24.
        ENDIF.
        t22 = t20+t24(t25).
      ENDIF.
      t5 = t22.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD t_t_i_s_a_t_b_o_r_t_t_ob_rf_ty.
    DATA(t2) = VALUE string( ).
    DATA(t3) = |```REF TO |.
    DATA(t4) = VALUE string( ).
    DATA t8 TYPE string.
    t8 = me->identifier->token->str.
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
    ELSE.
      IF t19 > t20 - t18.
        t19 = t20 - t18.
      ENDIF.
      t16 = t17+t18(t19).
    ENDIF.
    IF xsdbool( t16 = |!| ) = abap_true.
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
      ELSE.
        IF t28 > t31 - t27.
          t28 = t31 - t27.
        ENDIF.
        t25 = t23+t27(t28).
      ENDIF.
      t8 = t25.
    ENDIF.
    t4 = t8.
    DATA(t33) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t35) = strlen( t2 ).
    result = |{ t2 }{ |```| }|.

  ENDMETHOD.

  METHOD to_abap.
    DATA(t2) = |REF TO |.
    DATA(t3) = VALUE string( ).
    DATA t7 TYPE string.
    t7 = me->identifier->token->str.
    DATA(t15) = VALUE string( ).
    DATA(t16) = t7.
    DATA(t17) = 0.
    DATA(t18) = 1.
    DATA(t19) = strlen( t16 ).
    IF t17 < 0.
      t17 = t17 + t19.
      IF t17 < 0.
        t17 = 0.
      ENDIF.
    ENDIF.
    IF t17 > t19 OR t18 <= 0.
    ELSE.
      IF t18 > t19 - t17.
        t18 = t19 - t17.
      ENDIF.
      t15 = t16+t17(t18).
    ENDIF.
    IF xsdbool( t15 = |!| ) = abap_true.
      DATA t22 TYPE string.
      t22 = t7.
      DATA(t24) = VALUE string( ).
      DATA(t26) = 1.
      DATA t27 TYPE i.
      t27 = strlen( t22 ).
      DATA(t30) = strlen( t22 ).
      IF t26 < 0.
        t26 = t26 + t30.
        IF t26 < 0.
          t26 = 0.
        ENDIF.
      ENDIF.
      IF t26 > t30 OR t27 <= 0.
      ELSE.
        IF t27 > t30 - t26.
          t27 = t30 - t26.
        ENDIF.
        t24 = t22+t26(t27).
      ENDIF.
      t7 = t24.
    ENDIF.
    t3 = t7.
    DATA(t32) = strlen( t2 ).
    result = |{ t2 }{ t3 }|.

  ENDMETHOD.

  METHOD is_generic.
    result = abap_false.

  ENDMETHOD.

  METHOD contains_void.
    result = abap_false.

  ENDMETHOD.

  METHOD get_identifier.
    result = me->identifier.

  ENDMETHOD.

  METHOD to_cds.
    result = |abap.TODO_OBJECTREF|.

  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = CONV string( me->t_t_i_s_a_t_b_o_r_t_t_ob_rf_ty( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1036_17caa775f2d6.
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
