* TS: src/abap/types/basic/data_reference_type.ts:4:1 DataReference
CLASS zcl_lnt_data_reference DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_168ba5e4.
    DATA type_cba0 TYPE REF TO zcl_lnt_abstract_type.
    METHODS constructor IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type i_qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    METHODS to_text REDEFINITION.
    METHODS get_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS to_abap REDEFINITION.
    METHODS is_generic REDEFINITION.
    METHODS contains_void REDEFINITION.
    METHODS to_cds REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_data_reference IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_type_9913.
    DATA(t2) = i_qualified_name.
    DATA t3 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA t5 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t7) = t2.
      t6 = t7.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      t8 = t9.
      DATA t10 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t11.
      t10 = t11.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      t14 = t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      t16 = t17.
      t5 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t6 i_conversion_exit = t8 i_derived_from_constant = t10 i_ddic_name = t12 i_rtti_name = t14 i_description = t16 ).
      CREATE OBJECT t5->zlnt_view_ownkeys_b0e8086400eb.
      t5->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t18 ).
      ENDIF.
      CREATE OBJECT t5->zlnt_json_ownkeys_70e5fd461788.
      t5->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t19) = |qualifiedName|.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
      ENDIF.
      t3 = t5.
    ELSE.
      DATA t21 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t21.
      t3 = t21.
    ENDIF.
    super->constructor( i_input_967e = t3 ).
    DATA(t22) = t1.
    me->type_cba0 = t22.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `type`.
  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = i_level.
    DATA t2 TYPE string.
    DATA(t3) = |Data REF TO |.
    DATA t4 TYPE string.
    DATA(t5) = me->type_cba0.
    DATA t6 TYPE f.
    DATA(t7) = t1.
    DATA(t8) = CONV f( 1 ).
    t6 = t7 + t8.
    t4 = t5->to_text( i_level = t6 ).
    DATA(t9) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    result = t2.

  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = me->type_cba0.
    result = t1.

  ENDMETHOD.

  METHOD to_abap.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = me->type_cba0.
    t2 = t3->to_abap( ).
    t1 = t2.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE i( ).
    DATA(t6) = t1.
    DATA(t7) = | TABLE OF |.
    DATA(t8) = strlen( t6 ).
    IF t7 IS INITIAL.
      t5 = 0.
    ELSE.
      FIND t7 IN t6 MATCH OFFSET t5.
      IF sy-subrc <> 0.
        t5 = -1.
      ENDIF.
    ENDIF.
    DATA(t9) = 0.
    t4 = xsdbool( t5 >= t9 ).
    IF t4 = abap_true.
      DATA(t10) = ||.
      result = t10.
      RETURN.
    ENDIF.
    DATA t11 TYPE string.
    DATA(t12) = |REF TO |.
    DATA t13 TYPE string.
    DATA(t14) = me->type_cba0.
    t13 = t14->to_abap( ).
    DATA(t15) = strlen( t12 ).
    t11 = |{ t12 }{ t13 }|.
    result = t11.

  ENDMETHOD.

  METHOD is_generic.
    DATA t1 TYPE abap_bool.
    DATA(t2) = me->type_cba0.
    t1 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_any_type ).
    IF t1 = abap_true.
      DATA(t3) = abap_true.
      result = t3.
      RETURN.
    ENDIF.
    DATA(t4) = abap_false.
    result = t4.

  ENDMETHOD.

  METHOD contains_void.
    DATA t1 TYPE abap_bool.
    DATA(t2) = me->type_cba0.
    t1 = t2->contains_void( ).
    result = t1.

  ENDMETHOD.

  METHOD to_cds.
    DATA(t1) = |abap.TODO_REFERENCE|.
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1021_1105e16557a8.
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~contains_void.
    result = me->contains_void( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~get_abstract_type_data.
    result = me->get_abstract_type_data( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~get_conversion_exit.
    result = me->get_conversion_exit( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~get_ddic_name.
    result = me->get_ddic_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~get_qualified_name.
    result = me->get_qualified_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~get_rtti_name.
    result = me->get_rtti_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~is_generic.
    result = me->is_generic( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~to_abap.
    result = me->to_abap( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~to_cds.
    result = me->to_cds( ).
  ENDMETHOD.

  METHOD zif_lnt_union_168ba5e4~to_text.
    result = me->to_text( i_level = i_level ).
  ENDMETHOD.
ENDCLASS.
