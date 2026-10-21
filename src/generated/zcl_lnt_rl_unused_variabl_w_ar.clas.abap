* TS: src/rules/unused_variables.ts:30:1 WorkArea
CLASS zcl_lnt_rl_unused_variabl_w_ar DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA workarea TYPE REF TO zlnt_runtime_map__eb808f96a04f.
    METHODS constructor.
    METHODS push IMPORTING i_id TYPE REF TO zcl_lnt_typed_identifier i_count TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    METHODS remove_if_exists IMPORTING i_id TYPE REF TO zcl_lnt_fi_identifier.
    METHODS get_db65 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS count RETURNING VALUE(result) TYPE f.
    METHODS build_key IMPORTING i_id TYPE REF TO zcl_lnt_fi_identifier RETURNING VALUE(result) TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rl_unused_variabl_w_ar IMPLEMENTATION.
  METHOD constructor.
    me->workarea = NEW zlnt_runtime_map__eb808f96a04f( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `workarea`.
  ENDMETHOD.

  METHOD push.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_id.
    DATA(t2) = i_count.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = t2.
    IF t4 IS INITIAL.
      t3 = abap_true.
    ELSEIF t4->has = abap_false.
      t3 = abap_true.
    ENDIF.
    IF t3 = abap_true.
      DATA(t8) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t8->has = abap_true.
      t8->value = CONV f( 1 ).
      t2 = t8.
    ENDIF.
    DATA(t10) = VALUE string( ).
    DATA t12 TYPE REF TO zcl_lnt_fi_identifier.
    t12 = t1.
    DATA t15 TYPE REF TO zcl_lnt_position.
    t15 = t12->token->start.
    DATA(t26) = VALUE string( ).
    DATA(t27) = VALUE string( ).
    DATA t28 TYPE string.
    DATA t29 TYPE string.
    t29 = t12->filename.
    DATA(t35) = strlen( t29 ).
    t28 = |{ t29 }{ |,| }|.
    DATA(t36) = VALUE string( ).
    DATA t37 TYPE f.
    t37 = t15->row.
    IF t37 <> trunc( t37 ) OR t37 > range_safe_integer OR t37 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t42) = CONV int8( t37 ).
    t36 = |{ t42 }|.
    DATA(t43) = strlen( t28 ).
    t27 = |{ t28 }{ t36 }|.
    DATA(t45) = strlen( t27 ).
    t26 = |{ t27 }{ |,| }|.
    DATA t46 TYPE string.
    DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t50 = t15->col.
    t46 = zlnt_runtime_numb_290eb04a9758=>text( t50 ).
    DATA(t52) = strlen( t26 ).
    t10 = |{ t26 }{ t46 }|.
    IF me->workarea->has( p0 = t10 ) = abap_true.
      RETURN.
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_map__eb808f96a04f.
    DATA(t57) = me->workarea.
    DATA t59 TYPE REF TO zcl_lnt_shape_3488a94d.
    DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
    t60 = t1.
    DATA(t66) = VALUE f( ).
    IF t2->number_special <> 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t66 = t2->value.
    t59 = NEW zcl_lnt_shape_3488a94d( i_id = t60 i_count = t66 ).
    CREATE OBJECT t59->zlnt_view_ownkeys_b0e8086400eb.
    t59->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `id` p1 = t68 ).
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `count` p1 = t69 ).
    ENDIF.
    CREATE OBJECT t59->zlnt_json_ownkeys_70e5fd461788.
    t59->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = |id| p1 = t71 ).
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = |count| p1 = t73 ).
    ENDIF.
    t56 = t57->set( p0 = t10 p1 = t59 ).
  ENDMETHOD.

  METHOD remove_if_exists.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_id.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      RETURN.
    ENDIF.
    DATA(t9) = VALUE string( ).
    DATA t11 TYPE REF TO zcl_lnt_fi_identifier.
    t11 = t1.
    DATA t15 TYPE REF TO zcl_lnt_position.
    t15 = t11->token->start.
    DATA(t26) = VALUE string( ).
    DATA(t27) = VALUE string( ).
    DATA t28 TYPE string.
    DATA t29 TYPE string.
    t29 = t11->filename.
    DATA(t35) = strlen( t29 ).
    t28 = |{ t29 }{ |,| }|.
    DATA(t36) = VALUE string( ).
    DATA t37 TYPE f.
    t37 = t15->row.
    IF t37 <> trunc( t37 ) OR t37 > range_safe_integer OR t37 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t42) = CONV int8( t37 ).
    t36 = |{ t42 }|.
    DATA(t43) = strlen( t28 ).
    t27 = |{ t28 }{ t36 }|.
    DATA(t45) = strlen( t27 ).
    t26 = |{ t27 }{ |,| }|.
    DATA t46 TYPE string.
    DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t50 = t15->col.
    t46 = zlnt_runtime_numb_290eb04a9758=>text( t50 ).
    DATA(t52) = strlen( t26 ).
    t9 = |{ t26 }{ t46 }|.
    DATA t53 TYPE REF TO zcl_lnt_shape_3488a94d.
    t53 = me->workarea->get( p0 = t9 ).
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t53 IS INITIAL ) = abap_false ) = abap_true.
      DATA t65 TYPE REF TO zcl_lnt_shape_3488a94d.
      t65 = t53.
      DATA t68 TYPE f.
      t68 = t53->count.
      DATA(t71) = CONV f( 1 ).
      t65->count = t68 - t71.
      DELETE t65->zlnt_record_delet_0597644d88b4 WHERE table_line = `count`.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t65->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t65->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `count` p1 = t72 ).
      ENDIF.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t65->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t65->zlnt_json_ownkeys_70e5fd461788->put( p0 = |count| p1 = t74 ).
      ENDIF.
      IF xsdbool( t53->count = CONV f( 0 ) ) = abap_true.
        DATA t80 TYPE abap_bool.
        DATA(t81) = me->workarea.
        DELETE t81->entries WHERE k = t9.
        t80 = xsdbool( sy-subrc = 0 ).
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD get_db65.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    result = t3->concat( p0 = me->workarea->values( ) ).

  ENDMETHOD.

  METHOD count.
    DATA t1 TYPE f.
    t1 = me->workarea->size( ).
    result = t1.

  ENDMETHOD.

  METHOD build_key.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_id.
    DATA t2 TYPE REF TO zcl_lnt_position.
    t2 = t1->token->start.
    DATA(t13) = VALUE string( ).
    DATA(t14) = VALUE string( ).
    DATA t15 TYPE string.
    DATA t16 TYPE string.
    t16 = t1->filename.
    DATA(t22) = strlen( t16 ).
    t15 = |{ t16 }{ |,| }|.
    DATA(t23) = VALUE string( ).
    DATA t24 TYPE f.
    t24 = t2->row.
    IF t24 <> trunc( t24 ) OR t24 > range_safe_integer OR t24 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t29) = CONV int8( t24 ).
    t23 = |{ t29 }|.
    DATA(t30) = strlen( t15 ).
    t14 = |{ t15 }{ t23 }|.
    DATA(t32) = strlen( t14 ).
    t13 = |{ t14 }{ |,| }|.
    DATA t33 TYPE string.
    DATA t37 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t37 = t2->col.
    t33 = zlnt_runtime_numb_290eb04a9758=>text( t37 ).
    DATA(t39) = strlen( t13 ).
    result = |{ t13 }{ t33 }|.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1762_18d600c2ed84.
  ENDMETHOD.
ENDCLASS.
