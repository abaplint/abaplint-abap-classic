* TS: src/abap/2_statements/statements/scan.ts:7:1 Scan
CLASS zcl_lnt_st_scan DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_scan IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |TOKENS INTO|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t10 ).
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = |WORD INTO|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t15 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t21 i_rest = t24 ).
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = |LINE INTO|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t35->cval = t36.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t32 i_second = t35 i_rest = t38 ).
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = |STATEMENTS INTO|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t52.
    t43 = zcl_lnt_st_combi_module=>seq( i_first = t46 i_second = t49 i_rest = t52 ).
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = |LEVELS INTO|.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t63->cval = t64.
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t66.
    t57 = zcl_lnt_st_combi_module=>seq( i_first = t60 i_second = t63 i_rest = t66 ).
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t74.
    t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t74->sval = |STRUCTURES INTO|.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t78 IS BOUND.
      CREATE OBJECT t77.
      t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t77->cval = t78.
    ENDIF.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t80.
    t71 = zcl_lnt_st_combi_module=>seq( i_first = t74 i_second = t77 i_rest = t80 ).
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t88.
    t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t88->sval = |INCLUDE INTO|.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t92) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t92 IS BOUND.
      CREATE OBJECT t91.
      t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t91->cval = t92.
    ENDIF.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t94.
    t85 = zcl_lnt_st_combi_module=>seq( i_first = t88 i_second = t91 i_rest = t94 ).
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = |OFFSET INTO|.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t106) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t105->cval = t106.
    ENDIF.
    DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t108.
    t99 = zcl_lnt_st_combi_module=>seq( i_first = t102 i_second = t105 i_rest = t108 ).
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t116.
    t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t116->sval = |ENHANCEMENTS INTO|.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t120) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t120 IS BOUND.
      CREATE OBJECT t119.
      t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t119->cval = t120.
    ENDIF.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t122.
    t113 = zcl_lnt_st_combi_module=>seq( i_first = t116 i_second = t119 i_rest = t122 ).
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t130.
    t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t130->sval = |ENHANCEMENT OPTIONS INTO|.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t134) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t134 IS BOUND.
      CREATE OBJECT t133.
      t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t133->cval = t134.
    ENDIF.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t136.
    t127 = zcl_lnt_st_combi_module=>seq( i_first = t130 i_second = t133 i_rest = t136 ).
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t144.
    t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t144->sval = |KEYWORDS FROM|.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t148) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t148 IS BOUND.
      CREATE OBJECT t147.
      t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t147->cval = t148.
    ENDIF.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t150.
    t141 = zcl_lnt_st_combi_module=>seq( i_first = t144 i_second = t147 i_rest = t150 ).
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t158.
    t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t158->sval = |WITH PRAGMAS|.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t162) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t162 IS BOUND.
      CREATE OBJECT t161.
      t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t161->cval = t162.
    ENDIF.
    DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t164.
    t155 = zcl_lnt_st_combi_module=>seq( i_first = t158 i_second = t161 i_rest = t164 ).
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t172.
    t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t172->sval = |OVERFLOW INTO|.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t176) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t176 IS BOUND.
      CREATE OBJECT t175.
      t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t175->cval = t176.
    ENDIF.
    DATA t178 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t178.
    t169 = zcl_lnt_st_combi_module=>seq( i_first = t172 i_second = t175 i_rest = t178 ).
    DATA t183 TYPE REF TO zif_lnt_statement_runnable.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t186.
    t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t186->sval = |MESSAGE INTO|.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t190) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t190 IS BOUND.
      CREATE OBJECT t189.
      t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t189->cval = t190.
    ENDIF.
    DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t192.
    t183 = zcl_lnt_st_combi_module=>seq( i_first = t186 i_second = t189 i_rest = t192 ).
    DATA t197 TYPE REF TO zif_lnt_statement_runnable.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t200.
    t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t200->sval = |INCLUDE PROGRAM FROM|.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t204) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t204 IS BOUND.
      CREATE OBJECT t203.
      t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t203->cval = t204.
    ENDIF.
    DATA t206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t206.
    t197 = zcl_lnt_st_combi_module=>seq( i_first = t200 i_second = t203 i_rest = t206 ).
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t214.
    t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t214->sval = |FRAME PROGRAM FROM|.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t218) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t218 IS BOUND.
      CREATE OBJECT t217.
      t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t217->cval = t218.
    ENDIF.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t220.
    t211 = zcl_lnt_st_combi_module=>seq( i_first = t214 i_second = t217 i_rest = t220 ).
    DATA t225 TYPE REF TO zif_lnt_statement_runnable.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t228.
    t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t228->sval = |PROGRAM FROM|.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t232) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t232 IS BOUND.
      CREATE OBJECT t231.
      t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t231->cval = t232.
    ENDIF.
    DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t234.
    t225 = zcl_lnt_st_combi_module=>seq( i_first = t228 i_second = t231 i_rest = t234 ).
    DATA t239 TYPE REF TO zif_lnt_statement_runnable.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t242.
    t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t242->sval = |FROM|.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t246) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t246 IS BOUND.
      CREATE OBJECT t245.
      t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t245->cval = t246.
    ENDIF.
    DATA t248 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t248.
    t239 = zcl_lnt_st_combi_module=>seq( i_first = t242 i_second = t245 i_rest = t248 ).
    DATA t253 TYPE REF TO zif_lnt_statement_runnable.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t256.
    t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t256->sval = |TO|.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t260) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t260 IS BOUND.
      CREATE OBJECT t259.
      t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t259->cval = t260.
    ENDIF.
    DATA t262 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t262.
    t253 = zcl_lnt_st_combi_module=>seq( i_first = t256 i_second = t259 i_rest = t262 ).
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t270.
    t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t270->sval = |REPLACING|.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t274) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t274 IS BOUND.
      CREATE OBJECT t273.
      t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t273->cval = t274.
    ENDIF.
    DATA t276 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t276.
    t267 = zcl_lnt_st_combi_module=>seq( i_first = t270 i_second = t273 i_rest = t276 ).
    DATA t281 TYPE REF TO zif_lnt_statement_runnable.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t284.
    t284->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t284->sval = |ID|.
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t288) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t288 IS BOUND.
      CREATE OBJECT t287.
      t287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t287->cval = t288.
    ENDIF.
    DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t289.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t292.
    t292->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t292->sval = |TABLE|.
    t289->load( ).
    APPEND t292 TO t289->items.
    t289->save( ).
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t296) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t296 IS BOUND.
      CREATE OBJECT t295.
      t295->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t295->cval = t296.
    ENDIF.
    t289->load( ).
    APPEND t295 TO t289->items.
    t289->save( ).
    t281 = zcl_lnt_st_combi_module=>seq( i_first = t284 i_second = t287 i_rest = t289 ).
    DATA t301 TYPE REF TO zif_lnt_statement_runnable.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t304.
    t304->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t304->sval = |SCAN ABAP-SOURCE|.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t308) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t308 IS BOUND.
      CREATE OBJECT t307.
      t307->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t307->cval = t308.
    ENDIF.
    DATA t309 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t309.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t313 TYPE REF TO zif_lnt_statement_runnable.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t317 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t318 TYPE REF TO object.
      t318 = t1.
      TRY.
          t315 ?= t318.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t315 IS NOT BOUND.
        TRY.
            t317 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t317 IS BOUND.
          t315 = t317->source( ).
        ENDIF.
        IF t315 IS NOT BOUND.
          CREATE OBJECT t315.
          t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t315->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57 IS BOUND.
      DATA t322 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t323 TYPE REF TO object.
      t323 = t57.
      TRY.
          t320 ?= t323.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t320 IS NOT BOUND.
        TRY.
            t322 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t322 IS BOUND.
          t320 = t322->source( ).
        ENDIF.
        IF t320 IS NOT BOUND.
          CREATE OBJECT t320.
          t320->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t320->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t324 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t324.
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t239 IS BOUND.
      DATA t329 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t330 TYPE REF TO object.
      t330 = t239.
      TRY.
          t327 ?= t330.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t327 IS NOT BOUND.
        TRY.
            t329 ?= t239.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t329 IS BOUND.
          t327 = t329->source( ).
        ENDIF.
        IF t327 IS NOT BOUND.
          CREATE OBJECT t327.
          t327->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t327->oval = t239.
        ENDIF.
      ENDIF.
    ENDIF.
    t324->load( ).
    APPEND t327 TO t324->items.
    t324->save( ).
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t253 IS BOUND.
      DATA t334 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t335 TYPE REF TO object.
      t335 = t253.
      TRY.
          t332 ?= t335.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t332 IS NOT BOUND.
        TRY.
            t334 ?= t253.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t334 IS BOUND.
          t332 = t334->source( ).
        ENDIF.
        IF t332 IS NOT BOUND.
          CREATE OBJECT t332.
          t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t332->oval = t253.
        ENDIF.
      ENDIF.
    ENDIF.
    t324->load( ).
    APPEND t332 TO t324->items.
    t324->save( ).
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t43 IS BOUND.
      DATA t339 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t340 TYPE REF TO object.
      t340 = t43.
      TRY.
          t337 ?= t340.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t337 IS NOT BOUND.
        TRY.
            t339 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t339 IS BOUND.
          t337 = t339->source( ).
        ENDIF.
        IF t337 IS NOT BOUND.
          CREATE OBJECT t337.
          t337->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t337->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    t324->load( ).
    APPEND t337 TO t324->items.
    t324->save( ).
    DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t71 IS BOUND.
      DATA t344 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t345 TYPE REF TO object.
      t345 = t71.
      TRY.
          t342 ?= t345.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t342 IS NOT BOUND.
        TRY.
            t344 ?= t71.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t344 IS BOUND.
          t342 = t344->source( ).
        ENDIF.
        IF t342 IS NOT BOUND.
          CREATE OBJECT t342.
          t342->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t342->oval = t71.
        ENDIF.
      ENDIF.
    ENDIF.
    t324->load( ).
    APPEND t342 TO t324->items.
    t324->save( ).
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t141 IS BOUND.
      DATA t349 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t350 TYPE REF TO object.
      t350 = t141.
      TRY.
          t347 ?= t350.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t347 IS NOT BOUND.
        TRY.
            t349 ?= t141.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t349 IS BOUND.
          t347 = t349->source( ).
        ENDIF.
        IF t347 IS NOT BOUND.
          CREATE OBJECT t347.
          t347->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t347->oval = t141.
        ENDIF.
      ENDIF.
    ENDIF.
    t324->load( ).
    APPEND t347 TO t324->items.
    t324->save( ).
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t354 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t355 TYPE REF TO object.
      t355 = t15.
      TRY.
          t352 ?= t355.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t352 IS NOT BOUND.
        TRY.
            t354 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t354 IS BOUND.
          t352 = t354->source( ).
        ENDIF.
        IF t352 IS NOT BOUND.
          CREATE OBJECT t352.
          t352->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t352->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t324->load( ).
    APPEND t352 TO t324->items.
    t324->save( ).
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t359 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t360 TYPE REF TO object.
      t360 = t29.
      TRY.
          t357 ?= t360.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t357 IS NOT BOUND.
        TRY.
            t359 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t359 IS BOUND.
          t357 = t359->source( ).
        ENDIF.
        IF t357 IS NOT BOUND.
          CREATE OBJECT t357.
          t357->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t357->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    t324->load( ).
    APPEND t357 TO t324->items.
    t324->save( ).
    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t99 IS BOUND.
      DATA t364 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t365 TYPE REF TO object.
      t365 = t99.
      TRY.
          t362 ?= t365.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t362 IS NOT BOUND.
        TRY.
            t364 ?= t99.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t364 IS BOUND.
          t362 = t364->source( ).
        ENDIF.
        IF t362 IS NOT BOUND.
          CREATE OBJECT t362.
          t362->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t362->oval = t99.
        ENDIF.
      ENDIF.
    ENDIF.
    t324->load( ).
    APPEND t362 TO t324->items.
    t324->save( ).
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t169 IS BOUND.
      DATA t369 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t370 TYPE REF TO object.
      t370 = t169.
      TRY.
          t367 ?= t370.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t367 IS NOT BOUND.
        TRY.
            t369 ?= t169.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t369 IS BOUND.
          t367 = t369->source( ).
        ENDIF.
        IF t367 IS NOT BOUND.
          CREATE OBJECT t367.
          t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t367->oval = t169.
        ENDIF.
      ENDIF.
    ENDIF.
    t324->load( ).
    APPEND t367 TO t324->items.
    t324->save( ).
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t183 IS BOUND.
      DATA t374 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t375 TYPE REF TO object.
      t375 = t183.
      TRY.
          t372 ?= t375.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t372 IS NOT BOUND.
        TRY.
            t374 ?= t183.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t374 IS BOUND.
          t372 = t374->source( ).
        ENDIF.
        IF t372 IS NOT BOUND.
          CREATE OBJECT t372.
          t372->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t372->oval = t183.
        ENDIF.
      ENDIF.
    ENDIF.
    t324->load( ).
    APPEND t372 TO t324->items.
    t324->save( ).
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t197 IS BOUND.
      DATA t379 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t380 TYPE REF TO object.
      t380 = t197.
      TRY.
          t377 ?= t380.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t377 IS NOT BOUND.
        TRY.
            t379 ?= t197.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t379 IS BOUND.
          t377 = t379->source( ).
        ENDIF.
        IF t377 IS NOT BOUND.
          CREATE OBJECT t377.
          t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t377->oval = t197.
        ENDIF.
      ENDIF.
    ENDIF.
    t324->load( ).
    APPEND t377 TO t324->items.
    t324->save( ).
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t85 IS BOUND.
      DATA t384 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t385 TYPE REF TO object.
      t385 = t85.
      TRY.
          t382 ?= t385.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t382 IS NOT BOUND.
        TRY.
            t384 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t384 IS BOUND.
          t382 = t384->source( ).
        ENDIF.
        IF t382 IS NOT BOUND.
          CREATE OBJECT t382.
          t382->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t382->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    t324->load( ).
    APPEND t382 TO t324->items.
    t324->save( ).
    DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t211 IS BOUND.
      DATA t389 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t390 TYPE REF TO object.
      t390 = t211.
      TRY.
          t387 ?= t390.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t387 IS NOT BOUND.
        TRY.
            t389 ?= t211.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t389 IS BOUND.
          t387 = t389->source( ).
        ENDIF.
        IF t387 IS NOT BOUND.
          CREATE OBJECT t387.
          t387->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t387->oval = t211.
        ENDIF.
      ENDIF.
    ENDIF.
    t324->load( ).
    APPEND t387 TO t324->items.
    t324->save( ).
    DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t127 IS BOUND.
      DATA t394 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t395 TYPE REF TO object.
      t395 = t127.
      TRY.
          t392 ?= t395.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t392 IS NOT BOUND.
        TRY.
            t394 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t394 IS BOUND.
          t392 = t394->source( ).
        ENDIF.
        IF t392 IS NOT BOUND.
          CREATE OBJECT t392.
          t392->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t392->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    t324->load( ).
    APPEND t392 TO t324->items.
    t324->save( ).
    DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t113 IS BOUND.
      DATA t399 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t400 TYPE REF TO object.
      t400 = t113.
      TRY.
          t397 ?= t400.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t397 IS NOT BOUND.
        TRY.
            t399 ?= t113.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t399 IS BOUND.
          t397 = t399->source( ).
        ENDIF.
        IF t397 IS NOT BOUND.
          CREATE OBJECT t397.
          t397->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t397->oval = t113.
        ENDIF.
      ENDIF.
    ENDIF.
    t324->load( ).
    APPEND t397 TO t324->items.
    t324->save( ).
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t225 IS BOUND.
      DATA t404 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t405 TYPE REF TO object.
      t405 = t225.
      TRY.
          t402 ?= t405.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t402 IS NOT BOUND.
        TRY.
            t404 ?= t225.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t404 IS BOUND.
          t402 = t404->source( ).
        ENDIF.
        IF t402 IS NOT BOUND.
          CREATE OBJECT t402.
          t402->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t402->oval = t225.
        ENDIF.
      ENDIF.
    ENDIF.
    t324->load( ).
    APPEND t402 TO t324->items.
    t324->save( ).
    DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t267 IS BOUND.
      DATA t409 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t410 TYPE REF TO object.
      t410 = t267.
      TRY.
          t407 ?= t410.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t407 IS NOT BOUND.
        TRY.
            t409 ?= t267.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t409 IS BOUND.
          t407 = t409->source( ).
        ENDIF.
        IF t407 IS NOT BOUND.
          CREATE OBJECT t407.
          t407->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t407->oval = t267.
        ENDIF.
      ENDIF.
    ENDIF.
    t324->load( ).
    APPEND t407 TO t324->items.
    t324->save( ).
    DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t412.
    t412->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t412->sval = |WITH ANALYSIS|.
    t324->load( ).
    APPEND t412 TO t324->items.
    t324->save( ).
    DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t415.
    t415->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t415->sval = |WITH COMMENTS|.
    t324->load( ).
    APPEND t415 TO t324->items.
    t324->save( ).
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t418.
    t418->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t418->sval = |WITH TYPE-POOLS|.
    t324->load( ).
    APPEND t418 TO t324->items.
    t324->save( ).
    DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t421.
    t421->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t421->sval = |WITH INCLUDES|.
    t324->load( ).
    APPEND t421 TO t324->items.
    t324->save( ).
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t424.
    t424->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t424->sval = |WITHOUT TRMAC|.
    t324->load( ).
    APPEND t424 TO t324->items.
    t324->save( ).
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t427.
    t427->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t427->sval = |WITH DECLARATIONS|.
    t324->load( ).
    APPEND t427 TO t324->items.
    t324->save( ).
    DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t430.
    t430->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t430->sval = |WITH BLOCKS|.
    t324->load( ).
    APPEND t430 TO t324->items.
    t324->save( ).
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t433.
    t433->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t433->sval = |PRESERVING IDENTIFIER ESCAPING|.
    t324->load( ).
    APPEND t433 TO t324->items.
    t324->save( ).
    DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t436.
    t436->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t436->sval = |WITH LIST TOKENIZATION|.
    t324->load( ).
    APPEND t436 TO t324->items.
    t324->save( ).
    DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t439.
    t439->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t439->sval = |WITH EXPLICIT ENHANCEMENTS|.
    t324->load( ).
    APPEND t439 TO t324->items.
    t324->save( ).
    DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t442.
    t442->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t442->sval = |WITH IMPLICIT ENHANCEMENTS|.
    t324->load( ).
    APPEND t442 TO t324->items.
    t324->save( ).
    DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t445.
    t445->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t445->sval = |WITH INACTIVE ENHANCEMENTS|.
    t324->load( ).
    APPEND t445 TO t324->items.
    t324->save( ).
    DATA t448 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t155 IS BOUND.
      DATA t450 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t451 TYPE REF TO object.
      t451 = t155.
      TRY.
          t448 ?= t451.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t448 IS NOT BOUND.
        TRY.
            t450 ?= t155.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t450 IS BOUND.
          t448 = t450->source( ).
        ENDIF.
        IF t448 IS NOT BOUND.
          CREATE OBJECT t448.
          t448->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t448->oval = t155.
        ENDIF.
      ENDIF.
    ENDIF.
    t324->load( ).
    APPEND t448 TO t324->items.
    t324->save( ).
    DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t281 IS BOUND.
      DATA t455 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t456 TYPE REF TO object.
      t456 = t281.
      TRY.
          t453 ?= t456.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t453 IS NOT BOUND.
        TRY.
            t455 ?= t281.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t455 IS BOUND.
          t453 = t455->source( ).
        ENDIF.
        IF t453 IS NOT BOUND.
          CREATE OBJECT t453.
          t453->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t453->oval = t281.
        ENDIF.
      ENDIF.
    ENDIF.
    t324->load( ).
    APPEND t453 TO t324->items.
    t324->save( ).
    t313 = zcl_lnt_st_combi_module=>per( i_first = t315 i_second = t320 i_rest = t324 ).
    IF t313 IS BOUND.
      DATA t461 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t462 TYPE REF TO object.
      t462 = t313.
      TRY.
          t312 ?= t462.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t312 IS NOT BOUND.
        TRY.
            t461 ?= t313.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t461 IS BOUND.
          t312 = t461->source( ).
        ENDIF.
        IF t312 IS NOT BOUND.
          CREATE OBJECT t312.
          t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t312->oval = t313.
        ENDIF.
      ENDIF.
    ENDIF.
    t309->load( ).
    APPEND t312 TO t309->items.
    t309->save( ).
    t301 = zcl_lnt_st_combi_module=>seq( i_first = t304 i_second = t307 i_rest = t309 ).
    DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t301 IS BOUND.
      DATA t471 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t472 TYPE REF TO object.
      t472 = t301.
      TRY.
          t469 ?= t472.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t469 IS NOT BOUND.
        TRY.
            t471 ?= t301.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t471 IS BOUND.
          t469 = t471->source( ).
        ENDIF.
        IF t469 IS NOT BOUND.
          CREATE OBJECT t469.
          t469->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t469->oval = t301.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t469 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d608_0e7608355779.
  ENDMETHOD.

  METHOD zif_lnt_statement~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement~get_matcher.
    result = me->get_matcher( ).
  ENDMETHOD.

  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
