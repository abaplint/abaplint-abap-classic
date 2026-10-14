* TS: src/abap/3_structures/structures/normal.ts:8:1 Normal
CLASS zcl_lnt_normal DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_structure.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_normal IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA t3 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t4) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d544_b65fb33374a3 ).
    t3 = zcl_lnt_sr_combi_module=>sta( i_s = t4 ).
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t8 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t9) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d371_458c7930d5a0 ).
    t8 = zcl_lnt_sr_combi_module=>sta( i_s = t9 ).
    APPEND t8 TO t7->items.
    DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t11 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t12) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d420_cd77a127ab95 ).
    t11 = zcl_lnt_sr_combi_module=>sta( i_s = t12 ).
    APPEND t11 TO t10->items.
    DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t14 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t15) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d716_74fc3af0c6d3 ).
    t14 = zcl_lnt_sr_combi_module=>sub( i_s = t15 ).
    APPEND t14 TO t13->items.
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t17 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t18) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d399_7492453aefa4 ).
    t17 = zcl_lnt_sr_combi_module=>sta( i_s = t18 ).
    APPEND t17 TO t16->items.
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t20 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t21) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d481_d39d18c647c2 ).
    t20 = zcl_lnt_sr_combi_module=>sta( i_s = t21 ).
    APPEND t20 TO t19->items.
    DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t23 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t24) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d418_6582c2c578e7 ).
    t23 = zcl_lnt_sr_combi_module=>sta( i_s = t24 ).
    APPEND t23 TO t22->items.
    DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t26 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t27) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d375_ab389f7000ba ).
    t26 = zcl_lnt_sr_combi_module=>sta( i_s = t27 ).
    APPEND t26 TO t25->items.
    DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t29 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t30) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d349_cecd27d97080 ).
    t29 = zcl_lnt_sr_combi_module=>sta( i_s = t30 ).
    APPEND t29 TO t28->items.
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t32 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t33) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d351_5341159ff4cc ).
    t32 = zcl_lnt_sr_combi_module=>sta( i_s = t33 ).
    APPEND t32 TO t31->items.
    DATA(t34) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t35 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t36) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d720_0fac5ead5b3f ).
    t35 = zcl_lnt_sr_combi_module=>sub( i_s = t36 ).
    APPEND t35 TO t34->items.
    DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t38 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t39) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d719_ab2b6469a271 ).
    t38 = zcl_lnt_sr_combi_module=>sub( i_s = t39 ).
    APPEND t38 TO t37->items.
    DATA(t40) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t41 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t42) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d721_06b6159f9afc ).
    t41 = zcl_lnt_sr_combi_module=>sub( i_s = t42 ).
    APPEND t41 TO t40->items.
    DATA(t43) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t44 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t45) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d356_3218bf7cfc33 ).
    t44 = zcl_lnt_sr_combi_module=>sta( i_s = t45 ).
    APPEND t44 TO t43->items.
    DATA(t46) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t47 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t48) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d722_b01ebc20127f ).
    t47 = zcl_lnt_sr_combi_module=>sub( i_s = t48 ).
    APPEND t47 TO t46->items.
    DATA(t49) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t50 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t51) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d723_8da98a28a8d6 ).
    t50 = zcl_lnt_sr_combi_module=>sub( i_s = t51 ).
    APPEND t50 TO t49->items.
    DATA(t52) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t53 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t54) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d577_96008512c3b0 ).
    t53 = zcl_lnt_sr_combi_module=>sta( i_s = t54 ).
    APPEND t53 TO t52->items.
    DATA(t55) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t56 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t57) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d357_2e2dc8c80a68 ).
    t56 = zcl_lnt_sr_combi_module=>sta( i_s = t57 ).
    APPEND t56 TO t55->items.
    DATA(t58) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t59 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t60) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d588_a72b5bf675f5 ).
    t59 = zcl_lnt_sr_combi_module=>sta( i_s = t60 ).
    APPEND t59 TO t58->items.
    DATA(t61) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t62 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t63) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d594_a2664c6b8771 ).
    t62 = zcl_lnt_sr_combi_module=>sta( i_s = t63 ).
    APPEND t62 TO t61->items.
    DATA(t64) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t65 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t66) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d358_785ae0da1088 ).
    t65 = zcl_lnt_sr_combi_module=>sta( i_s = t66 ).
    APPEND t65 TO t64->items.
    DATA(t67) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t68 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t69) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d519_36bc4e0e9240 ).
    t68 = zcl_lnt_sr_combi_module=>sta( i_s = t69 ).
    APPEND t68 TO t67->items.
    DATA(t70) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t71 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t72) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d428_511c28b0360e ).
    t71 = zcl_lnt_sr_combi_module=>sta( i_s = t72 ).
    APPEND t71 TO t70->items.
    DATA(t73) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t74 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t75) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d407_dfd1462d93da ).
    t74 = zcl_lnt_sr_combi_module=>sta( i_s = t75 ).
    APPEND t74 TO t73->items.
    DATA(t76) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t77 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t78) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d692_8822f22e2e12 ).
    t77 = zcl_lnt_sr_combi_module=>sub( i_s = t78 ).
    APPEND t77 TO t76->items.
    DATA(t79) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t80 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t81) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d694_8b97fca542b8 ).
    t80 = zcl_lnt_sr_combi_module=>sub( i_s = t81 ).
    APPEND t80 TO t79->items.
    DATA(t82) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t83 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t84) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d709_9d7d29fb0565 ).
    t83 = zcl_lnt_sr_combi_module=>sub( i_s = t84 ).
    APPEND t83 TO t82->items.
    DATA(t85) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t86 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t87) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d714_49cf6811a616 ).
    t86 = zcl_lnt_sr_combi_module=>sub( i_s = t87 ).
    APPEND t86 TO t85->items.
    DATA(t88) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t89 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t90) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d354_a6deeff18cfd ).
    t89 = zcl_lnt_sr_combi_module=>sta( i_s = t90 ).
    APPEND t89 TO t88->items.
    DATA(t91) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t92 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t93) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d353_58ca0f41496e ).
    t92 = zcl_lnt_sr_combi_module=>sta( i_s = t93 ).
    APPEND t92 TO t91->items.
    DATA(t94) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t95 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t96) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d359_ec67911716eb ).
    t95 = zcl_lnt_sr_combi_module=>sta( i_s = t96 ).
    APPEND t95 TO t94->items.
    DATA(t97) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t98 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t99) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d367_3c57bd3bdc56 ).
    t98 = zcl_lnt_sr_combi_module=>sta( i_s = t99 ).
    APPEND t98 TO t97->items.
    DATA(t100) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t101 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t102) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d368_b262d781113c ).
    t101 = zcl_lnt_sr_combi_module=>sta( i_s = t102 ).
    APPEND t101 TO t100->items.
    DATA(t103) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t104 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t105) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d369_e12b40f37a38 ).
    t104 = zcl_lnt_sr_combi_module=>sta( i_s = t105 ).
    APPEND t104 TO t103->items.
    DATA(t106) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t107 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t108) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d370_d485abb4e201 ).
    t107 = zcl_lnt_sr_combi_module=>sta( i_s = t108 ).
    APPEND t107 TO t106->items.
    DATA(t109) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t110 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t111) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d373_624aaf9cf8cc ).
    t110 = zcl_lnt_sr_combi_module=>sta( i_s = t111 ).
    APPEND t110 TO t109->items.
    DATA(t112) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t113 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t114) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d374_fc0b5bdde21e ).
    t113 = zcl_lnt_sr_combi_module=>sta( i_s = t114 ).
    APPEND t113 TO t112->items.
    DATA(t115) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t116 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t117) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d376_3ade3c5aabb1 ).
    t116 = zcl_lnt_sr_combi_module=>sta( i_s = t117 ).
    APPEND t116 TO t115->items.
    DATA(t118) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t119 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t120) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d377_e2e5b13159c9 ).
    t119 = zcl_lnt_sr_combi_module=>sta( i_s = t120 ).
    APPEND t119 TO t118->items.
    DATA(t121) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t122 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t123) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d378_e68596b33a14 ).
    t122 = zcl_lnt_sr_combi_module=>sta( i_s = t123 ).
    APPEND t122 TO t121->items.
    DATA(t124) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t125 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t126) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d542_0aa767c92614 ).
    t125 = zcl_lnt_sr_combi_module=>sta( i_s = t126 ).
    APPEND t125 TO t124->items.
    DATA(t127) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t128 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t129) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d379_a58aefe4ae76 ).
    t128 = zcl_lnt_sr_combi_module=>sta( i_s = t129 ).
    APPEND t128 TO t127->items.
    DATA(t130) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t131 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t132) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d381_567a5bf1103b ).
    t131 = zcl_lnt_sr_combi_module=>sta( i_s = t132 ).
    APPEND t131 TO t130->items.
    DATA(t133) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t134 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t135) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d382_b3aa13d22624 ).
    t134 = zcl_lnt_sr_combi_module=>sta( i_s = t135 ).
    APPEND t134 TO t133->items.
    DATA(t136) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t137 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t138) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d388_aaf1742db2dc ).
    t137 = zcl_lnt_sr_combi_module=>sta( i_s = t138 ).
    APPEND t137 TO t136->items.
    DATA(t139) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t140 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t141) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d395_d6422e344004 ).
    t140 = zcl_lnt_sr_combi_module=>sta( i_s = t141 ).
    APPEND t140 TO t139->items.
    DATA(t142) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t143 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t144) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d400_37d69a21ca3a ).
    t143 = zcl_lnt_sr_combi_module=>sta( i_s = t144 ).
    APPEND t143 TO t142->items.
    DATA(t145) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t146 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t147) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d401_fe9ff343b660 ).
    t146 = zcl_lnt_sr_combi_module=>sta( i_s = t147 ).
    APPEND t146 TO t145->items.
    DATA(t148) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t149 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t150) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d402_a27e9c5370ec ).
    t149 = zcl_lnt_sr_combi_module=>sta( i_s = t150 ).
    APPEND t149 TO t148->items.
    DATA(t151) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t152 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t153) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d403_29b004ec4d1b ).
    t152 = zcl_lnt_sr_combi_module=>sta( i_s = t153 ).
    APPEND t152 TO t151->items.
    DATA(t154) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t155 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t156) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d405_c500613c46e7 ).
    t155 = zcl_lnt_sr_combi_module=>sta( i_s = t156 ).
    APPEND t155 TO t154->items.
    DATA(t157) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t158 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t159) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d406_3374a0f7b11a ).
    t158 = zcl_lnt_sr_combi_module=>sta( i_s = t159 ).
    APPEND t158 TO t157->items.
    DATA(t160) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t161 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t162) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d372_d91a525944ce ).
    t161 = zcl_lnt_sr_combi_module=>sta( i_s = t162 ).
    APPEND t161 TO t160->items.
    DATA(t163) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t164 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t165) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d408_ad3db4ea5b7e ).
    t164 = zcl_lnt_sr_combi_module=>sta( i_s = t165 ).
    APPEND t164 TO t163->items.
    DATA(t166) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t167 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t168) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d409_df8201533dcd ).
    t167 = zcl_lnt_sr_combi_module=>sta( i_s = t168 ).
    APPEND t167 TO t166->items.
    DATA(t169) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t170 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t171) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d412_ffdd123df769 ).
    t170 = zcl_lnt_sr_combi_module=>sta( i_s = t171 ).
    APPEND t170 TO t169->items.
    DATA(t172) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t173 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t174) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d413_4f364af5c7c0 ).
    t173 = zcl_lnt_sr_combi_module=>sta( i_s = t174 ).
    APPEND t173 TO t172->items.
    DATA(t175) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t176 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t177) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d416_5284469a6569 ).
    t176 = zcl_lnt_sr_combi_module=>sta( i_s = t177 ).
    APPEND t176 TO t175->items.
    DATA(t178) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t179 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t180) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d415_90544e90c161 ).
    t179 = zcl_lnt_sr_combi_module=>sta( i_s = t180 ).
    APPEND t179 TO t178->items.
    DATA(t181) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t182 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t183) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d417_b1c6fbadfa99 ).
    t182 = zcl_lnt_sr_combi_module=>sta( i_s = t183 ).
    APPEND t182 TO t181->items.
    DATA(t184) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t185 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t186) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d419_e97c97620cf7 ).
    t185 = zcl_lnt_sr_combi_module=>sta( i_s = t186 ).
    APPEND t185 TO t184->items.
    DATA(t187) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t188 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t189) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d424_f49abf3f9551 ).
    t188 = zcl_lnt_sr_combi_module=>sta( i_s = t189 ).
    APPEND t188 TO t187->items.
    DATA(t190) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t191 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t192) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d425_e1044626682e ).
    t191 = zcl_lnt_sr_combi_module=>sta( i_s = t192 ).
    APPEND t191 TO t190->items.
    DATA(t193) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t194 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t195) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d426_fb8ad08dadf9 ).
    t194 = zcl_lnt_sr_combi_module=>sta( i_s = t195 ).
    APPEND t194 TO t193->items.
    DATA(t196) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t197 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t198) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d427_175d0fe40287 ).
    t197 = zcl_lnt_sr_combi_module=>sta( i_s = t198 ).
    APPEND t197 TO t196->items.
    DATA(t199) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t200 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t201) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d429_03a2ce6eaa8f ).
    t200 = zcl_lnt_sr_combi_module=>sta( i_s = t201 ).
    APPEND t200 TO t199->items.
    DATA(t202) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t203 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t204) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d430_ed5f8d061325 ).
    t203 = zcl_lnt_sr_combi_module=>sta( i_s = t204 ).
    APPEND t203 TO t202->items.
    DATA(t205) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t206 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t207) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d431_efefbc13f005 ).
    t206 = zcl_lnt_sr_combi_module=>sta( i_s = t207 ).
    APPEND t206 TO t205->items.
    DATA(t208) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t209 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t210) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d432_7686102e757b ).
    t209 = zcl_lnt_sr_combi_module=>sta( i_s = t210 ).
    APPEND t209 TO t208->items.
    DATA(t211) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t212 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t213) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d433_8ed7f6afa5ce ).
    t212 = zcl_lnt_sr_combi_module=>sta( i_s = t213 ).
    APPEND t212 TO t211->items.
    DATA(t214) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t215 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t216) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d434_c50e637c59a5 ).
    t215 = zcl_lnt_sr_combi_module=>sta( i_s = t216 ).
    APPEND t215 TO t214->items.
    DATA(t217) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t218 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t219) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d435_660f11c8643d ).
    t218 = zcl_lnt_sr_combi_module=>sta( i_s = t219 ).
    APPEND t218 TO t217->items.
    DATA(t220) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t221 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t222) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d438_3024048eff4c ).
    t221 = zcl_lnt_sr_combi_module=>sta( i_s = t222 ).
    APPEND t221 TO t220->items.
    DATA(t223) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t224 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t225) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d469_75226929f485 ).
    t224 = zcl_lnt_sr_combi_module=>sta( i_s = t225 ).
    APPEND t224 TO t223->items.
    DATA(t226) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t227 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t228) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d473_119746acd501 ).
    t227 = zcl_lnt_sr_combi_module=>sta( i_s = t228 ).
    APPEND t227 TO t226->items.
    DATA(t229) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t230 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t231) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d475_9e77338670ac ).
    t230 = zcl_lnt_sr_combi_module=>sta( i_s = t231 ).
    APPEND t230 TO t229->items.
    DATA(t232) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t233 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t234) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d474_51fcc2a31b27 ).
    t233 = zcl_lnt_sr_combi_module=>sta( i_s = t234 ).
    APPEND t233 TO t232->items.
    DATA(t235) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t236 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t237) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d476_e0523f307ef8 ).
    t236 = zcl_lnt_sr_combi_module=>sta( i_s = t237 ).
    APPEND t236 TO t235->items.
    DATA(t238) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t239 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t240) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d477_845005018443 ).
    t239 = zcl_lnt_sr_combi_module=>sta( i_s = t240 ).
    APPEND t239 TO t238->items.
    DATA(t241) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t242 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t243) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d479_88e6661c94ca ).
    t242 = zcl_lnt_sr_combi_module=>sta( i_s = t243 ).
    APPEND t242 TO t241->items.
    DATA(t244) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t245 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t246) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d480_38081a12ff99 ).
    t245 = zcl_lnt_sr_combi_module=>sta( i_s = t246 ).
    APPEND t245 TO t244->items.
    DATA(t247) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t248 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t249) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d482_8915322fe317 ).
    t248 = zcl_lnt_sr_combi_module=>sta( i_s = t249 ).
    APPEND t248 TO t247->items.
    DATA(t250) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t251 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t252) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d485_4f728a1f4a6c ).
    t251 = zcl_lnt_sr_combi_module=>sta( i_s = t252 ).
    APPEND t251 TO t250->items.
    DATA(t253) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t254 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t255) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d487_6b0a313b9ba8 ).
    t254 = zcl_lnt_sr_combi_module=>sta( i_s = t255 ).
    APPEND t254 TO t253->items.
    DATA(t256) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t257 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t258) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d488_854676ec8540 ).
    t257 = zcl_lnt_sr_combi_module=>sta( i_s = t258 ).
    APPEND t257 TO t256->items.
    DATA(t259) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t260 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t261) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d486_5804b5724294 ).
    t260 = zcl_lnt_sr_combi_module=>sta( i_s = t261 ).
    APPEND t260 TO t259->items.
    DATA(t262) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t263 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t264) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d491_a57d7381546f ).
    t263 = zcl_lnt_sr_combi_module=>sta( i_s = t264 ).
    APPEND t263 TO t262->items.
    DATA(t265) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t266 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t267) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d492_5999ca9e129e ).
    t266 = zcl_lnt_sr_combi_module=>sta( i_s = t267 ).
    APPEND t266 TO t265->items.
    DATA(t268) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t269 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t270) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d493_26b5f3d28468 ).
    t269 = zcl_lnt_sr_combi_module=>sta( i_s = t270 ).
    APPEND t269 TO t268->items.
    DATA(t271) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t272 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t273) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d495_455bba123ac8 ).
    t272 = zcl_lnt_sr_combi_module=>sta( i_s = t273 ).
    APPEND t272 TO t271->items.
    DATA(t274) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t275 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t276) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d496_c5ff13ca58a8 ).
    t275 = zcl_lnt_sr_combi_module=>sta( i_s = t276 ).
    APPEND t275 TO t274->items.
    DATA(t277) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t278 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t279) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d497_1f87430672d0 ).
    t278 = zcl_lnt_sr_combi_module=>sta( i_s = t279 ).
    APPEND t278 TO t277->items.
    DATA(t280) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t281 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t282) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d498_bacf37b32951 ).
    t281 = zcl_lnt_sr_combi_module=>sta( i_s = t282 ).
    APPEND t281 TO t280->items.
    DATA(t283) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t284 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t285) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d499_147142f52ef0 ).
    t284 = zcl_lnt_sr_combi_module=>sta( i_s = t285 ).
    APPEND t284 TO t283->items.
    DATA(t286) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t287 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t288) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d500_8dad0123027e ).
    t287 = zcl_lnt_sr_combi_module=>sta( i_s = t288 ).
    APPEND t287 TO t286->items.
    DATA(t289) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t290 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t291) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d502_cbd42cb54589 ).
    t290 = zcl_lnt_sr_combi_module=>sta( i_s = t291 ).
    APPEND t290 TO t289->items.
    DATA(t292) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t293 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t294) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d503_14da2c3ecdad ).
    t293 = zcl_lnt_sr_combi_module=>sta( i_s = t294 ).
    APPEND t293 TO t292->items.
    DATA(t295) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t296 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t297) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d504_5befe1b9627e ).
    t296 = zcl_lnt_sr_combi_module=>sta( i_s = t297 ).
    APPEND t296 TO t295->items.
    DATA(t298) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t299 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t300) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d505_17c801ea0064 ).
    t299 = zcl_lnt_sr_combi_module=>sta( i_s = t300 ).
    APPEND t299 TO t298->items.
    DATA(t301) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t302 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t303) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d506_926db0fe2390 ).
    t302 = zcl_lnt_sr_combi_module=>sta( i_s = t303 ).
    APPEND t302 TO t301->items.
    DATA(t304) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t305 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t306) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d507_eda0ed670e53 ).
    t305 = zcl_lnt_sr_combi_module=>sta( i_s = t306 ).
    APPEND t305 TO t304->items.
    DATA(t307) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t308 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t309) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d549_40ca39b368c5 ).
    t308 = zcl_lnt_sr_combi_module=>sta( i_s = t309 ).
    APPEND t308 TO t307->items.
    DATA(t310) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t311 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t312) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d510_157f01cef38d ).
    t311 = zcl_lnt_sr_combi_module=>sta( i_s = t312 ).
    APPEND t311 TO t310->items.
    DATA(t313) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t314 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t315) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d511_f06059c942ac ).
    t314 = zcl_lnt_sr_combi_module=>sta( i_s = t315 ).
    APPEND t314 TO t313->items.
    DATA(t316) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t317 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t318) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d545_31612fd2296c ).
    t317 = zcl_lnt_sr_combi_module=>sta( i_s = t318 ).
    APPEND t317 TO t316->items.
    DATA(t319) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t320 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t321) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d509_83ce94d67b86 ).
    t320 = zcl_lnt_sr_combi_module=>sta( i_s = t321 ).
    APPEND t320 TO t319->items.
    DATA(t322) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t323 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t324) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d514_41b9b9ab2d1c ).
    t323 = zcl_lnt_sr_combi_module=>sta( i_s = t324 ).
    APPEND t323 TO t322->items.
    DATA(t325) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t326 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t327) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d512_11174d785e8e ).
    t326 = zcl_lnt_sr_combi_module=>sta( i_s = t327 ).
    APPEND t326 TO t325->items.
    DATA(t328) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t329 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t330) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d517_e2a65928dcca ).
    t329 = zcl_lnt_sr_combi_module=>sta( i_s = t330 ).
    APPEND t329 TO t328->items.
    DATA(t331) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t332 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t333) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d520_18c2b55bcee8 ).
    t332 = zcl_lnt_sr_combi_module=>sta( i_s = t333 ).
    APPEND t332 TO t331->items.
    DATA(t334) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t335 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t336) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d521_a2969ba3f7e8 ).
    t335 = zcl_lnt_sr_combi_module=>sta( i_s = t336 ).
    APPEND t335 TO t334->items.
    DATA(t337) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t338 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t339) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d518_af85f98e0d0f ).
    t338 = zcl_lnt_sr_combi_module=>sta( i_s = t339 ).
    APPEND t338 TO t337->items.
    DATA(t340) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t341 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t342) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d525_ab3a9a5b3f8b ).
    t341 = zcl_lnt_sr_combi_module=>sta( i_s = t342 ).
    APPEND t341 TO t340->items.
    DATA(t343) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t344 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t345) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d526_f815f9eca95e ).
    t344 = zcl_lnt_sr_combi_module=>sta( i_s = t345 ).
    APPEND t344 TO t343->items.
    DATA(t346) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t347 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t348) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d528_859eab06872d ).
    t347 = zcl_lnt_sr_combi_module=>sta( i_s = t348 ).
    APPEND t347 TO t346->items.
    DATA(t349) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t350 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t351) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d529_17510302e89e ).
    t350 = zcl_lnt_sr_combi_module=>sta( i_s = t351 ).
    APPEND t350 TO t349->items.
    DATA(t352) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t353 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t354) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d667_b42297f33700 ).
    t353 = zcl_lnt_sr_combi_module=>sta( i_s = t354 ).
    APPEND t353 TO t352->items.
    DATA(t355) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t356 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t357) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d530_84f85e32c439 ).
    t356 = zcl_lnt_sr_combi_module=>sta( i_s = t357 ).
    APPEND t356 TO t355->items.
    DATA(t358) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t359 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t360) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d535_c4d9172ef5ea ).
    t359 = zcl_lnt_sr_combi_module=>sta( i_s = t360 ).
    APPEND t359 TO t358->items.
    DATA(t361) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t362 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t363) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d534_4a06e0073eb0 ).
    t362 = zcl_lnt_sr_combi_module=>sta( i_s = t363 ).
    APPEND t362 TO t361->items.
    DATA(t364) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t365 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t366) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d541_d7ee44162692 ).
    t365 = zcl_lnt_sr_combi_module=>sta( i_s = t366 ).
    APPEND t365 TO t364->items.
    DATA(t367) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t368 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t369) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d538_06f6bfe3d66f ).
    t368 = zcl_lnt_sr_combi_module=>sta( i_s = t369 ).
    APPEND t368 TO t367->items.
    DATA(t370) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t371 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t372) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d540_b6420013e76a ).
    t371 = zcl_lnt_sr_combi_module=>sta( i_s = t372 ).
    APPEND t371 TO t370->items.
    DATA(t373) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t374 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t375) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d546_839a3cf680aa ).
    t374 = zcl_lnt_sr_combi_module=>sta( i_s = t375 ).
    APPEND t374 TO t373->items.
    DATA(t376) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t377 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t378) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d547_52de85bb9193 ).
    t377 = zcl_lnt_sr_combi_module=>sta( i_s = t378 ).
    APPEND t377 TO t376->items.
    DATA(t379) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t380 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t381) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d548_48b381ff180b ).
    t380 = zcl_lnt_sr_combi_module=>sta( i_s = t381 ).
    APPEND t380 TO t379->items.
    DATA(t382) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t383 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t384) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d551_3a0a4b6f5142 ).
    t383 = zcl_lnt_sr_combi_module=>sta( i_s = t384 ).
    APPEND t383 TO t382->items.
    DATA(t385) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t386 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t387) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d552_70cb477baddf ).
    t386 = zcl_lnt_sr_combi_module=>sta( i_s = t387 ).
    APPEND t386 TO t385->items.
    DATA(t388) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t389 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t390) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58 ).
    t389 = zcl_lnt_sr_combi_module=>sta( i_s = t390 ).
    APPEND t389 TO t388->items.
    DATA(t391) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t392 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t393) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d554_9e796f7b9641 ).
    t392 = zcl_lnt_sr_combi_module=>sta( i_s = t393 ).
    APPEND t392 TO t391->items.
    DATA(t394) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t395 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t396) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d556_7450efba98d4 ).
    t395 = zcl_lnt_sr_combi_module=>sta( i_s = t396 ).
    APPEND t395 TO t394->items.
    DATA(t397) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t398 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t399) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d484_f09a41de1c10 ).
    t398 = zcl_lnt_sr_combi_module=>sta( i_s = t399 ).
    APPEND t398 TO t397->items.
    DATA(t400) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t401 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t402) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d557_3b89d313f054 ).
    t401 = zcl_lnt_sr_combi_module=>sta( i_s = t402 ).
    APPEND t401 TO t400->items.
    DATA(t403) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t404 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t405) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d568_88df8e7885d7 ).
    t404 = zcl_lnt_sr_combi_module=>sta( i_s = t405 ).
    APPEND t404 TO t403->items.
    DATA(t406) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t407 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t408) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d558_20a8fd33a9a2 ).
    t407 = zcl_lnt_sr_combi_module=>sta( i_s = t408 ).
    APPEND t407 TO t406->items.
    DATA(t409) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t410 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t411) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d571_40e28c210be5 ).
    t410 = zcl_lnt_sr_combi_module=>sta( i_s = t411 ).
    APPEND t410 TO t409->items.
    DATA(t412) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t413 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t414) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d570_702bda2e8a68 ).
    t413 = zcl_lnt_sr_combi_module=>sta( i_s = t414 ).
    APPEND t413 TO t412->items.
    DATA(t415) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t416 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t417) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d569_b67e4c7404df ).
    t416 = zcl_lnt_sr_combi_module=>sta( i_s = t417 ).
    APPEND t416 TO t415->items.
    DATA(t418) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t419 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t420) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d572_46882accee86 ).
    t419 = zcl_lnt_sr_combi_module=>sta( i_s = t420 ).
    APPEND t419 TO t418->items.
    DATA(t421) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t422 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t423) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d573_76d229f1cfae ).
    t422 = zcl_lnt_sr_combi_module=>sta( i_s = t423 ).
    APPEND t422 TO t421->items.
    DATA(t424) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t425 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t426) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d575_638aad284021 ).
    t425 = zcl_lnt_sr_combi_module=>sta( i_s = t426 ).
    APPEND t425 TO t424->items.
    DATA(t427) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t428 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t429) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d576_018b59865306 ).
    t428 = zcl_lnt_sr_combi_module=>sta( i_s = t429 ).
    APPEND t428 TO t427->items.
    DATA(t430) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t431 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t432) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d578_762d02eb281a ).
    t431 = zcl_lnt_sr_combi_module=>sta( i_s = t432 ).
    APPEND t431 TO t430->items.
    DATA(t433) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t434 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t435) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d579_eaac00367bce ).
    t434 = zcl_lnt_sr_combi_module=>sta( i_s = t435 ).
    APPEND t434 TO t433->items.
    DATA(t436) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t437 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t438) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d581_ec05e91cc48d ).
    t437 = zcl_lnt_sr_combi_module=>sta( i_s = t438 ).
    APPEND t437 TO t436->items.
    DATA(t439) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t440 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t441) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d580_7e59b852bf1e ).
    t440 = zcl_lnt_sr_combi_module=>sta( i_s = t441 ).
    APPEND t440 TO t439->items.
    DATA(t442) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t443 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t444) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d582_653e802128e4 ).
    t443 = zcl_lnt_sr_combi_module=>sta( i_s = t444 ).
    APPEND t443 TO t442->items.
    DATA(t445) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t446 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t447) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d583_278b8a5e07e6 ).
    t446 = zcl_lnt_sr_combi_module=>sta( i_s = t447 ).
    APPEND t446 TO t445->items.
    DATA(t448) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t449 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t450) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d585_465bb01b684e ).
    t449 = zcl_lnt_sr_combi_module=>sta( i_s = t450 ).
    APPEND t449 TO t448->items.
    DATA(t451) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t452 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t453) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d586_198a3628c215 ).
    t452 = zcl_lnt_sr_combi_module=>sta( i_s = t453 ).
    APPEND t452 TO t451->items.
    DATA(t454) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t455 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t456) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d587_acb1f2e7f4b1 ).
    t455 = zcl_lnt_sr_combi_module=>sta( i_s = t456 ).
    APPEND t455 TO t454->items.
    DATA(t457) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t458 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t459) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d589_2f27f2ba8c10 ).
    t458 = zcl_lnt_sr_combi_module=>sta( i_s = t459 ).
    APPEND t458 TO t457->items.
    DATA(t460) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t461 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t462) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d591_802cad6c5ea5 ).
    t461 = zcl_lnt_sr_combi_module=>sta( i_s = t462 ).
    APPEND t461 TO t460->items.
    DATA(t463) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t464 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t465) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d592_4837260953f4 ).
    t464 = zcl_lnt_sr_combi_module=>sta( i_s = t465 ).
    APPEND t464 TO t463->items.
    DATA(t466) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t467 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t468) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d593_f9f53f5357e8 ).
    t467 = zcl_lnt_sr_combi_module=>sta( i_s = t468 ).
    APPEND t467 TO t466->items.
    DATA(t469) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t470 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t471) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d598_a64ed487ee12 ).
    t470 = zcl_lnt_sr_combi_module=>sta( i_s = t471 ).
    APPEND t470 TO t469->items.
    DATA(t472) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t473 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t474) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d599_e80ab99c110e ).
    t473 = zcl_lnt_sr_combi_module=>sta( i_s = t474 ).
    APPEND t473 TO t472->items.
    DATA(t475) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t476 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t477) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d600_5c4ef0d6a35d ).
    t476 = zcl_lnt_sr_combi_module=>sta( i_s = t477 ).
    APPEND t476 TO t475->items.
    DATA(t478) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t479 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t480) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d601_ac953f6bd165 ).
    t479 = zcl_lnt_sr_combi_module=>sta( i_s = t480 ).
    APPEND t479 TO t478->items.
    DATA(t481) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t482 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t483) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d602_47fea972f923 ).
    t482 = zcl_lnt_sr_combi_module=>sta( i_s = t483 ).
    APPEND t482 TO t481->items.
    DATA(t484) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t485 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t486) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d603_a7e0e89c6b35 ).
    t485 = zcl_lnt_sr_combi_module=>sta( i_s = t486 ).
    APPEND t485 TO t484->items.
    DATA(t487) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t488 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t489) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d604_771dd3a3028b ).
    t488 = zcl_lnt_sr_combi_module=>sta( i_s = t489 ).
    APPEND t488 TO t487->items.
    DATA(t490) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t491 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t492) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d605_5797bc5ba819 ).
    t491 = zcl_lnt_sr_combi_module=>sta( i_s = t492 ).
    APPEND t491 TO t490->items.
    DATA(t493) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t494 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t495) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d606_2acdb29cdeaf ).
    t494 = zcl_lnt_sr_combi_module=>sta( i_s = t495 ).
    APPEND t494 TO t493->items.
    DATA(t496) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t497 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t498) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d607_bbac092fc6e3 ).
    t497 = zcl_lnt_sr_combi_module=>sta( i_s = t498 ).
    APPEND t497 TO t496->items.
    DATA(t499) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t500 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t501) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d609_9bc117e52bf1 ).
    t500 = zcl_lnt_sr_combi_module=>sta( i_s = t501 ).
    APPEND t500 TO t499->items.
    DATA(t502) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t503 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t504) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d610_0b4a91c1df89 ).
    t503 = zcl_lnt_sr_combi_module=>sta( i_s = t504 ).
    APPEND t503 TO t502->items.
    DATA(t505) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t506 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t507) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d611_2852a1970316 ).
    t506 = zcl_lnt_sr_combi_module=>sta( i_s = t507 ).
    APPEND t506 TO t505->items.
    DATA(t508) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t509 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t510) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d612_458d252c73b7 ).
    t509 = zcl_lnt_sr_combi_module=>sta( i_s = t510 ).
    APPEND t509 TO t508->items.
    DATA(t511) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t512 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t513) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d613_5ac7ff9be7ce ).
    t512 = zcl_lnt_sr_combi_module=>sta( i_s = t513 ).
    APPEND t512 TO t511->items.
    DATA(t514) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t515 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t516) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d614_0af6a2346fc7 ).
    t515 = zcl_lnt_sr_combi_module=>sta( i_s = t516 ).
    APPEND t515 TO t514->items.
    DATA(t517) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t518 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t519) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d615_597cd50cd639 ).
    t518 = zcl_lnt_sr_combi_module=>sta( i_s = t519 ).
    APPEND t518 TO t517->items.
    DATA(t520) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t521 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t522) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d617_4cb35ec5c47e ).
    t521 = zcl_lnt_sr_combi_module=>sta( i_s = t522 ).
    APPEND t521 TO t520->items.
    DATA(t523) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t524 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t525) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d616_2583f4236b05 ).
    t524 = zcl_lnt_sr_combi_module=>sta( i_s = t525 ).
    APPEND t524 TO t523->items.
    DATA(t526) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t527 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t528) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d618_d0401872cf67 ).
    t527 = zcl_lnt_sr_combi_module=>sta( i_s = t528 ).
    APPEND t527 TO t526->items.
    DATA(t529) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t530 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t531) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d619_508b589f3d2e ).
    t530 = zcl_lnt_sr_combi_module=>sta( i_s = t531 ).
    APPEND t530 TO t529->items.
    DATA(t532) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t533 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t534) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d621_751bea4dfd13 ).
    t533 = zcl_lnt_sr_combi_module=>sta( i_s = t534 ).
    APPEND t533 TO t532->items.
    DATA(t535) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t536 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t537) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d620_cd4713e20a55 ).
    t536 = zcl_lnt_sr_combi_module=>sta( i_s = t537 ).
    APPEND t536 TO t535->items.
    DATA(t538) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t539 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t540) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d624_913a872f90ff ).
    t539 = zcl_lnt_sr_combi_module=>sta( i_s = t540 ).
    APPEND t539 TO t538->items.
    DATA(t541) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t542 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t543) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d622_22348e0e5a4a ).
    t542 = zcl_lnt_sr_combi_module=>sta( i_s = t543 ).
    APPEND t542 TO t541->items.
    DATA(t544) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t545 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t546) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d627_f84ab06e93b0 ).
    t545 = zcl_lnt_sr_combi_module=>sta( i_s = t546 ).
    APPEND t545 TO t544->items.
    DATA(t547) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t548 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t549) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d628_cfdd2fb07e82 ).
    t548 = zcl_lnt_sr_combi_module=>sta( i_s = t549 ).
    APPEND t548 TO t547->items.
    DATA(t550) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t551 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t552) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d632_80406c76d4d2 ).
    t551 = zcl_lnt_sr_combi_module=>sta( i_s = t552 ).
    APPEND t551 TO t550->items.
    DATA(t553) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t554 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t555) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d630_29a26eca8597 ).
    t554 = zcl_lnt_sr_combi_module=>sta( i_s = t555 ).
    APPEND t554 TO t553->items.
    DATA(t556) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t557 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t558) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d629_0a8dd0d3dcb1 ).
    t557 = zcl_lnt_sr_combi_module=>sta( i_s = t558 ).
    APPEND t557 TO t556->items.
    DATA(t559) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t560 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t561) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d634_296da5784fa0 ).
    t560 = zcl_lnt_sr_combi_module=>sta( i_s = t561 ).
    APPEND t560 TO t559->items.
    DATA(t562) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t563 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t564) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d633_05143d333e6b ).
    t563 = zcl_lnt_sr_combi_module=>sta( i_s = t564 ).
    APPEND t563 TO t562->items.
    DATA(t565) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t566 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t567) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d631_2e1c51afeaec ).
    t566 = zcl_lnt_sr_combi_module=>sta( i_s = t567 ).
    APPEND t566 TO t565->items.
    DATA(t568) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t569 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t570) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d635_768248399129 ).
    t569 = zcl_lnt_sr_combi_module=>sta( i_s = t570 ).
    APPEND t569 TO t568->items.
    DATA(t571) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t572 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t573) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d636_2af4328d1698 ).
    t572 = zcl_lnt_sr_combi_module=>sta( i_s = t573 ).
    APPEND t572 TO t571->items.
    DATA(t574) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t575 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t576) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d637_e1b56c12a066 ).
    t575 = zcl_lnt_sr_combi_module=>sta( i_s = t576 ).
    APPEND t575 TO t574->items.
    DATA(t577) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t578 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t579) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d641_00cf48ea9524 ).
    t578 = zcl_lnt_sr_combi_module=>sta( i_s = t579 ).
    APPEND t578 TO t577->items.
    DATA(t580) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t581 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t582) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d642_c7115fecf92d ).
    t581 = zcl_lnt_sr_combi_module=>sta( i_s = t582 ).
    APPEND t581 TO t580->items.
    DATA(t583) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t584 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t585) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d645_168d2de480b7 ).
    t584 = zcl_lnt_sr_combi_module=>sta( i_s = t585 ).
    APPEND t584 TO t583->items.
    DATA(t586) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t587 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t588) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d655_927738d95d40 ).
    t587 = zcl_lnt_sr_combi_module=>sta( i_s = t588 ).
    APPEND t587 TO t586->items.
    DATA(t589) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t590 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t591) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d656_df22ae66bcf6 ).
    t590 = zcl_lnt_sr_combi_module=>sta( i_s = t591 ).
    APPEND t590 TO t589->items.
    DATA(t592) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t593 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t594) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d657_ffa3e89303c8 ).
    t593 = zcl_lnt_sr_combi_module=>sta( i_s = t594 ).
    APPEND t593 TO t592->items.
    DATA(t595) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t596 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t597) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d658_e6a4aeea4651 ).
    t596 = zcl_lnt_sr_combi_module=>sta( i_s = t597 ).
    APPEND t596 TO t595->items.
    DATA(t598) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t599 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t600) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d659_2ad70848144e ).
    t599 = zcl_lnt_sr_combi_module=>sta( i_s = t600 ).
    APPEND t599 TO t598->items.
    DATA(t601) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t602 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t603) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d661_9aa538820044 ).
    t602 = zcl_lnt_sr_combi_module=>sta( i_s = t603 ).
    APPEND t602 TO t601->items.
    DATA(t604) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t605 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t606) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d666_0f34aaf902de ).
    t605 = zcl_lnt_sr_combi_module=>sta( i_s = t606 ).
    APPEND t605 TO t604->items.
    DATA(t607) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t608 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t609) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d669_a69ba8d8f8a6 ).
    t608 = zcl_lnt_sr_combi_module=>sta( i_s = t609 ).
    APPEND t608 TO t607->items.
    DATA(t610) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t611 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t612) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d404_f5b3694ad544 ).
    t611 = zcl_lnt_sr_combi_module=>sta( i_s = t612 ).
    APPEND t611 TO t610->items.
    DATA(t613) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t614 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t615) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d501_7c1135fa2b18 ).
    t614 = zcl_lnt_sr_combi_module=>sta( i_s = t615 ).
    APPEND t614 TO t613->items.
    DATA(t616) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t617 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t618) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d608_0e7608355779 ).
    t617 = zcl_lnt_sr_combi_module=>sta( i_s = t618 ).
    APPEND t617 TO t616->items.
    DATA(t619) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t620 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t621) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d539_1b20166f6dfe ).
    t620 = zcl_lnt_sr_combi_module=>sta( i_s = t621 ).
    APPEND t620 TO t619->items.
    DATA(t622) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t623 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t624) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d574_df9f712900c5 ).
    t623 = zcl_lnt_sr_combi_module=>sta( i_s = t624 ).
    APPEND t623 TO t622->items.
    DATA(t625) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t626 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t627) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d590_14ffccf31f44 ).
    t626 = zcl_lnt_sr_combi_module=>sta( i_s = t627 ).
    APPEND t626 TO t625->items.
    DATA(t628) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t629 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t630) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d543_ccf4648ad473 ).
    t629 = zcl_lnt_sr_combi_module=>sta( i_s = t630 ).
    APPEND t629 TO t628->items.
    DATA(t631) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t632 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t633) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d478_fdbc54999e83 ).
    t632 = zcl_lnt_sr_combi_module=>sta( i_s = t633 ).
    APPEND t632 TO t631->items.
    DATA(t634) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t635 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t636) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d697_195ff21ba72a ).
    t635 = zcl_lnt_sr_combi_module=>sub( i_s = t636 ).
    APPEND t635 TO t634->items.
    DATA(t637) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t638 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t639) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d703_a50af928c17c ).
    t638 = zcl_lnt_sr_combi_module=>sub( i_s = t639 ).
    APPEND t638 TO t637->items.
    DATA(t640) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t641 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t642) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d724_5dde4ab12008 ).
    t641 = zcl_lnt_sr_combi_module=>sub( i_s = t642 ).
    APPEND t641 TO t640->items.
    DATA(t643) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t644 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t645) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d725_2037e58f2db9 ).
    t644 = zcl_lnt_sr_combi_module=>sub( i_s = t645 ).
    APPEND t644 TO t643->items.
    DATA(t646) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t647 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t648) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d726_d2da7170640c ).
    t647 = zcl_lnt_sr_combi_module=>sub( i_s = t648 ).
    APPEND t647 TO t646->items.
    DATA(t649) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t650 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t651) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d727_3ba4cd3431c9 ).
    t650 = zcl_lnt_sr_combi_module=>sub( i_s = t651 ).
    APPEND t650 TO t649->items.
    DATA(t652) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t653 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t654) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d696_1c7fc9b8a532 ).
    t653 = zcl_lnt_sr_combi_module=>sub( i_s = t654 ).
    APPEND t653 TO t652->items.
    DATA(t655) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t656 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t657) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d688_daf1a4f86bef ).
    t656 = zcl_lnt_sr_combi_module=>sub( i_s = t657 ).
    APPEND t656 TO t655->items.
    DATA(t658) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t659 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t660) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d689_9937496f64b3 ).
    t659 = zcl_lnt_sr_combi_module=>sub( i_s = t660 ).
    APPEND t659 TO t658->items.
    DATA(t661) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t662 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t663) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d690_846dbaba8fcd ).
    t662 = zcl_lnt_sr_combi_module=>sub( i_s = t663 ).
    APPEND t662 TO t661->items.
    DATA(t664) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t665 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t666) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d706_b5e09ff8af85 ).
    t665 = zcl_lnt_sr_combi_module=>sub( i_s = t666 ).
    APPEND t665 TO t664->items.
    DATA(t667) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t668 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t669) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d708_dde8d9743472 ).
    t668 = zcl_lnt_sr_combi_module=>sub( i_s = t669 ).
    APPEND t668 TO t667->items.
    DATA(t670) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t671 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t672) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d728_88830252bc13 ).
    t671 = zcl_lnt_sr_combi_module=>sub( i_s = t672 ).
    APPEND t671 TO t670->items.
    DATA(t673) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t674 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t675) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d729_b022852130b8 ).
    t674 = zcl_lnt_sr_combi_module=>sub( i_s = t675 ).
    APPEND t674 TO t673->items.
    DATA(t676) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t677 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t678) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d707_8cc2599df085 ).
    t677 = zcl_lnt_sr_combi_module=>sub( i_s = t678 ).
    APPEND t677 TO t676->items.
    DATA(t679) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t680 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t681) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d730_2ce7d22b4d6f ).
    t680 = zcl_lnt_sr_combi_module=>sub( i_s = t681 ).
    APPEND t680 TO t679->items.
    DATA(t682) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t683 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t684) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d731_b42f23a70705 ).
    t683 = zcl_lnt_sr_combi_module=>sub( i_s = t684 ).
    APPEND t683 TO t682->items.
    DATA(t685) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t686 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t687) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d732_1ee03f94664a ).
    t686 = zcl_lnt_sr_combi_module=>sub( i_s = t687 ).
    APPEND t686 TO t685->items.
    DATA(t688) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t689 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t690) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d710_52a89b3f6da2 ).
    t689 = zcl_lnt_sr_combi_module=>sub( i_s = t690 ).
    APPEND t689 TO t688->items.
    DATA(t691) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t692 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t693) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d715_d402bffdf300 ).
    t692 = zcl_lnt_sr_combi_module=>sub( i_s = t693 ).
    APPEND t692 TO t691->items.
    DATA t694 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t695) = CAST zif_lnt_structure_runnable( t2 ).
    DATA(t696) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    t694 = zcl_lnt_sr_combi_module=>alt( i_first = t695 i_rest = t696 ).
    t1 = t694.
    result = t1.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d679_3af40033658c.
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
