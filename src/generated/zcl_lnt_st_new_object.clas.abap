* TS: src/abap/2_statements/expressions/new_object.ts:9:1 NewObject
CLASS zcl_lnt_st_new_object DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_new_object IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090 ).
    t7 = zcl_lnt_st_combi_module=>tok( i_t = t8 ).
    IF t7 IS BOUND.
      CREATE OBJECT t6.
      t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t9 TYPE REF TO object.
      t9 = t7.
      t6->oval = t9.
    ENDIF.
    t5 = t6.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA(t12) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t12 IS BOUND.
      CREATE OBJECT t11.
      t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t11->cval = t12.
    ENDIF.
    t10 = t11.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t14.
    t13 = t14.
    DATA(t15) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t18) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t17 = zcl_lnt_st_combi_module=>tok( i_t = t18 ).
    IF t17 IS BOUND.
      CREATE OBJECT t16.
      t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t19 TYPE REF TO object.
      t19 = t17.
      t16->oval = t19.
    ENDIF.
    APPEND t16 TO t15->items.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t21) = CAST zlnt_runtime_dyna_a429568d5be8( t5 ).
    DATA(t22) = CAST zlnt_runtime_dyna_a429568d5be8( t10 ).
    DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
    t20 = zcl_lnt_st_combi_module=>seq( i_first = t21 i_second = t22 i_rest = t23 ).
    t4 = t20.
    IF t4 IS BOUND.
      CREATE OBJECT t3.
      t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t24 TYPE REF TO object.
      t24 = t4.
      t3->oval = t24.
    ENDIF.
    t2 = zcl_lnt_st_combi_module=>plus( i_first = t3 ).
    t1 = t2.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t25.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t32) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090 ).
    t31 = zcl_lnt_st_combi_module=>tok( i_t = t32 ).
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t33 TYPE REF TO object.
      t33 = t31.
      t30->oval = t33.
    ENDIF.
    t29 = t30.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA(t38) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1 ).
    IF t38 IS BOUND.
      CREATE OBJECT t37.
      t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t37->cval = t38.
    ENDIF.
    t36 = zcl_lnt_st_combi_module=>plus( i_first = t37 ).
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t39 TYPE REF TO object.
      t39 = t36.
      t35->oval = t39.
    ENDIF.
    t34 = t35.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t41.
    t40 = t41.
    DATA(t42) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t45) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t44 = zcl_lnt_st_combi_module=>tok( i_t = t45 ).
    IF t44 IS BOUND.
      CREATE OBJECT t43.
      t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t46 TYPE REF TO object.
      t46 = t44.
      t43->oval = t46.
    ENDIF.
    APPEND t43 TO t42->items.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t48) = CAST zlnt_runtime_dyna_a429568d5be8( t29 ).
    DATA(t49) = CAST zlnt_runtime_dyna_a429568d5be8( t34 ).
    DATA(t50) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
    t47 = zcl_lnt_st_combi_module=>seq( i_first = t48 i_second = t49 i_rest = t50 ).
    t28 = t47.
    IF t28 IS BOUND.
      CREATE OBJECT t27.
      t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t51 TYPE REF TO object.
      t51 = t28.
      t27->oval = t51.
    ENDIF.
    t26 = zcl_lnt_st_combi_module=>plus( i_first = t27 ).
    t25 = t26.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t56) = |NEW|.
    CREATE OBJECT t55.
    t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t55->sval = t56.
    t54 = t55.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA(t59) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d109_38db171d00c8 ).
    IF t59 IS BOUND.
      CREATE OBJECT t58.
      t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t58->cval = t59.
    ENDIF.
    t57 = t58.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t61.
    t60 = t61.
    DATA(t62) = CAST zlnt_runtime_arra_c22708faf2e3( t60 ).
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t65) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t64 = zcl_lnt_st_combi_module=>tok( i_t = t65 ).
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t66 TYPE REF TO object.
      t66 = t64.
      t63->oval = t66.
    ENDIF.
    APPEND t63 TO t62->items.
    DATA(t67) = CAST zlnt_runtime_arra_c22708faf2e3( t60 ).
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA(t74) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t73->cval = t74.
    ENDIF.
    t72 = t73.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d219_2dee75409f14 ).
    IF t77 IS BOUND.
      CREATE OBJECT t76.
      t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t76->cval = t77.
    ENDIF.
    t75 = t76.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t79.
    t78 = t79.
    DATA(t80) = CAST zlnt_runtime_arra_c22708faf2e3( t78 ).
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA(t82) = CAST zif_lnt_statement_runnable( t1 ).
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t83 TYPE REF TO object.
      t83 = t82.
      t81->oval = t83.
    ENDIF.
    APPEND t81 TO t80->items.
    DATA(t84) = CAST zlnt_runtime_arra_c22708faf2e3( t78 ).
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA(t86) = CAST zif_lnt_statement_runnable( t25 ).
    IF t86 IS BOUND.
      CREATE OBJECT t85.
      t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t87 TYPE REF TO object.
      t87 = t86.
      t85->oval = t87.
    ENDIF.
    APPEND t85 TO t84->items.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t89) = CAST zlnt_runtime_dyna_a429568d5be8( t72 ).
    DATA(t90) = CAST zlnt_runtime_dyna_a429568d5be8( t75 ).
    DATA(t91) = CAST zlnt_runtime_arra_c22708faf2e3( t78 ).
    t88 = zcl_lnt_st_combi_module=>alt( i_first = t89 i_second = t90 i_rest = t91 ).
    t71 = t88.
    IF t71 IS BOUND.
      CREATE OBJECT t70.
      t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t92 TYPE REF TO object.
      t92 = t71.
      t70->oval = t92.
    ENDIF.
    t69 = zcl_lnt_st_combi_module=>opt_prio( i_first = t70 ).
    IF t69 IS BOUND.
      CREATE OBJECT t68.
      t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t93 TYPE REF TO object.
      t93 = t69.
      t68->oval = t93.
    ENDIF.
    APPEND t68 TO t67->items.
    DATA(t94) = CAST zlnt_runtime_arra_c22708faf2e3( t60 ).
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t96) = |)|.
    CREATE OBJECT t95.
    t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t95->sval = t96.
    APPEND t95 TO t94->items.
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t98) = CAST zlnt_runtime_dyna_a429568d5be8( t54 ).
    DATA(t99) = CAST zlnt_runtime_dyna_a429568d5be8( t57 ).
    DATA(t100) = CAST zlnt_runtime_arra_c22708faf2e3( t60 ).
    t97 = zcl_lnt_st_combi_module=>seq( i_first = t98 i_second = t99 i_rest = t100 ).
    t53 = t97.
    t52 = t53.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t103.
    DATA t104 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t105.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t105 = zcl_lnt_version_module=>release_b8cd.
    DATA(t106) = |v740sp02|.
    t104 = t105->get( p0 = t106 ).
    t103 = t104.
    IF t103 IS BOUND.
      CREATE OBJECT t102.
      t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t107 TYPE REF TO object.
      t107 = t103.
      t102->oval = t107.
    ENDIF.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA(t109) = CAST zif_lnt_statement_runnable( t52 ).
    IF t109 IS BOUND.
      CREATE OBJECT t108.
      t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t110 TYPE REF TO object.
      t110 = t109.
      t108->oval = t110.
    ENDIF.
    DATA t111 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t111.
    DATA(t112) = abap_true.
    IF t112 = abap_true.
      DATA t113 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t113.
      DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t114.
      DATA(t115) = abap_true.
      IF t115 = abap_true.
        DATA(t116) = |OpenABAP|.
        DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t117->has = abap_true.
        t117->value = t116.
        t114 = t117.
      ELSE.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t118.
        t114 = t118.
      ENDIF.
      t113 = NEW zcl_lnt_iver_options( i_also = t114 ).
      t111 = t113.
    ELSE.
      DATA t119 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t119.
      t111 = t119.
    ENDIF.
    t101 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t102 i_first = t108 i_opts = t111 ).
    result = t101.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d218_79f2a1395386.
  ENDMETHOD.
ENDCLASS.
