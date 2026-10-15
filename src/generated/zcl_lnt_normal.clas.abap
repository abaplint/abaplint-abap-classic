* TS: src/abap/3_structures/structures/normal.ts:8:1 Normal
CLASS zcl_lnt_normal DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_structure.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_normal IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA t3 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t4) = zlnt_runtime_desc_78196487750d=>zlnt_member_d561_0fa14d6404b6.
    t3 = zcl_lnt_sr_combi_module=>sta( i_s = t4 ).
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA(t7) = t5.
    DATA t8 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d388_aaf1742db2dc.
    t8 = zcl_lnt_sr_combi_module=>sta( i_s = t9 ).
    t7->load( ).
    APPEND t8 TO t7->items.
    t7->save( ).
    DATA(t10) = t5.
    DATA t11 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d437_1e504b4be960.
    t11 = zcl_lnt_sr_combi_module=>sta( i_s = t12 ).
    t10->load( ).
    APPEND t11 TO t10->items.
    t10->save( ).
    DATA(t13) = t5.
    DATA t14 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d738_747279fb02d5.
    t14 = zcl_lnt_sr_combi_module=>sub( i_s = t15 ).
    t13->load( ).
    APPEND t14 TO t13->items.
    t13->save( ).
    DATA(t16) = t5.
    DATA t17 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d416_5284469a6569.
    t17 = zcl_lnt_sr_combi_module=>sta( i_s = t18 ).
    t16->load( ).
    APPEND t17 TO t16->items.
    t16->save( ).
    DATA(t19) = t5.
    DATA t20 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d498_bacf37b32951.
    t20 = zcl_lnt_sr_combi_module=>sta( i_s = t21 ).
    t19->load( ).
    APPEND t20 TO t19->items.
    t19->save( ).
    DATA(t22) = t5.
    DATA t23 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d435_660f11c8643d.
    t23 = zcl_lnt_sr_combi_module=>sta( i_s = t24 ).
    t22->load( ).
    APPEND t23 TO t22->items.
    t22->save( ).
    DATA(t25) = t5.
    DATA t26 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d392_33e10f2ca820.
    t26 = zcl_lnt_sr_combi_module=>sta( i_s = t27 ).
    t25->load( ).
    APPEND t26 TO t25->items.
    t25->save( ).
    DATA(t28) = t5.
    DATA t29 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d366_6e18e9b47d14.
    t29 = zcl_lnt_sr_combi_module=>sta( i_s = t30 ).
    t28->load( ).
    APPEND t29 TO t28->items.
    t28->save( ).
    DATA(t31) = t5.
    DATA t32 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d368_b262d781113c.
    t32 = zcl_lnt_sr_combi_module=>sta( i_s = t33 ).
    t31->load( ).
    APPEND t32 TO t31->items.
    t31->save( ).
    DATA(t34) = t5.
    DATA t35 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d742_8edcd7bf8454.
    t35 = zcl_lnt_sr_combi_module=>sub( i_s = t36 ).
    t34->load( ).
    APPEND t35 TO t34->items.
    t34->save( ).
    DATA(t37) = t5.
    DATA t38 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d741_a4c2609517be.
    t38 = zcl_lnt_sr_combi_module=>sub( i_s = t39 ).
    t37->load( ).
    APPEND t38 TO t37->items.
    t37->save( ).
    DATA(t40) = t5.
    DATA t41 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d743_6e9adab31a90.
    t41 = zcl_lnt_sr_combi_module=>sub( i_s = t42 ).
    t40->load( ).
    APPEND t41 TO t40->items.
    t40->save( ).
    DATA(t43) = t5.
    DATA t44 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d373_624aaf9cf8cc.
    t44 = zcl_lnt_sr_combi_module=>sta( i_s = t45 ).
    t43->load( ).
    APPEND t44 TO t43->items.
    t43->save( ).
    DATA(t46) = t5.
    DATA t47 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d744_dbdc6f78b1c3.
    t47 = zcl_lnt_sr_combi_module=>sub( i_s = t48 ).
    t46->load( ).
    APPEND t47 TO t46->items.
    t46->save( ).
    DATA(t49) = t5.
    DATA t50 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d745_973382e545be.
    t50 = zcl_lnt_sr_combi_module=>sub( i_s = t51 ).
    t49->load( ).
    APPEND t50 TO t49->items.
    t49->save( ).
    DATA(t52) = t5.
    DATA t53 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t54) = zlnt_runtime_desc_78196487750d=>zlnt_member_d594_a2664c6b8771.
    t53 = zcl_lnt_sr_combi_module=>sta( i_s = t54 ).
    t52->load( ).
    APPEND t53 TO t52->items.
    t52->save( ).
    DATA(t55) = t5.
    DATA t56 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d374_fc0b5bdde21e.
    t56 = zcl_lnt_sr_combi_module=>sta( i_s = t57 ).
    t55->load( ).
    APPEND t56 TO t55->items.
    t55->save( ).
    DATA(t58) = t5.
    DATA t59 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d605_5797bc5ba819.
    t59 = zcl_lnt_sr_combi_module=>sta( i_s = t60 ).
    t58->load( ).
    APPEND t59 TO t58->items.
    t58->save( ).
    DATA(t61) = t5.
    DATA t62 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t63) = zlnt_runtime_desc_78196487750d=>zlnt_member_d611_2852a1970316.
    t62 = zcl_lnt_sr_combi_module=>sta( i_s = t63 ).
    t61->load( ).
    APPEND t62 TO t61->items.
    t61->save( ).
    DATA(t64) = t5.
    DATA t65 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d375_ab389f7000ba.
    t65 = zcl_lnt_sr_combi_module=>sta( i_s = t66 ).
    t64->load( ).
    APPEND t65 TO t64->items.
    t64->save( ).
    DATA(t67) = t5.
    DATA t68 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d536_087fe30efad2.
    t68 = zcl_lnt_sr_combi_module=>sta( i_s = t69 ).
    t67->load( ).
    APPEND t68 TO t67->items.
    t67->save( ).
    DATA(t70) = t5.
    DATA t71 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t72) = zlnt_runtime_desc_78196487750d=>zlnt_member_d445_c8667ee83c64.
    t71 = zcl_lnt_sr_combi_module=>sta( i_s = t72 ).
    t70->load( ).
    APPEND t71 TO t70->items.
    t70->save( ).
    DATA(t73) = t5.
    DATA t74 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d424_f49abf3f9551.
    t74 = zcl_lnt_sr_combi_module=>sta( i_s = t75 ).
    t73->load( ).
    APPEND t74 TO t73->items.
    t73->save( ).
    DATA(t76) = t5.
    DATA t77 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d709_9d7d29fb0565.
    t77 = zcl_lnt_sr_combi_module=>sub( i_s = t78 ).
    t76->load( ).
    APPEND t77 TO t76->items.
    t76->save( ).
    DATA(t79) = t5.
    DATA t80 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d711_d9a1643e70c2.
    t80 = zcl_lnt_sr_combi_module=>sub( i_s = t81 ).
    t79->load( ).
    APPEND t80 TO t79->items.
    t79->save( ).
    DATA(t82) = t5.
    DATA t83 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t84) = zlnt_runtime_desc_78196487750d=>zlnt_member_d726_d2da7170640c.
    t83 = zcl_lnt_sr_combi_module=>sub( i_s = t84 ).
    t82->load( ).
    APPEND t83 TO t82->items.
    t82->save( ).
    DATA(t85) = t5.
    DATA t86 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t87) = zlnt_runtime_desc_78196487750d=>zlnt_member_d736_e6fd20179c23.
    t86 = zcl_lnt_sr_combi_module=>sub( i_s = t87 ).
    t85->load( ).
    APPEND t86 TO t85->items.
    t85->save( ).
    DATA(t88) = t5.
    DATA t89 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t90) = zlnt_runtime_desc_78196487750d=>zlnt_member_d371_458c7930d5a0.
    t89 = zcl_lnt_sr_combi_module=>sta( i_s = t90 ).
    t88->load( ).
    APPEND t89 TO t88->items.
    t88->save( ).
    DATA(t91) = t5.
    DATA t92 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t93) = zlnt_runtime_desc_78196487750d=>zlnt_member_d370_d485abb4e201.
    t92 = zcl_lnt_sr_combi_module=>sta( i_s = t93 ).
    t91->load( ).
    APPEND t92 TO t91->items.
    t91->save( ).
    DATA(t94) = t5.
    DATA t95 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t96) = zlnt_runtime_desc_78196487750d=>zlnt_member_d376_3ade3c5aabb1.
    t95 = zcl_lnt_sr_combi_module=>sta( i_s = t96 ).
    t94->load( ).
    APPEND t95 TO t94->items.
    t94->save( ).
    DATA(t97) = t5.
    DATA t98 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t99) = zlnt_runtime_desc_78196487750d=>zlnt_member_d384_fe8274f9b2fc.
    t98 = zcl_lnt_sr_combi_module=>sta( i_s = t99 ).
    t97->load( ).
    APPEND t98 TO t97->items.
    t97->save( ).
    DATA(t100) = t5.
    DATA t101 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t102) = zlnt_runtime_desc_78196487750d=>zlnt_member_d385_61b4ff8b43cf.
    t101 = zcl_lnt_sr_combi_module=>sta( i_s = t102 ).
    t100->load( ).
    APPEND t101 TO t100->items.
    t100->save( ).
    DATA(t103) = t5.
    DATA t104 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t105) = zlnt_runtime_desc_78196487750d=>zlnt_member_d386_3ffcc7d99584.
    t104 = zcl_lnt_sr_combi_module=>sta( i_s = t105 ).
    t103->load( ).
    APPEND t104 TO t103->items.
    t103->save( ).
    DATA(t106) = t5.
    DATA t107 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t108) = zlnt_runtime_desc_78196487750d=>zlnt_member_d387_a96ff4215f60.
    t107 = zcl_lnt_sr_combi_module=>sta( i_s = t108 ).
    t106->load( ).
    APPEND t107 TO t106->items.
    t106->save( ).
    DATA(t109) = t5.
    DATA t110 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t111) = zlnt_runtime_desc_78196487750d=>zlnt_member_d390_4c3d4a5e484d.
    t110 = zcl_lnt_sr_combi_module=>sta( i_s = t111 ).
    t109->load( ).
    APPEND t110 TO t109->items.
    t109->save( ).
    DATA(t112) = t5.
    DATA t113 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t114) = zlnt_runtime_desc_78196487750d=>zlnt_member_d391_fa1cccd26d80.
    t113 = zcl_lnt_sr_combi_module=>sta( i_s = t114 ).
    t112->load( ).
    APPEND t113 TO t112->items.
    t112->save( ).
    DATA(t115) = t5.
    DATA t116 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t117) = zlnt_runtime_desc_78196487750d=>zlnt_member_d393_59e33384bdb4.
    t116 = zcl_lnt_sr_combi_module=>sta( i_s = t117 ).
    t115->load( ).
    APPEND t116 TO t115->items.
    t115->save( ).
    DATA(t118) = t5.
    DATA t119 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t120) = zlnt_runtime_desc_78196487750d=>zlnt_member_d394_f6e1a10c8513.
    t119 = zcl_lnt_sr_combi_module=>sta( i_s = t120 ).
    t118->load( ).
    APPEND t119 TO t118->items.
    t118->save( ).
    DATA(t121) = t5.
    DATA t122 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t123) = zlnt_runtime_desc_78196487750d=>zlnt_member_d395_d6422e344004.
    t122 = zcl_lnt_sr_combi_module=>sta( i_s = t123 ).
    t121->load( ).
    APPEND t122 TO t121->items.
    t121->save( ).
    DATA(t124) = t5.
    DATA t125 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t126) = zlnt_runtime_desc_78196487750d=>zlnt_member_d559_cf59321cb4f7.
    t125 = zcl_lnt_sr_combi_module=>sta( i_s = t126 ).
    t124->load( ).
    APPEND t125 TO t124->items.
    t124->save( ).
    DATA(t127) = t5.
    DATA t128 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d396_f66c9403a435.
    t128 = zcl_lnt_sr_combi_module=>sta( i_s = t129 ).
    t127->load( ).
    APPEND t128 TO t127->items.
    t127->save( ).
    DATA(t130) = t5.
    DATA t131 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t132) = zlnt_runtime_desc_78196487750d=>zlnt_member_d398_61420d891824.
    t131 = zcl_lnt_sr_combi_module=>sta( i_s = t132 ).
    t130->load( ).
    APPEND t131 TO t130->items.
    t130->save( ).
    DATA(t133) = t5.
    DATA t134 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t135) = zlnt_runtime_desc_78196487750d=>zlnt_member_d399_7492453aefa4.
    t134 = zcl_lnt_sr_combi_module=>sta( i_s = t135 ).
    t133->load( ).
    APPEND t134 TO t133->items.
    t133->save( ).
    DATA(t136) = t5.
    DATA t137 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t138) = zlnt_runtime_desc_78196487750d=>zlnt_member_d405_c500613c46e7.
    t137 = zcl_lnt_sr_combi_module=>sta( i_s = t138 ).
    t136->load( ).
    APPEND t137 TO t136->items.
    t136->save( ).
    DATA(t139) = t5.
    DATA t140 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t141) = zlnt_runtime_desc_78196487750d=>zlnt_member_d412_ffdd123df769.
    t140 = zcl_lnt_sr_combi_module=>sta( i_s = t141 ).
    t139->load( ).
    APPEND t140 TO t139->items.
    t139->save( ).
    DATA(t142) = t5.
    DATA t143 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t144) = zlnt_runtime_desc_78196487750d=>zlnt_member_d417_b1c6fbadfa99.
    t143 = zcl_lnt_sr_combi_module=>sta( i_s = t144 ).
    t142->load( ).
    APPEND t143 TO t142->items.
    t142->save( ).
    DATA(t145) = t5.
    DATA t146 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t147) = zlnt_runtime_desc_78196487750d=>zlnt_member_d418_6582c2c578e7.
    t146 = zcl_lnt_sr_combi_module=>sta( i_s = t147 ).
    t145->load( ).
    APPEND t146 TO t145->items.
    t145->save( ).
    DATA(t148) = t5.
    DATA t149 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t150) = zlnt_runtime_desc_78196487750d=>zlnt_member_d419_e97c97620cf7.
    t149 = zcl_lnt_sr_combi_module=>sta( i_s = t150 ).
    t148->load( ).
    APPEND t149 TO t148->items.
    t148->save( ).
    DATA(t151) = t5.
    DATA t152 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t153) = zlnt_runtime_desc_78196487750d=>zlnt_member_d420_cd77a127ab95.
    t152 = zcl_lnt_sr_combi_module=>sta( i_s = t153 ).
    t151->load( ).
    APPEND t152 TO t151->items.
    t151->save( ).
    DATA(t154) = t5.
    DATA t155 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t156) = zlnt_runtime_desc_78196487750d=>zlnt_member_d422_bebdc7940729.
    t155 = zcl_lnt_sr_combi_module=>sta( i_s = t156 ).
    t154->load( ).
    APPEND t155 TO t154->items.
    t154->save( ).
    DATA(t157) = t5.
    DATA t158 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t159) = zlnt_runtime_desc_78196487750d=>zlnt_member_d423_57d28e34609f.
    t158 = zcl_lnt_sr_combi_module=>sta( i_s = t159 ).
    t157->load( ).
    APPEND t158 TO t157->items.
    t157->save( ).
    DATA(t160) = t5.
    DATA t161 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t162) = zlnt_runtime_desc_78196487750d=>zlnt_member_d389_a00a56ae51c8.
    t161 = zcl_lnt_sr_combi_module=>sta( i_s = t162 ).
    t160->load( ).
    APPEND t161 TO t160->items.
    t160->save( ).
    DATA(t163) = t5.
    DATA t164 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t165) = zlnt_runtime_desc_78196487750d=>zlnt_member_d425_e1044626682e.
    t164 = zcl_lnt_sr_combi_module=>sta( i_s = t165 ).
    t163->load( ).
    APPEND t164 TO t163->items.
    t163->save( ).
    DATA(t166) = t5.
    DATA t167 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t168) = zlnt_runtime_desc_78196487750d=>zlnt_member_d426_fb8ad08dadf9.
    t167 = zcl_lnt_sr_combi_module=>sta( i_s = t168 ).
    t166->load( ).
    APPEND t167 TO t166->items.
    t166->save( ).
    DATA(t169) = t5.
    DATA t170 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t171) = zlnt_runtime_desc_78196487750d=>zlnt_member_d429_03a2ce6eaa8f.
    t170 = zcl_lnt_sr_combi_module=>sta( i_s = t171 ).
    t169->load( ).
    APPEND t170 TO t169->items.
    t169->save( ).
    DATA(t172) = t5.
    DATA t173 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t174) = zlnt_runtime_desc_78196487750d=>zlnt_member_d430_ed5f8d061325.
    t173 = zcl_lnt_sr_combi_module=>sta( i_s = t174 ).
    t172->load( ).
    APPEND t173 TO t172->items.
    t172->save( ).
    DATA(t175) = t5.
    DATA t176 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t177) = zlnt_runtime_desc_78196487750d=>zlnt_member_d433_8ed7f6afa5ce.
    t176 = zcl_lnt_sr_combi_module=>sta( i_s = t177 ).
    t175->load( ).
    APPEND t176 TO t175->items.
    t175->save( ).
    DATA(t178) = t5.
    DATA t179 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t180) = zlnt_runtime_desc_78196487750d=>zlnt_member_d432_7686102e757b.
    t179 = zcl_lnt_sr_combi_module=>sta( i_s = t180 ).
    t178->load( ).
    APPEND t179 TO t178->items.
    t178->save( ).
    DATA(t181) = t5.
    DATA t182 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t183) = zlnt_runtime_desc_78196487750d=>zlnt_member_d434_c50e637c59a5.
    t182 = zcl_lnt_sr_combi_module=>sta( i_s = t183 ).
    t181->load( ).
    APPEND t182 TO t181->items.
    t181->save( ).
    DATA(t184) = t5.
    DATA t185 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t186) = zlnt_runtime_desc_78196487750d=>zlnt_member_d436_485809893147.
    t185 = zcl_lnt_sr_combi_module=>sta( i_s = t186 ).
    t184->load( ).
    APPEND t185 TO t184->items.
    t184->save( ).
    DATA(t187) = t5.
    DATA t188 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t189) = zlnt_runtime_desc_78196487750d=>zlnt_member_d441_5580d11deafb.
    t188 = zcl_lnt_sr_combi_module=>sta( i_s = t189 ).
    t187->load( ).
    APPEND t188 TO t187->items.
    t187->save( ).
    DATA(t190) = t5.
    DATA t191 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t192) = zlnt_runtime_desc_78196487750d=>zlnt_member_d442_7bcff8928bf7.
    t191 = zcl_lnt_sr_combi_module=>sta( i_s = t192 ).
    t190->load( ).
    APPEND t191 TO t190->items.
    t190->save( ).
    DATA(t193) = t5.
    DATA t194 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t195) = zlnt_runtime_desc_78196487750d=>zlnt_member_d443_f804e01da784.
    t194 = zcl_lnt_sr_combi_module=>sta( i_s = t195 ).
    t193->load( ).
    APPEND t194 TO t193->items.
    t193->save( ).
    DATA(t196) = t5.
    DATA t197 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t198) = zlnt_runtime_desc_78196487750d=>zlnt_member_d444_767e13c320ad.
    t197 = zcl_lnt_sr_combi_module=>sta( i_s = t198 ).
    t196->load( ).
    APPEND t197 TO t196->items.
    t196->save( ).
    DATA(t199) = t5.
    DATA t200 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t201) = zlnt_runtime_desc_78196487750d=>zlnt_member_d446_6279e30b5aa2.
    t200 = zcl_lnt_sr_combi_module=>sta( i_s = t201 ).
    t199->load( ).
    APPEND t200 TO t199->items.
    t199->save( ).
    DATA(t202) = t5.
    DATA t203 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t204) = zlnt_runtime_desc_78196487750d=>zlnt_member_d447_ef4f6941eb64.
    t203 = zcl_lnt_sr_combi_module=>sta( i_s = t204 ).
    t202->load( ).
    APPEND t203 TO t202->items.
    t202->save( ).
    DATA(t205) = t5.
    DATA t206 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t207) = zlnt_runtime_desc_78196487750d=>zlnt_member_d448_9330277dc62f.
    t206 = zcl_lnt_sr_combi_module=>sta( i_s = t207 ).
    t205->load( ).
    APPEND t206 TO t205->items.
    t205->save( ).
    DATA(t208) = t5.
    DATA t209 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t210) = zlnt_runtime_desc_78196487750d=>zlnt_member_d449_e575e1a13299.
    t209 = zcl_lnt_sr_combi_module=>sta( i_s = t210 ).
    t208->load( ).
    APPEND t209 TO t208->items.
    t208->save( ).
    DATA(t211) = t5.
    DATA t212 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t213) = zlnt_runtime_desc_78196487750d=>zlnt_member_d450_5d14e5d4dc2d.
    t212 = zcl_lnt_sr_combi_module=>sta( i_s = t213 ).
    t211->load( ).
    APPEND t212 TO t211->items.
    t211->save( ).
    DATA(t214) = t5.
    DATA t215 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t216) = zlnt_runtime_desc_78196487750d=>zlnt_member_d451_3d24988c9cf2.
    t215 = zcl_lnt_sr_combi_module=>sta( i_s = t216 ).
    t214->load( ).
    APPEND t215 TO t214->items.
    t214->save( ).
    DATA(t217) = t5.
    DATA t218 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t219) = zlnt_runtime_desc_78196487750d=>zlnt_member_d452_bb39104fe1e2.
    t218 = zcl_lnt_sr_combi_module=>sta( i_s = t219 ).
    t217->load( ).
    APPEND t218 TO t217->items.
    t217->save( ).
    DATA(t220) = t5.
    DATA t221 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t222) = zlnt_runtime_desc_78196487750d=>zlnt_member_d455_d2105955ee10.
    t221 = zcl_lnt_sr_combi_module=>sta( i_s = t222 ).
    t220->load( ).
    APPEND t221 TO t220->items.
    t220->save( ).
    DATA(t223) = t5.
    DATA t224 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t225) = zlnt_runtime_desc_78196487750d=>zlnt_member_d486_5804b5724294.
    t224 = zcl_lnt_sr_combi_module=>sta( i_s = t225 ).
    t223->load( ).
    APPEND t224 TO t223->items.
    t223->save( ).
    DATA(t226) = t5.
    DATA t227 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t228) = zlnt_runtime_desc_78196487750d=>zlnt_member_d490_92e27c11fe23.
    t227 = zcl_lnt_sr_combi_module=>sta( i_s = t228 ).
    t226->load( ).
    APPEND t227 TO t226->items.
    t226->save( ).
    DATA(t229) = t5.
    DATA t230 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t231) = zlnt_runtime_desc_78196487750d=>zlnt_member_d492_5999ca9e129e.
    t230 = zcl_lnt_sr_combi_module=>sta( i_s = t231 ).
    t229->load( ).
    APPEND t230 TO t229->items.
    t229->save( ).
    DATA(t232) = t5.
    DATA t233 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t234) = zlnt_runtime_desc_78196487750d=>zlnt_member_d491_a57d7381546f.
    t233 = zcl_lnt_sr_combi_module=>sta( i_s = t234 ).
    t232->load( ).
    APPEND t233 TO t232->items.
    t232->save( ).
    DATA(t235) = t5.
    DATA t236 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t237) = zlnt_runtime_desc_78196487750d=>zlnt_member_d493_26b5f3d28468.
    t236 = zcl_lnt_sr_combi_module=>sta( i_s = t237 ).
    t235->load( ).
    APPEND t236 TO t235->items.
    t235->save( ).
    DATA(t238) = t5.
    DATA t239 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t240) = zlnt_runtime_desc_78196487750d=>zlnt_member_d494_35493630237a.
    t239 = zcl_lnt_sr_combi_module=>sta( i_s = t240 ).
    t238->load( ).
    APPEND t239 TO t238->items.
    t238->save( ).
    DATA(t241) = t5.
    DATA t242 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t243) = zlnt_runtime_desc_78196487750d=>zlnt_member_d496_c5ff13ca58a8.
    t242 = zcl_lnt_sr_combi_module=>sta( i_s = t243 ).
    t241->load( ).
    APPEND t242 TO t241->items.
    t241->save( ).
    DATA(t244) = t5.
    DATA t245 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t246) = zlnt_runtime_desc_78196487750d=>zlnt_member_d497_1f87430672d0.
    t245 = zcl_lnt_sr_combi_module=>sta( i_s = t246 ).
    t244->load( ).
    APPEND t245 TO t244->items.
    t244->save( ).
    DATA(t247) = t5.
    DATA t248 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t249) = zlnt_runtime_desc_78196487750d=>zlnt_member_d499_147142f52ef0.
    t248 = zcl_lnt_sr_combi_module=>sta( i_s = t249 ).
    t247->load( ).
    APPEND t248 TO t247->items.
    t247->save( ).
    DATA(t250) = t5.
    DATA t251 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t252) = zlnt_runtime_desc_78196487750d=>zlnt_member_d502_cbd42cb54589.
    t251 = zcl_lnt_sr_combi_module=>sta( i_s = t252 ).
    t250->load( ).
    APPEND t251 TO t250->items.
    t250->save( ).
    DATA(t253) = t5.
    DATA t254 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t255) = zlnt_runtime_desc_78196487750d=>zlnt_member_d504_5befe1b9627e.
    t254 = zcl_lnt_sr_combi_module=>sta( i_s = t255 ).
    t253->load( ).
    APPEND t254 TO t253->items.
    t253->save( ).
    DATA(t256) = t5.
    DATA t257 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t258) = zlnt_runtime_desc_78196487750d=>zlnt_member_d505_17c801ea0064.
    t257 = zcl_lnt_sr_combi_module=>sta( i_s = t258 ).
    t256->load( ).
    APPEND t257 TO t256->items.
    t256->save( ).
    DATA(t259) = t5.
    DATA t260 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t261) = zlnt_runtime_desc_78196487750d=>zlnt_member_d503_14da2c3ecdad.
    t260 = zcl_lnt_sr_combi_module=>sta( i_s = t261 ).
    t259->load( ).
    APPEND t260 TO t259->items.
    t259->save( ).
    DATA(t262) = t5.
    DATA t263 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t264) = zlnt_runtime_desc_78196487750d=>zlnt_member_d508_6c58cfa2ab0e.
    t263 = zcl_lnt_sr_combi_module=>sta( i_s = t264 ).
    t262->load( ).
    APPEND t263 TO t262->items.
    t262->save( ).
    DATA(t265) = t5.
    DATA t266 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t267) = zlnt_runtime_desc_78196487750d=>zlnt_member_d509_83ce94d67b86.
    t266 = zcl_lnt_sr_combi_module=>sta( i_s = t267 ).
    t265->load( ).
    APPEND t266 TO t265->items.
    t265->save( ).
    DATA(t268) = t5.
    DATA t269 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t270) = zlnt_runtime_desc_78196487750d=>zlnt_member_d510_157f01cef38d.
    t269 = zcl_lnt_sr_combi_module=>sta( i_s = t270 ).
    t268->load( ).
    APPEND t269 TO t268->items.
    t268->save( ).
    DATA(t271) = t5.
    DATA t272 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t273) = zlnt_runtime_desc_78196487750d=>zlnt_member_d512_11174d785e8e.
    t272 = zcl_lnt_sr_combi_module=>sta( i_s = t273 ).
    t271->load( ).
    APPEND t272 TO t271->items.
    t271->save( ).
    DATA(t274) = t5.
    DATA t275 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t276) = zlnt_runtime_desc_78196487750d=>zlnt_member_d513_3b5170c23dc9.
    t275 = zcl_lnt_sr_combi_module=>sta( i_s = t276 ).
    t274->load( ).
    APPEND t275 TO t274->items.
    t274->save( ).
    DATA(t277) = t5.
    DATA t278 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t279) = zlnt_runtime_desc_78196487750d=>zlnt_member_d514_41b9b9ab2d1c.
    t278 = zcl_lnt_sr_combi_module=>sta( i_s = t279 ).
    t277->load( ).
    APPEND t278 TO t277->items.
    t277->save( ).
    DATA(t280) = t5.
    DATA t281 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t282) = zlnt_runtime_desc_78196487750d=>zlnt_member_d515_64c82be68056.
    t281 = zcl_lnt_sr_combi_module=>sta( i_s = t282 ).
    t280->load( ).
    APPEND t281 TO t280->items.
    t280->save( ).
    DATA(t283) = t5.
    DATA t284 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t285) = zlnt_runtime_desc_78196487750d=>zlnt_member_d516_26575bab3fb9.
    t284 = zcl_lnt_sr_combi_module=>sta( i_s = t285 ).
    t283->load( ).
    APPEND t284 TO t283->items.
    t283->save( ).
    DATA(t286) = t5.
    DATA t287 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t288) = zlnt_runtime_desc_78196487750d=>zlnt_member_d517_e2a65928dcca.
    t287 = zcl_lnt_sr_combi_module=>sta( i_s = t288 ).
    t286->load( ).
    APPEND t287 TO t286->items.
    t286->save( ).
    DATA(t289) = t5.
    DATA t290 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t291) = zlnt_runtime_desc_78196487750d=>zlnt_member_d519_36bc4e0e9240.
    t290 = zcl_lnt_sr_combi_module=>sta( i_s = t291 ).
    t289->load( ).
    APPEND t290 TO t289->items.
    t289->save( ).
    DATA(t292) = t5.
    DATA t293 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t294) = zlnt_runtime_desc_78196487750d=>zlnt_member_d520_18c2b55bcee8.
    t293 = zcl_lnt_sr_combi_module=>sta( i_s = t294 ).
    t292->load( ).
    APPEND t293 TO t292->items.
    t292->save( ).
    DATA(t295) = t5.
    DATA t296 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t297) = zlnt_runtime_desc_78196487750d=>zlnt_member_d521_a2969ba3f7e8.
    t296 = zcl_lnt_sr_combi_module=>sta( i_s = t297 ).
    t295->load( ).
    APPEND t296 TO t295->items.
    t295->save( ).
    DATA(t298) = t5.
    DATA t299 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t300) = zlnt_runtime_desc_78196487750d=>zlnt_member_d522_37de97ed1215.
    t299 = zcl_lnt_sr_combi_module=>sta( i_s = t300 ).
    t298->load( ).
    APPEND t299 TO t298->items.
    t298->save( ).
    DATA(t301) = t5.
    DATA t302 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t303) = zlnt_runtime_desc_78196487750d=>zlnt_member_d523_88ac7053af9c.
    t302 = zcl_lnt_sr_combi_module=>sta( i_s = t303 ).
    t301->load( ).
    APPEND t302 TO t301->items.
    t301->save( ).
    DATA(t304) = t5.
    DATA t305 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t306) = zlnt_runtime_desc_78196487750d=>zlnt_member_d524_1475618fa3c9.
    t305 = zcl_lnt_sr_combi_module=>sta( i_s = t306 ).
    t304->load( ).
    APPEND t305 TO t304->items.
    t304->save( ).
    DATA(t307) = t5.
    DATA t308 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t309) = zlnt_runtime_desc_78196487750d=>zlnt_member_d566_a0fbef94fa32.
    t308 = zcl_lnt_sr_combi_module=>sta( i_s = t309 ).
    t307->load( ).
    APPEND t308 TO t307->items.
    t307->save( ).
    DATA(t310) = t5.
    DATA t311 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t312) = zlnt_runtime_desc_78196487750d=>zlnt_member_d527_08085b43ad01.
    t311 = zcl_lnt_sr_combi_module=>sta( i_s = t312 ).
    t310->load( ).
    APPEND t311 TO t310->items.
    t310->save( ).
    DATA(t313) = t5.
    DATA t314 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t315) = zlnt_runtime_desc_78196487750d=>zlnt_member_d528_859eab06872d.
    t314 = zcl_lnt_sr_combi_module=>sta( i_s = t315 ).
    t313->load( ).
    APPEND t314 TO t313->items.
    t313->save( ).
    DATA(t316) = t5.
    DATA t317 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t318) = zlnt_runtime_desc_78196487750d=>zlnt_member_d562_4a32c2726c20.
    t317 = zcl_lnt_sr_combi_module=>sta( i_s = t318 ).
    t316->load( ).
    APPEND t317 TO t316->items.
    t316->save( ).
    DATA(t319) = t5.
    DATA t320 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t321) = zlnt_runtime_desc_78196487750d=>zlnt_member_d526_f815f9eca95e.
    t320 = zcl_lnt_sr_combi_module=>sta( i_s = t321 ).
    t319->load( ).
    APPEND t320 TO t319->items.
    t319->save( ).
    DATA(t322) = t5.
    DATA t323 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t324) = zlnt_runtime_desc_78196487750d=>zlnt_member_d531_50646cf0bf6b.
    t323 = zcl_lnt_sr_combi_module=>sta( i_s = t324 ).
    t322->load( ).
    APPEND t323 TO t322->items.
    t322->save( ).
    DATA(t325) = t5.
    DATA t326 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t327) = zlnt_runtime_desc_78196487750d=>zlnt_member_d529_17510302e89e.
    t326 = zcl_lnt_sr_combi_module=>sta( i_s = t327 ).
    t325->load( ).
    APPEND t326 TO t325->items.
    t325->save( ).
    DATA(t328) = t5.
    DATA t329 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t330) = zlnt_runtime_desc_78196487750d=>zlnt_member_d534_4a06e0073eb0.
    t329 = zcl_lnt_sr_combi_module=>sta( i_s = t330 ).
    t328->load( ).
    APPEND t329 TO t328->items.
    t328->save( ).
    DATA(t331) = t5.
    DATA t332 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t333) = zlnt_runtime_desc_78196487750d=>zlnt_member_d537_ef985c59f92c.
    t332 = zcl_lnt_sr_combi_module=>sta( i_s = t333 ).
    t331->load( ).
    APPEND t332 TO t331->items.
    t331->save( ).
    DATA(t334) = t5.
    DATA t335 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t336) = zlnt_runtime_desc_78196487750d=>zlnt_member_d538_06f6bfe3d66f.
    t335 = zcl_lnt_sr_combi_module=>sta( i_s = t336 ).
    t334->load( ).
    APPEND t335 TO t334->items.
    t334->save( ).
    DATA(t337) = t5.
    DATA t338 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t339) = zlnt_runtime_desc_78196487750d=>zlnt_member_d535_c4d9172ef5ea.
    t338 = zcl_lnt_sr_combi_module=>sta( i_s = t339 ).
    t337->load( ).
    APPEND t338 TO t337->items.
    t337->save( ).
    DATA(t340) = t5.
    DATA t341 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t342) = zlnt_runtime_desc_78196487750d=>zlnt_member_d542_0aa767c92614.
    t341 = zcl_lnt_sr_combi_module=>sta( i_s = t342 ).
    t340->load( ).
    APPEND t341 TO t340->items.
    t340->save( ).
    DATA(t343) = t5.
    DATA t344 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t345) = zlnt_runtime_desc_78196487750d=>zlnt_member_d543_ccf4648ad473.
    t344 = zcl_lnt_sr_combi_module=>sta( i_s = t345 ).
    t343->load( ).
    APPEND t344 TO t343->items.
    t343->save( ).
    DATA(t346) = t5.
    DATA t347 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t348) = zlnt_runtime_desc_78196487750d=>zlnt_member_d545_31612fd2296c.
    t347 = zcl_lnt_sr_combi_module=>sta( i_s = t348 ).
    t346->load( ).
    APPEND t347 TO t346->items.
    t346->save( ).
    DATA(t349) = t5.
    DATA t350 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t351) = zlnt_runtime_desc_78196487750d=>zlnt_member_d546_839a3cf680aa.
    t350 = zcl_lnt_sr_combi_module=>sta( i_s = t351 ).
    t349->load( ).
    APPEND t350 TO t349->items.
    t349->save( ).
    DATA(t352) = t5.
    DATA t353 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t354) = zlnt_runtime_desc_78196487750d=>zlnt_member_d684_dd4b0670faf6.
    t353 = zcl_lnt_sr_combi_module=>sta( i_s = t354 ).
    t352->load( ).
    APPEND t353 TO t352->items.
    t352->save( ).
    DATA(t355) = t5.
    DATA t356 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t357) = zlnt_runtime_desc_78196487750d=>zlnt_member_d547_52de85bb9193.
    t356 = zcl_lnt_sr_combi_module=>sta( i_s = t357 ).
    t355->load( ).
    APPEND t356 TO t355->items.
    t355->save( ).
    DATA(t358) = t5.
    DATA t359 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t360) = zlnt_runtime_desc_78196487750d=>zlnt_member_d552_70cb477baddf.
    t359 = zcl_lnt_sr_combi_module=>sta( i_s = t360 ).
    t358->load( ).
    APPEND t359 TO t358->items.
    t358->save( ).
    DATA(t361) = t5.
    DATA t362 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t363) = zlnt_runtime_desc_78196487750d=>zlnt_member_d551_3a0a4b6f5142.
    t362 = zcl_lnt_sr_combi_module=>sta( i_s = t363 ).
    t361->load( ).
    APPEND t362 TO t361->items.
    t361->save( ).
    DATA(t364) = t5.
    DATA t365 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t366) = zlnt_runtime_desc_78196487750d=>zlnt_member_d558_20a8fd33a9a2.
    t365 = zcl_lnt_sr_combi_module=>sta( i_s = t366 ).
    t364->load( ).
    APPEND t365 TO t364->items.
    t364->save( ).
    DATA(t367) = t5.
    DATA t368 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t369) = zlnt_runtime_desc_78196487750d=>zlnt_member_d555_4421dfbe5302.
    t368 = zcl_lnt_sr_combi_module=>sta( i_s = t369 ).
    t367->load( ).
    APPEND t368 TO t367->items.
    t367->save( ).
    DATA(t370) = t5.
    DATA t371 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t372) = zlnt_runtime_desc_78196487750d=>zlnt_member_d557_3b89d313f054.
    t371 = zcl_lnt_sr_combi_module=>sta( i_s = t372 ).
    t370->load( ).
    APPEND t371 TO t370->items.
    t370->save( ).
    DATA(t373) = t5.
    DATA t374 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t375) = zlnt_runtime_desc_78196487750d=>zlnt_member_d563_a12944ad2dc9.
    t374 = zcl_lnt_sr_combi_module=>sta( i_s = t375 ).
    t373->load( ).
    APPEND t374 TO t373->items.
    t373->save( ).
    DATA(t376) = t5.
    DATA t377 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t378) = zlnt_runtime_desc_78196487750d=>zlnt_member_d564_06e4778ce61b.
    t377 = zcl_lnt_sr_combi_module=>sta( i_s = t378 ).
    t376->load( ).
    APPEND t377 TO t376->items.
    t376->save( ).
    DATA(t379) = t5.
    DATA t380 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t381) = zlnt_runtime_desc_78196487750d=>zlnt_member_d565_243825abe528.
    t380 = zcl_lnt_sr_combi_module=>sta( i_s = t381 ).
    t379->load( ).
    APPEND t380 TO t379->items.
    t379->save( ).
    DATA(t382) = t5.
    DATA t383 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t384) = zlnt_runtime_desc_78196487750d=>zlnt_member_d568_88df8e7885d7.
    t383 = zcl_lnt_sr_combi_module=>sta( i_s = t384 ).
    t382->load( ).
    APPEND t383 TO t382->items.
    t382->save( ).
    DATA(t385) = t5.
    DATA t386 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t387) = zlnt_runtime_desc_78196487750d=>zlnt_member_d569_b67e4c7404df.
    t386 = zcl_lnt_sr_combi_module=>sta( i_s = t387 ).
    t385->load( ).
    APPEND t386 TO t385->items.
    t385->save( ).
    DATA(t388) = t5.
    DATA t389 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t390) = zlnt_runtime_desc_78196487750d=>zlnt_member_d570_702bda2e8a68.
    t389 = zcl_lnt_sr_combi_module=>sta( i_s = t390 ).
    t388->load( ).
    APPEND t389 TO t388->items.
    t388->save( ).
    DATA(t391) = t5.
    DATA t392 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t393) = zlnt_runtime_desc_78196487750d=>zlnt_member_d571_40e28c210be5.
    t392 = zcl_lnt_sr_combi_module=>sta( i_s = t393 ).
    t391->load( ).
    APPEND t392 TO t391->items.
    t391->save( ).
    DATA(t394) = t5.
    DATA t395 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t396) = zlnt_runtime_desc_78196487750d=>zlnt_member_d573_76d229f1cfae.
    t395 = zcl_lnt_sr_combi_module=>sta( i_s = t396 ).
    t394->load( ).
    APPEND t395 TO t394->items.
    t394->save( ).
    DATA(t397) = t5.
    DATA t398 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t399) = zlnt_runtime_desc_78196487750d=>zlnt_member_d501_7c1135fa2b18.
    t398 = zcl_lnt_sr_combi_module=>sta( i_s = t399 ).
    t397->load( ).
    APPEND t398 TO t397->items.
    t397->save( ).
    DATA(t400) = t5.
    DATA t401 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t402) = zlnt_runtime_desc_78196487750d=>zlnt_member_d574_df9f712900c5.
    t401 = zcl_lnt_sr_combi_module=>sta( i_s = t402 ).
    t400->load( ).
    APPEND t401 TO t400->items.
    t400->save( ).
    DATA(t403) = t5.
    DATA t404 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t405) = zlnt_runtime_desc_78196487750d=>zlnt_member_d585_465bb01b684e.
    t404 = zcl_lnt_sr_combi_module=>sta( i_s = t405 ).
    t403->load( ).
    APPEND t404 TO t403->items.
    t403->save( ).
    DATA(t406) = t5.
    DATA t407 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t408) = zlnt_runtime_desc_78196487750d=>zlnt_member_d575_638aad284021.
    t407 = zcl_lnt_sr_combi_module=>sta( i_s = t408 ).
    t406->load( ).
    APPEND t407 TO t406->items.
    t406->save( ).
    DATA(t409) = t5.
    DATA t410 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t411) = zlnt_runtime_desc_78196487750d=>zlnt_member_d588_a72b5bf675f5.
    t410 = zcl_lnt_sr_combi_module=>sta( i_s = t411 ).
    t409->load( ).
    APPEND t410 TO t409->items.
    t409->save( ).
    DATA(t412) = t5.
    DATA t413 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t414) = zlnt_runtime_desc_78196487750d=>zlnt_member_d587_acb1f2e7f4b1.
    t413 = zcl_lnt_sr_combi_module=>sta( i_s = t414 ).
    t412->load( ).
    APPEND t413 TO t412->items.
    t412->save( ).
    DATA(t415) = t5.
    DATA t416 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t417) = zlnt_runtime_desc_78196487750d=>zlnt_member_d586_198a3628c215.
    t416 = zcl_lnt_sr_combi_module=>sta( i_s = t417 ).
    t415->load( ).
    APPEND t416 TO t415->items.
    t415->save( ).
    DATA(t418) = t5.
    DATA t419 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t420) = zlnt_runtime_desc_78196487750d=>zlnt_member_d589_2f27f2ba8c10.
    t419 = zcl_lnt_sr_combi_module=>sta( i_s = t420 ).
    t418->load( ).
    APPEND t419 TO t418->items.
    t418->save( ).
    DATA(t421) = t5.
    DATA t422 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t423) = zlnt_runtime_desc_78196487750d=>zlnt_member_d590_14ffccf31f44.
    t422 = zcl_lnt_sr_combi_module=>sta( i_s = t423 ).
    t421->load( ).
    APPEND t422 TO t421->items.
    t421->save( ).
    DATA(t424) = t5.
    DATA t425 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t426) = zlnt_runtime_desc_78196487750d=>zlnt_member_d592_4837260953f4.
    t425 = zcl_lnt_sr_combi_module=>sta( i_s = t426 ).
    t424->load( ).
    APPEND t425 TO t424->items.
    t424->save( ).
    DATA(t427) = t5.
    DATA t428 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t429) = zlnt_runtime_desc_78196487750d=>zlnt_member_d593_f9f53f5357e8.
    t428 = zcl_lnt_sr_combi_module=>sta( i_s = t429 ).
    t427->load( ).
    APPEND t428 TO t427->items.
    t427->save( ).
    DATA(t430) = t5.
    DATA t431 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t432) = zlnt_runtime_desc_78196487750d=>zlnt_member_d595_36c236dc163f.
    t431 = zcl_lnt_sr_combi_module=>sta( i_s = t432 ).
    t430->load( ).
    APPEND t431 TO t430->items.
    t430->save( ).
    DATA(t433) = t5.
    DATA t434 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t435) = zlnt_runtime_desc_78196487750d=>zlnt_member_d596_b011b05deabd.
    t434 = zcl_lnt_sr_combi_module=>sta( i_s = t435 ).
    t433->load( ).
    APPEND t434 TO t433->items.
    t433->save( ).
    DATA(t436) = t5.
    DATA t437 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t438) = zlnt_runtime_desc_78196487750d=>zlnt_member_d598_a64ed487ee12.
    t437 = zcl_lnt_sr_combi_module=>sta( i_s = t438 ).
    t436->load( ).
    APPEND t437 TO t436->items.
    t436->save( ).
    DATA(t439) = t5.
    DATA t440 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t441) = zlnt_runtime_desc_78196487750d=>zlnt_member_d597_40fd5083e583.
    t440 = zcl_lnt_sr_combi_module=>sta( i_s = t441 ).
    t439->load( ).
    APPEND t440 TO t439->items.
    t439->save( ).
    DATA(t442) = t5.
    DATA t443 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t444) = zlnt_runtime_desc_78196487750d=>zlnt_member_d599_e80ab99c110e.
    t443 = zcl_lnt_sr_combi_module=>sta( i_s = t444 ).
    t442->load( ).
    APPEND t443 TO t442->items.
    t442->save( ).
    DATA(t445) = t5.
    DATA t446 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t447) = zlnt_runtime_desc_78196487750d=>zlnt_member_d600_5c4ef0d6a35d.
    t446 = zcl_lnt_sr_combi_module=>sta( i_s = t447 ).
    t445->load( ).
    APPEND t446 TO t445->items.
    t445->save( ).
    DATA(t448) = t5.
    DATA t449 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t450) = zlnt_runtime_desc_78196487750d=>zlnt_member_d602_47fea972f923.
    t449 = zcl_lnt_sr_combi_module=>sta( i_s = t450 ).
    t448->load( ).
    APPEND t449 TO t448->items.
    t448->save( ).
    DATA(t451) = t5.
    DATA t452 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t453) = zlnt_runtime_desc_78196487750d=>zlnt_member_d603_a7e0e89c6b35.
    t452 = zcl_lnt_sr_combi_module=>sta( i_s = t453 ).
    t451->load( ).
    APPEND t452 TO t451->items.
    t451->save( ).
    DATA(t454) = t5.
    DATA t455 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t456) = zlnt_runtime_desc_78196487750d=>zlnt_member_d604_771dd3a3028b.
    t455 = zcl_lnt_sr_combi_module=>sta( i_s = t456 ).
    t454->load( ).
    APPEND t455 TO t454->items.
    t454->save( ).
    DATA(t457) = t5.
    DATA t458 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t459) = zlnt_runtime_desc_78196487750d=>zlnt_member_d606_2acdb29cdeaf.
    t458 = zcl_lnt_sr_combi_module=>sta( i_s = t459 ).
    t457->load( ).
    APPEND t458 TO t457->items.
    t457->save( ).
    DATA(t460) = t5.
    DATA t461 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t462) = zlnt_runtime_desc_78196487750d=>zlnt_member_d608_0e7608355779.
    t461 = zcl_lnt_sr_combi_module=>sta( i_s = t462 ).
    t460->load( ).
    APPEND t461 TO t460->items.
    t460->save( ).
    DATA(t463) = t5.
    DATA t464 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t465) = zlnt_runtime_desc_78196487750d=>zlnt_member_d609_9bc117e52bf1.
    t464 = zcl_lnt_sr_combi_module=>sta( i_s = t465 ).
    t463->load( ).
    APPEND t464 TO t463->items.
    t463->save( ).
    DATA(t466) = t5.
    DATA t467 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t468) = zlnt_runtime_desc_78196487750d=>zlnt_member_d610_0b4a91c1df89.
    t467 = zcl_lnt_sr_combi_module=>sta( i_s = t468 ).
    t466->load( ).
    APPEND t467 TO t466->items.
    t466->save( ).
    DATA(t469) = t5.
    DATA t470 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t471) = zlnt_runtime_desc_78196487750d=>zlnt_member_d615_597cd50cd639.
    t470 = zcl_lnt_sr_combi_module=>sta( i_s = t471 ).
    t469->load( ).
    APPEND t470 TO t469->items.
    t469->save( ).
    DATA(t472) = t5.
    DATA t473 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t474) = zlnt_runtime_desc_78196487750d=>zlnt_member_d616_2583f4236b05.
    t473 = zcl_lnt_sr_combi_module=>sta( i_s = t474 ).
    t472->load( ).
    APPEND t473 TO t472->items.
    t472->save( ).
    DATA(t475) = t5.
    DATA t476 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t477) = zlnt_runtime_desc_78196487750d=>zlnt_member_d617_4cb35ec5c47e.
    t476 = zcl_lnt_sr_combi_module=>sta( i_s = t477 ).
    t475->load( ).
    APPEND t476 TO t475->items.
    t475->save( ).
    DATA(t478) = t5.
    DATA t479 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t480) = zlnt_runtime_desc_78196487750d=>zlnt_member_d618_d0401872cf67.
    t479 = zcl_lnt_sr_combi_module=>sta( i_s = t480 ).
    t478->load( ).
    APPEND t479 TO t478->items.
    t478->save( ).
    DATA(t481) = t5.
    DATA t482 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t483) = zlnt_runtime_desc_78196487750d=>zlnt_member_d619_508b589f3d2e.
    t482 = zcl_lnt_sr_combi_module=>sta( i_s = t483 ).
    t481->load( ).
    APPEND t482 TO t481->items.
    t481->save( ).
    DATA(t484) = t5.
    DATA t485 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t486) = zlnt_runtime_desc_78196487750d=>zlnt_member_d620_cd4713e20a55.
    t485 = zcl_lnt_sr_combi_module=>sta( i_s = t486 ).
    t484->load( ).
    APPEND t485 TO t484->items.
    t484->save( ).
    DATA(t487) = t5.
    DATA t488 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t489) = zlnt_runtime_desc_78196487750d=>zlnt_member_d621_751bea4dfd13.
    t488 = zcl_lnt_sr_combi_module=>sta( i_s = t489 ).
    t487->load( ).
    APPEND t488 TO t487->items.
    t487->save( ).
    DATA(t490) = t5.
    DATA t491 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t492) = zlnt_runtime_desc_78196487750d=>zlnt_member_d622_22348e0e5a4a.
    t491 = zcl_lnt_sr_combi_module=>sta( i_s = t492 ).
    t490->load( ).
    APPEND t491 TO t490->items.
    t490->save( ).
    DATA(t493) = t5.
    DATA t494 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t495) = zlnt_runtime_desc_78196487750d=>zlnt_member_d623_7a575cea258b.
    t494 = zcl_lnt_sr_combi_module=>sta( i_s = t495 ).
    t493->load( ).
    APPEND t494 TO t493->items.
    t493->save( ).
    DATA(t496) = t5.
    DATA t497 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t498) = zlnt_runtime_desc_78196487750d=>zlnt_member_d624_913a872f90ff.
    t497 = zcl_lnt_sr_combi_module=>sta( i_s = t498 ).
    t496->load( ).
    APPEND t497 TO t496->items.
    t496->save( ).
    DATA(t499) = t5.
    DATA t500 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t501) = zlnt_runtime_desc_78196487750d=>zlnt_member_d626_f3ef33f84a31.
    t500 = zcl_lnt_sr_combi_module=>sta( i_s = t501 ).
    t499->load( ).
    APPEND t500 TO t499->items.
    t499->save( ).
    DATA(t502) = t5.
    DATA t503 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t504) = zlnt_runtime_desc_78196487750d=>zlnt_member_d627_f84ab06e93b0.
    t503 = zcl_lnt_sr_combi_module=>sta( i_s = t504 ).
    t502->load( ).
    APPEND t503 TO t502->items.
    t502->save( ).
    DATA(t505) = t5.
    DATA t506 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t507) = zlnt_runtime_desc_78196487750d=>zlnt_member_d628_cfdd2fb07e82.
    t506 = zcl_lnt_sr_combi_module=>sta( i_s = t507 ).
    t505->load( ).
    APPEND t506 TO t505->items.
    t505->save( ).
    DATA(t508) = t5.
    DATA t509 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t510) = zlnt_runtime_desc_78196487750d=>zlnt_member_d629_0a8dd0d3dcb1.
    t509 = zcl_lnt_sr_combi_module=>sta( i_s = t510 ).
    t508->load( ).
    APPEND t509 TO t508->items.
    t508->save( ).
    DATA(t511) = t5.
    DATA t512 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t513) = zlnt_runtime_desc_78196487750d=>zlnt_member_d630_29a26eca8597.
    t512 = zcl_lnt_sr_combi_module=>sta( i_s = t513 ).
    t511->load( ).
    APPEND t512 TO t511->items.
    t511->save( ).
    DATA(t514) = t5.
    DATA t515 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t516) = zlnt_runtime_desc_78196487750d=>zlnt_member_d631_2e1c51afeaec.
    t515 = zcl_lnt_sr_combi_module=>sta( i_s = t516 ).
    t514->load( ).
    APPEND t515 TO t514->items.
    t514->save( ).
    DATA(t517) = t5.
    DATA t518 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t519) = zlnt_runtime_desc_78196487750d=>zlnt_member_d632_80406c76d4d2.
    t518 = zcl_lnt_sr_combi_module=>sta( i_s = t519 ).
    t517->load( ).
    APPEND t518 TO t517->items.
    t517->save( ).
    DATA(t520) = t5.
    DATA t521 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t522) = zlnt_runtime_desc_78196487750d=>zlnt_member_d634_296da5784fa0.
    t521 = zcl_lnt_sr_combi_module=>sta( i_s = t522 ).
    t520->load( ).
    APPEND t521 TO t520->items.
    t520->save( ).
    DATA(t523) = t5.
    DATA t524 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t525) = zlnt_runtime_desc_78196487750d=>zlnt_member_d633_05143d333e6b.
    t524 = zcl_lnt_sr_combi_module=>sta( i_s = t525 ).
    t523->load( ).
    APPEND t524 TO t523->items.
    t523->save( ).
    DATA(t526) = t5.
    DATA t527 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t528) = zlnt_runtime_desc_78196487750d=>zlnt_member_d635_768248399129.
    t527 = zcl_lnt_sr_combi_module=>sta( i_s = t528 ).
    t526->load( ).
    APPEND t527 TO t526->items.
    t526->save( ).
    DATA(t529) = t5.
    DATA t530 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t531) = zlnt_runtime_desc_78196487750d=>zlnt_member_d636_2af4328d1698.
    t530 = zcl_lnt_sr_combi_module=>sta( i_s = t531 ).
    t529->load( ).
    APPEND t530 TO t529->items.
    t529->save( ).
    DATA(t532) = t5.
    DATA t533 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t534) = zlnt_runtime_desc_78196487750d=>zlnt_member_d638_258fef9d164f.
    t533 = zcl_lnt_sr_combi_module=>sta( i_s = t534 ).
    t532->load( ).
    APPEND t533 TO t532->items.
    t532->save( ).
    DATA(t535) = t5.
    DATA t536 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t537) = zlnt_runtime_desc_78196487750d=>zlnt_member_d637_e1b56c12a066.
    t536 = zcl_lnt_sr_combi_module=>sta( i_s = t537 ).
    t535->load( ).
    APPEND t536 TO t535->items.
    t535->save( ).
    DATA(t538) = t5.
    DATA t539 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t540) = zlnt_runtime_desc_78196487750d=>zlnt_member_d641_00cf48ea9524.
    t539 = zcl_lnt_sr_combi_module=>sta( i_s = t540 ).
    t538->load( ).
    APPEND t539 TO t538->items.
    t538->save( ).
    DATA(t541) = t5.
    DATA t542 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t543) = zlnt_runtime_desc_78196487750d=>zlnt_member_d639_4ef4c34a3896.
    t542 = zcl_lnt_sr_combi_module=>sta( i_s = t543 ).
    t541->load( ).
    APPEND t542 TO t541->items.
    t541->save( ).
    DATA(t544) = t5.
    DATA t545 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t546) = zlnt_runtime_desc_78196487750d=>zlnt_member_d644_abb5598808bc.
    t545 = zcl_lnt_sr_combi_module=>sta( i_s = t546 ).
    t544->load( ).
    APPEND t545 TO t544->items.
    t544->save( ).
    DATA(t547) = t5.
    DATA t548 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t549) = zlnt_runtime_desc_78196487750d=>zlnt_member_d645_168d2de480b7.
    t548 = zcl_lnt_sr_combi_module=>sta( i_s = t549 ).
    t547->load( ).
    APPEND t548 TO t547->items.
    t547->save( ).
    DATA(t550) = t5.
    DATA t551 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t552) = zlnt_runtime_desc_78196487750d=>zlnt_member_d649_e10823f76e5a.
    t551 = zcl_lnt_sr_combi_module=>sta( i_s = t552 ).
    t550->load( ).
    APPEND t551 TO t550->items.
    t550->save( ).
    DATA(t553) = t5.
    DATA t554 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t555) = zlnt_runtime_desc_78196487750d=>zlnt_member_d647_186232ae1b1d.
    t554 = zcl_lnt_sr_combi_module=>sta( i_s = t555 ).
    t553->load( ).
    APPEND t554 TO t553->items.
    t553->save( ).
    DATA(t556) = t5.
    DATA t557 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t558) = zlnt_runtime_desc_78196487750d=>zlnt_member_d646_6fd621a940aa.
    t557 = zcl_lnt_sr_combi_module=>sta( i_s = t558 ).
    t556->load( ).
    APPEND t557 TO t556->items.
    t556->save( ).
    DATA(t559) = t5.
    DATA t560 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t561) = zlnt_runtime_desc_78196487750d=>zlnt_member_d651_70a86313b382.
    t560 = zcl_lnt_sr_combi_module=>sta( i_s = t561 ).
    t559->load( ).
    APPEND t560 TO t559->items.
    t559->save( ).
    DATA(t562) = t5.
    DATA t563 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t564) = zlnt_runtime_desc_78196487750d=>zlnt_member_d650_9812fc275905.
    t563 = zcl_lnt_sr_combi_module=>sta( i_s = t564 ).
    t562->load( ).
    APPEND t563 TO t562->items.
    t562->save( ).
    DATA(t565) = t5.
    DATA t566 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t567) = zlnt_runtime_desc_78196487750d=>zlnt_member_d648_a329ded75973.
    t566 = zcl_lnt_sr_combi_module=>sta( i_s = t567 ).
    t565->load( ).
    APPEND t566 TO t565->items.
    t565->save( ).
    DATA(t568) = t5.
    DATA t569 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t570) = zlnt_runtime_desc_78196487750d=>zlnt_member_d652_19a00458d095.
    t569 = zcl_lnt_sr_combi_module=>sta( i_s = t570 ).
    t568->load( ).
    APPEND t569 TO t568->items.
    t568->save( ).
    DATA(t571) = t5.
    DATA t572 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t573) = zlnt_runtime_desc_78196487750d=>zlnt_member_d653_c743c6599b22.
    t572 = zcl_lnt_sr_combi_module=>sta( i_s = t573 ).
    t571->load( ).
    APPEND t572 TO t571->items.
    t571->save( ).
    DATA(t574) = t5.
    DATA t575 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t576) = zlnt_runtime_desc_78196487750d=>zlnt_member_d654_e863c0d09c0d.
    t575 = zcl_lnt_sr_combi_module=>sta( i_s = t576 ).
    t574->load( ).
    APPEND t575 TO t574->items.
    t574->save( ).
    DATA(t577) = t5.
    DATA t578 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t579) = zlnt_runtime_desc_78196487750d=>zlnt_member_d658_e6a4aeea4651.
    t578 = zcl_lnt_sr_combi_module=>sta( i_s = t579 ).
    t577->load( ).
    APPEND t578 TO t577->items.
    t577->save( ).
    DATA(t580) = t5.
    DATA t581 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t582) = zlnt_runtime_desc_78196487750d=>zlnt_member_d659_2ad70848144e.
    t581 = zcl_lnt_sr_combi_module=>sta( i_s = t582 ).
    t580->load( ).
    APPEND t581 TO t580->items.
    t580->save( ).
    DATA(t583) = t5.
    DATA t584 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t585) = zlnt_runtime_desc_78196487750d=>zlnt_member_d662_d497981e80c2.
    t584 = zcl_lnt_sr_combi_module=>sta( i_s = t585 ).
    t583->load( ).
    APPEND t584 TO t583->items.
    t583->save( ).
    DATA(t586) = t5.
    DATA t587 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t588) = zlnt_runtime_desc_78196487750d=>zlnt_member_d672_80ccb3caa5ab.
    t587 = zcl_lnt_sr_combi_module=>sta( i_s = t588 ).
    t586->load( ).
    APPEND t587 TO t586->items.
    t586->save( ).
    DATA(t589) = t5.
    DATA t590 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t591) = zlnt_runtime_desc_78196487750d=>zlnt_member_d673_c736795e75df.
    t590 = zcl_lnt_sr_combi_module=>sta( i_s = t591 ).
    t589->load( ).
    APPEND t590 TO t589->items.
    t589->save( ).
    DATA(t592) = t5.
    DATA t593 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t594) = zlnt_runtime_desc_78196487750d=>zlnt_member_d674_198701244568.
    t593 = zcl_lnt_sr_combi_module=>sta( i_s = t594 ).
    t592->load( ).
    APPEND t593 TO t592->items.
    t592->save( ).
    DATA(t595) = t5.
    DATA t596 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t597) = zlnt_runtime_desc_78196487750d=>zlnt_member_d675_f86cc5df5551.
    t596 = zcl_lnt_sr_combi_module=>sta( i_s = t597 ).
    t595->load( ).
    APPEND t596 TO t595->items.
    t595->save( ).
    DATA(t598) = t5.
    DATA t599 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t600) = zlnt_runtime_desc_78196487750d=>zlnt_member_d676_4264b2ce5dbc.
    t599 = zcl_lnt_sr_combi_module=>sta( i_s = t600 ).
    t598->load( ).
    APPEND t599 TO t598->items.
    t598->save( ).
    DATA(t601) = t5.
    DATA t602 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t603) = zlnt_runtime_desc_78196487750d=>zlnt_member_d678_fe590cf1b90c.
    t602 = zcl_lnt_sr_combi_module=>sta( i_s = t603 ).
    t601->load( ).
    APPEND t602 TO t601->items.
    t601->save( ).
    DATA(t604) = t5.
    DATA t605 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t606) = zlnt_runtime_desc_78196487750d=>zlnt_member_d683_aa96b8bd10e1.
    t605 = zcl_lnt_sr_combi_module=>sta( i_s = t606 ).
    t604->load( ).
    APPEND t605 TO t604->items.
    t604->save( ).
    DATA(t607) = t5.
    DATA t608 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t609) = zlnt_runtime_desc_78196487750d=>zlnt_member_d686_ec8dd7b90bc5.
    t608 = zcl_lnt_sr_combi_module=>sta( i_s = t609 ).
    t607->load( ).
    APPEND t608 TO t607->items.
    t607->save( ).
    DATA(t610) = t5.
    DATA t611 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t612) = zlnt_runtime_desc_78196487750d=>zlnt_member_d421_ab7bd290a35d.
    t611 = zcl_lnt_sr_combi_module=>sta( i_s = t612 ).
    t610->load( ).
    APPEND t611 TO t610->items.
    t610->save( ).
    DATA(t613) = t5.
    DATA t614 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t615) = zlnt_runtime_desc_78196487750d=>zlnt_member_d518_af85f98e0d0f.
    t614 = zcl_lnt_sr_combi_module=>sta( i_s = t615 ).
    t613->load( ).
    APPEND t614 TO t613->items.
    t613->save( ).
    DATA(t616) = t5.
    DATA t617 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t618) = zlnt_runtime_desc_78196487750d=>zlnt_member_d625_65157f2d1fb3.
    t617 = zcl_lnt_sr_combi_module=>sta( i_s = t618 ).
    t616->load( ).
    APPEND t617 TO t616->items.
    t616->save( ).
    DATA(t619) = t5.
    DATA t620 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t621) = zlnt_runtime_desc_78196487750d=>zlnt_member_d556_7450efba98d4.
    t620 = zcl_lnt_sr_combi_module=>sta( i_s = t621 ).
    t619->load( ).
    APPEND t620 TO t619->items.
    t619->save( ).
    DATA(t622) = t5.
    DATA t623 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t624) = zlnt_runtime_desc_78196487750d=>zlnt_member_d591_802cad6c5ea5.
    t623 = zcl_lnt_sr_combi_module=>sta( i_s = t624 ).
    t622->load( ).
    APPEND t623 TO t622->items.
    t622->save( ).
    DATA(t625) = t5.
    DATA t626 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t627) = zlnt_runtime_desc_78196487750d=>zlnt_member_d607_bbac092fc6e3.
    t626 = zcl_lnt_sr_combi_module=>sta( i_s = t627 ).
    t625->load( ).
    APPEND t626 TO t625->items.
    t625->save( ).
    DATA(t628) = t5.
    DATA t629 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t630) = zlnt_runtime_desc_78196487750d=>zlnt_member_d560_1073f613c8c9.
    t629 = zcl_lnt_sr_combi_module=>sta( i_s = t630 ).
    t628->load( ).
    APPEND t629 TO t628->items.
    t628->save( ).
    DATA(t631) = t5.
    DATA t632 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t633) = zlnt_runtime_desc_78196487750d=>zlnt_member_d495_455bba123ac8.
    t632 = zcl_lnt_sr_combi_module=>sta( i_s = t633 ).
    t631->load( ).
    APPEND t632 TO t631->items.
    t631->save( ).
    DATA(t634) = t5.
    DATA t635 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t636) = zlnt_runtime_desc_78196487750d=>zlnt_member_d714_49cf6811a616.
    t635 = zcl_lnt_sr_combi_module=>sub( i_s = t636 ).
    t634->load( ).
    APPEND t635 TO t634->items.
    t634->save( ).
    DATA(t637) = t5.
    DATA t638 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t639) = zlnt_runtime_desc_78196487750d=>zlnt_member_d720_0fac5ead5b3f.
    t638 = zcl_lnt_sr_combi_module=>sub( i_s = t639 ).
    t637->load( ).
    APPEND t638 TO t637->items.
    t637->save( ).
    DATA(t640) = t5.
    DATA t641 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t642) = zlnt_runtime_desc_78196487750d=>zlnt_member_d746_a08f21095411.
    t641 = zcl_lnt_sr_combi_module=>sub( i_s = t642 ).
    t640->load( ).
    APPEND t641 TO t640->items.
    t640->save( ).
    DATA(t643) = t5.
    DATA t644 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t645) = zlnt_runtime_desc_78196487750d=>zlnt_member_d747_68112758b030.
    t644 = zcl_lnt_sr_combi_module=>sub( i_s = t645 ).
    t643->load( ).
    APPEND t644 TO t643->items.
    t643->save( ).
    DATA(t646) = t5.
    DATA t647 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t648) = zlnt_runtime_desc_78196487750d=>zlnt_member_d748_9cf6b71481f2.
    t647 = zcl_lnt_sr_combi_module=>sub( i_s = t648 ).
    t646->load( ).
    APPEND t647 TO t646->items.
    t646->save( ).
    DATA(t649) = t5.
    DATA t650 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t651) = zlnt_runtime_desc_78196487750d=>zlnt_member_d749_d6fc7bfd346d.
    t650 = zcl_lnt_sr_combi_module=>sub( i_s = t651 ).
    t649->load( ).
    APPEND t650 TO t649->items.
    t649->save( ).
    DATA(t652) = t5.
    DATA t653 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t654) = zlnt_runtime_desc_78196487750d=>zlnt_member_d713_4226f4f67669.
    t653 = zcl_lnt_sr_combi_module=>sub( i_s = t654 ).
    t652->load( ).
    APPEND t653 TO t652->items.
    t652->save( ).
    DATA(t655) = t5.
    DATA t656 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t657) = zlnt_runtime_desc_78196487750d=>zlnt_member_d705_d5c8a90641bd.
    t656 = zcl_lnt_sr_combi_module=>sub( i_s = t657 ).
    t655->load( ).
    APPEND t656 TO t655->items.
    t655->save( ).
    DATA(t658) = t5.
    DATA t659 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t660) = zlnt_runtime_desc_78196487750d=>zlnt_member_d706_b5e09ff8af85.
    t659 = zcl_lnt_sr_combi_module=>sub( i_s = t660 ).
    t658->load( ).
    APPEND t659 TO t658->items.
    t658->save( ).
    DATA(t661) = t5.
    DATA t662 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t663) = zlnt_runtime_desc_78196487750d=>zlnt_member_d707_8cc2599df085.
    t662 = zcl_lnt_sr_combi_module=>sub( i_s = t663 ).
    t661->load( ).
    APPEND t662 TO t661->items.
    t661->save( ).
    DATA(t664) = t5.
    DATA t665 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t666) = zlnt_runtime_desc_78196487750d=>zlnt_member_d723_8da98a28a8d6.
    t665 = zcl_lnt_sr_combi_module=>sub( i_s = t666 ).
    t664->load( ).
    APPEND t665 TO t664->items.
    t664->save( ).
    DATA(t667) = t5.
    DATA t668 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t669) = zlnt_runtime_desc_78196487750d=>zlnt_member_d725_2037e58f2db9.
    t668 = zcl_lnt_sr_combi_module=>sub( i_s = t669 ).
    t667->load( ).
    APPEND t668 TO t667->items.
    t667->save( ).
    DATA(t670) = t5.
    DATA t671 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t672) = zlnt_runtime_desc_78196487750d=>zlnt_member_d750_2d45c5b37c94.
    t671 = zcl_lnt_sr_combi_module=>sub( i_s = t672 ).
    t670->load( ).
    APPEND t671 TO t670->items.
    t670->save( ).
    DATA(t673) = t5.
    DATA t674 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t675) = zlnt_runtime_desc_78196487750d=>zlnt_member_d751_4d9c6e99dfab.
    t674 = zcl_lnt_sr_combi_module=>sub( i_s = t675 ).
    t673->load( ).
    APPEND t674 TO t673->items.
    t673->save( ).
    DATA(t676) = t5.
    DATA t677 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t678) = zlnt_runtime_desc_78196487750d=>zlnt_member_d724_5dde4ab12008.
    t677 = zcl_lnt_sr_combi_module=>sub( i_s = t678 ).
    t676->load( ).
    APPEND t677 TO t676->items.
    t676->save( ).
    DATA(t679) = t5.
    DATA t680 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t681) = zlnt_runtime_desc_78196487750d=>zlnt_member_d752_e072d0e4db32.
    t680 = zcl_lnt_sr_combi_module=>sub( i_s = t681 ).
    t679->load( ).
    APPEND t680 TO t679->items.
    t679->save( ).
    DATA(t682) = t5.
    DATA t683 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t684) = zlnt_runtime_desc_78196487750d=>zlnt_member_d753_f3a2f457d984.
    t683 = zcl_lnt_sr_combi_module=>sub( i_s = t684 ).
    t682->load( ).
    APPEND t683 TO t682->items.
    t682->save( ).
    DATA(t685) = t5.
    DATA t686 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t687) = zlnt_runtime_desc_78196487750d=>zlnt_member_d754_7e0395e36d0a.
    t686 = zcl_lnt_sr_combi_module=>sub( i_s = t687 ).
    t685->load( ).
    APPEND t686 TO t685->items.
    t685->save( ).
    DATA(t688) = t5.
    DATA t689 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t690) = zlnt_runtime_desc_78196487750d=>zlnt_member_d727_3ba4cd3431c9.
    t689 = zcl_lnt_sr_combi_module=>sub( i_s = t690 ).
    t688->load( ).
    APPEND t689 TO t688->items.
    t688->save( ).
    DATA(t691) = t5.
    DATA t692 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t693) = zlnt_runtime_desc_78196487750d=>zlnt_member_d737_9a5557c762ef.
    t692 = zcl_lnt_sr_combi_module=>sub( i_s = t693 ).
    t691->load( ).
    APPEND t692 TO t691->items.
    t691->save( ).
    DATA t694 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t695) = t2.
    DATA(t696) = t5.
    t694 = zcl_lnt_sr_combi_module=>alt( i_first = t695 i_rest = t696 ).
    t1 = t694.
    result = t1.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d696_1c7fc9b8a532.
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
