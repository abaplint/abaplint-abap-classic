* TS: src/abap/types/basic/generic_object_reference_type.ts:3:1 GenericObjectReferenceType
CLASS zcl_lnt_gnrc_objct_rfrnc_typ DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor IMPORTING i_input_967e TYPE REF TO zcl_lnt_abstract_type_data OPTIONAL.
    METHODS t_t_i_s_a_t_b_g_o_r_t_t_g_o_r RETURNING VALUE(result) TYPE string.
    METHODS is_generic REDEFINITION.
    METHODS to_abap REDEFINITION.
    METHODS contains_void REDEFINITION.
    METHODS to_cds REDEFINITION.
    METHODS to_text REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_gnrc_objct_rfrnc_typ IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_abstract_type_data( i_input_967e ).
    DATA(t2) = CAST zcl_lnt_abstract_type_data( t1 ).
    super->constructor( i_input_967e = t2 ).
  ENDMETHOD.
  METHOD t_t_i_s_a_t_b_g_o_r_t_t_g_o_r.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/generic_object_reference_type.ts:5|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD is_generic.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.
  METHOD to_abap.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/generic_object_reference_type.ts:14|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD contains_void.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/generic_object_reference_type.ts:18|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_cds.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/generic_object_reference_type.ts:22|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_text.
    DATA(t1) = CONV string( me->t_t_i_s_a_t_b_g_o_r_t_t_g_o_r(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1008_5e4f79d1ad51.
  ENDMETHOD.
ENDCLASS.
