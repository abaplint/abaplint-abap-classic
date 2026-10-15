* TS: src/abap/types/basic/packed_type.ts:3:1 PackedType
CLASS zcl_lnt_packed_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    DATA length TYPE f.
    DATA decimals_29bf TYPE f.
    METHODS constructor IMPORTING i_length TYPE f i_decimals_2eed TYPE f i_extra TYPE REF TO zcl_lnt_abstract_type_data OPTIONAL.
    METHODS get_length RETURNING VALUE(result) TYPE f.
    METHODS get_decimals RETURNING VALUE(result) TYPE f.
    METHODS t_t_i_s_a_ty_bs_pc_ty_ts_pc_ty RETURNING VALUE(result) TYPE string.
    METHODS to_abap REDEFINITION.
    METHODS is_generic REDEFINITION.
    METHODS contains_void REDEFINITION.
    METHODS to_cds REDEFINITION.
    METHODS to_text REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_packed_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_length.
    DATA(t2) = i_decimals_2eed.
    DATA(t3) = i_extra.
    DATA(t4) = t3.
    super->constructor( i_input_967e = t4 ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t1.
    DATA(t7) = CONV f( 0 ).
    t5 = xsdbool( t6 <= t7 ).
    IF t5 = abap_true.
      DATA t8 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t9.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      DATA(t11) = abap_true.
      IF t11 = abap_true.
        DATA(t12) = |Bad LENGTH, Packed|.
        DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t13->has = abap_true.
        t13->value = t12.
        t10 = t13.
      ELSE.
        DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t14.
        t10 = t14.
      ENDIF.
      t9 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t10 ).
      t8 = NEW #( ).
      t8->payload = t9.
      CLEAR t8->source_value.
      IF t9 IS BOUND.
        DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t15.
        DATA t16 TYPE REF TO object.
        CLEAR t16.
        CLEAR t15.
        t16 = t9.
        TRY.
            t8->source_value ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8->source_value IS NOT BOUND.
          TRY.
              t15 ?= t9.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t15 IS BOUND.
            t8->source_value = t15->source( ).
          ENDIF.
          IF t8->source_value IS NOT BOUND.
            CREATE OBJECT t8->source_value.
            t8->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t8->source_value->oval = t9.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t8.
    ELSE.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = t2.
      DATA(t19) = CONV f( 0 ).
      t17 = xsdbool( t18 < t19 ).
      IF t17 = abap_true.
        DATA t20 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t20.
        DATA t21 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t21.
        DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t22.
        DATA(t23) = abap_true.
        IF t23 = abap_true.
          DATA(t24) = |Bad DECIMALS, Packed|.
          DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t25->has = abap_true.
          t25->value = t24.
          t22 = t25.
        ELSE.
          DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t26.
          t22 = t26.
        ENDIF.
        t21 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t22 ).
        t20 = NEW #( ).
        t20->payload = t21.
        CLEAR t20->source_value.
        IF t21 IS BOUND.
          DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t27.
          DATA t28 TYPE REF TO object.
          CLEAR t28.
          CLEAR t27.
          t28 = t21.
          TRY.
              t20->source_value ?= t28.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t20->source_value IS NOT BOUND.
            TRY.
                t27 ?= t21.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t27 IS BOUND.
              t20->source_value = t27->source( ).
            ENDIF.
            IF t20->source_value IS NOT BOUND.
              CREATE OBJECT t20->source_value.
              t20->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t20->source_value->oval = t21.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t20.
      ENDIF.
    ENDIF.
    DATA(t29) = t1.
    me->length = t29.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `length`.
    DATA(t30) = t2.
    me->decimals_29bf = t30.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `decimals`.
  ENDMETHOD.

  METHOD get_length.
    DATA(t1) = CONV f( me->length ).
    result = t1.

  ENDMETHOD.

  METHOD get_decimals.
    DATA(t1) = CONV f( me->decimals_29bf ).
    result = t1.

  ENDMETHOD.

  METHOD t_t_i_s_a_ty_bs_pc_ty_ts_pc_ty.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = VALUE string( ).
    DATA(t2) = VALUE string( ).
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    DATA(t5) = |```p LENGTH |.
    DATA(t6) = VALUE string( ).
    DATA(t7) = CONV f( me->length ).
    IF t7 <> trunc( t7 ) OR t7 > range_safe_integer OR t7 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t8) = CONV int8( t7 ).
    t6 = |{ t8 }|.
    DATA(t9) = strlen( t5 ).
    t4 = |{ t5 }{ t6 }|.
    DATA(t10) = | DECIMALS |.
    DATA(t11) = strlen( t4 ).
    t3 = |{ t4 }{ t10 }|.
    DATA(t12) = VALUE string( ).
    DATA(t13) = CONV f( me->decimals_29bf ).
    IF t13 <> trunc( t13 ) OR t13 > range_safe_integer OR t13 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t14) = CONV int8( t13 ).
    t12 = |{ t14 }|.
    DATA(t15) = strlen( t3 ).
    t2 = |{ t3 }{ t12 }|.
    DATA(t16) = |```|.
    DATA(t17) = strlen( t2 ).
    t1 = |{ t2 }{ t16 }|.
    result = t1.

  ENDMETHOD.

  METHOD to_abap.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = VALUE string( ).
    DATA(t2) = VALUE string( ).
    DATA(t3) = VALUE string( ).
    DATA(t4) = |p LENGTH |.
    DATA(t5) = VALUE string( ).
    DATA(t6) = CONV f( me->length ).
    IF t6 <> trunc( t6 ) OR t6 > range_safe_integer OR t6 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t7) = CONV int8( t6 ).
    t5 = |{ t7 }|.
    DATA(t8) = strlen( t4 ).
    t3 = |{ t4 }{ t5 }|.
    DATA(t9) = | DECIMALS |.
    DATA(t10) = strlen( t3 ).
    t2 = |{ t3 }{ t9 }|.
    DATA(t11) = VALUE string( ).
    DATA(t12) = CONV f( me->decimals_29bf ).
    IF t12 <> trunc( t12 ) OR t12 > range_safe_integer OR t12 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t13) = CONV int8( t12 ).
    t11 = |{ t13 }|.
    DATA(t14) = strlen( t2 ).
    t1 = |{ t2 }{ t11 }|.
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

  METHOD to_cds.
    DATA(t1) = |abap.TODO_PACKED|.
    result = t1.

  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = CONV string( me->t_t_i_s_a_ty_bs_pc_ty_ts_pc_ty( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1037_ead0a3c2ba70.
  ENDMETHOD.
ENDCLASS.
