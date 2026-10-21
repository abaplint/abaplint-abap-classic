* TS: src/abap/2_statements/expressions/type_table_key.ts:6:1 TypeTableKey
CLASS zcl_lnt_st_type_table_key DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_type_table_key IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |NON-UNIQUE|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |UNIQUE|.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t1 = zcl_lnt_st_combi_module=>alt( i_first = t4 i_second = t7 i_rest = t10 ).
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t20 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp02| ).
    IF t20 IS BOUND.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t25 TYPE REF TO object.
      t25 = t20.
      TRY.
          t19 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t19 IS NOT BOUND.
        TRY.
            t24 ?= t20.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t19 = t24->source( ).
        ENDIF.
        IF t19 IS NOT BOUND.
          CREATE OBJECT t19.
          t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t19->oval = t20.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t26.
    t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t26->sval = |EMPTY KEY|.
    DATA t30 TYPE REF TO zcl_lnt_iver_options.
    DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t35->has = abap_true.
    t35->value = |OpenABAP|.
    t30 = NEW zcl_lnt_iver_options( i_also = t35 ).
    CREATE OBJECT t30->zlnt_view_ownkeys_b0e8086400eb.
    t30->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t30->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t37 ).
    CREATE OBJECT t30->zlnt_json_ownkeys_70e5fd461788.
    t30->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t30->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t39 ).
    t17 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t19 i_first = t26 i_opts = t30 ).
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA t48 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t48.
    t48->load( ).
    APPEND |WITH| TO t48->items.
    t48->save( ).
    t48->load( ).
    APPEND |INITIAL| TO t48->items.
    t48->save( ).
    t48->load( ).
    APPEND |WITHOUT| TO t48->items.
    t48->save( ).
    t47 = zcl_lnt_st_combi_module=>stop_before1( i_words = t48 ).
    IF t47 IS BOUND.
      DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t46 ?= t47.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t46 IS NOT BOUND.
        TRY.
            t58 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t58 IS BOUND.
          t46 = t58->source( ).
        ENDIF.
        IF t46 IS NOT BOUND.
          CREATE OBJECT t46.
          t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t46->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    t62 = zcl_lnt_st_combi_module=>stop_before( i_t1 = |READ| i_t2 = |-| ).
    IF t62 IS BOUND.
      DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t61 ?= t62.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t61 IS NOT BOUND.
        TRY.
            t65 ?= t62.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t65 IS BOUND.
          t61 = t65->source( ).
        ENDIF.
        IF t61 IS NOT BOUND.
          CREATE OBJECT t61.
          t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t61->oval = t62.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t67.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t71) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    IF t71 IS BOUND.
      CREATE OBJECT t70.
      t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t70->cval = t71.
    ENDIF.
    t67->load( ).
    APPEND t70 TO t67->items.
    t67->save( ).
    t44 = zcl_lnt_st_combi_module=>seq( i_first = t46 i_second = t61 i_rest = t67 ).
    IF t44 IS BOUND.
      DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t43 ?= t44.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t43 IS NOT BOUND.
        TRY.
            t76 ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t76 IS BOUND.
          t43 = t76->source( ).
        ENDIF.
        IF t43 IS NOT BOUND.
          CREATE OBJECT t43.
          t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t43->oval = t44.
        ENDIF.
      ENDIF.
    ENDIF.
    t41 = zcl_lnt_st_combi_module=>plus_prio( i_first = t43 ).
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t84.
    t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t84->sval = |WITHOUT|.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t87.
    t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t87->sval = |WITH|.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t90.
    t82 = zcl_lnt_st_combi_module=>alt( i_first = t84 i_second = t87 i_rest = t90 ).
    IF t82 IS BOUND.
      DATA t95 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t81 ?= t82.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t81 IS NOT BOUND.
        TRY.
            t95 ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t95 IS BOUND.
          t81 = t95->source( ).
        ENDIF.
        IF t81 IS NOT BOUND.
          CREATE OBJECT t81.
          t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t81->oval = t82.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t98.
    t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t98->sval = |FURTHER SECONDARY KEYS|.
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t101.
    t78 = zcl_lnt_st_combi_module=>seq( i_first = t81 i_second = t98 i_rest = t101 ).
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t109.
    t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t109->sval = |ALIAS|.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t113) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    IF t113 IS BOUND.
      CREATE OBJECT t112.
      t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t112->cval = t113.
    ENDIF.
    DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t115.
    t106 = zcl_lnt_st_combi_module=>seq( i_first = t109 i_second = t112 i_rest = t115 ).
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t123.
    t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t123->sval = |WITH|.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t130 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t128 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t128 IS NOT BOUND.
        TRY.
            t130 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t130 IS BOUND.
          t128 = t130->source( ).
        ENDIF.
        IF t128 IS NOT BOUND.
          CREATE OBJECT t128.
          t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t128->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t127 = zcl_lnt_st_combi_module=>opt_prio( i_first = t128 ).
    IF t127 IS BOUND.
      DATA t132 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t126 ?= t127.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t126 IS NOT BOUND.
        TRY.
            t132 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t132 IS BOUND.
          t126 = t132->source( ).
        ENDIF.
        IF t126 IS NOT BOUND.
          CREATE OBJECT t126.
          t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t126->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t134.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t140.
    t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t140->sval = |DEFAULT KEY|.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t17 IS BOUND.
      DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t143 ?= t17.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t143 IS NOT BOUND.
        TRY.
            t145 ?= t17.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t145 IS BOUND.
          t143 = t145->source( ).
        ENDIF.
        IF t143 IS NOT BOUND.
          CREATE OBJECT t143.
          t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t143->oval = t17.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t147.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t158.
    t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t158->sval = |SORTED|.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t161.
    t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t161->sval = |HASHED|.
    DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t164.
    t156 = zcl_lnt_st_combi_module=>alt( i_first = t158 i_second = t161 i_rest = t164 ).
    IF t156 IS BOUND.
      DATA t169 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t155 ?= t156.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t155 IS NOT BOUND.
        TRY.
            t169 ?= t156.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t169 IS BOUND.
          t155 = t169->source( ).
        ENDIF.
        IF t155 IS NOT BOUND.
          CREATE OBJECT t155.
          t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t155->oval = t156.
        ENDIF.
      ENDIF.
    ENDIF.
    t154 = zcl_lnt_st_combi_module=>opt( i_first = t155 ).
    IF t154 IS BOUND.
      DATA t171 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t153 ?= t154.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t153 IS NOT BOUND.
        TRY.
            t171 ?= t154.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t171 IS BOUND.
          t153 = t171->source( ).
        ENDIF.
        IF t153 IS NOT BOUND.
          CREATE OBJECT t153.
          t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t153->oval = t154.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t174.
    t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t174->sval = |KEY|.
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t176.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t180 TYPE REF TO zif_lnt_statement_runnable.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t183 TYPE REF TO zif_lnt_statement_runnable.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t186) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    IF t186 IS BOUND.
      CREATE OBJECT t185.
      t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t185->cval = t186.
    ENDIF.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t106 IS BOUND.
      DATA t192 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t190 ?= t106.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t190 IS NOT BOUND.
        TRY.
            t192 ?= t106.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t192 IS BOUND.
          t190 = t192->source( ).
        ENDIF.
        IF t190 IS NOT BOUND.
          CREATE OBJECT t190.
          t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t190->oval = t106.
        ENDIF.
      ENDIF.
    ENDIF.
    t189 = zcl_lnt_st_combi_module=>opt( i_first = t190 ).
    IF t189 IS BOUND.
      DATA t194 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t188 ?= t189.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t188 IS NOT BOUND.
        TRY.
            t194 ?= t189.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t194 IS BOUND.
          t188 = t194->source( ).
        ENDIF.
        IF t188 IS NOT BOUND.
          CREATE OBJECT t188.
          t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t188->oval = t189.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t196.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t199.
    t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t199->sval = |COMPONENTS|.
    t196->load( ).
    APPEND t199 TO t196->items.
    t196->save( ).
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t41 IS BOUND.
      DATA t204 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t202 ?= t41.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t202 IS NOT BOUND.
        TRY.
            t204 ?= t41.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t204 IS BOUND.
          t202 = t204->source( ).
        ENDIF.
        IF t202 IS NOT BOUND.
          CREATE OBJECT t202.
          t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t202->oval = t41.
        ENDIF.
      ENDIF.
    ENDIF.
    t196->load( ).
    APPEND t202 TO t196->items.
    t196->save( ).
    t183 = zcl_lnt_st_combi_module=>seq( i_first = t185 i_second = t188 i_rest = t196 ).
    IF t183 IS BOUND.
      DATA t210 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t182 ?= t183.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t182 IS NOT BOUND.
        TRY.
            t210 ?= t183.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t210 IS BOUND.
          t182 = t210->source( ).
        ENDIF.
        IF t182 IS NOT BOUND.
          CREATE OBJECT t182.
          t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t182->oval = t183.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t41 IS BOUND.
      DATA t215 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t213 ?= t41.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t213 IS NOT BOUND.
        TRY.
            t215 ?= t41.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t215 IS BOUND.
          t213 = t215->source( ).
        ENDIF.
        IF t213 IS NOT BOUND.
          CREATE OBJECT t213.
          t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t213->oval = t41.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t218 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t218.
    t180 = zcl_lnt_st_combi_module=>alt_prio( i_first = t182 i_second = t213 i_rest = t218 ).
    IF t180 IS BOUND.
      DATA t223 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t179 ?= t180.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t179 IS NOT BOUND.
        TRY.
            t223 ?= t180.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t223 IS BOUND.
          t179 = t223->source( ).
        ENDIF.
        IF t179 IS NOT BOUND.
          CREATE OBJECT t179.
          t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t179->oval = t180.
        ENDIF.
      ENDIF.
    ENDIF.
    t176->load( ).
    APPEND t179 TO t176->items.
    t176->save( ).
    t151 = zcl_lnt_st_combi_module=>seq( i_first = t153 i_second = t174 i_rest = t176 ).
    IF t151 IS BOUND.
      DATA t229 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t150 ?= t151.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t150 IS NOT BOUND.
        TRY.
            t229 ?= t151.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t229 IS BOUND.
          t150 = t229->source( ).
        ENDIF.
        IF t150 IS NOT BOUND.
          CREATE OBJECT t150.
          t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t150->oval = t151.
        ENDIF.
      ENDIF.
    ENDIF.
    t147->load( ).
    APPEND t150 TO t147->items.
    t147->save( ).
    t138 = zcl_lnt_st_combi_module=>alt_prio( i_first = t140 i_second = t143 i_rest = t147 ).
    IF t138 IS BOUND.
      DATA t235 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t137 ?= t138.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t137 IS NOT BOUND.
        TRY.
            t235 ?= t138.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t235 IS BOUND.
          t137 = t235->source( ).
        ENDIF.
        IF t137 IS NOT BOUND.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t137->oval = t138.
        ENDIF.
      ENDIF.
    ENDIF.
    t134->load( ).
    APPEND t137 TO t134->items.
    t134->save( ).
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t239 TYPE REF TO zif_lnt_statement_runnable.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t78 IS BOUND.
      DATA t242 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t240 ?= t78.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t240 IS NOT BOUND.
        TRY.
            t242 ?= t78.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t242 IS BOUND.
          t240 = t242->source( ).
        ENDIF.
        IF t240 IS NOT BOUND.
          CREATE OBJECT t240.
          t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t240->oval = t78.
        ENDIF.
      ENDIF.
    ENDIF.
    t239 = zcl_lnt_st_combi_module=>opt_prio( i_first = t240 ).
    IF t239 IS BOUND.
      DATA t244 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t238 ?= t239.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t238 IS NOT BOUND.
        TRY.
            t244 ?= t239.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t244 IS BOUND.
          t238 = t244->source( ).
        ENDIF.
        IF t238 IS NOT BOUND.
          CREATE OBJECT t238.
          t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t238->oval = t239.
        ENDIF.
      ENDIF.
    ENDIF.
    t134->load( ).
    APPEND t238 TO t134->items.
    t134->save( ).
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t248 TYPE REF TO zif_lnt_statement_runnable.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t249.
    t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t249->sval = |READ-ONLY|.
    t248 = zcl_lnt_st_combi_module=>opt_prio( i_first = t249 ).
    IF t248 IS BOUND.
      DATA t251 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t247 ?= t248.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t247 IS NOT BOUND.
        TRY.
            t251 ?= t248.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t251 IS BOUND.
          t247 = t251->source( ).
        ENDIF.
        IF t247 IS NOT BOUND.
          CREATE OBJECT t247.
          t247->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t247->oval = t248.
        ENDIF.
      ENDIF.
    ENDIF.
    t134->load( ).
    APPEND t247 TO t134->items.
    t134->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t123 i_second = t126 i_rest = t134 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d353_58ca0f41496e.
  ENDMETHOD.
ENDCLASS.
