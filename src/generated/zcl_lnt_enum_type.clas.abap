* TS: src/abap/types/basic/enum_type.ts:3:1 EnumType
CLASS zcl_lnt_enum_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor IMPORTING i_input_967e TYPE REF TO zcl_lnt_abstract_type_data OPTIONAL.
    METHODS t_t_i_s_a_ty_bs_en_ty_ts_en_ty RETURNING VALUE(result) TYPE string.
    METHODS is_generic REDEFINITION.
    METHODS to_abap REDEFINITION.
    METHODS contains_void REDEFINITION.
    METHODS to_cds REDEFINITION.
    METHODS to_text REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_enum_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_input_967e.
    super->constructor( i_input_967e = t2 ).
  ENDMETHOD.

  METHOD t_t_i_s_a_ty_bs_en_ty_ts_en_ty.
    result = |enum|.

  ENDMETHOD.

  METHOD is_generic.
    result = abap_false.

  ENDMETHOD.

  METHOD to_abap.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    t4 = me.
    DATA t7 TYPE REF TO zcl_lnt_abstract_type_data.
    t7 = t4->data_56cc.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t7 IS INITIAL ) = abap_true.
    ELSE.
      t10 = t7->zlnt_view_read_sr_c978da49ae47( ).
    ENDIF.
    t2 = t10.
    DATA(t17) = VALUE string( ).
    DATA(t18) = VALUE abap_bool( ).
    IF t2 IS BOUND.
      IF t2->has = abap_true.
        t18 = xsdbool( strlen( t2->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t18 = abap_true.
      t17 = t2->value.
    ELSE.
      t17 = |enum|.
    ENDIF.
    result = t17.

  ENDMETHOD.

  METHOD contains_void.
    result = abap_false.

  ENDMETHOD.

  METHOD to_cds.
    result = |abap.TODO_ENUM|.

  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = CONV string( me->t_t_i_s_a_ty_bs_en_ty_ts_en_ty( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1027_1127e4cf05ed.
  ENDMETHOD.
ENDCLASS.
