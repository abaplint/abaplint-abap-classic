* TS: src/abap/types/basic/numeric_generic_type.ts:3:1 NumericGenericType
CLASS zcl_lnt_numeric_generic_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor IMPORTING i_input_967e TYPE REF TO zcl_lnt_abstract_type_data OPTIONAL.
    METHODS t_t_i_s_a_t_b_n_g_t_t_nm_gn_ty RETURNING VALUE(result) TYPE string.
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
CLASS zcl_lnt_numeric_generic_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_input_967e.
    DATA(t2) = t1.
    super->constructor( i_input_967e = t2 ).
  ENDMETHOD.

  METHOD t_t_i_s_a_t_b_n_g_t_t_nm_gn_ty.
    DATA(t1) = |```NUMERIC```|.
    result = t1.

  ENDMETHOD.

  METHOD is_generic.
    DATA(t1) = abap_true.
    result = t1.

  ENDMETHOD.

  METHOD to_abap.
    DATA t1 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = |NumericGenericType, generic|.
      DATA(t6) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t6->has = abap_true.
      t6->value = t5.
      t3 = t6.
    ELSE.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      t3 = t7.
    ENDIF.
    t2 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t3 ).
    t1 = NEW #( ).
    t1->payload = t2.
    CLEAR t1->source_value.
    IF t2 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t8.
      DATA t9 TYPE REF TO object.
      CLEAR t9.
      CLEAR t8.
      t9 = t2.
      TRY.
          t1->source_value ?= t9.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1->source_value IS NOT BOUND.
        TRY.
            t8 ?= t2.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8 IS BOUND.
          t1->source_value = t8->source( ).
        ENDIF.
        IF t1->source_value IS NOT BOUND.
          CREATE OBJECT t1->source_value.
          t1->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1->source_value->oval = t2.
        ENDIF.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD contains_void.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.

  METHOD to_cds.
    DATA(t1) = |abap.TODO_NUMERICGENERIC|.
    result = t1.

  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = CONV string( me->t_t_i_s_a_t_b_n_g_t_t_nm_gn_ty( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1034_d68bf50add4f.
  ENDMETHOD.
ENDCLASS.
