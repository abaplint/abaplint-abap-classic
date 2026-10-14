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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_string_type IMPLEMENTATION.
  METHOD constructor.
    IF zcl_lnt_string_type=>zlnt_builtin_init_89055a07a79c = abap_false.
      zcl_lnt_string_type=>zlnt_builtin_init_a076d2e8e5a5( ).
    ENDIF.
    DATA(t1) = CAST zcl_lnt_abstract_type_data( i_input_967e ).
    DATA(t2) = CAST zcl_lnt_abstract_type_data( t1 ).
    super->constructor( i_input_967e = t2 ).
  ENDMETHOD.

  METHOD get_db65.
    IF zcl_lnt_string_type=>zlnt_builtin_init_89055a07a79c = abap_false.
      zcl_lnt_string_type=>zlnt_builtin_init_a076d2e8e5a5( ).
    ENDIF.
    DATA(t1) = CAST zcl_lnt_abstract_type_data( i_input_967e ).
    DATA t2 TYPE REF TO zcl_lnt_string_type.
    CLEAR t2.
    IF zcl_lnt_string_type=>zlnt_builtin_init_89055a07a79c = abap_false.
      zcl_lnt_string_type=>zlnt_builtin_init_a076d2e8e5a5( ).
    ENDIF.
    DATA(t3) = CAST zcl_lnt_abstract_type_data( t1 ).
    t2 = NEW zcl_lnt_string_type( i_input_967e = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD get_qualified_name.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/string_type.ts:22|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD t_t_i_s_a_ty_bs_st_ty_ts_st_ty.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/string_type.ts:30|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD is_generic.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.

  METHOD to_abap.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/string_type.ts:38|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD contains_void.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/string_type.ts:42|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD to_cds.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/string_type.ts:46|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
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
    DATA(t1) = NEW zlnt_runtime_map__fc7cfbd4d3c1( ).
    zcl_lnt_string_type=>singletons = t1.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1018_f355f9fcb893.
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
