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
    DATA(t2) = i_extra.
    DATA(t3) = t2.
    super->constructor( i_input_967e = t3 ).
    DATA(t4) = t1.
    me->identifier = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `identifier`.
  ENDMETHOD.

  METHOD get_identifier_name.
    DATA(t1) = VALUE string( ).
    DATA t2 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t3) = me->identifier.
    t2 = t3.
    DATA(t4) = VALUE string( ).
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t9) = t2.
    t8 = t9->token.
    t7 = t8.
    DATA t10 TYPE string.
    DATA(t11) = t7.
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
    DATA(t1) = VALUE string( ).
    DATA(t2) = VALUE string( ).
    DATA(t3) = |```REF TO |.
    DATA(t4) = VALUE string( ).
    DATA t5 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t6) = me->identifier.
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

  METHOD to_abap.
    DATA(t1) = VALUE string( ).
    DATA(t2) = |REF TO |.
    DATA(t3) = VALUE string( ).
    DATA t4 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t5) = me->identifier.
    t4 = t5.
    DATA(t6) = VALUE string( ).
    DATA t7 TYPE string.
    DATA t8 TYPE string.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t11) = t4.
    t10 = t11->token.
    t9 = t10.
    DATA t12 TYPE string.
    DATA(t13) = t9.
    t12 = t13->str.
    t8 = t12.
    t7 = t8.
    DATA(t14) = VALUE abap_bool( ).
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
      CLEAR t15.
    ELSE.
      IF t18 > t19 - t17.
        t18 = t19 - t17.
      ENDIF.
      t15 = t16+t17(t18).
    ENDIF.
    DATA(t20) = |!|.
    t14 = xsdbool( t15 = t20 ).
    IF t14 = abap_true.
      DATA(t21) = VALUE string( ).
      DATA t22 TYPE string.
      DATA(t23) = t7.
      t22 = t23.
      DATA(t24) = VALUE string( ).
      DATA(t25) = t22.
      DATA(t26) = 1.
      DATA t27 TYPE i.
      DATA(t28) = t22.
      DATA(t29) = strlen( t28 ).
      t27 = t29.
      DATA(t30) = strlen( t25 ).
      IF t26 < 0.
        t26 = t26 + t30.
        IF t26 < 0.
          t26 = 0.
        ENDIF.
      ENDIF.
      IF t26 > t30 OR t27 <= 0.
        CLEAR t24.
      ELSE.
        IF t27 > t30 - t26.
          t27 = t30 - t26.
        ENDIF.
        t24 = t25+t26(t27).
      ENDIF.
      t21 = t24.
      t7 = t21.
    ENDIF.
    DATA(t31) = t7.
    t6 = t31.
    t3 = t6.
    DATA(t32) = strlen( t2 ).
    t1 = |{ t2 }{ t3 }|.
    result = t1.

  ENDMETHOD.

  METHOD is_generic.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.

  METHOD contains_void.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.

  METHOD get_identifier.
    DATA(t1) = me->identifier.
    result = t1.

  ENDMETHOD.

  METHOD to_cds.
    DATA(t1) = |abap.TODO_OBJECTREF|.
    result = t1.

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
