* TS: src/abap/types/class_attribute.ts:4:1 ClassAttribute
CLASS zcl_lnt_class_attribute DEFINITION PUBLIC INHERITING FROM zcl_lnt_typed_identifier CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_a346537f.
    DATA visibility TYPE f.
    METHODS constructor IMPORTING i_id TYPE REF TO zcl_lnt_typed_identifier i_visibility_5c1f TYPE f i_meta TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_value TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    METHODS get_visibility RETURNING VALUE(result) TYPE f.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_class_attribute IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_id.
    DATA(t2) = i_visibility_5c1f.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO zcl_lnt_fi_identifier.
    t6 = t1.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    t8 = t6->token.
    t5 = t8.
    DATA t10 TYPE string.
    DATA t11 TYPE REF TO zcl_lnt_fi_identifier.
    t11 = t1.
    DATA t13 TYPE string.
    t13 = t11->filename.
    t10 = t13.
    DATA t15 TYPE REF TO zcl_lnt_abstract_type.
    DATA t18 TYPE REF TO zcl_lnt_abstract_type.
    t18 = t1->type_cba0.
    t15 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t20 = i_meta.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t24 = i_value.
    super->constructor( i_token = t5 i_filename = t10 i_type_9913 = t15 i_meta = t20 i_value = t24 ).
    me->visibility = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `visibility`.
  ENDMETHOD.

  METHOD get_visibility.
    DATA(t1) = CONV f( me->visibility ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1051_bc853270bead.
  ENDMETHOD.

  METHOD zif_lnt_union_a346537f~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_a346537f~debug_description.
    result = me->debug_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_a346537f~equals.
    result = me->equals( i_id = i_id ).
  ENDMETHOD.

  METHOD zif_lnt_union_a346537f~get_end.
    result = me->get_end( ).
  ENDMETHOD.

  METHOD zif_lnt_union_a346537f~get_filename.
    result = me->get_filename( ).
  ENDMETHOD.

  METHOD zif_lnt_union_a346537f~get_meta.
    result = me->get_meta( ).
  ENDMETHOD.

  METHOD zif_lnt_union_a346537f~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_a346537f~get_start.
    result = me->get_start( ).
  ENDMETHOD.

  METHOD zif_lnt_union_a346537f~get_token.
    result = me->get_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_a346537f~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_a346537f~get_value.
    result = me->get_value( ).
  ENDMETHOD.

  METHOD zif_lnt_union_a346537f~get_visibility.
    result = me->get_visibility( ).
  ENDMETHOD.

  METHOD zif_lnt_union_a346537f~to_text.
    result = me->to_text( ).
  ENDMETHOD.
ENDCLASS.
