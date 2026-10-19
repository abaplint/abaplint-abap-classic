* TS: src/abap/5_syntax/statements/class_deferred.ts:6:1 ClassDeferred
CLASS zcl_lnt_sy_class_deferred DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_class_deferred IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t2) = i_input_967e.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    t6 = i_node->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t10) = xsdbool( t5 IS INITIAL ).
    IF t10 = abap_true.
    ELSE.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      t14 = t5.
      t13 = t14->get_first_token( ).
      t9 = t13.
    ENDIF.
    DATA t17 TYPE REF TO zcl_lnt_current_scope.
    t17 = t2->scope.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    t19 = t9.
    DATA(t21) = VALUE abap_bool( ).
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t21 = xsdbool( t19 IS INITIAL ).
    IF t21 = abap_true.
    ELSE.
      DATA t28 TYPE REF TO zlnt_runtime_map__f9d623f88b73.
      DATA t29 TYPE REF TO zlnt_runtime_map__f9d623f88b73.
      DATA t30 TYPE REF TO zcl_lnt_iscope_data.
      DATA t31 TYPE REF TO zcl_lnt_scope_data.
      DATA t33 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t33 = t17->current.
      t31 = t33.
      DATA t35 TYPE REF TO zcl_lnt_iscope_data.
      t35 = t31->data_56cc.
      t30 = t35.
      t29 = t30->deferred.
      DATA t37 TYPE string.
      DATA t38 TYPE string.
      DATA t42 TYPE string.
      t42 = t19->str.
      t38 = t42.
      DATA(t44) = strlen( t38 ).
      t37 = t38.
      IF t37 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t37 TO UPPER CASE.
      ELSE.
        t37 = zlnt_runtime_uppe_91169605024d=>full( t37 ).
      ENDIF.
      DATA t45 TYPE REF TO zcl_lnt_deferred_information.
      DATA t46 TYPE REF TO zcl_lnt_abstract_token.
      t46 = t19.
      DATA t49 TYPE string.
      t49 = |CLAS|.
      t45 = NEW zcl_lnt_deferred_information( i_token = t46 i_oo_type = t49 ).
      CREATE OBJECT t45->zlnt_view_ownkeys_b0e8086400eb.
      t45->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t51 ).
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t52 ).
      ENDIF.
      CREATE OBJECT t45->zlnt_json_ownkeys_70e5fd461788.
      t45->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t53) = |token|.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
      DATA(t55) = |ooType|.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
      ENDIF.
      t28 = t29->set( p0 = t37 p1 = t45 ).
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d871_838058a26a31.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
