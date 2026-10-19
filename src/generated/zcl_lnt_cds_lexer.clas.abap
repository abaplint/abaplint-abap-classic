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
    t2 = NEW zcl_lnt_cd_result( ).
    DATA t4 TYPE i.
    t4 = 0.
    DATA t6 TYPE f.
    t6 = CONV f( 1 ).
    DATA t8 TYPE f.
    t8 = CONV f( 1 ).
    DATA t10 TYPE string.
    t10 = ||.
    DATA t12 TYPE REF TO zcl_lnt_stream.
    DATA t15 TYPE string.
    DATA t16 TYPE string.
    DATA t17 TYPE string.
    t17 = t1->get_raw( ).
    DATA(t19) = |\r|.
    DATA(t20) = ||.
    DATA(t21) = strlen( t17 ).
    t16 = t17.
    REPLACE ALL OCCURRENCES OF t19 IN t16 WITH t20.
    DATA t22 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t22 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = `\u00a0` flags = |g| checked = abap_true.
    DATA(t26) = strlen( t16 ).
    t15 = t22->replace( p0 = t16 p1 = | | ).
    DATA t27 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t27 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = `\u000b` flags = |g| checked = abap_true.
    DATA(t31) = strlen( t15 ).
    t12 = NEW zcl_lnt_stream( i_buffer = t27->replace( p0 = t15 p1 = | | ) ).
    DATA t32 TYPE string.
    t32 = ||.
    DO.
      DATA t35 TYPE i.
      DATA t39 TYPE f.
      t39 = strlen( t12->buffer ).
      t35 = t39.
      IF xsdbool( t35 > 0 ) = abap_false.
        EXIT.
      ENDIF.
      DATA(t46) = t32.
      DATA t48 TYPE REF TO zcl_lnt_stream.
      t48 = t12.
      DATA(t52) = VALUE string( ).
      DATA t53 TYPE string.
      t53 = t48->buffer.
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
      DATA t60 TYPE string.
      t60 = t48->buffer.
      DATA(t63) = VALUE string( ).
      DATA(t65) = 1.
      DATA t66 TYPE i.
      t66 = strlen( t60 ).
      DATA(t69) = strlen( t60 ).
      t65 = COND i( WHEN t65 < 0 THEN 0 WHEN t65 > t69 THEN t69 ELSE t65 ).
      t66 = COND i( WHEN t66 < 0 THEN 0 WHEN t66 > t69 THEN t69 ELSE t66 ).
      IF t65 > t66.
        t69 = t65.
        t65 = t66.
        t66 = t69.
      ENDIF.
      t69 = t66 - t65.
      t63 = t60+t65(t69).
      t48->buffer = t63.
      DELETE t48->zlnt_record_delet_0597644d88b4 WHERE table_line = `buffer`.
      t32 = t52.
      DATA(t71) = VALUE string( ).
      DATA(t77) = VALUE string( ).
      DATA t78 TYPE string.
      t78 = t12->buffer.
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
      t71 = t77.
      DATA(t86) = CONV f( 1 ).
      t8 = t8 + t86.
      IF xsdbool( t4 = 1 ) = abap_true.
        DATA(t91) = t10.
        DATA(t93) = strlen( t91 ).
        t10 = |{ t91 }{ t32 }|.
        DATA t94 TYPE abap_bool.
        DATA t95 TYPE abap_bool.
        t95 = xsdbool( t32 = |'| ).
        t94 = t95.
        IF t95 = abap_true.
          t94 = xsdbool( t71 = |'| ).
        ENDIF.
        IF t94 = abap_true.
          DATA(t102) = t10.
          DATA(t103) = VALUE string( ).
          DATA t104 TYPE REF TO zcl_lnt_stream.
          t104 = t12.
          DATA(t108) = VALUE string( ).
          DATA t109 TYPE string.
          t109 = t104->buffer.
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
          DATA t116 TYPE string.
          t116 = t104->buffer.
          DATA(t119) = VALUE string( ).
          DATA(t121) = 1.
          DATA t122 TYPE i.
          t122 = strlen( t116 ).
          DATA(t125) = strlen( t116 ).
          t121 = COND i( WHEN t121 < 0 THEN 0 WHEN t121 > t125 THEN t125 ELSE t121 ).
          t122 = COND i( WHEN t122 < 0 THEN 0 WHEN t122 > t125 THEN t125 ELSE t122 ).
          IF t121 > t122.
            t125 = t121.
            t121 = t122.
            t122 = t125.
          ENDIF.
          t125 = t122 - t121.
          t119 = t116+t121(t125).
          t104->buffer = t119.
          DELETE t104->zlnt_record_delet_0597644d88b4 WHERE table_line = `buffer`.
          t103 = t108.
          DATA(t127) = strlen( t102 ).
          t10 = |{ t102 }{ t103 }|.
          DATA(t130) = CONV f( 1 ).
          t8 = t8 + t130.
        ELSE.
          DATA t131 TYPE abap_bool.
          DATA t132 TYPE abap_bool.
          t132 = xsdbool( t32 = `\` ).
          t131 = t132.
          IF t132 = abap_true.
            t131 = xsdbool( t71 = `\` ).
          ENDIF.
          IF t131 = abap_true.
            DATA(t139) = t10.
            DATA(t140) = VALUE string( ).
            DATA t141 TYPE REF TO zcl_lnt_stream.
            t141 = t12.
            DATA(t145) = VALUE string( ).
            DATA t146 TYPE string.
            t146 = t141->buffer.
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
            DATA t153 TYPE string.
            t153 = t141->buffer.
            DATA(t156) = VALUE string( ).
            DATA(t158) = 1.
            DATA t159 TYPE i.
            t159 = strlen( t153 ).
            DATA(t162) = strlen( t153 ).
            t158 = COND i( WHEN t158 < 0 THEN 0 WHEN t158 > t162 THEN t162 ELSE t158 ).
            t159 = COND i( WHEN t159 < 0 THEN 0 WHEN t159 > t162 THEN t162 ELSE t159 ).
            IF t158 > t159.
              t162 = t158.
              t158 = t159.
              t159 = t162.
            ENDIF.
            t162 = t159 - t158.
            t156 = t153+t158(t162).
            t141->buffer = t156.
            DELETE t141->zlnt_record_delet_0597644d88b4 WHERE table_line = `buffer`.
            t140 = t145.
            DATA(t164) = strlen( t139 ).
            t10 = |{ t139 }{ t140 }|.
            DATA(t167) = CONV f( 1 ).
            t8 = t8 + t167.
          ELSE.
            DATA t168 TYPE abap_bool.
            DATA t169 TYPE abap_bool.
            t169 = xsdbool( t32 = `\` ).
            t168 = t169.
            IF t169 = abap_true.
              t168 = xsdbool( t71 = |'| ).
            ENDIF.
            IF t168 = abap_true.
              DATA(t176) = t10.
              DATA(t177) = VALUE string( ).
              DATA t178 TYPE REF TO zcl_lnt_stream.
              t178 = t12.
              DATA(t182) = VALUE string( ).
              DATA t183 TYPE string.
              t183 = t178->buffer.
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
              DATA t190 TYPE string.
              t190 = t178->buffer.
              DATA(t193) = VALUE string( ).
              DATA(t195) = 1.
              DATA t196 TYPE i.
              t196 = strlen( t190 ).
              DATA(t199) = strlen( t190 ).
              t195 = COND i( WHEN t195 < 0 THEN 0 WHEN t195 > t199 THEN t199 ELSE t195 ).
              t196 = COND i( WHEN t196 < 0 THEN 0 WHEN t196 > t199 THEN t199 ELSE t196 ).
              IF t195 > t196.
                t199 = t195.
                t195 = t196.
                t196 = t199.
              ENDIF.
              t199 = t196 - t195.
              t193 = t190+t195(t199).
              t178->buffer = t193.
              DELETE t178->zlnt_record_delet_0597644d88b4 WHERE table_line = `buffer`.
              t177 = t182.
              DATA(t201) = strlen( t176 ).
              t10 = |{ t176 }{ t177 }|.
              DATA(t204) = CONV f( 1 ).
              t8 = t8 + t204.
            ELSE.
              IF xsdbool( t32 = |'| ) = abap_true.
                DATA t209 TYPE REF TO zcl_lnt_cd_result.
                t209 = t2.
                DATA t211 TYPE string.
                t211 = t10.
                DATA t213 TYPE f.
                t213 = t6.
                DATA t215 TYPE f.
                t215 = t8.
                DATA t218 TYPE f.
                t218 = t4.
                IF xsdbool( strlen( t211 ) > 0 ) = abap_true.
                  DATA t226 TYPE abap_bool.
                  DATA t227 TYPE abap_bool.
                  t227 = xsdbool( t218 = CONV f( 3 ) ).
                  t226 = t227.
                  IF t227 = abap_true.
                    DATA(t230) = VALUE abap_bool( ).
                    DATA(t231) = VALUE abap_bool( ).
                    DATA(t233) = |--|.
                    DATA(t234) = strlen( t211 ).
                    DATA t235 TYPE i.
                    DATA(t236) = VALUE i( ).
                    DATA(t237) = VALUE string( ).
                    t235 = strlen( t233 ).
                    IF t235 = 0.
                      t231 = abap_true.
                    ELSEIF t235 <= t234.
                      t236 = 0.
                      t237 = t211+t236(t235).
                      IF t237 = t233.
                        t231 = abap_true.
                      ENDIF.
                    ENDIF.
                    t230 = t231.
                    IF t231 = abap_false.
                      DATA(t238) = VALUE abap_bool( ).
                      DATA(t240) = |//|.
                      DATA(t241) = strlen( t211 ).
                      DATA t242 TYPE i.
                      DATA(t243) = VALUE i( ).
                      DATA(t244) = VALUE string( ).
                      t242 = strlen( t240 ).
                      IF t242 = 0.
                        t238 = abap_true.
                      ELSEIF t242 <= t241.
                        t243 = 0.
                        t244 = t211+t243(t242).
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
                    t245 = t209->result_9728.
                    DATA t247 TYPE REF TO zcl_lnt_lx_comment.
                    DATA t250 TYPE f.
                    DATA t252 TYPE f.
                    t252 = strlen( t211 ).
                    t250 = t215 - t252.
                    DATA(t256) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                    t256->has = abap_true.
                    t256->value = t250.
                    t247 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t213 i_col = t256 ) i_str = t211 ).
                    t245->load( ).
                    APPEND t247 TO t245->items.
                    t245->save( ).
                  ELSE.
                    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    t258 = t209->result_9728.
                    DATA t260 TYPE REF TO zcl_lnt_lx_identifier.
                    DATA(t264) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                    t264->has = abap_true.
                    t264->value = t215.
                    t260 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t213 i_col = t264 ) i_str = t211 ).
                    t258->load( ).
                    APPEND t260 TO t258->items.
                    t258->save( ).
                  ENDIF.
                ENDIF.
                t10 = ||.
                t4 = 0.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        CONTINUE.
      ENDIF.
      IF xsdbool( t4 = 2 ) = abap_true.
        DATA(t272) = t10.
        DATA(t274) = strlen( t272 ).
        t10 = |{ t272 }{ t32 }|.
        DATA t275 TYPE abap_bool.
        DATA t276 TYPE abap_bool.
        t276 = xsdbool( t32 = `\` ).
        t275 = t276.
        IF t276 = abap_true.
          t275 = xsdbool( t71 = |"| ).
        ENDIF.
        IF t275 = abap_true.
          DATA(t283) = t10.
          DATA(t284) = VALUE string( ).
          DATA t285 TYPE REF TO zcl_lnt_stream.
          t285 = t12.
          DATA(t289) = VALUE string( ).
          DATA t290 TYPE string.
          t290 = t285->buffer.
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
          DATA t297 TYPE string.
          t297 = t285->buffer.
          DATA(t300) = VALUE string( ).
          DATA(t302) = 1.
          DATA t303 TYPE i.
          t303 = strlen( t297 ).
          DATA(t306) = strlen( t297 ).
          t302 = COND i( WHEN t302 < 0 THEN 0 WHEN t302 > t306 THEN t306 ELSE t302 ).
          t303 = COND i( WHEN t303 < 0 THEN 0 WHEN t303 > t306 THEN t306 ELSE t303 ).
          IF t302 > t303.
            t306 = t302.
            t302 = t303.
            t303 = t306.
          ENDIF.
          t306 = t303 - t302.
          t300 = t297+t302(t306).
          t285->buffer = t300.
          DELETE t285->zlnt_record_delet_0597644d88b4 WHERE table_line = `buffer`.
          t284 = t289.
          DATA(t308) = strlen( t283 ).
          t10 = |{ t283 }{ t284 }|.
          DATA(t311) = CONV f( 1 ).
          t8 = t8 + t311.
        ELSE.
          DATA t312 TYPE abap_bool.
          DATA t313 TYPE abap_bool.
          t313 = xsdbool( t32 = |"| ).
          t312 = t313.
          IF t313 = abap_true.
            t312 = xsdbool( t71 = |"| ).
          ENDIF.
          IF t312 = abap_true.
            DATA(t320) = t10.
            DATA(t321) = VALUE string( ).
            DATA t322 TYPE REF TO zcl_lnt_stream.
            t322 = t12.
            DATA(t326) = VALUE string( ).
            DATA t327 TYPE string.
            t327 = t322->buffer.
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
            DATA t334 TYPE string.
            t334 = t322->buffer.
            DATA(t337) = VALUE string( ).
            DATA(t339) = 1.
            DATA t340 TYPE i.
            t340 = strlen( t334 ).
            DATA(t343) = strlen( t334 ).
            t339 = COND i( WHEN t339 < 0 THEN 0 WHEN t339 > t343 THEN t343 ELSE t339 ).
            t340 = COND i( WHEN t340 < 0 THEN 0 WHEN t340 > t343 THEN t343 ELSE t340 ).
            IF t339 > t340.
              t343 = t339.
              t339 = t340.
              t340 = t343.
            ENDIF.
            t343 = t340 - t339.
            t337 = t334+t339(t343).
            t322->buffer = t337.
            DELETE t322->zlnt_record_delet_0597644d88b4 WHERE table_line = `buffer`.
            t321 = t326.
            DATA(t345) = strlen( t320 ).
            t10 = |{ t320 }{ t321 }|.
            DATA(t348) = CONV f( 1 ).
            t8 = t8 + t348.
          ELSE.
            IF xsdbool( t32 = |"| ) = abap_true.
              DATA t353 TYPE REF TO zcl_lnt_cd_result.
              t353 = t2.
              DATA t355 TYPE string.
              t355 = t10.
              DATA t357 TYPE f.
              t357 = t6.
              DATA t359 TYPE f.
              t359 = t8.
              DATA t362 TYPE f.
              t362 = t4.
              IF xsdbool( strlen( t355 ) > 0 ) = abap_true.
                DATA t370 TYPE abap_bool.
                DATA t371 TYPE abap_bool.
                t371 = xsdbool( t362 = CONV f( 3 ) ).
                t370 = t371.
                IF t371 = abap_true.
                  DATA(t374) = VALUE abap_bool( ).
                  DATA(t375) = VALUE abap_bool( ).
                  DATA(t377) = |--|.
                  DATA(t378) = strlen( t355 ).
                  DATA t379 TYPE i.
                  DATA(t380) = VALUE i( ).
                  DATA(t381) = VALUE string( ).
                  t379 = strlen( t377 ).
                  IF t379 = 0.
                    t375 = abap_true.
                  ELSEIF t379 <= t378.
                    t380 = 0.
                    t381 = t355+t380(t379).
                    IF t381 = t377.
                      t375 = abap_true.
                    ENDIF.
                  ENDIF.
                  t374 = t375.
                  IF t375 = abap_false.
                    DATA(t382) = VALUE abap_bool( ).
                    DATA(t384) = |//|.
                    DATA(t385) = strlen( t355 ).
                    DATA t386 TYPE i.
                    DATA(t387) = VALUE i( ).
                    DATA(t388) = VALUE string( ).
                    t386 = strlen( t384 ).
                    IF t386 = 0.
                      t382 = abap_true.
                    ELSEIF t386 <= t385.
                      t387 = 0.
                      t388 = t355+t387(t386).
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
                  t389 = t353->result_9728.
                  DATA t391 TYPE REF TO zcl_lnt_lx_comment.
                  DATA t394 TYPE f.
                  DATA t396 TYPE f.
                  t396 = strlen( t355 ).
                  t394 = t359 - t396.
                  DATA(t400) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                  t400->has = abap_true.
                  t400->value = t394.
                  t391 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t357 i_col = t400 ) i_str = t355 ).
                  t389->load( ).
                  APPEND t391 TO t389->items.
                  t389->save( ).
                ELSE.
                  DATA t402 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  t402 = t353->result_9728.
                  DATA t404 TYPE REF TO zcl_lnt_lx_identifier.
                  DATA(t408) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                  t408->has = abap_true.
                  t408->value = t359.
                  t404 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t357 i_col = t408 ) i_str = t355 ).
                  t402->load( ).
                  APPEND t404 TO t402->items.
                  t402->save( ).
                ENDIF.
              ENDIF.
              t10 = ||.
              t4 = 0.
            ENDIF.
          ENDIF.
        ENDIF.
        CONTINUE.
      ENDIF.
      IF xsdbool( t4 = 3 ) = abap_true.
        IF xsdbool( t32 = |\n| ) = abap_true.
          DATA t419 TYPE REF TO zcl_lnt_cd_result.
          t419 = t2.
          DATA t421 TYPE string.
          t421 = t10.
          DATA t423 TYPE f.
          t423 = t6.
          DATA t425 TYPE f.
          t425 = t8.
          DATA t428 TYPE f.
          t428 = t4.
          IF xsdbool( strlen( t421 ) > 0 ) = abap_true.
            DATA t436 TYPE abap_bool.
            DATA t437 TYPE abap_bool.
            t437 = xsdbool( t428 = CONV f( 3 ) ).
            t436 = t437.
            IF t437 = abap_true.
              DATA(t440) = VALUE abap_bool( ).
              DATA(t441) = VALUE abap_bool( ).
              DATA(t443) = |--|.
              DATA(t444) = strlen( t421 ).
              DATA t445 TYPE i.
              DATA(t446) = VALUE i( ).
              DATA(t447) = VALUE string( ).
              t445 = strlen( t443 ).
              IF t445 = 0.
                t441 = abap_true.
              ELSEIF t445 <= t444.
                t446 = 0.
                t447 = t421+t446(t445).
                IF t447 = t443.
                  t441 = abap_true.
                ENDIF.
              ENDIF.
              t440 = t441.
              IF t441 = abap_false.
                DATA(t448) = VALUE abap_bool( ).
                DATA(t450) = |//|.
                DATA(t451) = strlen( t421 ).
                DATA t452 TYPE i.
                DATA(t453) = VALUE i( ).
                DATA(t454) = VALUE string( ).
                t452 = strlen( t450 ).
                IF t452 = 0.
                  t448 = abap_true.
                ELSEIF t452 <= t451.
                  t453 = 0.
                  t454 = t421+t453(t452).
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
              t455 = t419->result_9728.
              DATA t457 TYPE REF TO zcl_lnt_lx_comment.
              DATA t460 TYPE f.
              DATA t462 TYPE f.
              t462 = strlen( t421 ).
              t460 = t425 - t462.
              DATA(t466) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t466->has = abap_true.
              t466->value = t460.
              t457 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t423 i_col = t466 ) i_str = t421 ).
              t455->load( ).
              APPEND t457 TO t455->items.
              t455->save( ).
            ELSE.
              DATA t468 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t468 = t419->result_9728.
              DATA t470 TYPE REF TO zcl_lnt_lx_identifier.
              DATA(t474) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t474->has = abap_true.
              t474->value = t425.
              t470 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t423 i_col = t474 ) i_str = t421 ).
              t468->load( ).
              APPEND t470 TO t468->items.
              t468->save( ).
            ENDIF.
          ENDIF.
          t10 = ||.
          t4 = 0.
        ELSE.
          DATA(t479) = t10.
          DATA(t481) = strlen( t479 ).
          t10 = |{ t479 }{ t32 }|.
          CONTINUE.
        ENDIF.
      ELSE.
        DATA(t482) = VALUE abap_bool( ).
        DATA t483 TYPE abap_bool.
        DATA t484 TYPE abap_bool.
        t484 = xsdbool( t4 = 0 ).
        t483 = t484.
        IF t484 = abap_true.
          t483 = xsdbool( t32 = |/| ).
        ENDIF.
        t482 = t483.
        IF t483 = abap_true.
          t482 = xsdbool( t71 = |/| ).
        ENDIF.
        IF t482 = abap_true.
          t4 = 3.
          DATA t495 TYPE REF TO zcl_lnt_cd_result.
          t495 = t2.
          DATA t497 TYPE string.
          t497 = t10.
          DATA t499 TYPE f.
          t499 = t6.
          DATA t501 TYPE f.
          t501 = t8.
          DATA t504 TYPE f.
          t504 = t4.
          IF xsdbool( strlen( t497 ) > 0 ) = abap_true.
            DATA t512 TYPE abap_bool.
            DATA t513 TYPE abap_bool.
            t513 = xsdbool( t504 = CONV f( 3 ) ).
            t512 = t513.
            IF t513 = abap_true.
              DATA(t516) = VALUE abap_bool( ).
              DATA(t517) = VALUE abap_bool( ).
              DATA(t519) = |--|.
              DATA(t520) = strlen( t497 ).
              DATA t521 TYPE i.
              DATA(t522) = VALUE i( ).
              DATA(t523) = VALUE string( ).
              t521 = strlen( t519 ).
              IF t521 = 0.
                t517 = abap_true.
              ELSEIF t521 <= t520.
                t522 = 0.
                t523 = t497+t522(t521).
                IF t523 = t519.
                  t517 = abap_true.
                ENDIF.
              ENDIF.
              t516 = t517.
              IF t517 = abap_false.
                DATA(t524) = VALUE abap_bool( ).
                DATA(t526) = |//|.
                DATA(t527) = strlen( t497 ).
                DATA t528 TYPE i.
                DATA(t529) = VALUE i( ).
                DATA(t530) = VALUE string( ).
                t528 = strlen( t526 ).
                IF t528 = 0.
                  t524 = abap_true.
                ELSEIF t528 <= t527.
                  t529 = 0.
                  t530 = t497+t529(t528).
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
              t531 = t495->result_9728.
              DATA t533 TYPE REF TO zcl_lnt_lx_comment.
              DATA t536 TYPE f.
              DATA t538 TYPE f.
              t538 = strlen( t497 ).
              t536 = t501 - t538.
              DATA(t542) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t542->has = abap_true.
              t542->value = t536.
              t533 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t499 i_col = t542 ) i_str = t497 ).
              t531->load( ).
              APPEND t533 TO t531->items.
              t531->save( ).
            ELSE.
              DATA t544 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t544 = t495->result_9728.
              DATA t546 TYPE REF TO zcl_lnt_lx_identifier.
              DATA(t550) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t550->has = abap_true.
              t550->value = t501.
              t546 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t499 i_col = t550 ) i_str = t497 ).
              t544->load( ).
              APPEND t546 TO t544->items.
              t544->save( ).
            ENDIF.
          ENDIF.
          t10 = ||.
          DATA(t554) = t10.
          DATA(t556) = strlen( t554 ).
          t10 = |{ t554 }{ t32 }|.
          CONTINUE.
        ELSE.
          DATA(t557) = VALUE abap_bool( ).
          DATA t558 TYPE abap_bool.
          DATA t559 TYPE abap_bool.
          t559 = xsdbool( t4 = 0 ).
          t558 = t559.
          IF t559 = abap_true.
            t558 = xsdbool( t32 = |-| ).
          ENDIF.
          t557 = t558.
          IF t558 = abap_true.
            t557 = xsdbool( t71 = |-| ).
          ENDIF.
          IF t557 = abap_true.
            t4 = 3.
            DATA t570 TYPE REF TO zcl_lnt_cd_result.
            t570 = t2.
            DATA t572 TYPE string.
            t572 = t10.
            DATA t574 TYPE f.
            t574 = t6.
            DATA t576 TYPE f.
            t576 = t8.
            DATA t579 TYPE f.
            t579 = t4.
            IF xsdbool( strlen( t572 ) > 0 ) = abap_true.
              DATA t587 TYPE abap_bool.
              DATA t588 TYPE abap_bool.
              t588 = xsdbool( t579 = CONV f( 3 ) ).
              t587 = t588.
              IF t588 = abap_true.
                DATA(t591) = VALUE abap_bool( ).
                DATA(t592) = VALUE abap_bool( ).
                DATA(t594) = |--|.
                DATA(t595) = strlen( t572 ).
                DATA t596 TYPE i.
                DATA(t597) = VALUE i( ).
                DATA(t598) = VALUE string( ).
                t596 = strlen( t594 ).
                IF t596 = 0.
                  t592 = abap_true.
                ELSEIF t596 <= t595.
                  t597 = 0.
                  t598 = t572+t597(t596).
                  IF t598 = t594.
                    t592 = abap_true.
                  ENDIF.
                ENDIF.
                t591 = t592.
                IF t592 = abap_false.
                  DATA(t599) = VALUE abap_bool( ).
                  DATA(t601) = |//|.
                  DATA(t602) = strlen( t572 ).
                  DATA t603 TYPE i.
                  DATA(t604) = VALUE i( ).
                  DATA(t605) = VALUE string( ).
                  t603 = strlen( t601 ).
                  IF t603 = 0.
                    t599 = abap_true.
                  ELSEIF t603 <= t602.
                    t604 = 0.
                    t605 = t572+t604(t603).
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
                t606 = t570->result_9728.
                DATA t608 TYPE REF TO zcl_lnt_lx_comment.
                DATA t611 TYPE f.
                DATA t613 TYPE f.
                t613 = strlen( t572 ).
                t611 = t576 - t613.
                DATA(t617) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                t617->has = abap_true.
                t617->value = t611.
                t608 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t574 i_col = t617 ) i_str = t572 ).
                t606->load( ).
                APPEND t608 TO t606->items.
                t606->save( ).
              ELSE.
                DATA t619 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                t619 = t570->result_9728.
                DATA t621 TYPE REF TO zcl_lnt_lx_identifier.
                DATA(t625) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                t625->has = abap_true.
                t625->value = t576.
                t621 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t574 i_col = t625 ) i_str = t572 ).
                t619->load( ).
                APPEND t621 TO t619->items.
                t619->save( ).
              ENDIF.
            ENDIF.
            t10 = ||.
            DATA(t629) = t10.
            DATA(t631) = strlen( t629 ).
            t10 = |{ t629 }{ t32 }|.
            CONTINUE.
          ENDIF.
        ENDIF.
      ENDIF.
      IF xsdbool( t4 = 4 ) = abap_true.
        IF xsdbool( t32 = |\n| ) = abap_true.
          DATA(t640) = CONV f( 1 ).
          t6 = t6 + t640.
        ELSE.
          DATA t641 TYPE abap_bool.
          DATA t642 TYPE abap_bool.
          t642 = xsdbool( t46 = |*| ).
          t641 = t642.
          IF t642 = abap_true.
            t641 = xsdbool( t32 = |/| ).
          ENDIF.
          IF t641 = abap_true.
            t4 = 0.
          ENDIF.
        ENDIF.
        CONTINUE.
      ELSE.
        DATA(t649) = VALUE abap_bool( ).
        DATA t650 TYPE abap_bool.
        DATA t651 TYPE abap_bool.
        t651 = xsdbool( t4 = 0 ).
        t650 = t651.
        IF t651 = abap_true.
          t650 = xsdbool( t32 = |/| ).
        ENDIF.
        t649 = t650.
        IF t650 = abap_true.
          t649 = xsdbool( t71 = |*| ).
        ENDIF.
        IF t649 = abap_true.
          t4 = 4.
          DATA t662 TYPE REF TO zcl_lnt_cd_result.
          t662 = t2.
          DATA t664 TYPE string.
          t664 = t10.
          DATA t666 TYPE f.
          t666 = t6.
          DATA t668 TYPE f.
          t668 = t8.
          DATA t671 TYPE f.
          t671 = t4.
          IF xsdbool( strlen( t664 ) > 0 ) = abap_true.
            DATA t679 TYPE abap_bool.
            DATA t680 TYPE abap_bool.
            t680 = xsdbool( t671 = CONV f( 3 ) ).
            t679 = t680.
            IF t680 = abap_true.
              DATA(t683) = VALUE abap_bool( ).
              DATA(t684) = VALUE abap_bool( ).
              DATA(t686) = |--|.
              DATA(t687) = strlen( t664 ).
              DATA t688 TYPE i.
              DATA(t689) = VALUE i( ).
              DATA(t690) = VALUE string( ).
              t688 = strlen( t686 ).
              IF t688 = 0.
                t684 = abap_true.
              ELSEIF t688 <= t687.
                t689 = 0.
                t690 = t664+t689(t688).
                IF t690 = t686.
                  t684 = abap_true.
                ENDIF.
              ENDIF.
              t683 = t684.
              IF t684 = abap_false.
                DATA(t691) = VALUE abap_bool( ).
                DATA(t693) = |//|.
                DATA(t694) = strlen( t664 ).
                DATA t695 TYPE i.
                DATA(t696) = VALUE i( ).
                DATA(t697) = VALUE string( ).
                t695 = strlen( t693 ).
                IF t695 = 0.
                  t691 = abap_true.
                ELSEIF t695 <= t694.
                  t696 = 0.
                  t697 = t664+t696(t695).
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
              t698 = t662->result_9728.
              DATA t700 TYPE REF TO zcl_lnt_lx_comment.
              DATA t703 TYPE f.
              DATA t705 TYPE f.
              t705 = strlen( t664 ).
              t703 = t668 - t705.
              DATA(t709) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t709->has = abap_true.
              t709->value = t703.
              t700 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t666 i_col = t709 ) i_str = t664 ).
              t698->load( ).
              APPEND t700 TO t698->items.
              t698->save( ).
            ELSE.
              DATA t711 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t711 = t662->result_9728.
              DATA t713 TYPE REF TO zcl_lnt_lx_identifier.
              DATA(t717) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t717->has = abap_true.
              t717->value = t668.
              t713 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t666 i_col = t717 ) i_str = t664 ).
              t711->load( ).
              APPEND t713 TO t711->items.
              t711->save( ).
            ENDIF.
          ENDIF.
          t10 = ||.
          DATA(t720) = VALUE string( ).
          DATA t721 TYPE REF TO zcl_lnt_stream.
          t721 = t12.
          DATA(t725) = VALUE string( ).
          DATA t726 TYPE string.
          t726 = t721->buffer.
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
          DATA t733 TYPE string.
          t733 = t721->buffer.
          DATA(t736) = VALUE string( ).
          DATA(t738) = 1.
          DATA t739 TYPE i.
          t739 = strlen( t733 ).
          DATA(t742) = strlen( t733 ).
          t738 = COND i( WHEN t738 < 0 THEN 0 WHEN t738 > t742 THEN t742 ELSE t738 ).
          t739 = COND i( WHEN t739 < 0 THEN 0 WHEN t739 > t742 THEN t742 ELSE t739 ).
          IF t738 > t739.
            t742 = t738.
            t738 = t739.
            t739 = t742.
          ENDIF.
          t742 = t739 - t738.
          t736 = t733+t738(t742).
          t721->buffer = t736.
          DELETE t721->zlnt_record_delet_0597644d88b4 WHERE table_line = `buffer`.
          t720 = t725.
          DATA(t746) = CONV f( 1 ).
          t8 = t8 + t746.
          CONTINUE.
        ENDIF.
      ENDIF.
      IF xsdbool( t32 = |'| ) = abap_true.
        DATA t751 TYPE REF TO zcl_lnt_cd_result.
        t751 = t2.
        DATA t753 TYPE string.
        t753 = t10.
        DATA t755 TYPE f.
        t755 = t6.
        DATA t757 TYPE f.
        t757 = t8.
        DATA t760 TYPE f.
        t760 = t4.
        IF xsdbool( strlen( t753 ) > 0 ) = abap_true.
          DATA t768 TYPE abap_bool.
          DATA t769 TYPE abap_bool.
          t769 = xsdbool( t760 = CONV f( 3 ) ).
          t768 = t769.
          IF t769 = abap_true.
            DATA(t772) = VALUE abap_bool( ).
            DATA(t773) = VALUE abap_bool( ).
            DATA(t775) = |--|.
            DATA(t776) = strlen( t753 ).
            DATA t777 TYPE i.
            DATA(t778) = VALUE i( ).
            DATA(t779) = VALUE string( ).
            t777 = strlen( t775 ).
            IF t777 = 0.
              t773 = abap_true.
            ELSEIF t777 <= t776.
              t778 = 0.
              t779 = t753+t778(t777).
              IF t779 = t775.
                t773 = abap_true.
              ENDIF.
            ENDIF.
            t772 = t773.
            IF t773 = abap_false.
              DATA(t780) = VALUE abap_bool( ).
              DATA(t782) = |//|.
              DATA(t783) = strlen( t753 ).
              DATA t784 TYPE i.
              DATA(t785) = VALUE i( ).
              DATA(t786) = VALUE string( ).
              t784 = strlen( t782 ).
              IF t784 = 0.
                t780 = abap_true.
              ELSEIF t784 <= t783.
                t785 = 0.
                t786 = t753+t785(t784).
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
            t787 = t751->result_9728.
            DATA t789 TYPE REF TO zcl_lnt_lx_comment.
            DATA t792 TYPE f.
            DATA t794 TYPE f.
            t794 = strlen( t753 ).
            t792 = t757 - t794.
            DATA(t798) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t798->has = abap_true.
            t798->value = t792.
            t789 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t755 i_col = t798 ) i_str = t753 ).
            t787->load( ).
            APPEND t789 TO t787->items.
            t787->save( ).
          ELSE.
            DATA t800 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t800 = t751->result_9728.
            DATA t802 TYPE REF TO zcl_lnt_lx_identifier.
            DATA(t806) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t806->has = abap_true.
            t806->value = t757.
            t802 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t755 i_col = t806 ) i_str = t753 ).
            t800->load( ).
            APPEND t802 TO t800->items.
            t800->save( ).
          ENDIF.
        ENDIF.
        t10 = ||.
        t4 = 1.
        DATA(t811) = t10.
        DATA(t813) = strlen( t811 ).
        t10 = |{ t811 }{ t32 }|.
      ELSE.
        IF xsdbool( t32 = |"| ) = abap_true.
          DATA t818 TYPE REF TO zcl_lnt_cd_result.
          t818 = t2.
          DATA t820 TYPE string.
          t820 = t10.
          DATA t822 TYPE f.
          t822 = t6.
          DATA t824 TYPE f.
          t824 = t8.
          DATA t827 TYPE f.
          t827 = t4.
          IF xsdbool( strlen( t820 ) > 0 ) = abap_true.
            DATA t835 TYPE abap_bool.
            DATA t836 TYPE abap_bool.
            t836 = xsdbool( t827 = CONV f( 3 ) ).
            t835 = t836.
            IF t836 = abap_true.
              DATA(t839) = VALUE abap_bool( ).
              DATA(t840) = VALUE abap_bool( ).
              DATA(t842) = |--|.
              DATA(t843) = strlen( t820 ).
              DATA t844 TYPE i.
              DATA(t845) = VALUE i( ).
              DATA(t846) = VALUE string( ).
              t844 = strlen( t842 ).
              IF t844 = 0.
                t840 = abap_true.
              ELSEIF t844 <= t843.
                t845 = 0.
                t846 = t820+t845(t844).
                IF t846 = t842.
                  t840 = abap_true.
                ENDIF.
              ENDIF.
              t839 = t840.
              IF t840 = abap_false.
                DATA(t847) = VALUE abap_bool( ).
                DATA(t849) = |//|.
                DATA(t850) = strlen( t820 ).
                DATA t851 TYPE i.
                DATA(t852) = VALUE i( ).
                DATA(t853) = VALUE string( ).
                t851 = strlen( t849 ).
                IF t851 = 0.
                  t847 = abap_true.
                ELSEIF t851 <= t850.
                  t852 = 0.
                  t853 = t820+t852(t851).
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
              t854 = t818->result_9728.
              DATA t856 TYPE REF TO zcl_lnt_lx_comment.
              DATA t859 TYPE f.
              DATA t861 TYPE f.
              t861 = strlen( t820 ).
              t859 = t824 - t861.
              DATA(t865) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t865->has = abap_true.
              t865->value = t859.
              t856 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t822 i_col = t865 ) i_str = t820 ).
              t854->load( ).
              APPEND t856 TO t854->items.
              t854->save( ).
            ELSE.
              DATA t867 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t867 = t818->result_9728.
              DATA t869 TYPE REF TO zcl_lnt_lx_identifier.
              DATA(t873) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t873->has = abap_true.
              t873->value = t824.
              t869 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t822 i_col = t873 ) i_str = t820 ).
              t867->load( ).
              APPEND t869 TO t867->items.
              t867->save( ).
            ENDIF.
          ENDIF.
          t10 = ||.
          t4 = 2.
          DATA(t878) = t10.
          DATA(t880) = strlen( t878 ).
          t10 = |{ t878 }{ t32 }|.
        ELSE.
          IF xsdbool( t32 = | | ) = abap_true.
            DATA t885 TYPE REF TO zcl_lnt_cd_result.
            t885 = t2.
            DATA t887 TYPE string.
            t887 = t10.
            DATA t889 TYPE f.
            t889 = t6.
            DATA t891 TYPE f.
            t891 = t8.
            DATA t894 TYPE f.
            t894 = t4.
            IF xsdbool( strlen( t887 ) > 0 ) = abap_true.
              DATA t902 TYPE abap_bool.
              DATA t903 TYPE abap_bool.
              t903 = xsdbool( t894 = CONV f( 3 ) ).
              t902 = t903.
              IF t903 = abap_true.
                DATA(t906) = VALUE abap_bool( ).
                DATA(t907) = VALUE abap_bool( ).
                DATA(t909) = |--|.
                DATA(t910) = strlen( t887 ).
                DATA t911 TYPE i.
                DATA(t912) = VALUE i( ).
                DATA(t913) = VALUE string( ).
                t911 = strlen( t909 ).
                IF t911 = 0.
                  t907 = abap_true.
                ELSEIF t911 <= t910.
                  t912 = 0.
                  t913 = t887+t912(t911).
                  IF t913 = t909.
                    t907 = abap_true.
                  ENDIF.
                ENDIF.
                t906 = t907.
                IF t907 = abap_false.
                  DATA(t914) = VALUE abap_bool( ).
                  DATA(t916) = |//|.
                  DATA(t917) = strlen( t887 ).
                  DATA t918 TYPE i.
                  DATA(t919) = VALUE i( ).
                  DATA(t920) = VALUE string( ).
                  t918 = strlen( t916 ).
                  IF t918 = 0.
                    t914 = abap_true.
                  ELSEIF t918 <= t917.
                    t919 = 0.
                    t920 = t887+t919(t918).
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
                t921 = t885->result_9728.
                DATA t923 TYPE REF TO zcl_lnt_lx_comment.
                DATA t926 TYPE f.
                DATA t928 TYPE f.
                t928 = strlen( t887 ).
                t926 = t891 - t928.
                DATA(t932) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                t932->has = abap_true.
                t932->value = t926.
                t923 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t889 i_col = t932 ) i_str = t887 ).
                t921->load( ).
                APPEND t923 TO t921->items.
                t921->save( ).
              ELSE.
                DATA t934 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                t934 = t885->result_9728.
                DATA t936 TYPE REF TO zcl_lnt_lx_identifier.
                DATA(t940) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                t940->has = abap_true.
                t940->value = t891.
                t936 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t889 i_col = t940 ) i_str = t887 ).
                t934->load( ).
                APPEND t936 TO t934->items.
                t934->save( ).
              ENDIF.
            ENDIF.
            t10 = ||.
          ELSE.
            IF xsdbool( t32 = |\t| ) = abap_true.
              DATA t947 TYPE REF TO zcl_lnt_cd_result.
              t947 = t2.
              DATA t949 TYPE string.
              t949 = t10.
              DATA t951 TYPE f.
              t951 = t6.
              DATA t953 TYPE f.
              t953 = t8.
              DATA t956 TYPE f.
              t956 = t4.
              IF xsdbool( strlen( t949 ) > 0 ) = abap_true.
                DATA t964 TYPE abap_bool.
                DATA t965 TYPE abap_bool.
                t965 = xsdbool( t956 = CONV f( 3 ) ).
                t964 = t965.
                IF t965 = abap_true.
                  DATA(t968) = VALUE abap_bool( ).
                  DATA(t969) = VALUE abap_bool( ).
                  DATA(t971) = |--|.
                  DATA(t972) = strlen( t949 ).
                  DATA t973 TYPE i.
                  DATA(t974) = VALUE i( ).
                  DATA(t975) = VALUE string( ).
                  t973 = strlen( t971 ).
                  IF t973 = 0.
                    t969 = abap_true.
                  ELSEIF t973 <= t972.
                    t974 = 0.
                    t975 = t949+t974(t973).
                    IF t975 = t971.
                      t969 = abap_true.
                    ENDIF.
                  ENDIF.
                  t968 = t969.
                  IF t969 = abap_false.
                    DATA(t976) = VALUE abap_bool( ).
                    DATA(t978) = |//|.
                    DATA(t979) = strlen( t949 ).
                    DATA t980 TYPE i.
                    DATA(t981) = VALUE i( ).
                    DATA(t982) = VALUE string( ).
                    t980 = strlen( t978 ).
                    IF t980 = 0.
                      t976 = abap_true.
                    ELSEIF t980 <= t979.
                      t981 = 0.
                      t982 = t949+t981(t980).
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
                  t983 = t947->result_9728.
                  DATA t985 TYPE REF TO zcl_lnt_lx_comment.
                  DATA t988 TYPE f.
                  DATA t990 TYPE f.
                  t990 = strlen( t949 ).
                  t988 = t953 - t990.
                  DATA(t994) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                  t994->has = abap_true.
                  t994->value = t988.
                  t985 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t951 i_col = t994 ) i_str = t949 ).
                  t983->load( ).
                  APPEND t985 TO t983->items.
                  t983->save( ).
                ELSE.
                  DATA t996 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  t996 = t947->result_9728.
                  DATA t998 TYPE REF TO zcl_lnt_lx_identifier.
                  DATA(t1002) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                  t1002->has = abap_true.
                  t1002->value = t953.
                  t998 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t951 i_col = t1002 ) i_str = t949 ).
                  t996->load( ).
                  APPEND t998 TO t996->items.
                  t996->save( ).
                ENDIF.
              ENDIF.
              t10 = ||.
            ELSE.
              IF xsdbool( t32 = |\n| ) = abap_true.
                DATA t1009 TYPE REF TO zcl_lnt_cd_result.
                t1009 = t2.
                DATA t1011 TYPE string.
                t1011 = t10.
                DATA t1013 TYPE f.
                t1013 = t6.
                DATA t1015 TYPE f.
                t1015 = t8.
                DATA t1018 TYPE f.
                t1018 = t4.
                IF xsdbool( strlen( t1011 ) > 0 ) = abap_true.
                  DATA t1026 TYPE abap_bool.
                  DATA t1027 TYPE abap_bool.
                  t1027 = xsdbool( t1018 = CONV f( 3 ) ).
                  t1026 = t1027.
                  IF t1027 = abap_true.
                    DATA(t1030) = VALUE abap_bool( ).
                    DATA(t1031) = VALUE abap_bool( ).
                    DATA(t1033) = |--|.
                    DATA(t1034) = strlen( t1011 ).
                    DATA t1035 TYPE i.
                    DATA(t1036) = VALUE i( ).
                    DATA(t1037) = VALUE string( ).
                    t1035 = strlen( t1033 ).
                    IF t1035 = 0.
                      t1031 = abap_true.
                    ELSEIF t1035 <= t1034.
                      t1036 = 0.
                      t1037 = t1011+t1036(t1035).
                      IF t1037 = t1033.
                        t1031 = abap_true.
                      ENDIF.
                    ENDIF.
                    t1030 = t1031.
                    IF t1031 = abap_false.
                      DATA(t1038) = VALUE abap_bool( ).
                      DATA(t1040) = |//|.
                      DATA(t1041) = strlen( t1011 ).
                      DATA t1042 TYPE i.
                      DATA(t1043) = VALUE i( ).
                      DATA(t1044) = VALUE string( ).
                      t1042 = strlen( t1040 ).
                      IF t1042 = 0.
                        t1038 = abap_true.
                      ELSEIF t1042 <= t1041.
                        t1043 = 0.
                        t1044 = t1011+t1043(t1042).
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
                    t1045 = t1009->result_9728.
                    DATA t1047 TYPE REF TO zcl_lnt_lx_comment.
                    DATA t1050 TYPE f.
                    DATA t1052 TYPE f.
                    t1052 = strlen( t1011 ).
                    t1050 = t1015 - t1052.
                    DATA(t1056) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                    t1056->has = abap_true.
                    t1056->value = t1050.
                    t1047 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t1013 i_col = t1056 ) i_str = t1011 ).
                    t1045->load( ).
                    APPEND t1047 TO t1045->items.
                    t1045->save( ).
                  ELSE.
                    DATA t1058 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    t1058 = t1009->result_9728.
                    DATA t1060 TYPE REF TO zcl_lnt_lx_identifier.
                    DATA(t1064) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                    t1064->has = abap_true.
                    t1064->value = t1015.
                    t1060 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t1013 i_col = t1064 ) i_str = t1011 ).
                    t1058->load( ).
                    APPEND t1060 TO t1058->items.
                    t1058->save( ).
                  ENDIF.
                ENDIF.
                t10 = ||.
                DATA(t1069) = CONV f( 1 ).
                t6 = t6 + t1069.
                t8 = CONV f( 0 ).
              ELSE.
                IF xsdbool( t32 = |;| ) = abap_true.
                  DATA t1075 TYPE REF TO zcl_lnt_cd_result.
                  t1075 = t2.
                  DATA t1077 TYPE string.
                  t1077 = t10.
                  DATA t1079 TYPE f.
                  t1079 = t6.
                  DATA t1081 TYPE f.
                  t1081 = t8.
                  DATA t1084 TYPE f.
                  t1084 = t4.
                  IF xsdbool( strlen( t1077 ) > 0 ) = abap_true.
                    DATA t1092 TYPE abap_bool.
                    DATA t1093 TYPE abap_bool.
                    t1093 = xsdbool( t1084 = CONV f( 3 ) ).
                    t1092 = t1093.
                    IF t1093 = abap_true.
                      DATA(t1096) = VALUE abap_bool( ).
                      DATA(t1097) = VALUE abap_bool( ).
                      DATA(t1099) = |--|.
                      DATA(t1100) = strlen( t1077 ).
                      DATA t1101 TYPE i.
                      DATA(t1102) = VALUE i( ).
                      DATA(t1103) = VALUE string( ).
                      t1101 = strlen( t1099 ).
                      IF t1101 = 0.
                        t1097 = abap_true.
                      ELSEIF t1101 <= t1100.
                        t1102 = 0.
                        t1103 = t1077+t1102(t1101).
                        IF t1103 = t1099.
                          t1097 = abap_true.
                        ENDIF.
                      ENDIF.
                      t1096 = t1097.
                      IF t1097 = abap_false.
                        DATA(t1104) = VALUE abap_bool( ).
                        DATA(t1106) = |//|.
                        DATA(t1107) = strlen( t1077 ).
                        DATA t1108 TYPE i.
                        DATA(t1109) = VALUE i( ).
                        DATA(t1110) = VALUE string( ).
                        t1108 = strlen( t1106 ).
                        IF t1108 = 0.
                          t1104 = abap_true.
                        ELSEIF t1108 <= t1107.
                          t1109 = 0.
                          t1110 = t1077+t1109(t1108).
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
                      t1111 = t1075->result_9728.
                      DATA t1113 TYPE REF TO zcl_lnt_lx_comment.
                      DATA t1116 TYPE f.
                      DATA t1118 TYPE f.
                      t1118 = strlen( t1077 ).
                      t1116 = t1081 - t1118.
                      DATA(t1122) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                      t1122->has = abap_true.
                      t1122->value = t1116.
                      t1113 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t1079 i_col = t1122 ) i_str = t1077 ).
                      t1111->load( ).
                      APPEND t1113 TO t1111->items.
                      t1111->save( ).
                    ELSE.
                      DATA t1124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      t1124 = t1075->result_9728.
                      DATA t1126 TYPE REF TO zcl_lnt_lx_identifier.
                      DATA(t1130) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                      t1130->has = abap_true.
                      t1130->value = t1081.
                      t1126 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t1079 i_col = t1130 ) i_str = t1077 ).
                      t1124->load( ).
                      APPEND t1126 TO t1124->items.
                      t1124->save( ).
                    ENDIF.
                  ENDIF.
                  t10 = ||.
                  DATA(t1133) = VALUE string( ).
                  DATA t1134 TYPE REF TO zcl_lnt_cd_result.
                  t1134 = t2.
                  DATA t1136 TYPE string.
                  t1136 = t32.
                  DATA t1138 TYPE f.
                  t1138 = t6.
                  DATA t1140 TYPE f.
                  t1140 = t8.
                  DATA t1143 TYPE f.
                  t1143 = t4.
                  IF xsdbool( strlen( t1136 ) > 0 ) = abap_true.
                    DATA t1151 TYPE abap_bool.
                    DATA t1152 TYPE abap_bool.
                    t1152 = xsdbool( t1143 = CONV f( 3 ) ).
                    t1151 = t1152.
                    IF t1152 = abap_true.
                      DATA(t1155) = VALUE abap_bool( ).
                      DATA(t1156) = VALUE abap_bool( ).
                      DATA(t1158) = |--|.
                      DATA(t1159) = strlen( t1136 ).
                      DATA t1160 TYPE i.
                      DATA(t1161) = VALUE i( ).
                      DATA(t1162) = VALUE string( ).
                      t1160 = strlen( t1158 ).
                      IF t1160 = 0.
                        t1156 = abap_true.
                      ELSEIF t1160 <= t1159.
                        t1161 = 0.
                        t1162 = t1136+t1161(t1160).
                        IF t1162 = t1158.
                          t1156 = abap_true.
                        ENDIF.
                      ENDIF.
                      t1155 = t1156.
                      IF t1156 = abap_false.
                        DATA(t1163) = VALUE abap_bool( ).
                        DATA(t1165) = |//|.
                        DATA(t1166) = strlen( t1136 ).
                        DATA t1167 TYPE i.
                        DATA(t1168) = VALUE i( ).
                        DATA(t1169) = VALUE string( ).
                        t1167 = strlen( t1165 ).
                        IF t1167 = 0.
                          t1163 = abap_true.
                        ELSEIF t1167 <= t1166.
                          t1168 = 0.
                          t1169 = t1136+t1168(t1167).
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
                      t1170 = t1134->result_9728.
                      DATA t1172 TYPE REF TO zcl_lnt_lx_comment.
                      DATA t1175 TYPE f.
                      DATA t1177 TYPE f.
                      t1177 = strlen( t1136 ).
                      t1175 = t1140 - t1177.
                      DATA(t1181) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                      t1181->has = abap_true.
                      t1181->value = t1175.
                      t1172 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t1138 i_col = t1181 ) i_str = t1136 ).
                      t1170->load( ).
                      APPEND t1172 TO t1170->items.
                      t1170->save( ).
                    ELSE.
                      DATA t1183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      t1183 = t1134->result_9728.
                      DATA t1185 TYPE REF TO zcl_lnt_lx_identifier.
                      DATA(t1189) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                      t1189->has = abap_true.
                      t1189->value = t1140.
                      t1185 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t1138 i_col = t1189 ) i_str = t1136 ).
                      t1183->load( ).
                      APPEND t1185 TO t1183->items.
                      t1183->save( ).
                    ENDIF.
                  ENDIF.
                  t1133 = ||.
                ELSE.
                  IF xsdbool( t32 = |:| ) = abap_true.
                    DATA t1196 TYPE REF TO zcl_lnt_cd_result.
                    t1196 = t2.
                    DATA t1198 TYPE string.
                    t1198 = t10.
                    DATA t1200 TYPE f.
                    t1200 = t6.
                    DATA t1202 TYPE f.
                    t1202 = t8.
                    DATA t1205 TYPE f.
                    t1205 = t4.
                    IF xsdbool( strlen( t1198 ) > 0 ) = abap_true.
                      DATA t1213 TYPE abap_bool.
                      DATA t1214 TYPE abap_bool.
                      t1214 = xsdbool( t1205 = CONV f( 3 ) ).
                      t1213 = t1214.
                      IF t1214 = abap_true.
                        DATA(t1217) = VALUE abap_bool( ).
                        DATA(t1218) = VALUE abap_bool( ).
                        DATA(t1220) = |--|.
                        DATA(t1221) = strlen( t1198 ).
                        DATA t1222 TYPE i.
                        DATA(t1223) = VALUE i( ).
                        DATA(t1224) = VALUE string( ).
                        t1222 = strlen( t1220 ).
                        IF t1222 = 0.
                          t1218 = abap_true.
                        ELSEIF t1222 <= t1221.
                          t1223 = 0.
                          t1224 = t1198+t1223(t1222).
                          IF t1224 = t1220.
                            t1218 = abap_true.
                          ENDIF.
                        ENDIF.
                        t1217 = t1218.
                        IF t1218 = abap_false.
                          DATA(t1225) = VALUE abap_bool( ).
                          DATA(t1227) = |//|.
                          DATA(t1228) = strlen( t1198 ).
                          DATA t1229 TYPE i.
                          DATA(t1230) = VALUE i( ).
                          DATA(t1231) = VALUE string( ).
                          t1229 = strlen( t1227 ).
                          IF t1229 = 0.
                            t1225 = abap_true.
                          ELSEIF t1229 <= t1228.
                            t1230 = 0.
                            t1231 = t1198+t1230(t1229).
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
                        t1232 = t1196->result_9728.
                        DATA t1234 TYPE REF TO zcl_lnt_lx_comment.
                        DATA t1237 TYPE f.
                        DATA t1239 TYPE f.
                        t1239 = strlen( t1198 ).
                        t1237 = t1202 - t1239.
                        DATA(t1243) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                        t1243->has = abap_true.
                        t1243->value = t1237.
                        t1234 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t1200 i_col = t1243 ) i_str = t1198 ).
                        t1232->load( ).
                        APPEND t1234 TO t1232->items.
                        t1232->save( ).
                      ELSE.
                        DATA t1245 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        t1245 = t1196->result_9728.
                        DATA t1247 TYPE REF TO zcl_lnt_lx_identifier.
                        DATA(t1251) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                        t1251->has = abap_true.
                        t1251->value = t1202.
                        t1247 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t1200 i_col = t1251 ) i_str = t1198 ).
                        t1245->load( ).
                        APPEND t1247 TO t1245->items.
                        t1245->save( ).
                      ENDIF.
                    ENDIF.
                    t10 = ||.
                    DATA(t1254) = VALUE string( ).
                    DATA t1255 TYPE REF TO zcl_lnt_cd_result.
                    t1255 = t2.
                    DATA t1257 TYPE string.
                    t1257 = t32.
                    DATA t1259 TYPE f.
                    t1259 = t6.
                    DATA t1261 TYPE f.
                    t1261 = t8.
                    DATA t1264 TYPE f.
                    t1264 = t4.
                    IF xsdbool( strlen( t1257 ) > 0 ) = abap_true.
                      DATA t1272 TYPE abap_bool.
                      DATA t1273 TYPE abap_bool.
                      t1273 = xsdbool( t1264 = CONV f( 3 ) ).
                      t1272 = t1273.
                      IF t1273 = abap_true.
                        DATA(t1276) = VALUE abap_bool( ).
                        DATA(t1277) = VALUE abap_bool( ).
                        DATA(t1279) = |--|.
                        DATA(t1280) = strlen( t1257 ).
                        DATA t1281 TYPE i.
                        DATA(t1282) = VALUE i( ).
                        DATA(t1283) = VALUE string( ).
                        t1281 = strlen( t1279 ).
                        IF t1281 = 0.
                          t1277 = abap_true.
                        ELSEIF t1281 <= t1280.
                          t1282 = 0.
                          t1283 = t1257+t1282(t1281).
                          IF t1283 = t1279.
                            t1277 = abap_true.
                          ENDIF.
                        ENDIF.
                        t1276 = t1277.
                        IF t1277 = abap_false.
                          DATA(t1284) = VALUE abap_bool( ).
                          DATA(t1286) = |//|.
                          DATA(t1287) = strlen( t1257 ).
                          DATA t1288 TYPE i.
                          DATA(t1289) = VALUE i( ).
                          DATA(t1290) = VALUE string( ).
                          t1288 = strlen( t1286 ).
                          IF t1288 = 0.
                            t1284 = abap_true.
                          ELSEIF t1288 <= t1287.
                            t1289 = 0.
                            t1290 = t1257+t1289(t1288).
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
                        t1291 = t1255->result_9728.
                        DATA t1293 TYPE REF TO zcl_lnt_lx_comment.
                        DATA t1296 TYPE f.
                        DATA t1298 TYPE f.
                        t1298 = strlen( t1257 ).
                        t1296 = t1261 - t1298.
                        DATA(t1302) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                        t1302->has = abap_true.
                        t1302->value = t1296.
                        t1293 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t1259 i_col = t1302 ) i_str = t1257 ).
                        t1291->load( ).
                        APPEND t1293 TO t1291->items.
                        t1291->save( ).
                      ELSE.
                        DATA t1304 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        t1304 = t1255->result_9728.
                        DATA t1306 TYPE REF TO zcl_lnt_lx_identifier.
                        DATA(t1310) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                        t1310->has = abap_true.
                        t1310->value = t1261.
                        t1306 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t1259 i_col = t1310 ) i_str = t1257 ).
                        t1304->load( ).
                        APPEND t1306 TO t1304->items.
                        t1304->save( ).
                      ENDIF.
                    ENDIF.
                    t1254 = ||.
                  ELSE.
                    IF xsdbool( t32 = |,| ) = abap_true.
                      DATA t1317 TYPE REF TO zcl_lnt_cd_result.
                      t1317 = t2.
                      DATA t1319 TYPE string.
                      t1319 = t10.
                      DATA t1321 TYPE f.
                      t1321 = t6.
                      DATA t1323 TYPE f.
                      t1323 = t8.
                      DATA t1326 TYPE f.
                      t1326 = t4.
                      IF xsdbool( strlen( t1319 ) > 0 ) = abap_true.
                        DATA t1334 TYPE abap_bool.
                        DATA t1335 TYPE abap_bool.
                        t1335 = xsdbool( t1326 = CONV f( 3 ) ).
                        t1334 = t1335.
                        IF t1335 = abap_true.
                          DATA(t1338) = VALUE abap_bool( ).
                          DATA(t1339) = VALUE abap_bool( ).
                          DATA(t1341) = |--|.
                          DATA(t1342) = strlen( t1319 ).
                          DATA t1343 TYPE i.
                          DATA(t1344) = VALUE i( ).
                          DATA(t1345) = VALUE string( ).
                          t1343 = strlen( t1341 ).
                          IF t1343 = 0.
                            t1339 = abap_true.
                          ELSEIF t1343 <= t1342.
                            t1344 = 0.
                            t1345 = t1319+t1344(t1343).
                            IF t1345 = t1341.
                              t1339 = abap_true.
                            ENDIF.
                          ENDIF.
                          t1338 = t1339.
                          IF t1339 = abap_false.
                            DATA(t1346) = VALUE abap_bool( ).
                            DATA(t1348) = |//|.
                            DATA(t1349) = strlen( t1319 ).
                            DATA t1350 TYPE i.
                            DATA(t1351) = VALUE i( ).
                            DATA(t1352) = VALUE string( ).
                            t1350 = strlen( t1348 ).
                            IF t1350 = 0.
                              t1346 = abap_true.
                            ELSEIF t1350 <= t1349.
                              t1351 = 0.
                              t1352 = t1319+t1351(t1350).
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
                          t1353 = t1317->result_9728.
                          DATA t1355 TYPE REF TO zcl_lnt_lx_comment.
                          DATA t1358 TYPE f.
                          DATA t1360 TYPE f.
                          t1360 = strlen( t1319 ).
                          t1358 = t1323 - t1360.
                          DATA(t1364) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                          t1364->has = abap_true.
                          t1364->value = t1358.
                          t1355 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t1321 i_col = t1364 ) i_str = t1319 ).
                          t1353->load( ).
                          APPEND t1355 TO t1353->items.
                          t1353->save( ).
                        ELSE.
                          DATA t1366 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                          t1366 = t1317->result_9728.
                          DATA t1368 TYPE REF TO zcl_lnt_lx_identifier.
                          DATA(t1372) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                          t1372->has = abap_true.
                          t1372->value = t1323.
                          t1368 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t1321 i_col = t1372 ) i_str = t1319 ).
                          t1366->load( ).
                          APPEND t1368 TO t1366->items.
                          t1366->save( ).
                        ENDIF.
                      ENDIF.
                      t10 = ||.
                      DATA(t1375) = VALUE string( ).
                      DATA t1376 TYPE REF TO zcl_lnt_cd_result.
                      t1376 = t2.
                      DATA t1378 TYPE string.
                      t1378 = t32.
                      DATA t1380 TYPE f.
                      t1380 = t6.
                      DATA t1382 TYPE f.
                      t1382 = t8.
                      DATA t1385 TYPE f.
                      t1385 = t4.
                      IF xsdbool( strlen( t1378 ) > 0 ) = abap_true.
                        DATA t1393 TYPE abap_bool.
                        DATA t1394 TYPE abap_bool.
                        t1394 = xsdbool( t1385 = CONV f( 3 ) ).
                        t1393 = t1394.
                        IF t1394 = abap_true.
                          DATA(t1397) = VALUE abap_bool( ).
                          DATA(t1398) = VALUE abap_bool( ).
                          DATA(t1400) = |--|.
                          DATA(t1401) = strlen( t1378 ).
                          DATA t1402 TYPE i.
                          DATA(t1403) = VALUE i( ).
                          DATA(t1404) = VALUE string( ).
                          t1402 = strlen( t1400 ).
                          IF t1402 = 0.
                            t1398 = abap_true.
                          ELSEIF t1402 <= t1401.
                            t1403 = 0.
                            t1404 = t1378+t1403(t1402).
                            IF t1404 = t1400.
                              t1398 = abap_true.
                            ENDIF.
                          ENDIF.
                          t1397 = t1398.
                          IF t1398 = abap_false.
                            DATA(t1405) = VALUE abap_bool( ).
                            DATA(t1407) = |//|.
                            DATA(t1408) = strlen( t1378 ).
                            DATA t1409 TYPE i.
                            DATA(t1410) = VALUE i( ).
                            DATA(t1411) = VALUE string( ).
                            t1409 = strlen( t1407 ).
                            IF t1409 = 0.
                              t1405 = abap_true.
                            ELSEIF t1409 <= t1408.
                              t1410 = 0.
                              t1411 = t1378+t1410(t1409).
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
                          t1412 = t1376->result_9728.
                          DATA t1414 TYPE REF TO zcl_lnt_lx_comment.
                          DATA t1417 TYPE f.
                          DATA t1419 TYPE f.
                          t1419 = strlen( t1378 ).
                          t1417 = t1382 - t1419.
                          DATA(t1423) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                          t1423->has = abap_true.
                          t1423->value = t1417.
                          t1414 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t1380 i_col = t1423 ) i_str = t1378 ).
                          t1412->load( ).
                          APPEND t1414 TO t1412->items.
                          t1412->save( ).
                        ELSE.
                          DATA t1425 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                          t1425 = t1376->result_9728.
                          DATA t1427 TYPE REF TO zcl_lnt_lx_identifier.
                          DATA(t1431) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                          t1431->has = abap_true.
                          t1431->value = t1382.
                          t1427 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t1380 i_col = t1431 ) i_str = t1378 ).
                          t1425->load( ).
                          APPEND t1427 TO t1425->items.
                          t1425->save( ).
                        ENDIF.
                      ENDIF.
                      t1375 = ||.
                    ELSE.
                      IF xsdbool( t32 = |.| ) = abap_true.
                        DATA t1438 TYPE REF TO zcl_lnt_cd_result.
                        t1438 = t2.
                        DATA t1440 TYPE string.
                        t1440 = t10.
                        DATA t1442 TYPE f.
                        t1442 = t6.
                        DATA t1444 TYPE f.
                        t1444 = t8.
                        DATA t1447 TYPE f.
                        t1447 = t4.
                        IF xsdbool( strlen( t1440 ) > 0 ) = abap_true.
                          DATA t1455 TYPE abap_bool.
                          DATA t1456 TYPE abap_bool.
                          t1456 = xsdbool( t1447 = CONV f( 3 ) ).
                          t1455 = t1456.
                          IF t1456 = abap_true.
                            DATA(t1459) = VALUE abap_bool( ).
                            DATA(t1460) = VALUE abap_bool( ).
                            DATA(t1462) = |--|.
                            DATA(t1463) = strlen( t1440 ).
                            DATA t1464 TYPE i.
                            DATA(t1465) = VALUE i( ).
                            DATA(t1466) = VALUE string( ).
                            t1464 = strlen( t1462 ).
                            IF t1464 = 0.
                              t1460 = abap_true.
                            ELSEIF t1464 <= t1463.
                              t1465 = 0.
                              t1466 = t1440+t1465(t1464).
                              IF t1466 = t1462.
                                t1460 = abap_true.
                              ENDIF.
                            ENDIF.
                            t1459 = t1460.
                            IF t1460 = abap_false.
                              DATA(t1467) = VALUE abap_bool( ).
                              DATA(t1469) = |//|.
                              DATA(t1470) = strlen( t1440 ).
                              DATA t1471 TYPE i.
                              DATA(t1472) = VALUE i( ).
                              DATA(t1473) = VALUE string( ).
                              t1471 = strlen( t1469 ).
                              IF t1471 = 0.
                                t1467 = abap_true.
                              ELSEIF t1471 <= t1470.
                                t1472 = 0.
                                t1473 = t1440+t1472(t1471).
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
                            t1474 = t1438->result_9728.
                            DATA t1476 TYPE REF TO zcl_lnt_lx_comment.
                            DATA t1479 TYPE f.
                            DATA t1481 TYPE f.
                            t1481 = strlen( t1440 ).
                            t1479 = t1444 - t1481.
                            DATA(t1485) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                            t1485->has = abap_true.
                            t1485->value = t1479.
                            t1476 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t1442 i_col = t1485 ) i_str = t1440 ).
                            t1474->load( ).
                            APPEND t1476 TO t1474->items.
                            t1474->save( ).
                          ELSE.
                            DATA t1487 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                            t1487 = t1438->result_9728.
                            DATA t1489 TYPE REF TO zcl_lnt_lx_identifier.
                            DATA(t1493) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                            t1493->has = abap_true.
                            t1493->value = t1444.
                            t1489 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t1442 i_col = t1493 ) i_str = t1440 ).
                            t1487->load( ).
                            APPEND t1489 TO t1487->items.
                            t1487->save( ).
                          ENDIF.
                        ENDIF.
                        t10 = ||.
                        DATA(t1496) = VALUE string( ).
                        DATA t1497 TYPE REF TO zcl_lnt_cd_result.
                        t1497 = t2.
                        DATA t1499 TYPE string.
                        t1499 = t32.
                        DATA t1501 TYPE f.
                        t1501 = t6.
                        DATA t1503 TYPE f.
                        t1503 = t8.
                        DATA t1506 TYPE f.
                        t1506 = t4.
                        IF xsdbool( strlen( t1499 ) > 0 ) = abap_true.
                          DATA t1514 TYPE abap_bool.
                          DATA t1515 TYPE abap_bool.
                          t1515 = xsdbool( t1506 = CONV f( 3 ) ).
                          t1514 = t1515.
                          IF t1515 = abap_true.
                            DATA(t1518) = VALUE abap_bool( ).
                            DATA(t1519) = VALUE abap_bool( ).
                            DATA(t1521) = |--|.
                            DATA(t1522) = strlen( t1499 ).
                            DATA t1523 TYPE i.
                            DATA(t1524) = VALUE i( ).
                            DATA(t1525) = VALUE string( ).
                            t1523 = strlen( t1521 ).
                            IF t1523 = 0.
                              t1519 = abap_true.
                            ELSEIF t1523 <= t1522.
                              t1524 = 0.
                              t1525 = t1499+t1524(t1523).
                              IF t1525 = t1521.
                                t1519 = abap_true.
                              ENDIF.
                            ENDIF.
                            t1518 = t1519.
                            IF t1519 = abap_false.
                              DATA(t1526) = VALUE abap_bool( ).
                              DATA(t1528) = |//|.
                              DATA(t1529) = strlen( t1499 ).
                              DATA t1530 TYPE i.
                              DATA(t1531) = VALUE i( ).
                              DATA(t1532) = VALUE string( ).
                              t1530 = strlen( t1528 ).
                              IF t1530 = 0.
                                t1526 = abap_true.
                              ELSEIF t1530 <= t1529.
                                t1531 = 0.
                                t1532 = t1499+t1531(t1530).
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
                            t1533 = t1497->result_9728.
                            DATA t1535 TYPE REF TO zcl_lnt_lx_comment.
                            DATA t1538 TYPE f.
                            DATA t1540 TYPE f.
                            t1540 = strlen( t1499 ).
                            t1538 = t1503 - t1540.
                            DATA(t1544) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                            t1544->has = abap_true.
                            t1544->value = t1538.
                            t1535 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t1501 i_col = t1544 ) i_str = t1499 ).
                            t1533->load( ).
                            APPEND t1535 TO t1533->items.
                            t1533->save( ).
                          ELSE.
                            DATA t1546 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                            t1546 = t1497->result_9728.
                            DATA t1548 TYPE REF TO zcl_lnt_lx_identifier.
                            DATA(t1552) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                            t1552->has = abap_true.
                            t1552->value = t1503.
                            t1548 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t1501 i_col = t1552 ) i_str = t1499 ).
                            t1546->load( ).
                            APPEND t1548 TO t1546->items.
                            t1546->save( ).
                          ENDIF.
                        ENDIF.
                        t1496 = ||.
                      ELSE.
                        IF xsdbool( t32 = |\{| ) = abap_true.
                          DATA t1559 TYPE REF TO zcl_lnt_cd_result.
                          t1559 = t2.
                          DATA t1561 TYPE string.
                          t1561 = t10.
                          DATA t1563 TYPE f.
                          t1563 = t6.
                          DATA t1565 TYPE f.
                          t1565 = t8.
                          DATA t1568 TYPE f.
                          t1568 = t4.
                          IF xsdbool( strlen( t1561 ) > 0 ) = abap_true.
                            DATA t1576 TYPE abap_bool.
                            DATA t1577 TYPE abap_bool.
                            t1577 = xsdbool( t1568 = CONV f( 3 ) ).
                            t1576 = t1577.
                            IF t1577 = abap_true.
                              DATA(t1580) = VALUE abap_bool( ).
                              DATA(t1581) = VALUE abap_bool( ).
                              DATA(t1583) = |--|.
                              DATA(t1584) = strlen( t1561 ).
                              DATA t1585 TYPE i.
                              DATA(t1586) = VALUE i( ).
                              DATA(t1587) = VALUE string( ).
                              t1585 = strlen( t1583 ).
                              IF t1585 = 0.
                                t1581 = abap_true.
                              ELSEIF t1585 <= t1584.
                                t1586 = 0.
                                t1587 = t1561+t1586(t1585).
                                IF t1587 = t1583.
                                  t1581 = abap_true.
                                ENDIF.
                              ENDIF.
                              t1580 = t1581.
                              IF t1581 = abap_false.
                                DATA(t1588) = VALUE abap_bool( ).
                                DATA(t1590) = |//|.
                                DATA(t1591) = strlen( t1561 ).
                                DATA t1592 TYPE i.
                                DATA(t1593) = VALUE i( ).
                                DATA(t1594) = VALUE string( ).
                                t1592 = strlen( t1590 ).
                                IF t1592 = 0.
                                  t1588 = abap_true.
                                ELSEIF t1592 <= t1591.
                                  t1593 = 0.
                                  t1594 = t1561+t1593(t1592).
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
                              t1595 = t1559->result_9728.
                              DATA t1597 TYPE REF TO zcl_lnt_lx_comment.
                              DATA t1600 TYPE f.
                              DATA t1602 TYPE f.
                              t1602 = strlen( t1561 ).
                              t1600 = t1565 - t1602.
                              DATA(t1606) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                              t1606->has = abap_true.
                              t1606->value = t1600.
                              t1597 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t1563 i_col = t1606 ) i_str = t1561 ).
                              t1595->load( ).
                              APPEND t1597 TO t1595->items.
                              t1595->save( ).
                            ELSE.
                              DATA t1608 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                              t1608 = t1559->result_9728.
                              DATA t1610 TYPE REF TO zcl_lnt_lx_identifier.
                              DATA(t1614) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                              t1614->has = abap_true.
                              t1614->value = t1565.
                              t1610 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t1563 i_col = t1614 ) i_str = t1561 ).
                              t1608->load( ).
                              APPEND t1610 TO t1608->items.
                              t1608->save( ).
                            ENDIF.
                          ENDIF.
                          t10 = ||.
                          DATA(t1617) = VALUE string( ).
                          DATA t1618 TYPE REF TO zcl_lnt_cd_result.
                          t1618 = t2.
                          DATA t1620 TYPE string.
                          t1620 = t32.
                          DATA t1622 TYPE f.
                          t1622 = t6.
                          DATA t1624 TYPE f.
                          t1624 = t8.
                          DATA t1627 TYPE f.
                          t1627 = t4.
                          IF xsdbool( strlen( t1620 ) > 0 ) = abap_true.
                            DATA t1635 TYPE abap_bool.
                            DATA t1636 TYPE abap_bool.
                            t1636 = xsdbool( t1627 = CONV f( 3 ) ).
                            t1635 = t1636.
                            IF t1636 = abap_true.
                              DATA(t1639) = VALUE abap_bool( ).
                              DATA(t1640) = VALUE abap_bool( ).
                              DATA(t1642) = |--|.
                              DATA(t1643) = strlen( t1620 ).
                              DATA t1644 TYPE i.
                              DATA(t1645) = VALUE i( ).
                              DATA(t1646) = VALUE string( ).
                              t1644 = strlen( t1642 ).
                              IF t1644 = 0.
                                t1640 = abap_true.
                              ELSEIF t1644 <= t1643.
                                t1645 = 0.
                                t1646 = t1620+t1645(t1644).
                                IF t1646 = t1642.
                                  t1640 = abap_true.
                                ENDIF.
                              ENDIF.
                              t1639 = t1640.
                              IF t1640 = abap_false.
                                DATA(t1647) = VALUE abap_bool( ).
                                DATA(t1649) = |//|.
                                DATA(t1650) = strlen( t1620 ).
                                DATA t1651 TYPE i.
                                DATA(t1652) = VALUE i( ).
                                DATA(t1653) = VALUE string( ).
                                t1651 = strlen( t1649 ).
                                IF t1651 = 0.
                                  t1647 = abap_true.
                                ELSEIF t1651 <= t1650.
                                  t1652 = 0.
                                  t1653 = t1620+t1652(t1651).
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
                              t1654 = t1618->result_9728.
                              DATA t1656 TYPE REF TO zcl_lnt_lx_comment.
                              DATA t1659 TYPE f.
                              DATA t1661 TYPE f.
                              t1661 = strlen( t1620 ).
                              t1659 = t1624 - t1661.
                              DATA(t1665) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                              t1665->has = abap_true.
                              t1665->value = t1659.
                              t1656 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t1622 i_col = t1665 ) i_str = t1620 ).
                              t1654->load( ).
                              APPEND t1656 TO t1654->items.
                              t1654->save( ).
                            ELSE.
                              DATA t1667 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                              t1667 = t1618->result_9728.
                              DATA t1669 TYPE REF TO zcl_lnt_lx_identifier.
                              DATA(t1673) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                              t1673->has = abap_true.
                              t1673->value = t1624.
                              t1669 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t1622 i_col = t1673 ) i_str = t1620 ).
                              t1667->load( ).
                              APPEND t1669 TO t1667->items.
                              t1667->save( ).
                            ENDIF.
                          ENDIF.
                          t1617 = ||.
                        ELSE.
                          IF xsdbool( t32 = |\}| ) = abap_true.
                            DATA t1680 TYPE REF TO zcl_lnt_cd_result.
                            t1680 = t2.
                            DATA t1682 TYPE string.
                            t1682 = t10.
                            DATA t1684 TYPE f.
                            t1684 = t6.
                            DATA t1686 TYPE f.
                            t1686 = t8.
                            DATA t1689 TYPE f.
                            t1689 = t4.
                            IF xsdbool( strlen( t1682 ) > 0 ) = abap_true.
                              DATA t1697 TYPE abap_bool.
                              DATA t1698 TYPE abap_bool.
                              t1698 = xsdbool( t1689 = CONV f( 3 ) ).
                              t1697 = t1698.
                              IF t1698 = abap_true.
                                DATA(t1701) = VALUE abap_bool( ).
                                DATA(t1702) = VALUE abap_bool( ).
                                DATA(t1704) = |--|.
                                DATA(t1705) = strlen( t1682 ).
                                DATA t1706 TYPE i.
                                DATA(t1707) = VALUE i( ).
                                DATA(t1708) = VALUE string( ).
                                t1706 = strlen( t1704 ).
                                IF t1706 = 0.
                                  t1702 = abap_true.
                                ELSEIF t1706 <= t1705.
                                  t1707 = 0.
                                  t1708 = t1682+t1707(t1706).
                                  IF t1708 = t1704.
                                    t1702 = abap_true.
                                  ENDIF.
                                ENDIF.
                                t1701 = t1702.
                                IF t1702 = abap_false.
                                  DATA(t1709) = VALUE abap_bool( ).
                                  DATA(t1711) = |//|.
                                  DATA(t1712) = strlen( t1682 ).
                                  DATA t1713 TYPE i.
                                  DATA(t1714) = VALUE i( ).
                                  DATA(t1715) = VALUE string( ).
                                  t1713 = strlen( t1711 ).
                                  IF t1713 = 0.
                                    t1709 = abap_true.
                                  ELSEIF t1713 <= t1712.
                                    t1714 = 0.
                                    t1715 = t1682+t1714(t1713).
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
                                t1716 = t1680->result_9728.
                                DATA t1718 TYPE REF TO zcl_lnt_lx_comment.
                                DATA t1721 TYPE f.
                                DATA t1723 TYPE f.
                                t1723 = strlen( t1682 ).
                                t1721 = t1686 - t1723.
                                DATA(t1727) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                t1727->has = abap_true.
                                t1727->value = t1721.
                                t1718 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t1684 i_col = t1727 ) i_str = t1682 ).
                                t1716->load( ).
                                APPEND t1718 TO t1716->items.
                                t1716->save( ).
                              ELSE.
                                DATA t1729 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                t1729 = t1680->result_9728.
                                DATA t1731 TYPE REF TO zcl_lnt_lx_identifier.
                                DATA(t1735) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                t1735->has = abap_true.
                                t1735->value = t1686.
                                t1731 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t1684 i_col = t1735 ) i_str = t1682 ).
                                t1729->load( ).
                                APPEND t1731 TO t1729->items.
                                t1729->save( ).
                              ENDIF.
                            ENDIF.
                            t10 = ||.
                            DATA(t1738) = VALUE string( ).
                            DATA t1739 TYPE REF TO zcl_lnt_cd_result.
                            t1739 = t2.
                            DATA t1741 TYPE string.
                            t1741 = t32.
                            DATA t1743 TYPE f.
                            t1743 = t6.
                            DATA t1745 TYPE f.
                            t1745 = t8.
                            DATA t1748 TYPE f.
                            t1748 = t4.
                            IF xsdbool( strlen( t1741 ) > 0 ) = abap_true.
                              DATA t1756 TYPE abap_bool.
                              DATA t1757 TYPE abap_bool.
                              t1757 = xsdbool( t1748 = CONV f( 3 ) ).
                              t1756 = t1757.
                              IF t1757 = abap_true.
                                DATA(t1760) = VALUE abap_bool( ).
                                DATA(t1761) = VALUE abap_bool( ).
                                DATA(t1763) = |--|.
                                DATA(t1764) = strlen( t1741 ).
                                DATA t1765 TYPE i.
                                DATA(t1766) = VALUE i( ).
                                DATA(t1767) = VALUE string( ).
                                t1765 = strlen( t1763 ).
                                IF t1765 = 0.
                                  t1761 = abap_true.
                                ELSEIF t1765 <= t1764.
                                  t1766 = 0.
                                  t1767 = t1741+t1766(t1765).
                                  IF t1767 = t1763.
                                    t1761 = abap_true.
                                  ENDIF.
                                ENDIF.
                                t1760 = t1761.
                                IF t1761 = abap_false.
                                  DATA(t1768) = VALUE abap_bool( ).
                                  DATA(t1770) = |//|.
                                  DATA(t1771) = strlen( t1741 ).
                                  DATA t1772 TYPE i.
                                  DATA(t1773) = VALUE i( ).
                                  DATA(t1774) = VALUE string( ).
                                  t1772 = strlen( t1770 ).
                                  IF t1772 = 0.
                                    t1768 = abap_true.
                                  ELSEIF t1772 <= t1771.
                                    t1773 = 0.
                                    t1774 = t1741+t1773(t1772).
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
                                t1775 = t1739->result_9728.
                                DATA t1777 TYPE REF TO zcl_lnt_lx_comment.
                                DATA t1780 TYPE f.
                                DATA t1782 TYPE f.
                                t1782 = strlen( t1741 ).
                                t1780 = t1745 - t1782.
                                DATA(t1786) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                t1786->has = abap_true.
                                t1786->value = t1780.
                                t1777 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t1743 i_col = t1786 ) i_str = t1741 ).
                                t1775->load( ).
                                APPEND t1777 TO t1775->items.
                                t1775->save( ).
                              ELSE.
                                DATA t1788 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                t1788 = t1739->result_9728.
                                DATA t1790 TYPE REF TO zcl_lnt_lx_identifier.
                                DATA(t1794) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                t1794->has = abap_true.
                                t1794->value = t1745.
                                t1790 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t1743 i_col = t1794 ) i_str = t1741 ).
                                t1788->load( ).
                                APPEND t1790 TO t1788->items.
                                t1788->save( ).
                              ENDIF.
                            ENDIF.
                            t1738 = ||.
                          ELSE.
                            IF xsdbool( t32 = |(| ) = abap_true.
                              DATA t1801 TYPE REF TO zcl_lnt_cd_result.
                              t1801 = t2.
                              DATA t1803 TYPE string.
                              t1803 = t10.
                              DATA t1805 TYPE f.
                              t1805 = t6.
                              DATA t1807 TYPE f.
                              t1807 = t8.
                              DATA t1810 TYPE f.
                              t1810 = t4.
                              IF xsdbool( strlen( t1803 ) > 0 ) = abap_true.
                                DATA t1818 TYPE abap_bool.
                                DATA t1819 TYPE abap_bool.
                                t1819 = xsdbool( t1810 = CONV f( 3 ) ).
                                t1818 = t1819.
                                IF t1819 = abap_true.
                                  DATA(t1822) = VALUE abap_bool( ).
                                  DATA(t1823) = VALUE abap_bool( ).
                                  DATA(t1825) = |--|.
                                  DATA(t1826) = strlen( t1803 ).
                                  DATA t1827 TYPE i.
                                  DATA(t1828) = VALUE i( ).
                                  DATA(t1829) = VALUE string( ).
                                  t1827 = strlen( t1825 ).
                                  IF t1827 = 0.
                                    t1823 = abap_true.
                                  ELSEIF t1827 <= t1826.
                                    t1828 = 0.
                                    t1829 = t1803+t1828(t1827).
                                    IF t1829 = t1825.
                                      t1823 = abap_true.
                                    ENDIF.
                                  ENDIF.
                                  t1822 = t1823.
                                  IF t1823 = abap_false.
                                    DATA(t1830) = VALUE abap_bool( ).
                                    DATA(t1832) = |//|.
                                    DATA(t1833) = strlen( t1803 ).
                                    DATA t1834 TYPE i.
                                    DATA(t1835) = VALUE i( ).
                                    DATA(t1836) = VALUE string( ).
                                    t1834 = strlen( t1832 ).
                                    IF t1834 = 0.
                                      t1830 = abap_true.
                                    ELSEIF t1834 <= t1833.
                                      t1835 = 0.
                                      t1836 = t1803+t1835(t1834).
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
                                  t1837 = t1801->result_9728.
                                  DATA t1839 TYPE REF TO zcl_lnt_lx_comment.
                                  DATA t1842 TYPE f.
                                  DATA t1844 TYPE f.
                                  t1844 = strlen( t1803 ).
                                  t1842 = t1807 - t1844.
                                  DATA(t1848) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                  t1848->has = abap_true.
                                  t1848->value = t1842.
                                  t1839 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t1805 i_col = t1848 ) i_str = t1803 ).
                                  t1837->load( ).
                                  APPEND t1839 TO t1837->items.
                                  t1837->save( ).
                                ELSE.
                                  DATA t1850 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                  t1850 = t1801->result_9728.
                                  DATA t1852 TYPE REF TO zcl_lnt_lx_identifier.
                                  DATA(t1856) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                  t1856->has = abap_true.
                                  t1856->value = t1807.
                                  t1852 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t1805 i_col = t1856 ) i_str = t1803 ).
                                  t1850->load( ).
                                  APPEND t1852 TO t1850->items.
                                  t1850->save( ).
                                ENDIF.
                              ENDIF.
                              t10 = ||.
                              DATA(t1859) = VALUE string( ).
                              DATA t1860 TYPE REF TO zcl_lnt_cd_result.
                              t1860 = t2.
                              DATA t1862 TYPE string.
                              t1862 = t32.
                              DATA t1864 TYPE f.
                              t1864 = t6.
                              DATA t1866 TYPE f.
                              t1866 = t8.
                              DATA t1869 TYPE f.
                              t1869 = t4.
                              IF xsdbool( strlen( t1862 ) > 0 ) = abap_true.
                                DATA t1877 TYPE abap_bool.
                                DATA t1878 TYPE abap_bool.
                                t1878 = xsdbool( t1869 = CONV f( 3 ) ).
                                t1877 = t1878.
                                IF t1878 = abap_true.
                                  DATA(t1881) = VALUE abap_bool( ).
                                  DATA(t1882) = VALUE abap_bool( ).
                                  DATA(t1884) = |--|.
                                  DATA(t1885) = strlen( t1862 ).
                                  DATA t1886 TYPE i.
                                  DATA(t1887) = VALUE i( ).
                                  DATA(t1888) = VALUE string( ).
                                  t1886 = strlen( t1884 ).
                                  IF t1886 = 0.
                                    t1882 = abap_true.
                                  ELSEIF t1886 <= t1885.
                                    t1887 = 0.
                                    t1888 = t1862+t1887(t1886).
                                    IF t1888 = t1884.
                                      t1882 = abap_true.
                                    ENDIF.
                                  ENDIF.
                                  t1881 = t1882.
                                  IF t1882 = abap_false.
                                    DATA(t1889) = VALUE abap_bool( ).
                                    DATA(t1891) = |//|.
                                    DATA(t1892) = strlen( t1862 ).
                                    DATA t1893 TYPE i.
                                    DATA(t1894) = VALUE i( ).
                                    DATA(t1895) = VALUE string( ).
                                    t1893 = strlen( t1891 ).
                                    IF t1893 = 0.
                                      t1889 = abap_true.
                                    ELSEIF t1893 <= t1892.
                                      t1894 = 0.
                                      t1895 = t1862+t1894(t1893).
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
                                  t1896 = t1860->result_9728.
                                  DATA t1898 TYPE REF TO zcl_lnt_lx_comment.
                                  DATA t1901 TYPE f.
                                  DATA t1903 TYPE f.
                                  t1903 = strlen( t1862 ).
                                  t1901 = t1866 - t1903.
                                  DATA(t1907) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                  t1907->has = abap_true.
                                  t1907->value = t1901.
                                  t1898 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t1864 i_col = t1907 ) i_str = t1862 ).
                                  t1896->load( ).
                                  APPEND t1898 TO t1896->items.
                                  t1896->save( ).
                                ELSE.
                                  DATA t1909 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                  t1909 = t1860->result_9728.
                                  DATA t1911 TYPE REF TO zcl_lnt_lx_identifier.
                                  DATA(t1915) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                  t1915->has = abap_true.
                                  t1915->value = t1866.
                                  t1911 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t1864 i_col = t1915 ) i_str = t1862 ).
                                  t1909->load( ).
                                  APPEND t1911 TO t1909->items.
                                  t1909->save( ).
                                ENDIF.
                              ENDIF.
                              t1859 = ||.
                            ELSE.
                              IF xsdbool( t32 = |)| ) = abap_true.
                                DATA t1922 TYPE REF TO zcl_lnt_cd_result.
                                t1922 = t2.
                                DATA t1924 TYPE string.
                                t1924 = t10.
                                DATA t1926 TYPE f.
                                t1926 = t6.
                                DATA t1928 TYPE f.
                                t1928 = t8.
                                DATA t1931 TYPE f.
                                t1931 = t4.
                                IF xsdbool( strlen( t1924 ) > 0 ) = abap_true.
                                  DATA t1939 TYPE abap_bool.
                                  DATA t1940 TYPE abap_bool.
                                  t1940 = xsdbool( t1931 = CONV f( 3 ) ).
                                  t1939 = t1940.
                                  IF t1940 = abap_true.
                                    DATA(t1943) = VALUE abap_bool( ).
                                    DATA(t1944) = VALUE abap_bool( ).
                                    DATA(t1946) = |--|.
                                    DATA(t1947) = strlen( t1924 ).
                                    DATA t1948 TYPE i.
                                    DATA(t1949) = VALUE i( ).
                                    DATA(t1950) = VALUE string( ).
                                    t1948 = strlen( t1946 ).
                                    IF t1948 = 0.
                                      t1944 = abap_true.
                                    ELSEIF t1948 <= t1947.
                                      t1949 = 0.
                                      t1950 = t1924+t1949(t1948).
                                      IF t1950 = t1946.
                                        t1944 = abap_true.
                                      ENDIF.
                                    ENDIF.
                                    t1943 = t1944.
                                    IF t1944 = abap_false.
                                      DATA(t1951) = VALUE abap_bool( ).
                                      DATA(t1953) = |//|.
                                      DATA(t1954) = strlen( t1924 ).
                                      DATA t1955 TYPE i.
                                      DATA(t1956) = VALUE i( ).
                                      DATA(t1957) = VALUE string( ).
                                      t1955 = strlen( t1953 ).
                                      IF t1955 = 0.
                                        t1951 = abap_true.
                                      ELSEIF t1955 <= t1954.
                                        t1956 = 0.
                                        t1957 = t1924+t1956(t1955).
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
                                    t1958 = t1922->result_9728.
                                    DATA t1960 TYPE REF TO zcl_lnt_lx_comment.
                                    DATA t1963 TYPE f.
                                    DATA t1965 TYPE f.
                                    t1965 = strlen( t1924 ).
                                    t1963 = t1928 - t1965.
                                    DATA(t1969) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                    t1969->has = abap_true.
                                    t1969->value = t1963.
                                    t1960 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t1926 i_col = t1969 ) i_str = t1924 ).
                                    t1958->load( ).
                                    APPEND t1960 TO t1958->items.
                                    t1958->save( ).
                                  ELSE.
                                    DATA t1971 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                    t1971 = t1922->result_9728.
                                    DATA t1973 TYPE REF TO zcl_lnt_lx_identifier.
                                    DATA(t1977) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                    t1977->has = abap_true.
                                    t1977->value = t1928.
                                    t1973 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t1926 i_col = t1977 ) i_str = t1924 ).
                                    t1971->load( ).
                                    APPEND t1973 TO t1971->items.
                                    t1971->save( ).
                                  ENDIF.
                                ENDIF.
                                t10 = ||.
                                DATA(t1980) = VALUE string( ).
                                DATA t1981 TYPE REF TO zcl_lnt_cd_result.
                                t1981 = t2.
                                DATA t1983 TYPE string.
                                t1983 = t32.
                                DATA t1985 TYPE f.
                                t1985 = t6.
                                DATA t1987 TYPE f.
                                t1987 = t8.
                                DATA t1990 TYPE f.
                                t1990 = t4.
                                IF xsdbool( strlen( t1983 ) > 0 ) = abap_true.
                                  DATA t1998 TYPE abap_bool.
                                  DATA t1999 TYPE abap_bool.
                                  t1999 = xsdbool( t1990 = CONV f( 3 ) ).
                                  t1998 = t1999.
                                  IF t1999 = abap_true.
                                    DATA(t2002) = VALUE abap_bool( ).
                                    DATA(t2003) = VALUE abap_bool( ).
                                    DATA(t2005) = |--|.
                                    DATA(t2006) = strlen( t1983 ).
                                    DATA t2007 TYPE i.
                                    DATA(t2008) = VALUE i( ).
                                    DATA(t2009) = VALUE string( ).
                                    t2007 = strlen( t2005 ).
                                    IF t2007 = 0.
                                      t2003 = abap_true.
                                    ELSEIF t2007 <= t2006.
                                      t2008 = 0.
                                      t2009 = t1983+t2008(t2007).
                                      IF t2009 = t2005.
                                        t2003 = abap_true.
                                      ENDIF.
                                    ENDIF.
                                    t2002 = t2003.
                                    IF t2003 = abap_false.
                                      DATA(t2010) = VALUE abap_bool( ).
                                      DATA(t2012) = |//|.
                                      DATA(t2013) = strlen( t1983 ).
                                      DATA t2014 TYPE i.
                                      DATA(t2015) = VALUE i( ).
                                      DATA(t2016) = VALUE string( ).
                                      t2014 = strlen( t2012 ).
                                      IF t2014 = 0.
                                        t2010 = abap_true.
                                      ELSEIF t2014 <= t2013.
                                        t2015 = 0.
                                        t2016 = t1983+t2015(t2014).
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
                                    t2017 = t1981->result_9728.
                                    DATA t2019 TYPE REF TO zcl_lnt_lx_comment.
                                    DATA t2022 TYPE f.
                                    DATA t2024 TYPE f.
                                    t2024 = strlen( t1983 ).
                                    t2022 = t1987 - t2024.
                                    DATA(t2028) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                    t2028->has = abap_true.
                                    t2028->value = t2022.
                                    t2019 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t1985 i_col = t2028 ) i_str = t1983 ).
                                    t2017->load( ).
                                    APPEND t2019 TO t2017->items.
                                    t2017->save( ).
                                  ELSE.
                                    DATA t2030 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                    t2030 = t1981->result_9728.
                                    DATA t2032 TYPE REF TO zcl_lnt_lx_identifier.
                                    DATA(t2036) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                    t2036->has = abap_true.
                                    t2036->value = t1987.
                                    t2032 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t1985 i_col = t2036 ) i_str = t1983 ).
                                    t2030->load( ).
                                    APPEND t2032 TO t2030->items.
                                    t2030->save( ).
                                  ENDIF.
                                ENDIF.
                                t1980 = ||.
                              ELSE.
                                IF xsdbool( t32 = |[| ) = abap_true.
                                  DATA t2043 TYPE REF TO zcl_lnt_cd_result.
                                  t2043 = t2.
                                  DATA t2045 TYPE string.
                                  t2045 = t10.
                                  DATA t2047 TYPE f.
                                  t2047 = t6.
                                  DATA t2049 TYPE f.
                                  t2049 = t8.
                                  DATA t2052 TYPE f.
                                  t2052 = t4.
                                  IF xsdbool( strlen( t2045 ) > 0 ) = abap_true.
                                    DATA t2060 TYPE abap_bool.
                                    DATA t2061 TYPE abap_bool.
                                    t2061 = xsdbool( t2052 = CONV f( 3 ) ).
                                    t2060 = t2061.
                                    IF t2061 = abap_true.
                                      DATA(t2064) = VALUE abap_bool( ).
                                      DATA(t2065) = VALUE abap_bool( ).
                                      DATA(t2067) = |--|.
                                      DATA(t2068) = strlen( t2045 ).
                                      DATA t2069 TYPE i.
                                      DATA(t2070) = VALUE i( ).
                                      DATA(t2071) = VALUE string( ).
                                      t2069 = strlen( t2067 ).
                                      IF t2069 = 0.
                                        t2065 = abap_true.
                                      ELSEIF t2069 <= t2068.
                                        t2070 = 0.
                                        t2071 = t2045+t2070(t2069).
                                        IF t2071 = t2067.
                                          t2065 = abap_true.
                                        ENDIF.
                                      ENDIF.
                                      t2064 = t2065.
                                      IF t2065 = abap_false.
                                        DATA(t2072) = VALUE abap_bool( ).
                                        DATA(t2074) = |//|.
                                        DATA(t2075) = strlen( t2045 ).
                                        DATA t2076 TYPE i.
                                        DATA(t2077) = VALUE i( ).
                                        DATA(t2078) = VALUE string( ).
                                        t2076 = strlen( t2074 ).
                                        IF t2076 = 0.
                                          t2072 = abap_true.
                                        ELSEIF t2076 <= t2075.
                                          t2077 = 0.
                                          t2078 = t2045+t2077(t2076).
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
                                      t2079 = t2043->result_9728.
                                      DATA t2081 TYPE REF TO zcl_lnt_lx_comment.
                                      DATA t2084 TYPE f.
                                      DATA t2086 TYPE f.
                                      t2086 = strlen( t2045 ).
                                      t2084 = t2049 - t2086.
                                      DATA(t2090) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                      t2090->has = abap_true.
                                      t2090->value = t2084.
                                      t2081 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t2047 i_col = t2090 ) i_str = t2045 ).
                                      t2079->load( ).
                                      APPEND t2081 TO t2079->items.
                                      t2079->save( ).
                                    ELSE.
                                      DATA t2092 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                      t2092 = t2043->result_9728.
                                      DATA t2094 TYPE REF TO zcl_lnt_lx_identifier.
                                      DATA(t2098) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                      t2098->has = abap_true.
                                      t2098->value = t2049.
                                      t2094 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t2047 i_col = t2098 ) i_str = t2045 ).
                                      t2092->load( ).
                                      APPEND t2094 TO t2092->items.
                                      t2092->save( ).
                                    ENDIF.
                                  ENDIF.
                                  t10 = ||.
                                  DATA(t2101) = VALUE string( ).
                                  DATA t2102 TYPE REF TO zcl_lnt_cd_result.
                                  t2102 = t2.
                                  DATA t2104 TYPE string.
                                  t2104 = t32.
                                  DATA t2106 TYPE f.
                                  t2106 = t6.
                                  DATA t2108 TYPE f.
                                  t2108 = t8.
                                  DATA t2111 TYPE f.
                                  t2111 = t4.
                                  IF xsdbool( strlen( t2104 ) > 0 ) = abap_true.
                                    DATA t2119 TYPE abap_bool.
                                    DATA t2120 TYPE abap_bool.
                                    t2120 = xsdbool( t2111 = CONV f( 3 ) ).
                                    t2119 = t2120.
                                    IF t2120 = abap_true.
                                      DATA(t2123) = VALUE abap_bool( ).
                                      DATA(t2124) = VALUE abap_bool( ).
                                      DATA(t2126) = |--|.
                                      DATA(t2127) = strlen( t2104 ).
                                      DATA t2128 TYPE i.
                                      DATA(t2129) = VALUE i( ).
                                      DATA(t2130) = VALUE string( ).
                                      t2128 = strlen( t2126 ).
                                      IF t2128 = 0.
                                        t2124 = abap_true.
                                      ELSEIF t2128 <= t2127.
                                        t2129 = 0.
                                        t2130 = t2104+t2129(t2128).
                                        IF t2130 = t2126.
                                          t2124 = abap_true.
                                        ENDIF.
                                      ENDIF.
                                      t2123 = t2124.
                                      IF t2124 = abap_false.
                                        DATA(t2131) = VALUE abap_bool( ).
                                        DATA(t2133) = |//|.
                                        DATA(t2134) = strlen( t2104 ).
                                        DATA t2135 TYPE i.
                                        DATA(t2136) = VALUE i( ).
                                        DATA(t2137) = VALUE string( ).
                                        t2135 = strlen( t2133 ).
                                        IF t2135 = 0.
                                          t2131 = abap_true.
                                        ELSEIF t2135 <= t2134.
                                          t2136 = 0.
                                          t2137 = t2104+t2136(t2135).
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
                                      t2138 = t2102->result_9728.
                                      DATA t2140 TYPE REF TO zcl_lnt_lx_comment.
                                      DATA t2143 TYPE f.
                                      DATA t2145 TYPE f.
                                      t2145 = strlen( t2104 ).
                                      t2143 = t2108 - t2145.
                                      DATA(t2149) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                      t2149->has = abap_true.
                                      t2149->value = t2143.
                                      t2140 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t2106 i_col = t2149 ) i_str = t2104 ).
                                      t2138->load( ).
                                      APPEND t2140 TO t2138->items.
                                      t2138->save( ).
                                    ELSE.
                                      DATA t2151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                      t2151 = t2102->result_9728.
                                      DATA t2153 TYPE REF TO zcl_lnt_lx_identifier.
                                      DATA(t2157) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                      t2157->has = abap_true.
                                      t2157->value = t2108.
                                      t2153 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t2106 i_col = t2157 ) i_str = t2104 ).
                                      t2151->load( ).
                                      APPEND t2153 TO t2151->items.
                                      t2151->save( ).
                                    ENDIF.
                                  ENDIF.
                                  t2101 = ||.
                                ELSE.
                                  IF xsdbool( t32 = |]| ) = abap_true.
                                    DATA t2164 TYPE REF TO zcl_lnt_cd_result.
                                    t2164 = t2.
                                    DATA t2166 TYPE string.
                                    t2166 = t10.
                                    DATA t2168 TYPE f.
                                    t2168 = t6.
                                    DATA t2170 TYPE f.
                                    t2170 = t8.
                                    DATA t2173 TYPE f.
                                    t2173 = t4.
                                    IF xsdbool( strlen( t2166 ) > 0 ) = abap_true.
                                      DATA t2181 TYPE abap_bool.
                                      DATA t2182 TYPE abap_bool.
                                      t2182 = xsdbool( t2173 = CONV f( 3 ) ).
                                      t2181 = t2182.
                                      IF t2182 = abap_true.
                                        DATA(t2185) = VALUE abap_bool( ).
                                        DATA(t2186) = VALUE abap_bool( ).
                                        DATA(t2188) = |--|.
                                        DATA(t2189) = strlen( t2166 ).
                                        DATA t2190 TYPE i.
                                        DATA(t2191) = VALUE i( ).
                                        DATA(t2192) = VALUE string( ).
                                        t2190 = strlen( t2188 ).
                                        IF t2190 = 0.
                                          t2186 = abap_true.
                                        ELSEIF t2190 <= t2189.
                                          t2191 = 0.
                                          t2192 = t2166+t2191(t2190).
                                          IF t2192 = t2188.
                                            t2186 = abap_true.
                                          ENDIF.
                                        ENDIF.
                                        t2185 = t2186.
                                        IF t2186 = abap_false.
                                          DATA(t2193) = VALUE abap_bool( ).
                                          DATA(t2195) = |//|.
                                          DATA(t2196) = strlen( t2166 ).
                                          DATA t2197 TYPE i.
                                          DATA(t2198) = VALUE i( ).
                                          DATA(t2199) = VALUE string( ).
                                          t2197 = strlen( t2195 ).
                                          IF t2197 = 0.
                                            t2193 = abap_true.
                                          ELSEIF t2197 <= t2196.
                                            t2198 = 0.
                                            t2199 = t2166+t2198(t2197).
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
                                        t2200 = t2164->result_9728.
                                        DATA t2202 TYPE REF TO zcl_lnt_lx_comment.
                                        DATA t2205 TYPE f.
                                        DATA t2207 TYPE f.
                                        t2207 = strlen( t2166 ).
                                        t2205 = t2170 - t2207.
                                        DATA(t2211) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                        t2211->has = abap_true.
                                        t2211->value = t2205.
                                        t2202 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t2168 i_col = t2211 ) i_str = t2166 ).
                                        t2200->load( ).
                                        APPEND t2202 TO t2200->items.
                                        t2200->save( ).
                                      ELSE.
                                        DATA t2213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                        t2213 = t2164->result_9728.
                                        DATA t2215 TYPE REF TO zcl_lnt_lx_identifier.
                                        DATA(t2219) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                        t2219->has = abap_true.
                                        t2219->value = t2170.
                                        t2215 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t2168 i_col = t2219 ) i_str = t2166 ).
                                        t2213->load( ).
                                        APPEND t2215 TO t2213->items.
                                        t2213->save( ).
                                      ENDIF.
                                    ENDIF.
                                    t10 = ||.
                                    DATA(t2222) = VALUE string( ).
                                    DATA t2223 TYPE REF TO zcl_lnt_cd_result.
                                    t2223 = t2.
                                    DATA t2225 TYPE string.
                                    t2225 = t32.
                                    DATA t2227 TYPE f.
                                    t2227 = t6.
                                    DATA t2229 TYPE f.
                                    t2229 = t8.
                                    DATA t2232 TYPE f.
                                    t2232 = t4.
                                    IF xsdbool( strlen( t2225 ) > 0 ) = abap_true.
                                      DATA t2240 TYPE abap_bool.
                                      DATA t2241 TYPE abap_bool.
                                      t2241 = xsdbool( t2232 = CONV f( 3 ) ).
                                      t2240 = t2241.
                                      IF t2241 = abap_true.
                                        DATA(t2244) = VALUE abap_bool( ).
                                        DATA(t2245) = VALUE abap_bool( ).
                                        DATA(t2247) = |--|.
                                        DATA(t2248) = strlen( t2225 ).
                                        DATA t2249 TYPE i.
                                        DATA(t2250) = VALUE i( ).
                                        DATA(t2251) = VALUE string( ).
                                        t2249 = strlen( t2247 ).
                                        IF t2249 = 0.
                                          t2245 = abap_true.
                                        ELSEIF t2249 <= t2248.
                                          t2250 = 0.
                                          t2251 = t2225+t2250(t2249).
                                          IF t2251 = t2247.
                                            t2245 = abap_true.
                                          ENDIF.
                                        ENDIF.
                                        t2244 = t2245.
                                        IF t2245 = abap_false.
                                          DATA(t2252) = VALUE abap_bool( ).
                                          DATA(t2254) = |//|.
                                          DATA(t2255) = strlen( t2225 ).
                                          DATA t2256 TYPE i.
                                          DATA(t2257) = VALUE i( ).
                                          DATA(t2258) = VALUE string( ).
                                          t2256 = strlen( t2254 ).
                                          IF t2256 = 0.
                                            t2252 = abap_true.
                                          ELSEIF t2256 <= t2255.
                                            t2257 = 0.
                                            t2258 = t2225+t2257(t2256).
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
                                        t2259 = t2223->result_9728.
                                        DATA t2261 TYPE REF TO zcl_lnt_lx_comment.
                                        DATA t2264 TYPE f.
                                        DATA t2266 TYPE f.
                                        t2266 = strlen( t2225 ).
                                        t2264 = t2229 - t2266.
                                        DATA(t2270) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                        t2270->has = abap_true.
                                        t2270->value = t2264.
                                        t2261 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t2227 i_col = t2270 ) i_str = t2225 ).
                                        t2259->load( ).
                                        APPEND t2261 TO t2259->items.
                                        t2259->save( ).
                                      ELSE.
                                        DATA t2272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                        t2272 = t2223->result_9728.
                                        DATA t2274 TYPE REF TO zcl_lnt_lx_identifier.
                                        DATA(t2278) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                        t2278->has = abap_true.
                                        t2278->value = t2229.
                                        t2274 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t2227 i_col = t2278 ) i_str = t2225 ).
                                        t2272->load( ).
                                        APPEND t2274 TO t2272->items.
                                        t2272->save( ).
                                      ENDIF.
                                    ENDIF.
                                    t2222 = ||.
                                  ELSE.
                                    IF xsdbool( t32 = |!| ) = abap_true.
                                      DATA t2285 TYPE REF TO zcl_lnt_cd_result.
                                      t2285 = t2.
                                      DATA t2287 TYPE string.
                                      t2287 = t10.
                                      DATA t2289 TYPE f.
                                      t2289 = t6.
                                      DATA t2291 TYPE f.
                                      t2291 = t8.
                                      DATA t2294 TYPE f.
                                      t2294 = t4.
                                      IF xsdbool( strlen( t2287 ) > 0 ) = abap_true.
                                        DATA t2302 TYPE abap_bool.
                                        DATA t2303 TYPE abap_bool.
                                        t2303 = xsdbool( t2294 = CONV f( 3 ) ).
                                        t2302 = t2303.
                                        IF t2303 = abap_true.
                                          DATA(t2306) = VALUE abap_bool( ).
                                          DATA(t2307) = VALUE abap_bool( ).
                                          DATA(t2309) = |--|.
                                          DATA(t2310) = strlen( t2287 ).
                                          DATA t2311 TYPE i.
                                          DATA(t2312) = VALUE i( ).
                                          DATA(t2313) = VALUE string( ).
                                          t2311 = strlen( t2309 ).
                                          IF t2311 = 0.
                                            t2307 = abap_true.
                                          ELSEIF t2311 <= t2310.
                                            t2312 = 0.
                                            t2313 = t2287+t2312(t2311).
                                            IF t2313 = t2309.
                                              t2307 = abap_true.
                                            ENDIF.
                                          ENDIF.
                                          t2306 = t2307.
                                          IF t2307 = abap_false.
                                            DATA(t2314) = VALUE abap_bool( ).
                                            DATA(t2316) = |//|.
                                            DATA(t2317) = strlen( t2287 ).
                                            DATA t2318 TYPE i.
                                            DATA(t2319) = VALUE i( ).
                                            DATA(t2320) = VALUE string( ).
                                            t2318 = strlen( t2316 ).
                                            IF t2318 = 0.
                                              t2314 = abap_true.
                                            ELSEIF t2318 <= t2317.
                                              t2319 = 0.
                                              t2320 = t2287+t2319(t2318).
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
                                          t2321 = t2285->result_9728.
                                          DATA t2323 TYPE REF TO zcl_lnt_lx_comment.
                                          DATA t2326 TYPE f.
                                          DATA t2328 TYPE f.
                                          t2328 = strlen( t2287 ).
                                          t2326 = t2291 - t2328.
                                          DATA(t2332) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                          t2332->has = abap_true.
                                          t2332->value = t2326.
                                          t2323 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t2289 i_col = t2332 ) i_str = t2287 ).
                                          t2321->load( ).
                                          APPEND t2323 TO t2321->items.
                                          t2321->save( ).
                                        ELSE.
                                          DATA t2334 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                          t2334 = t2285->result_9728.
                                          DATA t2336 TYPE REF TO zcl_lnt_lx_identifier.
                                          DATA(t2340) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                          t2340->has = abap_true.
                                          t2340->value = t2291.
                                          t2336 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t2289 i_col = t2340 ) i_str = t2287 ).
                                          t2334->load( ).
                                          APPEND t2336 TO t2334->items.
                                          t2334->save( ).
                                        ENDIF.
                                      ENDIF.
                                      t10 = ||.
                                      DATA(t2343) = VALUE string( ).
                                      DATA t2344 TYPE REF TO zcl_lnt_cd_result.
                                      t2344 = t2.
                                      DATA t2346 TYPE string.
                                      t2346 = t32.
                                      DATA t2348 TYPE f.
                                      t2348 = t6.
                                      DATA t2350 TYPE f.
                                      t2350 = t8.
                                      DATA t2353 TYPE f.
                                      t2353 = t4.
                                      IF xsdbool( strlen( t2346 ) > 0 ) = abap_true.
                                        DATA t2361 TYPE abap_bool.
                                        DATA t2362 TYPE abap_bool.
                                        t2362 = xsdbool( t2353 = CONV f( 3 ) ).
                                        t2361 = t2362.
                                        IF t2362 = abap_true.
                                          DATA(t2365) = VALUE abap_bool( ).
                                          DATA(t2366) = VALUE abap_bool( ).
                                          DATA(t2368) = |--|.
                                          DATA(t2369) = strlen( t2346 ).
                                          DATA t2370 TYPE i.
                                          DATA(t2371) = VALUE i( ).
                                          DATA(t2372) = VALUE string( ).
                                          t2370 = strlen( t2368 ).
                                          IF t2370 = 0.
                                            t2366 = abap_true.
                                          ELSEIF t2370 <= t2369.
                                            t2371 = 0.
                                            t2372 = t2346+t2371(t2370).
                                            IF t2372 = t2368.
                                              t2366 = abap_true.
                                            ENDIF.
                                          ENDIF.
                                          t2365 = t2366.
                                          IF t2366 = abap_false.
                                            DATA(t2373) = VALUE abap_bool( ).
                                            DATA(t2375) = |//|.
                                            DATA(t2376) = strlen( t2346 ).
                                            DATA t2377 TYPE i.
                                            DATA(t2378) = VALUE i( ).
                                            DATA(t2379) = VALUE string( ).
                                            t2377 = strlen( t2375 ).
                                            IF t2377 = 0.
                                              t2373 = abap_true.
                                            ELSEIF t2377 <= t2376.
                                              t2378 = 0.
                                              t2379 = t2346+t2378(t2377).
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
                                          t2380 = t2344->result_9728.
                                          DATA t2382 TYPE REF TO zcl_lnt_lx_comment.
                                          DATA t2385 TYPE f.
                                          DATA t2387 TYPE f.
                                          t2387 = strlen( t2346 ).
                                          t2385 = t2350 - t2387.
                                          DATA(t2391) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                          t2391->has = abap_true.
                                          t2391->value = t2385.
                                          t2382 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t2348 i_col = t2391 ) i_str = t2346 ).
                                          t2380->load( ).
                                          APPEND t2382 TO t2380->items.
                                          t2380->save( ).
                                        ELSE.
                                          DATA t2393 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                          t2393 = t2344->result_9728.
                                          DATA t2395 TYPE REF TO zcl_lnt_lx_identifier.
                                          DATA(t2399) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                          t2399->has = abap_true.
                                          t2399->value = t2350.
                                          t2395 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t2348 i_col = t2399 ) i_str = t2346 ).
                                          t2393->load( ).
                                          APPEND t2395 TO t2393->items.
                                          t2393->save( ).
                                        ENDIF.
                                      ENDIF.
                                      t2343 = ||.
                                    ELSE.
                                      IF xsdbool( t32 = |=| ) = abap_true.
                                        DATA t2406 TYPE REF TO zcl_lnt_cd_result.
                                        t2406 = t2.
                                        DATA t2408 TYPE string.
                                        t2408 = t10.
                                        DATA t2410 TYPE f.
                                        t2410 = t6.
                                        DATA t2412 TYPE f.
                                        t2412 = t8.
                                        DATA t2415 TYPE f.
                                        t2415 = t4.
                                        IF xsdbool( strlen( t2408 ) > 0 ) = abap_true.
                                          DATA t2423 TYPE abap_bool.
                                          DATA t2424 TYPE abap_bool.
                                          t2424 = xsdbool( t2415 = CONV f( 3 ) ).
                                          t2423 = t2424.
                                          IF t2424 = abap_true.
                                            DATA(t2427) = VALUE abap_bool( ).
                                            DATA(t2428) = VALUE abap_bool( ).
                                            DATA(t2430) = |--|.
                                            DATA(t2431) = strlen( t2408 ).
                                            DATA t2432 TYPE i.
                                            DATA(t2433) = VALUE i( ).
                                            DATA(t2434) = VALUE string( ).
                                            t2432 = strlen( t2430 ).
                                            IF t2432 = 0.
                                              t2428 = abap_true.
                                            ELSEIF t2432 <= t2431.
                                              t2433 = 0.
                                              t2434 = t2408+t2433(t2432).
                                              IF t2434 = t2430.
                                                t2428 = abap_true.
                                              ENDIF.
                                            ENDIF.
                                            t2427 = t2428.
                                            IF t2428 = abap_false.
                                              DATA(t2435) = VALUE abap_bool( ).
                                              DATA(t2437) = |//|.
                                              DATA(t2438) = strlen( t2408 ).
                                              DATA t2439 TYPE i.
                                              DATA(t2440) = VALUE i( ).
                                              DATA(t2441) = VALUE string( ).
                                              t2439 = strlen( t2437 ).
                                              IF t2439 = 0.
                                                t2435 = abap_true.
                                              ELSEIF t2439 <= t2438.
                                                t2440 = 0.
                                                t2441 = t2408+t2440(t2439).
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
                                            t2442 = t2406->result_9728.
                                            DATA t2444 TYPE REF TO zcl_lnt_lx_comment.
                                            DATA t2447 TYPE f.
                                            DATA t2449 TYPE f.
                                            t2449 = strlen( t2408 ).
                                            t2447 = t2412 - t2449.
                                            DATA(t2453) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                            t2453->has = abap_true.
                                            t2453->value = t2447.
                                            t2444 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t2410 i_col = t2453 ) i_str = t2408 ).
                                            t2442->load( ).
                                            APPEND t2444 TO t2442->items.
                                            t2442->save( ).
                                          ELSE.
                                            DATA t2455 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                            t2455 = t2406->result_9728.
                                            DATA t2457 TYPE REF TO zcl_lnt_lx_identifier.
                                            DATA(t2461) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                            t2461->has = abap_true.
                                            t2461->value = t2412.
                                            t2457 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t2410 i_col = t2461 ) i_str = t2408 ).
                                            t2455->load( ).
                                            APPEND t2457 TO t2455->items.
                                            t2455->save( ).
                                          ENDIF.
                                        ENDIF.
                                        t10 = ||.
                                        DATA(t2464) = VALUE string( ).
                                        DATA t2465 TYPE REF TO zcl_lnt_cd_result.
                                        t2465 = t2.
                                        DATA t2467 TYPE string.
                                        t2467 = t32.
                                        DATA t2469 TYPE f.
                                        t2469 = t6.
                                        DATA t2471 TYPE f.
                                        t2471 = t8.
                                        DATA t2474 TYPE f.
                                        t2474 = t4.
                                        IF xsdbool( strlen( t2467 ) > 0 ) = abap_true.
                                          DATA t2482 TYPE abap_bool.
                                          DATA t2483 TYPE abap_bool.
                                          t2483 = xsdbool( t2474 = CONV f( 3 ) ).
                                          t2482 = t2483.
                                          IF t2483 = abap_true.
                                            DATA(t2486) = VALUE abap_bool( ).
                                            DATA(t2487) = VALUE abap_bool( ).
                                            DATA(t2489) = |--|.
                                            DATA(t2490) = strlen( t2467 ).
                                            DATA t2491 TYPE i.
                                            DATA(t2492) = VALUE i( ).
                                            DATA(t2493) = VALUE string( ).
                                            t2491 = strlen( t2489 ).
                                            IF t2491 = 0.
                                              t2487 = abap_true.
                                            ELSEIF t2491 <= t2490.
                                              t2492 = 0.
                                              t2493 = t2467+t2492(t2491).
                                              IF t2493 = t2489.
                                                t2487 = abap_true.
                                              ENDIF.
                                            ENDIF.
                                            t2486 = t2487.
                                            IF t2487 = abap_false.
                                              DATA(t2494) = VALUE abap_bool( ).
                                              DATA(t2496) = |//|.
                                              DATA(t2497) = strlen( t2467 ).
                                              DATA t2498 TYPE i.
                                              DATA(t2499) = VALUE i( ).
                                              DATA(t2500) = VALUE string( ).
                                              t2498 = strlen( t2496 ).
                                              IF t2498 = 0.
                                                t2494 = abap_true.
                                              ELSEIF t2498 <= t2497.
                                                t2499 = 0.
                                                t2500 = t2467+t2499(t2498).
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
                                            t2501 = t2465->result_9728.
                                            DATA t2503 TYPE REF TO zcl_lnt_lx_comment.
                                            DATA t2506 TYPE f.
                                            DATA t2508 TYPE f.
                                            t2508 = strlen( t2467 ).
                                            t2506 = t2471 - t2508.
                                            DATA(t2512) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                            t2512->has = abap_true.
                                            t2512->value = t2506.
                                            t2503 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t2469 i_col = t2512 ) i_str = t2467 ).
                                            t2501->load( ).
                                            APPEND t2503 TO t2501->items.
                                            t2501->save( ).
                                          ELSE.
                                            DATA t2514 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                            t2514 = t2465->result_9728.
                                            DATA t2516 TYPE REF TO zcl_lnt_lx_identifier.
                                            DATA(t2520) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                            t2520->has = abap_true.
                                            t2520->value = t2471.
                                            t2516 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t2469 i_col = t2520 ) i_str = t2467 ).
                                            t2514->load( ).
                                            APPEND t2516 TO t2514->items.
                                            t2514->save( ).
                                          ENDIF.
                                        ENDIF.
                                        t2464 = ||.
                                      ELSE.
                                        IF xsdbool( t32 = |<| ) = abap_true.
                                          DATA t2527 TYPE REF TO zcl_lnt_cd_result.
                                          t2527 = t2.
                                          DATA t2529 TYPE string.
                                          t2529 = t10.
                                          DATA t2531 TYPE f.
                                          t2531 = t6.
                                          DATA t2533 TYPE f.
                                          t2533 = t8.
                                          DATA t2536 TYPE f.
                                          t2536 = t4.
                                          IF xsdbool( strlen( t2529 ) > 0 ) = abap_true.
                                            DATA t2544 TYPE abap_bool.
                                            DATA t2545 TYPE abap_bool.
                                            t2545 = xsdbool( t2536 = CONV f( 3 ) ).
                                            t2544 = t2545.
                                            IF t2545 = abap_true.
                                              DATA(t2548) = VALUE abap_bool( ).
                                              DATA(t2549) = VALUE abap_bool( ).
                                              DATA(t2551) = |--|.
                                              DATA(t2552) = strlen( t2529 ).
                                              DATA t2553 TYPE i.
                                              DATA(t2554) = VALUE i( ).
                                              DATA(t2555) = VALUE string( ).
                                              t2553 = strlen( t2551 ).
                                              IF t2553 = 0.
                                                t2549 = abap_true.
                                              ELSEIF t2553 <= t2552.
                                                t2554 = 0.
                                                t2555 = t2529+t2554(t2553).
                                                IF t2555 = t2551.
                                                  t2549 = abap_true.
                                                ENDIF.
                                              ENDIF.
                                              t2548 = t2549.
                                              IF t2549 = abap_false.
                                                DATA(t2556) = VALUE abap_bool( ).
                                                DATA(t2558) = |//|.
                                                DATA(t2559) = strlen( t2529 ).
                                                DATA t2560 TYPE i.
                                                DATA(t2561) = VALUE i( ).
                                                DATA(t2562) = VALUE string( ).
                                                t2560 = strlen( t2558 ).
                                                IF t2560 = 0.
                                                  t2556 = abap_true.
                                                ELSEIF t2560 <= t2559.
                                                  t2561 = 0.
                                                  t2562 = t2529+t2561(t2560).
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
                                              t2563 = t2527->result_9728.
                                              DATA t2565 TYPE REF TO zcl_lnt_lx_comment.
                                              DATA t2568 TYPE f.
                                              DATA t2570 TYPE f.
                                              t2570 = strlen( t2529 ).
                                              t2568 = t2533 - t2570.
                                              DATA(t2574) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                              t2574->has = abap_true.
                                              t2574->value = t2568.
                                              t2565 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t2531 i_col = t2574 ) i_str = t2529 ).
                                              t2563->load( ).
                                              APPEND t2565 TO t2563->items.
                                              t2563->save( ).
                                            ELSE.
                                              DATA t2576 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                              t2576 = t2527->result_9728.
                                              DATA t2578 TYPE REF TO zcl_lnt_lx_identifier.
                                              DATA(t2582) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                              t2582->has = abap_true.
                                              t2582->value = t2533.
                                              t2578 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t2531 i_col = t2582 ) i_str = t2529 ).
                                              t2576->load( ).
                                              APPEND t2578 TO t2576->items.
                                              t2576->save( ).
                                            ENDIF.
                                          ENDIF.
                                          t10 = ||.
                                          DATA(t2585) = VALUE string( ).
                                          DATA t2586 TYPE REF TO zcl_lnt_cd_result.
                                          t2586 = t2.
                                          DATA t2588 TYPE string.
                                          t2588 = t32.
                                          DATA t2590 TYPE f.
                                          t2590 = t6.
                                          DATA t2592 TYPE f.
                                          t2592 = t8.
                                          DATA t2595 TYPE f.
                                          t2595 = t4.
                                          IF xsdbool( strlen( t2588 ) > 0 ) = abap_true.
                                            DATA t2603 TYPE abap_bool.
                                            DATA t2604 TYPE abap_bool.
                                            t2604 = xsdbool( t2595 = CONV f( 3 ) ).
                                            t2603 = t2604.
                                            IF t2604 = abap_true.
                                              DATA(t2607) = VALUE abap_bool( ).
                                              DATA(t2608) = VALUE abap_bool( ).
                                              DATA(t2610) = |--|.
                                              DATA(t2611) = strlen( t2588 ).
                                              DATA t2612 TYPE i.
                                              DATA(t2613) = VALUE i( ).
                                              DATA(t2614) = VALUE string( ).
                                              t2612 = strlen( t2610 ).
                                              IF t2612 = 0.
                                                t2608 = abap_true.
                                              ELSEIF t2612 <= t2611.
                                                t2613 = 0.
                                                t2614 = t2588+t2613(t2612).
                                                IF t2614 = t2610.
                                                  t2608 = abap_true.
                                                ENDIF.
                                              ENDIF.
                                              t2607 = t2608.
                                              IF t2608 = abap_false.
                                                DATA(t2615) = VALUE abap_bool( ).
                                                DATA(t2617) = |//|.
                                                DATA(t2618) = strlen( t2588 ).
                                                DATA t2619 TYPE i.
                                                DATA(t2620) = VALUE i( ).
                                                DATA(t2621) = VALUE string( ).
                                                t2619 = strlen( t2617 ).
                                                IF t2619 = 0.
                                                  t2615 = abap_true.
                                                ELSEIF t2619 <= t2618.
                                                  t2620 = 0.
                                                  t2621 = t2588+t2620(t2619).
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
                                              t2622 = t2586->result_9728.
                                              DATA t2624 TYPE REF TO zcl_lnt_lx_comment.
                                              DATA t2627 TYPE f.
                                              DATA t2629 TYPE f.
                                              t2629 = strlen( t2588 ).
                                              t2627 = t2592 - t2629.
                                              DATA(t2633) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                              t2633->has = abap_true.
                                              t2633->value = t2627.
                                              t2624 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t2590 i_col = t2633 ) i_str = t2588 ).
                                              t2622->load( ).
                                              APPEND t2624 TO t2622->items.
                                              t2622->save( ).
                                            ELSE.
                                              DATA t2635 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                              t2635 = t2586->result_9728.
                                              DATA t2637 TYPE REF TO zcl_lnt_lx_identifier.
                                              DATA(t2641) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                              t2641->has = abap_true.
                                              t2641->value = t2592.
                                              t2637 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t2590 i_col = t2641 ) i_str = t2588 ).
                                              t2635->load( ).
                                              APPEND t2637 TO t2635->items.
                                              t2635->save( ).
                                            ENDIF.
                                          ENDIF.
                                          t2585 = ||.
                                        ELSE.
                                          IF xsdbool( t32 = |>| ) = abap_true.
                                            DATA t2648 TYPE REF TO zcl_lnt_cd_result.
                                            t2648 = t2.
                                            DATA t2650 TYPE string.
                                            t2650 = t10.
                                            DATA t2652 TYPE f.
                                            t2652 = t6.
                                            DATA t2654 TYPE f.
                                            t2654 = t8.
                                            DATA t2657 TYPE f.
                                            t2657 = t4.
                                            IF xsdbool( strlen( t2650 ) > 0 ) = abap_true.
                                              DATA t2665 TYPE abap_bool.
                                              DATA t2666 TYPE abap_bool.
                                              t2666 = xsdbool( t2657 = CONV f( 3 ) ).
                                              t2665 = t2666.
                                              IF t2666 = abap_true.
                                                DATA(t2669) = VALUE abap_bool( ).
                                                DATA(t2670) = VALUE abap_bool( ).
                                                DATA(t2672) = |--|.
                                                DATA(t2673) = strlen( t2650 ).
                                                DATA t2674 TYPE i.
                                                DATA(t2675) = VALUE i( ).
                                                DATA(t2676) = VALUE string( ).
                                                t2674 = strlen( t2672 ).
                                                IF t2674 = 0.
                                                  t2670 = abap_true.
                                                ELSEIF t2674 <= t2673.
                                                  t2675 = 0.
                                                  t2676 = t2650+t2675(t2674).
                                                  IF t2676 = t2672.
                                                    t2670 = abap_true.
                                                  ENDIF.
                                                ENDIF.
                                                t2669 = t2670.
                                                IF t2670 = abap_false.
                                                  DATA(t2677) = VALUE abap_bool( ).
                                                  DATA(t2679) = |//|.
                                                  DATA(t2680) = strlen( t2650 ).
                                                  DATA t2681 TYPE i.
                                                  DATA(t2682) = VALUE i( ).
                                                  DATA(t2683) = VALUE string( ).
                                                  t2681 = strlen( t2679 ).
                                                  IF t2681 = 0.
                                                    t2677 = abap_true.
                                                  ELSEIF t2681 <= t2680.
                                                    t2682 = 0.
                                                    t2683 = t2650+t2682(t2681).
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
                                                t2684 = t2648->result_9728.
                                                DATA t2686 TYPE REF TO zcl_lnt_lx_comment.
                                                DATA t2689 TYPE f.
                                                DATA t2691 TYPE f.
                                                t2691 = strlen( t2650 ).
                                                t2689 = t2654 - t2691.
                                                DATA(t2695) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                t2695->has = abap_true.
                                                t2695->value = t2689.
                                                t2686 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t2652 i_col = t2695 ) i_str = t2650 ).
                                                t2684->load( ).
                                                APPEND t2686 TO t2684->items.
                                                t2684->save( ).
                                              ELSE.
                                                DATA t2697 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                t2697 = t2648->result_9728.
                                                DATA t2699 TYPE REF TO zcl_lnt_lx_identifier.
                                                DATA(t2703) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                t2703->has = abap_true.
                                                t2703->value = t2654.
                                                t2699 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t2652 i_col = t2703 ) i_str = t2650 ).
                                                t2697->load( ).
                                                APPEND t2699 TO t2697->items.
                                                t2697->save( ).
                                              ENDIF.
                                            ENDIF.
                                            t10 = ||.
                                            DATA(t2706) = VALUE string( ).
                                            DATA t2707 TYPE REF TO zcl_lnt_cd_result.
                                            t2707 = t2.
                                            DATA t2709 TYPE string.
                                            t2709 = t32.
                                            DATA t2711 TYPE f.
                                            t2711 = t6.
                                            DATA t2713 TYPE f.
                                            t2713 = t8.
                                            DATA t2716 TYPE f.
                                            t2716 = t4.
                                            IF xsdbool( strlen( t2709 ) > 0 ) = abap_true.
                                              DATA t2724 TYPE abap_bool.
                                              DATA t2725 TYPE abap_bool.
                                              t2725 = xsdbool( t2716 = CONV f( 3 ) ).
                                              t2724 = t2725.
                                              IF t2725 = abap_true.
                                                DATA(t2728) = VALUE abap_bool( ).
                                                DATA(t2729) = VALUE abap_bool( ).
                                                DATA(t2731) = |--|.
                                                DATA(t2732) = strlen( t2709 ).
                                                DATA t2733 TYPE i.
                                                DATA(t2734) = VALUE i( ).
                                                DATA(t2735) = VALUE string( ).
                                                t2733 = strlen( t2731 ).
                                                IF t2733 = 0.
                                                  t2729 = abap_true.
                                                ELSEIF t2733 <= t2732.
                                                  t2734 = 0.
                                                  t2735 = t2709+t2734(t2733).
                                                  IF t2735 = t2731.
                                                    t2729 = abap_true.
                                                  ENDIF.
                                                ENDIF.
                                                t2728 = t2729.
                                                IF t2729 = abap_false.
                                                  DATA(t2736) = VALUE abap_bool( ).
                                                  DATA(t2738) = |//|.
                                                  DATA(t2739) = strlen( t2709 ).
                                                  DATA t2740 TYPE i.
                                                  DATA(t2741) = VALUE i( ).
                                                  DATA(t2742) = VALUE string( ).
                                                  t2740 = strlen( t2738 ).
                                                  IF t2740 = 0.
                                                    t2736 = abap_true.
                                                  ELSEIF t2740 <= t2739.
                                                    t2741 = 0.
                                                    t2742 = t2709+t2741(t2740).
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
                                                t2743 = t2707->result_9728.
                                                DATA t2745 TYPE REF TO zcl_lnt_lx_comment.
                                                DATA t2748 TYPE f.
                                                DATA t2750 TYPE f.
                                                t2750 = strlen( t2709 ).
                                                t2748 = t2713 - t2750.
                                                DATA(t2754) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                t2754->has = abap_true.
                                                t2754->value = t2748.
                                                t2745 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t2711 i_col = t2754 ) i_str = t2709 ).
                                                t2743->load( ).
                                                APPEND t2745 TO t2743->items.
                                                t2743->save( ).
                                              ELSE.
                                                DATA t2756 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                t2756 = t2707->result_9728.
                                                DATA t2758 TYPE REF TO zcl_lnt_lx_identifier.
                                                DATA(t2762) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                t2762->has = abap_true.
                                                t2762->value = t2713.
                                                t2758 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t2711 i_col = t2762 ) i_str = t2709 ).
                                                t2756->load( ).
                                                APPEND t2758 TO t2756->items.
                                                t2756->save( ).
                                              ENDIF.
                                            ENDIF.
                                            t2706 = ||.
                                          ELSE.
                                            IF xsdbool( t32 = |+| ) = abap_true.
                                              DATA t2769 TYPE REF TO zcl_lnt_cd_result.
                                              t2769 = t2.
                                              DATA t2771 TYPE string.
                                              t2771 = t10.
                                              DATA t2773 TYPE f.
                                              t2773 = t6.
                                              DATA t2775 TYPE f.
                                              t2775 = t8.
                                              DATA t2778 TYPE f.
                                              t2778 = t4.
                                              IF xsdbool( strlen( t2771 ) > 0 ) = abap_true.
                                                DATA t2786 TYPE abap_bool.
                                                DATA t2787 TYPE abap_bool.
                                                t2787 = xsdbool( t2778 = CONV f( 3 ) ).
                                                t2786 = t2787.
                                                IF t2787 = abap_true.
                                                  DATA(t2790) = VALUE abap_bool( ).
                                                  DATA(t2791) = VALUE abap_bool( ).
                                                  DATA(t2793) = |--|.
                                                  DATA(t2794) = strlen( t2771 ).
                                                  DATA t2795 TYPE i.
                                                  DATA(t2796) = VALUE i( ).
                                                  DATA(t2797) = VALUE string( ).
                                                  t2795 = strlen( t2793 ).
                                                  IF t2795 = 0.
                                                    t2791 = abap_true.
                                                  ELSEIF t2795 <= t2794.
                                                    t2796 = 0.
                                                    t2797 = t2771+t2796(t2795).
                                                    IF t2797 = t2793.
                                                      t2791 = abap_true.
                                                    ENDIF.
                                                  ENDIF.
                                                  t2790 = t2791.
                                                  IF t2791 = abap_false.
                                                    DATA(t2798) = VALUE abap_bool( ).
                                                    DATA(t2800) = |//|.
                                                    DATA(t2801) = strlen( t2771 ).
                                                    DATA t2802 TYPE i.
                                                    DATA(t2803) = VALUE i( ).
                                                    DATA(t2804) = VALUE string( ).
                                                    t2802 = strlen( t2800 ).
                                                    IF t2802 = 0.
                                                      t2798 = abap_true.
                                                    ELSEIF t2802 <= t2801.
                                                      t2803 = 0.
                                                      t2804 = t2771+t2803(t2802).
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
                                                  t2805 = t2769->result_9728.
                                                  DATA t2807 TYPE REF TO zcl_lnt_lx_comment.
                                                  DATA t2810 TYPE f.
                                                  DATA t2812 TYPE f.
                                                  t2812 = strlen( t2771 ).
                                                  t2810 = t2775 - t2812.
                                                  DATA(t2816) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                  t2816->has = abap_true.
                                                  t2816->value = t2810.
                                                  t2807 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t2773 i_col = t2816 ) i_str = t2771 ).
                                                  t2805->load( ).
                                                  APPEND t2807 TO t2805->items.
                                                  t2805->save( ).
                                                ELSE.
                                                  DATA t2818 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                  t2818 = t2769->result_9728.
                                                  DATA t2820 TYPE REF TO zcl_lnt_lx_identifier.
                                                  DATA(t2824) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                  t2824->has = abap_true.
                                                  t2824->value = t2775.
                                                  t2820 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t2773 i_col = t2824 ) i_str = t2771 ).
                                                  t2818->load( ).
                                                  APPEND t2820 TO t2818->items.
                                                  t2818->save( ).
                                                ENDIF.
                                              ENDIF.
                                              t10 = ||.
                                              DATA(t2827) = VALUE string( ).
                                              DATA t2828 TYPE REF TO zcl_lnt_cd_result.
                                              t2828 = t2.
                                              DATA t2830 TYPE string.
                                              t2830 = t32.
                                              DATA t2832 TYPE f.
                                              t2832 = t6.
                                              DATA t2834 TYPE f.
                                              t2834 = t8.
                                              DATA t2837 TYPE f.
                                              t2837 = t4.
                                              IF xsdbool( strlen( t2830 ) > 0 ) = abap_true.
                                                DATA t2845 TYPE abap_bool.
                                                DATA t2846 TYPE abap_bool.
                                                t2846 = xsdbool( t2837 = CONV f( 3 ) ).
                                                t2845 = t2846.
                                                IF t2846 = abap_true.
                                                  DATA(t2849) = VALUE abap_bool( ).
                                                  DATA(t2850) = VALUE abap_bool( ).
                                                  DATA(t2852) = |--|.
                                                  DATA(t2853) = strlen( t2830 ).
                                                  DATA t2854 TYPE i.
                                                  DATA(t2855) = VALUE i( ).
                                                  DATA(t2856) = VALUE string( ).
                                                  t2854 = strlen( t2852 ).
                                                  IF t2854 = 0.
                                                    t2850 = abap_true.
                                                  ELSEIF t2854 <= t2853.
                                                    t2855 = 0.
                                                    t2856 = t2830+t2855(t2854).
                                                    IF t2856 = t2852.
                                                      t2850 = abap_true.
                                                    ENDIF.
                                                  ENDIF.
                                                  t2849 = t2850.
                                                  IF t2850 = abap_false.
                                                    DATA(t2857) = VALUE abap_bool( ).
                                                    DATA(t2859) = |//|.
                                                    DATA(t2860) = strlen( t2830 ).
                                                    DATA t2861 TYPE i.
                                                    DATA(t2862) = VALUE i( ).
                                                    DATA(t2863) = VALUE string( ).
                                                    t2861 = strlen( t2859 ).
                                                    IF t2861 = 0.
                                                      t2857 = abap_true.
                                                    ELSEIF t2861 <= t2860.
                                                      t2862 = 0.
                                                      t2863 = t2830+t2862(t2861).
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
                                                  t2864 = t2828->result_9728.
                                                  DATA t2866 TYPE REF TO zcl_lnt_lx_comment.
                                                  DATA t2869 TYPE f.
                                                  DATA t2871 TYPE f.
                                                  t2871 = strlen( t2830 ).
                                                  t2869 = t2834 - t2871.
                                                  DATA(t2875) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                  t2875->has = abap_true.
                                                  t2875->value = t2869.
                                                  t2866 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t2832 i_col = t2875 ) i_str = t2830 ).
                                                  t2864->load( ).
                                                  APPEND t2866 TO t2864->items.
                                                  t2864->save( ).
                                                ELSE.
                                                  DATA t2877 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                  t2877 = t2828->result_9728.
                                                  DATA t2879 TYPE REF TO zcl_lnt_lx_identifier.
                                                  DATA(t2883) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                  t2883->has = abap_true.
                                                  t2883->value = t2834.
                                                  t2879 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t2832 i_col = t2883 ) i_str = t2830 ).
                                                  t2877->load( ).
                                                  APPEND t2879 TO t2877->items.
                                                  t2877->save( ).
                                                ENDIF.
                                              ENDIF.
                                              t2827 = ||.
                                            ELSE.
                                              IF xsdbool( t32 = |-| ) = abap_true.
                                                DATA t2890 TYPE REF TO zcl_lnt_cd_result.
                                                t2890 = t2.
                                                DATA t2892 TYPE string.
                                                t2892 = t10.
                                                DATA t2894 TYPE f.
                                                t2894 = t6.
                                                DATA t2896 TYPE f.
                                                t2896 = t8.
                                                DATA t2899 TYPE f.
                                                t2899 = t4.
                                                IF xsdbool( strlen( t2892 ) > 0 ) = abap_true.
                                                  DATA t2907 TYPE abap_bool.
                                                  DATA t2908 TYPE abap_bool.
                                                  t2908 = xsdbool( t2899 = CONV f( 3 ) ).
                                                  t2907 = t2908.
                                                  IF t2908 = abap_true.
                                                    DATA(t2911) = VALUE abap_bool( ).
                                                    DATA(t2912) = VALUE abap_bool( ).
                                                    DATA(t2914) = |--|.
                                                    DATA(t2915) = strlen( t2892 ).
                                                    DATA t2916 TYPE i.
                                                    DATA(t2917) = VALUE i( ).
                                                    DATA(t2918) = VALUE string( ).
                                                    t2916 = strlen( t2914 ).
                                                    IF t2916 = 0.
                                                      t2912 = abap_true.
                                                    ELSEIF t2916 <= t2915.
                                                      t2917 = 0.
                                                      t2918 = t2892+t2917(t2916).
                                                      IF t2918 = t2914.
                                                        t2912 = abap_true.
                                                      ENDIF.
                                                    ENDIF.
                                                    t2911 = t2912.
                                                    IF t2912 = abap_false.
                                                      DATA(t2919) = VALUE abap_bool( ).
                                                      DATA(t2921) = |//|.
                                                      DATA(t2922) = strlen( t2892 ).
                                                      DATA t2923 TYPE i.
                                                      DATA(t2924) = VALUE i( ).
                                                      DATA(t2925) = VALUE string( ).
                                                      t2923 = strlen( t2921 ).
                                                      IF t2923 = 0.
                                                        t2919 = abap_true.
                                                      ELSEIF t2923 <= t2922.
                                                        t2924 = 0.
                                                        t2925 = t2892+t2924(t2923).
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
                                                    t2926 = t2890->result_9728.
                                                    DATA t2928 TYPE REF TO zcl_lnt_lx_comment.
                                                    DATA t2931 TYPE f.
                                                    DATA t2933 TYPE f.
                                                    t2933 = strlen( t2892 ).
                                                    t2931 = t2896 - t2933.
                                                    DATA(t2937) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                    t2937->has = abap_true.
                                                    t2937->value = t2931.
                                                    t2928 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t2894 i_col = t2937 ) i_str = t2892 ).
                                                    t2926->load( ).
                                                    APPEND t2928 TO t2926->items.
                                                    t2926->save( ).
                                                  ELSE.
                                                    DATA t2939 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                    t2939 = t2890->result_9728.
                                                    DATA t2941 TYPE REF TO zcl_lnt_lx_identifier.
                                                    DATA(t2945) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                    t2945->has = abap_true.
                                                    t2945->value = t2896.
                                                    t2941 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t2894 i_col = t2945 ) i_str = t2892 ).
                                                    t2939->load( ).
                                                    APPEND t2941 TO t2939->items.
                                                    t2939->save( ).
                                                  ENDIF.
                                                ENDIF.
                                                t10 = ||.
                                                DATA(t2948) = VALUE string( ).
                                                DATA t2949 TYPE REF TO zcl_lnt_cd_result.
                                                t2949 = t2.
                                                DATA t2951 TYPE string.
                                                t2951 = t32.
                                                DATA t2953 TYPE f.
                                                t2953 = t6.
                                                DATA t2955 TYPE f.
                                                t2955 = t8.
                                                DATA t2958 TYPE f.
                                                t2958 = t4.
                                                IF xsdbool( strlen( t2951 ) > 0 ) = abap_true.
                                                  DATA t2966 TYPE abap_bool.
                                                  DATA t2967 TYPE abap_bool.
                                                  t2967 = xsdbool( t2958 = CONV f( 3 ) ).
                                                  t2966 = t2967.
                                                  IF t2967 = abap_true.
                                                    DATA(t2970) = VALUE abap_bool( ).
                                                    DATA(t2971) = VALUE abap_bool( ).
                                                    DATA(t2973) = |--|.
                                                    DATA(t2974) = strlen( t2951 ).
                                                    DATA t2975 TYPE i.
                                                    DATA(t2976) = VALUE i( ).
                                                    DATA(t2977) = VALUE string( ).
                                                    t2975 = strlen( t2973 ).
                                                    IF t2975 = 0.
                                                      t2971 = abap_true.
                                                    ELSEIF t2975 <= t2974.
                                                      t2976 = 0.
                                                      t2977 = t2951+t2976(t2975).
                                                      IF t2977 = t2973.
                                                        t2971 = abap_true.
                                                      ENDIF.
                                                    ENDIF.
                                                    t2970 = t2971.
                                                    IF t2971 = abap_false.
                                                      DATA(t2978) = VALUE abap_bool( ).
                                                      DATA(t2980) = |//|.
                                                      DATA(t2981) = strlen( t2951 ).
                                                      DATA t2982 TYPE i.
                                                      DATA(t2983) = VALUE i( ).
                                                      DATA(t2984) = VALUE string( ).
                                                      t2982 = strlen( t2980 ).
                                                      IF t2982 = 0.
                                                        t2978 = abap_true.
                                                      ELSEIF t2982 <= t2981.
                                                        t2983 = 0.
                                                        t2984 = t2951+t2983(t2982).
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
                                                    t2985 = t2949->result_9728.
                                                    DATA t2987 TYPE REF TO zcl_lnt_lx_comment.
                                                    DATA t2990 TYPE f.
                                                    DATA t2992 TYPE f.
                                                    t2992 = strlen( t2951 ).
                                                    t2990 = t2955 - t2992.
                                                    DATA(t2996) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                    t2996->has = abap_true.
                                                    t2996->value = t2990.
                                                    t2987 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t2953 i_col = t2996 ) i_str = t2951 ).
                                                    t2985->load( ).
                                                    APPEND t2987 TO t2985->items.
                                                    t2985->save( ).
                                                  ELSE.
                                                    DATA t2998 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                    t2998 = t2949->result_9728.
                                                    DATA t3000 TYPE REF TO zcl_lnt_lx_identifier.
                                                    DATA(t3004) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                    t3004->has = abap_true.
                                                    t3004->value = t2955.
                                                    t3000 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t2953 i_col = t3004 ) i_str = t2951 ).
                                                    t2998->load( ).
                                                    APPEND t3000 TO t2998->items.
                                                    t2998->save( ).
                                                  ENDIF.
                                                ENDIF.
                                                t2948 = ||.
                                              ELSE.
                                                IF xsdbool( t32 = |*| ) = abap_true.
                                                  DATA t3011 TYPE REF TO zcl_lnt_cd_result.
                                                  t3011 = t2.
                                                  DATA t3013 TYPE string.
                                                  t3013 = t10.
                                                  DATA t3015 TYPE f.
                                                  t3015 = t6.
                                                  DATA t3017 TYPE f.
                                                  t3017 = t8.
                                                  DATA t3020 TYPE f.
                                                  t3020 = t4.
                                                  IF xsdbool( strlen( t3013 ) > 0 ) = abap_true.
                                                    DATA t3028 TYPE abap_bool.
                                                    DATA t3029 TYPE abap_bool.
                                                    t3029 = xsdbool( t3020 = CONV f( 3 ) ).
                                                    t3028 = t3029.
                                                    IF t3029 = abap_true.
                                                      DATA(t3032) = VALUE abap_bool( ).
                                                      DATA(t3033) = VALUE abap_bool( ).
                                                      DATA(t3035) = |--|.
                                                      DATA(t3036) = strlen( t3013 ).
                                                      DATA t3037 TYPE i.
                                                      DATA(t3038) = VALUE i( ).
                                                      DATA(t3039) = VALUE string( ).
                                                      t3037 = strlen( t3035 ).
                                                      IF t3037 = 0.
                                                        t3033 = abap_true.
                                                      ELSEIF t3037 <= t3036.
                                                        t3038 = 0.
                                                        t3039 = t3013+t3038(t3037).
                                                        IF t3039 = t3035.
                                                          t3033 = abap_true.
                                                        ENDIF.
                                                      ENDIF.
                                                      t3032 = t3033.
                                                      IF t3033 = abap_false.
                                                        DATA(t3040) = VALUE abap_bool( ).
                                                        DATA(t3042) = |//|.
                                                        DATA(t3043) = strlen( t3013 ).
                                                        DATA t3044 TYPE i.
                                                        DATA(t3045) = VALUE i( ).
                                                        DATA(t3046) = VALUE string( ).
                                                        t3044 = strlen( t3042 ).
                                                        IF t3044 = 0.
                                                          t3040 = abap_true.
                                                        ELSEIF t3044 <= t3043.
                                                          t3045 = 0.
                                                          t3046 = t3013+t3045(t3044).
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
                                                      t3047 = t3011->result_9728.
                                                      DATA t3049 TYPE REF TO zcl_lnt_lx_comment.
                                                      DATA t3052 TYPE f.
                                                      DATA t3054 TYPE f.
                                                      t3054 = strlen( t3013 ).
                                                      t3052 = t3017 - t3054.
                                                      DATA(t3058) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                      t3058->has = abap_true.
                                                      t3058->value = t3052.
                                                      t3049 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t3015 i_col = t3058 ) i_str = t3013 ).
                                                      t3047->load( ).
                                                      APPEND t3049 TO t3047->items.
                                                      t3047->save( ).
                                                    ELSE.
                                                      DATA t3060 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                      t3060 = t3011->result_9728.
                                                      DATA t3062 TYPE REF TO zcl_lnt_lx_identifier.
                                                      DATA(t3066) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                      t3066->has = abap_true.
                                                      t3066->value = t3017.
                                                      t3062 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t3015 i_col = t3066 ) i_str = t3013 ).
                                                      t3060->load( ).
                                                      APPEND t3062 TO t3060->items.
                                                      t3060->save( ).
                                                    ENDIF.
                                                  ENDIF.
                                                  t10 = ||.
                                                  DATA(t3069) = VALUE string( ).
                                                  DATA t3070 TYPE REF TO zcl_lnt_cd_result.
                                                  t3070 = t2.
                                                  DATA t3072 TYPE string.
                                                  t3072 = t32.
                                                  DATA t3074 TYPE f.
                                                  t3074 = t6.
                                                  DATA t3076 TYPE f.
                                                  t3076 = t8.
                                                  DATA t3079 TYPE f.
                                                  t3079 = t4.
                                                  IF xsdbool( strlen( t3072 ) > 0 ) = abap_true.
                                                    DATA t3087 TYPE abap_bool.
                                                    DATA t3088 TYPE abap_bool.
                                                    t3088 = xsdbool( t3079 = CONV f( 3 ) ).
                                                    t3087 = t3088.
                                                    IF t3088 = abap_true.
                                                      DATA(t3091) = VALUE abap_bool( ).
                                                      DATA(t3092) = VALUE abap_bool( ).
                                                      DATA(t3094) = |--|.
                                                      DATA(t3095) = strlen( t3072 ).
                                                      DATA t3096 TYPE i.
                                                      DATA(t3097) = VALUE i( ).
                                                      DATA(t3098) = VALUE string( ).
                                                      t3096 = strlen( t3094 ).
                                                      IF t3096 = 0.
                                                        t3092 = abap_true.
                                                      ELSEIF t3096 <= t3095.
                                                        t3097 = 0.
                                                        t3098 = t3072+t3097(t3096).
                                                        IF t3098 = t3094.
                                                          t3092 = abap_true.
                                                        ENDIF.
                                                      ENDIF.
                                                      t3091 = t3092.
                                                      IF t3092 = abap_false.
                                                        DATA(t3099) = VALUE abap_bool( ).
                                                        DATA(t3101) = |//|.
                                                        DATA(t3102) = strlen( t3072 ).
                                                        DATA t3103 TYPE i.
                                                        DATA(t3104) = VALUE i( ).
                                                        DATA(t3105) = VALUE string( ).
                                                        t3103 = strlen( t3101 ).
                                                        IF t3103 = 0.
                                                          t3099 = abap_true.
                                                        ELSEIF t3103 <= t3102.
                                                          t3104 = 0.
                                                          t3105 = t3072+t3104(t3103).
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
                                                      t3106 = t3070->result_9728.
                                                      DATA t3108 TYPE REF TO zcl_lnt_lx_comment.
                                                      DATA t3111 TYPE f.
                                                      DATA t3113 TYPE f.
                                                      t3113 = strlen( t3072 ).
                                                      t3111 = t3076 - t3113.
                                                      DATA(t3117) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                      t3117->has = abap_true.
                                                      t3117->value = t3111.
                                                      t3108 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t3074 i_col = t3117 ) i_str = t3072 ).
                                                      t3106->load( ).
                                                      APPEND t3108 TO t3106->items.
                                                      t3106->save( ).
                                                    ELSE.
                                                      DATA t3119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                      t3119 = t3070->result_9728.
                                                      DATA t3121 TYPE REF TO zcl_lnt_lx_identifier.
                                                      DATA(t3125) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                      t3125->has = abap_true.
                                                      t3125->value = t3076.
                                                      t3121 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t3074 i_col = t3125 ) i_str = t3072 ).
                                                      t3119->load( ).
                                                      APPEND t3121 TO t3119->items.
                                                      t3119->save( ).
                                                    ENDIF.
                                                  ENDIF.
                                                  t3069 = ||.
                                                ELSE.
                                                  IF xsdbool( t32 = |/| ) = abap_true.
                                                    DATA t3132 TYPE REF TO zcl_lnt_cd_result.
                                                    t3132 = t2.
                                                    DATA t3134 TYPE string.
                                                    t3134 = t10.
                                                    DATA t3136 TYPE f.
                                                    t3136 = t6.
                                                    DATA t3138 TYPE f.
                                                    t3138 = t8.
                                                    DATA t3141 TYPE f.
                                                    t3141 = t4.
                                                    IF xsdbool( strlen( t3134 ) > 0 ) = abap_true.
                                                      DATA t3149 TYPE abap_bool.
                                                      DATA t3150 TYPE abap_bool.
                                                      t3150 = xsdbool( t3141 = CONV f( 3 ) ).
                                                      t3149 = t3150.
                                                      IF t3150 = abap_true.
                                                        DATA(t3153) = VALUE abap_bool( ).
                                                        DATA(t3154) = VALUE abap_bool( ).
                                                        DATA(t3156) = |--|.
                                                        DATA(t3157) = strlen( t3134 ).
                                                        DATA t3158 TYPE i.
                                                        DATA(t3159) = VALUE i( ).
                                                        DATA(t3160) = VALUE string( ).
                                                        t3158 = strlen( t3156 ).
                                                        IF t3158 = 0.
                                                          t3154 = abap_true.
                                                        ELSEIF t3158 <= t3157.
                                                          t3159 = 0.
                                                          t3160 = t3134+t3159(t3158).
                                                          IF t3160 = t3156.
                                                            t3154 = abap_true.
                                                          ENDIF.
                                                        ENDIF.
                                                        t3153 = t3154.
                                                        IF t3154 = abap_false.
                                                          DATA(t3161) = VALUE abap_bool( ).
                                                          DATA(t3163) = |//|.
                                                          DATA(t3164) = strlen( t3134 ).
                                                          DATA t3165 TYPE i.
                                                          DATA(t3166) = VALUE i( ).
                                                          DATA(t3167) = VALUE string( ).
                                                          t3165 = strlen( t3163 ).
                                                          IF t3165 = 0.
                                                            t3161 = abap_true.
                                                          ELSEIF t3165 <= t3164.
                                                            t3166 = 0.
                                                            t3167 = t3134+t3166(t3165).
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
                                                        t3168 = t3132->result_9728.
                                                        DATA t3170 TYPE REF TO zcl_lnt_lx_comment.
                                                        DATA t3173 TYPE f.
                                                        DATA t3175 TYPE f.
                                                        t3175 = strlen( t3134 ).
                                                        t3173 = t3138 - t3175.
                                                        DATA(t3179) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                        t3179->has = abap_true.
                                                        t3179->value = t3173.
                                                        t3170 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t3136 i_col = t3179 ) i_str = t3134 ).
                                                        t3168->load( ).
                                                        APPEND t3170 TO t3168->items.
                                                        t3168->save( ).
                                                      ELSE.
                                                        DATA t3181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                        t3181 = t3132->result_9728.
                                                        DATA t3183 TYPE REF TO zcl_lnt_lx_identifier.
                                                        DATA(t3187) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                        t3187->has = abap_true.
                                                        t3187->value = t3138.
                                                        t3183 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t3136 i_col = t3187 ) i_str = t3134 ).
                                                        t3181->load( ).
                                                        APPEND t3183 TO t3181->items.
                                                        t3181->save( ).
                                                      ENDIF.
                                                    ENDIF.
                                                    t10 = ||.
                                                    DATA(t3190) = VALUE string( ).
                                                    DATA t3191 TYPE REF TO zcl_lnt_cd_result.
                                                    t3191 = t2.
                                                    DATA t3193 TYPE string.
                                                    t3193 = t32.
                                                    DATA t3195 TYPE f.
                                                    t3195 = t6.
                                                    DATA t3197 TYPE f.
                                                    t3197 = t8.
                                                    DATA t3200 TYPE f.
                                                    t3200 = t4.
                                                    IF xsdbool( strlen( t3193 ) > 0 ) = abap_true.
                                                      DATA t3208 TYPE abap_bool.
                                                      DATA t3209 TYPE abap_bool.
                                                      t3209 = xsdbool( t3200 = CONV f( 3 ) ).
                                                      t3208 = t3209.
                                                      IF t3209 = abap_true.
                                                        DATA(t3212) = VALUE abap_bool( ).
                                                        DATA(t3213) = VALUE abap_bool( ).
                                                        DATA(t3215) = |--|.
                                                        DATA(t3216) = strlen( t3193 ).
                                                        DATA t3217 TYPE i.
                                                        DATA(t3218) = VALUE i( ).
                                                        DATA(t3219) = VALUE string( ).
                                                        t3217 = strlen( t3215 ).
                                                        IF t3217 = 0.
                                                          t3213 = abap_true.
                                                        ELSEIF t3217 <= t3216.
                                                          t3218 = 0.
                                                          t3219 = t3193+t3218(t3217).
                                                          IF t3219 = t3215.
                                                            t3213 = abap_true.
                                                          ENDIF.
                                                        ENDIF.
                                                        t3212 = t3213.
                                                        IF t3213 = abap_false.
                                                          DATA(t3220) = VALUE abap_bool( ).
                                                          DATA(t3222) = |//|.
                                                          DATA(t3223) = strlen( t3193 ).
                                                          DATA t3224 TYPE i.
                                                          DATA(t3225) = VALUE i( ).
                                                          DATA(t3226) = VALUE string( ).
                                                          t3224 = strlen( t3222 ).
                                                          IF t3224 = 0.
                                                            t3220 = abap_true.
                                                          ELSEIF t3224 <= t3223.
                                                            t3225 = 0.
                                                            t3226 = t3193+t3225(t3224).
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
                                                        t3227 = t3191->result_9728.
                                                        DATA t3229 TYPE REF TO zcl_lnt_lx_comment.
                                                        DATA t3232 TYPE f.
                                                        DATA t3234 TYPE f.
                                                        t3234 = strlen( t3193 ).
                                                        t3232 = t3197 - t3234.
                                                        DATA(t3238) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                        t3238->has = abap_true.
                                                        t3238->value = t3232.
                                                        t3229 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t3195 i_col = t3238 ) i_str = t3193 ).
                                                        t3227->load( ).
                                                        APPEND t3229 TO t3227->items.
                                                        t3227->save( ).
                                                      ELSE.
                                                        DATA t3240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                        t3240 = t3191->result_9728.
                                                        DATA t3242 TYPE REF TO zcl_lnt_lx_identifier.
                                                        DATA(t3246) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                        t3246->has = abap_true.
                                                        t3246->value = t3197.
                                                        t3242 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t3195 i_col = t3246 ) i_str = t3193 ).
                                                        t3240->load( ).
                                                        APPEND t3242 TO t3240->items.
                                                        t3240->save( ).
                                                      ENDIF.
                                                    ENDIF.
                                                    t3190 = ||.
                                                  ELSE.
                                                    IF xsdbool( t32 = |@| ) = abap_true.
                                                      DATA t3253 TYPE REF TO zcl_lnt_cd_result.
                                                      t3253 = t2.
                                                      DATA t3255 TYPE string.
                                                      t3255 = t10.
                                                      DATA t3257 TYPE f.
                                                      t3257 = t6.
                                                      DATA t3259 TYPE f.
                                                      t3259 = t8.
                                                      DATA t3262 TYPE f.
                                                      t3262 = t4.
                                                      IF xsdbool( strlen( t3255 ) > 0 ) = abap_true.
                                                        DATA t3270 TYPE abap_bool.
                                                        DATA t3271 TYPE abap_bool.
                                                        t3271 = xsdbool( t3262 = CONV f( 3 ) ).
                                                        t3270 = t3271.
                                                        IF t3271 = abap_true.
                                                          DATA(t3274) = VALUE abap_bool( ).
                                                          DATA(t3275) = VALUE abap_bool( ).
                                                          DATA(t3277) = |--|.
                                                          DATA(t3278) = strlen( t3255 ).
                                                          DATA t3279 TYPE i.
                                                          DATA(t3280) = VALUE i( ).
                                                          DATA(t3281) = VALUE string( ).
                                                          t3279 = strlen( t3277 ).
                                                          IF t3279 = 0.
                                                            t3275 = abap_true.
                                                          ELSEIF t3279 <= t3278.
                                                            t3280 = 0.
                                                            t3281 = t3255+t3280(t3279).
                                                            IF t3281 = t3277.
                                                              t3275 = abap_true.
                                                            ENDIF.
                                                          ENDIF.
                                                          t3274 = t3275.
                                                          IF t3275 = abap_false.
                                                            DATA(t3282) = VALUE abap_bool( ).
                                                            DATA(t3284) = |//|.
                                                            DATA(t3285) = strlen( t3255 ).
                                                            DATA t3286 TYPE i.
                                                            DATA(t3287) = VALUE i( ).
                                                            DATA(t3288) = VALUE string( ).
                                                            t3286 = strlen( t3284 ).
                                                            IF t3286 = 0.
                                                              t3282 = abap_true.
                                                            ELSEIF t3286 <= t3285.
                                                              t3287 = 0.
                                                              t3288 = t3255+t3287(t3286).
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
                                                          t3289 = t3253->result_9728.
                                                          DATA t3291 TYPE REF TO zcl_lnt_lx_comment.
                                                          DATA t3294 TYPE f.
                                                          DATA t3296 TYPE f.
                                                          t3296 = strlen( t3255 ).
                                                          t3294 = t3259 - t3296.
                                                          DATA(t3300) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                          t3300->has = abap_true.
                                                          t3300->value = t3294.
                                                          t3291 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t3257 i_col = t3300 ) i_str = t3255 ).
                                                          t3289->load( ).
                                                          APPEND t3291 TO t3289->items.
                                                          t3289->save( ).
                                                        ELSE.
                                                          DATA t3302 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                                                          t3302 = t3253->result_9728.
                                                          DATA t3304 TYPE REF TO zcl_lnt_lx_identifier.
                                                          DATA(t3308) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                                                          t3308->has = abap_true.
                                                          t3308->value = t3259.
                                                          t3304 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t3257 i_col = t3308 ) i_str = t3255 ).
                                                          t3302->load( ).
                                                          APPEND t3304 TO t3302->items.
                                                          t3302->save( ).
                                                        ENDIF.
                                                      ENDIF.
                                                      t10 = ||.
                                                      t10 = |@|.
                                                    ELSE.
                                                      DATA(t3313) = t10.
                                                      DATA(t3315) = strlen( t3313 ).
                                                      t10 = |{ t3313 }{ t32 }|.
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
    t3317 = t2.
    DATA t3319 TYPE string.
    t3319 = t10.
    DATA t3321 TYPE f.
    t3321 = t6.
    DATA t3323 TYPE f.
    t3323 = t8.
    DATA t3326 TYPE f.
    t3326 = t4.
    IF xsdbool( strlen( t3319 ) > 0 ) = abap_true.
      DATA t3334 TYPE abap_bool.
      DATA t3335 TYPE abap_bool.
      t3335 = xsdbool( t3326 = CONV f( 3 ) ).
      t3334 = t3335.
      IF t3335 = abap_true.
        DATA(t3338) = VALUE abap_bool( ).
        DATA(t3339) = VALUE abap_bool( ).
        DATA(t3341) = |--|.
        DATA(t3342) = strlen( t3319 ).
        DATA t3343 TYPE i.
        DATA(t3344) = VALUE i( ).
        DATA(t3345) = VALUE string( ).
        t3343 = strlen( t3341 ).
        IF t3343 = 0.
          t3339 = abap_true.
        ELSEIF t3343 <= t3342.
          t3344 = 0.
          t3345 = t3319+t3344(t3343).
          IF t3345 = t3341.
            t3339 = abap_true.
          ENDIF.
        ENDIF.
        t3338 = t3339.
        IF t3339 = abap_false.
          DATA(t3346) = VALUE abap_bool( ).
          DATA(t3348) = |//|.
          DATA(t3349) = strlen( t3319 ).
          DATA t3350 TYPE i.
          DATA(t3351) = VALUE i( ).
          DATA(t3352) = VALUE string( ).
          t3350 = strlen( t3348 ).
          IF t3350 = 0.
            t3346 = abap_true.
          ELSEIF t3350 <= t3349.
            t3351 = 0.
            t3352 = t3319+t3351(t3350).
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
        t3353 = t3317->result_9728.
        DATA t3355 TYPE REF TO zcl_lnt_lx_comment.
        DATA t3358 TYPE f.
        DATA t3360 TYPE f.
        t3360 = strlen( t3319 ).
        t3358 = t3323 - t3360.
        DATA(t3364) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t3364->has = abap_true.
        t3364->value = t3358.
        t3355 = NEW zcl_lnt_lx_comment( i_start = NEW zcl_lnt_position( i_row = t3321 i_col = t3364 ) i_str = t3319 ).
        t3353->load( ).
        APPEND t3355 TO t3353->items.
        t3353->save( ).
      ELSE.
        DATA t3366 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t3366 = t3317->result_9728.
        DATA t3368 TYPE REF TO zcl_lnt_lx_identifier.
        DATA(t3372) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t3372->has = abap_true.
        t3372->value = t3323.
        t3368 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t3321 i_col = t3372 ) i_str = t3319 ).
        t3366->load( ).
        APPEND t3368 TO t3366->items.
        t3366->save( ).
      ENDIF.
    ENDIF.
    t3316 = ||.
    result = t2->result_9728.

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
