* TS: src/abap/2_statements/combi.ts:55:1 Word
CLASS zcl_lnt_word DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA s TYPE string.
    METHODS constructor IMPORTING i_s TYPE string.
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
CLASS zcl_lnt_word IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_s.
    DATA t2 TYPE string.
    DATA(t3) = t1.
    DATA(t4) = strlen( t3 ).
    t2 = t3.
    IF t2 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t2 TO UPPER CASE.
    ELSE.
      t2 = zlnt_runtime_uppe_91169605024d=>full( t2 ).
    ENDIF.
    me->s = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `s`.
  ENDMETHOD.

  METHOD list_keywords.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t2.
    DATA(t5) = CONV string( me->s ).
    t4->load( ).
    APPEND t5 TO t4->items.
    t4->save( ).
    DATA(t6) = t2.
    t1 = t6.
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
      DATA t11 TYPE abap_bool.
      DATA t12 TYPE int8.
      DATA t13 TYPE f.
      DATA t14 TYPE REF TO zcl_lnt_st_result.
      DATA(t15) = t5.
      t14 = t15.
      DATA t16 TYPE f.
      DATA t17 TYPE int8.
      DATA t18 TYPE int8.
      DATA t19 TYPE i.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t21) = t14.
      t20 = t21->tokens.
      t20->load( ).
      t19 = lines( t20->items ).
      t18 = t19.
      DATA t22 TYPE int8.
      DATA t23 TYPE i.
      DATA(t24) = t14.
      t23 = t24->token_index.
      t22 = t23.
      t17 = t18 - t22.
      t16 = t17.
      t13 = t16.
      t12 = t13.
      DATA(t25) = CONV int8( 0 ).
      t11 = xsdbool( t12 <> t25 ).
      t10 = t11.
      IF t11 = abap_true.
        DATA(t26) = VALUE abap_bool( ).
        DATA(t27) = VALUE string( ).
        DATA t28 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t28.
        DATA t29 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t29.
        DATA t30 TYPE REF TO zcl_lnt_st_result.
        DATA(t31) = t5.
        t30 = t31.
        DATA t32 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t32.
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t34) = t30.
        t33 = t34->tokens.
        DATA t35 TYPE i.
        DATA(t36) = t30.
        t35 = t36->token_index.
        t35 = t35 + 1.
        DATA t37 TYPE REF TO object.
        CLEAR t37.
        t33->load( ).
        CLEAR t37.
        READ TABLE t33->items INDEX t35 INTO t37.
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t38.
        CLEAR t32.
        IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t38 ?= t37.
          DATA t39 TYPE REF TO object.
          t39 = t38->as_ref( ).
          t32 ?= t39.
        ELSE.
          t32 ?= t37.
        ENDIF.
        t29 = t32.
        t28 = t29.
        DATA t40 TYPE string.
        DATA(t41) = t28.
        t40 = t41->str_upper.
        t27 = t40.
        DATA(t42) = CONV string( me->s ).
        t26 = xsdbool( t27 = t42 ).
        t10 = t26.
      ENDIF.
      IF t10 = abap_true.
        DATA(t43) = t2.
        DATA t44 TYPE REF TO zcl_lnt_st_result.
        CLEAR t44.
        DATA t45 TYPE REF TO zcl_lnt_st_result.
        DATA(t46) = t5.
        t45 = t46.
        DATA t47 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t47.
        DATA t48 TYPE REF TO zcl_lnt_token_node.
        CLEAR t48.
        DATA t49 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t49.
        DATA t50 TYPE REF TO zcl_lnt_st_result.
        DATA(t51) = t5.
        t50 = t51.
        DATA t52 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t52.
        DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t54) = t50.
        t53 = t54->tokens.
        DATA t55 TYPE i.
        DATA(t56) = t50.
        t55 = t56->token_index.
        t55 = t55 + 1.
        DATA t57 TYPE REF TO object.
        CLEAR t57.
        t53->load( ).
        CLEAR t57.
        READ TABLE t53->items INDEX t55 INTO t57.
        DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t58.
        CLEAR t52.
        IF t57 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t58 ?= t57.
          DATA t59 TYPE REF TO object.
          t59 = t58->as_ref( ).
          t52 ?= t59.
        ELSE.
          t52 ?= t57.
        ENDIF.
        t49 = t52.
        t48 = NEW zcl_lnt_token_node( i_token = t49 ).
        t47 = t48.
        DATA t60 TYPE REF TO zcl_lnt_st_result.
        CLEAR t60.
        DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t62) = t45.
        t61 = t62->tokens.
        DATA t63 TYPE int8.
        DATA t64 TYPE int8.
        DATA t65 TYPE i.
        DATA(t66) = t45.
        t65 = t66->token_index.
        t64 = t65.
        DATA(t67) = CONV int8( 1 ).
        t63 = t64 + t67.
        DATA t68 TYPE REF TO zcl_lnt_result_node.
        CLEAR t68.
        DATA(t69) = abap_true.
        IF t69 = abap_true.
          DATA t70 TYPE REF TO zcl_lnt_result_node.
          DATA t71 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA(t72) = t47.
          t71 = t72.
          DATA t73 TYPE REF TO zcl_lnt_result_node.
          DATA t74 TYPE REF TO zcl_lnt_result_node.
          DATA(t75) = t45.
          t74 = t75->nodes_0226.
          t73 = t74.
          t70 = NEW zcl_lnt_result_node( i_node = t71 i_previous = t73 ).
          CREATE OBJECT t70->zlnt_view_ownkeys_b0e8086400eb.
          t70->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t76.
          IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t76 ).
          ENDIF.
          DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t77.
          IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `previous` p1 = t77 ).
          ENDIF.
          CREATE OBJECT t70->zlnt_json_ownkeys_70e5fd461788.
          t70->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t78) = |node|.
          DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t79.
          IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t78 p1 = t79 ).
          ENDIF.
          DATA(t80) = |previous|.
          DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t81.
          IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t80 p1 = t81 ).
          ENDIF.
          t68 = t70.
        ELSE.
          DATA t82 TYPE REF TO zcl_lnt_result_node.
          CLEAR t82.
          t68 = t82.
        ENDIF.
        DATA t83 TYPE f.
        DATA t84 TYPE f.
        DATA(t85) = t45.
        t84 = t85->node_count.
        DATA(t86) = CONV f( 1 ).
        t83 = t84 + t86.
        t60 = zcl_lnt_st_result=>from_chain( i_tokens = t61 i_token_index = t63 i_nodes_5198 = t68 i_node_count = t83 ).
        t44 = t60.
        t43->load( ).
        APPEND t44 TO t43->items.
        t43->save( ).
      ENDIF.
    ENDDO.
    DATA(t87) = t2.
    result = t87.

  ENDMETHOD.

  METHOD railroad.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |Railroad.Terminal('"|.
    DATA(t4) = CONV string( me->s ).
    DATA(t5) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t6) = |"')|.
    DATA(t7) = strlen( t2 ).
    t1 = |{ t2 }{ t6 }|.
    result = t1.

  ENDMETHOD.

  METHOD to_str.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |"|.
    DATA(t4) = CONV string( me->s ).
    DATA(t5) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t6) = |"|.
    DATA(t7) = strlen( t2 ).
    t1 = |{ t2 }{ t6 }|.
    result = t1.

  ENDMETHOD.

  METHOD first.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t2.
    DATA(t5) = CONV string( me->s ).
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
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_st_result.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE abap_bool.
    DATA t8 TYPE int8.
    DATA t9 TYPE f.
    DATA t10 TYPE REF TO zcl_lnt_st_result.
    DATA(t11) = t4.
    t10 = t11.
    DATA t12 TYPE f.
    DATA t13 TYPE int8.
    DATA t14 TYPE int8.
    DATA t15 TYPE i.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t17) = t10.
    t16 = t17->tokens.
    t16->load( ).
    t15 = lines( t16->items ).
    t14 = t15.
    DATA t18 TYPE int8.
    DATA t19 TYPE i.
    DATA(t20) = t10.
    t19 = t20->token_index.
    t18 = t19.
    t13 = t14 - t18.
    t12 = t13.
    t9 = t12.
    t8 = t9.
    DATA(t21) = CONV int8( 0 ).
    t7 = xsdbool( t8 <> t21 ).
    t6 = t7.
    IF t7 = abap_true.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE string( ).
      DATA t24 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t24.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t25.
      DATA t26 TYPE REF TO zcl_lnt_st_result.
      DATA(t27) = t4.
      t26 = t27.
      DATA t28 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t30) = t26.
      t29 = t30->tokens.
      DATA t31 TYPE i.
      DATA(t32) = t26.
      t31 = t32->token_index.
      t31 = t31 + 1.
      DATA t33 TYPE REF TO object.
      CLEAR t33.
      t29->load( ).
      CLEAR t33.
      READ TABLE t29->items INDEX t31 INTO t33.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      CLEAR t28.
      IF t33 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t34 ?= t33.
        DATA t35 TYPE REF TO object.
        t35 = t34->as_ref( ).
        t28 ?= t35.
      ELSE.
        t28 ?= t33.
      ENDIF.
      t25 = t28.
      t24 = t25.
      DATA t36 TYPE string.
      DATA(t37) = t24.
      t36 = t37->str_upper.
      t23 = t36.
      DATA(t38) = CONV string( me->s ).
      t22 = xsdbool( t23 = t38 ).
      t6 = t22.
    ENDIF.
    IF t6 = abap_true.
      DATA(t39) = t2.
      DATA t40 TYPE REF TO zcl_lnt_st_result.
      CLEAR t40.
      DATA t41 TYPE REF TO zcl_lnt_st_result.
      DATA(t42) = t4.
      t41 = t42.
      DATA t43 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t43.
      DATA t44 TYPE REF TO zcl_lnt_token_node.
      CLEAR t44.
      DATA t45 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t45.
      DATA t46 TYPE REF TO zcl_lnt_st_result.
      DATA(t47) = t4.
      t46 = t47.
      DATA t48 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t48.
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t50) = t46.
      t49 = t50->tokens.
      DATA t51 TYPE i.
      DATA(t52) = t46.
      t51 = t52->token_index.
      t51 = t51 + 1.
      DATA t53 TYPE REF TO object.
      CLEAR t53.
      t49->load( ).
      CLEAR t53.
      READ TABLE t49->items INDEX t51 INTO t53.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      CLEAR t48.
      IF t53 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t54 ?= t53.
        DATA t55 TYPE REF TO object.
        t55 = t54->as_ref( ).
        t48 ?= t55.
      ELSE.
        t48 ?= t53.
      ENDIF.
      t45 = t48.
      t44 = NEW zcl_lnt_token_node( i_token = t45 ).
      t43 = t44.
      DATA t56 TYPE REF TO zcl_lnt_st_result.
      CLEAR t56.
      DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t58) = t41.
      t57 = t58->tokens.
      DATA t59 TYPE int8.
      DATA t60 TYPE int8.
      DATA t61 TYPE i.
      DATA(t62) = t41.
      t61 = t62->token_index.
      t60 = t61.
      DATA(t63) = CONV int8( 1 ).
      t59 = t60 + t63.
      DATA t64 TYPE REF TO zcl_lnt_result_node.
      CLEAR t64.
      DATA(t65) = abap_true.
      IF t65 = abap_true.
        DATA t66 TYPE REF TO zcl_lnt_result_node.
        DATA t67 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t68) = t43.
        t67 = t68.
        DATA t69 TYPE REF TO zcl_lnt_result_node.
        DATA t70 TYPE REF TO zcl_lnt_result_node.
        DATA(t71) = t41.
        t70 = t71->nodes_0226.
        t69 = t70.
        t66 = NEW zcl_lnt_result_node( i_node = t67 i_previous = t69 ).
        CREATE OBJECT t66->zlnt_view_ownkeys_b0e8086400eb.
        t66->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t72.
        IF t66->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t66->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t72 ).
        ENDIF.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        IF t66->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t66->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `previous` p1 = t73 ).
        ENDIF.
        CREATE OBJECT t66->zlnt_json_ownkeys_70e5fd461788.
        t66->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t74) = |node|.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = t74 p1 = t75 ).
        ENDIF.
        DATA(t76) = |previous|.
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t77.
        IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = t76 p1 = t77 ).
        ENDIF.
        t64 = t66.
      ELSE.
        DATA t78 TYPE REF TO zcl_lnt_result_node.
        CLEAR t78.
        t64 = t78.
      ENDIF.
      DATA t79 TYPE f.
      DATA t80 TYPE f.
      DATA(t81) = t41.
      t80 = t81->node_count.
      DATA(t82) = CONV f( 1 ).
      t79 = t80 + t82.
      t56 = zcl_lnt_st_result=>from_chain( i_tokens = t57 i_token_index = t59 i_nodes_5198 = t64 i_node_count = t79 ).
      t40 = t56.
      t39->load( ).
      APPEND t40 TO t39->items.
      t39->save( ).
    ENDIF.
    DATA(t83) = t2.
    result = t83.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d61_558ec3353ed9dc.
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
