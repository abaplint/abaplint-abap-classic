* TS: src/abap/2_statements/statements/new_page.ts:7:1 NewPage
CLASS zcl_lnt_new_page DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_new_page IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |LINE-SIZE|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    t18->sval = |PRINT|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = |OFF|.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t27.
    t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t27->sval = |ON|.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t30.
    t22 = zcl_lnt_st_combi_module=>alt( i_first = t24 i_second = t27 i_rest = t30 ).
    IF t22 IS BOUND.
      DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t21 ?= t22.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t35 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t35 IS BOUND.
          t21 = t35->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    t15 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t21 i_rest = t38 ).
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = |PARAMETERS|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    t60->sval = |DESTINATION|.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    t74->sval = |ARCHIVE PARAMETERS|.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    t88->sval = |LINE-COUNT|.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t92) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    t102->sval = |COVER TEXT|.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t106) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    t116->sval = |SAP COVER PAGE|.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t120) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    t130->sval = |IMMEDIATELY|.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t134) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    t144->sval = |COPIES|.
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
    t158->sval = |KEEP IN SPOOL|.
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
    t172->sval = |LAYOUT|.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t176) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    t186->sval = |LIST AUTHORITY|.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t190) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    t200->sval = |DEPARTMENT|.
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
    t214->sval = |RECEIVER|.
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
    t228->sval = |LIST DATASET|.
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
    t242->sval = |LIST NAME|.
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
    t256->sval = |NEW LIST IDENTIFICATION|.
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
    t270->sval = |NEW-PAGE|.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t274 TYPE REF TO zif_lnt_statement_runnable.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t276 TYPE REF TO zif_lnt_statement_runnable.
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t280 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t278 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t278 IS NOT BOUND.
        TRY.
            t280 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t280 IS BOUND.
          t278 = t280->source( ).
        ENDIF.
        IF t278 IS NOT BOUND.
          CREATE OBJECT t278.
          t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t278->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t286.
    t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t286->sval = |NO-TITLE|.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t289.
    t289->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t289->sval = |WITH-TITLE|.
    DATA t292 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t292.
    t284 = zcl_lnt_st_combi_module=>alt( i_first = t286 i_second = t289 i_rest = t292 ).
    IF t284 IS BOUND.
      DATA t297 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t283 ?= t284.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t283 IS NOT BOUND.
        TRY.
            t297 ?= t284.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t297 IS BOUND.
          t283 = t297->source( ).
        ENDIF.
        IF t283 IS NOT BOUND.
          CREATE OBJECT t283.
          t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t283->oval = t284.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t299 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t299.
    DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t303 TYPE REF TO zif_lnt_statement_runnable.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t305.
    t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t305->sval = |NO-HEADING|.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t308.
    t308->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t308->sval = |WITH-HEADING|.
    DATA t311 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t311.
    t303 = zcl_lnt_st_combi_module=>alt( i_first = t305 i_second = t308 i_rest = t311 ).
    IF t303 IS BOUND.
      DATA t316 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t302 ?= t303.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t302 IS NOT BOUND.
        TRY.
            t316 ?= t303.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t316 IS BOUND.
          t302 = t316->source( ).
        ENDIF.
        IF t302 IS NOT BOUND.
          CREATE OBJECT t302.
          t302->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t302->oval = t303.
        ENDIF.
      ENDIF.
    ENDIF.
    t299->load( ).
    APPEND t302 TO t299->items.
    t299->save( ).
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t319.
    t319->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t319->sval = |NO DIALOG|.
    t299->load( ).
    APPEND t319 TO t299->items.
    t299->save( ).
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t322.
    t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t322->sval = |NO-TOPOFPAGE|.
    t299->load( ).
    APPEND t322 TO t299->items.
    t299->save( ).
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t43 IS BOUND.
      DATA t327 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t325 ?= t43.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t325 IS NOT BOUND.
        TRY.
            t327 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t327 IS BOUND.
          t325 = t327->source( ).
        ENDIF.
        IF t325 IS NOT BOUND.
          CREATE OBJECT t325.
          t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t325->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    t299->load( ).
    APPEND t325 TO t299->items.
    t299->save( ).
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t183 IS BOUND.
      DATA t332 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t330 ?= t183.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t330 IS NOT BOUND.
        TRY.
            t332 ?= t183.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t332 IS BOUND.
          t330 = t332->source( ).
        ENDIF.
        IF t330 IS NOT BOUND.
          CREATE OBJECT t330.
          t330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t330->oval = t183.
        ENDIF.
      ENDIF.
    ENDIF.
    t299->load( ).
    APPEND t330 TO t299->items.
    t299->save( ).
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t127 IS BOUND.
      DATA t337 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t335 ?= t127.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t335 IS NOT BOUND.
        TRY.
            t337 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t337 IS BOUND.
          t335 = t337->source( ).
        ENDIF.
        IF t335 IS NOT BOUND.
          CREATE OBJECT t335.
          t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t335->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    t299->load( ).
    APPEND t335 TO t299->items.
    t299->save( ).
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t225 IS BOUND.
      DATA t342 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t340 ?= t225.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t340 IS NOT BOUND.
        TRY.
            t342 ?= t225.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t342 IS BOUND.
          t340 = t342->source( ).
        ENDIF.
        IF t340 IS NOT BOUND.
          CREATE OBJECT t340.
          t340->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t340->oval = t225.
        ENDIF.
      ENDIF.
    ENDIF.
    t299->load( ).
    APPEND t340 TO t299->items.
    t299->save( ).
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t113 IS BOUND.
      DATA t347 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t345 ?= t113.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t345 IS NOT BOUND.
        TRY.
            t347 ?= t113.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t347 IS BOUND.
          t345 = t347->source( ).
        ENDIF.
        IF t345 IS NOT BOUND.
          CREATE OBJECT t345.
          t345->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t345->oval = t113.
        ENDIF.
      ENDIF.
    ENDIF.
    t299->load( ).
    APPEND t345 TO t299->items.
    t299->save( ).
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t253 IS BOUND.
      DATA t352 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t350 ?= t253.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t350 IS NOT BOUND.
        TRY.
            t352 ?= t253.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t352 IS BOUND.
          t350 = t352->source( ).
        ENDIF.
        IF t350 IS NOT BOUND.
          CREATE OBJECT t350.
          t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t350->oval = t253.
        ENDIF.
      ENDIF.
    ENDIF.
    t299->load( ).
    APPEND t350 TO t299->items.
    t299->save( ).
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t155 IS BOUND.
      DATA t357 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t355 ?= t155.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t355 IS NOT BOUND.
        TRY.
            t357 ?= t155.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t357 IS BOUND.
          t355 = t357->source( ).
        ENDIF.
        IF t355 IS NOT BOUND.
          CREATE OBJECT t355.
          t355->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t355->oval = t155.
        ENDIF.
      ENDIF.
    ENDIF.
    t299->load( ).
    APPEND t355 TO t299->items.
    t299->save( ).
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t197 IS BOUND.
      DATA t362 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t360 ?= t197.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t360 IS NOT BOUND.
        TRY.
            t362 ?= t197.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t362 IS BOUND.
          t360 = t362->source( ).
        ENDIF.
        IF t360 IS NOT BOUND.
          CREATE OBJECT t360.
          t360->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t360->oval = t197.
        ENDIF.
      ENDIF.
    ENDIF.
    t299->load( ).
    APPEND t360 TO t299->items.
    t299->save( ).
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t239 IS BOUND.
      DATA t367 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t365 ?= t239.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t365 IS NOT BOUND.
        TRY.
            t367 ?= t239.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t367 IS BOUND.
          t365 = t367->source( ).
        ENDIF.
        IF t365 IS NOT BOUND.
          CREATE OBJECT t365.
          t365->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t365->oval = t239.
        ENDIF.
      ENDIF.
    ENDIF.
    t299->load( ).
    APPEND t365 TO t299->items.
    t299->save( ).
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t169 IS BOUND.
      DATA t372 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t370 ?= t169.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t370 IS NOT BOUND.
        TRY.
            t372 ?= t169.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t372 IS BOUND.
          t370 = t372->source( ).
        ENDIF.
        IF t370 IS NOT BOUND.
          CREATE OBJECT t370.
          t370->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t370->oval = t169.
        ENDIF.
      ENDIF.
    ENDIF.
    t299->load( ).
    APPEND t370 TO t299->items.
    t299->save( ).
    DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57 IS BOUND.
      DATA t377 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t375 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t375 IS NOT BOUND.
        TRY.
            t377 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t377 IS BOUND.
          t375 = t377->source( ).
        ENDIF.
        IF t375 IS NOT BOUND.
          CREATE OBJECT t375.
          t375->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t375->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    t299->load( ).
    APPEND t375 TO t299->items.
    t299->save( ).
    DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t211 IS BOUND.
      DATA t382 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t380 ?= t211.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t380 IS NOT BOUND.
        TRY.
            t382 ?= t211.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t382 IS BOUND.
          t380 = t382->source( ).
        ENDIF.
        IF t380 IS NOT BOUND.
          CREATE OBJECT t380.
          t380->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t380->oval = t211.
        ENDIF.
      ENDIF.
    ENDIF.
    t299->load( ).
    APPEND t380 TO t299->items.
    t299->save( ).
    DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t141 IS BOUND.
      DATA t387 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t385 ?= t141.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t385 IS NOT BOUND.
        TRY.
            t387 ?= t141.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t387 IS BOUND.
          t385 = t387->source( ).
        ENDIF.
        IF t385 IS NOT BOUND.
          CREATE OBJECT t385.
          t385->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t385->oval = t141.
        ENDIF.
      ENDIF.
    ENDIF.
    t299->load( ).
    APPEND t385 TO t299->items.
    t299->save( ).
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t99 IS BOUND.
      DATA t392 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t390 ?= t99.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t390 IS NOT BOUND.
        TRY.
            t392 ?= t99.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t392 IS BOUND.
          t390 = t392->source( ).
        ENDIF.
        IF t390 IS NOT BOUND.
          CREATE OBJECT t390.
          t390->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t390->oval = t99.
        ENDIF.
      ENDIF.
    ENDIF.
    t299->load( ).
    APPEND t390 TO t299->items.
    t299->save( ).
    DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t71 IS BOUND.
      DATA t397 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t395 ?= t71.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t395 IS NOT BOUND.
        TRY.
            t397 ?= t71.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t397 IS BOUND.
          t395 = t397->source( ).
        ENDIF.
        IF t395 IS NOT BOUND.
          CREATE OBJECT t395.
          t395->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t395->oval = t71.
        ENDIF.
      ENDIF.
    ENDIF.
    t299->load( ).
    APPEND t395 TO t299->items.
    t299->save( ).
    DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t400.
    t400->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t400->sval = |NEW-SECTION|.
    t299->load( ).
    APPEND t400 TO t299->items.
    t299->save( ).
    DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t85 IS BOUND.
      DATA t405 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t403 ?= t85.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t403 IS NOT BOUND.
        TRY.
            t405 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t405 IS BOUND.
          t403 = t405->source( ).
        ENDIF.
        IF t403 IS NOT BOUND.
          CREATE OBJECT t403.
          t403->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t403->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    t299->load( ).
    APPEND t403 TO t299->items.
    t299->save( ).
    DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t410 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t408 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t408 IS NOT BOUND.
        TRY.
            t410 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t410 IS BOUND.
          t408 = t410->source( ).
        ENDIF.
        IF t408 IS NOT BOUND.
          CREATE OBJECT t408.
          t408->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t408->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t299->load( ).
    APPEND t408 TO t299->items.
    t299->save( ).
    t276 = zcl_lnt_st_combi_module=>per( i_first = t278 i_second = t283 i_rest = t299 ).
    IF t276 IS BOUND.
      DATA t416 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t275 ?= t276.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t275 IS NOT BOUND.
        TRY.
            t416 ?= t276.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t416 IS BOUND.
          t275 = t416->source( ).
        ENDIF.
        IF t275 IS NOT BOUND.
          CREATE OBJECT t275.
          t275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t275->oval = t276.
        ENDIF.
      ENDIF.
    ENDIF.
    t274 = zcl_lnt_st_combi_module=>opt( i_first = t275 ).
    IF t274 IS BOUND.
      DATA t418 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t273 ?= t274.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t273 IS NOT BOUND.
        TRY.
            t418 ?= t274.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t418 IS BOUND.
          t273 = t418->source( ).
        ENDIF.
        IF t273 IS NOT BOUND.
          CREATE OBJECT t273.
          t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t273->oval = t274.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t421 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t421.
    t267 = zcl_lnt_st_combi_module=>seq( i_first = t270 i_second = t273 i_rest = t421 ).
    DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t267 IS BOUND.
      DATA t430 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t428 ?= t267.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t428 IS NOT BOUND.
        TRY.
            t430 ?= t267.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t430 IS BOUND.
          t428 = t430->source( ).
        ENDIF.
        IF t428 IS NOT BOUND.
          CREATE OBJECT t428.
          t428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t428->oval = t267.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t428 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d565_243825abe528.
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
