* TS: src/abap/types/basic/numeric_type.ts:3:1 NumericType
CLASS zcl_lnt_numeric_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    DATA length TYPE f.
    METHODS constructor IMPORTING i_length TYPE f i_qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    METHODS get_length RETURNING VALUE(result) TYPE f.
    METHODS t_t_i_s_a_ty_bs_nm_ty_ts_nm_ty RETURNING VALUE(result) TYPE string.
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
CLASS zcl_lnt_numeric_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_length.
    DATA(t2) = i_qualified_name.
    DATA t3 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA t5 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t5.
      DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t6.
      DATA(t7) = t2.
      t6 = t7.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      t8 = t9.
      DATA t10 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t10.
      DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t11.
      t10 = t11.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      t14 = t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      t16 = t17.
      t5 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t6 i_conversion_exit = t8 i_derived_from_constant = t10 i_ddic_name = t12 i_rtti_name = t14 i_description = t16 ).
      CREATE OBJECT t5->zlnt_view_ownkeys_b0e8086400eb.
      t5->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t18 ).
      ENDIF.
      CREATE OBJECT t5->zlnt_json_ownkeys_70e5fd461788.
      t5->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t19) = |qualifiedName|.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
      ENDIF.
      t3 = t5.
    ELSE.
      DATA t21 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t21.
      t3 = t21.
    ENDIF.
    super->constructor( i_input_967e = t3 ).
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = t1.
    DATA(t24) = CONV f( 0 ).
    t22 = xsdbool( t23 <= t24 ).
    IF t22 = abap_true.
      DATA t25 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t25.
      DATA t26 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA(t28) = abap_true.
      IF t28 = abap_true.
        DATA(t29) = |Bad LENGTH, Numeric|.
        DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t30->has = abap_true.
        t30->value = t29.
        t27 = t30.
      ELSE.
        DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t31.
        t27 = t31.
      ENDIF.
      t26 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t27 ).
      t25 = NEW #( ).
      t25->payload = t26.
      CLEAR t25->source_value.
      IF t26 IS BOUND.
        DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t32.
        DATA t33 TYPE REF TO object.
        CLEAR t33.
        CLEAR t32.
        t33 = t26.
        TRY.
            t25->source_value ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25->source_value IS NOT BOUND.
          TRY.
              t32 ?= t26.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t32 IS BOUND.
            t25->source_value = t32->source( ).
          ENDIF.
          IF t25->source_value IS NOT BOUND.
            CREATE OBJECT t25->source_value.
            t25->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t25->source_value->oval = t26.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t25.
    ENDIF.
    DATA(t34) = t1.
    me->length = t34.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `length`.
  ENDMETHOD.

  METHOD get_length.
    DATA(t1) = CONV f( me->length ).
    result = t1.

  ENDMETHOD.

  METHOD t_t_i_s_a_ty_bs_nm_ty_ts_nm_ty.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = VALUE string( ).
    DATA(t2) = VALUE string( ).
    DATA(t3) = |```n LENGTH |.
    DATA(t4) = VALUE string( ).
    DATA(t5) = CONV f( me->length ).
    IF t5 <> trunc( t5 ) OR t5 > range_safe_integer OR t5 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t6) = CONV int8( t5 ).
    t4 = |{ t6 }|.
    DATA(t7) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t8) = |```|.
    DATA(t9) = strlen( t2 ).
    t1 = |{ t2 }{ t8 }|.
    result = t1.

  ENDMETHOD.

  METHOD to_abap.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = VALUE string( ).
    DATA(t2) = |n LENGTH |.
    DATA(t3) = VALUE string( ).
    DATA(t4) = CONV f( me->length ).
    IF t4 <> trunc( t4 ) OR t4 > range_safe_integer OR t4 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t5) = CONV int8( t4 ).
    t3 = |{ t5 }|.
    DATA(t6) = strlen( t2 ).
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

  METHOD to_cds.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = VALUE string( ).
    DATA(t2) = VALUE string( ).
    DATA(t3) = |abap.numc( |.
    DATA(t4) = VALUE string( ).
    DATA(t5) = CONV f( me->length ).
    IF t5 <> trunc( t5 ) OR t5 > range_safe_integer OR t5 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t6) = CONV int8( t5 ).
    t4 = |{ t6 }|.
    DATA(t7) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t8) = | )|.
    DATA(t9) = strlen( t2 ).
    t1 = |{ t2 }{ t8 }|.
    result = t1.

  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = CONV string( me->t_t_i_s_a_ty_bs_nm_ty_ts_nm_ty( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1035_3d4f282d9a47.
  ENDMETHOD.
ENDCLASS.
