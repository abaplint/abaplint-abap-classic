* TS: src/abap/5_syntax/expressions/constant.ts:6:1 Constant
CLASS zcl_lnt_sy_expres_constant DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_expres_constant IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
    t3 = t1->find_direct_expression( i_type_9913 = t5 ).
    IF xsdbool( t3 IS BOUND ) = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t14) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t14->has = abap_true.
      t14->value = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t9 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t16 i_conversion_exit = t18 i_derived_from_constant = t14 i_ddic_name = t20 i_rtti_name = t22 i_description = t24 ).
      CREATE OBJECT t9->zlnt_view_ownkeys_b0e8086400eb.
      t9->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `derivedFromConstant` p1 = t26 ).
      CREATE OBJECT t9->zlnt_json_ownkeys_70e5fd461788.
      t9->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = |derivedFromConstant| p1 = t28 ).
      result = zcl_lnt_integer_type=>get_db65( i_input_967e = t9 ).
      RETURN.
    ENDIF.
    DATA t30 TYPE string.
    t30 = t1->get_first_token( )->str.
    DATA(t37) = VALUE abap_bool( ).
    DATA(t39) = |'|.
    DATA(t40) = strlen( t30 ).
    DATA t41 TYPE i.
    DATA(t42) = VALUE i( ).
    DATA(t43) = VALUE string( ).
    t41 = strlen( t39 ).
    IF t41 = 0.
      t37 = abap_true.
    ELSEIF t41 <= t40.
      t42 = 0.
      t43 = t30+t42(t41).
      IF t43 = t39.
        t37 = abap_true.
      ENDIF.
    ENDIF.
    IF t37 = abap_true.
      DATA t44 TYPE i.
      DATA t46 TYPE i.
      t46 = strlen( t30 ).
      DATA(t49) = 2.
      t44 = t46 - t49.
      IF xsdbool( t44 <= 0 ) = abap_true.
        t44 = 1.
      ENDIF.
      DATA t55 TYPE f.
      t55 = t44.
      DATA t59 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t64) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t64->has = abap_true.
      t64->value = abap_true.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t59 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t66 i_conversion_exit = t68 i_derived_from_constant = t64 i_ddic_name = t70 i_rtti_name = t72 i_description = t74 ).
      CREATE OBJECT t59->zlnt_view_ownkeys_b0e8086400eb.
      t59->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `derivedFromConstant` p1 = t76 ).
      CREATE OBJECT t59->zlnt_json_ownkeys_70e5fd461788.
      t59->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = |derivedFromConstant| p1 = t78 ).
      result = NEW zcl_lnt_character_type( i_length = t55 i_extra = t59 ).
      RETURN.
    ENDIF.
    DATA(t80) = VALUE abap_bool( ).
    DATA(t82) = |`|.
    DATA(t83) = strlen( t30 ).
    DATA t84 TYPE i.
    DATA(t85) = VALUE i( ).
    DATA(t86) = VALUE string( ).
    t84 = strlen( t82 ).
    IF t84 = 0.
      t80 = abap_true.
    ELSEIF t84 <= t83.
      t85 = 0.
      t86 = t30+t85(t84).
      IF t86 = t82.
        t80 = abap_true.
      ENDIF.
    ENDIF.
    IF t80 = abap_true.
      DATA t90 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t95) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t95->has = abap_true.
      t95->value = abap_true.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t90 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t97 i_conversion_exit = t99 i_derived_from_constant = t95 i_ddic_name = t101 i_rtti_name = t103 i_description = t105 ).
      CREATE OBJECT t90->zlnt_view_ownkeys_b0e8086400eb.
      t90->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `derivedFromConstant` p1 = t107 ).
      CREATE OBJECT t90->zlnt_json_ownkeys_70e5fd461788.
      t90->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = |derivedFromConstant| p1 = t109 ).
      result = zcl_lnt_string_type=>get_db65( i_input_967e = t90 ).
      RETURN.
    ENDIF.
    DATA t112 TYPE REF TO zcl_lnt_abstract_type_data.
    result = zcl_lnt_string_type=>get_db65( i_input_967e = t112 ).



  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d794_0f024dad6ad6.
  ENDMETHOD.
ENDCLASS.
