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
    DATA(t3) = i_meta.
    DATA(t4) = i_value.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t9) = t6.
    t8 = t9->token.
    t5 = t8.
    DATA t10 TYPE string.
    DATA t11 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t12) = t1.
    t11 = t12.
    DATA t13 TYPE string.
    DATA(t14) = t11.
    t13 = t14->filename.
    t10 = t13.
    DATA t15 TYPE REF TO zcl_lnt_abstract_type.
    DATA t16 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t17) = t1.
    t16 = t17.
    DATA t18 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t19) = t16.
    t18 = t19->type_cba0.
    t15 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t20.
    DATA(t21) = abap_true.
    IF t21 = abap_true.
      DATA(t22) = t3.
      t20 = t22.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t23.
      t20 = t23.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA(t25) = abap_true.
    IF t25 = abap_true.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t27) = t4.
      t26 = t27.
      t24 = t26.
    ELSE.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      t24 = t28.
    ENDIF.
    super->constructor( i_token = t5 i_filename = t10 i_type_9913 = t15 i_meta = t20 i_value = t24 ).
    DATA(t29) = t2.
    me->visibility = t29.
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
