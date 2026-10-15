* TS: src/abap/types/class_constant.ts:4:1 ClassConstant
CLASS zcl_lnt_class_constant DEFINITION PUBLIC INHERITING FROM zcl_lnt_typed_identifier CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_a346537f.
    DATA visibility TYPE f.
    METHODS constructor IMPORTING i_id TYPE REF TO zcl_lnt_typed_identifier i_visibility_5c1f TYPE f i_value TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS get_visibility RETURNING VALUE(result) TYPE f.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_class_constant IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_id.
    DATA(t2) = i_visibility_5c1f.
    DATA(t3) = i_value.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA t5 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t8) = t5.
    t7 = t8->token.
    t4 = t7.
    DATA t9 TYPE string.
    DATA t10 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t11) = t1.
    t10 = t11.
    DATA t12 TYPE string.
    DATA(t13) = t10.
    t12 = t13->filename.
    t9 = t12.
    DATA t14 TYPE REF TO zcl_lnt_abstract_type.
    DATA t15 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t16) = t1.
    t15 = t16.
    DATA t17 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t18) = t15.
    t17 = t18->type_cba0.
    t14 = t17.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t23.
      t22 = t23.
      DATA(t24) = t22.
      DATA(t25) = |read_only|.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
      DATA(t26) = t22.
      DATA(t27) = |static|.
      t26->load( ).
      APPEND t27 TO t26->items.
      t26->save( ).
      DATA(t28) = t22.
      t21 = t28.
      t19 = t21.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t29.
      t19 = t29.
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA(t31) = abap_true.
    IF t31 = abap_true.
      DATA(t32) = t3.
      t30 = t32.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      t30 = t33.
    ENDIF.
    super->constructor( i_token = t4 i_filename = t9 i_type_9913 = t14 i_meta = t19 i_value = t30 ).
    DATA(t34) = t2.
    me->visibility = t34.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1053_933feba7ea8b.
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
