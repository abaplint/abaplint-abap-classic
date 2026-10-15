* TS: src/cds/cds_lexer.ts:60:1 CDSLexer
CLASS zcl_lnt_cds_lexer DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run IMPORTING i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_lexer IMPLEMENTATION.
  METHOD run.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zcl_lnt_cd_result.
    DATA(t3) = NEW zcl_lnt_cd_result( ).
    t2 = t3.
    DATA t4 TYPE i.
    DATA(t5) = 0.
    t4 = t5.
    DATA t6 TYPE f.
    DATA(t7) = CONV f( 1 ).
    t6 = t7.
    DATA t8 TYPE f.
    DATA(t9) = CONV f( 1 ).
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
    DATA(t18) = t1.
    t17 = t18->get_raw( ).
    DATA(t19) = |\r|.
    DATA(t20) = ||.
    DATA(t21) = strlen( t17 ).
    t16 = t17.
    REPLACE ALL OCCURRENCES OF t19 IN t16 WITH t20.
    DATA t22 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t22.
    DATA(t23) = `\u00a0`.
    DATA(t24) = |g|.
    CREATE OBJECT t22 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t23 flags = t24 checked = abap_true.
    DATA(t25) = | |.
    DATA(t26) = strlen( t16 ).
    t15 = t22->replace( p0 = t16 p1 = t25 ).
    DATA t27 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t27.
    DATA(t28) = `\u000b`.
    DATA(t29) = |g|.
    CREATE OBJECT t27 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t28 flags = t29 checked = abap_true.
    DATA(t30) = | |.
    DATA(t31) = strlen( t15 ).
    t14 = t27->replace( p0 = t15 p1 = t30 ).
    t13 = NEW zcl_lnt_stream( i_buffer = t14 ).
    t12 = t13.
    DATA t32 TYPE string.
    DATA(t33) = ||.
    t32 = t33.
    DO.
      DATA t34 TYPE abap_bool.
      DATA t35 TYPE i.
      DATA t36 TYPE f.
      DATA t37 TYPE REF TO zcl_lnt_stream.
      DATA(t38) = t12.
      t37 = t38.
      DATA t39 TYPE f.
      DATA t40 TYPE i.
      DATA t41 TYPE string.
      DATA(t42) = t37.
      t41 = t42->buffer.
      DATA(t43) = strlen( t41 ).
      t40 = t43.
      t39 = t40.
      t36 = t39.
      t35 = t36.
      DATA(t44) = 0.
      t34 = xsdbool( t35 > t44 ).
      IF t34 = abap_false.
        EXIT.
      ENDIF.
      DATA t45 TYPE string.
      DATA(t46) = t32.
      t45 = t46.
      DATA(t47) = VALUE string( ).
      DATA t48 TYPE REF TO zcl_lnt_stream.
      DATA(t49) = t12.
      t48 = t49.
      DATA(t50) = VALUE string( ).
      DATA(t51) = VALUE string( ).
      DATA(t52) = VALUE string( ).
      DATA t53 TYPE string.
      DATA(t54) = t48.
      t53 = t54->buffer.
      DATA(t55) = 0.
      DATA(t56) = 1.
      DATA(t57) = strlen( t53 ).
      t55 = COND i( WHEN t55 < 0 THEN 0 WHEN t55 > t57 THEN t57 ELSE t55 ).
      t56 = COND i( WHEN t56 < 0 THEN 0 WHEN t56 > t57 THEN t57 ELSE t56 ).
      IF t55 > t56.
        t57 = t55.
        t55 = t56.
        t56 = t57.
      ENDIF.
      t57 = t56 - t55.
      t52 = t53+t55(t57).
      t51 = t52.
      DATA(t58) = t48.
      DATA(t59) = VALUE string( ).
      DATA t60 TYPE string.
      DATA t61 TYPE string.
      DATA(t62) = t48.
      t61 = t62->buffer.
      t60 = t61.
      DATA(t63) = VALUE string( ).
      DATA(t64) = t60.
      DATA(t65) = 1.
      DATA t66 TYPE i.
      DATA(t67) = t60.
      DATA(t68) = strlen( t67 ).
      t66 = t68.
      DATA(t69) = strlen( t64 ).
      t65 = COND i( WHEN t65 < 0 THEN 0 WHEN t65 > t69 THEN t69 ELSE t65 ).
      t66 = COND i( WHEN t66 < 0 THEN 0 WHEN t66 > t69 THEN t69 ELSE t66 ).
      IF t65 > t66.
        t69 = t65.
        t65 = t66.
        t66 = t69.
      ENDIF.
      t69 = t66 - t65.
      t63 = t64+t65(t69).
      t59 = t63.
      t58->buffer = t59.
      DELETE t58->zlnt_record_delet_0597644d88b4 WHERE table_line = `buffer`.
      DATA(t70) = t51.
      t50 = t70.
      t47 = t50.
      t32 = t47.
      DATA(t71) = VALUE string( ).
      DATA(t72) = VALUE string( ).
      DATA t73 TYPE REF TO zcl_lnt_stream.
      DATA(t74) = t12.
      t73 = t74.
      DATA(t75) = VALUE string( ).
      DATA(t76) = VALUE string( ).
      DATA(t77) = VALUE string( ).
      DATA t78 TYPE string.
      DATA(t79) = t73.
      t78 = t79->buffer.
      DATA(t80) = 0.
      DATA(t81) = 1.
      DATA(t82) = strlen( t78 ).
      t80 = COND i( WHEN t80 < 0 THEN 0 WHEN t80 > t82 THEN t82 ELSE t80 ).
      t81 = COND i( WHEN t81 < 0 THEN 0 WHEN t81 > t82 THEN t82 ELSE t81 ).
      IF t80 > t81.
        t82 = t80.
        t80 = t81.
        t81 = t82.
      ENDIF.
      t82 = t81 - t80.
      t77 = t78+t80(t82).
      t76 = t77.
      DATA(t83) = t76.
      t75 = t83.
      t72 = t75.
      t71 = t72.
      DATA t84 TYPE f.
      DATA(t85) = t8.
      DATA(t86) = CONV f( 1 ).
      t84 = t85 + t86.
      t8 = t84.
      DATA t87 TYPE abap_bool.
      DATA(t88) = t4.
      DATA(t89) = 1.
      t87 = xsdbool( t88 = t89 ).
      IF t87 = abap_true.
        DATA t90 TYPE string.
        DATA(t91) = t10.
        DATA(t92) = t32.
        DATA(t93) = strlen( t91 ).
        t90 = |{ t91 }{ t92 }|.
        t10 = t90.
        DATA t94 TYPE abap_bool.
        DATA t95 TYPE abap_bool.
        DATA(t96) = t32.
        DATA(t97) = |'|.
        t95 = xsdbool( t96 = t97 ).
        t94 = t95.
        IF t95 = abap_true.
          DATA t98 TYPE abap_bool.
          DATA(t99) = t71.
          DATA(t100) = |'|.
          t98 = xsdbool( t99 = t100 ).
          t94 = t98.
        ENDIF.
        IF t94 = abap_true.
          DATA(t101) = VALUE string( ).
          DATA(t102) = t10.
          DATA(t103) = VALUE string( ).
          DATA t104 TYPE REF TO zcl_lnt_stream.
          DATA(t105) = t12.
          t104 = t105.
          DATA(t106) = VALUE string( ).
          DATA(t107) = VALUE string( ).
          DATA(t108) = VALUE string( ).
          DATA t109 TYPE string.
          DATA(t110) = t104.
          t109 = t110->buffer.
          DATA(t111) = 0.
          DATA(t112) = 1.
          DATA(t113) = strlen( t109 ).
          t111 = COND i( WHEN t111 < 0 THEN 0 WHEN t111 > t113 THEN t113 ELSE t111 ).
          t112 = COND i( WHEN t112 < 0 THEN 0 WHEN t112 > t113 THEN t113 ELSE t112 ).
          IF t111 > t112.
            t113 = t111.
            t111 = t112.
            t112 = t113.
          ENDIF.
          t113 = t112 - t111.
          t108 = t109+t111(t113).
          t107 = t108.
          DATA(t114) = t104.
          DATA(t115) = VALUE string( ).
          DATA t116 TYPE string.
          DATA t117 TYPE string.
          DATA(t118) = t104.
          t117 = t118->buffer.
          t116 = t117.
          DATA(t119) = VALUE string( ).
          DATA(t120) = t116.
          DATA(t121) = 1.
          DATA t122 TYPE i.
          DATA(t123) = t116.
          DATA(t124) = strlen( t123 ).
          t122 = t124.
          DATA(t125) = strlen( t120 ).
          t121 = COND i( WHEN t121 < 0 THEN 0 WHEN t121 > t125 THEN t125 ELSE t121 ).
          t122 = COND i( WHEN t122 < 0 THEN 0 WHEN t122 > t125 THEN t125 ELSE t122 ).
          IF t121 > t122.
            t125 = t121.
            t121 = t122.
            t122 = t125.
          ENDIF.
          t125 = t122 - t121.
          t119 = t120+t121(t125).
          t115 = t119.
          t114->buffer = t115.
          DELETE t114->zlnt_record_delet_0597644d88b4 WHERE table_line = `buffer`.
          DATA(t126) = t107.
          t106 = t126.
          t103 = t106.
          DATA(t127) = strlen( t102 ).
          t101 = |{ t102 }{ t103 }|.
          t10 = t101.
          DATA t128 TYPE f.
          DATA(t129) = t8.
          DATA(t130) = CONV f( 1 ).
          t128 = t129 + t130.
          t8 = t128.
        ELSE.
          DATA t131 TYPE abap_bool.
          DATA t132 TYPE abap_bool.
          DATA(t133) = t32.
          DATA(t134) = `\`.
          t132 = xsdbool( t133 = t134 ).
          t131 = t132.
          IF t132 = abap_true.
            DATA t135 TYPE abap_bool.
            DATA(t136) = t71.
            DATA(t137) = `\`.
            t135 = xsdbool( t136 = t137 ).
            t131 = t135.
          ENDIF.
          IF t131 = abap_true.
            DATA(t138) = VALUE string( ).
            DATA(t139) = t10.
            DATA(t140) = VALUE string( ).
            DATA t141 TYPE REF TO zcl_lnt_stream.
            DATA(t142) = t12.
            t141 = t142.
            DATA(t143) = VALUE string( ).
            DATA(t144) = VALUE string( ).
            DATA(t145) = VALUE string( ).
            DATA t146 TYPE string.
            DATA(t147) = t141.
            t146 = t147->buffer.
            DATA(t148) = 0.
            DATA(t149) = 1.
            DATA(t150) = strlen( t146 ).
            t148 = COND i( WHEN t148 < 0 THEN 0 WHEN t148 > t150 THEN t150 ELSE t148 ).
            t149 = COND i( WHEN t149 < 0 THEN 0 WHEN t149 > t150 THEN t150 ELSE t149 ).
            IF t148 > t149.
              t150 = t148.
              t148 = t149.
              t149 = t150.
            ENDIF.
            t150 = t149 - t148.
            t145 = t146+t148(t150).
            t144 = t145.
            DATA(t151) = t141.
            DATA(t152) = VALUE string( ).
            DATA t153 TYPE string.
            DATA t154 TYPE string.
            DATA(t155) = t141.
            t154 = t155->buffer.
            t153 = t154.
            DATA(t156) = VALUE string( ).
            DATA(t157) = t153.
            DATA(t158) = 1.
            DATA t159 TYPE i.
            DATA(t160) = t153.
            DATA(t161) = strlen( t160 ).
            t159 = t161.
            DATA(t162) = strlen( t157 ).
            t158 = COND i( WHEN t158 < 0 THEN 0 WHEN t158 > t162 THEN t162 ELSE t158 ).
            t159 = COND i( WHEN t159 < 0 THEN 0 WHEN t159 > t162 THEN t162 ELSE t159 ).
            IF t158 > t159.
              t162 = t158.
              t158 = t159.
              t159 = t162.
            ENDIF.
            t162 = t159 - t158.
            t156 = t157+t158(t162).
            t152 = t156.
            t151->buffer = t152.
            DELETE t151->zlnt_record_delet_0597644d88b4 WHERE table_line = `buffer`.
            DATA(t163) = t144.
            t143 = t163.
            t140 = t143.
            DATA(t164) = strlen( t139 ).
            t138 = |{ t139 }{ t140 }|.
            t10 = t138.
            DATA t165 TYPE f.
            DATA(t166) = t8.
            DATA(t167) = CONV f( 1 ).
            t165 = t166 + t167.
            t8 = t165.
          ELSE.
            DATA t168 TYPE abap_bool.
            DATA t169 TYPE abap_bool.
            DATA(t170) = t32.
            DATA(t171) = `\`.
            t169 = xsdbool( t170 = t171 ).
            t168 = t169.
            IF t169 = abap_true.
              DATA t172 TYPE abap_bool.
              DATA(t173) = t71.
              DATA(t174) = |'|.
              t172 = xsdbool( t173 = t174 ).
              t168 = t172.
            ENDIF.
            IF t168 = abap_true.
              DATA(t175) = VALUE string( ).
              DATA(t176) = t10.
              DATA(t177) = VALUE string( ).
              DATA t178 TYPE REF TO zcl_lnt_stream.
              DATA(t179) = t12.
              t178 = t179.
              DATA(t180) = VALUE string( ).
              DATA(t181) = VALUE string( ).
              DATA(t182) = VALUE string( ).
              DATA t183 TYPE string.
              DATA(t184) = t178.
              t183 = t184->buffer.
              DATA(t185) = 0.
              DATA(t186) = 1.
              DATA(t187) = strlen( t183 ).
              t185 = COND i( WHEN t185 < 0 THEN 0 WHEN t185 > t187 THEN t187 ELSE t185 ).
              t186 = COND i( WHEN t186 < 0 THEN 0 WHEN t186 > t187 THEN t187 ELSE t186 ).
              IF t185 > t186.
                t187 = t185.
                t185 = t186.
                t186 = t187.
              ENDIF.
              t187 = t186 - t185.
              t182 = t183+t185(t187).
              t181 = t182.
              DATA(t188) = t178.
              DATA(t189) = VALUE string( ).
              DATA t190 TYPE string.
              DATA t191 TYPE string.
              DATA(t192) = t178.
              t191 = t192->buffer.
              t190 = t191.
              DATA(t193) = VALUE string( ).
              DATA(t194) = t190.
              DATA(t195) = 1.
              DATA t196 TYPE i.
              DATA(t197) = t190.
              DATA(t198) = strlen( t197 ).
              t196 = t198.
              DATA(t199) = strlen( t194 ).
              t195 = COND i( WHEN t195 < 0 THEN 0 WHEN t195 > t199 THEN t199 ELSE t195 ).
              t196 = COND i( WHEN t196 < 0 THEN 0 WHEN t196 > t199 THEN t199 ELSE t196 ).
              IF t195 > t196.
                t199 = t195.
                t195 = t196.
                t196 = t199.
              ENDIF.
              t199 = t196 - t195.
              t193 = t194+t195(t199).
              t189 = t193.
              t188->buffer = t189.
              DELETE t188->zlnt_record_delet_0597644d88b4 WHERE table_line = `buffer`.
              DATA(t200) = t181.
              t180 = t200.
              t177 = t180.
              DATA(t201) = strlen( t176 ).
              t175 = |{ t176 }{ t177 }|.
              t10 = t175.
              DATA t202 TYPE f.
              DATA(t203) = t8.
              DATA(t204) = CONV f( 1 ).
              t202 = t203 + t204.
              t8 = t202.
            ELSE.
              DATA t205 TYPE abap_bool.
              DATA(t206) = t32.
              DATA(t207) = |'|.
              t205 = xsdbool( t206 = t207 ).
              IF t205 = abap_true.
                DATA(t208) = VALUE string( ).
                DATA t209 TYPE REF TO zcl_lnt_cd_result.
                DATA(t210) = t2.
                t209 = t210.
                DATA t211 TYPE string.
                DATA(t212) = t10.
                t211 = t212.
                DATA t213 TYPE f.
                DATA(t214) = t6.
                t213 = t214.
                DATA t215 TYPE f.
                DATA(t216) = t8.
                t215 = t216.
                DATA t217 TYPE f.
                DATA t218 TYPE f.
                DATA(t219) = t4.
                t218 = t219.
                t217 = t218.
                DATA(t220) = VALUE string( ).
                DATA t221 TYPE abap_bool.
                DATA t222 TYPE i.
                DATA(t223) = t211.
                DATA(t224) = strlen( t223 ).
                t222 = t224.
                DATA(t225) = 0.
                t221 = xsdbool( t222 > t225 ).
                IF t221 = abap_true.
                  DATA t226 TYPE abap_bool.
                  DATA t227 TYPE abap_bool.
                  DATA(t228) = t217.
                  DATA(t229) = CONV f( 3 ).
                  t227 = xsdbool( t228 = t229 ).
                  t226 = t227.
                  IF t227 = abap_true.
                    DATA(t230) = VALUE abap_bool( ).
                    DATA(t231) = VALUE abap_bool( ).
                    DATA(t232) = t211.
                    DATA(t233) = |--|.
                    DATA(t234) = strlen( t232 ).
                    DATA t235 TYPE i.
                    DATA(t236) = VALUE i( ).
                    DATA(t237) = VALUE string( ).
                    t235 = strlen( t233 ).
                    IF t235 = 0.
                      t231 = abap_true.
                    ELSEIF t235 <= t234.
                      t236 = 0.
                      t237 = t232+t236(t235).
                      IF t237 = t233.
                        t231 = abap_true.
                      ENDIF.
                    ENDIF.
                    t230 = t231.
                    IF t231 = abap_false.
                      DATA(t238) = VALUE abap_bool( ).
                      DATA(t239) = t211.
                      DATA(t240) = |//|.
                      DATA(t241) = strlen( t239 ).
                      DATA t242 TYPE i.
                      DATA(t243) = VALUE i( ).
                      DATA(t244) = VALUE string( ).
                      t242 = strlen( t240 ).
                      IF t242 = 0.
                        t238 = abap_true.
                      ELSEIF t242 <= t241.
                        t243 = 0.
                        t244 = t239+t243(t242).
                        IF t244 = t240.
                          t238 = abap_true.
                        ENDIF.
                      ENDIF.
                      t230 = t238.
                    ENDIF.
                    t226 = t230.
                  ENDIF.
                  IF t226 = abap_true.
                    DATA t245 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA(t246) = t209.
                    t245 = t246->result_9728.
                    DATA t247 TYPE REF TO zcl_lnt_lx_comment.
                    DATA t248 TYPE REF TO zcl_lnt_position.
                    DATA(t249) = t213.
                    DATA t250 TYPE f.
                    DATA(t251) = t215.
                    DATA t252 TYPE f.
                    DATA t253 TYPE i.
                    DATA(t254) = t211.
                    DATA(t255) = strlen( t254 ).
                    t253 = t255.
                    t252 = t253.
                    t250 = t251 - t252.
                    DATA(t256) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                    t256->has = abap_true.
                    t256->value = t250.
                    t248 = NEW zcl_lnt_position( i_row = t249 i_col = t256 ).
                    DATA(t257) = t211.
                    t247 = NEW zcl_lnt_lx_comment( i_start = t248 i_str = t257 ).
                    t245->load( ).
                    APPEND t247 TO t245->items.
                    t245->save( ).
                  ELSE.
                    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA(t259) = t209.
                    t258 = t259->result_9728.
                    DATA t260 TYPE REF TO zcl_lnt_lx_identifier.
                    DATA t261 TYPE REF TO zcl_lnt_position.
                    DATA(t262) = t213.
                    DATA(t263) = t215.
                    DATA(t264) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                    t264->has = abap_true.
                    t264->value = t263.
                    t261 = NEW zcl_lnt_position( i_row = t262 i_col = t264 ).
                    DATA(t265) = t211.
                    t260 = NEW zcl_lnt_lx_identifier( i_start = t261 i_str = t265 ).
                    t258->load( ).
                    APPEND t260 TO t258->items.
                    t258->save( ).
                  ENDIF.
                ENDIF.
                DATA(t266) = ||.
                t220 = t266.
                t208 = t220.
                t10 = t208.
                DATA(t267) = 0.
                t4 = t267.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        CONTINUE.
      ENDIF.
      DATA t268 TYPE abap_bool.
      DATA(t269) = t4.
      DATA(t270) = 2.
      t268 = xsdbool( t269 = t270 ).
      IF t268 = abap_true.
        DATA t271 TYPE string.
        DATA(t272) = t10.
        DATA(t273) = t32.
        DATA(t274) = strlen( t272 ).
        t271 = |{ t272 }{ t273 }|.
        t10 = t271.
        DATA t275 TYPE abap_bool.
        DATA t276 TYPE abap_bool.
        DATA(t277) = t32.
        DATA(t278) = `\`.
        t276 = xsdbool( t277 = t278 ).
        t275 = t276.
        IF t276 = abap_true.
          DATA t279 TYPE abap_bool.
          DATA(t280) = t71.
          DATA(t281) = |"|.
          t279 = xsdbool( t280 = t281 ).
          t275 = t279.
        ENDIF.
        IF t275 = abap_true.
          DATA(t282) = VALUE string( ).
          DATA(t283) = t10.
          DATA(t284) = VALUE string( ).
          DATA t285 TYPE REF TO zcl_lnt_stream.
          DATA(t286) = t12.
          t285 = t286.
          DATA(t287) = VALUE string( ).
          DATA(t288) = VALUE string( ).
          DATA(t289) = VALUE string( ).
          DATA t290 TYPE string.
          DATA(t291) = t285.
          t290 = t291->buffer.
          DATA(t292) = 0.
          DATA(t293) = 1.
          DATA(t294) = strlen( t290 ).
          t292 = COND i( WHEN t292 < 0 THEN 0 WHEN t292 > t294 THEN t294 ELSE t292 ).
          t293 = COND i( WHEN t293 < 0 THEN 0 WHEN t293 > t294 THEN t294 ELSE t293 ).
          IF t292 > t293.
            t294 = t292.
            t292 = t293.
            t293 = t294.
          ENDIF.
          t294 = t293 - t292.
          t289 = t290+t292(t294).
          t288 = t289.
          DATA(t295) = t285.
          DATA(t296) = VALUE string( ).
          DATA t297 TYPE string.
          DATA t298 TYPE string.
          DATA(t299) = t285.
          t298 = t299->buffer.
          t297 = t298.
          DATA(t300) = VALUE string( ).
          DATA(t301) = t297.
          DATA(t302) = 1.
          DATA t303 TYPE i.
          DATA(t304) = t297.
          DATA(t305) = strlen( t304 ).
          t303 = t305.
          DATA(t306) = strlen( t301 ).
          t302 = COND i( WHEN t302 < 0 THEN 0 WHEN t302 > t306 THEN t306 ELSE t302 ).
          t303 = COND i( WHEN t303 < 0 THEN 0 WHEN t303 > t306 THEN t306 ELSE t303 ).
          IF t302 > t303.
            t306 = t302.
            t302 = t303.
            t303 = t306.
          ENDIF.
          t306 = t303 - t302.
          t300 = t301+t302(t306).
          t296 = t300.
          t295->buffer = t296.
          DELETE t295->zlnt_record_delet_0597644d88b4 WHERE table_line = `buffer`.
          DATA(t307) = t288.
          t287 = t307.
          t284 = t287.
          DATA(t308) = strlen( t283 ).
          t282 = |{ t283 }{ t284 }|.
          t10 = t282.
          DATA t309 TYPE f.
          DATA(t310) = t8.
          DATA(t311) = CONV f( 1 ).
          t309 = t310 + t311.
          t8 = t309.
        ELSE.
          DATA t312 TYPE abap_bool.
          DATA t313 TYPE abap_bool.
          DATA(t314) = t32.
          DATA(t315) = |"|.
          t313 = xsdbool( t314 = t315 ).
          t312 = t313.
          IF t313 = abap_true.
            DATA t316 TYPE abap_bool.
            DATA(t317) = t71.
            DATA(t318) = |"|.
            t316 = xsdbool( t317 = t318 ).
            t312 = t316.
          ENDIF.
          IF t312 = abap_true.
            DATA(t319) = VALUE string( ).
            DATA(t320) = t10.
            DATA(t321) = VALUE string( ).
            DATA t322 TYPE REF TO zcl_lnt_stream.
            DATA(t323) = t12.
            t322 = t323.
            DATA(t324) = VALUE string( ).
            DATA(t325) = VALUE string( ).
            DATA(t326) = VALUE string( ).
            DATA t327 TYPE string.
            DATA(t328) = t322.
            t327 = t328->buffer.
            DATA(t329) = 0.
            DATA(t330) = 1.
            DATA(t331) = strlen( t327 ).
            t329 = COND i( WHEN t329 < 0 THEN 0 WHEN t329 > t331 THEN t331 ELSE t329 ).
            t330 = COND i( WHEN t330 < 0 THEN 0 WHEN t330 > t331 THEN t331 ELSE t330 ).
            IF t329 > t330.
              t331 = t329.
              t329 = t330.
              t330 = t331.
            ENDIF.
            t331 = t330 - t329.
            t326 = t327+t329(t331).
            t325 = t326.
            DATA(t332) = t322.
            DATA(t333) = VALUE string( ).
            DATA t334 TYPE string.
            DATA t335 TYPE string.
            DATA(t336) = t322.
            t335 = t336->buffer.
            t334 = t335.
            DATA(t337) = VALUE string( ).
            DATA(t338) = t334.
            DATA(t339) = 1.
            DATA t340 TYPE i.
            DATA(t341) = t334.
            DATA(t342) = strlen( t341 ).
            t340 = t342.
            DATA(t343) = strlen( t338 ).
            t339 = COND i( WHEN t339 < 0 THEN 0 WHEN t339 > t343 THEN t343 ELSE t339 ).
            t340 = COND i( WHEN t340 < 0 THEN 0 WHEN t340 > t343 THEN t343 ELSE t340 ).
            IF t339 > t340.
              t343 = t339.
              t339 = t340.
              t340 = t343.
            ENDIF.
            t343 = t340 - t339.
            t337 = t338+t339(t343).
            t333 = t337.
            t332->buffer = t333.
            DELETE t332->zlnt_record_delet_0597644d88b4 WHERE table_line = `buffer`.
            DATA(t344) = t325.
            t324 = t344.
            t321 = t324.
            DATA(t345) = strlen( t320 ).
            t319 = |{ t320 }{ t321 }|.
            t10 = t319.
            DATA t346 TYPE f.
            DATA(t347) = t8.
            DATA(t348) = CONV f( 1 ).
            t346 = t347 + t348.
            t8 = t346.
          ELSE.
            DATA t349 TYPE abap_bool.
            DATA(t350) = t32.
            DATA(t351) = |"|.
            t349 = xsdbool( t350 = t351 ).
            IF t349 = abap_true.
              DATA(t352) = VALUE string( ).
              DATA t353 TYPE REF TO zcl_lnt_cd_result.
              DATA(t354) = t2.
              t353 = t354.
              DATA t355 TYPE string.
              DATA(t356) = t10.
              t355 = t356.
              DATA t357 TYPE f.
              DATA(t358) = t6.
              t357 = t358.
              DATA t359 TYPE f.
              DATA(t360) = t8.
              t359 = t360.
              DATA t361 TYPE f.
              DATA t362 TYPE f.
              DATA(t363) = t4.
              t362 = t363.
              t361 = t362.
              DATA(t364) = VALUE string( ).
              DATA t365 TYPE abap_bool.
              DATA t366 TYPE i.
              DATA(t367) = t355.
              DATA(t368) = strlen( t367 ).
              t366 = t368.
              DATA(t369) = 0.
              t365 = xsdbool( t366 > t369 ).
              IF t365 = abap_true.
                DATA t370 TYPE abap_bool.
                DATA t371 TYPE abap_bool.
                DATA(t372) = t361.
                DATA(t373) = CONV f( 3 ).
                t371 = xsdbool( t372 = t373 ).
                t370 = t371.
                IF t371 = abap_true.
                  DATA(t374) = VALUE abap_bool( ).
                  DATA(t375) = VALUE abap_bool( ).
                  DATA(t376) = t355.
                  DATA(t377) = |--|.
                  DATA(t378) = strlen( t376 ).
                  DATA t379 TYPE i.
                  DATA(t380) = VALUE i( ).
                  DATA(t381) = VALUE string( ).
                  t379 = strlen( t377 ).
                  IF t379 = 0.
                    t375 = abap_true.
                  ELSEIF t379 <= t378.
                    t380 = 0.
                    t381 = t376+t380(t379).
                    IF t381 = t377.
                      t375 = abap_true.
                    ENDIF.
                  ENDIF.
                  t374 = t375.
                  IF t375 = abap_false.
                    DATA(t382) = VALUE abap_bool( ).
                    DATA(t383) = t355.
                    DATA(t384) = |//|.
                    DATA(t385) = strlen( t383 ).
                    DATA t386 TYPE i.
                    DATA(t387) = VALUE i( ).
                    DATA(t388) = VALUE string( ).
                    t386 = strlen( t384 ).
                    IF t386 = 0.
                      t382 = abap_true.
                    ELSEIF t386 <= t385.
                      t387 = 0.
                      t388 = t383+t387(t386).
                      IF t388 = t384.
                        t382 = abap_true.
                      ENDIF.
                    ENDIF.
                    t374 = t382.
                  ENDIF.
                  t370 = t374.
                ENDIF.
                IF t370 = abap_true.
                  DATA t389 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t390) = t353.
                  t389 = t390->result_9728.
                  DATA t391 TYPE REF TO zcl_lnt_lx_comment.
                  DATA t392 TYPE REF TO zcl_lnt_position.
                  DATA(t393) = t357.
                  DATA t394 TYPE f.
                  DATA(t395) = t359.
                  DATA t396 TYPE f.
                  DATA t397 TYPE i.
                  DATA(t398) = t355.
                  DATA(t399) = strlen( t398 ).
                  t397 = t399.
                  t396 = t397.
                  t394 = t395 - t396.
                  DATA(t400) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                  t400->has = abap_true.
                  t400->value = t394.
                  t392 = NEW zcl_lnt_position( i_row = t393 i_col = t400 ).
                  DATA(t401) = t355.
                  t391 = NEW zcl_lnt_lx_comment( i_start = t392 i_str = t401 ).
                  t389->load( ).
                  APPEND t391 TO t389->items.
                  t389->save( ).
                ELSE.
                  DATA t402 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t403) = t353.
                  t402 = t403->result_9728.
                  DATA t404 TYPE REF TO zcl_lnt_lx_identifier.
                  DATA t405 TYPE REF TO zcl_lnt_position.
                  DATA(t406) = t357.
                  DATA(t407) = t359.
                  DATA(t408) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                  t408->has = abap_true.
                  t408->value = t407.
                  t405 = NEW zcl_lnt_position( i_row = t406 i_col = t408 ).
                  DATA(t409) = t355.
                  t404 = NEW zcl_lnt_lx_identifier( i_start = t405 i_str = t409 ).
                  t402->load( ).
                  APPEND t404 TO t402->items.
                  t402->save( ).
                ENDIF.
              ENDIF.
              DATA(t410) = ||.
              t364 = t410.
              t352 = t364.
              t10 = t352.
              DATA(t411) = 0.
              t4 = t411.
            ENDIF.
          ENDIF.
        ENDIF.
        CONTINUE.
      ENDIF.
      DATA t412 TYPE abap_bool.
      DATA(t413) = t4.
      DATA(t414) = 3.
      t412 = xsdbool( t413 = t414 ).
      IF t412 = abap_true.
        DATA t415 TYPE abap_bool.
        DATA(t416) = t32.
        DATA(t417) = |\n|.
        t415 = xsdbool( t416 = t417 ).
        IF t415 = abap_true.
          DATA(t418) = VALUE string( ).
          DATA t419 TYPE REF TO zcl_lnt_cd_result.
          DATA(t420) = t2.
          t419 = t420.
          DATA t421 TYPE string.
          DATA(t422) = t10.
          t421 = t422.
          DATA t423 TYPE f.
          DATA(t424) = t6.
          t423 = t424.
          DATA t425 TYPE f.
          DATA(t426) = t8.
          t425 = t426.
          DATA t427 TYPE f.
          DATA t428 TYPE f.
          DATA(t429) = t4.
          t428 = t429.
          t427 = t428.
          DATA(t430) = VALUE string( ).
          DATA t431 TYPE abap_bool.
          DATA t432 TYPE i.
          DATA(t433) = t421.
          DATA(t434) = strlen( t433 ).
          t432 = t434.
          DATA(t435) = 0.
          t431 = xsdbool( t432 > t435 ).
          IF t431 = abap_true.
            DATA t436 TYPE abap_bool.
            DATA t437 TYPE abap_bool.
            DATA(t438) = t427.
            DATA(t439) = CONV f( 3 ).
            t437 = xsdbool( t438 = t439 ).
            t436 = t437.
            IF t437 = abap_true.
              DATA(t440) = VALUE abap_bool( ).
              DATA(t441) = VALUE abap_bool( ).
              DATA(t442) = t421.
              DATA(t443) = |--|.
              DATA(t444) = strlen( t442 ).
              DATA t445 TYPE i.
              DATA(t446) = VALUE i( ).
              DATA(t447) = VALUE string( ).
              t445 = strlen( t443 ).
              IF t445 = 0.
                t441 = abap_true.
              ELSEIF t445 <= t444.
                t446 = 0.
                t447 = t442+t446(t445).
                IF t447 = t443.
                  t441 = abap_true.
                ENDIF.
              ENDIF.
              t440 = t441.
              IF t441 = abap_false.
                DATA(t448) = VALUE abap_bool( ).
                DATA(t449) = t421.
                DATA(t450) = |//|.
                DATA(t451) = strlen( t449 ).
                DATA t452 TYPE i.
                DATA(t453) = VALUE i( ).
                DATA(t454) = VALUE string( ).
                t452 = strlen( t450 ).
                IF t452 = 0.
                  t448 = abap_true.
                ELSEIF t452 <= t451.
                  t453 = 0.
                  t454 = t449+t453(t452).
                  IF t454 = t450.
                    t448 = abap_true.
                  ENDIF.
                ENDIF.
                t440 = t448.
              ENDIF.
              t436 = t440.
            ENDIF.
            IF t436 = abap_true.
              DATA t455 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t456) = t419.
              t455 = t456->result_9728.
              DATA t457 TYPE REF TO zcl_lnt_lx_comment.
              DATA t458 TYPE REF TO zcl_lnt_position.
              DATA(t459) = t423.
              DATA t460 TYPE f.
              DATA(t461) = t425.
              DATA t462 TYPE f.
              DATA t463 TYPE i.
              DATA(t464) = t421.
              DATA(t465) = strlen( t464 ).
              t463 = t465.
              t462 = t463.
              t460 = t461 - t462.
              DATA(t466) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t466->has = abap_true.
              t466->value = t460.
              t458 = NEW zcl_lnt_position( i_row = t459 i_col = t466 ).
              DATA(t467) = t421.
              t457 = NEW zcl_lnt_lx_comment( i_start = t458 i_str = t467 ).
              t455->load( ).
              APPEND t457 TO t455->items.
              t455->save( ).
            ELSE.
              DATA t468 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t469) = t419.
              t468 = t469->result_9728.
              DATA t470 TYPE REF TO zcl_lnt_lx_identifier.
              DATA t471 TYPE REF TO zcl_lnt_position.
              DATA(t472) = t423.
              DATA(t473) = t425.
              DATA(t474) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t474->has = abap_true.
              t474->value = t473.
              t471 = NEW zcl_lnt_position( i_row = t472 i_col = t474 ).
              DATA(t475) = t421.
              t470 = NEW zcl_lnt_lx_identifier( i_start = t471 i_str = t475 ).
              t468->load( ).
              APPEND t470 TO t468->items.
              t468->save( ).
            ENDIF.
          ENDIF.
          DATA(t476) = ||.
          t430 = t476.
          t418 = t430.
          t10 = t418.
          DATA(t477) = 0.
          t4 = t477.
        ELSE.
          DATA t478 TYPE string.
          DATA(t479) = t10.
          DATA(t480) = t32.
          DATA(t481) = strlen( t479 ).
          t478 = |{ t479 }{ t480 }|.
          t10 = t478.
          CONTINUE.
        ENDIF.
      ELSE.
        DATA(t482) = VALUE abap_bool( ).
        DATA t483 TYPE abap_bool.
        DATA t484 TYPE abap_bool.
        DATA(t485) = t4.
        DATA(t486) = 0.
        t484 = xsdbool( t485 = t486 ).
        t483 = t484.
        IF t484 = abap_true.
          DATA t487 TYPE abap_bool.
          DATA(t488) = t32.
          DATA(t489) = |/|.
          t487 = xsdbool( t488 = t489 ).
          t483 = t487.
        ENDIF.
        t482 = t483.
        IF t483 = abap_true.
          DATA t490 TYPE abap_bool.
          DATA(t491) = t71.
          DATA(t492) = |/|.
          t490 = xsdbool( t491 = t492 ).
          t482 = t490.
        ENDIF.
        IF t482 = abap_true.
          DATA(t493) = 3.
          t4 = t493.
          DATA(t494) = VALUE string( ).
          DATA t495 TYPE REF TO zcl_lnt_cd_result.
          DATA(t496) = t2.
          t495 = t496.
          DATA t497 TYPE string.
          DATA(t498) = t10.
          t497 = t498.
          DATA t499 TYPE f.
          DATA(t500) = t6.
          t499 = t500.
          DATA t501 TYPE f.
          DATA(t502) = t8.
          t501 = t502.
          DATA t503 TYPE f.
          DATA t504 TYPE f.
          DATA(t505) = t4.
          t504 = t505.
          t503 = t504.
          DATA(t506) = VALUE string( ).
          DATA t507 TYPE abap_bool.
          DATA t508 TYPE i.
          DATA(t509) = t497.
          DATA(t510) = strlen( t509 ).
          t508 = t510.
          DATA(t511) = 0.
          t507 = xsdbool( t508 > t511 ).
          IF t507 = abap_true.
            DATA t512 TYPE abap_bool.
            DATA t513 TYPE abap_bool.
            DATA(t514) = t503.
            DATA(t515) = CONV f( 3 ).
            t513 = xsdbool( t514 = t515 ).
            t512 = t513.
            IF t513 = abap_true.
              DATA(t516) = VALUE abap_bool( ).
              DATA(t517) = VALUE abap_bool( ).
              DATA(t518) = t497.
              DATA(t519) = |--|.
              DATA(t520) = strlen( t518 ).
              DATA t521 TYPE i.
              DATA(t522) = VALUE i( ).
              DATA(t523) = VALUE string( ).
              t521 = strlen( t519 ).
              IF t521 = 0.
                t517 = abap_true.
              ELSEIF t521 <= t520.
                t522 = 0.
                t523 = t518+t522(t521).
                IF t523 = t519.
                  t517 = abap_true.
                ENDIF.
              ENDIF.
              t516 = t517.
              IF t517 = abap_false.
                DATA(t524) = VALUE abap_bool( ).
                DATA(t525) = t497.
                DATA(t526) = |//|.
                DATA(t527) = strlen( t525 ).
                DATA t528 TYPE i.
                DATA(t529) = VALUE i( ).
                DATA(t530) = VALUE string( ).
                t528 = strlen( t526 ).
                IF t528 = 0.
                  t524 = abap_true.
                ELSEIF t528 <= t527.
                  t529 = 0.
                  t530 = t525+t529(t528).
                  IF t530 = t526.
                    t524 = abap_true.
                  ENDIF.
                ENDIF.
                t516 = t524.
              ENDIF.
              t512 = t516.
            ENDIF.
            IF t512 = abap_true.
              DATA t531 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t532) = t495.
              t531 = t532->result_9728.
              DATA t533 TYPE REF TO zcl_lnt_lx_comment.
              DATA t534 TYPE REF TO zcl_lnt_position.
              DATA(t535) = t499.
              DATA t536 TYPE f.
              DATA(t537) = t501.
              DATA t538 TYPE f.
              DATA t539 TYPE i.
              DATA(t540) = t497.
              DATA(t541) = strlen( t540 ).
              t539 = t541.
              t538 = t539.
              t536 = t537 - t538.
              DATA(t542) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t542->has = abap_true.
              t542->value = t536.
              t534 = NEW zcl_lnt_position( i_row = t535 i_col = t542 ).
              DATA(t543) = t497.
              t533 = NEW zcl_lnt_lx_comment( i_start = t534 i_str = t543 ).
              t531->load( ).
              APPEND t533 TO t531->items.
              t531->save( ).
            ELSE.
              DATA t544 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t545) = t495.
              t544 = t545->result_9728.
              DATA t546 TYPE REF TO zcl_lnt_lx_identifier.
              DATA t547 TYPE REF TO zcl_lnt_position.
              DATA(t548) = t499.
              DATA(t549) = t501.
              DATA(t550) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t550->has = abap_true.
              t550->value = t549.
              t547 = NEW zcl_lnt_position( i_row = t548 i_col = t550 ).
              DATA(t551) = t497.
              t546 = NEW zcl_lnt_lx_identifier( i_start = t547 i_str = t551 ).
              t544->load( ).
              APPEND t546 TO t544->items.
              t544->save( ).
            ENDIF.
          ENDIF.
          DATA(t552) = ||.
          t506 = t552.
          t494 = t506.
          t10 = t494.
          DATA t553 TYPE string.
          DATA(t554) = t10.
          DATA(t555) = t32.
          DATA(t556) = strlen( t554 ).
          t553 = |{ t554 }{ t555 }|.
          t10 = t553.
          CONTINUE.
        ELSE.
          DATA(t557) = VALUE abap_bool( ).
          DATA t558 TYPE abap_bool.
          DATA t559 TYPE abap_bool.
          DATA(t560) = t4.
          DATA(t561) = 0.
          t559 = xsdbool( t560 = t561 ).
          t558 = t559.
          IF t559 = abap_true.
            DATA t562 TYPE abap_bool.
            DATA(t563) = t32.
            DATA(t564) = |-|.
            t562 = xsdbool( t563 = t564 ).
            t558 = t562.
          ENDIF.
          t557 = t558.
          IF t558 = abap_true.
            DATA t565 TYPE abap_bool.
            DATA(t566) = t71.
            DATA(t567) = |-|.
            t565 = xsdbool( t566 = t567 ).
            t557 = t565.
          ENDIF.
          IF t557 = abap_true.
            DATA(t568) = 3.
            t4 = t568.
            DATA(t569) = VALUE string( ).
            DATA t570 TYPE REF TO zcl_lnt_cd_result.
            DATA(t571) = t2.
            t570 = t571.
            DATA t572 TYPE string.
            DATA(t573) = t10.
            t572 = t573.
            DATA t574 TYPE f.
            DATA(t575) = t6.
            t574 = t575.
            DATA t576 TYPE f.
            DATA(t577) = t8.
            t576 = t577.
            DATA t578 TYPE f.
            DATA t579 TYPE f.
            DATA(t580) = t4.
            t579 = t580.
            t578 = t579.
            DATA(t581) = VALUE string( ).
            DATA t582 TYPE abap_bool.
            DATA t583 TYPE i.
            DATA(t584) = t572.
            DATA(t585) = strlen( t584 ).
            t583 = t585.
            DATA(t586) = 0.
            t582 = xsdbool( t583 > t586 ).
            IF t582 = abap_true.
              DATA t587 TYPE abap_bool.
              DATA t588 TYPE abap_bool.
              DATA(t589) = t578.
              DATA(t590) = CONV f( 3 ).
              t588 = xsdbool( t589 = t590 ).
              t587 = t588.
              IF t588 = abap_true.
                DATA(t591) = VALUE abap_bool( ).
                DATA(t592) = VALUE abap_bool( ).
                DATA(t593) = t572.
                DATA(t594) = |--|.
                DATA(t595) = strlen( t593 ).
                DATA t596 TYPE i.
                DATA(t597) = VALUE i( ).
                DATA(t598) = VALUE string( ).
                t596 = strlen( t594 ).
                IF t596 = 0.
                  t592 = abap_true.
                ELSEIF t596 <= t595.
                  t597 = 0.
                  t598 = t593+t597(t596).
                  IF t598 = t594.
                    t592 = abap_true.
                  ENDIF.
                ENDIF.
                t591 = t592.
                IF t592 = abap_false.
                  DATA(t599) = VALUE abap_bool( ).
                  DATA(t600) = t572.
                  DATA(t601) = |//|.
                  DATA(t602) = strlen( t600 ).
                  DATA t603 TYPE i.
                  DATA(t604) = VALUE i( ).
                  DATA(t605) = VALUE string( ).
                  t603 = strlen( t601 ).
                  IF t603 = 0.
                    t599 = abap_true.
                  ELSEIF t603 <= t602.
                    t604 = 0.
                    t605 = t600+t604(t603).
                    IF t605 = t601.
                      t599 = abap_true.
                    ENDIF.
                  ENDIF.
                  t591 = t599.
                ENDIF.
                t587 = t591.
              ENDIF.
              IF t587 = abap_true.
                DATA t606 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t607) = t570.
                t606 = t607->result_9728.
                DATA t608 TYPE REF TO zcl_lnt_lx_comment.
                DATA t609 TYPE REF TO zcl_lnt_position.
                DATA(t610) = t574.
                DATA t611 TYPE f.
                DATA(t612) = t576.
                DATA t613 TYPE f.
                DATA t614 TYPE i.
                DATA(t615) = t572.
                DATA(t616) = strlen( t615 ).
                t614 = t616.
                t613 = t614.
                t611 = t612 - t613.
                DATA(t617) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                t617->has = abap_true.
                t617->value = t611.
                t609 = NEW zcl_lnt_position( i_row = t610 i_col = t617 ).
                DATA(t618) = t572.
                t608 = NEW zcl_lnt_lx_comment( i_start = t609 i_str = t618 ).
                t606->load( ).
                APPEND t608 TO t606->items.
                t606->save( ).
              ELSE.
                DATA t619 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t620) = t570.
                t619 = t620->result_9728.
                DATA t621 TYPE REF TO zcl_lnt_lx_identifier.
                DATA t622 TYPE REF TO zcl_lnt_position.
                DATA(t623) = t574.
                DATA(t624) = t576.
                DATA(t625) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                t625->has = abap_true.
                t625->value = t624.
                t622 = NEW zcl_lnt_position( i_row = t623 i_col = t625 ).
                DATA(t626) = t572.
                t621 = NEW zcl_lnt_lx_identifier( i_start = t622 i_str = t626 ).
                t619->load( ).
                APPEND t621 TO t619->items.
                t619->save( ).
              ENDIF.
            ENDIF.
            DATA(t627) = ||.
            t581 = t627.
            t569 = t581.
            t10 = t569.
            DATA t628 TYPE string.
            DATA(t629) = t10.
            DATA(t630) = t32.
            DATA(t631) = strlen( t629 ).
            t628 = |{ t629 }{ t630 }|.
            t10 = t628.
            CONTINUE.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t632 TYPE abap_bool.
      DATA(t633) = t4.
      DATA(t634) = 4.
      t632 = xsdbool( t633 = t634 ).
      IF t632 = abap_true.
        DATA t635 TYPE abap_bool.
        DATA(t636) = t32.
        DATA(t637) = |\n|.
        t635 = xsdbool( t636 = t637 ).
        IF t635 = abap_true.
          DATA t638 TYPE f.
          DATA(t639) = t6.
          DATA(t640) = CONV f( 1 ).
          t638 = t639 + t640.
          t6 = t638.
        ELSE.
          DATA t641 TYPE abap_bool.
          DATA t642 TYPE abap_bool.
          DATA(t643) = t45.
          DATA(t644) = |*|.
          t642 = xsdbool( t643 = t644 ).
          t641 = t642.
          IF t642 = abap_true.
            DATA t645 TYPE abap_bool.
            DATA(t646) = t32.
            DATA(t647) = |/|.
            t645 = xsdbool( t646 = t647 ).
            t641 = t645.
          ENDIF.
          IF t641 = abap_true.
            DATA(t648) = 0.
            t4 = t648.
          ENDIF.
        ENDIF.
        CONTINUE.
      ELSE.
        DATA(t649) = VALUE abap_bool( ).
        DATA t650 TYPE abap_bool.
        DATA t651 TYPE abap_bool.
        DATA(t652) = t4.
        DATA(t653) = 0.
        t651 = xsdbool( t652 = t653 ).
        t650 = t651.
        IF t651 = abap_true.
          DATA t654 TYPE abap_bool.
          DATA(t655) = t32.
          DATA(t656) = |/|.
          t654 = xsdbool( t655 = t656 ).
          t650 = t654.
        ENDIF.
        t649 = t650.
        IF t650 = abap_true.
          DATA t657 TYPE abap_bool.
          DATA(t658) = t71.
          DATA(t659) = |*|.
          t657 = xsdbool( t658 = t659 ).
          t649 = t657.
        ENDIF.
        IF t649 = abap_true.
          DATA(t660) = 4.
          t4 = t660.
          DATA(t661) = VALUE string( ).
          DATA t662 TYPE REF TO zcl_lnt_cd_result.
          DATA(t663) = t2.
          t662 = t663.
          DATA t664 TYPE string.
          DATA(t665) = t10.
          t664 = t665.
          DATA t666 TYPE f.
          DATA(t667) = t6.
          t666 = t667.
          DATA t668 TYPE f.
          DATA(t669) = t8.
          t668 = t669.
          DATA t670 TYPE f.
          DATA t671 TYPE f.
          DATA(t672) = t4.
          t671 = t672.
          t670 = t671.
          DATA(t673) = VALUE string( ).
          DATA t674 TYPE abap_bool.
          DATA t675 TYPE i.
          DATA(t676) = t664.
          DATA(t677) = strlen( t676 ).
          t675 = t677.
          DATA(t678) = 0.
          t674 = xsdbool( t675 > t678 ).
          IF t674 = abap_true.
            DATA t679 TYPE abap_bool.
            DATA t680 TYPE abap_bool.
            DATA(t681) = t670.
            DATA(t682) = CONV f( 3 ).
            t680 = xsdbool( t681 = t682 ).
            t679 = t680.
            IF t680 = abap_true.
              DATA(t683) = VALUE abap_bool( ).
              DATA(t684) = VALUE abap_bool( ).
              DATA(t685) = t664.
              DATA(t686) = |--|.
              DATA(t687) = strlen( t685 ).
              DATA t688 TYPE i.
              DATA(t689) = VALUE i( ).
              DATA(t690) = VALUE string( ).
              t688 = strlen( t686 ).
              IF t688 = 0.
                t684 = abap_true.
              ELSEIF t688 <= t687.
                t689 = 0.
                t690 = t685+t689(t688).
                IF t690 = t686.
                  t684 = abap_true.
                ENDIF.
              ENDIF.
              t683 = t684.
              IF t684 = abap_false.
                DATA(t691) = VALUE abap_bool( ).
                DATA(t692) = t664.
                DATA(t693) = |//|.
                DATA(t694) = strlen( t692 ).
                DATA t695 TYPE i.
                DATA(t696) = VALUE i( ).
                DATA(t697) = VALUE string( ).
                t695 = strlen( t693 ).
                IF t695 = 0.
                  t691 = abap_true.
                ELSEIF t695 <= t694.
                  t696 = 0.
                  t697 = t692+t696(t695).
                  IF t697 = t693.
                    t691 = abap_true.
                  ENDIF.
                ENDIF.
                t683 = t691.
              ENDIF.
              t679 = t683.
            ENDIF.
            IF t679 = abap_true.
              DATA t698 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t699) = t662.
              t698 = t699->result_9728.
              DATA t700 TYPE REF TO zcl_lnt_lx_comment.
              DATA t701 TYPE REF TO zcl_lnt_position.
              DATA(t702) = t666.
              DATA t703 TYPE f.
              DATA(t704) = t668.
              DATA t705 TYPE f.
              DATA t706 TYPE i.
              DATA(t707) = t664.
              DATA(t708) = strlen( t707 ).
              t706 = t708.
              t705 = t706.
              t703 = t704 - t705.
              DATA(t709) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t709->has = abap_true.
              t709->value = t703.
              t701 = NEW zcl_lnt_position( i_row = t702 i_col = t709 ).
              DATA(t710) = t664.
              t700 = NEW zcl_lnt_lx_comment( i_start = t701 i_str = t710 ).
              t698->load( ).
              APPEND t700 TO t698->items.
              t698->save( ).
            ELSE.
              DATA t711 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t712) = t662.
              t711 = t712->result_9728.
              DATA t713 TYPE REF TO zcl_lnt_lx_identifier.
              DATA t714 TYPE REF TO zcl_lnt_position.
              DATA(t715) = t666.
              DATA(t716) = t668.
              DATA(t717) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t717->has = abap_true.
              t717->value = t716.
              t714 = NEW zcl_lnt_position( i_row = t715 i_col = t717 ).
              DATA(t718) = t664.
              t713 = NEW zcl_lnt_lx_identifier( i_start = t714 i_str = t718 ).
              t711->load( ).
              APPEND t713 TO t711->items.
              t711->save( ).
            ENDIF.
          ENDIF.
          DATA(t719) = ||.
          t673 = t719.
          t661 = t673.
          t10 = t661.
          DATA(t720) = VALUE string( ).
          DATA t721 TYPE REF TO zcl_lnt_stream.
          DATA(t722) = t12.
          t721 = t722.
          DATA(t723) = VALUE string( ).
          DATA(t724) = VALUE string( ).
          DATA(t725) = VALUE string( ).
          DATA t726 TYPE string.
          DATA(t727) = t721.
          t726 = t727->buffer.
          DATA(t728) = 0.
          DATA(t729) = 1.
          DATA(t730) = strlen( t726 ).
          t728 = COND i( WHEN t728 < 0 THEN 0 WHEN t728 > t730 THEN t730 ELSE t728 ).
          t729 = COND i( WHEN t729 < 0 THEN 0 WHEN t729 > t730 THEN t730 ELSE t729 ).
          IF t728 > t729.
            t730 = t728.
            t728 = t729.
            t729 = t730.
          ENDIF.
          t730 = t729 - t728.
          t725 = t726+t728(t730).
          t724 = t725.
          DATA(t731) = t721.
          DATA(t732) = VALUE string( ).
          DATA t733 TYPE string.
          DATA t734 TYPE string.
          DATA(t735) = t721.
          t734 = t735->buffer.
          t733 = t734.
          DATA(t736) = VALUE string( ).
          DATA(t737) = t733.
          DATA(t738) = 1.
          DATA t739 TYPE i.
          DATA(t740) = t733.
          DATA(t741) = strlen( t740 ).
          t739 = t741.
          DATA(t742) = strlen( t737 ).
          t738 = COND i( WHEN t738 < 0 THEN 0 WHEN t738 > t742 THEN t742 ELSE t738 ).
          t739 = COND i( WHEN t739 < 0 THEN 0 WHEN t739 > t742 THEN t742 ELSE t739 ).
          IF t738 > t739.
            t742 = t738.
            t738 = t739.
            t739 = t742.
          ENDIF.
          t742 = t739 - t738.
          t736 = t737+t738(t742).
          t732 = t736.
          t731->buffer = t732.
          DELETE t731->zlnt_record_delet_0597644d88b4 WHERE table_line = `buffer`.
          DATA(t743) = t724.
          t723 = t743.
          t720 = t723.
          DATA t744 TYPE f.
          DATA(t745) = t8.
          DATA(t746) = CONV f( 1 ).
          t744 = t745 + t746.
          t8 = t744.
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA t747 TYPE abap_bool.
      DATA(t748) = t32.
      DATA(t749) = |'|.
      t747 = xsdbool( t748 = t749 ).
      IF t747 = abap_true.
        DATA(t750) = VALUE string( ).
        DATA t751 TYPE REF TO zcl_lnt_cd_result.
        DATA(t752) = t2.
        t751 = t752.
        DATA t753 TYPE string.
        DATA(t754) = t10.
        t753 = t754.
        DATA t755 TYPE f.
        DATA(t756) = t6.
        t755 = t756.
        DATA t757 TYPE f.
        DATA(t758) = t8.
        t757 = t758.
        DATA t759 TYPE f.
        DATA t760 TYPE f.
        DATA(t761) = t4.
        t760 = t761.
        t759 = t760.
        DATA(t762) = VALUE string( ).
        DATA t763 TYPE abap_bool.
        DATA t764 TYPE i.
        DATA(t765) = t753.
        DATA(t766) = strlen( t765 ).
        t764 = t766.
        DATA(t767) = 0.
        t763 = xsdbool( t764 > t767 ).
        IF t763 = abap_true.
          DATA t768 TYPE abap_bool.
          DATA t769 TYPE abap_bool.
          DATA(t770) = t759.
          DATA(t771) = CONV f( 3 ).
          t769 = xsdbool( t770 = t771 ).
          t768 = t769.
          IF t769 = abap_true.
            DATA(t772) = VALUE abap_bool( ).
            DATA(t773) = VALUE abap_bool( ).
            DATA(t774) = t753.
            DATA(t775) = |--|.
            DATA(t776) = strlen( t774 ).
            DATA t777 TYPE i.
            DATA(t778) = VALUE i( ).
            DATA(t779) = VALUE string( ).
            t777 = strlen( t775 ).
            IF t777 = 0.
              t773 = abap_true.
            ELSEIF t777 <= t776.
              t778 = 0.
              t779 = t774+t778(t777).
              IF t779 = t775.
                t773 = abap_true.
              ENDIF.
            ENDIF.
            t772 = t773.
            IF t773 = abap_false.
              DATA(t780) = VALUE abap_bool( ).
              DATA(t781) = t753.
              DATA(t782) = |//|.
              DATA(t783) = strlen( t781 ).
              DATA t784 TYPE i.
              DATA(t785) = VALUE i( ).
              DATA(t786) = VALUE string( ).
              t784 = strlen( t782 ).
              IF t784 = 0.
                t780 = abap_true.
              ELSEIF t784 <= t783.
                t785 = 0.
                t786 = t781+t785(t784).
                IF t786 = t782.
                  t780 = abap_true.
                ENDIF.
              ENDIF.
              t772 = t780.
            ENDIF.
            t768 = t772.
          ENDIF.
          IF t768 = abap_true.
            DATA t787 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t788) = t751.
            t787 = t788->result_9728.
            DATA t789 TYPE REF TO zcl_lnt_lx_comment.
            DATA t790 TYPE REF TO zcl_lnt_position.
            DATA(t791) = t755.
            DATA t792 TYPE f.
            DATA(t793) = t757.
            DATA t794 TYPE f.
            DATA t795 TYPE i.
            DATA(t796) = t753.
            DATA(t797) = strlen( t796 ).
            t795 = t797.
            t794 = t795.
            t792 = t793 - t794.
            DATA(t798) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t798->has = abap_true.
            t798->value = t792.
            t790 = NEW zcl_lnt_position( i_row = t791 i_col = t798 ).
            DATA(t799) = t753.
            t789 = NEW zcl_lnt_lx_comment( i_start = t790 i_str = t799 ).
            t787->load( ).
            APPEND t789 TO t787->items.
            t787->save( ).
          ELSE.
            DATA t800 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t801) = t751.
            t800 = t801->result_9728.
            DATA t802 TYPE REF TO zcl_lnt_lx_identifier.
            DATA t803 TYPE REF TO zcl_lnt_position.
            DATA(t804) = t755.
            DATA(t805) = t757.
            DATA(t806) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t806->has = abap_true.
            t806->value = t805.
            t803 = NEW zcl_lnt_position( i_row = t804 i_col = t806 ).
            DATA(t807) = t753.
            t802 = NEW zcl_lnt_lx_identifier( i_start = t803 i_str = t807 ).
            t800->load( ).
            APPEND t802 TO t800->items.
            t800->save( ).
          ENDIF.
        ENDIF.
        DATA(t808) = ||.
        t762 = t808.
        t750 = t762.
        t10 = t750.
        DATA(t809) = 1.
        t4 = t809.
        DATA t810 TYPE string.
        DATA(t811) = t10.
        DATA(t812) = t32.
        DATA(t813) = strlen( t811 ).
        t810 = |{ t811 }{ t812 }|.
        t10 = t810.
      ELSE.
        DATA t814 TYPE abap_bool.
        DATA(t815) = t32.
        DATA(t816) = |"|.
        t814 = xsdbool( t815 = t816 ).
        IF t814 = abap_true.
          DATA(t817) = VALUE string( ).
          DATA t818 TYPE REF TO zcl_lnt_cd_result.
          DATA(t819) = t2.
          t818 = t819.
          DATA t820 TYPE string.
          DATA(t821) = t10.
          t820 = t821.
          DATA t822 TYPE f.
          DATA(t823) = t6.
          t822 = t823.
          DATA t824 TYPE f.
          DATA(t825) = t8.
          t824 = t825.
          DATA t826 TYPE f.
          DATA t827 TYPE f.
          DATA(t828) = t4.
          t827 = t828.
          t826 = t827.
          DATA(t829) = VALUE string( ).
          DATA t830 TYPE abap_bool.
          DATA t831 TYPE i.
          DATA(t832) = t820.
          DATA(t833) = strlen( t832 ).
          t831 = t833.
          DATA(t834) = 0.
          t830 = xsdbool( t831 > t834 ).
          IF t830 = abap_true.
            DATA t835 TYPE abap_bool.
            DATA t836 TYPE abap_bool.
            DATA(t837) = t826.
            DATA(t838) = CONV f( 3 ).
            t836 = xsdbool( t837 = t838 ).
            t835 = t836.
            IF t836 = abap_true.
              DATA(t839) = VALUE abap_bool( ).
              DATA(t840) = VALUE abap_bool( ).
              DATA(t841) = t820.
              DATA(t842) = |--|.
              DATA(t843) = strlen( t841 ).
              DATA t844 TYPE i.
              DATA(t845) = VALUE i( ).
              DATA(t846) = VALUE string( ).
              t844 = strlen( t842 ).
              IF t844 = 0.
                t840 = abap_true.
              ELSEIF t844 <= t843.
                t845 = 0.
                t846 = t841+t845(t844).
                IF t846 = t842.
                  t840 = abap_true.
                ENDIF.
              ENDIF.
              t839 = t840.
              IF t840 = abap_false.
                DATA(t847) = VALUE abap_bool( ).
                DATA(t848) = t820.
                DATA(t849) = |//|.
                DATA(t850) = strlen( t848 ).
                DATA t851 TYPE i.
                DATA(t852) = VALUE i( ).
                DATA(t853) = VALUE string( ).
                t851 = strlen( t849 ).
                IF t851 = 0.
                  t847 = abap_true.
                ELSEIF t851 <= t850.
                  t852 = 0.
                  t853 = t848+t852(t851).
                  IF t853 = t849.
                    t847 = abap_true.
                  ENDIF.
                ENDIF.
                t839 = t847.
              ENDIF.
              t835 = t839.
            ENDIF.
            IF t835 = abap_true.
              DATA t854 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t855) = t818.
              t854 = t855->result_9728.
              DATA t856 TYPE REF TO zcl_lnt_lx_comment.
              DATA t857 TYPE REF TO zcl_lnt_position.
              DATA(t858) = t822.
              DATA t859 TYPE f.
              DATA(t860) = t824.
              DATA t861 TYPE f.
              DATA t862 TYPE i.
              DATA(t863) = t820.
              DATA(t864) = strlen( t863 ).
              t862 = t864.
              t861 = t862.
              t859 = t860 - t861.
              DATA(t865) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t865->has = abap_true.
              t865->value = t859.
              t857 = NEW zcl_lnt_position( i_row = t858 i_col = t865 ).
              DATA(t866) = t820.
              t856 = NEW zcl_lnt_lx_comment( i_start = t857 i_str = t866 ).
              t854->load( ).
              APPEND t856 TO t854->items.
              t854->save( ).
            ELSE.
              DATA t867 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t868) = t818.
              t867 = t868->result_9728.
              DATA t869 TYPE REF TO zcl_lnt_lx_identifier.
              DATA t870 TYPE REF TO zcl_lnt_position.
              DATA(t871) = t822.
              DATA(t872) = t824.
              DATA(t873) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t873->has = abap_true.
              t873->value = t872.
              t870 = NEW zcl_lnt_position( i_row = t871 i_col = t873 ).
              DATA(t874) = t820.
              t869 = NEW zcl_lnt_lx_identifier( i_start = t870 i_str = t874 ).
              t867->load( ).
              APPEND t869 TO t867->items.
              t867->save( ).
            ENDIF.
          ENDIF.
          DATA(t875) = ||.
          t829 = t875.
          t817 = t829.
          t10 = t817.
          DATA(t876) = 2.
          t4 = t876.
          DATA t877 TYPE string.
          DATA(t878) = t10.
          DATA(t879) = t32.
          DATA(t880) = strlen( t878 ).
          t877 = |{ t878 }{ t879 }|.
          t10 = t877.
        ELSE.
          DATA t881 TYPE abap_bool.
          DATA(t882) = t32.
          DATA(t883) = | |.
          t881 = xsdbool( t882 = t883 ).
          IF t881 = abap_true.
            DATA(t884) = VALUE string( ).
            DATA t885 TYPE REF TO zcl_lnt_cd_result.
            DATA(t886) = t2.
            t885 = t886.
            DATA t887 TYPE string.
            DATA(t888) = t10.
            t887 = t888.
            DATA t889 TYPE f.
            DATA(t890) = t6.
            t889 = t890.
            DATA t891 TYPE f.
            DATA(t892) = t8.
            t891 = t892.
            DATA t893 TYPE f.
            DATA t894 TYPE f.
            DATA(t895) = t4.
            t894 = t895.
            t893 = t894.
            DATA(t896) = VALUE string( ).
            DATA t897 TYPE abap_bool.
            DATA t898 TYPE i.
            DATA(t899) = t887.
            DATA(t900) = strlen( t899 ).
            t898 = t900.
            DATA(t901) = 0.
            t897 = xsdbool( t898 > t901 ).
            IF t897 = abap_true.
              DATA t902 TYPE abap_bool.
              DATA t903 TYPE abap_bool.
              DATA(t904) = t893.
              DATA(t905) = CONV f( 3 ).
              t903 = xsdbool( t904 = t905 ).
              t902 = t903.
              IF t903 = abap_true.
                DATA(t906) = VALUE abap_bool( ).
                DATA(t907) = VALUE abap_bool( ).
                DATA(t908) = t887.
                DATA(t909) = |--|.
                DATA(t910) = strlen( t908 ).
                DATA t911 TYPE i.
                DATA(t912) = VALUE i( ).
                DATA(t913) = VALUE string( ).
                t911 = strlen( t909 ).
                IF t911 = 0.
                  t907 = abap_true.
                ELSEIF t911 <= t910.
                  t912 = 0.
                  t913 = t908+t912(t911).
                  IF t913 = t909.
                    t907 = abap_true.
                  ENDIF.
                ENDIF.
                t906 = t907.
                IF t907 = abap_false.
                  DATA(t914) = VALUE abap_bool( ).
                  DATA(t915) = t887.
                  DATA(t916) = |//|.
                  DATA(t917) = strlen( t915 ).
                  DATA t918 TYPE i.
                  DATA(t919) = VALUE i( ).
                  DATA(t920) = VALUE string( ).
                  t918 = strlen( t916 ).
                  IF t918 = 0.
                    t914 = abap_true.
                  ELSEIF t918 <= t917.
                    t919 = 0.
                    t920 = t915+t919(t918).
                    IF t920 = t916.
                      t914 = abap_true.
                    ENDIF.
                  ENDIF.
                  t906 = t914.
                ENDIF.
                t902 = t906.
              ENDIF.
              IF t902 = abap_true.
                DATA t921 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t922) = t885.
                t921 = t922->result_9728.
                DATA t923 TYPE REF TO zcl_lnt_lx_comment.
                DATA t924 TYPE REF TO zcl_lnt_position.
                DATA(t925) = t889.
                DATA t926 TYPE f.
                DATA(t927) = t891.
                DATA t928 TYPE f.
                DATA t929 TYPE i.
                DATA(t930) = t887.
                DATA(t931) = strlen( t930 ).
                t929 = t931.
                t928 = t929.
                t926 = t927 - t928.
                DATA(t932) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                t932->has = abap_true.
                t932->value = t926.
                t924 = NEW zcl_lnt_position( i_row = t925 i_col = t932 ).
                DATA(t933) = t887.
                t923 = NEW zcl_lnt_lx_comment( i_start = t924 i_str = t933 ).
                t921->load( ).
                APPEND t923 TO t921->items.
                t921->save( ).
              ELSE.
                DATA t934 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t935) = t885.
                t934 = t935->result_9728.
                DATA t936 TYPE REF TO zcl_lnt_lx_identifier.
                DATA t937 TYPE REF TO zcl_lnt_position.
                DATA(t938) = t889.
                DATA(t939) = t891.
                DATA(t940) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                t940->has = abap_true.
                t940->value = t939.
                t937 = NEW zcl_lnt_position( i_row = t938 i_col = t940 ).
                DATA(t941) = t887.
                t936 = NEW zcl_lnt_lx_identifier( i_start = t937 i_str = t941 ).
                t934->load( ).
                APPEND t936 TO t934->items.
                t934->save( ).
              ENDIF.
            ENDIF.
            DATA(t942) = ||.
            t896 = t942.
            t884 = t896.
            t10 = t884.
          ELSE.
            DATA t943 TYPE abap_bool.
            DATA(t944) = t32.
            DATA(t945) = |\t|.
            t943 = xsdbool( t944 = t945 ).
            IF t943 = abap_true.
              DATA(t946) = VALUE string( ).
              DATA t947 TYPE REF TO zcl_lnt_cd_result.
              DATA(t948) = t2.
              t947 = t948.
              DATA t949 TYPE string.
              DATA(t950) = t10.
              t949 = t950.
              DATA t951 TYPE f.
              DATA(t952) = t6.
              t951 = t952.
              DATA t953 TYPE f.
              DATA(t954) = t8.
              t953 = t954.
              DATA t955 TYPE f.
              DATA t956 TYPE f.
              DATA(t957) = t4.
              t956 = t957.
              t955 = t956.
              DATA(t958) = VALUE string( ).
              DATA t959 TYPE abap_bool.
              DATA t960 TYPE i.
              DATA(t961) = t949.
              DATA(t962) = strlen( t961 ).
              t960 = t962.
              DATA(t963) = 0.
              t959 = xsdbool( t960 > t963 ).
              IF t959 = abap_true.
                DATA t964 TYPE abap_bool.
                DATA t965 TYPE abap_bool.
                DATA(t966) = t955.
                DATA(t967) = CONV f( 3 ).
                t965 = xsdbool( t966 = t967 ).
                t964 = t965.
                IF t965 = abap_true.
                  DATA(t968) = VALUE abap_bool( ).
                  DATA(t969) = VALUE abap_bool( ).
                  DATA(t970) = t949.
                  DATA(t971) = |--|.
                  DATA(t972) = strlen( t970 ).
                  DATA t973 TYPE i.
                  DATA(t974) = VALUE i( ).
                  DATA(t975) = VALUE string( ).
                  t973 = strlen( t971 ).
                  IF t973 = 0.
                    t969 = abap_true.
                  ELSEIF t973 <= t972.
                    t974 = 0.
                    t975 = t970+t974(t973).
                    IF t975 = t971.
                      t969 = abap_true.
                    ENDIF.
                  ENDIF.
                  t968 = t969.
                  IF t969 = abap_false.
                    DATA(t976) = VALUE abap_bool( ).
                    DATA(t977) = t949.
                    DATA(t978) = |//|.
                    DATA(t979) = strlen( t977 ).
                    DATA t980 TYPE i.
                    DATA(t981) = VALUE i( ).
                    DATA(t982) = VALUE string( ).
                    t980 = strlen( t978 ).
                    IF t980 = 0.
                      t976 = abap_true.
                    ELSEIF t980 <= t979.
                      t981 = 0.
                      t982 = t977+t981(t980).
                      IF t982 = t978.
                        t976 = abap_true.
                      ENDIF.
                    ENDIF.
                    t968 = t976.
                  ENDIF.
                  t964 = t968.
                ENDIF.
                IF t964 = abap_true.
                  DATA t983 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t984) = t947.
                  t983 = t984->result_9728.
                  DATA t985 TYPE REF TO zcl_lnt_lx_comment.
                  DATA t986 TYPE REF TO zcl_lnt_position.
                  DATA(t987) = t951.
                  DATA t988 TYPE f.
                  DATA(t989) = t953.
                  DATA t990 TYPE f.
                  DATA t991 TYPE i.
                  DATA(t992) = t949.
                  DATA(t993) = strlen( t992 ).
                  t991 = t993.
                  t990 = t991.
                  t988 = t989 - t990.
                  DATA(t994) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                  t994->has = abap_true.
                  t994->value = t988.
                  t986 = NEW zcl_lnt_position( i_row = t987 i_col = t994 ).
                  DATA(t995) = t949.
                  t985 = NEW zcl_lnt_lx_comment( i_start = t986 i_str = t995 ).
                  t983->load( ).
                  APPEND t985 TO t983->items.
                  t983->save( ).
                ELSE.
                  DATA t996 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t997) = t947.
                  t996 = t997->result_9728.
                  DATA t998 TYPE REF TO zcl_lnt_lx_identifier.
                  DATA t999 TYPE REF TO zcl_lnt_position.
                  DATA(t1000) = t951.
                  DATA(t1001) = t953.
                  DATA(t1002) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                  t1002->has = abap_true.
                  t1002->value = t1001.
                  t999 = NEW zcl_lnt_position( i_row = t1000 i_col = t1002 ).
                  DATA(t1003) = t949.
                  t998 = NEW zcl_lnt_lx_identifier( i_start = t999 i_str = t1003 ).
                  t996->load( ).
                  APPEND t998 TO t996->items.
                  t996->save( ).
                ENDIF.
              ENDIF.
              DATA(t1004) = ||.
              t958 = t1004.
              t946 = t958.
              t10 = t946.
            ELSE.
              DATA t1005 TYPE abap_bool.
              DATA(t1006) = t32.
              DATA(t1007) = |\n|.
              t1005 = xsdbool( t1006 = t1007 ).
              IF t1005 = abap_true.
                DATA(t1008) = VALUE string( ).
                DATA t1009 TYPE REF TO zcl_lnt_cd_result.
                DATA(t1010) = t2.
                t1009 = t1010.
                DATA t1011 TYPE string.
                DATA(t1012) = t10.
                t1011 = t1012.
                DATA t1013 TYPE f.
                DATA(t1014) = t6.
                t1013 = t1014.
                DATA t1015 TYPE f.
                DATA(t1016) = t8.
                t1015 = t1016.
                DATA t1017 TYPE f.
                DATA t1018 TYPE f.
                DATA(t1019) = t4.
                t1018 = t1019.
                t1017 = t1018.
                DATA(t1020) = VALUE string( ).
                DATA t1021 TYPE abap_bool.
                DATA t1022 TYPE i.
                DATA(t1023) = t1011.
                DATA(t1024) = strlen( t1023 ).
                t1022 = t1024.
                DATA(t1025) = 0.
                t1021 = xsdbool( t1022 > t1025 ).
                IF t1021 = abap_true.
                  DATA t1026 TYPE abap_bool.
                  DATA t1027 TYPE abap_bool.
                  DATA(t1028) = t1017.
                  DATA(t1029) = CONV f( 3 ).
                  t1027 = xsdbool( t1028 = t1029 ).
                  t1026 = t1027.
                  IF t1027 = abap_true.
                    DATA(t1030) = VALUE abap_bool( ).
                    DATA(t1031) = VALUE abap_bool( ).
                    DATA(t1032) = t1011.
                    DATA(t1033) = |--|.
                    DATA(t1034) = strlen( t1032 ).
                    DATA t1035 TYPE i.
                    DATA(t1036) = VALUE i( ).
                    DATA(t1037) = VALUE string( ).
                    t1035 = strlen( t1033 ).
                    IF t1035 = 0.
                      t1031 = abap_true.
                    ELSEIF t1035 <= t1034.
                      t1036 = 0.
                      t1037 = t1032+t1036(t1035).
                      IF t1037 = t1033.
                        t1031 = abap_true.
                      ENDIF.
                    ENDIF.
                    t1030 = t1031.
                    IF t1031 = abap_false.
                      DATA(t1038) = VALUE abap_bool( ).
                      DATA(t1039) = t1011.
                      DATA(t1040) = |//|.
                      DATA(t1041) = strlen( t1039 ).
                      DATA t1042 TYPE i.
                      DATA(t1043) = VALUE i( ).
                      DATA(t1044) = VALUE string( ).
                      t1042 = strlen( t1040 ).
                      IF t1042 = 0.
                        t1038 = abap_true.
                      ELSEIF t1042 <= t1041.
                        t1043 = 0.
                        t1044 = t1039+t1043(t1042).
                        IF t1044 = t1040.
                          t1038 = abap_true.
                        ENDIF.
                      ENDIF.
                      t1030 = t1038.
                    ENDIF.
                    t1026 = t1030.
                  ENDIF.
                  IF t1026 = abap_true.
                    DATA t1045 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA(t1046) = t1009.
                    t1045 = t1046->result_9728.
                    DATA t1047 TYPE REF TO zcl_lnt_lx_comment.
                    DATA t1048 TYPE REF TO zcl_lnt_position.
                    DATA(t1049) = t1013.
                    DATA t1050 TYPE f.
                    DATA(t1051) = t1015.
                    DATA t1052 TYPE f.
                    DATA t1053 TYPE i.
                    DATA(t1054) = t1011.
                    DATA(t1055) = strlen( t1054 ).
                    t1053 = t1055.
                    t1052 = t1053.
                    t1050 = t1051 - t1052.
                    DATA(t1056) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                    t1056->has = abap_true.
                    t1056->value = t1050.
                    t1048 = NEW zcl_lnt_position( i_row = t1049 i_col = t1056 ).
                    DATA(t1057) = t1011.
                    t1047 = NEW zcl_lnt_lx_comment( i_start = t1048 i_str = t1057 ).
                    t1045->load( ).
                    APPEND t1047 TO t1045->items.
                    t1045->save( ).
                  ELSE.
                    DATA t1058 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA(t1059) = t1009.
                    t1058 = t1059->result_9728.
                    DATA t1060 TYPE REF TO zcl_lnt_lx_identifier.
                    DATA t1061 TYPE REF TO zcl_lnt_position.
                    DATA(t1062) = t1013.
                    DATA(t1063) = t1015.
                    DATA(t1064) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                    t1064->has = abap_true.
                    t1064->value = t1063.
                    t1061 = NEW zcl_lnt_position( i_row = t1062 i_col = t1064 ).
                    DATA(t1065) = t1011.
                    t1060 = NEW zcl_lnt_lx_identifier( i_start = t1061 i_str = t1065 ).
                    t1058->load( ).
                    APPEND t1060 TO t1058->items.
                    t1058->save( ).
                  ENDIF.
                ENDIF.
                DATA(t1066) = ||.
                t1020 = t1066.
                t1008 = t1020.
                t10 = t1008.
                DATA t1067 TYPE f.
                DATA(t1068) = t6.
                DATA(t1069) = CONV f( 1 ).
                t1067 = t1068 + t1069.
                t6 = t1067.
                DATA(t1070) = CONV f( 0 ).
                t8 = t1070.
              ELSE.
                DATA t1071 TYPE abap_bool.
                DATA(t1072) = t32.
                DATA(t1073) = |;|.
                t1071 = xsdbool( t1072 = t1073 ).
                IF t1071 = abap_true.
                  DATA(t1074) = VALUE string( ).
                  DATA t1075 TYPE REF TO zcl_lnt_cd_result.
                  DATA(t1076) = t2.
                  t1075 = t1076.
                  DATA t1077 TYPE string.
                  DATA(t1078) = t10.
                  t1077 = t1078.
                  DATA t1079 TYPE f.
                  DATA(t1080) = t6.
                  t1079 = t1080.
                  DATA t1081 TYPE f.
                  DATA(t1082) = t8.
                  t1081 = t1082.
                  DATA t1083 TYPE f.
                  DATA t1084 TYPE f.
                  DATA(t1085) = t4.
                  t1084 = t1085.
                  t1083 = t1084.
                  DATA(t1086) = VALUE string( ).
                  DATA t1087 TYPE abap_bool.
                  DATA t1088 TYPE i.
                  DATA(t1089) = t1077.
                  DATA(t1090) = strlen( t1089 ).
                  t1088 = t1090.
                  DATA(t1091) = 0.
                  t1087 = xsdbool( t1088 > t1091 ).
                  IF t1087 = abap_true.
                    DATA t1092 TYPE abap_bool.
                    DATA t1093 TYPE abap_bool.
                    DATA(t1094) = t1083.
                    DATA(t1095) = CONV f( 3 ).
                    t1093 = xsdbool( t1094 = t1095 ).
                    t1092 = t1093.
                    IF t1093 = abap_true.
                      DATA(t1096) = VALUE abap_bool( ).
                      DATA(t1097) = VALUE abap_bool( ).
                      DATA(t1098) = t1077.
                      DATA(t1099) = |--|.
                      DATA(t1100) = strlen( t1098 ).
                      DATA t1101 TYPE i.
                      DATA(t1102) = VALUE i( ).
                      DATA(t1103) = VALUE string( ).
                      t1101 = strlen( t1099 ).
                      IF t1101 = 0.
                        t1097 = abap_true.
                      ELSEIF t1101 <= t1100.
                        t1102 = 0.
                        t1103 = t1098+t1102(t1101).
                        IF t1103 = t1099.
                          t1097 = abap_true.
                        ENDIF.
                      ENDIF.
                      t1096 = t1097.
                      IF t1097 = abap_false.
                        DATA(t1104) = VALUE abap_bool( ).
                        DATA(t1105) = t1077.
                        DATA(t1106) = |//|.
                        DATA(t1107) = strlen( t1105 ).
                        DATA t1108 TYPE i.
                        DATA(t1109) = VALUE i( ).
                        DATA(t1110) = VALUE string( ).
                        t1108 = strlen( t1106 ).
                        IF t1108 = 0.
                          t1104 = abap_true.
                        ELSEIF t1108 <= t1107.
                          t1109 = 0.
                          t1110 = t1105+t1109(t1108).
                          IF t1110 = t1106.
                            t1104 = abap_true.
                          ENDIF.
                        ENDIF.
                        t1096 = t1104.
                      ENDIF.
                      t1092 = t1096.
                    ENDIF.
                    IF t1092 = abap_true.
                      DATA t1111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      DATA(t1112) = t1075.
                      t1111 = t1112->result_9728.
                      DATA t1113 TYPE REF TO zcl_lnt_lx_comment.
                      DATA t1114 TYPE REF TO zcl_lnt_position.
                      DATA(t1115) = t1079.
                      DATA t1116 TYPE f.
                      DATA(t1117) = t1081.
                      DATA t1118 TYPE f.
                      DATA t1119 TYPE i.
                      DATA(t1120) = t1077.
                      DATA(t1121) = strlen( t1120 ).
                      t1119 = t1121.
                      t1118 = t1119.
                      t1116 = t1117 - t1118.
                      DATA(t1122) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                      t1122->has = abap_true.
                      t1122->value = t1116.
                      t1114 = NEW zcl_lnt_position( i_row = t1115 i_col = t1122 ).
                      DATA(t1123) = t1077.
                      t1113 = NEW zcl_lnt_lx_comment( i_start = t1114 i_str = t1123 ).
                      t1111->load( ).
                      APPEND t1113 TO t1111->items.
                      t1111->save( ).
                    ELSE.
                      DATA t1124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      DATA(t1125) = t1075.
                      t1124 = t1125->result_9728.
                      DATA t1126 TYPE REF TO zcl_lnt_lx_identifier.
                      DATA t1127 TYPE REF TO zcl_lnt_position.
                      DATA(t1128) = t1079.
                      DATA(t1129) = t1081.
                      DATA(t1130) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                      t1130->has = abap_true.
                      t1130->value = t1129.
                      t1127 = NEW zcl_lnt_position( i_row = t1128 i_col = t1130 ).
                      DATA(t1131) = t1077.
                      t1126 = NEW zcl_lnt_lx_identifier( i_start = t1127 i_str = t1131 ).
                      t1124->load( ).
                      APPEND t1126 TO t1124->items.
                      t1124->save( ).
                    ENDIF.
                  ENDIF.
                  DATA(t1132) = ||.
                  t1086 = t1132.
                  t1074 = t1086.
                  t10 = t1074.
                  DATA(t1133) = VALUE string( ).
                  DATA t1134 TYPE REF TO zcl_lnt_cd_result.
                  DATA(t1135) = t2.
                  t1134 = t1135.
                  DATA t1136 TYPE string.
                  DATA(t1137) = t32.
                  t1136 = t1137.
                  DATA t1138 TYPE f.
                  DATA(t1139) = t6.
                  t1138 = t1139.
                  DATA t1140 TYPE f.
                  DATA(t1141) = t8.
                  t1140 = t1141.
                  DATA t1142 TYPE f.
                  DATA t1143 TYPE f.
                  DATA(t1144) = t4.
                  t1143 = t1144.
                  t1142 = t1143.
                  DATA(t1145) = VALUE string( ).
                  DATA t1146 TYPE abap_bool.
                  DATA t1147 TYPE i.
                  DATA(t1148) = t1136.
                  DATA(t1149) = strlen( t1148 ).
                  t1147 = t1149.
                  DATA(t1150) = 0.
                  t1146 = xsdbool( t1147 > t1150 ).
                  IF t1146 = abap_true.
                    DATA t1151 TYPE abap_bool.
                    DATA t1152 TYPE abap_bool.
                    DATA(t1153) = t1142.
                    DATA(t1154) = CONV f( 3 ).
                    t1152 = xsdbool( t1153 = t1154 ).
                    t1151 = t1152.
                    IF t1152 = abap_true.
                      DATA(t1155) = VALUE abap_bool( ).
                      DATA(t1156) = VALUE abap_bool( ).
                      DATA(t1157) = t1136.
                      DATA(t1158) = |--|.
                      DATA(t1159) = strlen( t1157 ).
                      DATA t1160 TYPE i.
                      DATA(t1161) = VALUE i( ).
                      DATA(t1162) = VALUE string( ).
                      t1160 = strlen( t1158 ).
                      IF t1160 = 0.
                        t1156 = abap_true.
                      ELSEIF t1160 <= t1159.
                        t1161 = 0.
                        t1162 = t1157+t1161(t1160).
                        IF t1162 = t1158.
                          t1156 = abap_true.
                        ENDIF.
                      ENDIF.
                      t1155 = t1156.
                      IF t1156 = abap_false.
                        DATA(t1163) = VALUE abap_bool( ).
                        DATA(t1164) = t1136.
                        DATA(t1165) = |//|.
                        DATA(t1166) = strlen( t1164 ).
                        DATA t1167 TYPE i.
                        DATA(t1168) = VALUE i( ).
                        DATA(t1169) = VALUE string( ).
                        t1167 = strlen( t1165 ).
                        IF t1167 = 0.
                          t1163 = abap_true.
                        ELSEIF t1167 <= t1166.
                          t1168 = 0.
                          t1169 = t1164+t1168(t1167).
                          IF t1169 = t1165.
                            t1163 = abap_true.
                          ENDIF.
                        ENDIF.
                        t1155 = t1163.
                      ENDIF.
                      t1151 = t1155.
                    ENDIF.
                    IF t1151 = abap_true.
                      DATA t1170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      DATA(t1171) = t1134.
                      t1170 = t1171->result_9728.
                      DATA t1172 TYPE REF TO zcl_lnt_lx_comment.
                      DATA t1173 TYPE REF TO zcl_lnt_position.
                      DATA(t1174) = t1138.
                      DATA t1175 TYPE f.
                      DATA(t1176) = t1140.
                      DATA t1177 TYPE f.
                      DATA t1178 TYPE i.
                      DATA(t1179) = t1136.
                      DATA(t1180) = strlen( t1179 ).
                      t1178 = t1180.
                      t1177 = t1178.
                      t1175 = t1176 - t1177.
                      DATA(t1181) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                      t1181->has = abap_true.
                      t1181->value = t1175.
                      t1173 = NEW zcl_lnt_position( i_row = t1174 i_col = t1181 ).
                      DATA(t1182) = t1136.
                      t1172 = NEW zcl_lnt_lx_comment( i_start = t1173 i_str = t1182 ).
                      t1170->load( ).
                      APPEND t1172 TO t1170->items.
                      t1170->save( ).
                    ELSE.
                      DATA t1183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      DATA(t1184) = t1134.
                      t1183 = t1184->result_9728.
                      DATA t1185 TYPE REF TO zcl_lnt_lx_identifier.
                      DATA t1186 TYPE REF TO zcl_lnt_position.
                      DATA(t1187) = t1138.
                      DATA(t1188) = t1140.
                      DATA(t1189) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                      t1189->has = abap_true.
                      t1189->value = t1188.
                      t1186 = NEW zcl_lnt_position( i_row = t1187 i_col = t1189 ).
                      DATA(t1190) = t1136.
                      t1185 = NEW zcl_lnt_lx_identifier( i_start = t1186 i_str = t1190 ).
                      t1183->load( ).
                      APPEND t1185 TO t1183->items.
                      t1183->save( ).
                    ENDIF.
                  ENDIF.
                  DATA(t1191) = ||.
                  t1145 = t1191.
                  t1133 = t1145.
                ELSE.
                  DATA t1192 TYPE abap_bool.
                  DATA(t1193) = t32.
                  DATA(t1194) = |:|.
                  t1192 = xsdbool( t1193 = t1194 ).
                  IF t1192 = abap_true.
                    DATA(t1195) = VALUE string( ).
                    DATA t1196 TYPE REF TO zcl_lnt_cd_result.
                    DATA(t1197) = t2.
                    t1196 = t1197.
                    DATA t1198 TYPE string.
                    DATA(t1199) = t10.
                    t1198 = t1199.
                    DATA t1200 TYPE f.
                    DATA(t1201) = t6.
                    t1200 = t1201.
                    DATA t1202 TYPE f.
                    DATA(t1203) = t8.
                    t1202 = t1203.
                    DATA t1204 TYPE f.
                    DATA t1205 TYPE f.
                    DATA(t1206) = t4.
                    t1205 = t1206.
                    t1204 = t1205.
                    DATA(t1207) = VALUE string( ).
                    DATA t1208 TYPE abap_bool.
                    DATA t1209 TYPE i.
                    DATA(t1210) = t1198.
                    DATA(t1211) = strlen( t1210 ).
                    t1209 = t1211.
                    DATA(t1212) = 0.
                    t1208 = xsdbool( t1209 > t1212 ).
                    IF t1208 = abap_true.
                      DATA t1213 TYPE abap_bool.
                      DATA t1214 TYPE abap_bool.
                      DATA(t1215) = t1204.
                      DATA(t1216) = CONV f( 3 ).
                      t1214 = xsdbool( t1215 = t1216 ).
                      t1213 = t1214.
                      IF t1214 = abap_true.
                        DATA(t1217) = VALUE abap_bool( ).
                        DATA(t1218) = VALUE abap_bool( ).
                        DATA(t1219) = t1198.
                        DATA(t1220) = |--|.
                        DATA(t1221) = strlen( t1219 ).
                        DATA t1222 TYPE i.
                        DATA(t1223) = VALUE i( ).
                        DATA(t1224) = VALUE string( ).
                        t1222 = strlen( t1220 ).
                        IF t1222 = 0.
                          t1218 = abap_true.
                        ELSEIF t1222 <= t1221.
                          t1223 = 0.
                          t1224 = t1219+t1223(t1222).
                          IF t1224 = t1220.
                            t1218 = abap_true.
                          ENDIF.
                        ENDIF.
                        t1217 = t1218.
                        IF t1218 = abap_false.
                          DATA(t1225) = VALUE abap_bool( ).
                          DATA(t1226) = t1198.
                          DATA(t1227) = |//|.
                          DATA(t1228) = strlen( t1226 ).
                          DATA t1229 TYPE i.
                          DATA(t1230) = VALUE i( ).
                          DATA(t1231) = VALUE string( ).
                          t1229 = strlen( t1227 ).
                          IF t1229 = 0.
                            t1225 = abap_true.
                          ELSEIF t1229 <= t1228.
                            t1230 = 0.
                            t1231 = t1226+t1230(t1229).
                            IF t1231 = t1227.
                              t1225 = abap_true.
                            ENDIF.
                          ENDIF.
                          t1217 = t1225.
                        ENDIF.
                        t1213 = t1217.
                      ENDIF.
                      IF t1213 = abap_true.
                        DATA t1232 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        DATA(t1233) = t1196.
                        t1232 = t1233->result_9728.
                        DATA t1234 TYPE REF TO zcl_lnt_lx_comment.
                        DATA t1235 TYPE REF TO zcl_lnt_position.
                        DATA(t1236) = t1200.
                        DATA t1237 TYPE f.
                        DATA(t1238) = t1202.
                        DATA t1239 TYPE f.
                        DATA t1240 TYPE i.
                        DATA(t1241) = t1198.
                        DATA(t1242) = strlen( t1241 ).
                        t1240 = t1242.
                        t1239 = t1240.
                        t1237 = t1238 - t1239.
                        DATA(t1243) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                        t1243->has = abap_true.
                        t1243->value = t1237.
                        t1235 = NEW zcl_lnt_position( i_row = t1236 i_col = t1243 ).
                        DATA(t1244) = t1198.
                        t1234 = NEW zcl_lnt_lx_comment( i_start = t1235 i_str = t1244 ).
                        t1232->load( ).
                        APPEND t1234 TO t1232->items.
                        t1232->save( ).
                      ELSE.
                        DATA t1245 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        DATA(t1246) = t1196.
                        t1245 = t1246->result_9728.
                        DATA t1247 TYPE REF TO zcl_lnt_lx_identifier.
                        DATA t1248 TYPE REF TO zcl_lnt_position.
                        DATA(t1249) = t1200.
                        DATA(t1250) = t1202.
                        DATA(t1251) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                        t1251->has = abap_true.
                        t1251->value = t1250.
                        t1248 = NEW zcl_lnt_position( i_row = t1249 i_col = t1251 ).
                        DATA(t1252) = t1198.
                        t1247 = NEW zcl_lnt_lx_identifier( i_start = t1248 i_str = t1252 ).
                        t1245->load( ).
                        APPEND t1247 TO t1245->items.
                        t1245->save( ).
                      ENDIF.
                    ENDIF.
                    DATA(t1253) = ||.
                    t1207 = t1253.
                    t1195 = t1207.
                    t10 = t1195.
                    DATA(t1254) = VALUE string( ).
                    DATA t1255 TYPE REF TO zcl_lnt_cd_result.
                    DATA(t1256) = t2.
                    t1255 = t1256.
                    DATA t1257 TYPE string.
                    DATA(t1258) = t32.
                    t1257 = t1258.
                    DATA t1259 TYPE f.
                    DATA(t1260) = t6.
                    t1259 = t1260.
                    DATA t1261 TYPE f.
                    DATA(t1262) = t8.
                    t1261 = t1262.
                    DATA t1263 TYPE f.
                    DATA t1264 TYPE f.
                    DATA(t1265) = t4.
                    t1264 = t1265.
                    t1263 = t1264.
                    DATA(t1266) = VALUE string( ).
                    DATA t1267 TYPE abap_bool.
                    DATA t1268 TYPE i.
                    DATA(t1269) = t1257.
                    DATA(t1270) = strlen( t1269 ).
                    t1268 = t1270.
                    DATA(t1271) = 0.
                    t1267 = xsdbool( t1268 > t1271 ).
                    IF t1267 = abap_true.
                      DATA t1272 TYPE abap_bool.
                      DATA t1273 TYPE abap_bool.
                      DATA(t1274) = t1263.
                      DATA(t1275) = CONV f( 3 ).
                      t1273 = xsdbool( t1274 = t1275 ).
                      t1272 = t1273.
                      IF t1273 = abap_true.
                        DATA(t1276) = VALUE abap_bool( ).
                        DATA(t1277) = VALUE abap_bool( ).
                        DATA(t1278) = t1257.
                        DATA(t1279) = |--|.
                        DATA(t1280) = strlen( t1278 ).
                        DATA t1281 TYPE i.
                        DATA(t1282) = VALUE i( ).
                        DATA(t1283) = VALUE string( ).
                        t1281 = strlen( t1279 ).
                        IF t1281 = 0.
                          t1277 = abap_true.
                        ELSEIF t1281 <= t1280.
                          t1282 = 0.
                          t1283 = t1278+t1282(t1281).
                          IF t1283 = t1279.
                            t1277 = abap_true.
                          ENDIF.
                        ENDIF.
                        t1276 = t1277.
                        IF t1277 = abap_false.
                          DATA(t1284) = VALUE abap_bool( ).
                          DATA(t1285) = t1257.
                          DATA(t1286) = |//|.
                          DATA(t1287) = strlen( t1285 ).
                          DATA t1288 TYPE i.
                          DATA(t1289) = VALUE i( ).
                          DATA(t1290) = VALUE string( ).
                          t1288 = strlen( t1286 ).
                          IF t1288 = 0.
                            t1284 = abap_true.
                          ELSEIF t1288 <= t1287.
                            t1289 = 0.
                            t1290 = t1285+t1289(t1288).
                            IF t1290 = t1286.
                              t1284 = abap_true.
                            ENDIF.
                          ENDIF.
                          t1276 = t1284.
                        ENDIF.
                        t1272 = t1276.
                      ENDIF.
                      IF t1272 = abap_true.
                        DATA t1291 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        DATA(t1292) = t1255.
                        t1291 = t1292->result_9728.
                        DATA t1293 TYPE REF TO zcl_lnt_lx_comment.
                        DATA t1294 TYPE REF TO zcl_lnt_position.
                        DATA(t1295) = t1259.
                        DATA t1296 TYPE f.
                        DATA(t1297) = t1261.
                        DATA t1298 TYPE f.
                        DATA t1299 TYPE i.
                        DATA(t1300) = t1257.
                        DATA(t1301) = strlen( t1300 ).
                        t1299 = t1301.
                        t1298 = t1299.
                        t1296 = t1297 - t1298.
                        DATA(t1302) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                        t1302->has = abap_true.
                        t1302->value = t1296.
                        t1294 = NEW zcl_lnt_position( i_row = t1295 i_col = t1302 ).
                        DATA(t1303) = t1257.
                        t1293 = NEW zcl_lnt_lx_comment( i_start = t1294 i_str = t1303 ).
                        t1291->load( ).
                        APPEND t1293 TO t1291->items.
                        t1291->save( ).
                      ELSE.
                        DATA t1304 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        DATA(t1305) = t1255.
                        t1304 = t1305->result_9728.
                        DATA t1306 TYPE REF TO zcl_lnt_lx_identifier.
                        DATA t1307 TYPE REF TO zcl_lnt_position.
                        DATA(t1308) = t1259.
                        DATA(t1309) = t1261.
                        DATA(t1310) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                        t1310->has = abap_true.
                        t1310->value = t1309.
                        t1307 = NEW zcl_lnt_position( i_row = t1308 i_col = t1310 ).
                        DATA(t1311) = t1257.
                        t1306 = NEW zcl_lnt_lx_identifier( i_start = t1307 i_str = t1311 ).
                        t1304->load( ).
                        APPEND t1306 TO t1304->items.
                        t1304->save( ).
                      ENDIF.
                    ENDIF.
                    DATA(t1312) = ||.
                    t1266 = t1312.
                    t1254 = t1266.
                  ELSE.
                    DATA t1313 TYPE abap_bool.
                    DATA(t1314) = t32.
                    DATA(t1315) = |,|.
                    t1313 = xsdbool( t1314 = t1315 ).
                    IF t1313 = abap_true.
                      DATA(t1316) = VALUE string( ).
                      DATA t1317 TYPE REF TO zcl_lnt_cd_result.
                      DATA(t1318) = t2.
                      t1317 = t1318.
                      DATA t1319 TYPE string.
                      DATA(t1320) = t10.
                      t1319 = t1320.
                      DATA t1321 TYPE f.
                      DATA(t1322) = t6.
                      t1321 = t1322.
                      DATA t1323 TYPE f.
                      DATA(t1324) = t8.
                      t1323 = t1324.
                      DATA t1325 TYPE f.
                      DATA t1326 TYPE f.
                      DATA(t1327) = t4.
                      t1326 = t1327.
                      t1325 = t1326.
                      DATA(t1328) = VALUE string( ).
                      DATA t1329 TYPE abap_bool.
                      DATA t1330 TYPE i.
                      DATA(t1331) = t1319.
                      DATA(t1332) = strlen( t1331 ).
                      t1330 = t1332.
                      DATA(t1333) = 0.
                      t1329 = xsdbool( t1330 > t1333 ).
                      IF t1329 = abap_true.
                        DATA t1334 TYPE abap_bool.
                        DATA t1335 TYPE abap_bool.
                        DATA(t1336) = t1325.
                        DATA(t1337) = CONV f( 3 ).
                        t1335 = xsdbool( t1336 = t1337 ).
                        t1334 = t1335.
                        IF t1335 = abap_true.
                          DATA(t1338) = VALUE abap_bool( ).
                          DATA(t1339) = VALUE abap_bool( ).
                          DATA(t1340) = t1319.
                          DATA(t1341) = |--|.
                          DATA(t1342) = strlen( t1340 ).
                          DATA t1343 TYPE i.
                          DATA(t1344) = VALUE i( ).
                          DATA(t1345) = VALUE string( ).
                          t1343 = strlen( t1341 ).
                          IF t1343 = 0.
                            t1339 = abap_true.
                          ELSEIF t1343 <= t1342.
                            t1344 = 0.
                            t1345 = t1340+t1344(t1343).
                            IF t1345 = t1341.
                              t1339 = abap_true.
                            ENDIF.
                          ENDIF.
                          t1338 = t1339.
                          IF t1339 = abap_false.
                            DATA(t1346) = VALUE abap_bool( ).
                            DATA(t1347) = t1319.
                            DATA(t1348) = |//|.
                            DATA(t1349) = strlen( t1347 ).
                            DATA t1350 TYPE i.
                            DATA(t1351) = VALUE i( ).
                            DATA(t1352) = VALUE string( ).
                            t1350 = strlen( t1348 ).
                            IF t1350 = 0.
                              t1346 = abap_true.
                            ELSEIF t1350 <= t1349.
                              t1351 = 0.
                              t1352 = t1347+t1351(t1350).
                              IF t1352 = t1348.
                                t1346 = abap_true.
                              ENDIF.
                            ENDIF.
                            t1338 = t1346.
                          ENDIF.
                          t1334 = t1338.
                        ENDIF.
                        IF t1334 = abap_true.
                          DATA t1353 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                          DATA(t1354) = t1317.
                          t1353 = t1354->result_9728.
                          DATA t1355 TYPE REF TO zcl_lnt_lx_comment.
                          DATA t1356 TYPE REF TO zcl_lnt_position.
                          DATA(t1357) = t1321.
                          DATA t1358 TYPE f.
                          DATA(t1359) = t1323.
                          DATA t1360 TYPE f.
                          DATA t1361 TYPE i.
                          DATA(t1362) = t1319.
                          DATA(t1363) = strlen( t1362 ).
                          t1361 = t1363.
                          t1360 = t1361.
                          t1358 = t1359 - t1360.
                          DATA(t1364) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                          t1364->has = abap_true.
                          t1364->value = t1358.
                          t1356 = NEW zcl_lnt_position( i_row = t1357 i_col = t1364 ).
                          DATA(t1365) = t1319.
                          t1355 = NEW zcl_lnt_lx_comment( i_start = t1356 i_str = t1365 ).
                          t1353->load( ).
                          APPEND t1355 TO t1353->items.
                          t1353->save( ).
                        ELSE.
                          DATA t1366 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                          DATA(t1367) = t1317.
                          t1366 = t1367->result_9728.
                          DATA t1368 TYPE REF TO zcl_lnt_lx_identifier.
                          DATA t1369 TYPE REF TO zcl_lnt_position.
                          DATA(t1370) = t1321.
                          DATA(t1371) = t1323.
                          DATA(t1372) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                          t1372->has = abap_true.
                          t1372->value = t1371.
                          t1369 = NEW zcl_lnt_position( i_row = t1370 i_col = t1372 ).
                          DATA(t1373) = t1319.
                          t1368 = NEW zcl_lnt_lx_identifier( i_start = t1369 i_str = t1373 ).
                          t1366->load( ).
                          APPEND t1368 TO t1366->items.
                          t1366->save( ).
                        ENDIF.
                      ENDIF.
                      DATA(t1374) = ||.
                      t1328 = t1374.
                      t1316 = t1328.
                      t10 = t1316.
                      DATA(t1375) = VALUE string( ).
                      DATA t1376 TYPE REF TO zcl_lnt_cd_result.
                      DATA(t1377) = t2.
                      t1376 = t1377.
                      DATA t1378 TYPE string.
                      DATA(t1379) = t32.
                      t1378 = t1379.
                      DATA t1380 TYPE f.
                      DATA(t1381) = t6.
                      t1380 = t1381.
                      DATA t1382 TYPE f.
                      DATA(t1383) = t8.
                      t1382 = t1383.
                      DATA t1384 TYPE f.
                      DATA t1385 TYPE f.
                      DATA(t1386) = t4.
                      t1385 = t1386.
                      t1384 = t1385.
                      DATA(t1387) = VALUE string( ).
                      DATA t1388 TYPE abap_bool.
                      DATA t1389 TYPE i.
                      DATA(t1390) = t1378.
                      DATA(t1391) = strlen( t1390 ).
                      t1389 = t1391.
                      DATA(t1392) = 0.
                      t1388 = xsdbool( t1389 > t1392 ).
                      IF t1388 = abap_true.
                        DATA t1393 TYPE abap_bool.
                        DATA t1394 TYPE abap_bool.
                        DATA(t1395) = t1384.
                        DATA(t1396) = CONV f( 3 ).
                        t1394 = xsdbool( t1395 = t1396 ).
                        t1393 = t1394.
                        IF t1394 = abap_true.
                          DATA(t1397) = VALUE abap_bool( ).
                          DATA(t1398) = VALUE abap_bool( ).
                          DATA(t1399) = t1378.
                          DATA(t1400) = |--|.
                          DATA(t1401) = strlen( t1399 ).
                          DATA t1402 TYPE i.
                          DATA(t1403) = VALUE i( ).
                          DATA(t1404) = VALUE string( ).
                          t1402 = strlen( t1400 ).
                          IF t1402 = 0.
                            t1398 = abap_true.
                          ELSEIF t1402 <= t1401.
                            t1403 = 0.
                            t1404 = t1399+t1403(t1402).
                            IF t1404 = t1400.
                              t1398 = abap_true.
                            ENDIF.
                          ENDIF.
                          t1397 = t1398.
                          IF t1398 = abap_false.
                            DATA(t1405) = VALUE abap_bool( ).
                            DATA(t1406) = t1378.
                            DATA(t1407) = |//|.
                            DATA(t1408) = strlen( t1406 ).
                            DATA t1409 TYPE i.
                            DATA(t1410) = VALUE i( ).
                            DATA(t1411) = VALUE string( ).
                            t1409 = strlen( t1407 ).
                            IF t1409 = 0.
                              t1405 = abap_true.
                            ELSEIF t1409 <= t1408.
                              t1410 = 0.
                              t1411 = t1406+t1410(t1409).
                              IF t1411 = t1407.
                                t1405 = abap_true.
                              ENDIF.
                            ENDIF.
                            t1397 = t1405.
                          ENDIF.
                          t1393 = t1397.
                        ENDIF.
                        IF t1393 = abap_true.
                          DATA t1412 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                          DATA(t1413) = t1376.
                          t1412 = t1413->result_9728.
                          DATA t1414 TYPE REF TO zcl_lnt_lx_comment.
                          DATA t1415 TYPE REF TO zcl_lnt_position.
                          DATA(t1416) = t1380.
                          DATA t1417 TYPE f.
                          DATA(t1418) = t1382.
                          DATA t1419 TYPE f.
                          DATA t1420 TYPE i.
                          DATA(t1421) = t1378.
                          DATA(t1422) = strlen( t1421 ).
                          t1420 = t1422.
                          t1419 = t1420.
                          t1417 = t1418 - t1419.
                          DATA(t1423) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                          t1423->has = abap_true.
                          t1423->value = t1417.
                          t1415 = NEW zcl_lnt_position( i_row = t1416 i_col = t1423 ).
                          DATA(t1424) = t1378.
                          t1414 = NEW zcl_lnt_lx_comment( i_start = t1415 i_str = t1424 ).
                          t1412->load( ).
                          APPEND t1414 TO t1412->items.
                          t1412->save( ).
                        ELSE.
                          DATA t1425 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                          DATA(t1426) = t1376.
                          t1425 = t1426->result_9728.
                          DATA t1427 TYPE REF TO zcl_lnt_lx_identifier.
                          DATA t1428 TYPE REF TO zcl_lnt_position.
                          DATA(t1429) = t1380.
                          DATA(t1430) = t1382.
                          DATA(t1431) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                          t1431->has = abap_true.
                          t1431->value = t1430.
                          t1428 = NEW zcl_lnt_position( i_row = t1429 i_col = t1431 ).
                          DATA(t1432) = t1378.
                          t1427 = NEW zcl_lnt_lx_identifier( i_start = t1428 i_str = t1432 ).
                          t1425->load( ).
                          APPEND t1427 TO t1425->items.
                          t1425->save( ).
                        ENDIF.
                      ENDIF.
                      DATA(t1433) = ||.
                      t1387 = t1433.
                      t1375 = t1387.
                    ELSE.
                      DATA t1434 TYPE abap_bool.
                      DATA(t1435) = t32.
                      DATA(t1436) = |.|.
                      t1434 = xsdbool( t1435 = t1436 ).
                      IF t1434 = abap_true.
                        DATA(t1437) = VALUE string( ).
                        DATA t1438 TYPE REF TO zcl_lnt_cd_result.
                        DATA(t1439) = t2.
                        t1438 = t1439.
                        DATA t1440 TYPE string.
                        DATA(t1441) = t10.
                        t1440 = t1441.
                        DATA t1442 TYPE f.
                        DATA(t1443) = t6.
                        t1442 = t1443.
                        DATA t1444 TYPE f.
                        DATA(t1445) = t8.
                        t1444 = t1445.
                        DATA t1446 TYPE f.
                        DATA t1447 TYPE f.
                        DATA(t1448) = t4.
                        t1447 = t1448.
                        t1446 = t1447.
                        DATA(t1449) = VALUE string( ).
                        DATA t1450 TYPE abap_bool.
                        DATA t1451 TYPE i.
                        DATA(t1452) = t1440.
                        DATA(t1453) = strlen( t1452 ).
                        t1451 = t1453.
                        DATA(t1454) = 0.
                        t1450 = xsdbool( t1451 > t1454 ).
                        IF t1450 = abap_true.
                          DATA t1455 TYPE abap_bool.
                          DATA t1456 TYPE abap_bool.
                          DATA(t1457) = t1446.
                          DATA(t1458) = CONV f( 3 ).
                          t1456 = xsdbool( t1457 = t1458 ).
                          t1455 = t1456.
                          IF t1456 = abap_true.
                            DATA(t1459) = VALUE abap_bool( ).
                            DATA(t1460) = VALUE abap_bool( ).
                            DATA(t1461) = t1440.
                            DATA(t1462) = |--|.
                            DATA(t1463) = strlen( t1461 ).
                            DATA t1464 TYPE i.
                            DATA(t1465) = VALUE i( ).
                            DATA(t1466) = VALUE string( ).
                            t1464 = strlen( t1462 ).
                            IF t1464 = 0.
                              t1460 = abap_true.
                            ELSEIF t1464 <= t1463.
                              t1465 = 0.
                              t1466 = t1461+t1465(t1464).
                              IF t1466 = t1462.
                                t1460 = abap_true.
                              ENDIF.
                            ENDIF.
                            t1459 = t1460.
                            IF t1460 = abap_false.
                              DATA(t1467) = VALUE abap_bool( ).
                              DATA(t1468) = t1440.
                              DATA(t1469) = |//|.
                              DATA(t1470) = strlen( t1468 ).
                              DATA t1471 TYPE i.
                              DATA(t1472) = VALUE i( ).
                              DATA(t1473) = VALUE string( ).
                              t1471 = strlen( t1469 ).
                              IF t1471 = 0.
                                t1467 = abap_true.
                              ELSEIF t1471 <= t1470.
                                t1472 = 0.
                                t1473 = t1468+t1472(t1471).
                                IF t1473 = t1469.
                                  t1467 = abap_true.
                                ENDIF.
                              ENDIF.
                              t1459 = t1467.
                            ENDIF.
                            t1455 = t1459.
                          ENDIF.
                          IF t1455 = abap_true.
                            DATA t1474 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                            DATA(t1475) = t1438.
                            t1474 = t1475->result_9728.
                            DATA t1476 TYPE REF TO zcl_lnt_lx_comment.
                            DATA t1477 TYPE REF TO zcl_lnt_position.
                            DATA(t1478) = t1442.
                            DATA t1479 TYPE f.
                            DATA(t1480) = t1444.
                            DATA t1481 TYPE f.
                            DATA t1482 TYPE i.
                            DATA(t1483) = t1440.
                            DATA(t1484) = strlen( t1483 ).
                            t1482 = t1484.
                            t1481 = t1482.
                            t1479 = t1480 - t1481.
                            DATA(t1485) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                            t1485->has = abap_true.
                            t1485->value = t1479.
                            t1477 = NEW zcl_lnt_position( i_row = t1478 i_col = t1485 ).
                            DATA(t1486) = t1440.
                            t1476 = NEW zcl_lnt_lx_comment( i_start = t1477 i_str = t1486 ).
                            t1474->load( ).
                            APPEND t1476 TO t1474->items.
                            t1474->save( ).
                          ELSE.
                            DATA t1487 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                            DATA(t1488) = t1438.
                            t1487 = t1488->result_9728.
                            DATA t1489 TYPE REF TO zcl_lnt_lx_identifier.
                            DATA t1490 TYPE REF TO zcl_lnt_position.
                            DATA(t1491) = t1442.
                            DATA(t1492) = t1444.
                            DATA(t1493) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                            t1493->has = abap_true.
                            t1493->value = t1492.
                            t1490 = NEW zcl_lnt_position( i_row = t1491 i_col = t1493 ).
                            DATA(t1494) = t1440.
                            t1489 = NEW zcl_lnt_lx_identifier( i_start = t1490 i_str = t1494 ).
                            t1487->load( ).
                            APPEND t1489 TO t1487->items.
                            t1487->save( ).
                          ENDIF.
                        ENDIF.
                        DATA(t1495) = ||.
                        t1449 = t1495.
                        t1437 = t1449.
                        t10 = t1437.
                        DATA(t1496) = VALUE string( ).
                        DATA t1497 TYPE REF TO zcl_lnt_cd_result.
                        DATA(t1498) = t2.
                        t1497 = t1498.
                        DATA t1499 TYPE string.
                        DATA(t1500) = t32.
                        t1499 = t1500.
                        DATA t1501 TYPE f.
                        DATA(t1502) = t6.
                        t1501 = t1502.
                        DATA t1503 TYPE f.
                        DATA(t1504) = t8.
                        t1503 = t1504.
                        DATA t1505 TYPE f.
                        DATA t1506 TYPE f.
                        DATA(t1507) = t4.
                        t1506 = t1507.
                        t1505 = t1506.
                        DATA(t1508) = VALUE string( ).
                        DATA t1509 TYPE abap_bool.
                        DATA t1510 TYPE i.
                        DATA(t1511) = t1499.
                        DATA(t1512) = strlen( t1511 ).
                        t1510 = t1512.
                        DATA(t1513) = 0.
                        t1509 = xsdbool( t1510 > t1513 ).
                        IF t1509 = abap_true.
                          DATA t1514 TYPE abap_bool.
                          DATA t1515 TYPE abap_bool.
                          DATA(t1516) = t1505.
                          DATA(t1517) = CONV f( 3 ).
                          t1515 = xsdbool( t1516 = t1517 ).
                          t1514 = t1515.
                          IF t1515 = abap_true.
                            DATA(t1518) = VALUE abap_bool( ).
                            DATA(t1519) = VALUE abap_bool( ).
                            DATA(t1520) = t1499.
                            DATA(t1521) = |--|.
                            DATA(t1522) = strlen( t1520 ).
                            DATA t1523 TYPE i.
                            DATA(t1524) = VALUE i( ).
                            DATA(t1525) = VALUE string( ).
                            t1523 = strlen( t1521 ).
                            IF t1523 = 0.
                              t1519 = abap_true.
                            ELSEIF t1523 <= t1522.
                              t1524 = 0.
                              t1525 = t1520+t1524(t1523).
                              IF t1525 = t1521.
                                t1519 = abap_true.
                              ENDIF.
                            ENDIF.
                            t1518 = t1519.
                            IF t1519 = abap_false.
                              DATA(t1526) = VALUE abap_bool( ).
                              DATA(t1527) = t1499.
                              DATA(t1528) = |//|.
                              DATA(t1529) = strlen( t1527 ).
                              DATA t1530 TYPE i.
                              DATA(t1531) = VALUE i( ).
                              DATA(t1532) = VALUE string( ).
                              t1530 = strlen( t1528 ).
                              IF t1530 = 0.
                                t1526 = abap_true.
                              ELSEIF t1530 <= t1529.
                                t1531 = 0.
                                t1532 = t1527+t1531(t1530).
                                IF t1532 = t1528.
                                  t1526 = abap_true.
                                ENDIF.
                              ENDIF.
                              t1518 = t1526.
                            ENDIF.
                            t1514 = t1518.
                          ENDIF.
                          IF t1514 = abap_true.
                            DATA t1533 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                            DATA(t1534) = t1497.
                            t1533 = t1534->result_9728.
                            DATA t1535 TYPE REF TO zcl_lnt_lx_comment.
                            DATA t1536 TYPE REF TO zcl_lnt_position.
                            DATA(t1537) = t1501.
                            DATA t1538 TYPE f.
                            DATA(t1539) = t1503.
                            DATA t1540 TYPE f.
                            DATA t1541 TYPE i.
                            DATA(t1542) = t1499.
                            DATA(t1543) = strlen( t1542 ).
                            t1541 = t1543.
                            t1540 = t1541.
                            t1538 = t1539 - t1540.
                            DATA(t1544) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                            t1544->has = abap_true.
                            t1544->value = t1538.
                            t1536 = NEW zcl_lnt_position( i_row = t1537 i_col = t1544 ).
                            DATA(t1545) = t1499.
                            t1535 = NEW zcl_lnt_lx_comment( i_start = t1536 i_str = t1545 ).
                            t1533->load( ).
                            APPEND t1535 TO t1533->items.
                            t1533->save( ).
                          ELSE.
                            DATA t1546 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                            DATA(t1547) = t1497.
                            t1546 = t1547->result_9728.
                            DATA t1548 TYPE REF TO zcl_lnt_lx_identifier.
                            DATA t1549 TYPE REF TO zcl_lnt_position.
                            DATA(t1550) = t1501.
                            DATA(t1551) = t1503.
                            DATA(t1552) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                            t1552->has = abap_true.
                            t1552->value = t1551.
                            t1549 = NEW zcl_lnt_position( i_row = t1550 i_col = t1552 ).
                            DATA(t1553) = t1499.
                            t1548 = NEW zcl_lnt_lx_identifier( i_start = t1549 i_str = t1553 ).
                            t1546->load( ).
                            APPEND t1548 TO t1546->items.
                            t1546->save( ).
                          ENDIF.
                        ENDIF.
                        DATA(t1554) = ||.
                        t1508 = t1554.
                        t1496 = t1508.
                      ELSE.
                        DATA t1555 TYPE abap_bool.
                        DATA(t1556) = t32.
                        DATA(t1557) = |\{|.
                        t1555 = xsdbool( t1556 = t1557 ).
                        IF t1555 = abap_true.
                          DATA(t1558) = VALUE string( ).
                          DATA t1559 TYPE REF TO zcl_lnt_cd_result.
                          DATA(t1560) = t2.
                          t1559 = t1560.
                          DATA t1561 TYPE string.
                          DATA(t1562) = t10.
                          t1561 = t1562.
                          DATA t1563 TYPE f.
                          DATA(t1564) = t6.
                          t1563 = t1564.
                          DATA t1565 TYPE f.
                          DATA(t1566) = t8.
                          t1565 = t1566.
                          DATA t1567 TYPE f.
                          DATA t1568 TYPE f.
                          DATA(t1569) = t4.
                          t1568 = t1569.
                          t1567 = t1568.
                          DATA(t1570) = VALUE string( ).
                          DATA t1571 TYPE abap_bool.
                          DATA t1572 TYPE i.
                          DATA(t1573) = t1561.
                          DATA(t1574) = strlen( t1573 ).
                          t1572 = t1574.
                          DATA(t1575) = 0.
                          t1571 = xsdbool( t1572 > t1575 ).
                          IF t1571 = abap_true.
                            DATA t1576 TYPE abap_bool.
                            DATA t1577 TYPE abap_bool.
                            DATA(t1578) = t1567.
                            DATA(t1579) = CONV f( 3 ).
                            t1577 = xsdbool( t1578 = t1579 ).
                            t1576 = t1577.
                            IF t1577 = abap_true.
                              DATA(t1580) = VALUE abap_bool( ).
                              DATA(t1581) = VALUE abap_bool( ).
                              DATA(t1582) = t1561.
                              DATA(t1583) = |--|.
                              DATA(t1584) = strlen( t1582 ).
                              DATA t1585 TYPE i.
                              DATA(t1586) = VALUE i( ).
                              DATA(t1587) = VALUE string( ).
                              t1585 = strlen( t1583 ).
                              IF t1585 = 0.
                                t1581 = abap_true.
                              ELSEIF t1585 <= t1584.
                                t1586 = 0.
                                t1587 = t1582+t1586(t1585).
                                IF t1587 = t1583.
                                  t1581 = abap_true.
                                ENDIF.
                              ENDIF.
                              t1580 = t1581.
                              IF t1581 = abap_false.
                                DATA(t1588) = VALUE abap_bool( ).
                                DATA(t1589) = t1561.
                                DATA(t1590) = |//|.
                                DATA(t1591) = strlen( t1589 ).
                                DATA t1592 TYPE i.
                                DATA(t1593) = VALUE i( ).
                                DATA(t1594) = VALUE string( ).
                                t1592 = strlen( t1590 ).
                                IF t1592 = 0.
                                  t1588 = abap_true.
                                ELSEIF t1592 <= t1591.
                                  t1593 = 0.
                                  t1594 = t1589+t1593(t1592).
                                  IF t1594 = t1590.
                                    t1588 = abap_true.
                                  ENDIF.
                                ENDIF.
                                t1580 = t1588.
                              ENDIF.
                              t1576 = t1580.
                            ENDIF.
                            IF t1576 = abap_true.
                              DATA t1595 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                              DATA(t1596) = t1559.
                              t1595 = t1596->result_9728.
                              DATA t1597 TYPE REF TO zcl_lnt_lx_comment.
                              DATA t1598 TYPE REF TO zcl_lnt_position.
                              DATA(t1599) = t1563.
                              DATA t1600 TYPE f.
                              DATA(t1601) = t1565.
                              DATA t1602 TYPE f.
                              DATA t1603 TYPE i.
                              DATA(t1604) = t1561.
                              DATA(t1605) = strlen( t1604 ).
                              t1603 = t1605.
                              t1602 = t1603.
                              t1600 = t1601 - t1602.
                              DATA(t1606) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                              t1606->has = abap_true.
                              t1606->value = t1600.
                              t1598 = NEW zcl_lnt_position( i_row = t1599 i_col = t1606 ).
                              DATA(t1607) = t1561.
                              t1597 = NEW zcl_lnt_lx_comment( i_start = t1598 i_str = t1607 ).
                              t1595->load( ).
                              APPEND t1597 TO t1595->items.
                              t1595->save( ).
                            ELSE.
                              DATA t1608 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                              DATA(t1609) = t1559.
                              t1608 = t1609->result_9728.
                              DATA t1610 TYPE REF TO zcl_lnt_lx_identifier.
                              DATA t1611 TYPE REF TO zcl_lnt_position.
                              DATA(t1612) = t1563.
                              DATA(t1613) = t1565.
                              DATA(t1614) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                              t1614->has = abap_true.
                              t1614->value = t1613.
                              t1611 = NEW zcl_lnt_position( i_row = t1612 i_col = t1614 ).
                              DATA(t1615) = t1561.
                              t1610 = NEW zcl_lnt_lx_identifier( i_start = t1611 i_str = t1615 ).
                              t1608->load( ).
                              APPEND t1610 TO t1608->items.
                              t1608->save( ).
                            ENDIF.
                          ENDIF.
                          DATA(t1616) = ||.
                          t1570 = t1616.
                          t1558 = t1570.
                          t10 = t1558.
                          DATA(t1617) = VALUE string( ).
                          DATA t1618 TYPE REF TO zcl_lnt_cd_result.
                          DATA(t1619) = t2.
                          t1618 = t1619.
                          DATA t1620 TYPE string.
                          DATA(t1621) = t32.
                          t1620 = t1621.
                          DATA t1622 TYPE f.
                          DATA(t1623) = t6.
                          t1622 = t1623.
                          DATA t1624 TYPE f.
                          DATA(t1625) = t8.
                          t1624 = t1625.
                          DATA t1626 TYPE f.
                          DATA t1627 TYPE f.
                          DATA(t1628) = t4.
                          t1627 = t1628.
                          t1626 = t1627.
                          DATA(t1629) = VALUE string( ).
                          DATA t1630 TYPE abap_bool.
                          DATA t1631 TYPE i.
                          DATA(t1632) = t1620.
                          DATA(t1633) = strlen( t1632 ).
                          t1631 = t1633.
                          DATA(t1634) = 0.
                          t1630 = xsdbool( t1631 > t1634 ).
                          IF t1630 = abap_true.
                            DATA t1635 TYPE abap_bool.
                            DATA t1636 TYPE abap_bool.
                            DATA(t1637) = t1626.
                            DATA(t1638) = CONV f( 3 ).
                            t1636 = xsdbool( t1637 = t1638 ).
                            t1635 = t1636.
                            IF t1636 = abap_true.
                              DATA(t1639) = VALUE abap_bool( ).
                              DATA(t1640) = VALUE abap_bool( ).
                              DATA(t1641) = t1620.
                              DATA(t1642) = |--|.
                              DATA(t1643) = strlen( t1641 ).
                              DATA t1644 TYPE i.
                              DATA(t1645) = VALUE i( ).
                              DATA(t1646) = VALUE string( ).
                              t1644 = strlen( t1642 ).
                              IF t1644 = 0.
                                t1640 = abap_true.
                              ELSEIF t1644 <= t1643.
                                t1645 = 0.
                                t1646 = t1641+t1645(t1644).
                                IF t1646 = t1642.
                                  t1640 = abap_true.
                                ENDIF.
                              ENDIF.
                              t1639 = t1640.
                              IF t1640 = abap_false.
                                DATA(t1647) = VALUE abap_bool( ).
                                DATA(t1648) = t1620.
                                DATA(t1649) = |//|.
                                DATA(t1650) = strlen( t1648 ).
                                DATA t1651 TYPE i.
                                DATA(t1652) = VALUE i( ).
                                DATA(t1653) = VALUE string( ).
                                t1651 = strlen( t1649 ).
                                IF t1651 = 0.
                                  t1647 = abap_true.
                                ELSEIF t1651 <= t1650.
                                  t1652 = 0.
                                  t1653 = t1648+t1652(t1651).
                                  IF t1653 = t1649.
                                    t1647 = abap_true.
                                  ENDIF.
                                ENDIF.
                                t1639 = t1647.
                              ENDIF.
                              t1635 = t1639.
                            ENDIF.
                            IF t1635 = abap_true.
                              DATA t1654 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                              DATA(t1655) = t1618.
                              t1654 = t1655->result_9728.
                              DATA t1656 TYPE REF TO zcl_lnt_lx_comment.
                              DATA t1657 TYPE REF TO zcl_lnt_position.
                              DATA(t1658) = t1622.
                              DATA t1659 TYPE f.
                              DATA(t1660) = t1624.
                              DATA t1661 TYPE f.
                              DATA t1662 TYPE i.
                              DATA(t1663) = t1620.
                              DATA(t1664) = strlen( t1663 ).
                              t1662 = t1664.
                              t1661 = t1662.
                              t1659 = t1660 - t1661.
                              DATA(t1665) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                              t1665->has = abap_true.
                              t1665->value = t1659.
                              t1657 = NEW zcl_lnt_position( i_row = t1658 i_col = t1665 ).
                              DATA(t1666) = t1620.
                              t1656 = NEW zcl_lnt_lx_comment( i_start = t1657 i_str = t1666 ).
                              t1654->load( ).
                              APPEND t1656 TO t1654->items.
                              t1654->save( ).
                            ELSE.
                              DATA t1667 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                              DATA(t1668) = t1618.
                              t1667 = t1668->result_9728.
                              DATA t1669 TYPE REF TO zcl_lnt_lx_identifier.
                              DATA t1670 TYPE REF TO zcl_lnt_position.
                              DATA(t1671) = t1622.
                              DATA(t1672) = t1624.
                              DATA(t1673) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                              t1673->has = abap_true.
                              t1673->value = t1672.
                              t1670 = NEW zcl_lnt_position( i_row = t1671 i_col = t1673 ).
                              DATA(t1674) = t1620.
                              t1669 = NEW zcl_lnt_lx_identifier( i_start = t1670 i_str = t1674 ).
                              t1667->load( ).
                              APPEND t1669 TO t1667->items.
                              t1667->save( ).
                            ENDIF.
                          ENDIF.
                          DATA(t1675) = ||.
                          t1629 = t1675.
                          t1617 = t1629.
                        ELSE.
                          DATA t1676 TYPE abap_bool.
                          DATA(t1677) = t32.
                          DATA(t1678) = |\}|.
                          t1676 = xsdbool( t1677 = t1678 ).
                          IF t1676 = abap_true.
                            DATA(t1679) = VALUE string( ).
                            DATA t1680 TYPE REF TO zcl_lnt_cd_result.
                            DATA(t1681) = t2.
                            t1680 = t1681.
                            DATA t1682 TYPE string.
                            DATA(t1683) = t10.
                            t1682 = t1683.
                            DATA t1684 TYPE f.
                            DATA(t1685) = t6.
                            t1684 = t1685.
                            DATA t1686 TYPE f.
                            DATA(t1687) = t8.
                            t1686 = t1687.
                            DATA t1688 TYPE f.
                            DATA t1689 TYPE f.
                            DATA(t1690) = t4.
                            t1689 = t1690.
                            t1688 = t1689.
                            DATA(t1691) = VALUE string( ).
                            DATA t1692 TYPE abap_bool.
                            DATA t1693 TYPE i.
                            DATA(t1694) = t1682.
                            DATA(t1695) = strlen( t1694 ).
                            t1693 = t1695.
                            DATA(t1696) = 0.
                            t1692 = xsdbool( t1693 > t1696 ).
                            IF t1692 = abap_true.
                              DATA t1697 TYPE abap_bool.
                              DATA t1698 TYPE abap_bool.
                              DATA(t1699) = t1688.
                              DATA(t1700) = CONV f( 3 ).
                              t1698 = xsdbool( t1699 = t1700 ).
                              t1697 = t1698.
                              IF t1698 = abap_true.
                                DATA(t1701) = VALUE abap_bool( ).
                                DATA(t1702) = VALUE abap_bool( ).
                                DATA(t1703) = t1682.
                                DATA(t1704) = |--|.
                                DATA(t1705) = strlen( t1703 ).
                                DATA t1706 TYPE i.
                                DATA(t1707) = VALUE i( ).
                                DATA(t1708) = VALUE string( ).
                                t1706 = strlen( t1704 ).
                                IF t1706 = 0.
                                  t1702 = abap_true.
                                ELSEIF t1706 <= t1705.
                                  t1707 = 0.
                                  t1708 = t1703+t1707(t1706).
                                  IF t1708 = t1704.
                                    t1702 = abap_true.
                                  ENDIF.
                                ENDIF.
                                t1701 = t1702.
                                IF t1702 = abap_false.
                                  DATA(t1709) = VALUE abap_bool( ).
                                  DATA(t1710) = t1682.
                                  DATA(t1711) = |//|.
                                  DATA(t1712) = strlen( t1710 ).
                                  DATA t1713 TYPE i.
                                  DATA(t1714) = VALUE i( ).
                                  DATA(t1715) = VALUE string( ).
                                  t1713 = strlen( t1711 ).
                                  IF t1713 = 0.
                                    t1709 = abap_true.
                                  ELSEIF t1713 <= t1712.
                                    t1714 = 0.
                                    t1715 = t1710+t1714(t1713).
                                    IF t1715 = t1711.
                                      t1709 = abap_true.
                                    ENDIF.
                                  ENDIF.
                                  t1701 = t1709.
                                ENDIF.
                                t1697 = t1701.
                              ENDIF.
                              IF t1697 = abap_true.
                                DATA t1716 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                DATA(t1717) = t1680.
                                t1716 = t1717->result_9728.
                                DATA t1718 TYPE REF TO zcl_lnt_lx_comment.
                                DATA t1719 TYPE REF TO zcl_lnt_position.
                                DATA(t1720) = t1684.
                                DATA t1721 TYPE f.
                                DATA(t1722) = t1686.
                                DATA t1723 TYPE f.
                                DATA t1724 TYPE i.
                                DATA(t1725) = t1682.
                                DATA(t1726) = strlen( t1725 ).
                                t1724 = t1726.
                                t1723 = t1724.
                                t1721 = t1722 - t1723.
                                DATA(t1727) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                t1727->has = abap_true.
                                t1727->value = t1721.
                                t1719 = NEW zcl_lnt_position( i_row = t1720 i_col = t1727 ).
                                DATA(t1728) = t1682.
                                t1718 = NEW zcl_lnt_lx_comment( i_start = t1719 i_str = t1728 ).
                                t1716->load( ).
                                APPEND t1718 TO t1716->items.
                                t1716->save( ).
                              ELSE.
                                DATA t1729 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                DATA(t1730) = t1680.
                                t1729 = t1730->result_9728.
                                DATA t1731 TYPE REF TO zcl_lnt_lx_identifier.
                                DATA t1732 TYPE REF TO zcl_lnt_position.
                                DATA(t1733) = t1684.
                                DATA(t1734) = t1686.
                                DATA(t1735) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                t1735->has = abap_true.
                                t1735->value = t1734.
                                t1732 = NEW zcl_lnt_position( i_row = t1733 i_col = t1735 ).
                                DATA(t1736) = t1682.
                                t1731 = NEW zcl_lnt_lx_identifier( i_start = t1732 i_str = t1736 ).
                                t1729->load( ).
                                APPEND t1731 TO t1729->items.
                                t1729->save( ).
                              ENDIF.
                            ENDIF.
                            DATA(t1737) = ||.
                            t1691 = t1737.
                            t1679 = t1691.
                            t10 = t1679.
                            DATA(t1738) = VALUE string( ).
                            DATA t1739 TYPE REF TO zcl_lnt_cd_result.
                            DATA(t1740) = t2.
                            t1739 = t1740.
                            DATA t1741 TYPE string.
                            DATA(t1742) = t32.
                            t1741 = t1742.
                            DATA t1743 TYPE f.
                            DATA(t1744) = t6.
                            t1743 = t1744.
                            DATA t1745 TYPE f.
                            DATA(t1746) = t8.
                            t1745 = t1746.
                            DATA t1747 TYPE f.
                            DATA t1748 TYPE f.
                            DATA(t1749) = t4.
                            t1748 = t1749.
                            t1747 = t1748.
                            DATA(t1750) = VALUE string( ).
                            DATA t1751 TYPE abap_bool.
                            DATA t1752 TYPE i.
                            DATA(t1753) = t1741.
                            DATA(t1754) = strlen( t1753 ).
                            t1752 = t1754.
                            DATA(t1755) = 0.
                            t1751 = xsdbool( t1752 > t1755 ).
                            IF t1751 = abap_true.
                              DATA t1756 TYPE abap_bool.
                              DATA t1757 TYPE abap_bool.
                              DATA(t1758) = t1747.
                              DATA(t1759) = CONV f( 3 ).
                              t1757 = xsdbool( t1758 = t1759 ).
                              t1756 = t1757.
                              IF t1757 = abap_true.
                                DATA(t1760) = VALUE abap_bool( ).
                                DATA(t1761) = VALUE abap_bool( ).
                                DATA(t1762) = t1741.
                                DATA(t1763) = |--|.
                                DATA(t1764) = strlen( t1762 ).
                                DATA t1765 TYPE i.
                                DATA(t1766) = VALUE i( ).
                                DATA(t1767) = VALUE string( ).
                                t1765 = strlen( t1763 ).
                                IF t1765 = 0.
                                  t1761 = abap_true.
                                ELSEIF t1765 <= t1764.
                                  t1766 = 0.
                                  t1767 = t1762+t1766(t1765).
                                  IF t1767 = t1763.
                                    t1761 = abap_true.
                                  ENDIF.
                                ENDIF.
                                t1760 = t1761.
                                IF t1761 = abap_false.
                                  DATA(t1768) = VALUE abap_bool( ).
                                  DATA(t1769) = t1741.
                                  DATA(t1770) = |//|.
                                  DATA(t1771) = strlen( t1769 ).
                                  DATA t1772 TYPE i.
                                  DATA(t1773) = VALUE i( ).
                                  DATA(t1774) = VALUE string( ).
                                  t1772 = strlen( t1770 ).
                                  IF t1772 = 0.
                                    t1768 = abap_true.
                                  ELSEIF t1772 <= t1771.
                                    t1773 = 0.
                                    t1774 = t1769+t1773(t1772).
                                    IF t1774 = t1770.
                                      t1768 = abap_true.
                                    ENDIF.
                                  ENDIF.
                                  t1760 = t1768.
                                ENDIF.
                                t1756 = t1760.
                              ENDIF.
                              IF t1756 = abap_true.
                                DATA t1775 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                DATA(t1776) = t1739.
                                t1775 = t1776->result_9728.
                                DATA t1777 TYPE REF TO zcl_lnt_lx_comment.
                                DATA t1778 TYPE REF TO zcl_lnt_position.
                                DATA(t1779) = t1743.
                                DATA t1780 TYPE f.
                                DATA(t1781) = t1745.
                                DATA t1782 TYPE f.
                                DATA t1783 TYPE i.
                                DATA(t1784) = t1741.
                                DATA(t1785) = strlen( t1784 ).
                                t1783 = t1785.
                                t1782 = t1783.
                                t1780 = t1781 - t1782.
                                DATA(t1786) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                t1786->has = abap_true.
                                t1786->value = t1780.
                                t1778 = NEW zcl_lnt_position( i_row = t1779 i_col = t1786 ).
                                DATA(t1787) = t1741.
                                t1777 = NEW zcl_lnt_lx_comment( i_start = t1778 i_str = t1787 ).
                                t1775->load( ).
                                APPEND t1777 TO t1775->items.
                                t1775->save( ).
                              ELSE.
                                DATA t1788 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                DATA(t1789) = t1739.
                                t1788 = t1789->result_9728.
                                DATA t1790 TYPE REF TO zcl_lnt_lx_identifier.
                                DATA t1791 TYPE REF TO zcl_lnt_position.
                                DATA(t1792) = t1743.
                                DATA(t1793) = t1745.
                                DATA(t1794) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                t1794->has = abap_true.
                                t1794->value = t1793.
                                t1791 = NEW zcl_lnt_position( i_row = t1792 i_col = t1794 ).
                                DATA(t1795) = t1741.
                                t1790 = NEW zcl_lnt_lx_identifier( i_start = t1791 i_str = t1795 ).
                                t1788->load( ).
                                APPEND t1790 TO t1788->items.
                                t1788->save( ).
                              ENDIF.
                            ENDIF.
                            DATA(t1796) = ||.
                            t1750 = t1796.
                            t1738 = t1750.
                          ELSE.
                            DATA t1797 TYPE abap_bool.
                            DATA(t1798) = t32.
                            DATA(t1799) = |(|.
                            t1797 = xsdbool( t1798 = t1799 ).
                            IF t1797 = abap_true.
                              DATA(t1800) = VALUE string( ).
                              DATA t1801 TYPE REF TO zcl_lnt_cd_result.
                              DATA(t1802) = t2.
                              t1801 = t1802.
                              DATA t1803 TYPE string.
                              DATA(t1804) = t10.
                              t1803 = t1804.
                              DATA t1805 TYPE f.
                              DATA(t1806) = t6.
                              t1805 = t1806.
                              DATA t1807 TYPE f.
                              DATA(t1808) = t8.
                              t1807 = t1808.
                              DATA t1809 TYPE f.
                              DATA t1810 TYPE f.
                              DATA(t1811) = t4.
                              t1810 = t1811.
                              t1809 = t1810.
                              DATA(t1812) = VALUE string( ).
                              DATA t1813 TYPE abap_bool.
                              DATA t1814 TYPE i.
                              DATA(t1815) = t1803.
                              DATA(t1816) = strlen( t1815 ).
                              t1814 = t1816.
                              DATA(t1817) = 0.
                              t1813 = xsdbool( t1814 > t1817 ).
                              IF t1813 = abap_true.
                                DATA t1818 TYPE abap_bool.
                                DATA t1819 TYPE abap_bool.
                                DATA(t1820) = t1809.
                                DATA(t1821) = CONV f( 3 ).
                                t1819 = xsdbool( t1820 = t1821 ).
                                t1818 = t1819.
                                IF t1819 = abap_true.
                                  DATA(t1822) = VALUE abap_bool( ).
                                  DATA(t1823) = VALUE abap_bool( ).
                                  DATA(t1824) = t1803.
                                  DATA(t1825) = |--|.
                                  DATA(t1826) = strlen( t1824 ).
                                  DATA t1827 TYPE i.
                                  DATA(t1828) = VALUE i( ).
                                  DATA(t1829) = VALUE string( ).
                                  t1827 = strlen( t1825 ).
                                  IF t1827 = 0.
                                    t1823 = abap_true.
                                  ELSEIF t1827 <= t1826.
                                    t1828 = 0.
                                    t1829 = t1824+t1828(t1827).
                                    IF t1829 = t1825.
                                      t1823 = abap_true.
                                    ENDIF.
                                  ENDIF.
                                  t1822 = t1823.
                                  IF t1823 = abap_false.
                                    DATA(t1830) = VALUE abap_bool( ).
                                    DATA(t1831) = t1803.
                                    DATA(t1832) = |//|.
                                    DATA(t1833) = strlen( t1831 ).
                                    DATA t1834 TYPE i.
                                    DATA(t1835) = VALUE i( ).
                                    DATA(t1836) = VALUE string( ).
                                    t1834 = strlen( t1832 ).
                                    IF t1834 = 0.
                                      t1830 = abap_true.
                                    ELSEIF t1834 <= t1833.
                                      t1835 = 0.
                                      t1836 = t1831+t1835(t1834).
                                      IF t1836 = t1832.
                                        t1830 = abap_true.
                                      ENDIF.
                                    ENDIF.
                                    t1822 = t1830.
                                  ENDIF.
                                  t1818 = t1822.
                                ENDIF.
                                IF t1818 = abap_true.
                                  DATA t1837 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                  DATA(t1838) = t1801.
                                  t1837 = t1838->result_9728.
                                  DATA t1839 TYPE REF TO zcl_lnt_lx_comment.
                                  DATA t1840 TYPE REF TO zcl_lnt_position.
                                  DATA(t1841) = t1805.
                                  DATA t1842 TYPE f.
                                  DATA(t1843) = t1807.
                                  DATA t1844 TYPE f.
                                  DATA t1845 TYPE i.
                                  DATA(t1846) = t1803.
                                  DATA(t1847) = strlen( t1846 ).
                                  t1845 = t1847.
                                  t1844 = t1845.
                                  t1842 = t1843 - t1844.
                                  DATA(t1848) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                  t1848->has = abap_true.
                                  t1848->value = t1842.
                                  t1840 = NEW zcl_lnt_position( i_row = t1841 i_col = t1848 ).
                                  DATA(t1849) = t1803.
                                  t1839 = NEW zcl_lnt_lx_comment( i_start = t1840 i_str = t1849 ).
                                  t1837->load( ).
                                  APPEND t1839 TO t1837->items.
                                  t1837->save( ).
                                ELSE.
                                  DATA t1850 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                  DATA(t1851) = t1801.
                                  t1850 = t1851->result_9728.
                                  DATA t1852 TYPE REF TO zcl_lnt_lx_identifier.
                                  DATA t1853 TYPE REF TO zcl_lnt_position.
                                  DATA(t1854) = t1805.
                                  DATA(t1855) = t1807.
                                  DATA(t1856) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                  t1856->has = abap_true.
                                  t1856->value = t1855.
                                  t1853 = NEW zcl_lnt_position( i_row = t1854 i_col = t1856 ).
                                  DATA(t1857) = t1803.
                                  t1852 = NEW zcl_lnt_lx_identifier( i_start = t1853 i_str = t1857 ).
                                  t1850->load( ).
                                  APPEND t1852 TO t1850->items.
                                  t1850->save( ).
                                ENDIF.
                              ENDIF.
                              DATA(t1858) = ||.
                              t1812 = t1858.
                              t1800 = t1812.
                              t10 = t1800.
                              DATA(t1859) = VALUE string( ).
                              DATA t1860 TYPE REF TO zcl_lnt_cd_result.
                              DATA(t1861) = t2.
                              t1860 = t1861.
                              DATA t1862 TYPE string.
                              DATA(t1863) = t32.
                              t1862 = t1863.
                              DATA t1864 TYPE f.
                              DATA(t1865) = t6.
                              t1864 = t1865.
                              DATA t1866 TYPE f.
                              DATA(t1867) = t8.
                              t1866 = t1867.
                              DATA t1868 TYPE f.
                              DATA t1869 TYPE f.
                              DATA(t1870) = t4.
                              t1869 = t1870.
                              t1868 = t1869.
                              DATA(t1871) = VALUE string( ).
                              DATA t1872 TYPE abap_bool.
                              DATA t1873 TYPE i.
                              DATA(t1874) = t1862.
                              DATA(t1875) = strlen( t1874 ).
                              t1873 = t1875.
                              DATA(t1876) = 0.
                              t1872 = xsdbool( t1873 > t1876 ).
                              IF t1872 = abap_true.
                                DATA t1877 TYPE abap_bool.
                                DATA t1878 TYPE abap_bool.
                                DATA(t1879) = t1868.
                                DATA(t1880) = CONV f( 3 ).
                                t1878 = xsdbool( t1879 = t1880 ).
                                t1877 = t1878.
                                IF t1878 = abap_true.
                                  DATA(t1881) = VALUE abap_bool( ).
                                  DATA(t1882) = VALUE abap_bool( ).
                                  DATA(t1883) = t1862.
                                  DATA(t1884) = |--|.
                                  DATA(t1885) = strlen( t1883 ).
                                  DATA t1886 TYPE i.
                                  DATA(t1887) = VALUE i( ).
                                  DATA(t1888) = VALUE string( ).
                                  t1886 = strlen( t1884 ).
                                  IF t1886 = 0.
                                    t1882 = abap_true.
                                  ELSEIF t1886 <= t1885.
                                    t1887 = 0.
                                    t1888 = t1883+t1887(t1886).
                                    IF t1888 = t1884.
                                      t1882 = abap_true.
                                    ENDIF.
                                  ENDIF.
                                  t1881 = t1882.
                                  IF t1882 = abap_false.
                                    DATA(t1889) = VALUE abap_bool( ).
                                    DATA(t1890) = t1862.
                                    DATA(t1891) = |//|.
                                    DATA(t1892) = strlen( t1890 ).
                                    DATA t1893 TYPE i.
                                    DATA(t1894) = VALUE i( ).
                                    DATA(t1895) = VALUE string( ).
                                    t1893 = strlen( t1891 ).
                                    IF t1893 = 0.
                                      t1889 = abap_true.
                                    ELSEIF t1893 <= t1892.
                                      t1894 = 0.
                                      t1895 = t1890+t1894(t1893).
                                      IF t1895 = t1891.
                                        t1889 = abap_true.
                                      ENDIF.
                                    ENDIF.
                                    t1881 = t1889.
                                  ENDIF.
                                  t1877 = t1881.
                                ENDIF.
                                IF t1877 = abap_true.
                                  DATA t1896 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                  DATA(t1897) = t1860.
                                  t1896 = t1897->result_9728.
                                  DATA t1898 TYPE REF TO zcl_lnt_lx_comment.
                                  DATA t1899 TYPE REF TO zcl_lnt_position.
                                  DATA(t1900) = t1864.
                                  DATA t1901 TYPE f.
                                  DATA(t1902) = t1866.
                                  DATA t1903 TYPE f.
                                  DATA t1904 TYPE i.
                                  DATA(t1905) = t1862.
                                  DATA(t1906) = strlen( t1905 ).
                                  t1904 = t1906.
                                  t1903 = t1904.
                                  t1901 = t1902 - t1903.
                                  DATA(t1907) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                  t1907->has = abap_true.
                                  t1907->value = t1901.
                                  t1899 = NEW zcl_lnt_position( i_row = t1900 i_col = t1907 ).
                                  DATA(t1908) = t1862.
                                  t1898 = NEW zcl_lnt_lx_comment( i_start = t1899 i_str = t1908 ).
                                  t1896->load( ).
                                  APPEND t1898 TO t1896->items.
                                  t1896->save( ).
                                ELSE.
                                  DATA t1909 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                  DATA(t1910) = t1860.
                                  t1909 = t1910->result_9728.
                                  DATA t1911 TYPE REF TO zcl_lnt_lx_identifier.
                                  DATA t1912 TYPE REF TO zcl_lnt_position.
                                  DATA(t1913) = t1864.
                                  DATA(t1914) = t1866.
                                  DATA(t1915) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                  t1915->has = abap_true.
                                  t1915->value = t1914.
                                  t1912 = NEW zcl_lnt_position( i_row = t1913 i_col = t1915 ).
                                  DATA(t1916) = t1862.
                                  t1911 = NEW zcl_lnt_lx_identifier( i_start = t1912 i_str = t1916 ).
                                  t1909->load( ).
                                  APPEND t1911 TO t1909->items.
                                  t1909->save( ).
                                ENDIF.
                              ENDIF.
                              DATA(t1917) = ||.
                              t1871 = t1917.
                              t1859 = t1871.
                            ELSE.
                              DATA t1918 TYPE abap_bool.
                              DATA(t1919) = t32.
                              DATA(t1920) = |)|.
                              t1918 = xsdbool( t1919 = t1920 ).
                              IF t1918 = abap_true.
                                DATA(t1921) = VALUE string( ).
                                DATA t1922 TYPE REF TO zcl_lnt_cd_result.
                                DATA(t1923) = t2.
                                t1922 = t1923.
                                DATA t1924 TYPE string.
                                DATA(t1925) = t10.
                                t1924 = t1925.
                                DATA t1926 TYPE f.
                                DATA(t1927) = t6.
                                t1926 = t1927.
                                DATA t1928 TYPE f.
                                DATA(t1929) = t8.
                                t1928 = t1929.
                                DATA t1930 TYPE f.
                                DATA t1931 TYPE f.
                                DATA(t1932) = t4.
                                t1931 = t1932.
                                t1930 = t1931.
                                DATA(t1933) = VALUE string( ).
                                DATA t1934 TYPE abap_bool.
                                DATA t1935 TYPE i.
                                DATA(t1936) = t1924.
                                DATA(t1937) = strlen( t1936 ).
                                t1935 = t1937.
                                DATA(t1938) = 0.
                                t1934 = xsdbool( t1935 > t1938 ).
                                IF t1934 = abap_true.
                                  DATA t1939 TYPE abap_bool.
                                  DATA t1940 TYPE abap_bool.
                                  DATA(t1941) = t1930.
                                  DATA(t1942) = CONV f( 3 ).
                                  t1940 = xsdbool( t1941 = t1942 ).
                                  t1939 = t1940.
                                  IF t1940 = abap_true.
                                    DATA(t1943) = VALUE abap_bool( ).
                                    DATA(t1944) = VALUE abap_bool( ).
                                    DATA(t1945) = t1924.
                                    DATA(t1946) = |--|.
                                    DATA(t1947) = strlen( t1945 ).
                                    DATA t1948 TYPE i.
                                    DATA(t1949) = VALUE i( ).
                                    DATA(t1950) = VALUE string( ).
                                    t1948 = strlen( t1946 ).
                                    IF t1948 = 0.
                                      t1944 = abap_true.
                                    ELSEIF t1948 <= t1947.
                                      t1949 = 0.
                                      t1950 = t1945+t1949(t1948).
                                      IF t1950 = t1946.
                                        t1944 = abap_true.
                                      ENDIF.
                                    ENDIF.
                                    t1943 = t1944.
                                    IF t1944 = abap_false.
                                      DATA(t1951) = VALUE abap_bool( ).
                                      DATA(t1952) = t1924.
                                      DATA(t1953) = |//|.
                                      DATA(t1954) = strlen( t1952 ).
                                      DATA t1955 TYPE i.
                                      DATA(t1956) = VALUE i( ).
                                      DATA(t1957) = VALUE string( ).
                                      t1955 = strlen( t1953 ).
                                      IF t1955 = 0.
                                        t1951 = abap_true.
                                      ELSEIF t1955 <= t1954.
                                        t1956 = 0.
                                        t1957 = t1952+t1956(t1955).
                                        IF t1957 = t1953.
                                          t1951 = abap_true.
                                        ENDIF.
                                      ENDIF.
                                      t1943 = t1951.
                                    ENDIF.
                                    t1939 = t1943.
                                  ENDIF.
                                  IF t1939 = abap_true.
                                    DATA t1958 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                    DATA(t1959) = t1922.
                                    t1958 = t1959->result_9728.
                                    DATA t1960 TYPE REF TO zcl_lnt_lx_comment.
                                    DATA t1961 TYPE REF TO zcl_lnt_position.
                                    DATA(t1962) = t1926.
                                    DATA t1963 TYPE f.
                                    DATA(t1964) = t1928.
                                    DATA t1965 TYPE f.
                                    DATA t1966 TYPE i.
                                    DATA(t1967) = t1924.
                                    DATA(t1968) = strlen( t1967 ).
                                    t1966 = t1968.
                                    t1965 = t1966.
                                    t1963 = t1964 - t1965.
                                    DATA(t1969) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                    t1969->has = abap_true.
                                    t1969->value = t1963.
                                    t1961 = NEW zcl_lnt_position( i_row = t1962 i_col = t1969 ).
                                    DATA(t1970) = t1924.
                                    t1960 = NEW zcl_lnt_lx_comment( i_start = t1961 i_str = t1970 ).
                                    t1958->load( ).
                                    APPEND t1960 TO t1958->items.
                                    t1958->save( ).
                                  ELSE.
                                    DATA t1971 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                    DATA(t1972) = t1922.
                                    t1971 = t1972->result_9728.
                                    DATA t1973 TYPE REF TO zcl_lnt_lx_identifier.
                                    DATA t1974 TYPE REF TO zcl_lnt_position.
                                    DATA(t1975) = t1926.
                                    DATA(t1976) = t1928.
                                    DATA(t1977) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                    t1977->has = abap_true.
                                    t1977->value = t1976.
                                    t1974 = NEW zcl_lnt_position( i_row = t1975 i_col = t1977 ).
                                    DATA(t1978) = t1924.
                                    t1973 = NEW zcl_lnt_lx_identifier( i_start = t1974 i_str = t1978 ).
                                    t1971->load( ).
                                    APPEND t1973 TO t1971->items.
                                    t1971->save( ).
                                  ENDIF.
                                ENDIF.
                                DATA(t1979) = ||.
                                t1933 = t1979.
                                t1921 = t1933.
                                t10 = t1921.
                                DATA(t1980) = VALUE string( ).
                                DATA t1981 TYPE REF TO zcl_lnt_cd_result.
                                DATA(t1982) = t2.
                                t1981 = t1982.
                                DATA t1983 TYPE string.
                                DATA(t1984) = t32.
                                t1983 = t1984.
                                DATA t1985 TYPE f.
                                DATA(t1986) = t6.
                                t1985 = t1986.
                                DATA t1987 TYPE f.
                                DATA(t1988) = t8.
                                t1987 = t1988.
                                DATA t1989 TYPE f.
                                DATA t1990 TYPE f.
                                DATA(t1991) = t4.
                                t1990 = t1991.
                                t1989 = t1990.
                                DATA(t1992) = VALUE string( ).
                                DATA t1993 TYPE abap_bool.
                                DATA t1994 TYPE i.
                                DATA(t1995) = t1983.
                                DATA(t1996) = strlen( t1995 ).
                                t1994 = t1996.
                                DATA(t1997) = 0.
                                t1993 = xsdbool( t1994 > t1997 ).
                                IF t1993 = abap_true.
                                  DATA t1998 TYPE abap_bool.
                                  DATA t1999 TYPE abap_bool.
                                  DATA(t2000) = t1989.
                                  DATA(t2001) = CONV f( 3 ).
                                  t1999 = xsdbool( t2000 = t2001 ).
                                  t1998 = t1999.
                                  IF t1999 = abap_true.
                                    DATA(t2002) = VALUE abap_bool( ).
                                    DATA(t2003) = VALUE abap_bool( ).
                                    DATA(t2004) = t1983.
                                    DATA(t2005) = |--|.
                                    DATA(t2006) = strlen( t2004 ).
                                    DATA t2007 TYPE i.
                                    DATA(t2008) = VALUE i( ).
                                    DATA(t2009) = VALUE string( ).
                                    t2007 = strlen( t2005 ).
                                    IF t2007 = 0.
                                      t2003 = abap_true.
                                    ELSEIF t2007 <= t2006.
                                      t2008 = 0.
                                      t2009 = t2004+t2008(t2007).
                                      IF t2009 = t2005.
                                        t2003 = abap_true.
                                      ENDIF.
                                    ENDIF.
                                    t2002 = t2003.
                                    IF t2003 = abap_false.
                                      DATA(t2010) = VALUE abap_bool( ).
                                      DATA(t2011) = t1983.
                                      DATA(t2012) = |//|.
                                      DATA(t2013) = strlen( t2011 ).
                                      DATA t2014 TYPE i.
                                      DATA(t2015) = VALUE i( ).
                                      DATA(t2016) = VALUE string( ).
                                      t2014 = strlen( t2012 ).
                                      IF t2014 = 0.
                                        t2010 = abap_true.
                                      ELSEIF t2014 <= t2013.
                                        t2015 = 0.
                                        t2016 = t2011+t2015(t2014).
                                        IF t2016 = t2012.
                                          t2010 = abap_true.
                                        ENDIF.
                                      ENDIF.
                                      t2002 = t2010.
                                    ENDIF.
                                    t1998 = t2002.
                                  ENDIF.
                                  IF t1998 = abap_true.
                                    DATA t2017 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                    DATA(t2018) = t1981.
                                    t2017 = t2018->result_9728.
                                    DATA t2019 TYPE REF TO zcl_lnt_lx_comment.
                                    DATA t2020 TYPE REF TO zcl_lnt_position.
                                    DATA(t2021) = t1985.
                                    DATA t2022 TYPE f.
                                    DATA(t2023) = t1987.
                                    DATA t2024 TYPE f.
                                    DATA t2025 TYPE i.
                                    DATA(t2026) = t1983.
                                    DATA(t2027) = strlen( t2026 ).
                                    t2025 = t2027.
                                    t2024 = t2025.
                                    t2022 = t2023 - t2024.
                                    DATA(t2028) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                    t2028->has = abap_true.
                                    t2028->value = t2022.
                                    t2020 = NEW zcl_lnt_position( i_row = t2021 i_col = t2028 ).
                                    DATA(t2029) = t1983.
                                    t2019 = NEW zcl_lnt_lx_comment( i_start = t2020 i_str = t2029 ).
                                    t2017->load( ).
                                    APPEND t2019 TO t2017->items.
                                    t2017->save( ).
                                  ELSE.
                                    DATA t2030 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                    DATA(t2031) = t1981.
                                    t2030 = t2031->result_9728.
                                    DATA t2032 TYPE REF TO zcl_lnt_lx_identifier.
                                    DATA t2033 TYPE REF TO zcl_lnt_position.
                                    DATA(t2034) = t1985.
                                    DATA(t2035) = t1987.
                                    DATA(t2036) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                    t2036->has = abap_true.
                                    t2036->value = t2035.
                                    t2033 = NEW zcl_lnt_position( i_row = t2034 i_col = t2036 ).
                                    DATA(t2037) = t1983.
                                    t2032 = NEW zcl_lnt_lx_identifier( i_start = t2033 i_str = t2037 ).
                                    t2030->load( ).
                                    APPEND t2032 TO t2030->items.
                                    t2030->save( ).
                                  ENDIF.
                                ENDIF.
                                DATA(t2038) = ||.
                                t1992 = t2038.
                                t1980 = t1992.
                              ELSE.
                                DATA t2039 TYPE abap_bool.
                                DATA(t2040) = t32.
                                DATA(t2041) = |[|.
                                t2039 = xsdbool( t2040 = t2041 ).
                                IF t2039 = abap_true.
                                  DATA(t2042) = VALUE string( ).
                                  DATA t2043 TYPE REF TO zcl_lnt_cd_result.
                                  DATA(t2044) = t2.
                                  t2043 = t2044.
                                  DATA t2045 TYPE string.
                                  DATA(t2046) = t10.
                                  t2045 = t2046.
                                  DATA t2047 TYPE f.
                                  DATA(t2048) = t6.
                                  t2047 = t2048.
                                  DATA t2049 TYPE f.
                                  DATA(t2050) = t8.
                                  t2049 = t2050.
                                  DATA t2051 TYPE f.
                                  DATA t2052 TYPE f.
                                  DATA(t2053) = t4.
                                  t2052 = t2053.
                                  t2051 = t2052.
                                  DATA(t2054) = VALUE string( ).
                                  DATA t2055 TYPE abap_bool.
                                  DATA t2056 TYPE i.
                                  DATA(t2057) = t2045.
                                  DATA(t2058) = strlen( t2057 ).
                                  t2056 = t2058.
                                  DATA(t2059) = 0.
                                  t2055 = xsdbool( t2056 > t2059 ).
                                  IF t2055 = abap_true.
                                    DATA t2060 TYPE abap_bool.
                                    DATA t2061 TYPE abap_bool.
                                    DATA(t2062) = t2051.
                                    DATA(t2063) = CONV f( 3 ).
                                    t2061 = xsdbool( t2062 = t2063 ).
                                    t2060 = t2061.
                                    IF t2061 = abap_true.
                                      DATA(t2064) = VALUE abap_bool( ).
                                      DATA(t2065) = VALUE abap_bool( ).
                                      DATA(t2066) = t2045.
                                      DATA(t2067) = |--|.
                                      DATA(t2068) = strlen( t2066 ).
                                      DATA t2069 TYPE i.
                                      DATA(t2070) = VALUE i( ).
                                      DATA(t2071) = VALUE string( ).
                                      t2069 = strlen( t2067 ).
                                      IF t2069 = 0.
                                        t2065 = abap_true.
                                      ELSEIF t2069 <= t2068.
                                        t2070 = 0.
                                        t2071 = t2066+t2070(t2069).
                                        IF t2071 = t2067.
                                          t2065 = abap_true.
                                        ENDIF.
                                      ENDIF.
                                      t2064 = t2065.
                                      IF t2065 = abap_false.
                                        DATA(t2072) = VALUE abap_bool( ).
                                        DATA(t2073) = t2045.
                                        DATA(t2074) = |//|.
                                        DATA(t2075) = strlen( t2073 ).
                                        DATA t2076 TYPE i.
                                        DATA(t2077) = VALUE i( ).
                                        DATA(t2078) = VALUE string( ).
                                        t2076 = strlen( t2074 ).
                                        IF t2076 = 0.
                                          t2072 = abap_true.
                                        ELSEIF t2076 <= t2075.
                                          t2077 = 0.
                                          t2078 = t2073+t2077(t2076).
                                          IF t2078 = t2074.
                                            t2072 = abap_true.
                                          ENDIF.
                                        ENDIF.
                                        t2064 = t2072.
                                      ENDIF.
                                      t2060 = t2064.
                                    ENDIF.
                                    IF t2060 = abap_true.
                                      DATA t2079 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                      DATA(t2080) = t2043.
                                      t2079 = t2080->result_9728.
                                      DATA t2081 TYPE REF TO zcl_lnt_lx_comment.
                                      DATA t2082 TYPE REF TO zcl_lnt_position.
                                      DATA(t2083) = t2047.
                                      DATA t2084 TYPE f.
                                      DATA(t2085) = t2049.
                                      DATA t2086 TYPE f.
                                      DATA t2087 TYPE i.
                                      DATA(t2088) = t2045.
                                      DATA(t2089) = strlen( t2088 ).
                                      t2087 = t2089.
                                      t2086 = t2087.
                                      t2084 = t2085 - t2086.
                                      DATA(t2090) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                      t2090->has = abap_true.
                                      t2090->value = t2084.
                                      t2082 = NEW zcl_lnt_position( i_row = t2083 i_col = t2090 ).
                                      DATA(t2091) = t2045.
                                      t2081 = NEW zcl_lnt_lx_comment( i_start = t2082 i_str = t2091 ).
                                      t2079->load( ).
                                      APPEND t2081 TO t2079->items.
                                      t2079->save( ).
                                    ELSE.
                                      DATA t2092 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                      DATA(t2093) = t2043.
                                      t2092 = t2093->result_9728.
                                      DATA t2094 TYPE REF TO zcl_lnt_lx_identifier.
                                      DATA t2095 TYPE REF TO zcl_lnt_position.
                                      DATA(t2096) = t2047.
                                      DATA(t2097) = t2049.
                                      DATA(t2098) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                      t2098->has = abap_true.
                                      t2098->value = t2097.
                                      t2095 = NEW zcl_lnt_position( i_row = t2096 i_col = t2098 ).
                                      DATA(t2099) = t2045.
                                      t2094 = NEW zcl_lnt_lx_identifier( i_start = t2095 i_str = t2099 ).
                                      t2092->load( ).
                                      APPEND t2094 TO t2092->items.
                                      t2092->save( ).
                                    ENDIF.
                                  ENDIF.
                                  DATA(t2100) = ||.
                                  t2054 = t2100.
                                  t2042 = t2054.
                                  t10 = t2042.
                                  DATA(t2101) = VALUE string( ).
                                  DATA t2102 TYPE REF TO zcl_lnt_cd_result.
                                  DATA(t2103) = t2.
                                  t2102 = t2103.
                                  DATA t2104 TYPE string.
                                  DATA(t2105) = t32.
                                  t2104 = t2105.
                                  DATA t2106 TYPE f.
                                  DATA(t2107) = t6.
                                  t2106 = t2107.
                                  DATA t2108 TYPE f.
                                  DATA(t2109) = t8.
                                  t2108 = t2109.
                                  DATA t2110 TYPE f.
                                  DATA t2111 TYPE f.
                                  DATA(t2112) = t4.
                                  t2111 = t2112.
                                  t2110 = t2111.
                                  DATA(t2113) = VALUE string( ).
                                  DATA t2114 TYPE abap_bool.
                                  DATA t2115 TYPE i.
                                  DATA(t2116) = t2104.
                                  DATA(t2117) = strlen( t2116 ).
                                  t2115 = t2117.
                                  DATA(t2118) = 0.
                                  t2114 = xsdbool( t2115 > t2118 ).
                                  IF t2114 = abap_true.
                                    DATA t2119 TYPE abap_bool.
                                    DATA t2120 TYPE abap_bool.
                                    DATA(t2121) = t2110.
                                    DATA(t2122) = CONV f( 3 ).
                                    t2120 = xsdbool( t2121 = t2122 ).
                                    t2119 = t2120.
                                    IF t2120 = abap_true.
                                      DATA(t2123) = VALUE abap_bool( ).
                                      DATA(t2124) = VALUE abap_bool( ).
                                      DATA(t2125) = t2104.
                                      DATA(t2126) = |--|.
                                      DATA(t2127) = strlen( t2125 ).
                                      DATA t2128 TYPE i.
                                      DATA(t2129) = VALUE i( ).
                                      DATA(t2130) = VALUE string( ).
                                      t2128 = strlen( t2126 ).
                                      IF t2128 = 0.
                                        t2124 = abap_true.
                                      ELSEIF t2128 <= t2127.
                                        t2129 = 0.
                                        t2130 = t2125+t2129(t2128).
                                        IF t2130 = t2126.
                                          t2124 = abap_true.
                                        ENDIF.
                                      ENDIF.
                                      t2123 = t2124.
                                      IF t2124 = abap_false.
                                        DATA(t2131) = VALUE abap_bool( ).
                                        DATA(t2132) = t2104.
                                        DATA(t2133) = |//|.
                                        DATA(t2134) = strlen( t2132 ).
                                        DATA t2135 TYPE i.
                                        DATA(t2136) = VALUE i( ).
                                        DATA(t2137) = VALUE string( ).
                                        t2135 = strlen( t2133 ).
                                        IF t2135 = 0.
                                          t2131 = abap_true.
                                        ELSEIF t2135 <= t2134.
                                          t2136 = 0.
                                          t2137 = t2132+t2136(t2135).
                                          IF t2137 = t2133.
                                            t2131 = abap_true.
                                          ENDIF.
                                        ENDIF.
                                        t2123 = t2131.
                                      ENDIF.
                                      t2119 = t2123.
                                    ENDIF.
                                    IF t2119 = abap_true.
                                      DATA t2138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                      DATA(t2139) = t2102.
                                      t2138 = t2139->result_9728.
                                      DATA t2140 TYPE REF TO zcl_lnt_lx_comment.
                                      DATA t2141 TYPE REF TO zcl_lnt_position.
                                      DATA(t2142) = t2106.
                                      DATA t2143 TYPE f.
                                      DATA(t2144) = t2108.
                                      DATA t2145 TYPE f.
                                      DATA t2146 TYPE i.
                                      DATA(t2147) = t2104.
                                      DATA(t2148) = strlen( t2147 ).
                                      t2146 = t2148.
                                      t2145 = t2146.
                                      t2143 = t2144 - t2145.
                                      DATA(t2149) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                      t2149->has = abap_true.
                                      t2149->value = t2143.
                                      t2141 = NEW zcl_lnt_position( i_row = t2142 i_col = t2149 ).
                                      DATA(t2150) = t2104.
                                      t2140 = NEW zcl_lnt_lx_comment( i_start = t2141 i_str = t2150 ).
                                      t2138->load( ).
                                      APPEND t2140 TO t2138->items.
                                      t2138->save( ).
                                    ELSE.
                                      DATA t2151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                      DATA(t2152) = t2102.
                                      t2151 = t2152->result_9728.
                                      DATA t2153 TYPE REF TO zcl_lnt_lx_identifier.
                                      DATA t2154 TYPE REF TO zcl_lnt_position.
                                      DATA(t2155) = t2106.
                                      DATA(t2156) = t2108.
                                      DATA(t2157) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                      t2157->has = abap_true.
                                      t2157->value = t2156.
                                      t2154 = NEW zcl_lnt_position( i_row = t2155 i_col = t2157 ).
                                      DATA(t2158) = t2104.
                                      t2153 = NEW zcl_lnt_lx_identifier( i_start = t2154 i_str = t2158 ).
                                      t2151->load( ).
                                      APPEND t2153 TO t2151->items.
                                      t2151->save( ).
                                    ENDIF.
                                  ENDIF.
                                  DATA(t2159) = ||.
                                  t2113 = t2159.
                                  t2101 = t2113.
                                ELSE.
                                  DATA t2160 TYPE abap_bool.
                                  DATA(t2161) = t32.
                                  DATA(t2162) = |]|.
                                  t2160 = xsdbool( t2161 = t2162 ).
                                  IF t2160 = abap_true.
                                    DATA(t2163) = VALUE string( ).
                                    DATA t2164 TYPE REF TO zcl_lnt_cd_result.
                                    DATA(t2165) = t2.
                                    t2164 = t2165.
                                    DATA t2166 TYPE string.
                                    DATA(t2167) = t10.
                                    t2166 = t2167.
                                    DATA t2168 TYPE f.
                                    DATA(t2169) = t6.
                                    t2168 = t2169.
                                    DATA t2170 TYPE f.
                                    DATA(t2171) = t8.
                                    t2170 = t2171.
                                    DATA t2172 TYPE f.
                                    DATA t2173 TYPE f.
                                    DATA(t2174) = t4.
                                    t2173 = t2174.
                                    t2172 = t2173.
                                    DATA(t2175) = VALUE string( ).
                                    DATA t2176 TYPE abap_bool.
                                    DATA t2177 TYPE i.
                                    DATA(t2178) = t2166.
                                    DATA(t2179) = strlen( t2178 ).
                                    t2177 = t2179.
                                    DATA(t2180) = 0.
                                    t2176 = xsdbool( t2177 > t2180 ).
                                    IF t2176 = abap_true.
                                      DATA t2181 TYPE abap_bool.
                                      DATA t2182 TYPE abap_bool.
                                      DATA(t2183) = t2172.
                                      DATA(t2184) = CONV f( 3 ).
                                      t2182 = xsdbool( t2183 = t2184 ).
                                      t2181 = t2182.
                                      IF t2182 = abap_true.
                                        DATA(t2185) = VALUE abap_bool( ).
                                        DATA(t2186) = VALUE abap_bool( ).
                                        DATA(t2187) = t2166.
                                        DATA(t2188) = |--|.
                                        DATA(t2189) = strlen( t2187 ).
                                        DATA t2190 TYPE i.
                                        DATA(t2191) = VALUE i( ).
                                        DATA(t2192) = VALUE string( ).
                                        t2190 = strlen( t2188 ).
                                        IF t2190 = 0.
                                          t2186 = abap_true.
                                        ELSEIF t2190 <= t2189.
                                          t2191 = 0.
                                          t2192 = t2187+t2191(t2190).
                                          IF t2192 = t2188.
                                            t2186 = abap_true.
                                          ENDIF.
                                        ENDIF.
                                        t2185 = t2186.
                                        IF t2186 = abap_false.
                                          DATA(t2193) = VALUE abap_bool( ).
                                          DATA(t2194) = t2166.
                                          DATA(t2195) = |//|.
                                          DATA(t2196) = strlen( t2194 ).
                                          DATA t2197 TYPE i.
                                          DATA(t2198) = VALUE i( ).
                                          DATA(t2199) = VALUE string( ).
                                          t2197 = strlen( t2195 ).
                                          IF t2197 = 0.
                                            t2193 = abap_true.
                                          ELSEIF t2197 <= t2196.
                                            t2198 = 0.
                                            t2199 = t2194+t2198(t2197).
                                            IF t2199 = t2195.
                                              t2193 = abap_true.
                                            ENDIF.
                                          ENDIF.
                                          t2185 = t2193.
                                        ENDIF.
                                        t2181 = t2185.
                                      ENDIF.
                                      IF t2181 = abap_true.
                                        DATA t2200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                        DATA(t2201) = t2164.
                                        t2200 = t2201->result_9728.
                                        DATA t2202 TYPE REF TO zcl_lnt_lx_comment.
                                        DATA t2203 TYPE REF TO zcl_lnt_position.
                                        DATA(t2204) = t2168.
                                        DATA t2205 TYPE f.
                                        DATA(t2206) = t2170.
                                        DATA t2207 TYPE f.
                                        DATA t2208 TYPE i.
                                        DATA(t2209) = t2166.
                                        DATA(t2210) = strlen( t2209 ).
                                        t2208 = t2210.
                                        t2207 = t2208.
                                        t2205 = t2206 - t2207.
                                        DATA(t2211) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                        t2211->has = abap_true.
                                        t2211->value = t2205.
                                        t2203 = NEW zcl_lnt_position( i_row = t2204 i_col = t2211 ).
                                        DATA(t2212) = t2166.
                                        t2202 = NEW zcl_lnt_lx_comment( i_start = t2203 i_str = t2212 ).
                                        t2200->load( ).
                                        APPEND t2202 TO t2200->items.
                                        t2200->save( ).
                                      ELSE.
                                        DATA t2213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                        DATA(t2214) = t2164.
                                        t2213 = t2214->result_9728.
                                        DATA t2215 TYPE REF TO zcl_lnt_lx_identifier.
                                        DATA t2216 TYPE REF TO zcl_lnt_position.
                                        DATA(t2217) = t2168.
                                        DATA(t2218) = t2170.
                                        DATA(t2219) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                        t2219->has = abap_true.
                                        t2219->value = t2218.
                                        t2216 = NEW zcl_lnt_position( i_row = t2217 i_col = t2219 ).
                                        DATA(t2220) = t2166.
                                        t2215 = NEW zcl_lnt_lx_identifier( i_start = t2216 i_str = t2220 ).
                                        t2213->load( ).
                                        APPEND t2215 TO t2213->items.
                                        t2213->save( ).
                                      ENDIF.
                                    ENDIF.
                                    DATA(t2221) = ||.
                                    t2175 = t2221.
                                    t2163 = t2175.
                                    t10 = t2163.
                                    DATA(t2222) = VALUE string( ).
                                    DATA t2223 TYPE REF TO zcl_lnt_cd_result.
                                    DATA(t2224) = t2.
                                    t2223 = t2224.
                                    DATA t2225 TYPE string.
                                    DATA(t2226) = t32.
                                    t2225 = t2226.
                                    DATA t2227 TYPE f.
                                    DATA(t2228) = t6.
                                    t2227 = t2228.
                                    DATA t2229 TYPE f.
                                    DATA(t2230) = t8.
                                    t2229 = t2230.
                                    DATA t2231 TYPE f.
                                    DATA t2232 TYPE f.
                                    DATA(t2233) = t4.
                                    t2232 = t2233.
                                    t2231 = t2232.
                                    DATA(t2234) = VALUE string( ).
                                    DATA t2235 TYPE abap_bool.
                                    DATA t2236 TYPE i.
                                    DATA(t2237) = t2225.
                                    DATA(t2238) = strlen( t2237 ).
                                    t2236 = t2238.
                                    DATA(t2239) = 0.
                                    t2235 = xsdbool( t2236 > t2239 ).
                                    IF t2235 = abap_true.
                                      DATA t2240 TYPE abap_bool.
                                      DATA t2241 TYPE abap_bool.
                                      DATA(t2242) = t2231.
                                      DATA(t2243) = CONV f( 3 ).
                                      t2241 = xsdbool( t2242 = t2243 ).
                                      t2240 = t2241.
                                      IF t2241 = abap_true.
                                        DATA(t2244) = VALUE abap_bool( ).
                                        DATA(t2245) = VALUE abap_bool( ).
                                        DATA(t2246) = t2225.
                                        DATA(t2247) = |--|.
                                        DATA(t2248) = strlen( t2246 ).
                                        DATA t2249 TYPE i.
                                        DATA(t2250) = VALUE i( ).
                                        DATA(t2251) = VALUE string( ).
                                        t2249 = strlen( t2247 ).
                                        IF t2249 = 0.
                                          t2245 = abap_true.
                                        ELSEIF t2249 <= t2248.
                                          t2250 = 0.
                                          t2251 = t2246+t2250(t2249).
                                          IF t2251 = t2247.
                                            t2245 = abap_true.
                                          ENDIF.
                                        ENDIF.
                                        t2244 = t2245.
                                        IF t2245 = abap_false.
                                          DATA(t2252) = VALUE abap_bool( ).
                                          DATA(t2253) = t2225.
                                          DATA(t2254) = |//|.
                                          DATA(t2255) = strlen( t2253 ).
                                          DATA t2256 TYPE i.
                                          DATA(t2257) = VALUE i( ).
                                          DATA(t2258) = VALUE string( ).
                                          t2256 = strlen( t2254 ).
                                          IF t2256 = 0.
                                            t2252 = abap_true.
                                          ELSEIF t2256 <= t2255.
                                            t2257 = 0.
                                            t2258 = t2253+t2257(t2256).
                                            IF t2258 = t2254.
                                              t2252 = abap_true.
                                            ENDIF.
                                          ENDIF.
                                          t2244 = t2252.
                                        ENDIF.
                                        t2240 = t2244.
                                      ENDIF.
                                      IF t2240 = abap_true.
                                        DATA t2259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                        DATA(t2260) = t2223.
                                        t2259 = t2260->result_9728.
                                        DATA t2261 TYPE REF TO zcl_lnt_lx_comment.
                                        DATA t2262 TYPE REF TO zcl_lnt_position.
                                        DATA(t2263) = t2227.
                                        DATA t2264 TYPE f.
                                        DATA(t2265) = t2229.
                                        DATA t2266 TYPE f.
                                        DATA t2267 TYPE i.
                                        DATA(t2268) = t2225.
                                        DATA(t2269) = strlen( t2268 ).
                                        t2267 = t2269.
                                        t2266 = t2267.
                                        t2264 = t2265 - t2266.
                                        DATA(t2270) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                        t2270->has = abap_true.
                                        t2270->value = t2264.
                                        t2262 = NEW zcl_lnt_position( i_row = t2263 i_col = t2270 ).
                                        DATA(t2271) = t2225.
                                        t2261 = NEW zcl_lnt_lx_comment( i_start = t2262 i_str = t2271 ).
                                        t2259->load( ).
                                        APPEND t2261 TO t2259->items.
                                        t2259->save( ).
                                      ELSE.
                                        DATA t2272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                        DATA(t2273) = t2223.
                                        t2272 = t2273->result_9728.
                                        DATA t2274 TYPE REF TO zcl_lnt_lx_identifier.
                                        DATA t2275 TYPE REF TO zcl_lnt_position.
                                        DATA(t2276) = t2227.
                                        DATA(t2277) = t2229.
                                        DATA(t2278) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                        t2278->has = abap_true.
                                        t2278->value = t2277.
                                        t2275 = NEW zcl_lnt_position( i_row = t2276 i_col = t2278 ).
                                        DATA(t2279) = t2225.
                                        t2274 = NEW zcl_lnt_lx_identifier( i_start = t2275 i_str = t2279 ).
                                        t2272->load( ).
                                        APPEND t2274 TO t2272->items.
                                        t2272->save( ).
                                      ENDIF.
                                    ENDIF.
                                    DATA(t2280) = ||.
                                    t2234 = t2280.
                                    t2222 = t2234.
                                  ELSE.
                                    DATA t2281 TYPE abap_bool.
                                    DATA(t2282) = t32.
                                    DATA(t2283) = |!|.
                                    t2281 = xsdbool( t2282 = t2283 ).
                                    IF t2281 = abap_true.
                                      DATA(t2284) = VALUE string( ).
                                      DATA t2285 TYPE REF TO zcl_lnt_cd_result.
                                      DATA(t2286) = t2.
                                      t2285 = t2286.
                                      DATA t2287 TYPE string.
                                      DATA(t2288) = t10.
                                      t2287 = t2288.
                                      DATA t2289 TYPE f.
                                      DATA(t2290) = t6.
                                      t2289 = t2290.
                                      DATA t2291 TYPE f.
                                      DATA(t2292) = t8.
                                      t2291 = t2292.
                                      DATA t2293 TYPE f.
                                      DATA t2294 TYPE f.
                                      DATA(t2295) = t4.
                                      t2294 = t2295.
                                      t2293 = t2294.
                                      DATA(t2296) = VALUE string( ).
                                      DATA t2297 TYPE abap_bool.
                                      DATA t2298 TYPE i.
                                      DATA(t2299) = t2287.
                                      DATA(t2300) = strlen( t2299 ).
                                      t2298 = t2300.
                                      DATA(t2301) = 0.
                                      t2297 = xsdbool( t2298 > t2301 ).
                                      IF t2297 = abap_true.
                                        DATA t2302 TYPE abap_bool.
                                        DATA t2303 TYPE abap_bool.
                                        DATA(t2304) = t2293.
                                        DATA(t2305) = CONV f( 3 ).
                                        t2303 = xsdbool( t2304 = t2305 ).
                                        t2302 = t2303.
                                        IF t2303 = abap_true.
                                          DATA(t2306) = VALUE abap_bool( ).
                                          DATA(t2307) = VALUE abap_bool( ).
                                          DATA(t2308) = t2287.
                                          DATA(t2309) = |--|.
                                          DATA(t2310) = strlen( t2308 ).
                                          DATA t2311 TYPE i.
                                          DATA(t2312) = VALUE i( ).
                                          DATA(t2313) = VALUE string( ).
                                          t2311 = strlen( t2309 ).
                                          IF t2311 = 0.
                                            t2307 = abap_true.
                                          ELSEIF t2311 <= t2310.
                                            t2312 = 0.
                                            t2313 = t2308+t2312(t2311).
                                            IF t2313 = t2309.
                                              t2307 = abap_true.
                                            ENDIF.
                                          ENDIF.
                                          t2306 = t2307.
                                          IF t2307 = abap_false.
                                            DATA(t2314) = VALUE abap_bool( ).
                                            DATA(t2315) = t2287.
                                            DATA(t2316) = |//|.
                                            DATA(t2317) = strlen( t2315 ).
                                            DATA t2318 TYPE i.
                                            DATA(t2319) = VALUE i( ).
                                            DATA(t2320) = VALUE string( ).
                                            t2318 = strlen( t2316 ).
                                            IF t2318 = 0.
                                              t2314 = abap_true.
                                            ELSEIF t2318 <= t2317.
                                              t2319 = 0.
                                              t2320 = t2315+t2319(t2318).
                                              IF t2320 = t2316.
                                                t2314 = abap_true.
                                              ENDIF.
                                            ENDIF.
                                            t2306 = t2314.
                                          ENDIF.
                                          t2302 = t2306.
                                        ENDIF.
                                        IF t2302 = abap_true.
                                          DATA t2321 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                          DATA(t2322) = t2285.
                                          t2321 = t2322->result_9728.
                                          DATA t2323 TYPE REF TO zcl_lnt_lx_comment.
                                          DATA t2324 TYPE REF TO zcl_lnt_position.
                                          DATA(t2325) = t2289.
                                          DATA t2326 TYPE f.
                                          DATA(t2327) = t2291.
                                          DATA t2328 TYPE f.
                                          DATA t2329 TYPE i.
                                          DATA(t2330) = t2287.
                                          DATA(t2331) = strlen( t2330 ).
                                          t2329 = t2331.
                                          t2328 = t2329.
                                          t2326 = t2327 - t2328.
                                          DATA(t2332) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                          t2332->has = abap_true.
                                          t2332->value = t2326.
                                          t2324 = NEW zcl_lnt_position( i_row = t2325 i_col = t2332 ).
                                          DATA(t2333) = t2287.
                                          t2323 = NEW zcl_lnt_lx_comment( i_start = t2324 i_str = t2333 ).
                                          t2321->load( ).
                                          APPEND t2323 TO t2321->items.
                                          t2321->save( ).
                                        ELSE.
                                          DATA t2334 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                          DATA(t2335) = t2285.
                                          t2334 = t2335->result_9728.
                                          DATA t2336 TYPE REF TO zcl_lnt_lx_identifier.
                                          DATA t2337 TYPE REF TO zcl_lnt_position.
                                          DATA(t2338) = t2289.
                                          DATA(t2339) = t2291.
                                          DATA(t2340) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                          t2340->has = abap_true.
                                          t2340->value = t2339.
                                          t2337 = NEW zcl_lnt_position( i_row = t2338 i_col = t2340 ).
                                          DATA(t2341) = t2287.
                                          t2336 = NEW zcl_lnt_lx_identifier( i_start = t2337 i_str = t2341 ).
                                          t2334->load( ).
                                          APPEND t2336 TO t2334->items.
                                          t2334->save( ).
                                        ENDIF.
                                      ENDIF.
                                      DATA(t2342) = ||.
                                      t2296 = t2342.
                                      t2284 = t2296.
                                      t10 = t2284.
                                      DATA(t2343) = VALUE string( ).
                                      DATA t2344 TYPE REF TO zcl_lnt_cd_result.
                                      DATA(t2345) = t2.
                                      t2344 = t2345.
                                      DATA t2346 TYPE string.
                                      DATA(t2347) = t32.
                                      t2346 = t2347.
                                      DATA t2348 TYPE f.
                                      DATA(t2349) = t6.
                                      t2348 = t2349.
                                      DATA t2350 TYPE f.
                                      DATA(t2351) = t8.
                                      t2350 = t2351.
                                      DATA t2352 TYPE f.
                                      DATA t2353 TYPE f.
                                      DATA(t2354) = t4.
                                      t2353 = t2354.
                                      t2352 = t2353.
                                      DATA(t2355) = VALUE string( ).
                                      DATA t2356 TYPE abap_bool.
                                      DATA t2357 TYPE i.
                                      DATA(t2358) = t2346.
                                      DATA(t2359) = strlen( t2358 ).
                                      t2357 = t2359.
                                      DATA(t2360) = 0.
                                      t2356 = xsdbool( t2357 > t2360 ).
                                      IF t2356 = abap_true.
                                        DATA t2361 TYPE abap_bool.
                                        DATA t2362 TYPE abap_bool.
                                        DATA(t2363) = t2352.
                                        DATA(t2364) = CONV f( 3 ).
                                        t2362 = xsdbool( t2363 = t2364 ).
                                        t2361 = t2362.
                                        IF t2362 = abap_true.
                                          DATA(t2365) = VALUE abap_bool( ).
                                          DATA(t2366) = VALUE abap_bool( ).
                                          DATA(t2367) = t2346.
                                          DATA(t2368) = |--|.
                                          DATA(t2369) = strlen( t2367 ).
                                          DATA t2370 TYPE i.
                                          DATA(t2371) = VALUE i( ).
                                          DATA(t2372) = VALUE string( ).
                                          t2370 = strlen( t2368 ).
                                          IF t2370 = 0.
                                            t2366 = abap_true.
                                          ELSEIF t2370 <= t2369.
                                            t2371 = 0.
                                            t2372 = t2367+t2371(t2370).
                                            IF t2372 = t2368.
                                              t2366 = abap_true.
                                            ENDIF.
                                          ENDIF.
                                          t2365 = t2366.
                                          IF t2366 = abap_false.
                                            DATA(t2373) = VALUE abap_bool( ).
                                            DATA(t2374) = t2346.
                                            DATA(t2375) = |//|.
                                            DATA(t2376) = strlen( t2374 ).
                                            DATA t2377 TYPE i.
                                            DATA(t2378) = VALUE i( ).
                                            DATA(t2379) = VALUE string( ).
                                            t2377 = strlen( t2375 ).
                                            IF t2377 = 0.
                                              t2373 = abap_true.
                                            ELSEIF t2377 <= t2376.
                                              t2378 = 0.
                                              t2379 = t2374+t2378(t2377).
                                              IF t2379 = t2375.
                                                t2373 = abap_true.
                                              ENDIF.
                                            ENDIF.
                                            t2365 = t2373.
                                          ENDIF.
                                          t2361 = t2365.
                                        ENDIF.
                                        IF t2361 = abap_true.
                                          DATA t2380 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                          DATA(t2381) = t2344.
                                          t2380 = t2381->result_9728.
                                          DATA t2382 TYPE REF TO zcl_lnt_lx_comment.
                                          DATA t2383 TYPE REF TO zcl_lnt_position.
                                          DATA(t2384) = t2348.
                                          DATA t2385 TYPE f.
                                          DATA(t2386) = t2350.
                                          DATA t2387 TYPE f.
                                          DATA t2388 TYPE i.
                                          DATA(t2389) = t2346.
                                          DATA(t2390) = strlen( t2389 ).
                                          t2388 = t2390.
                                          t2387 = t2388.
                                          t2385 = t2386 - t2387.
                                          DATA(t2391) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                          t2391->has = abap_true.
                                          t2391->value = t2385.
                                          t2383 = NEW zcl_lnt_position( i_row = t2384 i_col = t2391 ).
                                          DATA(t2392) = t2346.
                                          t2382 = NEW zcl_lnt_lx_comment( i_start = t2383 i_str = t2392 ).
                                          t2380->load( ).
                                          APPEND t2382 TO t2380->items.
                                          t2380->save( ).
                                        ELSE.
                                          DATA t2393 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                          DATA(t2394) = t2344.
                                          t2393 = t2394->result_9728.
                                          DATA t2395 TYPE REF TO zcl_lnt_lx_identifier.
                                          DATA t2396 TYPE REF TO zcl_lnt_position.
                                          DATA(t2397) = t2348.
                                          DATA(t2398) = t2350.
                                          DATA(t2399) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                          t2399->has = abap_true.
                                          t2399->value = t2398.
                                          t2396 = NEW zcl_lnt_position( i_row = t2397 i_col = t2399 ).
                                          DATA(t2400) = t2346.
                                          t2395 = NEW zcl_lnt_lx_identifier( i_start = t2396 i_str = t2400 ).
                                          t2393->load( ).
                                          APPEND t2395 TO t2393->items.
                                          t2393->save( ).
                                        ENDIF.
                                      ENDIF.
                                      DATA(t2401) = ||.
                                      t2355 = t2401.
                                      t2343 = t2355.
                                    ELSE.
                                      DATA t2402 TYPE abap_bool.
                                      DATA(t2403) = t32.
                                      DATA(t2404) = |=|.
                                      t2402 = xsdbool( t2403 = t2404 ).
                                      IF t2402 = abap_true.
                                        DATA(t2405) = VALUE string( ).
                                        DATA t2406 TYPE REF TO zcl_lnt_cd_result.
                                        DATA(t2407) = t2.
                                        t2406 = t2407.
                                        DATA t2408 TYPE string.
                                        DATA(t2409) = t10.
                                        t2408 = t2409.
                                        DATA t2410 TYPE f.
                                        DATA(t2411) = t6.
                                        t2410 = t2411.
                                        DATA t2412 TYPE f.
                                        DATA(t2413) = t8.
                                        t2412 = t2413.
                                        DATA t2414 TYPE f.
                                        DATA t2415 TYPE f.
                                        DATA(t2416) = t4.
                                        t2415 = t2416.
                                        t2414 = t2415.
                                        DATA(t2417) = VALUE string( ).
                                        DATA t2418 TYPE abap_bool.
                                        DATA t2419 TYPE i.
                                        DATA(t2420) = t2408.
                                        DATA(t2421) = strlen( t2420 ).
                                        t2419 = t2421.
                                        DATA(t2422) = 0.
                                        t2418 = xsdbool( t2419 > t2422 ).
                                        IF t2418 = abap_true.
                                          DATA t2423 TYPE abap_bool.
                                          DATA t2424 TYPE abap_bool.
                                          DATA(t2425) = t2414.
                                          DATA(t2426) = CONV f( 3 ).
                                          t2424 = xsdbool( t2425 = t2426 ).
                                          t2423 = t2424.
                                          IF t2424 = abap_true.
                                            DATA(t2427) = VALUE abap_bool( ).
                                            DATA(t2428) = VALUE abap_bool( ).
                                            DATA(t2429) = t2408.
                                            DATA(t2430) = |--|.
                                            DATA(t2431) = strlen( t2429 ).
                                            DATA t2432 TYPE i.
                                            DATA(t2433) = VALUE i( ).
                                            DATA(t2434) = VALUE string( ).
                                            t2432 = strlen( t2430 ).
                                            IF t2432 = 0.
                                              t2428 = abap_true.
                                            ELSEIF t2432 <= t2431.
                                              t2433 = 0.
                                              t2434 = t2429+t2433(t2432).
                                              IF t2434 = t2430.
                                                t2428 = abap_true.
                                              ENDIF.
                                            ENDIF.
                                            t2427 = t2428.
                                            IF t2428 = abap_false.
                                              DATA(t2435) = VALUE abap_bool( ).
                                              DATA(t2436) = t2408.
                                              DATA(t2437) = |//|.
                                              DATA(t2438) = strlen( t2436 ).
                                              DATA t2439 TYPE i.
                                              DATA(t2440) = VALUE i( ).
                                              DATA(t2441) = VALUE string( ).
                                              t2439 = strlen( t2437 ).
                                              IF t2439 = 0.
                                                t2435 = abap_true.
                                              ELSEIF t2439 <= t2438.
                                                t2440 = 0.
                                                t2441 = t2436+t2440(t2439).
                                                IF t2441 = t2437.
                                                  t2435 = abap_true.
                                                ENDIF.
                                              ENDIF.
                                              t2427 = t2435.
                                            ENDIF.
                                            t2423 = t2427.
                                          ENDIF.
                                          IF t2423 = abap_true.
                                            DATA t2442 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                            DATA(t2443) = t2406.
                                            t2442 = t2443->result_9728.
                                            DATA t2444 TYPE REF TO zcl_lnt_lx_comment.
                                            DATA t2445 TYPE REF TO zcl_lnt_position.
                                            DATA(t2446) = t2410.
                                            DATA t2447 TYPE f.
                                            DATA(t2448) = t2412.
                                            DATA t2449 TYPE f.
                                            DATA t2450 TYPE i.
                                            DATA(t2451) = t2408.
                                            DATA(t2452) = strlen( t2451 ).
                                            t2450 = t2452.
                                            t2449 = t2450.
                                            t2447 = t2448 - t2449.
                                            DATA(t2453) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                            t2453->has = abap_true.
                                            t2453->value = t2447.
                                            t2445 = NEW zcl_lnt_position( i_row = t2446 i_col = t2453 ).
                                            DATA(t2454) = t2408.
                                            t2444 = NEW zcl_lnt_lx_comment( i_start = t2445 i_str = t2454 ).
                                            t2442->load( ).
                                            APPEND t2444 TO t2442->items.
                                            t2442->save( ).
                                          ELSE.
                                            DATA t2455 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                            DATA(t2456) = t2406.
                                            t2455 = t2456->result_9728.
                                            DATA t2457 TYPE REF TO zcl_lnt_lx_identifier.
                                            DATA t2458 TYPE REF TO zcl_lnt_position.
                                            DATA(t2459) = t2410.
                                            DATA(t2460) = t2412.
                                            DATA(t2461) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                            t2461->has = abap_true.
                                            t2461->value = t2460.
                                            t2458 = NEW zcl_lnt_position( i_row = t2459 i_col = t2461 ).
                                            DATA(t2462) = t2408.
                                            t2457 = NEW zcl_lnt_lx_identifier( i_start = t2458 i_str = t2462 ).
                                            t2455->load( ).
                                            APPEND t2457 TO t2455->items.
                                            t2455->save( ).
                                          ENDIF.
                                        ENDIF.
                                        DATA(t2463) = ||.
                                        t2417 = t2463.
                                        t2405 = t2417.
                                        t10 = t2405.
                                        DATA(t2464) = VALUE string( ).
                                        DATA t2465 TYPE REF TO zcl_lnt_cd_result.
                                        DATA(t2466) = t2.
                                        t2465 = t2466.
                                        DATA t2467 TYPE string.
                                        DATA(t2468) = t32.
                                        t2467 = t2468.
                                        DATA t2469 TYPE f.
                                        DATA(t2470) = t6.
                                        t2469 = t2470.
                                        DATA t2471 TYPE f.
                                        DATA(t2472) = t8.
                                        t2471 = t2472.
                                        DATA t2473 TYPE f.
                                        DATA t2474 TYPE f.
                                        DATA(t2475) = t4.
                                        t2474 = t2475.
                                        t2473 = t2474.
                                        DATA(t2476) = VALUE string( ).
                                        DATA t2477 TYPE abap_bool.
                                        DATA t2478 TYPE i.
                                        DATA(t2479) = t2467.
                                        DATA(t2480) = strlen( t2479 ).
                                        t2478 = t2480.
                                        DATA(t2481) = 0.
                                        t2477 = xsdbool( t2478 > t2481 ).
                                        IF t2477 = abap_true.
                                          DATA t2482 TYPE abap_bool.
                                          DATA t2483 TYPE abap_bool.
                                          DATA(t2484) = t2473.
                                          DATA(t2485) = CONV f( 3 ).
                                          t2483 = xsdbool( t2484 = t2485 ).
                                          t2482 = t2483.
                                          IF t2483 = abap_true.
                                            DATA(t2486) = VALUE abap_bool( ).
                                            DATA(t2487) = VALUE abap_bool( ).
                                            DATA(t2488) = t2467.
                                            DATA(t2489) = |--|.
                                            DATA(t2490) = strlen( t2488 ).
                                            DATA t2491 TYPE i.
                                            DATA(t2492) = VALUE i( ).
                                            DATA(t2493) = VALUE string( ).
                                            t2491 = strlen( t2489 ).
                                            IF t2491 = 0.
                                              t2487 = abap_true.
                                            ELSEIF t2491 <= t2490.
                                              t2492 = 0.
                                              t2493 = t2488+t2492(t2491).
                                              IF t2493 = t2489.
                                                t2487 = abap_true.
                                              ENDIF.
                                            ENDIF.
                                            t2486 = t2487.
                                            IF t2487 = abap_false.
                                              DATA(t2494) = VALUE abap_bool( ).
                                              DATA(t2495) = t2467.
                                              DATA(t2496) = |//|.
                                              DATA(t2497) = strlen( t2495 ).
                                              DATA t2498 TYPE i.
                                              DATA(t2499) = VALUE i( ).
                                              DATA(t2500) = VALUE string( ).
                                              t2498 = strlen( t2496 ).
                                              IF t2498 = 0.
                                                t2494 = abap_true.
                                              ELSEIF t2498 <= t2497.
                                                t2499 = 0.
                                                t2500 = t2495+t2499(t2498).
                                                IF t2500 = t2496.
                                                  t2494 = abap_true.
                                                ENDIF.
                                              ENDIF.
                                              t2486 = t2494.
                                            ENDIF.
                                            t2482 = t2486.
                                          ENDIF.
                                          IF t2482 = abap_true.
                                            DATA t2501 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                            DATA(t2502) = t2465.
                                            t2501 = t2502->result_9728.
                                            DATA t2503 TYPE REF TO zcl_lnt_lx_comment.
                                            DATA t2504 TYPE REF TO zcl_lnt_position.
                                            DATA(t2505) = t2469.
                                            DATA t2506 TYPE f.
                                            DATA(t2507) = t2471.
                                            DATA t2508 TYPE f.
                                            DATA t2509 TYPE i.
                                            DATA(t2510) = t2467.
                                            DATA(t2511) = strlen( t2510 ).
                                            t2509 = t2511.
                                            t2508 = t2509.
                                            t2506 = t2507 - t2508.
                                            DATA(t2512) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                            t2512->has = abap_true.
                                            t2512->value = t2506.
                                            t2504 = NEW zcl_lnt_position( i_row = t2505 i_col = t2512 ).
                                            DATA(t2513) = t2467.
                                            t2503 = NEW zcl_lnt_lx_comment( i_start = t2504 i_str = t2513 ).
                                            t2501->load( ).
                                            APPEND t2503 TO t2501->items.
                                            t2501->save( ).
                                          ELSE.
                                            DATA t2514 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                            DATA(t2515) = t2465.
                                            t2514 = t2515->result_9728.
                                            DATA t2516 TYPE REF TO zcl_lnt_lx_identifier.
                                            DATA t2517 TYPE REF TO zcl_lnt_position.
                                            DATA(t2518) = t2469.
                                            DATA(t2519) = t2471.
                                            DATA(t2520) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                            t2520->has = abap_true.
                                            t2520->value = t2519.
                                            t2517 = NEW zcl_lnt_position( i_row = t2518 i_col = t2520 ).
                                            DATA(t2521) = t2467.
                                            t2516 = NEW zcl_lnt_lx_identifier( i_start = t2517 i_str = t2521 ).
                                            t2514->load( ).
                                            APPEND t2516 TO t2514->items.
                                            t2514->save( ).
                                          ENDIF.
                                        ENDIF.
                                        DATA(t2522) = ||.
                                        t2476 = t2522.
                                        t2464 = t2476.
                                      ELSE.
                                        DATA t2523 TYPE abap_bool.
                                        DATA(t2524) = t32.
                                        DATA(t2525) = |<|.
                                        t2523 = xsdbool( t2524 = t2525 ).
                                        IF t2523 = abap_true.
                                          DATA(t2526) = VALUE string( ).
                                          DATA t2527 TYPE REF TO zcl_lnt_cd_result.
                                          DATA(t2528) = t2.
                                          t2527 = t2528.
                                          DATA t2529 TYPE string.
                                          DATA(t2530) = t10.
                                          t2529 = t2530.
                                          DATA t2531 TYPE f.
                                          DATA(t2532) = t6.
                                          t2531 = t2532.
                                          DATA t2533 TYPE f.
                                          DATA(t2534) = t8.
                                          t2533 = t2534.
                                          DATA t2535 TYPE f.
                                          DATA t2536 TYPE f.
                                          DATA(t2537) = t4.
                                          t2536 = t2537.
                                          t2535 = t2536.
                                          DATA(t2538) = VALUE string( ).
                                          DATA t2539 TYPE abap_bool.
                                          DATA t2540 TYPE i.
                                          DATA(t2541) = t2529.
                                          DATA(t2542) = strlen( t2541 ).
                                          t2540 = t2542.
                                          DATA(t2543) = 0.
                                          t2539 = xsdbool( t2540 > t2543 ).
                                          IF t2539 = abap_true.
                                            DATA t2544 TYPE abap_bool.
                                            DATA t2545 TYPE abap_bool.
                                            DATA(t2546) = t2535.
                                            DATA(t2547) = CONV f( 3 ).
                                            t2545 = xsdbool( t2546 = t2547 ).
                                            t2544 = t2545.
                                            IF t2545 = abap_true.
                                              DATA(t2548) = VALUE abap_bool( ).
                                              DATA(t2549) = VALUE abap_bool( ).
                                              DATA(t2550) = t2529.
                                              DATA(t2551) = |--|.
                                              DATA(t2552) = strlen( t2550 ).
                                              DATA t2553 TYPE i.
                                              DATA(t2554) = VALUE i( ).
                                              DATA(t2555) = VALUE string( ).
                                              t2553 = strlen( t2551 ).
                                              IF t2553 = 0.
                                                t2549 = abap_true.
                                              ELSEIF t2553 <= t2552.
                                                t2554 = 0.
                                                t2555 = t2550+t2554(t2553).
                                                IF t2555 = t2551.
                                                  t2549 = abap_true.
                                                ENDIF.
                                              ENDIF.
                                              t2548 = t2549.
                                              IF t2549 = abap_false.
                                                DATA(t2556) = VALUE abap_bool( ).
                                                DATA(t2557) = t2529.
                                                DATA(t2558) = |//|.
                                                DATA(t2559) = strlen( t2557 ).
                                                DATA t2560 TYPE i.
                                                DATA(t2561) = VALUE i( ).
                                                DATA(t2562) = VALUE string( ).
                                                t2560 = strlen( t2558 ).
                                                IF t2560 = 0.
                                                  t2556 = abap_true.
                                                ELSEIF t2560 <= t2559.
                                                  t2561 = 0.
                                                  t2562 = t2557+t2561(t2560).
                                                  IF t2562 = t2558.
                                                    t2556 = abap_true.
                                                  ENDIF.
                                                ENDIF.
                                                t2548 = t2556.
                                              ENDIF.
                                              t2544 = t2548.
                                            ENDIF.
                                            IF t2544 = abap_true.
                                              DATA t2563 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                              DATA(t2564) = t2527.
                                              t2563 = t2564->result_9728.
                                              DATA t2565 TYPE REF TO zcl_lnt_lx_comment.
                                              DATA t2566 TYPE REF TO zcl_lnt_position.
                                              DATA(t2567) = t2531.
                                              DATA t2568 TYPE f.
                                              DATA(t2569) = t2533.
                                              DATA t2570 TYPE f.
                                              DATA t2571 TYPE i.
                                              DATA(t2572) = t2529.
                                              DATA(t2573) = strlen( t2572 ).
                                              t2571 = t2573.
                                              t2570 = t2571.
                                              t2568 = t2569 - t2570.
                                              DATA(t2574) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                              t2574->has = abap_true.
                                              t2574->value = t2568.
                                              t2566 = NEW zcl_lnt_position( i_row = t2567 i_col = t2574 ).
                                              DATA(t2575) = t2529.
                                              t2565 = NEW zcl_lnt_lx_comment( i_start = t2566 i_str = t2575 ).
                                              t2563->load( ).
                                              APPEND t2565 TO t2563->items.
                                              t2563->save( ).
                                            ELSE.
                                              DATA t2576 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                              DATA(t2577) = t2527.
                                              t2576 = t2577->result_9728.
                                              DATA t2578 TYPE REF TO zcl_lnt_lx_identifier.
                                              DATA t2579 TYPE REF TO zcl_lnt_position.
                                              DATA(t2580) = t2531.
                                              DATA(t2581) = t2533.
                                              DATA(t2582) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                              t2582->has = abap_true.
                                              t2582->value = t2581.
                                              t2579 = NEW zcl_lnt_position( i_row = t2580 i_col = t2582 ).
                                              DATA(t2583) = t2529.
                                              t2578 = NEW zcl_lnt_lx_identifier( i_start = t2579 i_str = t2583 ).
                                              t2576->load( ).
                                              APPEND t2578 TO t2576->items.
                                              t2576->save( ).
                                            ENDIF.
                                          ENDIF.
                                          DATA(t2584) = ||.
                                          t2538 = t2584.
                                          t2526 = t2538.
                                          t10 = t2526.
                                          DATA(t2585) = VALUE string( ).
                                          DATA t2586 TYPE REF TO zcl_lnt_cd_result.
                                          DATA(t2587) = t2.
                                          t2586 = t2587.
                                          DATA t2588 TYPE string.
                                          DATA(t2589) = t32.
                                          t2588 = t2589.
                                          DATA t2590 TYPE f.
                                          DATA(t2591) = t6.
                                          t2590 = t2591.
                                          DATA t2592 TYPE f.
                                          DATA(t2593) = t8.
                                          t2592 = t2593.
                                          DATA t2594 TYPE f.
                                          DATA t2595 TYPE f.
                                          DATA(t2596) = t4.
                                          t2595 = t2596.
                                          t2594 = t2595.
                                          DATA(t2597) = VALUE string( ).
                                          DATA t2598 TYPE abap_bool.
                                          DATA t2599 TYPE i.
                                          DATA(t2600) = t2588.
                                          DATA(t2601) = strlen( t2600 ).
                                          t2599 = t2601.
                                          DATA(t2602) = 0.
                                          t2598 = xsdbool( t2599 > t2602 ).
                                          IF t2598 = abap_true.
                                            DATA t2603 TYPE abap_bool.
                                            DATA t2604 TYPE abap_bool.
                                            DATA(t2605) = t2594.
                                            DATA(t2606) = CONV f( 3 ).
                                            t2604 = xsdbool( t2605 = t2606 ).
                                            t2603 = t2604.
                                            IF t2604 = abap_true.
                                              DATA(t2607) = VALUE abap_bool( ).
                                              DATA(t2608) = VALUE abap_bool( ).
                                              DATA(t2609) = t2588.
                                              DATA(t2610) = |--|.
                                              DATA(t2611) = strlen( t2609 ).
                                              DATA t2612 TYPE i.
                                              DATA(t2613) = VALUE i( ).
                                              DATA(t2614) = VALUE string( ).
                                              t2612 = strlen( t2610 ).
                                              IF t2612 = 0.
                                                t2608 = abap_true.
                                              ELSEIF t2612 <= t2611.
                                                t2613 = 0.
                                                t2614 = t2609+t2613(t2612).
                                                IF t2614 = t2610.
                                                  t2608 = abap_true.
                                                ENDIF.
                                              ENDIF.
                                              t2607 = t2608.
                                              IF t2608 = abap_false.
                                                DATA(t2615) = VALUE abap_bool( ).
                                                DATA(t2616) = t2588.
                                                DATA(t2617) = |//|.
                                                DATA(t2618) = strlen( t2616 ).
                                                DATA t2619 TYPE i.
                                                DATA(t2620) = VALUE i( ).
                                                DATA(t2621) = VALUE string( ).
                                                t2619 = strlen( t2617 ).
                                                IF t2619 = 0.
                                                  t2615 = abap_true.
                                                ELSEIF t2619 <= t2618.
                                                  t2620 = 0.
                                                  t2621 = t2616+t2620(t2619).
                                                  IF t2621 = t2617.
                                                    t2615 = abap_true.
                                                  ENDIF.
                                                ENDIF.
                                                t2607 = t2615.
                                              ENDIF.
                                              t2603 = t2607.
                                            ENDIF.
                                            IF t2603 = abap_true.
                                              DATA t2622 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                              DATA(t2623) = t2586.
                                              t2622 = t2623->result_9728.
                                              DATA t2624 TYPE REF TO zcl_lnt_lx_comment.
                                              DATA t2625 TYPE REF TO zcl_lnt_position.
                                              DATA(t2626) = t2590.
                                              DATA t2627 TYPE f.
                                              DATA(t2628) = t2592.
                                              DATA t2629 TYPE f.
                                              DATA t2630 TYPE i.
                                              DATA(t2631) = t2588.
                                              DATA(t2632) = strlen( t2631 ).
                                              t2630 = t2632.
                                              t2629 = t2630.
                                              t2627 = t2628 - t2629.
                                              DATA(t2633) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                              t2633->has = abap_true.
                                              t2633->value = t2627.
                                              t2625 = NEW zcl_lnt_position( i_row = t2626 i_col = t2633 ).
                                              DATA(t2634) = t2588.
                                              t2624 = NEW zcl_lnt_lx_comment( i_start = t2625 i_str = t2634 ).
                                              t2622->load( ).
                                              APPEND t2624 TO t2622->items.
                                              t2622->save( ).
                                            ELSE.
                                              DATA t2635 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                              DATA(t2636) = t2586.
                                              t2635 = t2636->result_9728.
                                              DATA t2637 TYPE REF TO zcl_lnt_lx_identifier.
                                              DATA t2638 TYPE REF TO zcl_lnt_position.
                                              DATA(t2639) = t2590.
                                              DATA(t2640) = t2592.
                                              DATA(t2641) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                              t2641->has = abap_true.
                                              t2641->value = t2640.
                                              t2638 = NEW zcl_lnt_position( i_row = t2639 i_col = t2641 ).
                                              DATA(t2642) = t2588.
                                              t2637 = NEW zcl_lnt_lx_identifier( i_start = t2638 i_str = t2642 ).
                                              t2635->load( ).
                                              APPEND t2637 TO t2635->items.
                                              t2635->save( ).
                                            ENDIF.
                                          ENDIF.
                                          DATA(t2643) = ||.
                                          t2597 = t2643.
                                          t2585 = t2597.
                                        ELSE.
                                          DATA t2644 TYPE abap_bool.
                                          DATA(t2645) = t32.
                                          DATA(t2646) = |>|.
                                          t2644 = xsdbool( t2645 = t2646 ).
                                          IF t2644 = abap_true.
                                            DATA(t2647) = VALUE string( ).
                                            DATA t2648 TYPE REF TO zcl_lnt_cd_result.
                                            DATA(t2649) = t2.
                                            t2648 = t2649.
                                            DATA t2650 TYPE string.
                                            DATA(t2651) = t10.
                                            t2650 = t2651.
                                            DATA t2652 TYPE f.
                                            DATA(t2653) = t6.
                                            t2652 = t2653.
                                            DATA t2654 TYPE f.
                                            DATA(t2655) = t8.
                                            t2654 = t2655.
                                            DATA t2656 TYPE f.
                                            DATA t2657 TYPE f.
                                            DATA(t2658) = t4.
                                            t2657 = t2658.
                                            t2656 = t2657.
                                            DATA(t2659) = VALUE string( ).
                                            DATA t2660 TYPE abap_bool.
                                            DATA t2661 TYPE i.
                                            DATA(t2662) = t2650.
                                            DATA(t2663) = strlen( t2662 ).
                                            t2661 = t2663.
                                            DATA(t2664) = 0.
                                            t2660 = xsdbool( t2661 > t2664 ).
                                            IF t2660 = abap_true.
                                              DATA t2665 TYPE abap_bool.
                                              DATA t2666 TYPE abap_bool.
                                              DATA(t2667) = t2656.
                                              DATA(t2668) = CONV f( 3 ).
                                              t2666 = xsdbool( t2667 = t2668 ).
                                              t2665 = t2666.
                                              IF t2666 = abap_true.
                                                DATA(t2669) = VALUE abap_bool( ).
                                                DATA(t2670) = VALUE abap_bool( ).
                                                DATA(t2671) = t2650.
                                                DATA(t2672) = |--|.
                                                DATA(t2673) = strlen( t2671 ).
                                                DATA t2674 TYPE i.
                                                DATA(t2675) = VALUE i( ).
                                                DATA(t2676) = VALUE string( ).
                                                t2674 = strlen( t2672 ).
                                                IF t2674 = 0.
                                                  t2670 = abap_true.
                                                ELSEIF t2674 <= t2673.
                                                  t2675 = 0.
                                                  t2676 = t2671+t2675(t2674).
                                                  IF t2676 = t2672.
                                                    t2670 = abap_true.
                                                  ENDIF.
                                                ENDIF.
                                                t2669 = t2670.
                                                IF t2670 = abap_false.
                                                  DATA(t2677) = VALUE abap_bool( ).
                                                  DATA(t2678) = t2650.
                                                  DATA(t2679) = |//|.
                                                  DATA(t2680) = strlen( t2678 ).
                                                  DATA t2681 TYPE i.
                                                  DATA(t2682) = VALUE i( ).
                                                  DATA(t2683) = VALUE string( ).
                                                  t2681 = strlen( t2679 ).
                                                  IF t2681 = 0.
                                                    t2677 = abap_true.
                                                  ELSEIF t2681 <= t2680.
                                                    t2682 = 0.
                                                    t2683 = t2678+t2682(t2681).
                                                    IF t2683 = t2679.
                                                      t2677 = abap_true.
                                                    ENDIF.
                                                  ENDIF.
                                                  t2669 = t2677.
                                                ENDIF.
                                                t2665 = t2669.
                                              ENDIF.
                                              IF t2665 = abap_true.
                                                DATA t2684 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                DATA(t2685) = t2648.
                                                t2684 = t2685->result_9728.
                                                DATA t2686 TYPE REF TO zcl_lnt_lx_comment.
                                                DATA t2687 TYPE REF TO zcl_lnt_position.
                                                DATA(t2688) = t2652.
                                                DATA t2689 TYPE f.
                                                DATA(t2690) = t2654.
                                                DATA t2691 TYPE f.
                                                DATA t2692 TYPE i.
                                                DATA(t2693) = t2650.
                                                DATA(t2694) = strlen( t2693 ).
                                                t2692 = t2694.
                                                t2691 = t2692.
                                                t2689 = t2690 - t2691.
                                                DATA(t2695) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                t2695->has = abap_true.
                                                t2695->value = t2689.
                                                t2687 = NEW zcl_lnt_position( i_row = t2688 i_col = t2695 ).
                                                DATA(t2696) = t2650.
                                                t2686 = NEW zcl_lnt_lx_comment( i_start = t2687 i_str = t2696 ).
                                                t2684->load( ).
                                                APPEND t2686 TO t2684->items.
                                                t2684->save( ).
                                              ELSE.
                                                DATA t2697 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                DATA(t2698) = t2648.
                                                t2697 = t2698->result_9728.
                                                DATA t2699 TYPE REF TO zcl_lnt_lx_identifier.
                                                DATA t2700 TYPE REF TO zcl_lnt_position.
                                                DATA(t2701) = t2652.
                                                DATA(t2702) = t2654.
                                                DATA(t2703) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                t2703->has = abap_true.
                                                t2703->value = t2702.
                                                t2700 = NEW zcl_lnt_position( i_row = t2701 i_col = t2703 ).
                                                DATA(t2704) = t2650.
                                                t2699 = NEW zcl_lnt_lx_identifier( i_start = t2700 i_str = t2704 ).
                                                t2697->load( ).
                                                APPEND t2699 TO t2697->items.
                                                t2697->save( ).
                                              ENDIF.
                                            ENDIF.
                                            DATA(t2705) = ||.
                                            t2659 = t2705.
                                            t2647 = t2659.
                                            t10 = t2647.
                                            DATA(t2706) = VALUE string( ).
                                            DATA t2707 TYPE REF TO zcl_lnt_cd_result.
                                            DATA(t2708) = t2.
                                            t2707 = t2708.
                                            DATA t2709 TYPE string.
                                            DATA(t2710) = t32.
                                            t2709 = t2710.
                                            DATA t2711 TYPE f.
                                            DATA(t2712) = t6.
                                            t2711 = t2712.
                                            DATA t2713 TYPE f.
                                            DATA(t2714) = t8.
                                            t2713 = t2714.
                                            DATA t2715 TYPE f.
                                            DATA t2716 TYPE f.
                                            DATA(t2717) = t4.
                                            t2716 = t2717.
                                            t2715 = t2716.
                                            DATA(t2718) = VALUE string( ).
                                            DATA t2719 TYPE abap_bool.
                                            DATA t2720 TYPE i.
                                            DATA(t2721) = t2709.
                                            DATA(t2722) = strlen( t2721 ).
                                            t2720 = t2722.
                                            DATA(t2723) = 0.
                                            t2719 = xsdbool( t2720 > t2723 ).
                                            IF t2719 = abap_true.
                                              DATA t2724 TYPE abap_bool.
                                              DATA t2725 TYPE abap_bool.
                                              DATA(t2726) = t2715.
                                              DATA(t2727) = CONV f( 3 ).
                                              t2725 = xsdbool( t2726 = t2727 ).
                                              t2724 = t2725.
                                              IF t2725 = abap_true.
                                                DATA(t2728) = VALUE abap_bool( ).
                                                DATA(t2729) = VALUE abap_bool( ).
                                                DATA(t2730) = t2709.
                                                DATA(t2731) = |--|.
                                                DATA(t2732) = strlen( t2730 ).
                                                DATA t2733 TYPE i.
                                                DATA(t2734) = VALUE i( ).
                                                DATA(t2735) = VALUE string( ).
                                                t2733 = strlen( t2731 ).
                                                IF t2733 = 0.
                                                  t2729 = abap_true.
                                                ELSEIF t2733 <= t2732.
                                                  t2734 = 0.
                                                  t2735 = t2730+t2734(t2733).
                                                  IF t2735 = t2731.
                                                    t2729 = abap_true.
                                                  ENDIF.
                                                ENDIF.
                                                t2728 = t2729.
                                                IF t2729 = abap_false.
                                                  DATA(t2736) = VALUE abap_bool( ).
                                                  DATA(t2737) = t2709.
                                                  DATA(t2738) = |//|.
                                                  DATA(t2739) = strlen( t2737 ).
                                                  DATA t2740 TYPE i.
                                                  DATA(t2741) = VALUE i( ).
                                                  DATA(t2742) = VALUE string( ).
                                                  t2740 = strlen( t2738 ).
                                                  IF t2740 = 0.
                                                    t2736 = abap_true.
                                                  ELSEIF t2740 <= t2739.
                                                    t2741 = 0.
                                                    t2742 = t2737+t2741(t2740).
                                                    IF t2742 = t2738.
                                                      t2736 = abap_true.
                                                    ENDIF.
                                                  ENDIF.
                                                  t2728 = t2736.
                                                ENDIF.
                                                t2724 = t2728.
                                              ENDIF.
                                              IF t2724 = abap_true.
                                                DATA t2743 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                DATA(t2744) = t2707.
                                                t2743 = t2744->result_9728.
                                                DATA t2745 TYPE REF TO zcl_lnt_lx_comment.
                                                DATA t2746 TYPE REF TO zcl_lnt_position.
                                                DATA(t2747) = t2711.
                                                DATA t2748 TYPE f.
                                                DATA(t2749) = t2713.
                                                DATA t2750 TYPE f.
                                                DATA t2751 TYPE i.
                                                DATA(t2752) = t2709.
                                                DATA(t2753) = strlen( t2752 ).
                                                t2751 = t2753.
                                                t2750 = t2751.
                                                t2748 = t2749 - t2750.
                                                DATA(t2754) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                t2754->has = abap_true.
                                                t2754->value = t2748.
                                                t2746 = NEW zcl_lnt_position( i_row = t2747 i_col = t2754 ).
                                                DATA(t2755) = t2709.
                                                t2745 = NEW zcl_lnt_lx_comment( i_start = t2746 i_str = t2755 ).
                                                t2743->load( ).
                                                APPEND t2745 TO t2743->items.
                                                t2743->save( ).
                                              ELSE.
                                                DATA t2756 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                DATA(t2757) = t2707.
                                                t2756 = t2757->result_9728.
                                                DATA t2758 TYPE REF TO zcl_lnt_lx_identifier.
                                                DATA t2759 TYPE REF TO zcl_lnt_position.
                                                DATA(t2760) = t2711.
                                                DATA(t2761) = t2713.
                                                DATA(t2762) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                t2762->has = abap_true.
                                                t2762->value = t2761.
                                                t2759 = NEW zcl_lnt_position( i_row = t2760 i_col = t2762 ).
                                                DATA(t2763) = t2709.
                                                t2758 = NEW zcl_lnt_lx_identifier( i_start = t2759 i_str = t2763 ).
                                                t2756->load( ).
                                                APPEND t2758 TO t2756->items.
                                                t2756->save( ).
                                              ENDIF.
                                            ENDIF.
                                            DATA(t2764) = ||.
                                            t2718 = t2764.
                                            t2706 = t2718.
                                          ELSE.
                                            DATA t2765 TYPE abap_bool.
                                            DATA(t2766) = t32.
                                            DATA(t2767) = |+|.
                                            t2765 = xsdbool( t2766 = t2767 ).
                                            IF t2765 = abap_true.
                                              DATA(t2768) = VALUE string( ).
                                              DATA t2769 TYPE REF TO zcl_lnt_cd_result.
                                              DATA(t2770) = t2.
                                              t2769 = t2770.
                                              DATA t2771 TYPE string.
                                              DATA(t2772) = t10.
                                              t2771 = t2772.
                                              DATA t2773 TYPE f.
                                              DATA(t2774) = t6.
                                              t2773 = t2774.
                                              DATA t2775 TYPE f.
                                              DATA(t2776) = t8.
                                              t2775 = t2776.
                                              DATA t2777 TYPE f.
                                              DATA t2778 TYPE f.
                                              DATA(t2779) = t4.
                                              t2778 = t2779.
                                              t2777 = t2778.
                                              DATA(t2780) = VALUE string( ).
                                              DATA t2781 TYPE abap_bool.
                                              DATA t2782 TYPE i.
                                              DATA(t2783) = t2771.
                                              DATA(t2784) = strlen( t2783 ).
                                              t2782 = t2784.
                                              DATA(t2785) = 0.
                                              t2781 = xsdbool( t2782 > t2785 ).
                                              IF t2781 = abap_true.
                                                DATA t2786 TYPE abap_bool.
                                                DATA t2787 TYPE abap_bool.
                                                DATA(t2788) = t2777.
                                                DATA(t2789) = CONV f( 3 ).
                                                t2787 = xsdbool( t2788 = t2789 ).
                                                t2786 = t2787.
                                                IF t2787 = abap_true.
                                                  DATA(t2790) = VALUE abap_bool( ).
                                                  DATA(t2791) = VALUE abap_bool( ).
                                                  DATA(t2792) = t2771.
                                                  DATA(t2793) = |--|.
                                                  DATA(t2794) = strlen( t2792 ).
                                                  DATA t2795 TYPE i.
                                                  DATA(t2796) = VALUE i( ).
                                                  DATA(t2797) = VALUE string( ).
                                                  t2795 = strlen( t2793 ).
                                                  IF t2795 = 0.
                                                    t2791 = abap_true.
                                                  ELSEIF t2795 <= t2794.
                                                    t2796 = 0.
                                                    t2797 = t2792+t2796(t2795).
                                                    IF t2797 = t2793.
                                                      t2791 = abap_true.
                                                    ENDIF.
                                                  ENDIF.
                                                  t2790 = t2791.
                                                  IF t2791 = abap_false.
                                                    DATA(t2798) = VALUE abap_bool( ).
                                                    DATA(t2799) = t2771.
                                                    DATA(t2800) = |//|.
                                                    DATA(t2801) = strlen( t2799 ).
                                                    DATA t2802 TYPE i.
                                                    DATA(t2803) = VALUE i( ).
                                                    DATA(t2804) = VALUE string( ).
                                                    t2802 = strlen( t2800 ).
                                                    IF t2802 = 0.
                                                      t2798 = abap_true.
                                                    ELSEIF t2802 <= t2801.
                                                      t2803 = 0.
                                                      t2804 = t2799+t2803(t2802).
                                                      IF t2804 = t2800.
                                                        t2798 = abap_true.
                                                      ENDIF.
                                                    ENDIF.
                                                    t2790 = t2798.
                                                  ENDIF.
                                                  t2786 = t2790.
                                                ENDIF.
                                                IF t2786 = abap_true.
                                                  DATA t2805 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                  DATA(t2806) = t2769.
                                                  t2805 = t2806->result_9728.
                                                  DATA t2807 TYPE REF TO zcl_lnt_lx_comment.
                                                  DATA t2808 TYPE REF TO zcl_lnt_position.
                                                  DATA(t2809) = t2773.
                                                  DATA t2810 TYPE f.
                                                  DATA(t2811) = t2775.
                                                  DATA t2812 TYPE f.
                                                  DATA t2813 TYPE i.
                                                  DATA(t2814) = t2771.
                                                  DATA(t2815) = strlen( t2814 ).
                                                  t2813 = t2815.
                                                  t2812 = t2813.
                                                  t2810 = t2811 - t2812.
                                                  DATA(t2816) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                  t2816->has = abap_true.
                                                  t2816->value = t2810.
                                                  t2808 = NEW zcl_lnt_position( i_row = t2809 i_col = t2816 ).
                                                  DATA(t2817) = t2771.
                                                  t2807 = NEW zcl_lnt_lx_comment( i_start = t2808 i_str = t2817 ).
                                                  t2805->load( ).
                                                  APPEND t2807 TO t2805->items.
                                                  t2805->save( ).
                                                ELSE.
                                                  DATA t2818 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                  DATA(t2819) = t2769.
                                                  t2818 = t2819->result_9728.
                                                  DATA t2820 TYPE REF TO zcl_lnt_lx_identifier.
                                                  DATA t2821 TYPE REF TO zcl_lnt_position.
                                                  DATA(t2822) = t2773.
                                                  DATA(t2823) = t2775.
                                                  DATA(t2824) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                  t2824->has = abap_true.
                                                  t2824->value = t2823.
                                                  t2821 = NEW zcl_lnt_position( i_row = t2822 i_col = t2824 ).
                                                  DATA(t2825) = t2771.
                                                  t2820 = NEW zcl_lnt_lx_identifier( i_start = t2821 i_str = t2825 ).
                                                  t2818->load( ).
                                                  APPEND t2820 TO t2818->items.
                                                  t2818->save( ).
                                                ENDIF.
                                              ENDIF.
                                              DATA(t2826) = ||.
                                              t2780 = t2826.
                                              t2768 = t2780.
                                              t10 = t2768.
                                              DATA(t2827) = VALUE string( ).
                                              DATA t2828 TYPE REF TO zcl_lnt_cd_result.
                                              DATA(t2829) = t2.
                                              t2828 = t2829.
                                              DATA t2830 TYPE string.
                                              DATA(t2831) = t32.
                                              t2830 = t2831.
                                              DATA t2832 TYPE f.
                                              DATA(t2833) = t6.
                                              t2832 = t2833.
                                              DATA t2834 TYPE f.
                                              DATA(t2835) = t8.
                                              t2834 = t2835.
                                              DATA t2836 TYPE f.
                                              DATA t2837 TYPE f.
                                              DATA(t2838) = t4.
                                              t2837 = t2838.
                                              t2836 = t2837.
                                              DATA(t2839) = VALUE string( ).
                                              DATA t2840 TYPE abap_bool.
                                              DATA t2841 TYPE i.
                                              DATA(t2842) = t2830.
                                              DATA(t2843) = strlen( t2842 ).
                                              t2841 = t2843.
                                              DATA(t2844) = 0.
                                              t2840 = xsdbool( t2841 > t2844 ).
                                              IF t2840 = abap_true.
                                                DATA t2845 TYPE abap_bool.
                                                DATA t2846 TYPE abap_bool.
                                                DATA(t2847) = t2836.
                                                DATA(t2848) = CONV f( 3 ).
                                                t2846 = xsdbool( t2847 = t2848 ).
                                                t2845 = t2846.
                                                IF t2846 = abap_true.
                                                  DATA(t2849) = VALUE abap_bool( ).
                                                  DATA(t2850) = VALUE abap_bool( ).
                                                  DATA(t2851) = t2830.
                                                  DATA(t2852) = |--|.
                                                  DATA(t2853) = strlen( t2851 ).
                                                  DATA t2854 TYPE i.
                                                  DATA(t2855) = VALUE i( ).
                                                  DATA(t2856) = VALUE string( ).
                                                  t2854 = strlen( t2852 ).
                                                  IF t2854 = 0.
                                                    t2850 = abap_true.
                                                  ELSEIF t2854 <= t2853.
                                                    t2855 = 0.
                                                    t2856 = t2851+t2855(t2854).
                                                    IF t2856 = t2852.
                                                      t2850 = abap_true.
                                                    ENDIF.
                                                  ENDIF.
                                                  t2849 = t2850.
                                                  IF t2850 = abap_false.
                                                    DATA(t2857) = VALUE abap_bool( ).
                                                    DATA(t2858) = t2830.
                                                    DATA(t2859) = |//|.
                                                    DATA(t2860) = strlen( t2858 ).
                                                    DATA t2861 TYPE i.
                                                    DATA(t2862) = VALUE i( ).
                                                    DATA(t2863) = VALUE string( ).
                                                    t2861 = strlen( t2859 ).
                                                    IF t2861 = 0.
                                                      t2857 = abap_true.
                                                    ELSEIF t2861 <= t2860.
                                                      t2862 = 0.
                                                      t2863 = t2858+t2862(t2861).
                                                      IF t2863 = t2859.
                                                        t2857 = abap_true.
                                                      ENDIF.
                                                    ENDIF.
                                                    t2849 = t2857.
                                                  ENDIF.
                                                  t2845 = t2849.
                                                ENDIF.
                                                IF t2845 = abap_true.
                                                  DATA t2864 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                  DATA(t2865) = t2828.
                                                  t2864 = t2865->result_9728.
                                                  DATA t2866 TYPE REF TO zcl_lnt_lx_comment.
                                                  DATA t2867 TYPE REF TO zcl_lnt_position.
                                                  DATA(t2868) = t2832.
                                                  DATA t2869 TYPE f.
                                                  DATA(t2870) = t2834.
                                                  DATA t2871 TYPE f.
                                                  DATA t2872 TYPE i.
                                                  DATA(t2873) = t2830.
                                                  DATA(t2874) = strlen( t2873 ).
                                                  t2872 = t2874.
                                                  t2871 = t2872.
                                                  t2869 = t2870 - t2871.
                                                  DATA(t2875) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                  t2875->has = abap_true.
                                                  t2875->value = t2869.
                                                  t2867 = NEW zcl_lnt_position( i_row = t2868 i_col = t2875 ).
                                                  DATA(t2876) = t2830.
                                                  t2866 = NEW zcl_lnt_lx_comment( i_start = t2867 i_str = t2876 ).
                                                  t2864->load( ).
                                                  APPEND t2866 TO t2864->items.
                                                  t2864->save( ).
                                                ELSE.
                                                  DATA t2877 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                  DATA(t2878) = t2828.
                                                  t2877 = t2878->result_9728.
                                                  DATA t2879 TYPE REF TO zcl_lnt_lx_identifier.
                                                  DATA t2880 TYPE REF TO zcl_lnt_position.
                                                  DATA(t2881) = t2832.
                                                  DATA(t2882) = t2834.
                                                  DATA(t2883) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                  t2883->has = abap_true.
                                                  t2883->value = t2882.
                                                  t2880 = NEW zcl_lnt_position( i_row = t2881 i_col = t2883 ).
                                                  DATA(t2884) = t2830.
                                                  t2879 = NEW zcl_lnt_lx_identifier( i_start = t2880 i_str = t2884 ).
                                                  t2877->load( ).
                                                  APPEND t2879 TO t2877->items.
                                                  t2877->save( ).
                                                ENDIF.
                                              ENDIF.
                                              DATA(t2885) = ||.
                                              t2839 = t2885.
                                              t2827 = t2839.
                                            ELSE.
                                              DATA t2886 TYPE abap_bool.
                                              DATA(t2887) = t32.
                                              DATA(t2888) = |-|.
                                              t2886 = xsdbool( t2887 = t2888 ).
                                              IF t2886 = abap_true.
                                                DATA(t2889) = VALUE string( ).
                                                DATA t2890 TYPE REF TO zcl_lnt_cd_result.
                                                DATA(t2891) = t2.
                                                t2890 = t2891.
                                                DATA t2892 TYPE string.
                                                DATA(t2893) = t10.
                                                t2892 = t2893.
                                                DATA t2894 TYPE f.
                                                DATA(t2895) = t6.
                                                t2894 = t2895.
                                                DATA t2896 TYPE f.
                                                DATA(t2897) = t8.
                                                t2896 = t2897.
                                                DATA t2898 TYPE f.
                                                DATA t2899 TYPE f.
                                                DATA(t2900) = t4.
                                                t2899 = t2900.
                                                t2898 = t2899.
                                                DATA(t2901) = VALUE string( ).
                                                DATA t2902 TYPE abap_bool.
                                                DATA t2903 TYPE i.
                                                DATA(t2904) = t2892.
                                                DATA(t2905) = strlen( t2904 ).
                                                t2903 = t2905.
                                                DATA(t2906) = 0.
                                                t2902 = xsdbool( t2903 > t2906 ).
                                                IF t2902 = abap_true.
                                                  DATA t2907 TYPE abap_bool.
                                                  DATA t2908 TYPE abap_bool.
                                                  DATA(t2909) = t2898.
                                                  DATA(t2910) = CONV f( 3 ).
                                                  t2908 = xsdbool( t2909 = t2910 ).
                                                  t2907 = t2908.
                                                  IF t2908 = abap_true.
                                                    DATA(t2911) = VALUE abap_bool( ).
                                                    DATA(t2912) = VALUE abap_bool( ).
                                                    DATA(t2913) = t2892.
                                                    DATA(t2914) = |--|.
                                                    DATA(t2915) = strlen( t2913 ).
                                                    DATA t2916 TYPE i.
                                                    DATA(t2917) = VALUE i( ).
                                                    DATA(t2918) = VALUE string( ).
                                                    t2916 = strlen( t2914 ).
                                                    IF t2916 = 0.
                                                      t2912 = abap_true.
                                                    ELSEIF t2916 <= t2915.
                                                      t2917 = 0.
                                                      t2918 = t2913+t2917(t2916).
                                                      IF t2918 = t2914.
                                                        t2912 = abap_true.
                                                      ENDIF.
                                                    ENDIF.
                                                    t2911 = t2912.
                                                    IF t2912 = abap_false.
                                                      DATA(t2919) = VALUE abap_bool( ).
                                                      DATA(t2920) = t2892.
                                                      DATA(t2921) = |//|.
                                                      DATA(t2922) = strlen( t2920 ).
                                                      DATA t2923 TYPE i.
                                                      DATA(t2924) = VALUE i( ).
                                                      DATA(t2925) = VALUE string( ).
                                                      t2923 = strlen( t2921 ).
                                                      IF t2923 = 0.
                                                        t2919 = abap_true.
                                                      ELSEIF t2923 <= t2922.
                                                        t2924 = 0.
                                                        t2925 = t2920+t2924(t2923).
                                                        IF t2925 = t2921.
                                                          t2919 = abap_true.
                                                        ENDIF.
                                                      ENDIF.
                                                      t2911 = t2919.
                                                    ENDIF.
                                                    t2907 = t2911.
                                                  ENDIF.
                                                  IF t2907 = abap_true.
                                                    DATA t2926 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                    DATA(t2927) = t2890.
                                                    t2926 = t2927->result_9728.
                                                    DATA t2928 TYPE REF TO zcl_lnt_lx_comment.
                                                    DATA t2929 TYPE REF TO zcl_lnt_position.
                                                    DATA(t2930) = t2894.
                                                    DATA t2931 TYPE f.
                                                    DATA(t2932) = t2896.
                                                    DATA t2933 TYPE f.
                                                    DATA t2934 TYPE i.
                                                    DATA(t2935) = t2892.
                                                    DATA(t2936) = strlen( t2935 ).
                                                    t2934 = t2936.
                                                    t2933 = t2934.
                                                    t2931 = t2932 - t2933.
                                                    DATA(t2937) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                    t2937->has = abap_true.
                                                    t2937->value = t2931.
                                                    t2929 = NEW zcl_lnt_position( i_row = t2930 i_col = t2937 ).
                                                    DATA(t2938) = t2892.
                                                    t2928 = NEW zcl_lnt_lx_comment( i_start = t2929 i_str = t2938 ).
                                                    t2926->load( ).
                                                    APPEND t2928 TO t2926->items.
                                                    t2926->save( ).
                                                  ELSE.
                                                    DATA t2939 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                    DATA(t2940) = t2890.
                                                    t2939 = t2940->result_9728.
                                                    DATA t2941 TYPE REF TO zcl_lnt_lx_identifier.
                                                    DATA t2942 TYPE REF TO zcl_lnt_position.
                                                    DATA(t2943) = t2894.
                                                    DATA(t2944) = t2896.
                                                    DATA(t2945) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                    t2945->has = abap_true.
                                                    t2945->value = t2944.
                                                    t2942 = NEW zcl_lnt_position( i_row = t2943 i_col = t2945 ).
                                                    DATA(t2946) = t2892.
                                                    t2941 = NEW zcl_lnt_lx_identifier( i_start = t2942 i_str = t2946 ).
                                                    t2939->load( ).
                                                    APPEND t2941 TO t2939->items.
                                                    t2939->save( ).
                                                  ENDIF.
                                                ENDIF.
                                                DATA(t2947) = ||.
                                                t2901 = t2947.
                                                t2889 = t2901.
                                                t10 = t2889.
                                                DATA(t2948) = VALUE string( ).
                                                DATA t2949 TYPE REF TO zcl_lnt_cd_result.
                                                DATA(t2950) = t2.
                                                t2949 = t2950.
                                                DATA t2951 TYPE string.
                                                DATA(t2952) = t32.
                                                t2951 = t2952.
                                                DATA t2953 TYPE f.
                                                DATA(t2954) = t6.
                                                t2953 = t2954.
                                                DATA t2955 TYPE f.
                                                DATA(t2956) = t8.
                                                t2955 = t2956.
                                                DATA t2957 TYPE f.
                                                DATA t2958 TYPE f.
                                                DATA(t2959) = t4.
                                                t2958 = t2959.
                                                t2957 = t2958.
                                                DATA(t2960) = VALUE string( ).
                                                DATA t2961 TYPE abap_bool.
                                                DATA t2962 TYPE i.
                                                DATA(t2963) = t2951.
                                                DATA(t2964) = strlen( t2963 ).
                                                t2962 = t2964.
                                                DATA(t2965) = 0.
                                                t2961 = xsdbool( t2962 > t2965 ).
                                                IF t2961 = abap_true.
                                                  DATA t2966 TYPE abap_bool.
                                                  DATA t2967 TYPE abap_bool.
                                                  DATA(t2968) = t2957.
                                                  DATA(t2969) = CONV f( 3 ).
                                                  t2967 = xsdbool( t2968 = t2969 ).
                                                  t2966 = t2967.
                                                  IF t2967 = abap_true.
                                                    DATA(t2970) = VALUE abap_bool( ).
                                                    DATA(t2971) = VALUE abap_bool( ).
                                                    DATA(t2972) = t2951.
                                                    DATA(t2973) = |--|.
                                                    DATA(t2974) = strlen( t2972 ).
                                                    DATA t2975 TYPE i.
                                                    DATA(t2976) = VALUE i( ).
                                                    DATA(t2977) = VALUE string( ).
                                                    t2975 = strlen( t2973 ).
                                                    IF t2975 = 0.
                                                      t2971 = abap_true.
                                                    ELSEIF t2975 <= t2974.
                                                      t2976 = 0.
                                                      t2977 = t2972+t2976(t2975).
                                                      IF t2977 = t2973.
                                                        t2971 = abap_true.
                                                      ENDIF.
                                                    ENDIF.
                                                    t2970 = t2971.
                                                    IF t2971 = abap_false.
                                                      DATA(t2978) = VALUE abap_bool( ).
                                                      DATA(t2979) = t2951.
                                                      DATA(t2980) = |//|.
                                                      DATA(t2981) = strlen( t2979 ).
                                                      DATA t2982 TYPE i.
                                                      DATA(t2983) = VALUE i( ).
                                                      DATA(t2984) = VALUE string( ).
                                                      t2982 = strlen( t2980 ).
                                                      IF t2982 = 0.
                                                        t2978 = abap_true.
                                                      ELSEIF t2982 <= t2981.
                                                        t2983 = 0.
                                                        t2984 = t2979+t2983(t2982).
                                                        IF t2984 = t2980.
                                                          t2978 = abap_true.
                                                        ENDIF.
                                                      ENDIF.
                                                      t2970 = t2978.
                                                    ENDIF.
                                                    t2966 = t2970.
                                                  ENDIF.
                                                  IF t2966 = abap_true.
                                                    DATA t2985 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                    DATA(t2986) = t2949.
                                                    t2985 = t2986->result_9728.
                                                    DATA t2987 TYPE REF TO zcl_lnt_lx_comment.
                                                    DATA t2988 TYPE REF TO zcl_lnt_position.
                                                    DATA(t2989) = t2953.
                                                    DATA t2990 TYPE f.
                                                    DATA(t2991) = t2955.
                                                    DATA t2992 TYPE f.
                                                    DATA t2993 TYPE i.
                                                    DATA(t2994) = t2951.
                                                    DATA(t2995) = strlen( t2994 ).
                                                    t2993 = t2995.
                                                    t2992 = t2993.
                                                    t2990 = t2991 - t2992.
                                                    DATA(t2996) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                    t2996->has = abap_true.
                                                    t2996->value = t2990.
                                                    t2988 = NEW zcl_lnt_position( i_row = t2989 i_col = t2996 ).
                                                    DATA(t2997) = t2951.
                                                    t2987 = NEW zcl_lnt_lx_comment( i_start = t2988 i_str = t2997 ).
                                                    t2985->load( ).
                                                    APPEND t2987 TO t2985->items.
                                                    t2985->save( ).
                                                  ELSE.
                                                    DATA t2998 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                    DATA(t2999) = t2949.
                                                    t2998 = t2999->result_9728.
                                                    DATA t3000 TYPE REF TO zcl_lnt_lx_identifier.
                                                    DATA t3001 TYPE REF TO zcl_lnt_position.
                                                    DATA(t3002) = t2953.
                                                    DATA(t3003) = t2955.
                                                    DATA(t3004) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                    t3004->has = abap_true.
                                                    t3004->value = t3003.
                                                    t3001 = NEW zcl_lnt_position( i_row = t3002 i_col = t3004 ).
                                                    DATA(t3005) = t2951.
                                                    t3000 = NEW zcl_lnt_lx_identifier( i_start = t3001 i_str = t3005 ).
                                                    t2998->load( ).
                                                    APPEND t3000 TO t2998->items.
                                                    t2998->save( ).
                                                  ENDIF.
                                                ENDIF.
                                                DATA(t3006) = ||.
                                                t2960 = t3006.
                                                t2948 = t2960.
                                              ELSE.
                                                DATA t3007 TYPE abap_bool.
                                                DATA(t3008) = t32.
                                                DATA(t3009) = |*|.
                                                t3007 = xsdbool( t3008 = t3009 ).
                                                IF t3007 = abap_true.
                                                  DATA(t3010) = VALUE string( ).
                                                  DATA t3011 TYPE REF TO zcl_lnt_cd_result.
                                                  DATA(t3012) = t2.
                                                  t3011 = t3012.
                                                  DATA t3013 TYPE string.
                                                  DATA(t3014) = t10.
                                                  t3013 = t3014.
                                                  DATA t3015 TYPE f.
                                                  DATA(t3016) = t6.
                                                  t3015 = t3016.
                                                  DATA t3017 TYPE f.
                                                  DATA(t3018) = t8.
                                                  t3017 = t3018.
                                                  DATA t3019 TYPE f.
                                                  DATA t3020 TYPE f.
                                                  DATA(t3021) = t4.
                                                  t3020 = t3021.
                                                  t3019 = t3020.
                                                  DATA(t3022) = VALUE string( ).
                                                  DATA t3023 TYPE abap_bool.
                                                  DATA t3024 TYPE i.
                                                  DATA(t3025) = t3013.
                                                  DATA(t3026) = strlen( t3025 ).
                                                  t3024 = t3026.
                                                  DATA(t3027) = 0.
                                                  t3023 = xsdbool( t3024 > t3027 ).
                                                  IF t3023 = abap_true.
                                                    DATA t3028 TYPE abap_bool.
                                                    DATA t3029 TYPE abap_bool.
                                                    DATA(t3030) = t3019.
                                                    DATA(t3031) = CONV f( 3 ).
                                                    t3029 = xsdbool( t3030 = t3031 ).
                                                    t3028 = t3029.
                                                    IF t3029 = abap_true.
                                                      DATA(t3032) = VALUE abap_bool( ).
                                                      DATA(t3033) = VALUE abap_bool( ).
                                                      DATA(t3034) = t3013.
                                                      DATA(t3035) = |--|.
                                                      DATA(t3036) = strlen( t3034 ).
                                                      DATA t3037 TYPE i.
                                                      DATA(t3038) = VALUE i( ).
                                                      DATA(t3039) = VALUE string( ).
                                                      t3037 = strlen( t3035 ).
                                                      IF t3037 = 0.
                                                        t3033 = abap_true.
                                                      ELSEIF t3037 <= t3036.
                                                        t3038 = 0.
                                                        t3039 = t3034+t3038(t3037).
                                                        IF t3039 = t3035.
                                                          t3033 = abap_true.
                                                        ENDIF.
                                                      ENDIF.
                                                      t3032 = t3033.
                                                      IF t3033 = abap_false.
                                                        DATA(t3040) = VALUE abap_bool( ).
                                                        DATA(t3041) = t3013.
                                                        DATA(t3042) = |//|.
                                                        DATA(t3043) = strlen( t3041 ).
                                                        DATA t3044 TYPE i.
                                                        DATA(t3045) = VALUE i( ).
                                                        DATA(t3046) = VALUE string( ).
                                                        t3044 = strlen( t3042 ).
                                                        IF t3044 = 0.
                                                          t3040 = abap_true.
                                                        ELSEIF t3044 <= t3043.
                                                          t3045 = 0.
                                                          t3046 = t3041+t3045(t3044).
                                                          IF t3046 = t3042.
                                                            t3040 = abap_true.
                                                          ENDIF.
                                                        ENDIF.
                                                        t3032 = t3040.
                                                      ENDIF.
                                                      t3028 = t3032.
                                                    ENDIF.
                                                    IF t3028 = abap_true.
                                                      DATA t3047 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                      DATA(t3048) = t3011.
                                                      t3047 = t3048->result_9728.
                                                      DATA t3049 TYPE REF TO zcl_lnt_lx_comment.
                                                      DATA t3050 TYPE REF TO zcl_lnt_position.
                                                      DATA(t3051) = t3015.
                                                      DATA t3052 TYPE f.
                                                      DATA(t3053) = t3017.
                                                      DATA t3054 TYPE f.
                                                      DATA t3055 TYPE i.
                                                      DATA(t3056) = t3013.
                                                      DATA(t3057) = strlen( t3056 ).
                                                      t3055 = t3057.
                                                      t3054 = t3055.
                                                      t3052 = t3053 - t3054.
                                                      DATA(t3058) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                      t3058->has = abap_true.
                                                      t3058->value = t3052.
                                                      t3050 = NEW zcl_lnt_position( i_row = t3051 i_col = t3058 ).
                                                      DATA(t3059) = t3013.
                                                      t3049 = NEW zcl_lnt_lx_comment( i_start = t3050 i_str = t3059 ).
                                                      t3047->load( ).
                                                      APPEND t3049 TO t3047->items.
                                                      t3047->save( ).
                                                    ELSE.
                                                      DATA t3060 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                      DATA(t3061) = t3011.
                                                      t3060 = t3061->result_9728.
                                                      DATA t3062 TYPE REF TO zcl_lnt_lx_identifier.
                                                      DATA t3063 TYPE REF TO zcl_lnt_position.
                                                      DATA(t3064) = t3015.
                                                      DATA(t3065) = t3017.
                                                      DATA(t3066) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                      t3066->has = abap_true.
                                                      t3066->value = t3065.
                                                      t3063 = NEW zcl_lnt_position( i_row = t3064 i_col = t3066 ).
                                                      DATA(t3067) = t3013.
                                                      t3062 = NEW zcl_lnt_lx_identifier( i_start = t3063 i_str = t3067 ).
                                                      t3060->load( ).
                                                      APPEND t3062 TO t3060->items.
                                                      t3060->save( ).
                                                    ENDIF.
                                                  ENDIF.
                                                  DATA(t3068) = ||.
                                                  t3022 = t3068.
                                                  t3010 = t3022.
                                                  t10 = t3010.
                                                  DATA(t3069) = VALUE string( ).
                                                  DATA t3070 TYPE REF TO zcl_lnt_cd_result.
                                                  DATA(t3071) = t2.
                                                  t3070 = t3071.
                                                  DATA t3072 TYPE string.
                                                  DATA(t3073) = t32.
                                                  t3072 = t3073.
                                                  DATA t3074 TYPE f.
                                                  DATA(t3075) = t6.
                                                  t3074 = t3075.
                                                  DATA t3076 TYPE f.
                                                  DATA(t3077) = t8.
                                                  t3076 = t3077.
                                                  DATA t3078 TYPE f.
                                                  DATA t3079 TYPE f.
                                                  DATA(t3080) = t4.
                                                  t3079 = t3080.
                                                  t3078 = t3079.
                                                  DATA(t3081) = VALUE string( ).
                                                  DATA t3082 TYPE abap_bool.
                                                  DATA t3083 TYPE i.
                                                  DATA(t3084) = t3072.
                                                  DATA(t3085) = strlen( t3084 ).
                                                  t3083 = t3085.
                                                  DATA(t3086) = 0.
                                                  t3082 = xsdbool( t3083 > t3086 ).
                                                  IF t3082 = abap_true.
                                                    DATA t3087 TYPE abap_bool.
                                                    DATA t3088 TYPE abap_bool.
                                                    DATA(t3089) = t3078.
                                                    DATA(t3090) = CONV f( 3 ).
                                                    t3088 = xsdbool( t3089 = t3090 ).
                                                    t3087 = t3088.
                                                    IF t3088 = abap_true.
                                                      DATA(t3091) = VALUE abap_bool( ).
                                                      DATA(t3092) = VALUE abap_bool( ).
                                                      DATA(t3093) = t3072.
                                                      DATA(t3094) = |--|.
                                                      DATA(t3095) = strlen( t3093 ).
                                                      DATA t3096 TYPE i.
                                                      DATA(t3097) = VALUE i( ).
                                                      DATA(t3098) = VALUE string( ).
                                                      t3096 = strlen( t3094 ).
                                                      IF t3096 = 0.
                                                        t3092 = abap_true.
                                                      ELSEIF t3096 <= t3095.
                                                        t3097 = 0.
                                                        t3098 = t3093+t3097(t3096).
                                                        IF t3098 = t3094.
                                                          t3092 = abap_true.
                                                        ENDIF.
                                                      ENDIF.
                                                      t3091 = t3092.
                                                      IF t3092 = abap_false.
                                                        DATA(t3099) = VALUE abap_bool( ).
                                                        DATA(t3100) = t3072.
                                                        DATA(t3101) = |//|.
                                                        DATA(t3102) = strlen( t3100 ).
                                                        DATA t3103 TYPE i.
                                                        DATA(t3104) = VALUE i( ).
                                                        DATA(t3105) = VALUE string( ).
                                                        t3103 = strlen( t3101 ).
                                                        IF t3103 = 0.
                                                          t3099 = abap_true.
                                                        ELSEIF t3103 <= t3102.
                                                          t3104 = 0.
                                                          t3105 = t3100+t3104(t3103).
                                                          IF t3105 = t3101.
                                                            t3099 = abap_true.
                                                          ENDIF.
                                                        ENDIF.
                                                        t3091 = t3099.
                                                      ENDIF.
                                                      t3087 = t3091.
                                                    ENDIF.
                                                    IF t3087 = abap_true.
                                                      DATA t3106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                      DATA(t3107) = t3070.
                                                      t3106 = t3107->result_9728.
                                                      DATA t3108 TYPE REF TO zcl_lnt_lx_comment.
                                                      DATA t3109 TYPE REF TO zcl_lnt_position.
                                                      DATA(t3110) = t3074.
                                                      DATA t3111 TYPE f.
                                                      DATA(t3112) = t3076.
                                                      DATA t3113 TYPE f.
                                                      DATA t3114 TYPE i.
                                                      DATA(t3115) = t3072.
                                                      DATA(t3116) = strlen( t3115 ).
                                                      t3114 = t3116.
                                                      t3113 = t3114.
                                                      t3111 = t3112 - t3113.
                                                      DATA(t3117) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                      t3117->has = abap_true.
                                                      t3117->value = t3111.
                                                      t3109 = NEW zcl_lnt_position( i_row = t3110 i_col = t3117 ).
                                                      DATA(t3118) = t3072.
                                                      t3108 = NEW zcl_lnt_lx_comment( i_start = t3109 i_str = t3118 ).
                                                      t3106->load( ).
                                                      APPEND t3108 TO t3106->items.
                                                      t3106->save( ).
                                                    ELSE.
                                                      DATA t3119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                      DATA(t3120) = t3070.
                                                      t3119 = t3120->result_9728.
                                                      DATA t3121 TYPE REF TO zcl_lnt_lx_identifier.
                                                      DATA t3122 TYPE REF TO zcl_lnt_position.
                                                      DATA(t3123) = t3074.
                                                      DATA(t3124) = t3076.
                                                      DATA(t3125) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                      t3125->has = abap_true.
                                                      t3125->value = t3124.
                                                      t3122 = NEW zcl_lnt_position( i_row = t3123 i_col = t3125 ).
                                                      DATA(t3126) = t3072.
                                                      t3121 = NEW zcl_lnt_lx_identifier( i_start = t3122 i_str = t3126 ).
                                                      t3119->load( ).
                                                      APPEND t3121 TO t3119->items.
                                                      t3119->save( ).
                                                    ENDIF.
                                                  ENDIF.
                                                  DATA(t3127) = ||.
                                                  t3081 = t3127.
                                                  t3069 = t3081.
                                                ELSE.
                                                  DATA t3128 TYPE abap_bool.
                                                  DATA(t3129) = t32.
                                                  DATA(t3130) = |/|.
                                                  t3128 = xsdbool( t3129 = t3130 ).
                                                  IF t3128 = abap_true.
                                                    DATA(t3131) = VALUE string( ).
                                                    DATA t3132 TYPE REF TO zcl_lnt_cd_result.
                                                    DATA(t3133) = t2.
                                                    t3132 = t3133.
                                                    DATA t3134 TYPE string.
                                                    DATA(t3135) = t10.
                                                    t3134 = t3135.
                                                    DATA t3136 TYPE f.
                                                    DATA(t3137) = t6.
                                                    t3136 = t3137.
                                                    DATA t3138 TYPE f.
                                                    DATA(t3139) = t8.
                                                    t3138 = t3139.
                                                    DATA t3140 TYPE f.
                                                    DATA t3141 TYPE f.
                                                    DATA(t3142) = t4.
                                                    t3141 = t3142.
                                                    t3140 = t3141.
                                                    DATA(t3143) = VALUE string( ).
                                                    DATA t3144 TYPE abap_bool.
                                                    DATA t3145 TYPE i.
                                                    DATA(t3146) = t3134.
                                                    DATA(t3147) = strlen( t3146 ).
                                                    t3145 = t3147.
                                                    DATA(t3148) = 0.
                                                    t3144 = xsdbool( t3145 > t3148 ).
                                                    IF t3144 = abap_true.
                                                      DATA t3149 TYPE abap_bool.
                                                      DATA t3150 TYPE abap_bool.
                                                      DATA(t3151) = t3140.
                                                      DATA(t3152) = CONV f( 3 ).
                                                      t3150 = xsdbool( t3151 = t3152 ).
                                                      t3149 = t3150.
                                                      IF t3150 = abap_true.
                                                        DATA(t3153) = VALUE abap_bool( ).
                                                        DATA(t3154) = VALUE abap_bool( ).
                                                        DATA(t3155) = t3134.
                                                        DATA(t3156) = |--|.
                                                        DATA(t3157) = strlen( t3155 ).
                                                        DATA t3158 TYPE i.
                                                        DATA(t3159) = VALUE i( ).
                                                        DATA(t3160) = VALUE string( ).
                                                        t3158 = strlen( t3156 ).
                                                        IF t3158 = 0.
                                                          t3154 = abap_true.
                                                        ELSEIF t3158 <= t3157.
                                                          t3159 = 0.
                                                          t3160 = t3155+t3159(t3158).
                                                          IF t3160 = t3156.
                                                            t3154 = abap_true.
                                                          ENDIF.
                                                        ENDIF.
                                                        t3153 = t3154.
                                                        IF t3154 = abap_false.
                                                          DATA(t3161) = VALUE abap_bool( ).
                                                          DATA(t3162) = t3134.
                                                          DATA(t3163) = |//|.
                                                          DATA(t3164) = strlen( t3162 ).
                                                          DATA t3165 TYPE i.
                                                          DATA(t3166) = VALUE i( ).
                                                          DATA(t3167) = VALUE string( ).
                                                          t3165 = strlen( t3163 ).
                                                          IF t3165 = 0.
                                                            t3161 = abap_true.
                                                          ELSEIF t3165 <= t3164.
                                                            t3166 = 0.
                                                            t3167 = t3162+t3166(t3165).
                                                            IF t3167 = t3163.
                                                              t3161 = abap_true.
                                                            ENDIF.
                                                          ENDIF.
                                                          t3153 = t3161.
                                                        ENDIF.
                                                        t3149 = t3153.
                                                      ENDIF.
                                                      IF t3149 = abap_true.
                                                        DATA t3168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                        DATA(t3169) = t3132.
                                                        t3168 = t3169->result_9728.
                                                        DATA t3170 TYPE REF TO zcl_lnt_lx_comment.
                                                        DATA t3171 TYPE REF TO zcl_lnt_position.
                                                        DATA(t3172) = t3136.
                                                        DATA t3173 TYPE f.
                                                        DATA(t3174) = t3138.
                                                        DATA t3175 TYPE f.
                                                        DATA t3176 TYPE i.
                                                        DATA(t3177) = t3134.
                                                        DATA(t3178) = strlen( t3177 ).
                                                        t3176 = t3178.
                                                        t3175 = t3176.
                                                        t3173 = t3174 - t3175.
                                                        DATA(t3179) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                        t3179->has = abap_true.
                                                        t3179->value = t3173.
                                                        t3171 = NEW zcl_lnt_position( i_row = t3172 i_col = t3179 ).
                                                        DATA(t3180) = t3134.
                                                        t3170 = NEW zcl_lnt_lx_comment( i_start = t3171 i_str = t3180 ).
                                                        t3168->load( ).
                                                        APPEND t3170 TO t3168->items.
                                                        t3168->save( ).
                                                      ELSE.
                                                        DATA t3181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                        DATA(t3182) = t3132.
                                                        t3181 = t3182->result_9728.
                                                        DATA t3183 TYPE REF TO zcl_lnt_lx_identifier.
                                                        DATA t3184 TYPE REF TO zcl_lnt_position.
                                                        DATA(t3185) = t3136.
                                                        DATA(t3186) = t3138.
                                                        DATA(t3187) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                        t3187->has = abap_true.
                                                        t3187->value = t3186.
                                                        t3184 = NEW zcl_lnt_position( i_row = t3185 i_col = t3187 ).
                                                        DATA(t3188) = t3134.
                                                        t3183 = NEW zcl_lnt_lx_identifier( i_start = t3184 i_str = t3188 ).
                                                        t3181->load( ).
                                                        APPEND t3183 TO t3181->items.
                                                        t3181->save( ).
                                                      ENDIF.
                                                    ENDIF.
                                                    DATA(t3189) = ||.
                                                    t3143 = t3189.
                                                    t3131 = t3143.
                                                    t10 = t3131.
                                                    DATA(t3190) = VALUE string( ).
                                                    DATA t3191 TYPE REF TO zcl_lnt_cd_result.
                                                    DATA(t3192) = t2.
                                                    t3191 = t3192.
                                                    DATA t3193 TYPE string.
                                                    DATA(t3194) = t32.
                                                    t3193 = t3194.
                                                    DATA t3195 TYPE f.
                                                    DATA(t3196) = t6.
                                                    t3195 = t3196.
                                                    DATA t3197 TYPE f.
                                                    DATA(t3198) = t8.
                                                    t3197 = t3198.
                                                    DATA t3199 TYPE f.
                                                    DATA t3200 TYPE f.
                                                    DATA(t3201) = t4.
                                                    t3200 = t3201.
                                                    t3199 = t3200.
                                                    DATA(t3202) = VALUE string( ).
                                                    DATA t3203 TYPE abap_bool.
                                                    DATA t3204 TYPE i.
                                                    DATA(t3205) = t3193.
                                                    DATA(t3206) = strlen( t3205 ).
                                                    t3204 = t3206.
                                                    DATA(t3207) = 0.
                                                    t3203 = xsdbool( t3204 > t3207 ).
                                                    IF t3203 = abap_true.
                                                      DATA t3208 TYPE abap_bool.
                                                      DATA t3209 TYPE abap_bool.
                                                      DATA(t3210) = t3199.
                                                      DATA(t3211) = CONV f( 3 ).
                                                      t3209 = xsdbool( t3210 = t3211 ).
                                                      t3208 = t3209.
                                                      IF t3209 = abap_true.
                                                        DATA(t3212) = VALUE abap_bool( ).
                                                        DATA(t3213) = VALUE abap_bool( ).
                                                        DATA(t3214) = t3193.
                                                        DATA(t3215) = |--|.
                                                        DATA(t3216) = strlen( t3214 ).
                                                        DATA t3217 TYPE i.
                                                        DATA(t3218) = VALUE i( ).
                                                        DATA(t3219) = VALUE string( ).
                                                        t3217 = strlen( t3215 ).
                                                        IF t3217 = 0.
                                                          t3213 = abap_true.
                                                        ELSEIF t3217 <= t3216.
                                                          t3218 = 0.
                                                          t3219 = t3214+t3218(t3217).
                                                          IF t3219 = t3215.
                                                            t3213 = abap_true.
                                                          ENDIF.
                                                        ENDIF.
                                                        t3212 = t3213.
                                                        IF t3213 = abap_false.
                                                          DATA(t3220) = VALUE abap_bool( ).
                                                          DATA(t3221) = t3193.
                                                          DATA(t3222) = |//|.
                                                          DATA(t3223) = strlen( t3221 ).
                                                          DATA t3224 TYPE i.
                                                          DATA(t3225) = VALUE i( ).
                                                          DATA(t3226) = VALUE string( ).
                                                          t3224 = strlen( t3222 ).
                                                          IF t3224 = 0.
                                                            t3220 = abap_true.
                                                          ELSEIF t3224 <= t3223.
                                                            t3225 = 0.
                                                            t3226 = t3221+t3225(t3224).
                                                            IF t3226 = t3222.
                                                              t3220 = abap_true.
                                                            ENDIF.
                                                          ENDIF.
                                                          t3212 = t3220.
                                                        ENDIF.
                                                        t3208 = t3212.
                                                      ENDIF.
                                                      IF t3208 = abap_true.
                                                        DATA t3227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                        DATA(t3228) = t3191.
                                                        t3227 = t3228->result_9728.
                                                        DATA t3229 TYPE REF TO zcl_lnt_lx_comment.
                                                        DATA t3230 TYPE REF TO zcl_lnt_position.
                                                        DATA(t3231) = t3195.
                                                        DATA t3232 TYPE f.
                                                        DATA(t3233) = t3197.
                                                        DATA t3234 TYPE f.
                                                        DATA t3235 TYPE i.
                                                        DATA(t3236) = t3193.
                                                        DATA(t3237) = strlen( t3236 ).
                                                        t3235 = t3237.
                                                        t3234 = t3235.
                                                        t3232 = t3233 - t3234.
                                                        DATA(t3238) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                        t3238->has = abap_true.
                                                        t3238->value = t3232.
                                                        t3230 = NEW zcl_lnt_position( i_row = t3231 i_col = t3238 ).
                                                        DATA(t3239) = t3193.
                                                        t3229 = NEW zcl_lnt_lx_comment( i_start = t3230 i_str = t3239 ).
                                                        t3227->load( ).
                                                        APPEND t3229 TO t3227->items.
                                                        t3227->save( ).
                                                      ELSE.
                                                        DATA t3240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                        DATA(t3241) = t3191.
                                                        t3240 = t3241->result_9728.
                                                        DATA t3242 TYPE REF TO zcl_lnt_lx_identifier.
                                                        DATA t3243 TYPE REF TO zcl_lnt_position.
                                                        DATA(t3244) = t3195.
                                                        DATA(t3245) = t3197.
                                                        DATA(t3246) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                        t3246->has = abap_true.
                                                        t3246->value = t3245.
                                                        t3243 = NEW zcl_lnt_position( i_row = t3244 i_col = t3246 ).
                                                        DATA(t3247) = t3193.
                                                        t3242 = NEW zcl_lnt_lx_identifier( i_start = t3243 i_str = t3247 ).
                                                        t3240->load( ).
                                                        APPEND t3242 TO t3240->items.
                                                        t3240->save( ).
                                                      ENDIF.
                                                    ENDIF.
                                                    DATA(t3248) = ||.
                                                    t3202 = t3248.
                                                    t3190 = t3202.
                                                  ELSE.
                                                    DATA t3249 TYPE abap_bool.
                                                    DATA(t3250) = t32.
                                                    DATA(t3251) = |@|.
                                                    t3249 = xsdbool( t3250 = t3251 ).
                                                    IF t3249 = abap_true.
                                                      DATA(t3252) = VALUE string( ).
                                                      DATA t3253 TYPE REF TO zcl_lnt_cd_result.
                                                      DATA(t3254) = t2.
                                                      t3253 = t3254.
                                                      DATA t3255 TYPE string.
                                                      DATA(t3256) = t10.
                                                      t3255 = t3256.
                                                      DATA t3257 TYPE f.
                                                      DATA(t3258) = t6.
                                                      t3257 = t3258.
                                                      DATA t3259 TYPE f.
                                                      DATA(t3260) = t8.
                                                      t3259 = t3260.
                                                      DATA t3261 TYPE f.
                                                      DATA t3262 TYPE f.
                                                      DATA(t3263) = t4.
                                                      t3262 = t3263.
                                                      t3261 = t3262.
                                                      DATA(t3264) = VALUE string( ).
                                                      DATA t3265 TYPE abap_bool.
                                                      DATA t3266 TYPE i.
                                                      DATA(t3267) = t3255.
                                                      DATA(t3268) = strlen( t3267 ).
                                                      t3266 = t3268.
                                                      DATA(t3269) = 0.
                                                      t3265 = xsdbool( t3266 > t3269 ).
                                                      IF t3265 = abap_true.
                                                        DATA t3270 TYPE abap_bool.
                                                        DATA t3271 TYPE abap_bool.
                                                        DATA(t3272) = t3261.
                                                        DATA(t3273) = CONV f( 3 ).
                                                        t3271 = xsdbool( t3272 = t3273 ).
                                                        t3270 = t3271.
                                                        IF t3271 = abap_true.
                                                          DATA(t3274) = VALUE abap_bool( ).
                                                          DATA(t3275) = VALUE abap_bool( ).
                                                          DATA(t3276) = t3255.
                                                          DATA(t3277) = |--|.
                                                          DATA(t3278) = strlen( t3276 ).
                                                          DATA t3279 TYPE i.
                                                          DATA(t3280) = VALUE i( ).
                                                          DATA(t3281) = VALUE string( ).
                                                          t3279 = strlen( t3277 ).
                                                          IF t3279 = 0.
                                                            t3275 = abap_true.
                                                          ELSEIF t3279 <= t3278.
                                                            t3280 = 0.
                                                            t3281 = t3276+t3280(t3279).
                                                            IF t3281 = t3277.
                                                              t3275 = abap_true.
                                                            ENDIF.
                                                          ENDIF.
                                                          t3274 = t3275.
                                                          IF t3275 = abap_false.
                                                            DATA(t3282) = VALUE abap_bool( ).
                                                            DATA(t3283) = t3255.
                                                            DATA(t3284) = |//|.
                                                            DATA(t3285) = strlen( t3283 ).
                                                            DATA t3286 TYPE i.
                                                            DATA(t3287) = VALUE i( ).
                                                            DATA(t3288) = VALUE string( ).
                                                            t3286 = strlen( t3284 ).
                                                            IF t3286 = 0.
                                                              t3282 = abap_true.
                                                            ELSEIF t3286 <= t3285.
                                                              t3287 = 0.
                                                              t3288 = t3283+t3287(t3286).
                                                              IF t3288 = t3284.
                                                                t3282 = abap_true.
                                                              ENDIF.
                                                            ENDIF.
                                                            t3274 = t3282.
                                                          ENDIF.
                                                          t3270 = t3274.
                                                        ENDIF.
                                                        IF t3270 = abap_true.
                                                          DATA t3289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                          DATA(t3290) = t3253.
                                                          t3289 = t3290->result_9728.
                                                          DATA t3291 TYPE REF TO zcl_lnt_lx_comment.
                                                          DATA t3292 TYPE REF TO zcl_lnt_position.
                                                          DATA(t3293) = t3257.
                                                          DATA t3294 TYPE f.
                                                          DATA(t3295) = t3259.
                                                          DATA t3296 TYPE f.
                                                          DATA t3297 TYPE i.
                                                          DATA(t3298) = t3255.
                                                          DATA(t3299) = strlen( t3298 ).
                                                          t3297 = t3299.
                                                          t3296 = t3297.
                                                          t3294 = t3295 - t3296.
                                                          DATA(t3300) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                          t3300->has = abap_true.
                                                          t3300->value = t3294.
                                                          t3292 = NEW zcl_lnt_position( i_row = t3293 i_col = t3300 ).
                                                          DATA(t3301) = t3255.
                                                          t3291 = NEW zcl_lnt_lx_comment( i_start = t3292 i_str = t3301 ).
                                                          t3289->load( ).
                                                          APPEND t3291 TO t3289->items.
                                                          t3289->save( ).
                                                        ELSE.
                                                          DATA t3302 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                          DATA(t3303) = t3253.
                                                          t3302 = t3303->result_9728.
                                                          DATA t3304 TYPE REF TO zcl_lnt_lx_identifier.
                                                          DATA t3305 TYPE REF TO zcl_lnt_position.
                                                          DATA(t3306) = t3257.
                                                          DATA(t3307) = t3259.
                                                          DATA(t3308) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                          t3308->has = abap_true.
                                                          t3308->value = t3307.
                                                          t3305 = NEW zcl_lnt_position( i_row = t3306 i_col = t3308 ).
                                                          DATA(t3309) = t3255.
                                                          t3304 = NEW zcl_lnt_lx_identifier( i_start = t3305 i_str = t3309 ).
                                                          t3302->load( ).
                                                          APPEND t3304 TO t3302->items.
                                                          t3302->save( ).
                                                        ENDIF.
                                                      ENDIF.
                                                      DATA(t3310) = ||.
                                                      t3264 = t3310.
                                                      t3252 = t3264.
                                                      t10 = t3252.
                                                      DATA(t3311) = |@|.
                                                      t10 = t3311.
                                                    ELSE.
                                                      DATA t3312 TYPE string.
                                                      DATA(t3313) = t10.
                                                      DATA(t3314) = t32.
                                                      DATA(t3315) = strlen( t3313 ).
                                                      t3312 = |{ t3313 }{ t3314 }|.
                                                      t10 = t3312.
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
    DATA(t3316) = VALUE string( ).
    DATA t3317 TYPE REF TO zcl_lnt_cd_result.
    DATA(t3318) = t2.
    t3317 = t3318.
    DATA t3319 TYPE string.
    DATA(t3320) = t10.
    t3319 = t3320.
    DATA t3321 TYPE f.
    DATA(t3322) = t6.
    t3321 = t3322.
    DATA t3323 TYPE f.
    DATA(t3324) = t8.
    t3323 = t3324.
    DATA t3325 TYPE f.
    DATA t3326 TYPE f.
    DATA(t3327) = t4.
    t3326 = t3327.
    t3325 = t3326.
    DATA(t3328) = VALUE string( ).
    DATA t3329 TYPE abap_bool.
    DATA t3330 TYPE i.
    DATA(t3331) = t3319.
    DATA(t3332) = strlen( t3331 ).
    t3330 = t3332.
    DATA(t3333) = 0.
    t3329 = xsdbool( t3330 > t3333 ).
    IF t3329 = abap_true.
      DATA t3334 TYPE abap_bool.
      DATA t3335 TYPE abap_bool.
      DATA(t3336) = t3325.
      DATA(t3337) = CONV f( 3 ).
      t3335 = xsdbool( t3336 = t3337 ).
      t3334 = t3335.
      IF t3335 = abap_true.
        DATA(t3338) = VALUE abap_bool( ).
        DATA(t3339) = VALUE abap_bool( ).
        DATA(t3340) = t3319.
        DATA(t3341) = |--|.
        DATA(t3342) = strlen( t3340 ).
        DATA t3343 TYPE i.
        DATA(t3344) = VALUE i( ).
        DATA(t3345) = VALUE string( ).
        t3343 = strlen( t3341 ).
        IF t3343 = 0.
          t3339 = abap_true.
        ELSEIF t3343 <= t3342.
          t3344 = 0.
          t3345 = t3340+t3344(t3343).
          IF t3345 = t3341.
            t3339 = abap_true.
          ENDIF.
        ENDIF.
        t3338 = t3339.
        IF t3339 = abap_false.
          DATA(t3346) = VALUE abap_bool( ).
          DATA(t3347) = t3319.
          DATA(t3348) = |//|.
          DATA(t3349) = strlen( t3347 ).
          DATA t3350 TYPE i.
          DATA(t3351) = VALUE i( ).
          DATA(t3352) = VALUE string( ).
          t3350 = strlen( t3348 ).
          IF t3350 = 0.
            t3346 = abap_true.
          ELSEIF t3350 <= t3349.
            t3351 = 0.
            t3352 = t3347+t3351(t3350).
            IF t3352 = t3348.
              t3346 = abap_true.
            ENDIF.
          ENDIF.
          t3338 = t3346.
        ENDIF.
        t3334 = t3338.
      ENDIF.
      IF t3334 = abap_true.
        DATA t3353 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t3354) = t3317.
        t3353 = t3354->result_9728.
        DATA t3355 TYPE REF TO zcl_lnt_lx_comment.
        DATA t3356 TYPE REF TO zcl_lnt_position.
        DATA(t3357) = t3321.
        DATA t3358 TYPE f.
        DATA(t3359) = t3323.
        DATA t3360 TYPE f.
        DATA t3361 TYPE i.
        DATA(t3362) = t3319.
        DATA(t3363) = strlen( t3362 ).
        t3361 = t3363.
        t3360 = t3361.
        t3358 = t3359 - t3360.
        DATA(t3364) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t3364->has = abap_true.
        t3364->value = t3358.
        t3356 = NEW zcl_lnt_position( i_row = t3357 i_col = t3364 ).
        DATA(t3365) = t3319.
        t3355 = NEW zcl_lnt_lx_comment( i_start = t3356 i_str = t3365 ).
        t3353->load( ).
        APPEND t3355 TO t3353->items.
        t3353->save( ).
      ELSE.
        DATA t3366 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t3367) = t3317.
        t3366 = t3367->result_9728.
        DATA t3368 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t3369 TYPE REF TO zcl_lnt_position.
        DATA(t3370) = t3321.
        DATA(t3371) = t3323.
        DATA(t3372) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t3372->has = abap_true.
        t3372->value = t3371.
        t3369 = NEW zcl_lnt_position( i_row = t3370 i_col = t3372 ).
        DATA(t3373) = t3319.
        t3368 = NEW zcl_lnt_lx_identifier( i_start = t3369 i_str = t3373 ).
        t3366->load( ).
        APPEND t3368 TO t3366->items.
        t3366->save( ).
      ENDIF.
    ENDIF.
    DATA(t3374) = ||.
    t3328 = t3374.
    t3316 = t3328.
    DATA t3375 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3376 TYPE REF TO zcl_lnt_cd_result.
    DATA(t3377) = t2.
    t3376 = t3377.
    DATA t3378 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3379) = t3376.
    t3378 = t3379->result_9728.
    t3375 = t3378.
    result = t3375.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1072_d8f8b952f18b.
  ENDMETHOD.
ENDCLASS.
