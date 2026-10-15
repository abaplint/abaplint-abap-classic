* TS: src/abap/3_structures/structures/index.ts.module module
CLASS zcl_lnt_sr_index_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA ns TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLASS-DATA zlnt_builtin_init_59177e32b5b6 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_d3bd1268a1bf.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_index_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_d3bd1268a1bf.
    IF zlnt_builtin_init_59177e32b5b6 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_59177e32b5b6 = abap_true.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    DATA(t1) = NEW zlnt_runtime_map__a5ffc3d163a5( ).
    zcl_lnt_sr_index_module=>ns = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t3.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t3 = zcl_lnt_sr_index_module=>ns.
    DATA(t4) = |Any|.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d703_a50af928c17c.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t7.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t7 = zcl_lnt_sr_index_module=>ns.
    DATA(t8) = |AtFirst|.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d706_b5e09ff8af85.
    t6 = t7->set( p0 = t8 p1 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t11.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t11 = zcl_lnt_sr_index_module=>ns.
    DATA(t12) = |AtLast|.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d707_8cc2599df085.
    t10 = t11->set( p0 = t12 p1 = t13 ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t15.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t15 = zcl_lnt_sr_index_module=>ns.
    DATA(t16) = |At|.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d705_d5c8a90641bd.
    t14 = t15->set( p0 = t16 p1 = t17 ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t19.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t19 = zcl_lnt_sr_index_module=>ns.
    DATA(t20) = |Body|.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
    t18 = t19->set( p0 = t20 p1 = t21 ).
    DATA t22 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t23.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t23 = zcl_lnt_sr_index_module=>ns.
    DATA(t24) = |CaseType|.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d711_d9a1643e70c2.
    t22 = t23->set( p0 = t24 p1 = t25 ).
    DATA t26 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t27.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t27 = zcl_lnt_sr_index_module=>ns.
    DATA(t28) = |Case|.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d709_9d7d29fb0565.
    t26 = t27->set( p0 = t28 p1 = t29 ).
    DATA t30 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t31.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t31 = zcl_lnt_sr_index_module=>ns.
    DATA(t32) = |CatchSystemExceptions|.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d713_4226f4f67669.
    t30 = t31->set( p0 = t32 p1 = t33 ).
    DATA t34 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t35.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t35 = zcl_lnt_sr_index_module=>ns.
    DATA(t36) = |Catch|.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d712_8689fb760a6c.
    t34 = t35->set( p0 = t36 p1 = t37 ).
    DATA t38 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t39.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t39 = zcl_lnt_sr_index_module=>ns.
    DATA(t40) = |Chain|.
    DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d714_49cf6811a616.
    t38 = t39->set( p0 = t40 p1 = t41 ).
    DATA t42 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t43.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t43 = zcl_lnt_sr_index_module=>ns.
    DATA(t44) = |ClassData|.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d715_d402bffdf300.
    t42 = t43->set( p0 = t44 p1 = t45 ).
    DATA t46 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t47.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t47 = zcl_lnt_sr_index_module=>ns.
    DATA(t48) = |ClassDefinition|.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e.
    t46 = t47->set( p0 = t48 p1 = t49 ).
    DATA t50 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t51.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t51 = zcl_lnt_sr_index_module=>ns.
    DATA(t52) = |ClassGlobal|.
    DATA(t53) = zlnt_runtime_desc_78196487750d=>zlnt_member_d719_ab2b6469a271.
    t50 = t51->set( p0 = t52 p1 = t53 ).
    DATA t54 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t55.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t55 = zcl_lnt_sr_index_module=>ns.
    DATA(t56) = |ClassImplementation|.
    DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d702_c1c9b120591c.
    t54 = t55->set( p0 = t56 p1 = t57 ).
    DATA t58 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t59.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t59 = zcl_lnt_sr_index_module=>ns.
    DATA(t60) = |Cleanup|.
    DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d722_b01ebc20127f.
    t58 = t59->set( p0 = t60 p1 = t61 ).
    DATA t62 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t63.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t63 = zcl_lnt_sr_index_module=>ns.
    DATA(t64) = |Constants|.
    DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d723_8da98a28a8d6.
    t62 = t63->set( p0 = t64 p1 = t65 ).
    DATA t66 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t67.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t67 = zcl_lnt_sr_index_module=>ns.
    DATA(t68) = |Data|.
    DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d724_5dde4ab12008.
    t66 = t67->set( p0 = t68 p1 = t69 ).
    DATA t70 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t71.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t71 = zcl_lnt_sr_index_module=>ns.
    DATA(t72) = |Define|.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d720_0fac5ead5b3f.
    t70 = t71->set( p0 = t72 p1 = t73 ).
    DATA t74 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t75.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t75 = zcl_lnt_sr_index_module=>ns.
    DATA(t76) = |Do|.
    DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d727_3ba4cd3431c9.
    t74 = t75->set( p0 = t76 p1 = t77 ).
    DATA t78 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t79.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t79 = zcl_lnt_sr_index_module=>ns.
    DATA(t80) = |DynproLogic|.
    DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d732_1ee03f94664a.
    t78 = t79->set( p0 = t80 p1 = t81 ).
    DATA t82 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t83.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t83 = zcl_lnt_sr_index_module=>ns.
    DATA(t84) = |Else|.
    DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d734_f05b24426da6.
    t82 = t83->set( p0 = t84 p1 = t85 ).
    DATA t86 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t87.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t87 = zcl_lnt_sr_index_module=>ns.
    DATA(t88) = |ElseIf|.
    DATA(t89) = zlnt_runtime_desc_78196487750d=>zlnt_member_d735_6e36d2820627.
    t86 = t87->set( p0 = t88 p1 = t89 ).
    DATA t90 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t91.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t91 = zcl_lnt_sr_index_module=>ns.
    DATA(t92) = |EnhancementSection|.
    DATA(t93) = zlnt_runtime_desc_78196487750d=>zlnt_member_d736_e6fd20179c23.
    t90 = t91->set( p0 = t92 p1 = t93 ).
    DATA t94 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t95.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t95 = zcl_lnt_sr_index_module=>ns.
    DATA(t96) = |Enhancement|.
    DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d726_d2da7170640c.
    t94 = t95->set( p0 = t96 p1 = t97 ).
    DATA t98 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t99.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t99 = zcl_lnt_sr_index_module=>ns.
    DATA(t100) = |ExecSQL|.
    DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d737_9a5557c762ef.
    t98 = t99->set( p0 = t100 p1 = t101 ).
    DATA t102 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t103.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t103 = zcl_lnt_sr_index_module=>ns.
    DATA(t104) = |Form|.
    DATA(t105) = zlnt_runtime_desc_78196487750d=>zlnt_member_d697_195ff21ba72a.
    t102 = t103->set( p0 = t104 p1 = t105 ).
    DATA t106 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t107.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t107 = zcl_lnt_sr_index_module=>ns.
    DATA(t108) = |FunctionModule|.
    DATA(t109) = zlnt_runtime_desc_78196487750d=>zlnt_member_d699_5bd4c856ada5.
    t106 = t107->set( p0 = t108 p1 = t109 ).
    DATA t110 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t111.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t111 = zcl_lnt_sr_index_module=>ns.
    DATA(t112) = |If|.
    DATA(t113) = zlnt_runtime_desc_78196487750d=>zlnt_member_d738_747279fb02d5.
    t110 = t111->set( p0 = t112 p1 = t113 ).
    DATA t114 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t115.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t115 = zcl_lnt_sr_index_module=>ns.
    DATA(t116) = |InterfaceGlobal|.
    DATA(t117) = zlnt_runtime_desc_78196487750d=>zlnt_member_d740_8d94e37f5710.
    t114 = t115->set( p0 = t116 p1 = t117 ).
    DATA t118 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t119.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t119 = zcl_lnt_sr_index_module=>ns.
    DATA(t120) = |Interface|.
    DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d700_0943ee7a14b4.
    t118 = t119->set( p0 = t120 p1 = t121 ).
    DATA t122 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t123.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t123 = zcl_lnt_sr_index_module=>ns.
    DATA(t124) = |LoopAtScreen|.
    DATA(t125) = zlnt_runtime_desc_78196487750d=>zlnt_member_d742_8edcd7bf8454.
    t122 = t123->set( p0 = t124 p1 = t125 ).
    DATA t126 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t127.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t127 = zcl_lnt_sr_index_module=>ns.
    DATA(t128) = |Loop|.
    DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d741_a4c2609517be.
    t126 = t127->set( p0 = t128 p1 = t129 ).
    DATA t130 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t131.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t131 = zcl_lnt_sr_index_module=>ns.
    DATA(t132) = |Method|.
    DATA(t133) = zlnt_runtime_desc_78196487750d=>zlnt_member_d721_06b6159f9afc.
    t130 = t131->set( p0 = t132 p1 = t133 ).
    DATA t134 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t135.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t135 = zcl_lnt_sr_index_module=>ns.
    DATA(t136) = |Module|.
    DATA(t137) = zlnt_runtime_desc_78196487750d=>zlnt_member_d698_7eec40384ef7.
    t134 = t135->set( p0 = t136 p1 = t137 ).
    DATA t138 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t139.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t139 = zcl_lnt_sr_index_module=>ns.
    DATA(t140) = |Normal|.
    DATA(t141) = zlnt_runtime_desc_78196487750d=>zlnt_member_d696_1c7fc9b8a532.
    t138 = t139->set( p0 = t140 p1 = t141 ).
    DATA t142 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t143.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t143 = zcl_lnt_sr_index_module=>ns.
    DATA(t144) = |OnChange|.
    DATA(t145) = zlnt_runtime_desc_78196487750d=>zlnt_member_d745_973382e545be.
    t142 = t143->set( p0 = t144 p1 = t145 ).
    DATA t146 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t147.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t147 = zcl_lnt_sr_index_module=>ns.
    DATA(t148) = |PrivateSection|.
    DATA(t149) = zlnt_runtime_desc_78196487750d=>zlnt_member_d718_3ac015f16676.
    t146 = t147->set( p0 = t148 p1 = t149 ).
    DATA t150 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t151.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t151 = zcl_lnt_sr_index_module=>ns.
    DATA(t152) = |ProcessAfterInput|.
    DATA(t153) = zlnt_runtime_desc_78196487750d=>zlnt_member_d729_b022852130b8.
    t150 = t151->set( p0 = t152 p1 = t153 ).
    DATA t154 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t155.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t155 = zcl_lnt_sr_index_module=>ns.
    DATA(t156) = |ProcessBeforeOutput|.
    DATA(t157) = zlnt_runtime_desc_78196487750d=>zlnt_member_d728_88830252bc13.
    t154 = t155->set( p0 = t156 p1 = t157 ).
    DATA t158 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t159.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t159 = zcl_lnt_sr_index_module=>ns.
    DATA(t160) = |ProcessOnValueRequest|.
    DATA(t161) = zlnt_runtime_desc_78196487750d=>zlnt_member_d731_b42f23a70705.
    t158 = t159->set( p0 = t160 p1 = t161 ).
    DATA t162 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t163.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t163 = zcl_lnt_sr_index_module=>ns.
    DATA(t164) = |ProtectedSection|.
    DATA(t165) = zlnt_runtime_desc_78196487750d=>zlnt_member_d717_78ede11c0134.
    t162 = t163->set( p0 = t164 p1 = t165 ).
    DATA t166 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t167.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t167 = zcl_lnt_sr_index_module=>ns.
    DATA(t168) = |Provide|.
    DATA(t169) = zlnt_runtime_desc_78196487750d=>zlnt_member_d749_d6fc7bfd346d.
    t166 = t167->set( p0 = t168 p1 = t169 ).
    DATA t170 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t171.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t171 = zcl_lnt_sr_index_module=>ns.
    DATA(t172) = |PublicSection|.
    DATA(t173) = zlnt_runtime_desc_78196487750d=>zlnt_member_d716_74fc3af0c6d3.
    t170 = t171->set( p0 = t172 p1 = t173 ).
    DATA t174 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t175.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t175 = zcl_lnt_sr_index_module=>ns.
    DATA(t176) = |SectionContents|.
    DATA(t177) = zlnt_runtime_desc_78196487750d=>zlnt_member_d739_c2cc9ae0214e.
    t174 = t175->set( p0 = t176 p1 = t177 ).
    DATA t178 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t178.
    DATA t179 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t179.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t179 = zcl_lnt_sr_index_module=>ns.
    DATA(t180) = |Select|.
    DATA(t181) = zlnt_runtime_desc_78196487750d=>zlnt_member_d751_4d9c6e99dfab.
    t178 = t179->set( p0 = t180 p1 = t181 ).
    DATA t182 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t183.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t183 = zcl_lnt_sr_index_module=>ns.
    DATA(t184) = |ProcessOnHelpRequest|.
    DATA(t185) = zlnt_runtime_desc_78196487750d=>zlnt_member_d730_2ce7d22b4d6f.
    t182 = t183->set( p0 = t184 p1 = t185 ).
    DATA t186 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t187.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t187 = zcl_lnt_sr_index_module=>ns.
    DATA(t188) = |DynproLoop|.
    DATA(t189) = zlnt_runtime_desc_78196487750d=>zlnt_member_d733_9d53cd1f40a8.
    t186 = t187->set( p0 = t188 p1 = t189 ).
    DATA t190 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t191.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t191 = zcl_lnt_sr_index_module=>ns.
    DATA(t192) = |Statics|.
    DATA(t193) = zlnt_runtime_desc_78196487750d=>zlnt_member_d750_2d45c5b37c94.
    t190 = t191->set( p0 = t192 p1 = t193 ).
    DATA t194 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t195.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t195 = zcl_lnt_sr_index_module=>ns.
    DATA(t196) = |TestInjection|.
    DATA(t197) = zlnt_runtime_desc_78196487750d=>zlnt_member_d746_a08f21095411.
    t194 = t195->set( p0 = t196 p1 = t197 ).
    DATA t198 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t198.
    DATA t199 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t199.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t199 = zcl_lnt_sr_index_module=>ns.
    DATA(t200) = |TestSeam|.
    DATA(t201) = zlnt_runtime_desc_78196487750d=>zlnt_member_d747_68112758b030.
    t198 = t199->set( p0 = t200 p1 = t201 ).
    DATA t202 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t203.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t203 = zcl_lnt_sr_index_module=>ns.
    DATA(t204) = |LoopExtract|.
    DATA(t205) = zlnt_runtime_desc_78196487750d=>zlnt_member_d743_6e9adab31a90.
    t202 = t203->set( p0 = t204 p1 = t205 ).
    DATA t206 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t206.
    DATA t207 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t207.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t207 = zcl_lnt_sr_index_module=>ns.
    DATA(t208) = |Try|.
    DATA(t209) = zlnt_runtime_desc_78196487750d=>zlnt_member_d744_dbdc6f78b1c3.
    t206 = t207->set( p0 = t208 p1 = t209 ).
    DATA t210 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t210.
    DATA t211 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t211.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t211 = zcl_lnt_sr_index_module=>ns.
    DATA(t212) = |TypeEnum|.
    DATA(t213) = zlnt_runtime_desc_78196487750d=>zlnt_member_d752_e072d0e4db32.
    t210 = t211->set( p0 = t212 p1 = t213 ).
    DATA t214 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t214.
    DATA t215 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t215.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t215 = zcl_lnt_sr_index_module=>ns.
    DATA(t216) = |TypeMesh|.
    DATA(t217) = zlnt_runtime_desc_78196487750d=>zlnt_member_d748_9cf6b71481f2.
    t214 = t215->set( p0 = t216 p1 = t217 ).
    DATA t218 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t218.
    DATA t219 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t219.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t219 = zcl_lnt_sr_index_module=>ns.
    DATA(t220) = |Types|.
    DATA(t221) = zlnt_runtime_desc_78196487750d=>zlnt_member_d725_2037e58f2db9.
    t218 = t219->set( p0 = t220 p1 = t221 ).
    DATA t222 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t222.
    DATA t223 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t223.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t223 = zcl_lnt_sr_index_module=>ns.
    DATA(t224) = |WhenType|.
    DATA(t225) = zlnt_runtime_desc_78196487750d=>zlnt_member_d710_52a89b3f6da2.
    t222 = t223->set( p0 = t224 p1 = t225 ).
    DATA t226 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t227.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t227 = zcl_lnt_sr_index_module=>ns.
    DATA(t228) = |When|.
    DATA(t229) = zlnt_runtime_desc_78196487750d=>zlnt_member_d708_dde8d9743472.
    t226 = t227->set( p0 = t228 p1 = t229 ).
    DATA t230 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t230.
    DATA t231 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t231.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t231 = zcl_lnt_sr_index_module=>ns.
    DATA(t232) = |While|.
    DATA(t233) = zlnt_runtime_desc_78196487750d=>zlnt_member_d753_f3a2f457d984.
    t230 = t231->set( p0 = t232 p1 = t233 ).
    DATA t234 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t235.
    IF zcl_lnt_sr_index_module=>zlnt_builtin_init_59177e32b5b6 = abap_false.
      zcl_lnt_sr_index_module=>zlnt_builtin_init_d3bd1268a1bf( ).
    ENDIF.
    t235 = zcl_lnt_sr_index_module=>ns.
    DATA(t236) = |With|.
    DATA(t237) = zlnt_runtime_desc_78196487750d=>zlnt_member_d754_7e0395e36d0a.
    t234 = t235->set( p0 = t236 p1 = t237 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1801_a9a5818aa0e5.
  ENDMETHOD.
ENDCLASS.
