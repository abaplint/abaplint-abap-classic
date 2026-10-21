* TS: src/abap/types/basic/string_type.ts:3:1 StringType
CLASS zcl_lnt_string_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_f16d2839.
    INTERFACES zif_lnt_union_72e2c467.
    CLASS-DATA singletons TYPE REF TO zlnt_runtime_map__fc7cfbd4d3c1.
    METHODS constructor IMPORTING i_input_967e TYPE REF TO zcl_lnt_abstract_type_data OPTIONAL.
    CLASS-METHODS get_db65 IMPORTING i_input_967e TYPE REF TO zcl_lnt_abstract_type_data RETURNING VALUE(result) TYPE REF TO zcl_lnt_string_type.
    METHODS get_qualified_name REDEFINITION.
    METHODS t_t_i_s_a_ty_bs_st_ty_ts_st_ty RETURNING VALUE(result) TYPE string.
    METHODS is_generic REDEFINITION.
    METHODS to_abap REDEFINITION.
    METHODS contains_void REDEFINITION.
    METHODS to_cds REDEFINITION.
    METHODS to_text REDEFINITION.
    CLASS-DATA zlnt_builtin_init_89055a07a79c TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_a076d2e8e5a5.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_string_type IMPLEMENTATION.
  METHOD constructor.
    IF zcl_lnt_string_type=>zlnt_builtin_init_89055a07a79c = abap_false.
      zcl_lnt_string_type=>zlnt_builtin_init_a076d2e8e5a5( ).
    ENDIF.
    DATA(t2) = i_input_967e.
    super->constructor( i_input_967e = t2 ).
  ENDMETHOD.

  METHOD get_db65.
    IF zcl_lnt_string_type=>zlnt_builtin_init_89055a07a79c = abap_false.
      zcl_lnt_string_type=>zlnt_builtin_init_a076d2e8e5a5( ).
    ENDIF.
    DATA(t1) = i_input_967e.
    IF zcl_lnt_string_type=>zlnt_builtin_init_89055a07a79c = abap_false.
      zcl_lnt_string_type=>zlnt_builtin_init_a076d2e8e5a5( ).
    ENDIF.
    result = NEW zcl_lnt_string_type( i_input_967e = t1 ).

  ENDMETHOD.

  METHOD get_qualified_name.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3 TYPE REF TO zcl_lnt_abstract_type_data.
    t3 = me->data_56cc.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
    ELSE.
      t5 = t3->zlnt_view_read_sr_c978da49ae47( ).
    ENDIF.
    t1 = t5.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t13 = t1.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t17) = VALUE abap_bool( ).
    IF t13 IS INITIAL.
      t17 = abap_true.
    ELSEIF t13->has = abap_false.
      t17 = abap_true.
    ENDIF.
    IF t17 = abap_true.
      DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t22->has = abap_true.
      t22->value = |STRING|.
      result = t22.
      RETURN.
    ENDIF.
    DATA t26 TYPE string.
    t26 = t1->value.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t26.
    result = t28.

  ENDMETHOD.

  METHOD t_t_i_s_a_ty_bs_st_ty_ts_st_ty.
    result = |```string```|.

  ENDMETHOD.

  METHOD is_generic.
    result = abap_false.

  ENDMETHOD.

  METHOD to_abap.
    result = |string|.

  ENDMETHOD.

  METHOD contains_void.
    result = abap_false.

  ENDMETHOD.

  METHOD to_cds.
    result = |abap.string|.

  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = CONV string( me->t_t_i_s_a_ty_bs_st_ty_ts_st_ty( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_init_a076d2e8e5a5.
    IF zlnt_builtin_init_89055a07a79c = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_89055a07a79c = abap_true.
    IF zcl_lnt_string_type=>zlnt_builtin_init_89055a07a79c = abap_false.
      zcl_lnt_string_type=>zlnt_builtin_init_a076d2e8e5a5( ).
    ENDIF.
    zcl_lnt_string_type=>singletons = NEW zlnt_runtime_map__fc7cfbd4d3c1( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1040_e224823bc9c2.
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~contains_void.
    result = me->contains_void( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~get_abstract_type_data.
    result = me->get_abstract_type_data( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~get_conversion_exit.
    result = me->get_conversion_exit( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~get_ddic_name.
    result = me->get_ddic_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~get_qualified_name.
    result = me->get_qualified_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~get_rtti_name.
    result = me->get_rtti_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~is_generic.
    result = me->is_generic( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~to_abap.
    result = me->to_abap( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~to_cds.
    result = me->to_cds( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~to_text.
    result = me->to_text( i_level = i_level ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~contains_void.
    result = me->contains_void( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~get_abstract_type_data.
    result = me->get_abstract_type_data( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~get_conversion_exit.
    result = me->get_conversion_exit( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~get_ddic_name.
    result = me->get_ddic_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~get_qualified_name.
    result = me->get_qualified_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~get_rtti_name.
    result = me->get_rtti_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~is_generic.
    result = me->is_generic( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~to_abap.
    result = me->to_abap( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~to_cds.
    result = me->to_cds( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~to_text.
    result = me->to_text( i_level = i_level ).
  ENDMETHOD.
ENDCLASS.
