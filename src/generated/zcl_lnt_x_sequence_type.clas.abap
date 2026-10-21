* TS: src/abap/types/basic/xsequence_type.ts:3:1 XSequenceType
CLASS zcl_lnt_x_sequence_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor IMPORTING i_input_967e TYPE REF TO zcl_lnt_abstract_type_data OPTIONAL.
    METHODS t_t_i_s_a_t_b_xs_ty_ts_x_sq_ty RETURNING VALUE(result) TYPE string.
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
CLASS zcl_lnt_x_sequence_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_input_967e.
    super->constructor( i_input_967e = t2 ).
  ENDMETHOD.

  METHOD t_t_i_s_a_t_b_xs_ty_ts_x_sq_ty.
    result = |```xsequence```|.

  ENDMETHOD.

  METHOD is_generic.
    result = abap_true.

  ENDMETHOD.

  METHOD to_abap.
    DATA t1 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    DATA t2 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    DATA(t6) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t6->has = abap_true.
    t6->value = |xsequence, generic|.
    t2 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t6 ).
    t1 = NEW #( ).
    t1->payload = t2.
    CLEAR t1->source_value.
    DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t9 TYPE REF TO object.
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
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD contains_void.
    result = abap_false.

  ENDMETHOD.

  METHOD to_cds.
    result = |abap.TODO_XSEQUENCE|.

  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = CONV string( me->t_t_i_s_a_t_b_xs_ty_ts_x_sq_ty( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1049_a720e7390192.
  ENDMETHOD.
ENDCLASS.
