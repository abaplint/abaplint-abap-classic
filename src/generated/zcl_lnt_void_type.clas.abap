* TS: src/abap/types/basic/void_type.ts:3:1 VoidType
CLASS zcl_lnt_void_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_89dd54d5.
    INTERFACES zif_lnt_union_8cd68e5e.
    INTERFACES zif_lnt_union_48da8d64.
    INTERFACES zif_lnt_union_adffe656.
    INTERFACES zif_lnt_union_ba49a4e5.
    INTERFACES zif_lnt_union_297610d4.
    INTERFACES zif_lnt_union_60f022dd.
    INTERFACES zif_lnt_union_265b2b50.
    CLASS-DATA singletons TYPE REF TO zlnt_runtime_map__363847cd8bb7.
    DATA voided TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_voided TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    CLASS-METHODS get_db65 IMPORTING i_voided TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_void_type.
    METHODS get_voided RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS to_abap REDEFINITION.
    METHODS t_t_i_s_a_ty_bs_vd_ty_ts_vd_ty RETURNING VALUE(result) TYPE string.
    METHODS is_generic REDEFINITION.
    METHODS contains_void REDEFINITION.
    METHODS to_cds REDEFINITION.
    METHODS to_text REDEFINITION.
    CLASS-DATA zlnt_builtin_init_8e2cbb35b29e TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_d4e641a3993b.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_void_type IMPLEMENTATION.
  METHOD constructor.
    IF zcl_lnt_void_type=>zlnt_builtin_init_8e2cbb35b29e = abap_false.
      zcl_lnt_void_type=>zlnt_builtin_init_d4e641a3993b( ).
    ENDIF.
    DATA(t1) = i_voided.
    DATA t5 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t6 = i_qualified_name.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t10 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t5 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t6 i_conversion_exit = t8 i_derived_from_constant = t10 i_ddic_name = t12 i_rtti_name = t14 i_description = t16 ).
    CREATE OBJECT t5->zlnt_view_ownkeys_b0e8086400eb.
    t5->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t18 ).
    CREATE OBJECT t5->zlnt_json_ownkeys_70e5fd461788.
    t5->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t20 ).
    super->constructor( i_input_967e = t5 ).
    me->voided = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `voided`.
  ENDMETHOD.

  METHOD get_db65.
    IF zcl_lnt_void_type=>zlnt_builtin_init_8e2cbb35b29e = abap_false.
      zcl_lnt_void_type=>zlnt_builtin_init_d4e641a3993b( ).
    ENDIF.
    DATA(t1) = i_voided.
    DATA(t2) = i_qualified_name.
    IF zcl_lnt_void_type=>zlnt_builtin_init_8e2cbb35b29e = abap_false.
      zcl_lnt_void_type=>zlnt_builtin_init_d4e641a3993b( ).
    ENDIF.
    result = NEW zcl_lnt_void_type( i_voided = t1 i_qualified_name = t2 ).

  ENDMETHOD.

  METHOD get_voided.
    result = me->voided.

  ENDMETHOD.

  METHOD to_abap.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2 = me->voided.
    DATA(t4) = VALUE string( ).
    DATA(t5) = VALUE abap_bool( ).
    IF t2 IS BOUND.
      IF t2->has = abap_true.
        t5 = xsdbool( strlen( t2->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t5 = abap_true.
      t4 = t2->value.
    ELSE.
      t4 = |VOIDEDtoABAP|.
    ENDIF.
    result = t4.

  ENDMETHOD.

  METHOD t_t_i_s_a_ty_bs_vd_ty_ts_vd_ty.
    DATA(t2) = VALUE string( ).
    DATA(t3) = |Void(|.
    DATA(t4) = VALUE string( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t5 = me->voided.
    DATA(t7) = VALUE string( ).
    DATA(t8) = VALUE abap_bool( ).
    IF t5 IS INITIAL.
      t8 = abap_true.
    ELSEIF t5->has = abap_false.
      t8 = abap_true.
    ENDIF.
    IF t8 = abap_true.
      t7 = |undefined|.
    ELSE.
      t7 = t5->value.
    ENDIF.
    t4 = t7.
    DATA(t13) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t15) = strlen( t2 ).
    result = |{ t2 }{ |)| }|.

  ENDMETHOD.

  METHOD is_generic.
    result = abap_false.

  ENDMETHOD.

  METHOD contains_void.
    result = abap_true.

  ENDMETHOD.

  METHOD to_cds.
    result = |abap.TODO_VOID|.

  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = CONV string( me->t_t_i_s_a_ty_bs_vd_ty_ts_vd_ty( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_init_d4e641a3993b.
    IF zlnt_builtin_init_8e2cbb35b29e = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_8e2cbb35b29e = abap_true.
    IF zcl_lnt_void_type=>zlnt_builtin_init_8e2cbb35b29e = abap_false.
      zcl_lnt_void_type=>zlnt_builtin_init_d4e641a3993b( ).
    ENDIF.
    zcl_lnt_void_type=>singletons = NEW zlnt_runtime_map__363847cd8bb7( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1047_2e694b68f8c3.
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~contains_void.
    result = me->contains_void( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~get_abstract_type_data.
    result = me->get_abstract_type_data( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~get_conversion_exit.
    result = me->get_conversion_exit( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~get_ddic_name.
    result = me->get_ddic_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~get_qualified_name.
    result = me->get_qualified_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~get_rtti_name.
    result = me->get_rtti_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~is_generic.
    result = me->is_generic( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~to_abap.
    result = me->to_abap( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~to_cds.
    result = me->to_cds( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~to_text.
    result = me->to_text( i_level = i_level ).
  ENDMETHOD.

  METHOD zif_lnt_union_8cd68e5e~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~contains_void.
    result = me->contains_void( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~get_abstract_type_data.
    result = me->get_abstract_type_data( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~get_conversion_exit.
    result = me->get_conversion_exit( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~get_ddic_name.
    result = me->get_ddic_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~get_qualified_name.
    result = me->get_qualified_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~get_rtti_name.
    result = me->get_rtti_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~is_generic.
    result = me->is_generic( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~to_abap.
    result = me->to_abap( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~to_cds.
    result = me->to_cds( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~to_text.
    result = me->to_text( i_level = i_level ).
  ENDMETHOD.

  METHOD zif_lnt_union_adffe656~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_adffe656~contains_void.
    result = me->contains_void( ).
  ENDMETHOD.

  METHOD zif_lnt_union_adffe656~get_abstract_type_data.
    result = me->get_abstract_type_data( ).
  ENDMETHOD.

  METHOD zif_lnt_union_adffe656~get_conversion_exit.
    result = me->get_conversion_exit( ).
  ENDMETHOD.

  METHOD zif_lnt_union_adffe656~get_ddic_name.
    result = me->get_ddic_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_adffe656~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_adffe656~get_qualified_name.
    result = me->get_qualified_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_adffe656~get_rtti_name.
    result = me->get_rtti_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_adffe656~is_generic.
    result = me->is_generic( ).
  ENDMETHOD.

  METHOD zif_lnt_union_adffe656~to_abap.
    result = me->to_abap( ).
  ENDMETHOD.

  METHOD zif_lnt_union_adffe656~to_cds.
    result = me->to_cds( ).
  ENDMETHOD.

  METHOD zif_lnt_union_adffe656~to_text.
    result = me->to_text( i_level = i_level ).
  ENDMETHOD.

  METHOD zif_lnt_union_ba49a4e5~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ba49a4e5~contains_void.
    result = me->contains_void( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ba49a4e5~get_abstract_type_data.
    result = me->get_abstract_type_data( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ba49a4e5~get_conversion_exit.
    result = me->get_conversion_exit( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ba49a4e5~get_ddic_name.
    result = me->get_ddic_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ba49a4e5~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ba49a4e5~get_qualified_name.
    result = me->get_qualified_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ba49a4e5~get_rtti_name.
    result = me->get_rtti_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ba49a4e5~is_generic.
    result = me->is_generic( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ba49a4e5~to_abap.
    result = me->to_abap( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ba49a4e5~to_cds.
    result = me->to_cds( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ba49a4e5~to_text.
    result = me->to_text( i_level = i_level ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~contains_void.
    result = me->contains_void( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~get_abstract_type_data.
    result = me->get_abstract_type_data( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~get_conversion_exit.
    result = me->get_conversion_exit( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~get_ddic_name.
    result = me->get_ddic_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~get_qualified_name.
    result = me->get_qualified_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~get_rtti_name.
    result = me->get_rtti_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~is_generic.
    result = me->is_generic( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~to_abap.
    result = me->to_abap( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~to_cds.
    result = me->to_cds( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~to_text.
    result = me->to_text( i_level = i_level ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~contains_void.
    result = me->contains_void( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~get_abstract_type_data.
    result = me->get_abstract_type_data( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~get_conversion_exit.
    result = me->get_conversion_exit( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~get_ddic_name.
    result = me->get_ddic_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~get_qualified_name.
    result = me->get_qualified_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~get_rtti_name.
    result = me->get_rtti_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~is_generic.
    result = me->is_generic( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~to_abap.
    result = me->to_abap( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~to_cds.
    result = me->to_cds( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~to_text.
    result = me->to_text( i_level = i_level ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~contains_void.
    result = me->contains_void( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~get_abstract_type_data.
    result = me->get_abstract_type_data( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~get_conversion_exit.
    result = me->get_conversion_exit( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~get_ddic_name.
    result = me->get_ddic_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~get_qualified_name.
    result = me->get_qualified_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~get_rtti_name.
    result = me->get_rtti_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~is_generic.
    result = me->is_generic( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~to_abap.
    result = me->to_abap( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~to_cds.
    result = me->to_cds( ).
  ENDMETHOD.

  METHOD zif_lnt_union_265b2b50~to_text.
    result = me->to_text( i_level = i_level ).
  ENDMETHOD.
ENDCLASS.
