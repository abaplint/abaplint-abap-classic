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
    DATA(t1) = NEW zlnt_runtime_map__eb808f96a04f( ).
    me->workarea = t1.
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
      DATA t5 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t5.
      DATA(t6) = abap_true.
      IF t6 = abap_true.
        DATA(t7) = CONV f( 1 ).
        DATA(t8) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t8->has = abap_true.
        t8->value = t7.
        t5 = t8.
      ELSE.
        DATA t9 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t9.
        t5 = t9.
      ENDIF.
      t2 = t5.
    ENDIF.
    DATA(t10) = VALUE string( ).
    DATA(t11) = VALUE string( ).
    DATA t12 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t13) = t1.
    t12 = t13.
    DATA(t14) = VALUE string( ).
    DATA t15 TYPE REF TO zcl_lnt_position.
    DATA t16 TYPE REF TO zcl_lnt_position.
    DATA t17 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t18) = t12.
    t17 = t18.
    DATA t19 TYPE REF TO zcl_lnt_position.
    DATA t20 TYPE REF TO zcl_lnt_abstract_token.
    DATA t21 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t22) = t17.
    t21 = t22->token.
    t20 = t21.
    DATA t23 TYPE REF TO zcl_lnt_position.
    DATA(t24) = t20.
    t23 = t24->start.
    t19 = t23.
    t16 = t19.
    t15 = t16.
    DATA(t25) = VALUE string( ).
    DATA(t26) = VALUE string( ).
    DATA(t27) = VALUE string( ).
    DATA t28 TYPE string.
    DATA t29 TYPE string.
    DATA t30 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t31) = t12.
    t30 = t31.
    DATA t32 TYPE string.
    DATA(t33) = t30.
    t32 = t33->filename.
    t29 = t32.
    DATA(t34) = |,|.
    DATA(t35) = strlen( t29 ).
    t28 = |{ t29 }{ t34 }|.
    DATA(t36) = VALUE string( ).
    DATA t37 TYPE f.
    DATA t38 TYPE REF TO zcl_lnt_position.
    DATA(t39) = t15.
    t38 = t39.
    DATA t40 TYPE f.
    DATA(t41) = t38.
    t40 = t41->row.
    t37 = t40.
    IF t37 <> trunc( t37 ) OR t37 > range_safe_integer OR t37 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t42) = CONV int8( t37 ).
    t36 = |{ t42 }|.
    DATA(t43) = strlen( t28 ).
    t27 = |{ t28 }{ t36 }|.
    DATA(t44) = |,|.
    DATA(t45) = strlen( t27 ).
    t26 = |{ t27 }{ t44 }|.
    DATA t46 TYPE string.
    DATA t47 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t48 TYPE REF TO zcl_lnt_position.
    DATA(t49) = t15.
    t48 = t49.
    DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t51) = t48.
    t50 = t51->col.
    t47 = t50.
    t46 = zlnt_runtime_numb_290eb04a9758=>text( t47 ).
    DATA(t52) = strlen( t26 ).
    t25 = |{ t26 }{ t46 }|.
    t14 = t25.
    t11 = t14.
    t10 = t11.
    DATA t53 TYPE abap_bool.
    DATA(t54) = me->workarea.
    DATA(t55) = t10.
    t53 = t54->has( p0 = t55 ).
    IF t53 = abap_true.
      RETURN.
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_map__eb808f96a04f.
    CLEAR t56.
    DATA(t57) = me->workarea.
    DATA(t58) = t10.
    DATA t59 TYPE REF TO zcl_lnt_shape_3488a94d.
    CLEAR t59.
    DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t60.
    DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t61.
    DATA(t62) = abap_true.
    IF t62 = abap_true.
      DATA(t63) = t1.
      t61 = t63.
    ELSE.
      DATA t64 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t64.
      t61 = t64.
    ENDIF.
    t60 = t61.
    DATA(t65) = VALUE f( ).
    DATA(t66) = VALUE f( ).
    DATA(t67) = t2.
    IF t67->number_special <> 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t66 = t67->value.
    t65 = t66.
    t59 = NEW zcl_lnt_shape_3488a94d( i_id = t60 i_count = t65 ).
    CREATE OBJECT t59->zlnt_view_ownkeys_b0e8086400eb.
    t59->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `id` p1 = t68 ).
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `count` p1 = t69 ).
    ENDIF.
    CREATE OBJECT t59->zlnt_json_ownkeys_70e5fd461788.
    t59->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t70) = |id|.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t70 p1 = t71 ).
    ENDIF.
    DATA(t72) = |count|.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t72 p1 = t73 ).
    ENDIF.
    t56 = t57->set( p0 = t58 p1 = t59 ).
  ENDMETHOD.

  METHOD remove_if_exists.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_id.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      RETURN.
    ENDIF.
    DATA(t9) = VALUE string( ).
    DATA(t10) = VALUE string( ).
    DATA t11 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t12 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t13) = t1.
    t12 = t13.
    t11 = t12.
    DATA(t14) = VALUE string( ).
    DATA t15 TYPE REF TO zcl_lnt_position.
    DATA t16 TYPE REF TO zcl_lnt_position.
    DATA t17 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t18) = t11.
    t17 = t18.
    DATA t19 TYPE REF TO zcl_lnt_position.
    DATA t20 TYPE REF TO zcl_lnt_abstract_token.
    DATA t21 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t22) = t17.
    t21 = t22->token.
    t20 = t21.
    DATA t23 TYPE REF TO zcl_lnt_position.
    DATA(t24) = t20.
    t23 = t24->start.
    t19 = t23.
    t16 = t19.
    t15 = t16.
    DATA(t25) = VALUE string( ).
    DATA(t26) = VALUE string( ).
    DATA(t27) = VALUE string( ).
    DATA t28 TYPE string.
    DATA t29 TYPE string.
    DATA t30 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t31) = t11.
    t30 = t31.
    DATA t32 TYPE string.
    DATA(t33) = t30.
    t32 = t33->filename.
    t29 = t32.
    DATA(t34) = |,|.
    DATA(t35) = strlen( t29 ).
    t28 = |{ t29 }{ t34 }|.
    DATA(t36) = VALUE string( ).
    DATA t37 TYPE f.
    DATA t38 TYPE REF TO zcl_lnt_position.
    DATA(t39) = t15.
    t38 = t39.
    DATA t40 TYPE f.
    DATA(t41) = t38.
    t40 = t41->row.
    t37 = t40.
    IF t37 <> trunc( t37 ) OR t37 > range_safe_integer OR t37 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t42) = CONV int8( t37 ).
    t36 = |{ t42 }|.
    DATA(t43) = strlen( t28 ).
    t27 = |{ t28 }{ t36 }|.
    DATA(t44) = |,|.
    DATA(t45) = strlen( t27 ).
    t26 = |{ t27 }{ t44 }|.
    DATA t46 TYPE string.
    DATA t47 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t48 TYPE REF TO zcl_lnt_position.
    DATA(t49) = t15.
    t48 = t49.
    DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t51) = t48.
    t50 = t51->col.
    t47 = t50.
    t46 = zlnt_runtime_numb_290eb04a9758=>text( t47 ).
    DATA(t52) = strlen( t26 ).
    t25 = |{ t26 }{ t46 }|.
    t14 = t25.
    t10 = t14.
    t9 = t10.
    DATA t53 TYPE REF TO zcl_lnt_shape_3488a94d.
    DATA t54 TYPE REF TO zcl_lnt_shape_3488a94d.
    DATA(t55) = me->workarea.
    DATA(t56) = t9.
    t54 = t55->get( p0 = t56 ).
    t53 = t54.
    DATA(t57) = VALUE abap_bool( ).
    DATA t58 TYPE REF TO zcl_lnt_shape_3488a94d.
    DATA(t59) = t53.
    t58 = t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    t60 = t61.
    DATA(t62) = VALUE abap_bool( ).
    DATA(t63) = VALUE abap_bool( ).
    DATA(t64) = t58.
    IF t64 IS INITIAL.
      t63 = abap_true.
    ENDIF.
    t62 = xsdbool( t63 = abap_false ).
    t57 = t62.
    IF t57 = abap_true.
      DATA t65 TYPE REF TO zcl_lnt_shape_3488a94d.
      DATA(t66) = t53.
      t65 = t66.
      DATA t67 TYPE f.
      DATA t68 TYPE f.
      DATA t69 TYPE REF TO zcl_lnt_shape_3488a94d.
      DATA(t70) = t53.
      t69 = t70.
      t68 = t69->count.
      DATA(t71) = CONV f( 1 ).
      t67 = t68 - t71.
      t65->count = t67.
      DELETE t65->zlnt_record_delet_0597644d88b4 WHERE table_line = `count`.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      IF t65->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t65->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `count` p1 = t72 ).
      ENDIF.
      DATA(t73) = |count|.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t74.
      IF t65->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t65->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
      ENDIF.
      DATA t75 TYPE abap_bool.
      DATA t76 TYPE f.
      DATA t77 TYPE REF TO zcl_lnt_shape_3488a94d.
      DATA(t78) = t53.
      t77 = t78.
      t76 = t77->count.
      DATA(t79) = CONV f( 0 ).
      t75 = xsdbool( t76 = t79 ).
      IF t75 = abap_true.
        DATA t80 TYPE abap_bool.
        DATA(t81) = me->workarea.
        DATA(t82) = t9.
        DELETE t81->entries WHERE k = t82.
        t80 = xsdbool( sy-subrc = 0 ).
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD get_db65.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t2.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = me->workarea.
    t7 = t8->values( ).
    t5 = t6->concat( p0 = t7 ).
    t4 = t5.
    DATA(t9) = t4.
    t1 = t9.
    result = t1.

  ENDMETHOD.

  METHOD count.
    DATA t1 TYPE f.
    DATA t2 TYPE i.
    DATA(t3) = me->workarea.
    t2 = t3->size( ).
    t1 = t2.
    result = t1.

  ENDMETHOD.

  METHOD build_key.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_id.
    DATA t2 TYPE REF TO zcl_lnt_position.
    DATA t3 TYPE REF TO zcl_lnt_position.
    DATA t4 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t9) = t4.
    t8 = t9->token.
    t7 = t8.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA(t11) = t7.
    t10 = t11->start.
    t6 = t10.
    t3 = t6.
    t2 = t3.
    DATA(t12) = VALUE string( ).
    DATA(t13) = VALUE string( ).
    DATA(t14) = VALUE string( ).
    DATA t15 TYPE string.
    DATA t16 TYPE string.
    DATA t17 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t18) = t1.
    t17 = t18.
    DATA t19 TYPE string.
    DATA(t20) = t17.
    t19 = t20->filename.
    t16 = t19.
    DATA(t21) = |,|.
    DATA(t22) = strlen( t16 ).
    t15 = |{ t16 }{ t21 }|.
    DATA(t23) = VALUE string( ).
    DATA t24 TYPE f.
    DATA t25 TYPE REF TO zcl_lnt_position.
    DATA(t26) = t2.
    t25 = t26.
    DATA t27 TYPE f.
    DATA(t28) = t25.
    t27 = t28->row.
    t24 = t27.
    IF t24 <> trunc( t24 ) OR t24 > range_safe_integer OR t24 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t29) = CONV int8( t24 ).
    t23 = |{ t29 }|.
    DATA(t30) = strlen( t15 ).
    t14 = |{ t15 }{ t23 }|.
    DATA(t31) = |,|.
    DATA(t32) = strlen( t14 ).
    t13 = |{ t14 }{ t31 }|.
    DATA t33 TYPE string.
    DATA t34 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t35 TYPE REF TO zcl_lnt_position.
    DATA(t36) = t2.
    t35 = t36.
    DATA t37 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t38) = t35.
    t37 = t38->col.
    t34 = t37.
    t33 = zlnt_runtime_numb_290eb04a9758=>text( t34 ).
    DATA(t39) = strlen( t13 ).
    t12 = |{ t13 }{ t33 }|.
    result = t12.

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
