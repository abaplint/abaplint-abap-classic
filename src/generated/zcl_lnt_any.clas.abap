* TS: src/abap/3_structures/structures/any.ts:7:1 Any
CLASS zcl_lnt_any DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_structure.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_any IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA t3 TYPE REF TO zif_lnt_structure_runnable.
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d397_9e9329c3ef62.
    t4 = zcl_lnt_sr_combi_module=>sta( i_s = t5 ).
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA(t8) = t6.
    DATA t9 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d393_59e33384bdb4.
    t9 = zcl_lnt_sr_combi_module=>sta( i_s = t10 ).
    APPEND t9 TO t8->items.
    DATA(t11) = t6.
    DATA t12 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d584_d1857eeced8e.
    t12 = zcl_lnt_sr_combi_module=>sta( i_s = t13 ).
    APPEND t12 TO t11->items.
    DATA(t14) = t6.
    DATA t15 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d564_06e4778ce61b.
    t15 = zcl_lnt_sr_combi_module=>sta( i_s = t16 ).
    APPEND t15 TO t14->items.
    DATA(t17) = t6.
    DATA t18 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d555_4421dfbe5302.
    t18 = zcl_lnt_sr_combi_module=>sta( i_s = t19 ).
    APPEND t18 TO t17->items.
    DATA(t20) = t6.
    DATA t21 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d389_a00a56ae51c8.
    t21 = zcl_lnt_sr_combi_module=>sta( i_s = t22 ).
    APPEND t21 TO t20->items.
    DATA(t23) = t6.
    DATA t24 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d494_35493630237a.
    t24 = zcl_lnt_sr_combi_module=>sta( i_s = t25 ).
    APPEND t24 TO t23->items.
    DATA(t26) = t6.
    DATA t27 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d515_64c82be68056.
    t27 = zcl_lnt_sr_combi_module=>sta( i_s = t28 ).
    APPEND t27 TO t26->items.
    DATA(t29) = t6.
    DATA t30 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d524_1475618fa3c9.
    t30 = zcl_lnt_sr_combi_module=>sta( i_s = t31 ).
    APPEND t30 TO t29->items.
    DATA(t32) = t6.
    DATA t33 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d596_b011b05deabd.
    t33 = zcl_lnt_sr_combi_module=>sta( i_s = t34 ).
    APPEND t33 TO t32->items.
    DATA(t35) = t6.
    DATA t36 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d597_40fd5083e583.
    t36 = zcl_lnt_sr_combi_module=>sta( i_s = t37 ).
    APPEND t36 TO t35->items.
    DATA(t38) = t6.
    DATA t39 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d365_8e701edd48fd.
    t39 = zcl_lnt_sr_combi_module=>sta( i_s = t40 ).
    APPEND t39 TO t38->items.
    DATA(t41) = t6.
    DATA t42 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d363_3312ec1723b0.
    t42 = zcl_lnt_sr_combi_module=>sta( i_s = t43 ).
    APPEND t42 TO t41->items.
    DATA(t44) = t6.
    DATA t45 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d364_7507b5cec011.
    t45 = zcl_lnt_sr_combi_module=>sta( i_s = t46 ).
    APPEND t45 TO t44->items.
    DATA(t47) = t6.
    DATA t48 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d366_6e18e9b47d14.
    t48 = zcl_lnt_sr_combi_module=>sta( i_s = t49 ).
    APPEND t48 TO t47->items.
    DATA(t50) = t6.
    DATA t51 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d623_7a575cea258b.
    t51 = zcl_lnt_sr_combi_module=>sta( i_s = t52 ).
    APPEND t51 TO t50->items.
    DATA(t53) = t6.
    DATA t54 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t55) = zlnt_runtime_desc_78196487750d=>zlnt_member_d445_c8667ee83c64.
    t54 = zcl_lnt_sr_combi_module=>sta( i_s = t55 ).
    APPEND t54 TO t53->items.
    DATA(t56) = t6.
    DATA t57 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d527_08085b43ad01.
    t57 = zcl_lnt_sr_combi_module=>sta( i_s = t58 ).
    APPEND t57 TO t56->items.
    DATA(t59) = t6.
    DATA t60 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d640_24ab508a512a.
    t60 = zcl_lnt_sr_combi_module=>sta( i_s = t61 ).
    APPEND t60 TO t59->items.
    DATA(t62) = t6.
    DATA t63 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d444_767e13c320ad.
    t63 = zcl_lnt_sr_combi_module=>sta( i_s = t64 ).
    APPEND t63 TO t62->items.
    DATA(t65) = t6.
    DATA t66 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d414_08801fb4f67d.
    t66 = zcl_lnt_sr_combi_module=>sta( i_s = t67 ).
    APPEND t66 TO t65->items.
    DATA(t68) = t6.
    DATA t69 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t70) = zlnt_runtime_desc_78196487750d=>zlnt_member_d655_927738d95d40.
    t69 = zcl_lnt_sr_combi_module=>sta( i_s = t70 ).
    APPEND t69 TO t68->items.
    DATA(t71) = t6.
    DATA t72 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d654_e863c0d09c0d.
    t72 = zcl_lnt_sr_combi_module=>sta( i_s = t73 ).
    APPEND t72 TO t71->items.
    DATA(t74) = t6.
    DATA t75 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t76) = zlnt_runtime_desc_78196487750d=>zlnt_member_d490_92e27c11fe23.
    t75 = zcl_lnt_sr_combi_module=>sta( i_s = t76 ).
    APPEND t75 TO t74->items.
    DATA(t77) = t6.
    DATA t78 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d679_3af40033658c.
    t78 = zcl_lnt_sr_combi_module=>sub( i_s = t79 ).
    APPEND t78 TO t77->items.
    DATA(t80) = t6.
    DATA t81 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t82) = zlnt_runtime_desc_78196487750d=>zlnt_member_d680_7b1b0c92e5ad.
    t81 = zcl_lnt_sr_combi_module=>sub( i_s = t82 ).
    APPEND t81 TO t80->items.
    DATA(t83) = t6.
    DATA t84 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d681_a5a298bc6cdf.
    t84 = zcl_lnt_sr_combi_module=>sub( i_s = t85 ).
    APPEND t84 TO t83->items.
    DATA(t86) = t6.
    DATA t87 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t88) = zlnt_runtime_desc_78196487750d=>zlnt_member_d682_8558a5096ff2.
    t87 = zcl_lnt_sr_combi_module=>sub( i_s = t88 ).
    APPEND t87 TO t86->items.
    DATA(t89) = t6.
    DATA t90 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t91) = zlnt_runtime_desc_78196487750d=>zlnt_member_d683_aa96b8bd10e1.
    t90 = zcl_lnt_sr_combi_module=>sub( i_s = t91 ).
    APPEND t90 TO t89->items.
    DATA(t92) = t6.
    DATA t93 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t94) = zlnt_runtime_desc_78196487750d=>zlnt_member_d684_dd4b0670faf6.
    t93 = zcl_lnt_sr_combi_module=>sub( i_s = t94 ).
    APPEND t93 TO t92->items.
    DATA(t95) = t6.
    DATA t96 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d685_91b502e796fa.
    t96 = zcl_lnt_sr_combi_module=>sub( i_s = t97 ).
    APPEND t96 TO t95->items.
    DATA t98 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t99) = t3.
    DATA(t100) = t6.
    t98 = zcl_lnt_sr_combi_module=>alt( i_first = t99 i_rest = t100 ).
    t2 = t98.
    t1 = zcl_lnt_sr_combi_module=>star( i_s = t2 ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d686_ec8dd7b90bc5.
  ENDMETHOD.

  METHOD zif_lnt_structure~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_structure~get_matcher.
    result = me->get_matcher( ).
  ENDMETHOD.

  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
