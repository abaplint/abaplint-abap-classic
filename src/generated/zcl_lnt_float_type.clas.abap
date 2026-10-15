* TS: src/abap/types/basic/float_type.ts:6:1 FloatType
CLASS zcl_lnt_float_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_e92befca.
    METHODS constructor IMPORTING i_input_967e TYPE REF TO zcl_lnt_abstract_type_data OPTIONAL.
    METHODS t_t_i_s_a_ty_bs_fl_ty_ts_fl_ty RETURNING VALUE(result) TYPE string.
    METHODS is_generic REDEFINITION.
    METHODS to_abap REDEFINITION.
    METHODS contains_void REDEFINITION.
    METHODS to_cds REDEFINITION.
    METHODS to_text REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_float_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_input_967e.
    DATA(t2) = t1.
    super->constructor( i_input_967e = t2 ).
  ENDMETHOD.

  METHOD t_t_i_s_a_ty_bs_fl_ty_ts_fl_ty.
    DATA(t1) = |```f```|.
    result = t1.

  ENDMETHOD.

  METHOD is_generic.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.

  METHOD to_abap.
    DATA(t1) = |f|.
    result = t1.

  ENDMETHOD.

  METHOD contains_void.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.

  METHOD to_cds.
    DATA(t1) = |abap.fltp|.
    result = t1.

  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = CONV string( me->t_t_i_s_a_ty_bs_fl_ty_ts_fl_ty( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1028_e04d825d881e.
  ENDMETHOD.

  METHOD zif_lnt_union_e92befca~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e92befca~contains_void.
    result = me->contains_void( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e92befca~get_abstract_type_data.
    result = me->get_abstract_type_data( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e92befca~get_conversion_exit.
    result = me->get_conversion_exit( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e92befca~get_ddic_name.
    result = me->get_ddic_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e92befca~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e92befca~get_qualified_name.
    result = me->get_qualified_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e92befca~get_rtti_name.
    result = me->get_rtti_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e92befca~is_generic.
    result = me->is_generic( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e92befca~to_abap.
    result = me->to_abap( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e92befca~to_cds.
    result = me->to_cds( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e92befca~to_text.
    result = me->to_text( i_level = i_level ).
  ENDMETHOD.
ENDCLASS.
