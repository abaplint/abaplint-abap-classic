* TS: src/abap/types/basic/packed_type.ts:3:1 PackedType
CLASS zcl_lnt_packed_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    DATA length TYPE int8.
    DATA decimals_29bf TYPE int8.
    METHODS constructor IMPORTING i_length TYPE int8 i_decimals_2eed TYPE int8 i_extra TYPE REF TO zcl_lnt_abstract_type_data OPTIONAL.
    METHODS get_length RETURNING VALUE(result) TYPE int8.
    METHODS get_decimals RETURNING VALUE(result) TYPE int8.
    METHODS t_t_i_s_a_ty_bs_pc_ty_ts_pc_ty RETURNING VALUE(result) TYPE string.
    METHODS to_abap REDEFINITION.
    METHODS is_generic REDEFINITION.
    METHODS contains_void REDEFINITION.
    METHODS to_cds REDEFINITION.
    METHODS to_text REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_packed_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_length.
    DATA(t2) = i_decimals_2eed.
    DATA(t3) = CAST zcl_lnt_abstract_type_data( i_extra ).
    DATA(t4) = CAST zcl_lnt_abstract_type_data( t3 ).
    super->constructor( i_input_967e = t4 ).
    DATA t5 TYPE abap_bool.
    DATA(t6) = t1.
    DATA(t7) = CONV int8( 0 ).
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
      RAISE EXCEPTION t8.
    ELSE.
      DATA t15 TYPE abap_bool.
      DATA(t16) = t2.
      DATA(t17) = CONV int8( 0 ).
      t15 = xsdbool( t16 < t17 ).
      IF t15 = abap_true.
        DATA t18 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t18.
        DATA t19 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t19.
        DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t20.
        DATA(t21) = abap_true.
        IF t21 = abap_true.
          DATA(t22) = |Bad DECIMALS, Packed|.
          DATA(t23) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t23->has = abap_true.
          t23->value = t22.
          t20 = t23.
        ELSE.
          DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t24.
          t20 = t24.
        ENDIF.
        t19 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t20 ).
        t18 = NEW #( ).
        t18->payload = t19.
        RAISE EXCEPTION t18.
      ENDIF.
    ENDIF.
    DATA(t25) = t1.
    me->length = t25.
    DATA(t26) = t2.
    me->decimals_29bf = t26.
  ENDMETHOD.
  METHOD get_length.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/packed_type.ts:18|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_decimals.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/packed_type.ts:22|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD t_t_i_s_a_ty_bs_pc_ty_ts_pc_ty.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/packed_type.ts:26|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_abap.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/packed_type.ts:30|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD is_generic.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.
  METHOD contains_void.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/packed_type.ts:38|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_cds.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/packed_type.ts:42|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_text.
    DATA(t1) = CONV string( me->t_t_i_s_a_ty_bs_pc_ty_ts_pc_ty( ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1015_9f7859f16d8d.
  ENDMETHOD.
ENDCLASS.
