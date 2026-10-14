* TS: src/cds/cds_lexer.ts:60:1 CDSLexer
CLASS zcl_lnt_cds_lexer DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run IMPORTING i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_lexer IMPLEMENTATION.
  METHOD run.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA t2 TYPE REF TO zcl_lnt_cd_result.
    DATA(t3) = NEW zcl_lnt_cd_result(  ).
    t2 = t3.
    DATA t4 TYPE i.
    DATA(t5) = 0.
    t4 = t5.
    DATA t6 TYPE int8.
    DATA(t7) = CONV int8( 1 ).
    t6 = t7.
    DATA t8 TYPE int8.
    DATA(t9) = CONV int8( 1 ).
    t8 = t9.
    DATA t10 TYPE string.
    DATA(t11) = ||.
    t10 = t11.
    DATA t12 TYPE REF TO zcl_lnt_stream.
    DATA t13 TYPE REF TO zcl_lnt_stream.
    DATA t14 TYPE string.
    DATA t15 TYPE string.
    DATA t16 TYPE string.
    DATA t17 TYPE string.
    DATA(t18) = CAST zif_lnt_file( t1 ).
    t17 = t18->get_raw(  ).
    DATA(t19) = ||.
    DATA t20 TYPE c LENGTH 1.
    CLEAR t20.
    t20 = cl_abap_conv_in_ce=>uccpi( 13 ).
    CONCATENATE t19 t20 INTO t19 RESPECTING BLANKS.
    DATA(t21) = ||.
    DATA(t22) = strlen( t17 ).
    t16 = t17.
    REPLACE ALL OCCURRENCES OF t19 IN t16 WITH t21.
    DATA t23 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t23.
    DATA(t24) = `\u00a0`.
    DATA(t25) = |g|.
    CREATE OBJECT t23 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t24 flags = t25.
    DATA(t26) = | |.
    DATA(t27) = strlen( t16 ).
    t15 = t23->replace( p0 = t16 p1 = t26 ).
    DATA t28 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t28.
    DATA(t29) = `\u000b`.
    DATA(t30) = |g|.
    CREATE OBJECT t28 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t29 flags = t30.
    DATA(t31) = | |.
    DATA(t32) = strlen( t15 ).
    t14 = t28->replace( p0 = t15 p1 = t31 ).
    t13 = NEW zcl_lnt_stream( i_buffer = t14 ).
    t12 = t13.
    DATA t33 TYPE string.
    DATA(t34) = ||.
    t33 = t34.
    DO.
      DATA t35 TYPE abap_bool.
      DATA t36 TYPE int8.
      DATA(t37) = CAST zcl_lnt_stream( t12 ).
      t36 = t37->length(  ).
      DATA(t38) = CONV int8( 0 ).
      t35 = xsdbool( t36 > t38 ).
      IF t35 = abap_false.
        EXIT.
      ENDIF.
      DATA t39 TYPE string.
      DATA(t40) = t33.
      t39 = t40.
      DATA t41 TYPE string.
      DATA(t42) = CAST zcl_lnt_stream( t12 ).
      t41 = t42->take_next(  ).
      t33 = t41.
      DATA t43 TYPE string.
      DATA t44 TYPE string.
      DATA(t45) = CAST zcl_lnt_stream( t12 ).
      t44 = t45->peek_next(  ).
      t43 = t44.
      DATA t46 TYPE int8.
      DATA(t47) = t8.
      DATA(t48) = CONV int8( 1 ).
      t46 = t47 + t48.
      IF t46 < range_int8_bound_min OR t46 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t8 = t46.
      DATA t49 TYPE abap_bool.
      DATA(t50) = t4.
      DATA(t51) = 1.
      t49 = xsdbool( t50 = t51 ).
      IF t49 = abap_true.
        DATA t52 TYPE string.
        DATA(t53) = t10.
        DATA(t54) = t33.
        DATA(t55) = strlen( t53 ).
        t52 = |{ t53 }{ t54 }|.
        t10 = t52.
        DATA t56 TYPE abap_bool.
        DATA t57 TYPE abap_bool.
        DATA(t58) = t33.
        DATA(t59) = |'|.
        t57 = xsdbool( t58 = t59 ).
        t56 = t57.
        IF t57 = abap_true.
          DATA t60 TYPE abap_bool.
          DATA(t61) = t43.
          DATA(t62) = |'|.
          t60 = xsdbool( t61 = t62 ).
          t56 = t60.
        ENDIF.
        IF t56 = abap_true.
          DATA t63 TYPE string.
          DATA(t64) = t10.
          DATA t65 TYPE string.
          DATA(t66) = CAST zcl_lnt_stream( t12 ).
          t65 = t66->take_next(  ).
          DATA(t67) = strlen( t64 ).
          t63 = |{ t64 }{ t65 }|.
          t10 = t63.
          DATA t68 TYPE int8.
          DATA(t69) = t8.
          DATA(t70) = CONV int8( 1 ).
          t68 = t69 + t70.
          IF t68 < range_int8_bound_min OR t68 > range_int8_bound_max.
            RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
          ENDIF.
          t8 = t68.
        ELSE.
          DATA t71 TYPE abap_bool.
          DATA t72 TYPE abap_bool.
          DATA(t73) = t33.
          DATA(t74) = `\`.
          t72 = xsdbool( t73 = t74 ).
          t71 = t72.
          IF t72 = abap_true.
            DATA t75 TYPE abap_bool.
            DATA(t76) = t43.
            DATA(t77) = `\`.
            t75 = xsdbool( t76 = t77 ).
            t71 = t75.
          ENDIF.
          IF t71 = abap_true.
            DATA t78 TYPE string.
            DATA(t79) = t10.
            DATA t80 TYPE string.
            DATA(t81) = CAST zcl_lnt_stream( t12 ).
            t80 = t81->take_next(  ).
            DATA(t82) = strlen( t79 ).
            t78 = |{ t79 }{ t80 }|.
            t10 = t78.
            DATA t83 TYPE int8.
            DATA(t84) = t8.
            DATA(t85) = CONV int8( 1 ).
            t83 = t84 + t85.
            IF t83 < range_int8_bound_min OR t83 > range_int8_bound_max.
              RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
            ENDIF.
            t8 = t83.
          ELSE.
            DATA t86 TYPE abap_bool.
            DATA t87 TYPE abap_bool.
            DATA(t88) = t33.
            DATA(t89) = `\`.
            t87 = xsdbool( t88 = t89 ).
            t86 = t87.
            IF t87 = abap_true.
              DATA t90 TYPE abap_bool.
              DATA(t91) = t43.
              DATA(t92) = |'|.
              t90 = xsdbool( t91 = t92 ).
              t86 = t90.
            ENDIF.
            IF t86 = abap_true.
              DATA t93 TYPE string.
              DATA(t94) = t10.
              DATA t95 TYPE string.
              DATA(t96) = CAST zcl_lnt_stream( t12 ).
              t95 = t96->take_next(  ).
              DATA(t97) = strlen( t94 ).
              t93 = |{ t94 }{ t95 }|.
              t10 = t93.
              DATA t98 TYPE int8.
              DATA(t99) = t8.
              DATA(t100) = CONV int8( 1 ).
              t98 = t99 + t100.
              IF t98 < range_int8_bound_min OR t98 > range_int8_bound_max.
                RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
              ENDIF.
              t8 = t98.
            ELSE.
              DATA t101 TYPE abap_bool.
              DATA(t102) = t33.
              DATA(t103) = |'|.
              t101 = xsdbool( t102 = t103 ).
              IF t101 = abap_true.
                DATA t104 TYPE string.
                DATA(t105) = CAST zcl_lnt_cd_result( t2 ).
                DATA(t106) = t10.
                DATA(t107) = t6.
                DATA(t108) = t8.
                DATA t109 TYPE int8.
                DATA(t110) = t4.
                t109 = t110.
                t104 = t105->add_51c1( i_text = t106 i_row = t107 i_col = t108 i_mode = t109 ).
                t10 = t104.
                DATA(t111) = 0.
                t4 = t111.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        CONTINUE.
      ENDIF.
      DATA t112 TYPE abap_bool.
      DATA(t113) = t4.
      DATA(t114) = 2.
      t112 = xsdbool( t113 = t114 ).
      IF t112 = abap_true.
        DATA t115 TYPE string.
        DATA(t116) = t10.
        DATA(t117) = t33.
        DATA(t118) = strlen( t116 ).
        t115 = |{ t116 }{ t117 }|.
        t10 = t115.
        DATA t119 TYPE abap_bool.
        DATA t120 TYPE abap_bool.
        DATA(t121) = t33.
        DATA(t122) = `\`.
        t120 = xsdbool( t121 = t122 ).
        t119 = t120.
        IF t120 = abap_true.
          DATA t123 TYPE abap_bool.
          DATA(t124) = t43.
          DATA(t125) = |"|.
          t123 = xsdbool( t124 = t125 ).
          t119 = t123.
        ENDIF.
        IF t119 = abap_true.
          DATA t126 TYPE string.
          DATA(t127) = t10.
          DATA t128 TYPE string.
          DATA(t129) = CAST zcl_lnt_stream( t12 ).
          t128 = t129->take_next(  ).
          DATA(t130) = strlen( t127 ).
          t126 = |{ t127 }{ t128 }|.
          t10 = t126.
          DATA t131 TYPE int8.
          DATA(t132) = t8.
          DATA(t133) = CONV int8( 1 ).
          t131 = t132 + t133.
          IF t131 < range_int8_bound_min OR t131 > range_int8_bound_max.
            RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
          ENDIF.
          t8 = t131.
        ELSE.
          DATA t134 TYPE abap_bool.
          DATA t135 TYPE abap_bool.
          DATA(t136) = t33.
          DATA(t137) = |"|.
          t135 = xsdbool( t136 = t137 ).
          t134 = t135.
          IF t135 = abap_true.
            DATA t138 TYPE abap_bool.
            DATA(t139) = t43.
            DATA(t140) = |"|.
            t138 = xsdbool( t139 = t140 ).
            t134 = t138.
          ENDIF.
          IF t134 = abap_true.
            DATA t141 TYPE string.
            DATA(t142) = t10.
            DATA t143 TYPE string.
            DATA(t144) = CAST zcl_lnt_stream( t12 ).
            t143 = t144->take_next(  ).
            DATA(t145) = strlen( t142 ).
            t141 = |{ t142 }{ t143 }|.
            t10 = t141.
            DATA t146 TYPE int8.
            DATA(t147) = t8.
            DATA(t148) = CONV int8( 1 ).
            t146 = t147 + t148.
            IF t146 < range_int8_bound_min OR t146 > range_int8_bound_max.
              RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
            ENDIF.
            t8 = t146.
          ELSE.
            DATA t149 TYPE abap_bool.
            DATA(t150) = t33.
            DATA(t151) = |"|.
            t149 = xsdbool( t150 = t151 ).
            IF t149 = abap_true.
              DATA t152 TYPE string.
              DATA(t153) = CAST zcl_lnt_cd_result( t2 ).
              DATA(t154) = t10.
              DATA(t155) = t6.
              DATA(t156) = t8.
              DATA t157 TYPE int8.
              DATA(t158) = t4.
              t157 = t158.
              t152 = t153->add_51c1( i_text = t154 i_row = t155 i_col = t156 i_mode = t157 ).
              t10 = t152.
              DATA(t159) = 0.
              t4 = t159.
            ENDIF.
          ENDIF.
        ENDIF.
        CONTINUE.
      ENDIF.
      DATA t160 TYPE abap_bool.
      DATA(t161) = t4.
      DATA(t162) = 3.
      t160 = xsdbool( t161 = t162 ).
      IF t160 = abap_true.
        DATA t163 TYPE abap_bool.
        DATA(t164) = t33.
        DATA(t165) = ||.
        DATA t166 TYPE c LENGTH 1.
        CLEAR t166.
        t166 = cl_abap_conv_in_ce=>uccpi( 10 ).
        CONCATENATE t165 t166 INTO t165 RESPECTING BLANKS.
        t163 = xsdbool( t164 = t165 ).
        IF t163 = abap_true.
          DATA t167 TYPE string.
          DATA(t168) = CAST zcl_lnt_cd_result( t2 ).
          DATA(t169) = t10.
          DATA(t170) = t6.
          DATA(t171) = t8.
          DATA t172 TYPE int8.
          DATA(t173) = t4.
          t172 = t173.
          t167 = t168->add_51c1( i_text = t169 i_row = t170 i_col = t171 i_mode = t172 ).
          t10 = t167.
          DATA(t174) = 0.
          t4 = t174.
        ELSE.
          DATA t175 TYPE string.
          DATA(t176) = t10.
          DATA(t177) = t33.
          DATA(t178) = strlen( t176 ).
          t175 = |{ t176 }{ t177 }|.
          t10 = t175.
          CONTINUE.
        ENDIF.
      ELSE.
        DATA(t179) = VALUE abap_bool( ).
        DATA t180 TYPE abap_bool.
        DATA t181 TYPE abap_bool.
        DATA(t182) = t4.
        DATA(t183) = 0.
        t181 = xsdbool( t182 = t183 ).
        t180 = t181.
        IF t181 = abap_true.
          DATA t184 TYPE abap_bool.
          DATA(t185) = t33.
          DATA(t186) = |/|.
          t184 = xsdbool( t185 = t186 ).
          t180 = t184.
        ENDIF.
        t179 = t180.
        IF t180 = abap_true.
          DATA t187 TYPE abap_bool.
          DATA(t188) = t43.
          DATA(t189) = |/|.
          t187 = xsdbool( t188 = t189 ).
          t179 = t187.
        ENDIF.
        IF t179 = abap_true.
          DATA(t190) = 3.
          t4 = t190.
          DATA t191 TYPE string.
          DATA(t192) = CAST zcl_lnt_cd_result( t2 ).
          DATA(t193) = t10.
          DATA(t194) = t6.
          DATA(t195) = t8.
          DATA t196 TYPE int8.
          DATA(t197) = t4.
          t196 = t197.
          t191 = t192->add_51c1( i_text = t193 i_row = t194 i_col = t195 i_mode = t196 ).
          t10 = t191.
          DATA t198 TYPE string.
          DATA(t199) = t10.
          DATA(t200) = t33.
          DATA(t201) = strlen( t199 ).
          t198 = |{ t199 }{ t200 }|.
          t10 = t198.
          CONTINUE.
        ELSE.
          DATA(t202) = VALUE abap_bool( ).
          DATA t203 TYPE abap_bool.
          DATA t204 TYPE abap_bool.
          DATA(t205) = t4.
          DATA(t206) = 0.
          t204 = xsdbool( t205 = t206 ).
          t203 = t204.
          IF t204 = abap_true.
            DATA t207 TYPE abap_bool.
            DATA(t208) = t33.
            DATA(t209) = |-|.
            t207 = xsdbool( t208 = t209 ).
            t203 = t207.
          ENDIF.
          t202 = t203.
          IF t203 = abap_true.
            DATA t210 TYPE abap_bool.
            DATA(t211) = t43.
            DATA(t212) = |-|.
            t210 = xsdbool( t211 = t212 ).
            t202 = t210.
          ENDIF.
          IF t202 = abap_true.
            DATA(t213) = 3.
            t4 = t213.
            DATA t214 TYPE string.
            DATA(t215) = CAST zcl_lnt_cd_result( t2 ).
            DATA(t216) = t10.
            DATA(t217) = t6.
            DATA(t218) = t8.
            DATA t219 TYPE int8.
            DATA(t220) = t4.
            t219 = t220.
            t214 = t215->add_51c1( i_text = t216 i_row = t217 i_col = t218 i_mode = t219 ).
            t10 = t214.
            DATA t221 TYPE string.
            DATA(t222) = t10.
            DATA(t223) = t33.
            DATA(t224) = strlen( t222 ).
            t221 = |{ t222 }{ t223 }|.
            t10 = t221.
            CONTINUE.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t225 TYPE abap_bool.
      DATA(t226) = t4.
      DATA(t227) = 4.
      t225 = xsdbool( t226 = t227 ).
      IF t225 = abap_true.
        DATA t228 TYPE abap_bool.
        DATA(t229) = t33.
        DATA(t230) = ||.
        DATA t231 TYPE c LENGTH 1.
        CLEAR t231.
        t231 = cl_abap_conv_in_ce=>uccpi( 10 ).
        CONCATENATE t230 t231 INTO t230 RESPECTING BLANKS.
        t228 = xsdbool( t229 = t230 ).
        IF t228 = abap_true.
          DATA t232 TYPE int8.
          DATA(t233) = t6.
          DATA(t234) = CONV int8( 1 ).
          t232 = t233 + t234.
          IF t232 < range_int8_bound_min OR t232 > range_int8_bound_max.
            RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
          ENDIF.
          t6 = t232.
        ELSE.
          DATA t235 TYPE abap_bool.
          DATA t236 TYPE abap_bool.
          DATA(t237) = t39.
          DATA(t238) = |*|.
          t236 = xsdbool( t237 = t238 ).
          t235 = t236.
          IF t236 = abap_true.
            DATA t239 TYPE abap_bool.
            DATA(t240) = t33.
            DATA(t241) = |/|.
            t239 = xsdbool( t240 = t241 ).
            t235 = t239.
          ENDIF.
          IF t235 = abap_true.
            DATA(t242) = 0.
            t4 = t242.
          ENDIF.
        ENDIF.
        CONTINUE.
      ELSE.
        DATA(t243) = VALUE abap_bool( ).
        DATA t244 TYPE abap_bool.
        DATA t245 TYPE abap_bool.
        DATA(t246) = t4.
        DATA(t247) = 0.
        t245 = xsdbool( t246 = t247 ).
        t244 = t245.
        IF t245 = abap_true.
          DATA t248 TYPE abap_bool.
          DATA(t249) = t33.
          DATA(t250) = |/|.
          t248 = xsdbool( t249 = t250 ).
          t244 = t248.
        ENDIF.
        t243 = t244.
        IF t244 = abap_true.
          DATA t251 TYPE abap_bool.
          DATA(t252) = t43.
          DATA(t253) = |*|.
          t251 = xsdbool( t252 = t253 ).
          t243 = t251.
        ENDIF.
        IF t243 = abap_true.
          DATA(t254) = 4.
          t4 = t254.
          DATA t255 TYPE string.
          DATA(t256) = CAST zcl_lnt_cd_result( t2 ).
          DATA(t257) = t10.
          DATA(t258) = t6.
          DATA(t259) = t8.
          DATA t260 TYPE int8.
          DATA(t261) = t4.
          t260 = t261.
          t255 = t256->add_51c1( i_text = t257 i_row = t258 i_col = t259 i_mode = t260 ).
          t10 = t255.
          DATA t262 TYPE string.
          DATA(t263) = CAST zcl_lnt_stream( t12 ).
          t262 = t263->take_next(  ).
          DATA t264 TYPE int8.
          DATA(t265) = t8.
          DATA(t266) = CONV int8( 1 ).
          t264 = t265 + t266.
          IF t264 < range_int8_bound_min OR t264 > range_int8_bound_max.
            RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
          ENDIF.
          t8 = t264.
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA t267 TYPE abap_bool.
      DATA(t268) = t33.
      DATA(t269) = |'|.
      t267 = xsdbool( t268 = t269 ).
      IF t267 = abap_true.
        DATA t270 TYPE string.
        DATA(t271) = CAST zcl_lnt_cd_result( t2 ).
        DATA(t272) = t10.
        DATA(t273) = t6.
        DATA(t274) = t8.
        DATA t275 TYPE int8.
        DATA(t276) = t4.
        t275 = t276.
        t270 = t271->add_51c1( i_text = t272 i_row = t273 i_col = t274 i_mode = t275 ).
        t10 = t270.
        DATA(t277) = 1.
        t4 = t277.
        DATA t278 TYPE string.
        DATA(t279) = t10.
        DATA(t280) = t33.
        DATA(t281) = strlen( t279 ).
        t278 = |{ t279 }{ t280 }|.
        t10 = t278.
      ELSE.
        DATA t282 TYPE abap_bool.
        DATA(t283) = t33.
        DATA(t284) = |"|.
        t282 = xsdbool( t283 = t284 ).
        IF t282 = abap_true.
          DATA t285 TYPE string.
          DATA(t286) = CAST zcl_lnt_cd_result( t2 ).
          DATA(t287) = t10.
          DATA(t288) = t6.
          DATA(t289) = t8.
          DATA t290 TYPE int8.
          DATA(t291) = t4.
          t290 = t291.
          t285 = t286->add_51c1( i_text = t287 i_row = t288 i_col = t289 i_mode = t290 ).
          t10 = t285.
          DATA(t292) = 2.
          t4 = t292.
          DATA t293 TYPE string.
          DATA(t294) = t10.
          DATA(t295) = t33.
          DATA(t296) = strlen( t294 ).
          t293 = |{ t294 }{ t295 }|.
          t10 = t293.
        ELSE.
          DATA t297 TYPE abap_bool.
          DATA(t298) = t33.
          DATA(t299) = | |.
          t297 = xsdbool( t298 = t299 ).
          IF t297 = abap_true.
            DATA t300 TYPE string.
            DATA(t301) = CAST zcl_lnt_cd_result( t2 ).
            DATA(t302) = t10.
            DATA(t303) = t6.
            DATA(t304) = t8.
            DATA t305 TYPE int8.
            DATA(t306) = t4.
            t305 = t306.
            t300 = t301->add_51c1( i_text = t302 i_row = t303 i_col = t304 i_mode = t305 ).
            t10 = t300.
          ELSE.
            DATA t307 TYPE abap_bool.
            DATA(t308) = t33.
            DATA(t309) = ||.
            DATA t310 TYPE c LENGTH 1.
            CLEAR t310.
            t310 = cl_abap_conv_in_ce=>uccpi( 9 ).
            CONCATENATE t309 t310 INTO t309 RESPECTING BLANKS.
            t307 = xsdbool( t308 = t309 ).
            IF t307 = abap_true.
              DATA t311 TYPE string.
              DATA(t312) = CAST zcl_lnt_cd_result( t2 ).
              DATA(t313) = t10.
              DATA(t314) = t6.
              DATA(t315) = t8.
              DATA t316 TYPE int8.
              DATA(t317) = t4.
              t316 = t317.
              t311 = t312->add_51c1( i_text = t313 i_row = t314 i_col = t315 i_mode = t316 ).
              t10 = t311.
            ELSE.
              DATA t318 TYPE abap_bool.
              DATA(t319) = t33.
              DATA(t320) = ||.
              DATA t321 TYPE c LENGTH 1.
              CLEAR t321.
              t321 = cl_abap_conv_in_ce=>uccpi( 10 ).
              CONCATENATE t320 t321 INTO t320 RESPECTING BLANKS.
              t318 = xsdbool( t319 = t320 ).
              IF t318 = abap_true.
                DATA t322 TYPE string.
                DATA(t323) = CAST zcl_lnt_cd_result( t2 ).
                DATA(t324) = t10.
                DATA(t325) = t6.
                DATA(t326) = t8.
                DATA t327 TYPE int8.
                DATA(t328) = t4.
                t327 = t328.
                t322 = t323->add_51c1( i_text = t324 i_row = t325 i_col = t326 i_mode = t327 ).
                t10 = t322.
                DATA t329 TYPE int8.
                DATA(t330) = t6.
                DATA(t331) = CONV int8( 1 ).
                t329 = t330 + t331.
                IF t329 < range_int8_bound_min OR t329 > range_int8_bound_max.
                  RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
                ENDIF.
                t6 = t329.
                DATA(t332) = CONV int8( 0 ).
                t8 = t332.
              ELSE.
                DATA t333 TYPE abap_bool.
                DATA(t334) = t33.
                DATA(t335) = |;|.
                t333 = xsdbool( t334 = t335 ).
                IF t333 = abap_true.
                  DATA t336 TYPE string.
                  DATA(t337) = CAST zcl_lnt_cd_result( t2 ).
                  DATA(t338) = t10.
                  DATA(t339) = t6.
                  DATA(t340) = t8.
                  DATA t341 TYPE int8.
                  DATA(t342) = t4.
                  t341 = t342.
                  t336 = t337->add_51c1( i_text = t338 i_row = t339 i_col = t340 i_mode = t341 ).
                  t10 = t336.
                  DATA t343 TYPE string.
                  DATA(t344) = CAST zcl_lnt_cd_result( t2 ).
                  DATA(t345) = t33.
                  DATA(t346) = t6.
                  DATA(t347) = t8.
                  DATA t348 TYPE int8.
                  DATA(t349) = t4.
                  t348 = t349.
                  t343 = t344->add_51c1( i_text = t345 i_row = t346 i_col = t347 i_mode = t348 ).
                ELSE.
                  DATA t350 TYPE abap_bool.
                  DATA(t351) = t33.
                  DATA(t352) = |:|.
                  t350 = xsdbool( t351 = t352 ).
                  IF t350 = abap_true.
                    DATA t353 TYPE string.
                    DATA(t354) = CAST zcl_lnt_cd_result( t2 ).
                    DATA(t355) = t10.
                    DATA(t356) = t6.
                    DATA(t357) = t8.
                    DATA t358 TYPE int8.
                    DATA(t359) = t4.
                    t358 = t359.
                    t353 = t354->add_51c1( i_text = t355 i_row = t356 i_col = t357 i_mode = t358 ).
                    t10 = t353.
                    DATA t360 TYPE string.
                    DATA(t361) = CAST zcl_lnt_cd_result( t2 ).
                    DATA(t362) = t33.
                    DATA(t363) = t6.
                    DATA(t364) = t8.
                    DATA t365 TYPE int8.
                    DATA(t366) = t4.
                    t365 = t366.
                    t360 = t361->add_51c1( i_text = t362 i_row = t363 i_col = t364 i_mode = t365 ).
                  ELSE.
                    DATA t367 TYPE abap_bool.
                    DATA(t368) = t33.
                    DATA(t369) = |,|.
                    t367 = xsdbool( t368 = t369 ).
                    IF t367 = abap_true.
                      DATA t370 TYPE string.
                      DATA(t371) = CAST zcl_lnt_cd_result( t2 ).
                      DATA(t372) = t10.
                      DATA(t373) = t6.
                      DATA(t374) = t8.
                      DATA t375 TYPE int8.
                      DATA(t376) = t4.
                      t375 = t376.
                      t370 = t371->add_51c1( i_text = t372 i_row = t373 i_col = t374 i_mode = t375 ).
                      t10 = t370.
                      DATA t377 TYPE string.
                      DATA(t378) = CAST zcl_lnt_cd_result( t2 ).
                      DATA(t379) = t33.
                      DATA(t380) = t6.
                      DATA(t381) = t8.
                      DATA t382 TYPE int8.
                      DATA(t383) = t4.
                      t382 = t383.
                      t377 = t378->add_51c1( i_text = t379 i_row = t380 i_col = t381 i_mode = t382 ).
                    ELSE.
                      DATA t384 TYPE abap_bool.
                      DATA(t385) = t33.
                      DATA(t386) = |.|.
                      t384 = xsdbool( t385 = t386 ).
                      IF t384 = abap_true.
                        DATA t387 TYPE string.
                        DATA(t388) = CAST zcl_lnt_cd_result( t2 ).
                        DATA(t389) = t10.
                        DATA(t390) = t6.
                        DATA(t391) = t8.
                        DATA t392 TYPE int8.
                        DATA(t393) = t4.
                        t392 = t393.
                        t387 = t388->add_51c1( i_text = t389 i_row = t390 i_col = t391 i_mode = t392 ).
                        t10 = t387.
                        DATA t394 TYPE string.
                        DATA(t395) = CAST zcl_lnt_cd_result( t2 ).
                        DATA(t396) = t33.
                        DATA(t397) = t6.
                        DATA(t398) = t8.
                        DATA t399 TYPE int8.
                        DATA(t400) = t4.
                        t399 = t400.
                        t394 = t395->add_51c1( i_text = t396 i_row = t397 i_col = t398 i_mode = t399 ).
                      ELSE.
                        DATA t401 TYPE abap_bool.
                        DATA(t402) = t33.
                        DATA(t403) = |\{|.
                        t401 = xsdbool( t402 = t403 ).
                        IF t401 = abap_true.
                          DATA t404 TYPE string.
                          DATA(t405) = CAST zcl_lnt_cd_result( t2 ).
                          DATA(t406) = t10.
                          DATA(t407) = t6.
                          DATA(t408) = t8.
                          DATA t409 TYPE int8.
                          DATA(t410) = t4.
                          t409 = t410.
                          t404 = t405->add_51c1( i_text = t406 i_row = t407 i_col = t408 i_mode = t409 ).
                          t10 = t404.
                          DATA t411 TYPE string.
                          DATA(t412) = CAST zcl_lnt_cd_result( t2 ).
                          DATA(t413) = t33.
                          DATA(t414) = t6.
                          DATA(t415) = t8.
                          DATA t416 TYPE int8.
                          DATA(t417) = t4.
                          t416 = t417.
                          t411 = t412->add_51c1( i_text = t413 i_row = t414 i_col = t415 i_mode = t416 ).
                        ELSE.
                          DATA t418 TYPE abap_bool.
                          DATA(t419) = t33.
                          DATA(t420) = |\}|.
                          t418 = xsdbool( t419 = t420 ).
                          IF t418 = abap_true.
                            DATA t421 TYPE string.
                            DATA(t422) = CAST zcl_lnt_cd_result( t2 ).
                            DATA(t423) = t10.
                            DATA(t424) = t6.
                            DATA(t425) = t8.
                            DATA t426 TYPE int8.
                            DATA(t427) = t4.
                            t426 = t427.
                            t421 = t422->add_51c1( i_text = t423 i_row = t424 i_col = t425 i_mode = t426 ).
                            t10 = t421.
                            DATA t428 TYPE string.
                            DATA(t429) = CAST zcl_lnt_cd_result( t2 ).
                            DATA(t430) = t33.
                            DATA(t431) = t6.
                            DATA(t432) = t8.
                            DATA t433 TYPE int8.
                            DATA(t434) = t4.
                            t433 = t434.
                            t428 = t429->add_51c1( i_text = t430 i_row = t431 i_col = t432 i_mode = t433 ).
                          ELSE.
                            DATA t435 TYPE abap_bool.
                            DATA(t436) = t33.
                            DATA(t437) = |(|.
                            t435 = xsdbool( t436 = t437 ).
                            IF t435 = abap_true.
                              DATA t438 TYPE string.
                              DATA(t439) = CAST zcl_lnt_cd_result( t2 ).
                              DATA(t440) = t10.
                              DATA(t441) = t6.
                              DATA(t442) = t8.
                              DATA t443 TYPE int8.
                              DATA(t444) = t4.
                              t443 = t444.
                              t438 = t439->add_51c1( i_text = t440 i_row = t441 i_col = t442 i_mode = t443 ).
                              t10 = t438.
                              DATA t445 TYPE string.
                              DATA(t446) = CAST zcl_lnt_cd_result( t2 ).
                              DATA(t447) = t33.
                              DATA(t448) = t6.
                              DATA(t449) = t8.
                              DATA t450 TYPE int8.
                              DATA(t451) = t4.
                              t450 = t451.
                              t445 = t446->add_51c1( i_text = t447 i_row = t448 i_col = t449 i_mode = t450 ).
                            ELSE.
                              DATA t452 TYPE abap_bool.
                              DATA(t453) = t33.
                              DATA(t454) = |)|.
                              t452 = xsdbool( t453 = t454 ).
                              IF t452 = abap_true.
                                DATA t455 TYPE string.
                                DATA(t456) = CAST zcl_lnt_cd_result( t2 ).
                                DATA(t457) = t10.
                                DATA(t458) = t6.
                                DATA(t459) = t8.
                                DATA t460 TYPE int8.
                                DATA(t461) = t4.
                                t460 = t461.
                                t455 = t456->add_51c1( i_text = t457 i_row = t458 i_col = t459 i_mode = t460 ).
                                t10 = t455.
                                DATA t462 TYPE string.
                                DATA(t463) = CAST zcl_lnt_cd_result( t2 ).
                                DATA(t464) = t33.
                                DATA(t465) = t6.
                                DATA(t466) = t8.
                                DATA t467 TYPE int8.
                                DATA(t468) = t4.
                                t467 = t468.
                                t462 = t463->add_51c1( i_text = t464 i_row = t465 i_col = t466 i_mode = t467 ).
                              ELSE.
                                DATA t469 TYPE abap_bool.
                                DATA(t470) = t33.
                                DATA(t471) = |[|.
                                t469 = xsdbool( t470 = t471 ).
                                IF t469 = abap_true.
                                  DATA t472 TYPE string.
                                  DATA(t473) = CAST zcl_lnt_cd_result( t2 ).
                                  DATA(t474) = t10.
                                  DATA(t475) = t6.
                                  DATA(t476) = t8.
                                  DATA t477 TYPE int8.
                                  DATA(t478) = t4.
                                  t477 = t478.
                                  t472 = t473->add_51c1( i_text = t474 i_row = t475 i_col = t476 i_mode = t477 ).
                                  t10 = t472.
                                  DATA t479 TYPE string.
                                  DATA(t480) = CAST zcl_lnt_cd_result( t2 ).
                                  DATA(t481) = t33.
                                  DATA(t482) = t6.
                                  DATA(t483) = t8.
                                  DATA t484 TYPE int8.
                                  DATA(t485) = t4.
                                  t484 = t485.
                                  t479 = t480->add_51c1( i_text = t481 i_row = t482 i_col = t483 i_mode = t484 ).
                                ELSE.
                                  DATA t486 TYPE abap_bool.
                                  DATA(t487) = t33.
                                  DATA(t488) = |]|.
                                  t486 = xsdbool( t487 = t488 ).
                                  IF t486 = abap_true.
                                    DATA t489 TYPE string.
                                    DATA(t490) = CAST zcl_lnt_cd_result( t2 ).
                                    DATA(t491) = t10.
                                    DATA(t492) = t6.
                                    DATA(t493) = t8.
                                    DATA t494 TYPE int8.
                                    DATA(t495) = t4.
                                    t494 = t495.
                                    t489 = t490->add_51c1( i_text = t491 i_row = t492 i_col = t493 i_mode = t494 ).
                                    t10 = t489.
                                    DATA t496 TYPE string.
                                    DATA(t497) = CAST zcl_lnt_cd_result( t2 ).
                                    DATA(t498) = t33.
                                    DATA(t499) = t6.
                                    DATA(t500) = t8.
                                    DATA t501 TYPE int8.
                                    DATA(t502) = t4.
                                    t501 = t502.
                                    t496 = t497->add_51c1( i_text = t498 i_row = t499 i_col = t500 i_mode = t501 ).
                                  ELSE.
                                    DATA t503 TYPE abap_bool.
                                    DATA(t504) = t33.
                                    DATA(t505) = |!|.
                                    t503 = xsdbool( t504 = t505 ).
                                    IF t503 = abap_true.
                                      DATA t506 TYPE string.
                                      DATA(t507) = CAST zcl_lnt_cd_result( t2 ).
                                      DATA(t508) = t10.
                                      DATA(t509) = t6.
                                      DATA(t510) = t8.
                                      DATA t511 TYPE int8.
                                      DATA(t512) = t4.
                                      t511 = t512.
                                      t506 = t507->add_51c1( i_text = t508 i_row = t509 i_col = t510 i_mode = t511 ).
                                      t10 = t506.
                                      DATA t513 TYPE string.
                                      DATA(t514) = CAST zcl_lnt_cd_result( t2 ).
                                      DATA(t515) = t33.
                                      DATA(t516) = t6.
                                      DATA(t517) = t8.
                                      DATA t518 TYPE int8.
                                      DATA(t519) = t4.
                                      t518 = t519.
                                      t513 = t514->add_51c1( i_text = t515 i_row = t516 i_col = t517 i_mode = t518 ).
                                    ELSE.
                                      DATA t520 TYPE abap_bool.
                                      DATA(t521) = t33.
                                      DATA(t522) = |=|.
                                      t520 = xsdbool( t521 = t522 ).
                                      IF t520 = abap_true.
                                        DATA t523 TYPE string.
                                        DATA(t524) = CAST zcl_lnt_cd_result( t2 ).
                                        DATA(t525) = t10.
                                        DATA(t526) = t6.
                                        DATA(t527) = t8.
                                        DATA t528 TYPE int8.
                                        DATA(t529) = t4.
                                        t528 = t529.
                                        t523 = t524->add_51c1( i_text = t525 i_row = t526 i_col = t527 i_mode = t528 ).
                                        t10 = t523.
                                        DATA t530 TYPE string.
                                        DATA(t531) = CAST zcl_lnt_cd_result( t2 ).
                                        DATA(t532) = t33.
                                        DATA(t533) = t6.
                                        DATA(t534) = t8.
                                        DATA t535 TYPE int8.
                                        DATA(t536) = t4.
                                        t535 = t536.
                                        t530 = t531->add_51c1( i_text = t532 i_row = t533 i_col = t534 i_mode = t535 ).
                                      ELSE.
                                        DATA t537 TYPE abap_bool.
                                        DATA(t538) = t33.
                                        DATA(t539) = |<|.
                                        t537 = xsdbool( t538 = t539 ).
                                        IF t537 = abap_true.
                                          DATA t540 TYPE string.
                                          DATA(t541) = CAST zcl_lnt_cd_result( t2 ).
                                          DATA(t542) = t10.
                                          DATA(t543) = t6.
                                          DATA(t544) = t8.
                                          DATA t545 TYPE int8.
                                          DATA(t546) = t4.
                                          t545 = t546.
                                          t540 = t541->add_51c1( i_text = t542 i_row = t543 i_col = t544 i_mode = t545 ).
                                          t10 = t540.
                                          DATA t547 TYPE string.
                                          DATA(t548) = CAST zcl_lnt_cd_result( t2 ).
                                          DATA(t549) = t33.
                                          DATA(t550) = t6.
                                          DATA(t551) = t8.
                                          DATA t552 TYPE int8.
                                          DATA(t553) = t4.
                                          t552 = t553.
                                          t547 = t548->add_51c1( i_text = t549 i_row = t550 i_col = t551 i_mode = t552 ).
                                        ELSE.
                                          DATA t554 TYPE abap_bool.
                                          DATA(t555) = t33.
                                          DATA(t556) = |>|.
                                          t554 = xsdbool( t555 = t556 ).
                                          IF t554 = abap_true.
                                            DATA t557 TYPE string.
                                            DATA(t558) = CAST zcl_lnt_cd_result( t2 ).
                                            DATA(t559) = t10.
                                            DATA(t560) = t6.
                                            DATA(t561) = t8.
                                            DATA t562 TYPE int8.
                                            DATA(t563) = t4.
                                            t562 = t563.
                                            t557 = t558->add_51c1( i_text = t559 i_row = t560 i_col = t561 i_mode = t562 ).
                                            t10 = t557.
                                            DATA t564 TYPE string.
                                            DATA(t565) = CAST zcl_lnt_cd_result( t2 ).
                                            DATA(t566) = t33.
                                            DATA(t567) = t6.
                                            DATA(t568) = t8.
                                            DATA t569 TYPE int8.
                                            DATA(t570) = t4.
                                            t569 = t570.
                                            t564 = t565->add_51c1( i_text = t566 i_row = t567 i_col = t568 i_mode = t569 ).
                                          ELSE.
                                            DATA t571 TYPE abap_bool.
                                            DATA(t572) = t33.
                                            DATA(t573) = |+|.
                                            t571 = xsdbool( t572 = t573 ).
                                            IF t571 = abap_true.
                                              DATA t574 TYPE string.
                                              DATA(t575) = CAST zcl_lnt_cd_result( t2 ).
                                              DATA(t576) = t10.
                                              DATA(t577) = t6.
                                              DATA(t578) = t8.
                                              DATA t579 TYPE int8.
                                              DATA(t580) = t4.
                                              t579 = t580.
                                              t574 = t575->add_51c1( i_text = t576 i_row = t577 i_col = t578 i_mode = t579 ).
                                              t10 = t574.
                                              DATA t581 TYPE string.
                                              DATA(t582) = CAST zcl_lnt_cd_result( t2 ).
                                              DATA(t583) = t33.
                                              DATA(t584) = t6.
                                              DATA(t585) = t8.
                                              DATA t586 TYPE int8.
                                              DATA(t587) = t4.
                                              t586 = t587.
                                              t581 = t582->add_51c1( i_text = t583 i_row = t584 i_col = t585 i_mode = t586 ).
                                            ELSE.
                                              DATA t588 TYPE abap_bool.
                                              DATA(t589) = t33.
                                              DATA(t590) = |-|.
                                              t588 = xsdbool( t589 = t590 ).
                                              IF t588 = abap_true.
                                                DATA t591 TYPE string.
                                                DATA(t592) = CAST zcl_lnt_cd_result( t2 ).
                                                DATA(t593) = t10.
                                                DATA(t594) = t6.
                                                DATA(t595) = t8.
                                                DATA t596 TYPE int8.
                                                DATA(t597) = t4.
                                                t596 = t597.
                                                t591 = t592->add_51c1( i_text = t593 i_row = t594 i_col = t595 i_mode = t596 ).
                                                t10 = t591.
                                                DATA t598 TYPE string.
                                                DATA(t599) = CAST zcl_lnt_cd_result( t2 ).
                                                DATA(t600) = t33.
                                                DATA(t601) = t6.
                                                DATA(t602) = t8.
                                                DATA t603 TYPE int8.
                                                DATA(t604) = t4.
                                                t603 = t604.
                                                t598 = t599->add_51c1( i_text = t600 i_row = t601 i_col = t602 i_mode = t603 ).
                                              ELSE.
                                                DATA t605 TYPE abap_bool.
                                                DATA(t606) = t33.
                                                DATA(t607) = |*|.
                                                t605 = xsdbool( t606 = t607 ).
                                                IF t605 = abap_true.
                                                  DATA t608 TYPE string.
                                                  DATA(t609) = CAST zcl_lnt_cd_result( t2 ).
                                                  DATA(t610) = t10.
                                                  DATA(t611) = t6.
                                                  DATA(t612) = t8.
                                                  DATA t613 TYPE int8.
                                                  DATA(t614) = t4.
                                                  t613 = t614.
                                                  t608 = t609->add_51c1( i_text = t610 i_row = t611 i_col = t612 i_mode = t613 ).
                                                  t10 = t608.
                                                  DATA t615 TYPE string.
                                                  DATA(t616) = CAST zcl_lnt_cd_result( t2 ).
                                                  DATA(t617) = t33.
                                                  DATA(t618) = t6.
                                                  DATA(t619) = t8.
                                                  DATA t620 TYPE int8.
                                                  DATA(t621) = t4.
                                                  t620 = t621.
                                                  t615 = t616->add_51c1( i_text = t617 i_row = t618 i_col = t619 i_mode = t620 ).
                                                ELSE.
                                                  DATA t622 TYPE abap_bool.
                                                  DATA(t623) = t33.
                                                  DATA(t624) = |/|.
                                                  t622 = xsdbool( t623 = t624 ).
                                                  IF t622 = abap_true.
                                                    DATA t625 TYPE string.
                                                    DATA(t626) = CAST zcl_lnt_cd_result( t2 ).
                                                    DATA(t627) = t10.
                                                    DATA(t628) = t6.
                                                    DATA(t629) = t8.
                                                    DATA t630 TYPE int8.
                                                    DATA(t631) = t4.
                                                    t630 = t631.
                                                    t625 = t626->add_51c1( i_text = t627 i_row = t628 i_col = t629 i_mode = t630 ).
                                                    t10 = t625.
                                                    DATA t632 TYPE string.
                                                    DATA(t633) = CAST zcl_lnt_cd_result( t2 ).
                                                    DATA(t634) = t33.
                                                    DATA(t635) = t6.
                                                    DATA(t636) = t8.
                                                    DATA t637 TYPE int8.
                                                    DATA(t638) = t4.
                                                    t637 = t638.
                                                    t632 = t633->add_51c1( i_text = t634 i_row = t635 i_col = t636 i_mode = t637 ).
                                                  ELSE.
                                                    DATA t639 TYPE abap_bool.
                                                    DATA(t640) = t33.
                                                    DATA(t641) = |@|.
                                                    t639 = xsdbool( t640 = t641 ).
                                                    IF t639 = abap_true.
                                                      DATA t642 TYPE string.
                                                      DATA(t643) = CAST zcl_lnt_cd_result( t2 ).
                                                      DATA(t644) = t10.
                                                      DATA(t645) = t6.
                                                      DATA(t646) = t8.
                                                      DATA t647 TYPE int8.
                                                      DATA(t648) = t4.
                                                      t647 = t648.
                                                      t642 = t643->add_51c1( i_text = t644 i_row = t645 i_col = t646 i_mode = t647 ).
                                                      t10 = t642.
                                                      DATA(t649) = |@|.
                                                      t10 = t649.
                                                    ELSE.
                                                      DATA t650 TYPE string.
                                                      DATA(t651) = t10.
                                                      DATA(t652) = t33.
                                                      DATA(t653) = strlen( t651 ).
                                                      t650 = |{ t651 }{ t652 }|.
                                                      t10 = t650.
                                                    ENDIF.
                                                  ENDIF.
                                                ENDIF.
                                              ENDIF.
                                            ENDIF.
                                          ENDIF.
                                        ENDIF.
                                      ENDIF.
                                    ENDIF.
                                  ENDIF.
                                ENDIF.
                              ENDIF.
                            ENDIF.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t654 TYPE string.
    DATA(t655) = CAST zcl_lnt_cd_result( t2 ).
    DATA(t656) = t10.
    DATA(t657) = t6.
    DATA(t658) = t8.
    DATA t659 TYPE int8.
    DATA(t660) = t4.
    t659 = t660.
    t654 = t655->add_51c1( i_text = t656 i_row = t657 i_col = t658 i_mode = t659 ).
    DATA t661 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t662) = CAST zcl_lnt_cd_result( t2 ).
    t661 = t662->get_db65(  ).
    result = t661.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1049_a720e7390192.
  ENDMETHOD.
ENDCLASS.
