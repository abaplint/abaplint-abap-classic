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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_float_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_abstract_type_data( i_input_967e ).
    DATA(t2) = CAST zcl_lnt_abstract_type_data( t1 ).
    super->constructor( i_input_967e = t2 ).
  ENDMETHOD.
  METHOD t_t_i_s_a_ty_bs_fl_ty_ts_fl_ty.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/float_type.ts:7|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD is_generic.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.
  METHOD to_abap.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/float_type.ts:15|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD contains_void.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/float_type.ts:19|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_cds.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/float_type.ts:23|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_text.
    DATA(t1) = CONV string( me->t_t_i_s_a_ty_bs_fl_ty_ts_fl_ty( ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1006_009cee8662f4.
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
