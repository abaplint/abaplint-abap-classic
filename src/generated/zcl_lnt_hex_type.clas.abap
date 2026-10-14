* TS: src/abap/types/basic/hex_type.ts:3:1 HexType
CLASS zcl_lnt_hex_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    DATA length TYPE int8.
    METHODS constructor IMPORTING i_length TYPE int8 i_qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    METHODS get_length RETURNING VALUE(result) TYPE int8.
    METHODS t_t_i_s_a_ty_bs_hx_ty_ts_hx_ty RETURNING VALUE(result) TYPE string.
    METHODS to_abap REDEFINITION.
    METHODS is_generic REDEFINITION.
    METHODS contains_void REDEFINITION.
    METHODS to_cds REDEFINITION.
    METHODS to_text REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_hex_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_length.
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_qualified_name ).
    DATA t3 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA t5 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      DATA t8 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t8.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      t5 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t6 i_conversion_exit = t7 i_derived_from_constant = t8 i_ddic_name = t9 i_rtti_name = t10 i_description = t11 ).
      t3 = t5.
    ELSE.
      DATA t12 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t12.
      t3 = t12.
    ENDIF.
    super->constructor( i_input_967e = t3 ).
    DATA t13 TYPE abap_bool.
    DATA(t14) = t1.
    DATA(t15) = CONV int8( 0 ).
    t13 = xsdbool( t14 <= t15 ).
    IF t13 = abap_true.
      DATA t16 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t16.
      DATA t17 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      DATA(t19) = abap_true.
      IF t19 = abap_true.
        DATA(t20) = |Bad LENGTH, Hex|.
        DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t21->has = abap_true.
        t21->value = t20.
        t18 = t21.
      ELSE.
        DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t22.
        t18 = t22.
      ENDIF.
      t17 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t18 ).
      t16 = NEW #( ).
      t16->payload = t17.
      RAISE EXCEPTION t16.
    ENDIF.
    DATA(t23) = t1.
    me->length = t23.
  ENDMETHOD.
  METHOD get_length.
    DATA(t1) = CONV int8( me->length ).
    result = t1.

  ENDMETHOD.
  METHOD t_t_i_s_a_ty_bs_hx_ty_ts_hx_ty.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/hex_type.ts:18|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_abap.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/hex_type.ts:22|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD is_generic.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.
  METHOD contains_void.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/hex_type.ts:30|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_cds.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/hex_type.ts:34|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_text.
    DATA(t1) = CONV string( me->t_t_i_s_a_ty_bs_hx_ty_ts_hx_ty( ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1009_5c49db3a1727.
  ENDMETHOD.
ENDCLASS.
