* TS: src/abap/2_statements/combi.ts:97:1 Token
CLASS zcl_lnt_st_token DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA name TYPE string.
    DATA token_type TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS constructor IMPORTING i_t TYPE REF TO zlnt_runtime_clas_a39833db3295.
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
CLASS zcl_lnt_st_token IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_t.
    me->token_type = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tokenType`.
    DATA t3 TYPE string.
    t3 = t1->name.
    me->name = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `name`.
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
    DATA t5 TYPE REF TO zcl_lnt_st_result.
    DATA t6 TYPE REF TO object.
    DATA(t7) = VALUE i( ).
    DO.
      t1->load( ).
      IF t7 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t1->items INDEX t7 + 1 INTO t6.
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
      DATA t11 TYPE abap_bool.
      DATA t12 TYPE int8.
      DATA t14 TYPE REF TO zcl_lnt_st_result.
      t14 = t5.
      DATA t16 TYPE f.
      DATA t17 TYPE int8.
      DATA t18 TYPE int8.
      DATA t19 TYPE i.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t20 = t14->tokens.
      t20->load( ).
      t19 = lines( t20->items ).
      t18 = t19.
      DATA t22 TYPE int8.
      DATA t23 TYPE i.
      t23 = t14->token_index.
      t22 = t23.
      t17 = t18 - t22.
      t16 = t17.
      t12 = t16.
      DATA(t25) = CONV int8( 0 ).
      t11 = xsdbool( t12 <> t25 ).
      t10 = t11.
      IF t11 = abap_true.
        DATA(t26) = VALUE abap_bool( ).
        DATA t27 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t27.
        DATA t28 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t28.
        DATA t29 TYPE REF TO zcl_lnt_st_result.
        t29 = t5.
        DATA t31 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t31.
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t32 = t29->tokens.
        DATA t34 TYPE i.
        t34 = t29->token_index.
        t34 = t34 + 1.
        DATA t36 TYPE REF TO object.
        CLEAR t36.
        t32->load( ).
        CLEAR t36.
        READ TABLE t32->items INDEX t34 INTO t36.
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t37.
        CLEAR t31.
        IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t37 ?= t36.
          DATA t38 TYPE REF TO object.
          t38 = t37->as_ref( ).
          t31 ?= t38.
        ELSE.
          t31 ?= t36.
        ENDIF.
        t28 = t31.
        t27 = t28->zlnt_builtin_clas_3f891b097658( ).
        DATA(t39) = me->token_type.
        DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t40.
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t41.
        CLEAR t40.
        IF t27 IS BOUND.
          CREATE OBJECT t40.
          t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          t40->cval = t27.
        ENDIF.
        CLEAR t41.
        IF t39 IS BOUND.
          CREATE OBJECT t41.
          t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          t41->cval = t39.
        ENDIF.
        IF t40 IS BOUND.
          t26 = t40->strict_equals( t41 ).
        ELSE.
          t26 = xsdbool( t41 IS NOT BOUND ).
        ENDIF.
        t10 = t26.
      ENDIF.
      IF t10 = abap_true.
        DATA t43 TYPE REF TO zcl_lnt_st_result.
        CLEAR t43.
        DATA t44 TYPE REF TO zcl_lnt_st_result.
        t44 = t5.
        DATA t47 TYPE REF TO zcl_lnt_token_node.
        CLEAR t47.
        DATA t48 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t48.
        DATA t49 TYPE REF TO zcl_lnt_st_result.
        t49 = t5.
        DATA t51 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t51.
        DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t52 = t49->tokens.
        DATA t54 TYPE i.
        t54 = t49->token_index.
        t54 = t54 + 1.
        DATA t56 TYPE REF TO object.
        CLEAR t56.
        t52->load( ).
        CLEAR t56.
        READ TABLE t52->items INDEX t54 INTO t56.
        DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t57.
        CLEAR t51.
        IF t56 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t57 ?= t56.
          DATA t58 TYPE REF TO object.
          t58 = t57->as_ref( ).
          t51 ?= t58.
        ELSE.
          t51 ?= t56.
        ENDIF.
        t48 = t51.
        t47 = NEW zcl_lnt_token_node( i_token = t48 ).
        DATA t59 TYPE REF TO zcl_lnt_st_result.
        CLEAR t59.
        DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t60 = t44->tokens.
        DATA t62 TYPE int8.
        DATA t63 TYPE int8.
        DATA t64 TYPE i.
        t64 = t44->token_index.
        t63 = t64.
        DATA(t66) = CONV int8( 1 ).
        t62 = t63 + t66.
        DATA t67 TYPE REF TO zcl_lnt_result_node.
        CLEAR t67.
        DATA t69 TYPE REF TO zcl_lnt_result_node.
        DATA t70 TYPE REF TO zif_lnt_union_4cf1d054.
        t70 = t47.
        DATA t72 TYPE REF TO zcl_lnt_result_node.
        DATA t73 TYPE REF TO zcl_lnt_result_node.
        t73 = t44->nodes_0226.
        t72 = t73.
        t69 = NEW zcl_lnt_result_node( i_node = t70 i_previous = t72 ).
        CREATE OBJECT t69->zlnt_view_ownkeys_b0e8086400eb.
        t69->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t75 ).
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t76.
        IF t69->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `previous` p1 = t76 ).
        ENDIF.
        CREATE OBJECT t69->zlnt_json_ownkeys_70e5fd461788.
        t69->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t77) = |node|.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = t77 p1 = t78 ).
        DATA(t79) = |previous|.
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t80.
        IF t69->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = t79 p1 = t80 ).
        ENDIF.
        t67 = t69.
        DATA t82 TYPE f.
        DATA t83 TYPE f.
        t83 = t44->node_count.
        DATA(t85) = CONV f( 1 ).
        t82 = t83 + t85.
        t59 = zcl_lnt_st_result=>from_chain( i_tokens = t60 i_token_index = t62 i_nodes_5198 = t67 i_node_count = t82 ).
        t43 = t59.
        t2->load( ).
        APPEND t43 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD railroad.
    DATA t1 TYPE REF TO zlnt_exception_st_fa837731be5a.
    DATA(t2) = |excluded abaplint introspection: railroad|.
    t1 = NEW #( ).
    t1->payload = t2.
    CLEAR t1->source_value.
    CREATE OBJECT t1->source_value.
    t1->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1->source_value->sval = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD to_str.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |Token "|.
    DATA(t4) = CONV string( me->name ).
    DATA(t5) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t6) = |"|.
    DATA(t7) = strlen( t2 ).
    t1 = |{ t2 }{ t6 }|.
    result = t1.

  ENDMETHOD.

  METHOD first.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t5) = ||.
    t2->load( ).
    APPEND t5 TO t2->items.
    t2->save( ).
    result = t2.

  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_st_result.
    t4 = t1.
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE abap_bool.
    DATA t8 TYPE int8.
    DATA t10 TYPE REF TO zcl_lnt_st_result.
    t10 = t4.
    DATA t12 TYPE f.
    DATA t13 TYPE int8.
    DATA t14 TYPE int8.
    DATA t15 TYPE i.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t16 = t10->tokens.
    t16->load( ).
    t15 = lines( t16->items ).
    t14 = t15.
    DATA t18 TYPE int8.
    DATA t19 TYPE i.
    t19 = t10->token_index.
    t18 = t19.
    t13 = t14 - t18.
    t12 = t13.
    t8 = t12.
    DATA(t21) = CONV int8( 0 ).
    t7 = xsdbool( t8 <> t21 ).
    t6 = t7.
    IF t7 = abap_true.
      DATA(t22) = VALUE abap_bool( ).
      DATA t23 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      DATA t24 TYPE REF TO zcl_lnt_abstract_token.
      DATA t25 TYPE REF TO zcl_lnt_st_result.
      t25 = t4.
      DATA t27 TYPE REF TO zcl_lnt_abstract_token.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t28 = t25->tokens.
      DATA t30 TYPE i.
      t30 = t25->token_index.
      t30 = t30 + 1.
      DATA t32 TYPE REF TO object.
      t28->load( ).
      READ TABLE t28->items INDEX t30 INTO t32.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t33 ?= t32.
        DATA t34 TYPE REF TO object.
        t34 = t33->as_ref( ).
        t27 ?= t34.
      ELSE.
        t27 ?= t32.
      ENDIF.
      t24 = t27.
      t23 = t24->zlnt_builtin_clas_3f891b097658( ).
      DATA(t35) = me->token_type.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t23 IS BOUND.
        CREATE OBJECT t36.
        t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
        t36->cval = t23.
      ENDIF.
      IF t35 IS BOUND.
        CREATE OBJECT t37.
        t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
        t37->cval = t35.
      ENDIF.
      IF t36 IS BOUND.
        t22 = t36->strict_equals( t37 ).
      ELSE.
        t22 = xsdbool( t37 IS NOT BOUND ).
      ENDIF.
      t6 = t22.
    ENDIF.
    IF t6 = abap_true.
      DATA t39 TYPE REF TO zcl_lnt_st_result.
      DATA t40 TYPE REF TO zcl_lnt_st_result.
      t40 = t4.
      DATA t43 TYPE REF TO zcl_lnt_token_node.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA t45 TYPE REF TO zcl_lnt_st_result.
      t45 = t4.
      DATA t47 TYPE REF TO zcl_lnt_abstract_token.
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t48 = t45->tokens.
      DATA t50 TYPE i.
      t50 = t45->token_index.
      t50 = t50 + 1.
      DATA t52 TYPE REF TO object.
      t48->load( ).
      READ TABLE t48->items INDEX t50 INTO t52.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t52 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t53 ?= t52.
        DATA t54 TYPE REF TO object.
        t54 = t53->as_ref( ).
        t47 ?= t54.
      ELSE.
        t47 ?= t52.
      ENDIF.
      t44 = t47.
      t43 = NEW zcl_lnt_token_node( i_token = t44 ).
      DATA t55 TYPE REF TO zcl_lnt_st_result.
      DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t56 = t40->tokens.
      DATA t58 TYPE int8.
      DATA t59 TYPE int8.
      DATA t60 TYPE i.
      t60 = t40->token_index.
      t59 = t60.
      DATA(t62) = CONV int8( 1 ).
      t58 = t59 + t62.
      DATA t63 TYPE REF TO zcl_lnt_result_node.
      DATA t65 TYPE REF TO zcl_lnt_result_node.
      DATA t66 TYPE REF TO zif_lnt_union_4cf1d054.
      t66 = t43.
      DATA t68 TYPE REF TO zcl_lnt_result_node.
      DATA t69 TYPE REF TO zcl_lnt_result_node.
      t69 = t40->nodes_0226.
      t68 = t69.
      t65 = NEW zcl_lnt_result_node( i_node = t66 i_previous = t68 ).
      CREATE OBJECT t65->zlnt_view_ownkeys_b0e8086400eb.
      t65->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t65->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t71 ).
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t65->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t65->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `previous` p1 = t72 ).
      ENDIF.
      CREATE OBJECT t65->zlnt_json_ownkeys_70e5fd461788.
      t65->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t73) = |node|.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t65->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
      DATA(t75) = |previous|.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t65->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t65->zlnt_json_ownkeys_70e5fd461788->put( p0 = t75 p1 = t76 ).
      ENDIF.
      t63 = t65.
      DATA t78 TYPE f.
      DATA t79 TYPE f.
      t79 = t40->node_count.
      DATA(t81) = CONV f( 1 ).
      t78 = t79 + t81.
      t55 = zcl_lnt_st_result=>from_chain( i_tokens = t56 i_token_index = t58 i_nodes_5198 = t63 i_node_count = t78 ).
      t39 = t55.
      t2->load( ).
      APPEND t39 TO t2->items.
      t2->save( ).
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d62_7621bdf0536f01.
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
