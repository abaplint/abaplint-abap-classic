* TS: node_modules/vscode-languageserver-types/lib/umd/main.d.ts.module module
CLASS zcl_lnt_main_d_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA ns TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLASS-DATA semantic_token_types_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA zlnt_builtin_init_13c3051ba199 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_b51b0369cabd.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_main_d_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_b51b0369cabd.
    IF zlnt_builtin_init_13c3051ba199 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_13c3051ba199 = abap_true.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    DATA(t1) = NEW zlnt_runtime_map__a5ffc3d163a5( ).
    zcl_lnt_main_d_module=>ns = t1.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    DATA(t2) = NEW zlnt_runtime_map__a1006b231250( ).
    zcl_lnt_main_d_module=>semantic_token_types_namespace = t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t4.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t4 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t5) = |namespace|.
    DATA(t6) = |namespace|.
    t3 = t4->set( p0 = t5 p1 = t6 ).
    DATA t7 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t8.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t8 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t9) = |type|.
    DATA(t10) = |type|.
    t7 = t8->set( p0 = t9 p1 = t10 ).
    DATA t11 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t12.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t12 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t13) = |class|.
    DATA(t14) = |class|.
    t11 = t12->set( p0 = t13 p1 = t14 ).
    DATA t15 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t16.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t16 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t17) = |enum|.
    DATA(t18) = |enum|.
    t15 = t16->set( p0 = t17 p1 = t18 ).
    DATA t19 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t20.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t20 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t21) = |interface|.
    DATA(t22) = |interface|.
    t19 = t20->set( p0 = t21 p1 = t22 ).
    DATA t23 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t24.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t24 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t25) = |struct|.
    DATA(t26) = |struct|.
    t23 = t24->set( p0 = t25 p1 = t26 ).
    DATA t27 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t28.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t28 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t29) = |typeParameter|.
    DATA(t30) = |typeParameter|.
    t27 = t28->set( p0 = t29 p1 = t30 ).
    DATA t31 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t32.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t32 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t33) = |parameter|.
    DATA(t34) = |parameter|.
    t31 = t32->set( p0 = t33 p1 = t34 ).
    DATA t35 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t36.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t36 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t37) = |variable|.
    DATA(t38) = |variable|.
    t35 = t36->set( p0 = t37 p1 = t38 ).
    DATA t39 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t40.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t40 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t41) = |property|.
    DATA(t42) = |property|.
    t39 = t40->set( p0 = t41 p1 = t42 ).
    DATA t43 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t44.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t44 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t45) = |enumMember|.
    DATA(t46) = |enumMember|.
    t43 = t44->set( p0 = t45 p1 = t46 ).
    DATA t47 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t48.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t48 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t49) = |event|.
    DATA(t50) = |event|.
    t47 = t48->set( p0 = t49 p1 = t50 ).
    DATA t51 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t52.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t52 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t53) = |function|.
    DATA(t54) = |function|.
    t51 = t52->set( p0 = t53 p1 = t54 ).
    DATA t55 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t56.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t56 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t57) = |method|.
    DATA(t58) = |method|.
    t55 = t56->set( p0 = t57 p1 = t58 ).
    DATA t59 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t60.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t60 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t61) = |macro|.
    DATA(t62) = |macro|.
    t59 = t60->set( p0 = t61 p1 = t62 ).
    DATA t63 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t64.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t64 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t65) = |keyword|.
    DATA(t66) = |keyword|.
    t63 = t64->set( p0 = t65 p1 = t66 ).
    DATA t67 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t68.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t68 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t69) = |modifier|.
    DATA(t70) = |modifier|.
    t67 = t68->set( p0 = t69 p1 = t70 ).
    DATA t71 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t72.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t72 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t73) = |comment|.
    DATA(t74) = |comment|.
    t71 = t72->set( p0 = t73 p1 = t74 ).
    DATA t75 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t76.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t76 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t77) = |string|.
    DATA(t78) = |string|.
    t75 = t76->set( p0 = t77 p1 = t78 ).
    DATA t79 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t80.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t80 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t81) = |number|.
    DATA(t82) = |number|.
    t79 = t80->set( p0 = t81 p1 = t82 ).
    DATA t83 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t84.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t84 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t85) = |regexp|.
    DATA(t86) = |regexp|.
    t83 = t84->set( p0 = t85 p1 = t86 ).
    DATA t87 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t88.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t88 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t89) = |operator|.
    DATA(t90) = |operator|.
    t87 = t88->set( p0 = t89 p1 = t90 ).
    DATA t91 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t92.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t92 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t93) = |decorator|.
    DATA(t94) = |decorator|.
    t91 = t92->set( p0 = t93 p1 = t94 ).
    DATA t95 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t95.
    DATA t96 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t96.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t96 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
    DATA(t97) = |label|.
    DATA(t98) = |label|.
    t95 = t96->set( p0 = t97 p1 = t98 ).
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
    result = zlnt_runtime_desc_a63becc74831=>zlnt_member_d12_bad132cea1e854.
  ENDMETHOD.
ENDCLASS.
