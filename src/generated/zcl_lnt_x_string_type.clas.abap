* TS: src/abap/types/basic/xstring_type.ts:3:1 XStringType
CLASS zcl_lnt_x_string_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA singletons TYPE REF TO zlnt_runtime_map__0a96e2468aae.
    METHODS constructor IMPORTING i_input_967e TYPE REF TO zcl_lnt_abstract_type_data OPTIONAL.
    CLASS-METHODS get_db65 IMPORTING i_input_967e TYPE REF TO zcl_lnt_abstract_type_data RETURNING VALUE(result) TYPE REF TO zcl_lnt_x_string_type.
    METHODS t_t_i_s_a_t_b_xs_ty_ts_x_st_ty RETURNING VALUE(result) TYPE string.
    METHODS is_generic REDEFINITION.
    METHODS to_abap REDEFINITION.
    METHODS contains_void REDEFINITION.
    METHODS to_cds REDEFINITION.
    METHODS to_text REDEFINITION.
    CLASS-DATA zlnt_builtin_init_5b41ede9197f TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_74ee6279b0b4.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_x_string_type IMPLEMENTATION.
  METHOD constructor.
    IF zcl_lnt_x_string_type=>zlnt_builtin_init_5b41ede9197f = abap_false.
      zcl_lnt_x_string_type=>zlnt_builtin_init_74ee6279b0b4( ).
    ENDIF.
    DATA(t1) = i_input_967e.
    DATA(t2) = t1.
    super->constructor( i_input_967e = t2 ).
  ENDMETHOD.

  METHOD get_db65.
    IF zcl_lnt_x_string_type=>zlnt_builtin_init_5b41ede9197f = abap_false.
      zcl_lnt_x_string_type=>zlnt_builtin_init_74ee6279b0b4( ).
    ENDIF.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zcl_lnt_x_string_type.
    CLEAR t2.
    IF zcl_lnt_x_string_type=>zlnt_builtin_init_5b41ede9197f = abap_false.
      zcl_lnt_x_string_type=>zlnt_builtin_init_74ee6279b0b4( ).
    ENDIF.
    DATA(t3) = t1.
    t2 = NEW zcl_lnt_x_string_type( i_input_967e = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD t_t_i_s_a_t_b_xs_ty_ts_x_st_ty.
    DATA(t1) = |```xstring```|.
    result = t1.

  ENDMETHOD.

  METHOD is_generic.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.

  METHOD to_abap.
    DATA(t1) = |xstring|.
    result = t1.

  ENDMETHOD.

  METHOD contains_void.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.

  METHOD to_cds.
    DATA(t1) = |abap.rawstring|.
    result = t1.

  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = CONV string( me->t_t_i_s_a_t_b_xs_ty_ts_x_st_ty( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_init_74ee6279b0b4.
    IF zlnt_builtin_init_5b41ede9197f = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_5b41ede9197f = abap_true.
    IF zcl_lnt_x_string_type=>zlnt_builtin_init_5b41ede9197f = abap_false.
      zcl_lnt_x_string_type=>zlnt_builtin_init_74ee6279b0b4( ).
    ENDIF.
    DATA(t1) = NEW zlnt_runtime_map__0a96e2468aae( ).
    zcl_lnt_x_string_type=>singletons = t1.
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1050_37307363eb17.
  ENDMETHOD.
ENDCLASS.
