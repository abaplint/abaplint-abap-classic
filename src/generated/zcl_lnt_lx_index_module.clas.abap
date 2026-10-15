* TS: src/abap/1_lexer/tokens/index.ts.module module
CLASS zcl_lnt_lx_index_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA ns TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLASS-DATA zlnt_builtin_init_f399ac0a203d TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_5aef6c4f7306.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_lx_index_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_5aef6c4f7306.
    IF zlnt_builtin_init_f399ac0a203d = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_f399ac0a203d = abap_true.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    DATA(t1) = NEW zlnt_runtime_map__a5ffc3d163a5( ).
    zcl_lnt_lx_index_module=>ns = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t3.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t3 = zcl_lnt_lx_index_module=>ns.
    DATA(t4) = |At|.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d14_ce741d8560b489.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t7.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t7 = zcl_lnt_lx_index_module=>ns.
    DATA(t8) = |AtW|.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d15_00cef1e87bea8f.
    t6 = t7->set( p0 = t8 p1 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t11.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t11 = zcl_lnt_lx_index_module=>ns.
    DATA(t12) = |WAt|.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d42_9f93cd02a8cf40.
    t10 = t11->set( p0 = t12 p1 = t13 ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t15.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t15 = zcl_lnt_lx_index_module=>ns.
    DATA(t16) = |WAtW|.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d43_83ef37681660e5.
    t14 = t15->set( p0 = t16 p1 = t17 ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t19.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t19 = zcl_lnt_lx_index_module=>ns.
    DATA(t20) = |BracketLeft|.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d16_4dbebe58fab420.
    t18 = t19->set( p0 = t20 p1 = t21 ).
    DATA t22 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t23.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t23 = zcl_lnt_lx_index_module=>ns.
    DATA(t24) = |WBracketLeft|.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d44_2edec38c134e79.
    t22 = t23->set( p0 = t24 p1 = t25 ).
    DATA t26 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t27.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t27 = zcl_lnt_lx_index_module=>ns.
    DATA(t28) = |BracketLeftW|.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d17_c487d20bb05c7b.
    t26 = t27->set( p0 = t28 p1 = t29 ).
    DATA t30 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t31.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t31 = zcl_lnt_lx_index_module=>ns.
    DATA(t32) = |WBracketLeftW|.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d45_b3a64dc568c306.
    t30 = t31->set( p0 = t32 p1 = t33 ).
    DATA t34 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t35.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t35 = zcl_lnt_lx_index_module=>ns.
    DATA(t36) = |BracketRight|.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d18_19680539f6df90.
    t34 = t35->set( p0 = t36 p1 = t37 ).
    DATA t38 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t39.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t39 = zcl_lnt_lx_index_module=>ns.
    DATA(t40) = |WBracketRight|.
    DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d46_b4d7f76ec970d6.
    t38 = t39->set( p0 = t40 p1 = t41 ).
    DATA t42 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t43.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t43 = zcl_lnt_lx_index_module=>ns.
    DATA(t44) = |BracketRightW|.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d19_66a0d47a314d37.
    t42 = t43->set( p0 = t44 p1 = t45 ).
    DATA t46 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t47.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t47 = zcl_lnt_lx_index_module=>ns.
    DATA(t48) = |WBracketRightW|.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d47_2a66c13abb507b.
    t46 = t47->set( p0 = t48 p1 = t49 ).
    DATA t50 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t51.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t51 = zcl_lnt_lx_index_module=>ns.
    DATA(t52) = |InstanceArrow|.
    DATA(t53) = zlnt_runtime_desc_78196487750d=>zlnt_member_d25_a168ca012db7bd.
    t50 = t51->set( p0 = t52 p1 = t53 ).
    DATA t54 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t55.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t55 = zcl_lnt_lx_index_module=>ns.
    DATA(t56) = |WInstanceArrow|.
    DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d50_8bfe488dfc2636.
    t54 = t55->set( p0 = t56 p1 = t57 ).
    DATA t58 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t59.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t59 = zcl_lnt_lx_index_module=>ns.
    DATA(t60) = |InstanceArrowW|.
    DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d26_2fd73418f07736.
    t58 = t59->set( p0 = t60 p1 = t61 ).
    DATA t62 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t63.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t63 = zcl_lnt_lx_index_module=>ns.
    DATA(t64) = |WInstanceArrowW|.
    DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d51_977bdd21674215.
    t62 = t63->set( p0 = t64 p1 = t65 ).
    DATA t66 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t67.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t67 = zcl_lnt_lx_index_module=>ns.
    DATA(t68) = |ParenLeft|.
    DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t66 = t67->set( p0 = t68 p1 = t69 ).
    DATA t70 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t71.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t71 = zcl_lnt_lx_index_module=>ns.
    DATA(t72) = |WParenLeft|.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090.
    t70 = t71->set( p0 = t72 p1 = t73 ).
    DATA t74 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t75.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t75 = zcl_lnt_lx_index_module=>ns.
    DATA(t76) = |ParenLeftW|.
    DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t74 = t75->set( p0 = t76 p1 = t77 ).
    DATA t78 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t79.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t79 = zcl_lnt_lx_index_module=>ns.
    DATA(t80) = |WParenLeftW|.
    DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t78 = t79->set( p0 = t80 p1 = t81 ).
    DATA t82 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t83.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t83 = zcl_lnt_lx_index_module=>ns.
    DATA(t84) = |ParenRight|.
    DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6.
    t82 = t83->set( p0 = t84 p1 = t85 ).
    DATA t86 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t87.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t87 = zcl_lnt_lx_index_module=>ns.
    DATA(t88) = |WParenRight|.
    DATA(t89) = zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de.
    t86 = t87->set( p0 = t88 p1 = t89 ).
    DATA t90 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t91.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t91 = zcl_lnt_lx_index_module=>ns.
    DATA(t92) = |ParenRightW|.
    DATA(t93) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t90 = t91->set( p0 = t92 p1 = t93 ).
    DATA t94 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t95.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t95 = zcl_lnt_lx_index_module=>ns.
    DATA(t96) = |WParenRightW|.
    DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t94 = t95->set( p0 = t96 p1 = t97 ).
    DATA t98 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t99.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t99 = zcl_lnt_lx_index_module=>ns.
    DATA(t100) = |Dash|.
    DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t98 = t99->set( p0 = t100 p1 = t101 ).
    DATA t102 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t103.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t103 = zcl_lnt_lx_index_module=>ns.
    DATA(t104) = |WDash|.
    DATA(t105) = zlnt_runtime_desc_78196487750d=>zlnt_member_d48_c59205d155180b.
    t102 = t103->set( p0 = t104 p1 = t105 ).
    DATA t106 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t107.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t107 = zcl_lnt_lx_index_module=>ns.
    DATA(t108) = |DashW|.
    DATA(t109) = zlnt_runtime_desc_78196487750d=>zlnt_member_d23_6b4b88957b2c9e.
    t106 = t107->set( p0 = t108 p1 = t109 ).
    DATA t110 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t111.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t111 = zcl_lnt_lx_index_module=>ns.
    DATA(t112) = |WDashW|.
    DATA(t113) = zlnt_runtime_desc_78196487750d=>zlnt_member_d49_4e26a438f1d92f.
    t110 = t111->set( p0 = t112 p1 = t113 ).
    DATA t114 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t115.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t115 = zcl_lnt_lx_index_module=>ns.
    DATA(t116) = |Plus|.
    DATA(t117) = zlnt_runtime_desc_78196487750d=>zlnt_member_d31_5d276172db4584.
    t114 = t115->set( p0 = t116 p1 = t117 ).
    DATA t118 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t119.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t119 = zcl_lnt_lx_index_module=>ns.
    DATA(t120) = |WPlus|.
    DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d56_5d4839b794b2ac.
    t118 = t119->set( p0 = t120 p1 = t121 ).
    DATA t122 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t123.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t123 = zcl_lnt_lx_index_module=>ns.
    DATA(t124) = |PlusW|.
    DATA(t125) = zlnt_runtime_desc_78196487750d=>zlnt_member_d32_e6c12f2c0d2c2c.
    t122 = t123->set( p0 = t124 p1 = t125 ).
    DATA t126 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t127.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t127 = zcl_lnt_lx_index_module=>ns.
    DATA(t128) = |WPlusW|.
    DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d57_8cc8b328e2c425.
    t126 = t127->set( p0 = t128 p1 = t129 ).
    DATA t130 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t131.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t131 = zcl_lnt_lx_index_module=>ns.
    DATA(t132) = |StaticArrow|.
    DATA(t133) = zlnt_runtime_desc_78196487750d=>zlnt_member_d35_f5313aa9b79ded.
    t130 = t131->set( p0 = t132 p1 = t133 ).
    DATA t134 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t135.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t135 = zcl_lnt_lx_index_module=>ns.
    DATA(t136) = |WStaticArrow|.
    DATA(t137) = zlnt_runtime_desc_78196487750d=>zlnt_member_d58_65527297cce1a0.
    t134 = t135->set( p0 = t136 p1 = t137 ).
    DATA t138 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t139.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t139 = zcl_lnt_lx_index_module=>ns.
    DATA(t140) = |StaticArrowW|.
    DATA(t141) = zlnt_runtime_desc_78196487750d=>zlnt_member_d36_3b0a4eceab9587.
    t138 = t139->set( p0 = t140 p1 = t141 ).
    DATA t142 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t143.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t143 = zcl_lnt_lx_index_module=>ns.
    DATA(t144) = |WStaticArrowW|.
    DATA(t145) = zlnt_runtime_desc_78196487750d=>zlnt_member_d59_2e4f9aa68d37c4.
    t142 = t143->set( p0 = t144 p1 = t145 ).
    DATA t146 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t147.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t147 = zcl_lnt_lx_index_module=>ns.
    DATA(t148) = |StringToken|.
    DATA(t149) = zlnt_runtime_desc_78196487750d=>zlnt_member_d37_5abd7e1c3cabc9.
    t146 = t147->set( p0 = t148 p1 = t149 ).
    DATA t150 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t151.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t151 = zcl_lnt_lx_index_module=>ns.
    DATA(t152) = |StringTemplate|.
    DATA(t153) = zlnt_runtime_desc_78196487750d=>zlnt_member_d38_db94e541375fea.
    t150 = t151->set( p0 = t152 p1 = t153 ).
    DATA t154 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t155.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t155 = zcl_lnt_lx_index_module=>ns.
    DATA(t156) = |StringTemplateBegin|.
    DATA(t157) = zlnt_runtime_desc_78196487750d=>zlnt_member_d39_e3f398e6e4184c.
    t154 = t155->set( p0 = t156 p1 = t157 ).
    DATA t158 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t159.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t159 = zcl_lnt_lx_index_module=>ns.
    DATA(t160) = |StringTemplateEnd|.
    DATA(t161) = zlnt_runtime_desc_78196487750d=>zlnt_member_d40_8eb5c429ff1f45.
    t158 = t159->set( p0 = t160 p1 = t161 ).
    DATA t162 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t163.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t163 = zcl_lnt_lx_index_module=>ns.
    DATA(t164) = |StringTemplateMiddle|.
    DATA(t165) = zlnt_runtime_desc_78196487750d=>zlnt_member_d41_e53da77a9517f4.
    t162 = t163->set( p0 = t164 p1 = t165 ).
    DATA t166 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t167.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t167 = zcl_lnt_lx_index_module=>ns.
    DATA(t168) = |Colon|.
    DATA(t169) = zlnt_runtime_desc_78196487750d=>zlnt_member_d20_a09ef859911d20.
    t166 = t167->set( p0 = t168 p1 = t169 ).
    DATA t170 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t171.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t171 = zcl_lnt_lx_index_module=>ns.
    DATA(t172) = |Comment|.
    DATA(t173) = zlnt_runtime_desc_78196487750d=>zlnt_member_d21_8a5d933c5dc37e.
    t170 = t171->set( p0 = t172 p1 = t173 ).
    DATA t174 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t175.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t175 = zcl_lnt_lx_index_module=>ns.
    DATA(t176) = |Identifier|.
    DATA(t177) = zlnt_runtime_desc_78196487750d=>zlnt_member_d24_f4a493f20ed30d.
    t174 = t175->set( p0 = t176 p1 = t177 ).
    DATA t178 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t178.
    DATA t179 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t179.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t179 = zcl_lnt_lx_index_module=>ns.
    DATA(t180) = |AssociationName|.
    DATA(t181) = zlnt_runtime_desc_78196487750d=>zlnt_member_d13_724b547adff3ae.
    t178 = t179->set( p0 = t180 p1 = t181 ).
    DATA t182 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t183.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t183 = zcl_lnt_lx_index_module=>ns.
    DATA(t184) = |Pragma|.
    DATA(t185) = zlnt_runtime_desc_78196487750d=>zlnt_member_d33_cea57315d3501c.
    t182 = t183->set( p0 = t184 p1 = t185 ).
    DATA t186 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t187.
    IF zcl_lnt_lx_index_module=>zlnt_builtin_init_f399ac0a203d = abap_false.
      zcl_lnt_lx_index_module=>zlnt_builtin_init_5aef6c4f7306( ).
    ENDIF.
    t187 = zcl_lnt_lx_index_module=>ns.
    DATA(t188) = |Punctuation|.
    DATA(t189) = zlnt_runtime_desc_78196487750d=>zlnt_member_d34_abe50883ec07f8.
    t186 = t187->set( p0 = t188 p1 = t189 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1798_9e92ea464af3.
  ENDMETHOD.
ENDCLASS.
