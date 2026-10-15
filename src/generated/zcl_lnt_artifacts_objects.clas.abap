* TS: src/artifacts_objects.ts:5:1 ArtifactsObjects
CLASS zcl_lnt_artifacts_objects DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA object_map TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-METHODS new_object IMPORTING i_name TYPE string i_type_9913 TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_object.
    CLASS-METHODS build_object_map.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_artifacts_objects IMPLEMENTATION.
  METHOD new_object.
    DATA(t1) = CONV string( i_name ).
    DATA(t2) = CONV string( i_type_9913 ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = CAST zlnt_runtime_dyna_a429568d5be8( zcl_lnt_artifacts_objects=>object_map ).
    IF t4 IS NOT BOUND.
      t3 = abap_true.
    ELSE.
      t3 = xsdbool( t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t3 = abap_true.
      zcl_lnt_artifacts_objects=>build_object_map(  ).
    ENDIF.
    DATA t5 TYPE abap_bool.
    DATA(t6) = CONV string( t2 ).
    DATA(t7) = CONV string( |__proto__| ).
    t5 = xsdbool( t6 = t7 ).
    IF t5 = abap_true.
      DATA(t8) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t9) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t8->source_location = t9.
      RAISE EXCEPTION t8.
    ENDIF.
    DATA t10 TYPE abap_bool.
    DATA(t11) = CONV string( t2 ).
    DATA(t12) = CONV string( |constructor| ).
    t10 = xsdbool( t11 = t12 ).
    IF t10 = abap_true.
      DATA(t13) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t14) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t13->source_location = t14.
      RAISE EXCEPTION t13.
    ENDIF.
    DATA t15 TYPE abap_bool.
    DATA(t16) = CONV string( t2 ).
    DATA(t17) = CONV string( |length| ).
    t15 = xsdbool( t16 = t17 ).
    IF t15 = abap_true.
      DATA(t18) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t19) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t18->source_location = t19.
      RAISE EXCEPTION t18.
    ENDIF.
    DATA t20 TYPE abap_bool.
    DATA(t21) = CONV string( t2 ).
    DATA(t22) = CONV string( |toString| ).
    t20 = xsdbool( t21 = t22 ).
    IF t20 = abap_true.
      DATA(t23) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t24) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t23->source_location = t24.
      RAISE EXCEPTION t23.
    ENDIF.
    DATA t25 TYPE abap_bool.
    DATA(t26) = CONV string( t2 ).
    DATA(t27) = CONV string( |toLocaleString| ).
    t25 = xsdbool( t26 = t27 ).
    IF t25 = abap_true.
      DATA(t28) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t29) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t28->source_location = t29.
      RAISE EXCEPTION t28.
    ENDIF.
    DATA t30 TYPE abap_bool.
    DATA(t31) = CONV string( t2 ).
    DATA(t32) = CONV string( |valueOf| ).
    t30 = xsdbool( t31 = t32 ).
    IF t30 = abap_true.
      DATA(t33) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t34) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t33->source_location = t34.
      RAISE EXCEPTION t33.
    ENDIF.
    DATA t35 TYPE abap_bool.
    DATA(t36) = CONV string( t2 ).
    DATA(t37) = CONV string( |hasOwnProperty| ).
    t35 = xsdbool( t36 = t37 ).
    IF t35 = abap_true.
      DATA(t38) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t39) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t38->source_location = t39.
      RAISE EXCEPTION t38.
    ENDIF.
    DATA t40 TYPE abap_bool.
    DATA(t41) = CONV string( t2 ).
    DATA(t42) = CONV string( |isPrototypeOf| ).
    t40 = xsdbool( t41 = t42 ).
    IF t40 = abap_true.
      DATA(t43) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t44) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t43->source_location = t44.
      RAISE EXCEPTION t43.
    ENDIF.
    DATA t45 TYPE abap_bool.
    DATA(t46) = CONV string( t2 ).
    DATA(t47) = CONV string( |propertyIsEnumerable| ).
    t45 = xsdbool( t46 = t47 ).
    IF t45 = abap_true.
      DATA(t48) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t49) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t48->source_location = t49.
      RAISE EXCEPTION t48.
    ENDIF.
    DATA t50 TYPE abap_bool.
    DATA(t51) = CONV string( t2 ).
    DATA(t52) = CONV string( |__defineGetter__| ).
    t50 = xsdbool( t51 = t52 ).
    IF t50 = abap_true.
      DATA(t53) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t54) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t53->source_location = t54.
      RAISE EXCEPTION t53.
    ENDIF.
    DATA t55 TYPE abap_bool.
    DATA(t56) = CONV string( t2 ).
    DATA(t57) = CONV string( |__defineSetter__| ).
    t55 = xsdbool( t56 = t57 ).
    IF t55 = abap_true.
      DATA(t58) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t59) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t58->source_location = t59.
      RAISE EXCEPTION t58.
    ENDIF.
    DATA t60 TYPE abap_bool.
    DATA(t61) = CONV string( t2 ).
    DATA(t62) = CONV string( |__lookupGetter__| ).
    t60 = xsdbool( t61 = t62 ).
    IF t60 = abap_true.
      DATA(t63) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t64) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t63->source_location = t64.
      RAISE EXCEPTION t63.
    ENDIF.
    DATA t65 TYPE abap_bool.
    DATA(t66) = CONV string( t2 ).
    DATA(t67) = CONV string( |__lookupSetter__| ).
    t65 = xsdbool( t66 = t67 ).
    IF t65 = abap_true.
      DATA(t68) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t69) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t68->source_location = t69.
      RAISE EXCEPTION t68.
    ENDIF.
    DATA t70 TYPE abap_bool.
    DATA(t71) = CONV string( t2 ).
    DATA(t72) = CONV string( |at| ).
    t70 = xsdbool( t71 = t72 ).
    IF t70 = abap_true.
      DATA(t73) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t74) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t73->source_location = t74.
      RAISE EXCEPTION t73.
    ENDIF.
    DATA t75 TYPE abap_bool.
    DATA(t76) = CONV string( t2 ).
    DATA(t77) = CONV string( |concat| ).
    t75 = xsdbool( t76 = t77 ).
    IF t75 = abap_true.
      DATA(t78) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t79) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t78->source_location = t79.
      RAISE EXCEPTION t78.
    ENDIF.
    DATA t80 TYPE abap_bool.
    DATA(t81) = CONV string( t2 ).
    DATA(t82) = CONV string( |copyWithin| ).
    t80 = xsdbool( t81 = t82 ).
    IF t80 = abap_true.
      DATA(t83) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t84) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t83->source_location = t84.
      RAISE EXCEPTION t83.
    ENDIF.
    DATA t85 TYPE abap_bool.
    DATA(t86) = CONV string( t2 ).
    DATA(t87) = CONV string( |entries| ).
    t85 = xsdbool( t86 = t87 ).
    IF t85 = abap_true.
      DATA(t88) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t89) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t88->source_location = t89.
      RAISE EXCEPTION t88.
    ENDIF.
    DATA t90 TYPE abap_bool.
    DATA(t91) = CONV string( t2 ).
    DATA(t92) = CONV string( |every| ).
    t90 = xsdbool( t91 = t92 ).
    IF t90 = abap_true.
      DATA(t93) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t94) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t93->source_location = t94.
      RAISE EXCEPTION t93.
    ENDIF.
    DATA t95 TYPE abap_bool.
    DATA(t96) = CONV string( t2 ).
    DATA(t97) = CONV string( |fill| ).
    t95 = xsdbool( t96 = t97 ).
    IF t95 = abap_true.
      DATA(t98) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t99) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t98->source_location = t99.
      RAISE EXCEPTION t98.
    ENDIF.
    DATA t100 TYPE abap_bool.
    DATA(t101) = CONV string( t2 ).
    DATA(t102) = CONV string( |filter| ).
    t100 = xsdbool( t101 = t102 ).
    IF t100 = abap_true.
      DATA(t103) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t104) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t103->source_location = t104.
      RAISE EXCEPTION t103.
    ENDIF.
    DATA t105 TYPE abap_bool.
    DATA(t106) = CONV string( t2 ).
    DATA(t107) = CONV string( |find| ).
    t105 = xsdbool( t106 = t107 ).
    IF t105 = abap_true.
      DATA(t108) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t109) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t108->source_location = t109.
      RAISE EXCEPTION t108.
    ENDIF.
    DATA t110 TYPE abap_bool.
    DATA(t111) = CONV string( t2 ).
    DATA(t112) = CONV string( |findIndex| ).
    t110 = xsdbool( t111 = t112 ).
    IF t110 = abap_true.
      DATA(t113) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t114) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t113->source_location = t114.
      RAISE EXCEPTION t113.
    ENDIF.
    DATA t115 TYPE abap_bool.
    DATA(t116) = CONV string( t2 ).
    DATA(t117) = CONV string( |findLast| ).
    t115 = xsdbool( t116 = t117 ).
    IF t115 = abap_true.
      DATA(t118) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t119) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t118->source_location = t119.
      RAISE EXCEPTION t118.
    ENDIF.
    DATA t120 TYPE abap_bool.
    DATA(t121) = CONV string( t2 ).
    DATA(t122) = CONV string( |findLastIndex| ).
    t120 = xsdbool( t121 = t122 ).
    IF t120 = abap_true.
      DATA(t123) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t124) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t123->source_location = t124.
      RAISE EXCEPTION t123.
    ENDIF.
    DATA t125 TYPE abap_bool.
    DATA(t126) = CONV string( t2 ).
    DATA(t127) = CONV string( |flat| ).
    t125 = xsdbool( t126 = t127 ).
    IF t125 = abap_true.
      DATA(t128) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t129) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t128->source_location = t129.
      RAISE EXCEPTION t128.
    ENDIF.
    DATA t130 TYPE abap_bool.
    DATA(t131) = CONV string( t2 ).
    DATA(t132) = CONV string( |flatMap| ).
    t130 = xsdbool( t131 = t132 ).
    IF t130 = abap_true.
      DATA(t133) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t134) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t133->source_location = t134.
      RAISE EXCEPTION t133.
    ENDIF.
    DATA t135 TYPE abap_bool.
    DATA(t136) = CONV string( t2 ).
    DATA(t137) = CONV string( |forEach| ).
    t135 = xsdbool( t136 = t137 ).
    IF t135 = abap_true.
      DATA(t138) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t139) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t138->source_location = t139.
      RAISE EXCEPTION t138.
    ENDIF.
    DATA t140 TYPE abap_bool.
    DATA(t141) = CONV string( t2 ).
    DATA(t142) = CONV string( |includes| ).
    t140 = xsdbool( t141 = t142 ).
    IF t140 = abap_true.
      DATA(t143) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t144) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t143->source_location = t144.
      RAISE EXCEPTION t143.
    ENDIF.
    DATA t145 TYPE abap_bool.
    DATA(t146) = CONV string( t2 ).
    DATA(t147) = CONV string( |indexOf| ).
    t145 = xsdbool( t146 = t147 ).
    IF t145 = abap_true.
      DATA(t148) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t149) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t148->source_location = t149.
      RAISE EXCEPTION t148.
    ENDIF.
    DATA t150 TYPE abap_bool.
    DATA(t151) = CONV string( t2 ).
    DATA(t152) = CONV string( |join| ).
    t150 = xsdbool( t151 = t152 ).
    IF t150 = abap_true.
      DATA(t153) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t154) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t153->source_location = t154.
      RAISE EXCEPTION t153.
    ENDIF.
    DATA t155 TYPE abap_bool.
    DATA(t156) = CONV string( t2 ).
    DATA(t157) = CONV string( |keys| ).
    t155 = xsdbool( t156 = t157 ).
    IF t155 = abap_true.
      DATA(t158) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t159) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t158->source_location = t159.
      RAISE EXCEPTION t158.
    ENDIF.
    DATA t160 TYPE abap_bool.
    DATA(t161) = CONV string( t2 ).
    DATA(t162) = CONV string( |lastIndexOf| ).
    t160 = xsdbool( t161 = t162 ).
    IF t160 = abap_true.
      DATA(t163) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t164) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t163->source_location = t164.
      RAISE EXCEPTION t163.
    ENDIF.
    DATA t165 TYPE abap_bool.
    DATA(t166) = CONV string( t2 ).
    DATA(t167) = CONV string( |map| ).
    t165 = xsdbool( t166 = t167 ).
    IF t165 = abap_true.
      DATA(t168) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t169) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t168->source_location = t169.
      RAISE EXCEPTION t168.
    ENDIF.
    DATA t170 TYPE abap_bool.
    DATA(t171) = CONV string( t2 ).
    DATA(t172) = CONV string( |pop| ).
    t170 = xsdbool( t171 = t172 ).
    IF t170 = abap_true.
      DATA(t173) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t174) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t173->source_location = t174.
      RAISE EXCEPTION t173.
    ENDIF.
    DATA t175 TYPE abap_bool.
    DATA(t176) = CONV string( t2 ).
    DATA(t177) = CONV string( |push| ).
    t175 = xsdbool( t176 = t177 ).
    IF t175 = abap_true.
      DATA(t178) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t179) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t178->source_location = t179.
      RAISE EXCEPTION t178.
    ENDIF.
    DATA t180 TYPE abap_bool.
    DATA(t181) = CONV string( t2 ).
    DATA(t182) = CONV string( |reduce| ).
    t180 = xsdbool( t181 = t182 ).
    IF t180 = abap_true.
      DATA(t183) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t184) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t183->source_location = t184.
      RAISE EXCEPTION t183.
    ENDIF.
    DATA t185 TYPE abap_bool.
    DATA(t186) = CONV string( t2 ).
    DATA(t187) = CONV string( |reduceRight| ).
    t185 = xsdbool( t186 = t187 ).
    IF t185 = abap_true.
      DATA(t188) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t189) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t188->source_location = t189.
      RAISE EXCEPTION t188.
    ENDIF.
    DATA t190 TYPE abap_bool.
    DATA(t191) = CONV string( t2 ).
    DATA(t192) = CONV string( |reverse| ).
    t190 = xsdbool( t191 = t192 ).
    IF t190 = abap_true.
      DATA(t193) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t194) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t193->source_location = t194.
      RAISE EXCEPTION t193.
    ENDIF.
    DATA t195 TYPE abap_bool.
    DATA(t196) = CONV string( t2 ).
    DATA(t197) = CONV string( |shift| ).
    t195 = xsdbool( t196 = t197 ).
    IF t195 = abap_true.
      DATA(t198) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t199) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t198->source_location = t199.
      RAISE EXCEPTION t198.
    ENDIF.
    DATA t200 TYPE abap_bool.
    DATA(t201) = CONV string( t2 ).
    DATA(t202) = CONV string( |slice| ).
    t200 = xsdbool( t201 = t202 ).
    IF t200 = abap_true.
      DATA(t203) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t204) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t203->source_location = t204.
      RAISE EXCEPTION t203.
    ENDIF.
    DATA t205 TYPE abap_bool.
    DATA(t206) = CONV string( t2 ).
    DATA(t207) = CONV string( |some| ).
    t205 = xsdbool( t206 = t207 ).
    IF t205 = abap_true.
      DATA(t208) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t209) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t208->source_location = t209.
      RAISE EXCEPTION t208.
    ENDIF.
    DATA t210 TYPE abap_bool.
    DATA(t211) = CONV string( t2 ).
    DATA(t212) = CONV string( |sort| ).
    t210 = xsdbool( t211 = t212 ).
    IF t210 = abap_true.
      DATA(t213) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t214) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t213->source_location = t214.
      RAISE EXCEPTION t213.
    ENDIF.
    DATA t215 TYPE abap_bool.
    DATA(t216) = CONV string( t2 ).
    DATA(t217) = CONV string( |splice| ).
    t215 = xsdbool( t216 = t217 ).
    IF t215 = abap_true.
      DATA(t218) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t219) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t218->source_location = t219.
      RAISE EXCEPTION t218.
    ENDIF.
    DATA t220 TYPE abap_bool.
    DATA(t221) = CONV string( t2 ).
    DATA(t222) = CONV string( |toReversed| ).
    t220 = xsdbool( t221 = t222 ).
    IF t220 = abap_true.
      DATA(t223) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t224) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t223->source_location = t224.
      RAISE EXCEPTION t223.
    ENDIF.
    DATA t225 TYPE abap_bool.
    DATA(t226) = CONV string( t2 ).
    DATA(t227) = CONV string( |toSorted| ).
    t225 = xsdbool( t226 = t227 ).
    IF t225 = abap_true.
      DATA(t228) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t229) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t228->source_location = t229.
      RAISE EXCEPTION t228.
    ENDIF.
    DATA t230 TYPE abap_bool.
    DATA(t231) = CONV string( t2 ).
    DATA(t232) = CONV string( |toSpliced| ).
    t230 = xsdbool( t231 = t232 ).
    IF t230 = abap_true.
      DATA(t233) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t234) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t233->source_location = t234.
      RAISE EXCEPTION t233.
    ENDIF.
    DATA t235 TYPE abap_bool.
    DATA(t236) = CONV string( t2 ).
    DATA(t237) = CONV string( |unshift| ).
    t235 = xsdbool( t236 = t237 ).
    IF t235 = abap_true.
      DATA(t238) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t239) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t238->source_location = t239.
      RAISE EXCEPTION t238.
    ENDIF.
    DATA t240 TYPE abap_bool.
    DATA(t241) = CONV string( t2 ).
    DATA(t242) = CONV string( |values| ).
    t240 = xsdbool( t241 = t242 ).
    IF t240 = abap_true.
      DATA(t243) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t244) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t243->source_location = t244.
      RAISE EXCEPTION t243.
    ENDIF.
    DATA t245 TYPE abap_bool.
    DATA(t246) = CONV string( t2 ).
    DATA(t247) = CONV string( |with| ).
    t245 = xsdbool( t246 = t247 ).
    IF t245 = abap_true.
      DATA(t248) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t249) = CONV string( |Array prototype constructor lookup is unsupported| ).
      t248->source_location = t249.
      RAISE EXCEPTION t248.
    ENDIF.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t252) = CAST zlnt_runtime_dyna_a429568d5be8( zcl_lnt_artifacts_objects=>object_map ).
    DATA(t253) = CONV string( t2 ).
    t251 = t252->get( p0 = t253 ).
    t250 = t251.
    DATA(t254) = VALUE abap_bool( ).
    DATA(t255) = CAST zlnt_runtime_dyna_a429568d5be8( t250 ).
    IF t255 IS NOT BOUND.
      t254 = abap_true.
    ELSE.
      t254 = xsdbool( t255->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t254 = abap_true.
      DATA t256 TYPE REF TO zif_lnt_object.
      DATA t257 TYPE REF TO zcl_lnt_unknown_object.
      DATA(t258) = CONV string( t1 ).
      DATA(t259) = CONV string( t2 ).
      t257 = NEW zcl_lnt_unknown_object( i_name = t258 i_type_9913 = t259 ).
      t256 ?= t257.
      result = t256.
      RETURN.
    ENDIF.
    DATA t260 TYPE REF TO zif_lnt_object.
    DATA t261 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t262) = CAST zlnt_runtime_dyna_a429568d5be8( t250 ).
    t261 = t262->as_classvalue( ).
    DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t264 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t265 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t265.
    t264 = t265.
    DATA(t266) = CAST zlnt_runtime_arra_c22708faf2e3( t264 ).
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t267.
    DATA(t268) = CONV string( t1 ).
    CLEAR t267.
    CREATE OBJECT t267.
    t267->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t267->sval = t268.
    t266->load( ).
    APPEND t267 TO t266->items.
    t266->save( ).
    DATA(t269) = CAST zlnt_runtime_arra_c22708faf2e3( t264 ).
    t263 = t269.
    DATA t270 TYPE REF TO object.
    t270 = zlnt_runtime_clas_c216c6067abd=>new_args( p0 = t261 p1 = t263 ).
    t260 ?= t270.
    result = t260.
    RETURN.
  ENDMETHOD.
  METHOD build_object_map.
    DATA t1 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t1.
    DATA(t2) = NEW zlnt_runtime_map__a5ffc3d163a5(  ).
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA(t4) = CAST zlnt_runtime_map__a5ffc3d163a5( t1 ).
    CLEAR t3.
    IF t4 IS BOUND.
      DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t5.
      DATA t6 TYPE REF TO object.
      CLEAR t6.
      CLEAR t5.
      t6 = t4.
      TRY.
          t3 ?= t6.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t5 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t5 IS BOUND.
          t3 = t5->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    zcl_lnt_artifacts_objects=>object_map = t3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t8.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t8 = zcl_lnt_ob_index_module=>ns.
    t7 = t8->keys(  ).
    DATA(t9) = VALUE string( ).
    t7->dense( ).
    DATA(t10) = VALUE i( ).
    DO.
      t7->load( ).
      IF t10 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t7->items INDEX t10 + 1 INTO t9.
      IF t7->has( t10 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zif_lnt_object.
      CLEAR t11.
      DATA t12 TYPE REF TO zif_lnt_object.
      CLEAR t12.
      DATA t13 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t13.
      DATA t14 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
      CLEAR t15.
      IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
        zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
      ENDIF.
      t15 = zcl_lnt_ob_index_module=>ns.
      DATA(t16) = CONV string( t9 ).
      t14 = t15->get( p0 = t16 ).
      t13 = t14.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t19.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      DATA(t22) = CONV string( |DUMMY_NAME| ).
      CLEAR t21.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t21->sval = t22.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
      t17 = t23.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      t24 = zlnt_runtime_clas_c216c6067abd=>new_args( p0 = t13 p1 = t17 ).
      t12 ?= t24.
      t11 = t12.
      DATA t25 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
      CLEAR t25.
      DATA(t26) = CAST zlnt_runtime_map__a5ffc3d163a5( t1 ).
      DATA(t27) = VALUE string( ).
      DATA(t28) = CAST zif_lnt_object( t11 ).
      t27 = t28->get_type(  ).
      DATA t29 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
      CLEAR t31.
      IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
        zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
      ENDIF.
      t31 = zcl_lnt_ob_index_module=>ns.
      DATA(t32) = CONV string( t9 ).
      t30 = t31->get( p0 = t32 ).
      t29 = t30.
      t25 = t26->set( p0 = t27 p1 = t29 ).
    ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1067_bb04b04c7dec.
  ENDMETHOD.
ENDCLASS.
