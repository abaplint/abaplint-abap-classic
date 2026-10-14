* TS: src/abap/types/basic/unknown_type.ts:3:1 UnknownType
CLASS zcl_lnt_unknown_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_48da8d64.
    INTERFACES zif_lnt_union_adffe656.
    INTERFACES zif_lnt_union_ba49a4e5.
    INTERFACES zif_lnt_union_297610d4.
    INTERFACES zif_lnt_union_60f022dd.
    DATA error TYPE string.
    METHODS constructor IMPORTING i_error TYPE string i_qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    METHODS get_error RETURNING VALUE(result) TYPE string.
    METHODS t_t_i_s_a_ty_bs_un_ty_ts_un_ty RETURNING VALUE(result) TYPE string.
    METHODS to_abap REDEFINITION.
    METHODS is_generic REDEFINITION.
    METHODS contains_void REDEFINITION.
    METHODS to_cds REDEFINITION.
    METHODS to_text REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unknown_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_error.
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
    DATA(t13) = t1.
    me->error = t13.
  ENDMETHOD.
  METHOD get_error.
    DATA(t1) = CONV string( me->error ).
    result = t1.
    
  ENDMETHOD.
  METHOD t_t_i_s_a_ty_bs_un_ty_ts_un_ty.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/unknown_type.ts:15|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_abap.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/unknown_type.ts:19|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD is_generic.
    DATA(t1) = abap_false.
    result = t1.
    
  ENDMETHOD.
  METHOD contains_void.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/unknown_type.ts:27|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_cds.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/unknown_type.ts:31|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_text.
    DATA(t1) = CONV string( me->t_t_i_s_a_ty_bs_un_ty_ts_un_ty(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1023_11f7286d7e0a.
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~contains_void.
    result = me->contains_void(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~get_abstract_type_data.
    result = me->get_abstract_type_data(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~get_conversion_exit.
    result = me->get_conversion_exit(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~get_ddic_name.
    result = me->get_ddic_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~get_description.
    result = me->get_description(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~get_qualified_name.
    result = me->get_qualified_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~get_rtti_name.
    result = me->get_rtti_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~is_generic.
    result = me->is_generic(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~to_abap.
    result = me->to_abap(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~to_cds.
    result = me->to_cds(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~to_text.
    result = me->to_text(  i_level = i_level ).
  ENDMETHOD.
  METHOD zif_lnt_union_adffe656~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_union_adffe656~contains_void.
    result = me->contains_void(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_adffe656~get_abstract_type_data.
    result = me->get_abstract_type_data(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_adffe656~get_conversion_exit.
    result = me->get_conversion_exit(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_adffe656~get_ddic_name.
    result = me->get_ddic_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_adffe656~get_description.
    result = me->get_description(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_adffe656~get_qualified_name.
    result = me->get_qualified_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_adffe656~get_rtti_name.
    result = me->get_rtti_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_adffe656~is_generic.
    result = me->is_generic(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_adffe656~to_abap.
    result = me->to_abap(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_adffe656~to_cds.
    result = me->to_cds(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_adffe656~to_text.
    result = me->to_text(  i_level = i_level ).
  ENDMETHOD.
  METHOD zif_lnt_union_ba49a4e5~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_union_ba49a4e5~contains_void.
    result = me->contains_void(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_ba49a4e5~get_abstract_type_data.
    result = me->get_abstract_type_data(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_ba49a4e5~get_conversion_exit.
    result = me->get_conversion_exit(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_ba49a4e5~get_ddic_name.
    result = me->get_ddic_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_ba49a4e5~get_description.
    result = me->get_description(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_ba49a4e5~get_qualified_name.
    result = me->get_qualified_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_ba49a4e5~get_rtti_name.
    result = me->get_rtti_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_ba49a4e5~is_generic.
    result = me->is_generic(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_ba49a4e5~to_abap.
    result = me->to_abap(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_ba49a4e5~to_cds.
    result = me->to_cds(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_ba49a4e5~to_text.
    result = me->to_text(  i_level = i_level ).
  ENDMETHOD.
  METHOD zif_lnt_union_297610d4~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_union_297610d4~contains_void.
    result = me->contains_void(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_297610d4~get_abstract_type_data.
    result = me->get_abstract_type_data(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_297610d4~get_conversion_exit.
    result = me->get_conversion_exit(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_297610d4~get_ddic_name.
    result = me->get_ddic_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_297610d4~get_description.
    result = me->get_description(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_297610d4~get_qualified_name.
    result = me->get_qualified_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_297610d4~get_rtti_name.
    result = me->get_rtti_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_297610d4~is_generic.
    result = me->is_generic(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_297610d4~to_abap.
    result = me->to_abap(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_297610d4~to_cds.
    result = me->to_cds(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_297610d4~to_text.
    result = me->to_text(  i_level = i_level ).
  ENDMETHOD.
  METHOD zif_lnt_union_60f022dd~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_union_60f022dd~contains_void.
    result = me->contains_void(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_60f022dd~get_abstract_type_data.
    result = me->get_abstract_type_data(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_60f022dd~get_conversion_exit.
    result = me->get_conversion_exit(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_60f022dd~get_ddic_name.
    result = me->get_ddic_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_60f022dd~get_description.
    result = me->get_description(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_60f022dd~get_qualified_name.
    result = me->get_qualified_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_60f022dd~get_rtti_name.
    result = me->get_rtti_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_60f022dd~is_generic.
    result = me->is_generic(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_60f022dd~to_abap.
    result = me->to_abap(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_60f022dd~to_cds.
    result = me->to_cds(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_60f022dd~to_text.
    result = me->to_text(  i_level = i_level ).
  ENDMETHOD.
ENDCLASS.
