* TS: src/abap/types/basic/simple_type.ts:3:1 SimpleType
CLASS zcl_lnt_simple_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA singleton TYPE REF TO zcl_lnt_simple_type.
    METHODS constructor.
    CLASS-METHODS get_db65 RETURNING VALUE(result) TYPE REF TO zcl_lnt_simple_type.
    METHODS t_t_i_s_a_ty_bs_sm_ty_ts_sm_ty RETURNING VALUE(result) TYPE string.
    METHODS to_abap REDEFINITION.
    METHODS is_generic REDEFINITION.
    METHODS contains_void REDEFINITION.
    METHODS to_cds REDEFINITION.
    METHODS to_text REDEFINITION.
    CLASS-DATA zlnt_builtin_init_6880937654df TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_5860290dc37a.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_simple_type IMPLEMENTATION.
  METHOD constructor.
    IF zcl_lnt_simple_type=>zlnt_builtin_init_6880937654df = abap_false.
      zcl_lnt_simple_type=>zlnt_builtin_init_5860290dc37a( ).
    ENDIF.
    DATA t1 TYPE REF TO zcl_lnt_abstract_type_data.
    super->constructor( i_input_967e = t1 ).
  ENDMETHOD.

  METHOD get_db65.
    IF zcl_lnt_simple_type=>zlnt_builtin_init_6880937654df = abap_false.
      zcl_lnt_simple_type=>zlnt_builtin_init_5860290dc37a( ).
    ENDIF.
    IF zcl_lnt_simple_type=>zlnt_builtin_init_6880937654df = abap_false.
      zcl_lnt_simple_type=>zlnt_builtin_init_5860290dc37a( ).
    ENDIF.
    result = zcl_lnt_simple_type=>singleton.

  ENDMETHOD.

  METHOD t_t_i_s_a_ty_bs_sm_ty_ts_sm_ty.
    result = |```simple```|.

  ENDMETHOD.

  METHOD to_abap.
    result = |simple|.

  ENDMETHOD.

  METHOD is_generic.
    result = abap_true.

  ENDMETHOD.

  METHOD contains_void.
    result = abap_false.

  ENDMETHOD.

  METHOD to_cds.
    result = |abap.TODO_SIMPLE|.

  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = CONV string( me->t_t_i_s_a_ty_bs_sm_ty_ts_sm_ty( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_init_5860290dc37a.
    IF zlnt_builtin_init_6880937654df = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_6880937654df = abap_true.
    IF zcl_lnt_simple_type=>zlnt_builtin_init_6880937654df = abap_false.
      zcl_lnt_simple_type=>zlnt_builtin_init_5860290dc37a( ).
    ENDIF.
    IF zcl_lnt_simple_type=>zlnt_builtin_init_6880937654df = abap_false.
      zcl_lnt_simple_type=>zlnt_builtin_init_5860290dc37a( ).
    ENDIF.
    zcl_lnt_simple_type=>singleton = NEW zcl_lnt_simple_type( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1039_204717d2f6bf.
  ENDMETHOD.
ENDCLASS.
