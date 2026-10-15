* TS: src/abap/types/basic/decfloat34_type.ts:3:1 DecFloat34Type
CLASS zcl_lnt_dec_float34_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor IMPORTING i_input_967e TYPE REF TO zcl_lnt_abstract_type_data OPTIONAL.
    METHODS t_t_i_s_a_t_b_d_t_t_d_f_t_aa42 RETURNING VALUE(result) TYPE string.
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
CLASS zcl_lnt_dec_float34_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_input_967e.
    DATA(t2) = t1.
    super->constructor( i_input_967e = t2 ).
  ENDMETHOD.

  METHOD t_t_i_s_a_t_b_d_t_t_d_f_t_aa42.
    DATA(t1) = |```decfloat34```|.
    result = t1.

  ENDMETHOD.

  METHOD is_generic.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.

  METHOD to_abap.
    DATA(t1) = |decfloat34|.
    result = t1.

  ENDMETHOD.

  METHOD contains_void.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.

  METHOD to_cds.
    DATA(t1) = |abap.d34n|.
    result = t1.

  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = CONV string( me->t_t_i_s_a_t_b_d_t_t_d_f_t_aa42( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1025_c6cb4727f974.
  ENDMETHOD.
ENDCLASS.
