* TS: src/abap/5_syntax/expressions/database_table.ts:8:1 DatabaseTable
CLASS zcl_lnt_sy_database_table DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zif_lnt_union_c74a232f.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_database_table IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    t3 = t1->get_first_token( ).
    DATA t6 TYPE string.
    t6 = t3->str.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    DATA(t15) = |*|.
    DATA(t16) = strlen( t6 ).
    DATA t17 TYPE i.
    DATA(t18) = VALUE i( ).
    DATA(t19) = VALUE string( ).
    t17 = strlen( t15 ).
    IF t17 = 0.
      t13 = abap_true.
    ELSEIF t17 <= t16.
      t18 = 0.
      t19 = t6+t18(t17).
      IF t19 = t15.
        t13 = abap_true.
      ENDIF.
    ENDIF.
    t12 = t13.
    DATA(t20) = VALUE string( ).
    DATA(t21) = VALUE string( ).
    IF t12 = abap_true.
      DATA t24 TYPE string.
      t24 = t6.
      DATA(t26) = VALUE string( ).
      DATA(t28) = 1.
      DATA t29 TYPE i.
      t29 = strlen( t24 ).
      DATA(t32) = strlen( t24 ).
      t28 = COND i( WHEN t28 < 0 THEN 0 WHEN t28 > t32 THEN t32 ELSE t28 ).
      t29 = COND i( WHEN t29 < 0 THEN 0 WHEN t29 > t32 THEN t32 ELSE t29 ).
      IF t28 > t29.
        t32 = t28.
        t28 = t29.
        t29 = t32.
      ENDIF.
      t32 = t29 - t28.
      t26 = t24+t28(t32).
      t21 = t26.
    ELSE.
      t21 = t6.
    ENDIF.
    t20 = t21.
    IF xsdbool( t20 = |(| ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t38 TYPE REF TO zif_lnt_union_c74a232f.
    DATA t40 TYPE REF TO zcl_lnt_ddic.
    DATA t45 TYPE REF TO zif_lnt_registry.
    t45 = t2->scope->reg.
    t40 = NEW zcl_lnt_ddic( i_reg_f149 = t45 ).
    DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t50->has = abap_true.
    t50->value = t20.
    t38 = t40->lookup_table_or_view2( i_name = t50 ).
    DATA(t52) = VALUE abap_bool( ).
    DATA(t53) = VALUE abap_bool( ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t53 = xsdbool( t38 IS INITIAL ).
    t52 = t53.
    IF t53 = abap_true.
      DATA t67 TYPE REF TO zcl_lnt_ddic.
      DATA t68 TYPE REF TO zif_lnt_registry.
      t68 = t2->scope->reg.
      t67 = NEW zcl_lnt_ddic( i_reg_f149 = t68 ).
      DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t74->has = abap_true.
      t74->value = t20.
      t70 = t74.
      DATA(t76) = VALUE abap_bool( ).
      DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t78 = t70.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t82) = VALUE abap_bool( ).
      IF t78 IS INITIAL.
        t82 = abap_true.
      ELSEIF t78->has = abap_false.
        t82 = abap_true.
      ENDIF.
      IF t82 = abap_true.
        t76 = abap_true.
      ELSE.
        DATA t86 TYPE REF TO zif_lnt_registry.
        t86 = t67->reg.
        DATA t88 TYPE string.
        t88 = t70->value.
        t76 = t86->in_error_namespace( i_name = t88 ).
      ENDIF.
      t52 = xsdbool( t76 = abap_true ).
    ENDIF.
    IF t52 = abap_true.
      DATA t92 TYPE string.
      DATA t93 TYPE string.
      DATA(t94) = |Database table or view "|.
      DATA(t96) = strlen( t94 ).
      t93 = |{ t94 }{ t20 }|.
      DATA(t98) = strlen( t93 ).
      t92 = |{ t93 }{ |" not found| }|.
      DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t99 = t2->issues.
      DATA t101 TYPE REF TO zcl_lnt_issue.
      DATA t106 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t101 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t92 i_fix = t106 ).
      t99->load( ).
      APPEND t101 TO t99->items.
      t99->save( ).
    ELSE.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t38 IS INITIAL ) = abap_true.
        DATA t114 TYPE REF TO zcl_lnt_current_scope.
        t114 = t2->scope.
        DATA t116 TYPE REF TO zcl_lnt_abstract_token.
        t116 = t3.
        DATA t120 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t121.
        t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t121->sval = |Table (Void)|.
        DATA t123 TYPE string.
        t123 = t2->filename.
        DATA t125 TYPE REF TO zcl_lnt_ireference_extras.
        t114->add_reference( i_usage = t116 i_referencing = t120 i_type_9913 = t121 i_filename = t123 i_extra = t125 ).
      ELSE.
        DATA t126 TYPE REF TO zcl_lnt_current_scope.
        t126 = t2->scope.
        DATA t128 TYPE REF TO zcl_lnt_abstract_token.
        t128 = t3.
        DATA t132 TYPE REF TO zcl_lnt_fi_identifier.
        t132 = t38->get_identifier( ).
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t135.
        t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t135->sval = |Table|.
        DATA t137 TYPE string.
        t137 = t2->filename.
        DATA t139 TYPE REF TO zcl_lnt_ireference_extras.
        t126->add_reference( i_usage = t128 i_referencing = t132 i_type_9913 = t135 i_filename = t137 i_extra = t139 ).
        DATA t140 TYPE REF TO zif_lnt_ddic_references.
        t140 = t2->scope->reg->get_ddic_references( ).
        DATA t147 TYPE REF TO zif_lnt_object.
        t147 = t2->scope->parent_obj.
        DATA t155 TYPE REF TO zcl_lnt_iobject_and_token.
        DATA t156 TYPE REF TO zif_lnt_object.
        DATA t157 TYPE REF TO zif_lnt_object.
        DATA t158 TYPE REF TO zif_lnt_union_c74a232f.
        t158 = t38.
        t157 ?= t158.
        t156 = t157.
        DATA t160 TYPE REF TO zcl_lnt_abstract_token.
        t160 = t3.
        DATA t168 TYPE string.
        t168 = t2->filename.
        DATA(t170) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t170->has = abap_true.
        t170->value = t168.
        t155 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t156 i_token = t160 i_filename = t170 ).
        CREATE OBJECT t155->zlnt_view_ownkeys_b0e8086400eb.
        t155->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t155->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t172 ).
        DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t155->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t155->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t173 ).
        ENDIF.
        DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t155->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t155->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t174 ).
        ENDIF.
        CREATE OBJECT t155->zlnt_json_ownkeys_70e5fd461788.
        t155->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t155->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t176 ).
        DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t155->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t155->zlnt_json_ownkeys_70e5fd461788->put( p0 = |token| p1 = t178 ).
        ENDIF.
        DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t155->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t155->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t180 ).
        ENDIF.
        t140->add_using( i_obj_1ed0 = t147 i_using = t155 ).
      ENDIF.
    ENDIF.
    result = t38.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d798_2f5c96d47058.
  ENDMETHOD.
ENDCLASS.
