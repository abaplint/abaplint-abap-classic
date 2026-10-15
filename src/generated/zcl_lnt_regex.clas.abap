* TS: src/abap/2_statements/combi.ts:10:1 Regex
CLASS zcl_lnt_regex DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA regexp TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    METHODS constructor IMPORTING i_r_f634 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    METHODS list_keywords RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_using RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run IMPORTING i_r_f634 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS railroad RETURNING VALUE(result) TYPE string.
    METHODS to_str RETURNING VALUE(result) TYPE string.
    METHODS first RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run_one IMPORTING i_x TYPE REF TO zcl_lnt_st_result RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_regex IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_r_f634.
    DATA(t2) = t1.
    me->regexp = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `regexp`.
  ENDMETHOD.

  METHOD list_keywords.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t1.
    result = t1.

  ENDMETHOD.

  METHOD get_using.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t1.
    result = t1.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_r_f634.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zcl_lnt_st_result.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE int8.
      DATA t12 TYPE f.
      DATA t13 TYPE REF TO zcl_lnt_st_result.
      DATA(t14) = t5.
      t13 = t14.
      DATA t15 TYPE f.
      DATA t16 TYPE int8.
      DATA t17 TYPE int8.
      DATA t18 TYPE i.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t20) = t13.
      t19 = t20->tokens.
      t19->load( ).
      t18 = lines( t19->items ).
      t17 = t18.
      DATA t21 TYPE int8.
      DATA t22 TYPE i.
      DATA(t23) = t13.
      t22 = t23->token_index.
      t21 = t22.
      t16 = t17 - t21.
      t15 = t16.
      t12 = t15.
      t11 = t12.
      DATA(t24) = CONV int8( 0 ).
      t10 = xsdbool( t11 = t24 ).
      IF t10 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t25.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t26.
      DATA t27 TYPE REF TO zcl_lnt_st_result.
      DATA(t28) = t5.
      t27 = t28.
      DATA t29 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t31) = t27.
      t30 = t31->tokens.
      DATA t32 TYPE i.
      DATA(t33) = t27.
      t32 = t33->token_index.
      t32 = t32 + 1.
      DATA t34 TYPE REF TO object.
      CLEAR t34.
      t30->load( ).
      CLEAR t34.
      READ TABLE t30->items INDEX t32 INTO t34.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      CLEAR t29.
      IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t35 ?= t34.
        DATA t36 TYPE REF TO object.
        t36 = t35->as_ref( ).
        t29 ?= t36.
      ELSE.
        t29 ?= t34.
      ENDIF.
      t26 = t29.
      t25 = t26.
      DATA t37 TYPE abap_bool.
      DATA t38 TYPE abap_bool.
      DATA(t39) = me->regexp.
      DATA t40 TYPE string.
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t42) = t25.
      t41 = t42.
      DATA t43 TYPE string.
      DATA(t44) = t41.
      t43 = t44->str.
      t40 = t43.
      t38 = t39->test( p0 = t40 ).
      DATA(t45) = abap_true.
      t37 = xsdbool( t38 = t45 ).
      IF t37 = abap_true.
        DATA(t46) = t2.
        DATA t47 TYPE REF TO zcl_lnt_st_result.
        CLEAR t47.
        DATA t48 TYPE REF TO zcl_lnt_st_result.
        DATA(t49) = t5.
        t48 = t49.
        DATA t50 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t51 TYPE REF TO zcl_lnt_token_node_regex.
        DATA(t52) = t25.
        t51 = NEW zcl_lnt_token_node_regex( i_token = t52 ).
        t50 = t51.
        DATA t53 TYPE REF TO zcl_lnt_st_result.
        CLEAR t53.
        DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t55) = t48.
        t54 = t55->tokens.
        DATA t56 TYPE int8.
        DATA t57 TYPE int8.
        DATA t58 TYPE i.
        DATA(t59) = t48.
        t58 = t59->token_index.
        t57 = t58.
        DATA(t60) = CONV int8( 1 ).
        t56 = t57 + t60.
        DATA t61 TYPE REF TO zcl_lnt_result_node.
        CLEAR t61.
        DATA(t62) = abap_true.
        IF t62 = abap_true.
          DATA t63 TYPE REF TO zcl_lnt_result_node.
          DATA t64 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA(t65) = t50.
          t64 = t65.
          DATA t66 TYPE REF TO zcl_lnt_result_node.
          DATA t67 TYPE REF TO zcl_lnt_result_node.
          DATA(t68) = t48.
          t67 = t68->nodes_0226.
          t66 = t67.
          t63 = NEW zcl_lnt_result_node( i_node = t64 i_previous = t66 ).
          CREATE OBJECT t63->zlnt_view_ownkeys_b0e8086400eb.
          t63->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t69.
          IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t69 ).
          ENDIF.
          DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t70.
          IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `previous` p1 = t70 ).
          ENDIF.
          CREATE OBJECT t63->zlnt_json_ownkeys_70e5fd461788.
          t63->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t71) = |node|.
          DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t72.
          IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = t71 p1 = t72 ).
          ENDIF.
          DATA(t73) = |previous|.
          DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t74.
          IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
          ENDIF.
          t61 = t63.
        ELSE.
          DATA t75 TYPE REF TO zcl_lnt_result_node.
          CLEAR t75.
          t61 = t75.
        ENDIF.
        DATA t76 TYPE f.
        DATA t77 TYPE f.
        DATA(t78) = t48.
        t77 = t78->node_count.
        DATA(t79) = CONV f( 1 ).
        t76 = t77 + t79.
        t53 = zcl_lnt_st_result=>from_chain( i_tokens = t54 i_token_index = t56 i_nodes_5198 = t61 i_node_count = t76 ).
        t47 = t53.
        t46->load( ).
        APPEND t47 TO t46->items.
        t46->save( ).
      ENDIF.
    ENDDO.
    DATA(t80) = t2.
    result = t80.

  ENDMETHOD.

  METHOD railroad.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |Railroad.Terminal("|.
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    DATA(t7) = me->regexp.
    t6 = t7->source.
    DATA t8 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t8.
    DATA(t9) = `\\`.
    DATA(t10) = |g|.
    CREATE OBJECT t8 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t9 flags = t10 checked = abap_true.
    DATA(t11) = `\\`.
    DATA(t12) = strlen( t6 ).
    t5 = t8->replace( p0 = t6 p1 = t11 ).
    DATA t13 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t13.
    DATA(t14) = |"|.
    DATA(t15) = |g|.
    CREATE OBJECT t13 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t14 flags = t15 checked = abap_true.
    DATA(t16) = `\"`.
    DATA(t17) = strlen( t5 ).
    t4 = t13->replace( p0 = t5 p1 = t16 ).
    DATA(t18) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t19) = |")|.
    DATA(t20) = strlen( t2 ).
    t1 = |{ t2 }{ t19 }|.
    result = t1.

  ENDMETHOD.

  METHOD to_str.
    DATA t1 TYPE REF TO zlnt_exception_st_fa837731be5a.
    DATA(t2) = |excluded abaplint introspection: toStr|.
    t1 = NEW #( ).
    t1->payload = t2.
    CLEAR t1->source_value.
    CREATE OBJECT t1->source_value.
    t1->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1->source_value->sval = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD first.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t2.
    DATA(t5) = ||.
    t4->load( ).
    APPEND t5 TO t4->items.
    t4->save( ).
    DATA(t6) = t2.
    t1 = t6.
    result = t1.

  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA(t6) = t4.
    DATA(t7) = t1.
    t6->load( ).
    APPEND t7 TO t6->items.
    t6->save( ).
    DATA(t8) = t4.
    t3 = t8.
    t2 = me->run( i_r_f634 = t3 ).
    result = t2.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d60_29c3968778af84.
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~run.
    result = me->run( i_r_f634 = i_r_f634 ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~railroad.
    result = me->railroad( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~to_str.
    result = me->to_str( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~get_using.
    result = me->get_using( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~list_keywords.
    result = me->list_keywords( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~first.
    result = me->first( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~run_one.
    result = me->run_one( i_x = i_x ).
  ENDMETHOD.

  METHOD zif_lnt_union_daf022d4~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
