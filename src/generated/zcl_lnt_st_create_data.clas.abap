* TS: src/abap/2_statements/statements/create_data.ts:8:1 CreateData
CLASS zcl_lnt_st_create_data DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_create_data IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |AREA HANDLE|.
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
    t18->sval = |TYPE HANDLE|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t35->sval = |TYPE|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t38.
    t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t38->sval = |TYPE REF TO|.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t40.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t43.
    t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t43->sval = |TYPE TABLE OF|.
    t40->load( ).
    APPEND t43 TO t40->items.
    t40->save( ).
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = |TYPE TABLE OF REF TO|.
    t40->load( ).
    APPEND t46 TO t40->items.
    t40->save( ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t49.
    t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t49->sval = |TYPE SORTED TABLE OF|.
    t40->load( ).
    APPEND t49 TO t40->items.
    t40->save( ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t52.
    t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t52->sval = |TYPE HASHED TABLE OF|.
    t40->load( ).
    APPEND t52 TO t40->items.
    t40->save( ).
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t55.
    t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t55->sval = |TYPE STANDARD TABLE OF|.
    t40->load( ).
    APPEND t55 TO t40->items.
    t40->save( ).
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = |TYPE LINE OF|.
    t40->load( ).
    APPEND t58 TO t40->items.
    t40->save( ).
    t33 = zcl_lnt_st_combi_module=>alt( i_first = t35 i_second = t38 i_rest = t40 ).
    IF t33 IS BOUND.
      DATA t64 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t65 TYPE REF TO object.
      t65 = t33.
      TRY.
          t32 ?= t65.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t32 IS NOT BOUND.
        TRY.
            t64 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t64 IS BOUND.
          t32 = t64->source( ).
        ENDIF.
        IF t32 IS NOT BOUND.
          CREATE OBJECT t32.
          t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t32->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t71) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t71 IS BOUND.
      CREATE OBJECT t70.
      t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t70->cval = t71.
    ENDIF.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t73->cval = t74.
    ENDIF.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t76.
    t68 = zcl_lnt_st_combi_module=>alt( i_first = t70 i_second = t73 i_rest = t76 ).
    IF t68 IS BOUND.
      DATA t81 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t82 TYPE REF TO object.
      t82 = t68.
      TRY.
          t67 ?= t82.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t67 IS NOT BOUND.
        TRY.
            t81 ?= t68.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t81 IS BOUND.
          t67 = t81->source( ).
        ENDIF.
        IF t67 IS NOT BOUND.
          CREATE OBJECT t67.
          t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t67->oval = t68.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t84.
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t32 i_second = t67 i_rest = t84 ).
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t95.
    t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t95->sval = |LIKE|.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t98.
    t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t98->sval = |LIKE HASHED TABLE OF|.
    DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t100.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t103.
    t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t103->sval = |LIKE LINE OF|.
    t100->load( ).
    APPEND t103 TO t100->items.
    t100->save( ).
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t106.
    t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t106->sval = |LIKE STANDARD TABLE OF|.
    t100->load( ).
    APPEND t106 TO t100->items.
    t100->save( ).
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t109.
    t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t109->sval = |LIKE SORTED TABLE OF|.
    t100->load( ).
    APPEND t109 TO t100->items.
    t100->save( ).
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t112.
    t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t112->sval = |LIKE TABLE OF|.
    t100->load( ).
    APPEND t112 TO t100->items.
    t100->save( ).
    t93 = zcl_lnt_st_combi_module=>alt( i_first = t95 i_second = t98 i_rest = t100 ).
    IF t93 IS BOUND.
      DATA t118 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t119 TYPE REF TO object.
      t119 = t93.
      TRY.
          t92 ?= t119.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t92 IS NOT BOUND.
        TRY.
            t118 ?= t93.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t118 IS BOUND.
          t92 = t118->source( ).
        ENDIF.
        IF t92 IS NOT BOUND.
          CREATE OBJECT t92.
          t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t92->oval = t93.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t125) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t125 IS BOUND.
      CREATE OBJECT t124.
      t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t124->cval = t125.
    ENDIF.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t128) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t128 IS BOUND.
      CREATE OBJECT t127.
      t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t127->cval = t128.
    ENDIF.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t130.
    t122 = zcl_lnt_st_combi_module=>alt( i_first = t124 i_second = t127 i_rest = t130 ).
    IF t122 IS BOUND.
      DATA t135 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t136 TYPE REF TO object.
      t136 = t122.
      TRY.
          t121 ?= t136.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t121 IS NOT BOUND.
        TRY.
            t135 ?= t122.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t135 IS BOUND.
          t121 = t135->source( ).
        ENDIF.
        IF t121 IS NOT BOUND.
          CREATE OBJECT t121.
          t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t121->oval = t122.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t138.
    t89 = zcl_lnt_st_combi_module=>seq( i_first = t92 i_second = t121 i_rest = t138 ).
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t146.
    t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t146->sval = |LENGTH|.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t150) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t150 IS BOUND.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t149->cval = t150.
    ENDIF.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t152.
    t143 = zcl_lnt_st_combi_module=>seq( i_first = t146 i_second = t149 i_rest = t152 ).
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t160.
    t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t160->sval = |INITIAL SIZE|.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t164) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t164 IS BOUND.
      CREATE OBJECT t163.
      t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t163->cval = t164.
    ENDIF.
    DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t166.
    t157 = zcl_lnt_st_combi_module=>seq( i_first = t160 i_second = t163 i_rest = t166 ).
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t174.
    t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t174->sval = |DECIMALS|.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t178) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t178 IS BOUND.
      CREATE OBJECT t177.
      t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t177->cval = t178.
    ENDIF.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t180.
    t171 = zcl_lnt_st_combi_module=>seq( i_first = t174 i_second = t177 i_rest = t180 ).
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t188.
    t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t188->sval = |UNIQUE|.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t191.
    t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t191->sval = |NON-UNIQUE|.
    DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t194.
    t185 = zcl_lnt_st_combi_module=>alt( i_first = t188 i_second = t191 i_rest = t194 ).
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t202 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t202 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp02| ).
    IF t202 IS BOUND.
      DATA t206 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t207 TYPE REF TO object.
      t207 = t202.
      TRY.
          t201 ?= t207.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t201 IS NOT BOUND.
        TRY.
            t206 ?= t202.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t206 IS BOUND.
          t201 = t206->source( ).
        ENDIF.
        IF t201 IS NOT BOUND.
          CREATE OBJECT t201.
          t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t201->oval = t202.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t208.
    t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t208->sval = |EMPTY KEY|.
    DATA t212 TYPE REF TO zcl_lnt_iver_options.
    DATA(t217) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t217->has = abap_true.
    t217->value = |OpenABAP|.
    t212 = NEW zcl_lnt_iver_options( i_also = t217 ).
    CREATE OBJECT t212->zlnt_view_ownkeys_b0e8086400eb.
    t212->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t212->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t219 ).
    CREATE OBJECT t212->zlnt_json_ownkeys_70e5fd461788.
    t212->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t212->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t221 ).
    t199 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t201 i_first = t208 i_opts = t212 ).
    DATA t223 TYPE REF TO zif_lnt_statement_runnable.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t227 TYPE REF TO zif_lnt_statement_runnable.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t185 IS BOUND.
      DATA t230 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t231 TYPE REF TO object.
      t231 = t185.
      TRY.
          t228 ?= t231.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t228 IS NOT BOUND.
        TRY.
            t230 ?= t185.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t230 IS BOUND.
          t228 = t230->source( ).
        ENDIF.
        IF t228 IS NOT BOUND.
          CREATE OBJECT t228.
          t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t228->oval = t185.
        ENDIF.
      ENDIF.
    ENDIF.
    t227 = zcl_lnt_st_combi_module=>opt( i_first = t228 ).
    IF t227 IS BOUND.
      DATA t232 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t233 TYPE REF TO object.
      t233 = t227.
      TRY.
          t226 ?= t233.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t226 IS NOT BOUND.
        TRY.
            t232 ?= t227.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t232 IS BOUND.
          t226 = t232->source( ).
        ENDIF.
        IF t226 IS NOT BOUND.
          CREATE OBJECT t226.
          t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t226->oval = t227.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t236 TYPE REF TO zif_lnt_statement_runnable.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t238.
    t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t238->sval = |DEFAULT KEY|.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t199 IS BOUND.
      DATA t243 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t244 TYPE REF TO object.
      t244 = t199.
      TRY.
          t241 ?= t244.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t241 IS NOT BOUND.
        TRY.
            t243 ?= t199.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t243 IS BOUND.
          t241 = t243->source( ).
        ENDIF.
        IF t241 IS NOT BOUND.
          CREATE OBJECT t241.
          t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t241->oval = t199.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t246.
    t236 = zcl_lnt_st_combi_module=>alt( i_first = t238 i_second = t241 i_rest = t246 ).
    IF t236 IS BOUND.
      DATA t251 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t252 TYPE REF TO object.
      t252 = t236.
      TRY.
          t235 ?= t252.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t235 IS NOT BOUND.
        TRY.
            t251 ?= t236.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t251 IS BOUND.
          t235 = t251->source( ).
        ENDIF.
        IF t235 IS NOT BOUND.
          CREATE OBJECT t235.
          t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t235->oval = t236.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t254.
    t223 = zcl_lnt_st_combi_module=>seq( i_first = t226 i_second = t235 i_rest = t254 ).
    DATA t259 TYPE REF TO zif_lnt_statement_runnable.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t263 TYPE REF TO zif_lnt_statement_runnable.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t185 IS BOUND.
      DATA t266 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t267 TYPE REF TO object.
      t267 = t185.
      TRY.
          t264 ?= t267.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t264 IS NOT BOUND.
        TRY.
            t266 ?= t185.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t266 IS BOUND.
          t264 = t266->source( ).
        ENDIF.
        IF t264 IS NOT BOUND.
          CREATE OBJECT t264.
          t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t264->oval = t185.
        ENDIF.
      ENDIF.
    ENDIF.
    t263 = zcl_lnt_st_combi_module=>opt( i_first = t264 ).
    IF t263 IS BOUND.
      DATA t268 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t269 TYPE REF TO object.
      t269 = t263.
      TRY.
          t262 ?= t269.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t262 IS NOT BOUND.
        TRY.
            t268 ?= t263.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t268 IS BOUND.
          t262 = t268->source( ).
        ENDIF.
        IF t262 IS NOT BOUND.
          CREATE OBJECT t262.
          t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t262->oval = t263.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t271.
    t271->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t271->sval = |KEY|.
    DATA t273 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t273.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t277 TYPE REF TO zif_lnt_statement_runnable.
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t280 TYPE REF TO zif_lnt_statement_runnable.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t282) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    IF t282 IS BOUND.
      CREATE OBJECT t281.
      t281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t281->cval = t282.
    ENDIF.
    t280 = zcl_lnt_st_combi_module=>plus( i_first = t281 ).
    IF t280 IS BOUND.
      DATA t283 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t284 TYPE REF TO object.
      t284 = t280.
      TRY.
          t279 ?= t284.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t279 IS NOT BOUND.
        TRY.
            t283 ?= t280.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t283 IS BOUND.
          t279 = t283->source( ).
        ENDIF.
        IF t279 IS NOT BOUND.
          CREATE OBJECT t279.
          t279->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t279->oval = t280.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t287) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t287 IS BOUND.
      CREATE OBJECT t286.
      t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t286->cval = t287.
    ENDIF.
    DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t289.
    t277 = zcl_lnt_st_combi_module=>alt( i_first = t279 i_second = t286 i_rest = t289 ).
    IF t277 IS BOUND.
      DATA t294 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t295 TYPE REF TO object.
      t295 = t277.
      TRY.
          t276 ?= t295.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t276 IS NOT BOUND.
        TRY.
            t294 ?= t277.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t294 IS BOUND.
          t276 = t294->source( ).
        ENDIF.
        IF t276 IS NOT BOUND.
          CREATE OBJECT t276.
          t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t276->oval = t277.
        ENDIF.
      ENDIF.
    ENDIF.
    t273->load( ).
    APPEND t276 TO t273->items.
    t273->save( ).
    t259 = zcl_lnt_st_combi_module=>seq( i_first = t262 i_second = t271 i_rest = t273 ).
    DATA t300 TYPE REF TO zif_lnt_statement_runnable.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t303.
    t303->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t303->sval = |WITH|.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t307 TYPE REF TO zif_lnt_statement_runnable.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t223 IS BOUND.
      DATA t311 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t312 TYPE REF TO object.
      t312 = t223.
      TRY.
          t309 ?= t312.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t309 IS NOT BOUND.
        TRY.
            t311 ?= t223.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t311 IS BOUND.
          t309 = t311->source( ).
        ENDIF.
        IF t309 IS NOT BOUND.
          CREATE OBJECT t309.
          t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t309->oval = t223.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t259 IS BOUND.
      DATA t316 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t317 TYPE REF TO object.
      t317 = t259.
      TRY.
          t314 ?= t317.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t314 IS NOT BOUND.
        TRY.
            t316 ?= t259.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t316 IS BOUND.
          t314 = t316->source( ).
        ENDIF.
        IF t314 IS NOT BOUND.
          CREATE OBJECT t314.
          t314->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t314->oval = t259.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t319 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t319.
    t307 = zcl_lnt_st_combi_module=>alt( i_first = t309 i_second = t314 i_rest = t319 ).
    IF t307 IS BOUND.
      DATA t324 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t325 TYPE REF TO object.
      t325 = t307.
      TRY.
          t306 ?= t325.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t306 IS NOT BOUND.
        TRY.
            t324 ?= t307.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t324 IS BOUND.
          t306 = t324->source( ).
        ENDIF.
        IF t306 IS NOT BOUND.
          CREATE OBJECT t306.
          t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t306->oval = t307.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t327 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t327.
    t300 = zcl_lnt_st_combi_module=>seq( i_first = t303 i_second = t306 i_rest = t327 ).
    DATA t332 TYPE REF TO zif_lnt_statement_runnable.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t336 TYPE REF TO zif_lnt_statement_runnable.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t340 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t341 TYPE REF TO object.
      t341 = t29.
      TRY.
          t338 ?= t341.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t338 IS NOT BOUND.
        TRY.
            t340 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t340 IS BOUND.
          t338 = t340->source( ).
        ENDIF.
        IF t338 IS NOT BOUND.
          CREATE OBJECT t338.
          t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t338->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89 IS BOUND.
      DATA t345 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t346 TYPE REF TO object.
      t346 = t89.
      TRY.
          t343 ?= t346.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t343 IS NOT BOUND.
        TRY.
            t345 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t345 IS BOUND.
          t343 = t345->source( ).
        ENDIF.
        IF t343 IS NOT BOUND.
          CREATE OBJECT t343.
          t343->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t343->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t348 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t348.
    t336 = zcl_lnt_st_combi_module=>alt( i_first = t338 i_second = t343 i_rest = t348 ).
    IF t336 IS BOUND.
      DATA t353 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t354 TYPE REF TO object.
      t354 = t336.
      TRY.
          t335 ?= t354.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t335 IS NOT BOUND.
        TRY.
            t353 ?= t336.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t353 IS BOUND.
          t335 = t353->source( ).
        ENDIF.
        IF t335 IS NOT BOUND.
          CREATE OBJECT t335.
          t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t335->oval = t336.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t357 TYPE REF TO zif_lnt_statement_runnable.
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t300 IS BOUND.
      DATA t360 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t361 TYPE REF TO object.
      t361 = t300.
      TRY.
          t358 ?= t361.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t358 IS NOT BOUND.
        TRY.
            t360 ?= t300.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t360 IS BOUND.
          t358 = t360->source( ).
        ENDIF.
        IF t358 IS NOT BOUND.
          CREATE OBJECT t358.
          t358->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t358->oval = t300.
        ENDIF.
      ENDIF.
    ENDIF.
    t357 = zcl_lnt_st_combi_module=>opt( i_first = t358 ).
    IF t357 IS BOUND.
      DATA t362 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t363 TYPE REF TO object.
      t363 = t357.
      TRY.
          t356 ?= t363.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t356 IS NOT BOUND.
        TRY.
            t362 ?= t357.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t362 IS BOUND.
          t356 = t362->source( ).
        ENDIF.
        IF t356 IS NOT BOUND.
          CREATE OBJECT t356.
          t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t356->oval = t357.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t364 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t364.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t368 TYPE REF TO zif_lnt_statement_runnable.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t157 IS BOUND.
      DATA t371 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t372 TYPE REF TO object.
      t372 = t157.
      TRY.
          t369 ?= t372.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t369 IS NOT BOUND.
        TRY.
            t371 ?= t157.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t371 IS BOUND.
          t369 = t371->source( ).
        ENDIF.
        IF t369 IS NOT BOUND.
          CREATE OBJECT t369.
          t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t369->oval = t157.
        ENDIF.
      ENDIF.
    ENDIF.
    t368 = zcl_lnt_st_combi_module=>opt( i_first = t369 ).
    IF t368 IS BOUND.
      DATA t373 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t374 TYPE REF TO object.
      t374 = t368.
      TRY.
          t367 ?= t374.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t367 IS NOT BOUND.
        TRY.
            t373 ?= t368.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t373 IS BOUND.
          t367 = t373->source( ).
        ENDIF.
        IF t367 IS NOT BOUND.
          CREATE OBJECT t367.
          t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t367->oval = t368.
        ENDIF.
      ENDIF.
    ENDIF.
    t364->load( ).
    APPEND t367 TO t364->items.
    t364->save( ).
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t377 TYPE REF TO zif_lnt_statement_runnable.
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t143 IS BOUND.
      DATA t380 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t381 TYPE REF TO object.
      t381 = t143.
      TRY.
          t378 ?= t381.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t378 IS NOT BOUND.
        TRY.
            t380 ?= t143.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t380 IS BOUND.
          t378 = t380->source( ).
        ENDIF.
        IF t378 IS NOT BOUND.
          CREATE OBJECT t378.
          t378->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t378->oval = t143.
        ENDIF.
      ENDIF.
    ENDIF.
    t377 = zcl_lnt_st_combi_module=>opt( i_first = t378 ).
    IF t377 IS BOUND.
      DATA t382 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t383 TYPE REF TO object.
      t383 = t377.
      TRY.
          t376 ?= t383.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t376 IS NOT BOUND.
        TRY.
            t382 ?= t377.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t382 IS BOUND.
          t376 = t382->source( ).
        ENDIF.
        IF t376 IS NOT BOUND.
          CREATE OBJECT t376.
          t376->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t376->oval = t377.
        ENDIF.
      ENDIF.
    ENDIF.
    t364->load( ).
    APPEND t376 TO t364->items.
    t364->save( ).
    DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t386 TYPE REF TO zif_lnt_statement_runnable.
    DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t171 IS BOUND.
      DATA t389 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t390 TYPE REF TO object.
      t390 = t171.
      TRY.
          t387 ?= t390.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t387 IS NOT BOUND.
        TRY.
            t389 ?= t171.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t389 IS BOUND.
          t387 = t389->source( ).
        ENDIF.
        IF t387 IS NOT BOUND.
          CREATE OBJECT t387.
          t387->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t387->oval = t171.
        ENDIF.
      ENDIF.
    ENDIF.
    t386 = zcl_lnt_st_combi_module=>opt( i_first = t387 ).
    IF t386 IS BOUND.
      DATA t391 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t392 TYPE REF TO object.
      t392 = t386.
      TRY.
          t385 ?= t392.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t385 IS NOT BOUND.
        TRY.
            t391 ?= t386.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t391 IS BOUND.
          t385 = t391->source( ).
        ENDIF.
        IF t385 IS NOT BOUND.
          CREATE OBJECT t385.
          t385->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t385->oval = t386.
        ENDIF.
      ENDIF.
    ENDIF.
    t364->load( ).
    APPEND t385 TO t364->items.
    t364->save( ).
    t332 = zcl_lnt_st_combi_module=>seq( i_first = t335 i_second = t356 i_rest = t364 ).
    DATA t397 TYPE REF TO zif_lnt_statement_runnable.
    DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t400.
    t400->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t400->sval = |CREATE DATA|.
    DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t404) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t404 IS BOUND.
      CREATE OBJECT t403.
      t403->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t403->cval = t404.
    ENDIF.
    DATA t405 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t405.
    DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t409 TYPE REF TO zif_lnt_statement_runnable.
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t411 TYPE REF TO zif_lnt_statement_runnable.
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t415 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t416 TYPE REF TO object.
      t416 = t15.
      TRY.
          t413 ?= t416.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t413 IS NOT BOUND.
        TRY.
            t415 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t415 IS BOUND.
          t413 = t415->source( ).
        ENDIF.
        IF t413 IS NOT BOUND.
          CREATE OBJECT t413.
          t413->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t413->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t419 TYPE REF TO zif_lnt_statement_runnable.
    DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t422 TYPE REF TO zif_lnt_statement_runnable.
    DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t425 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t426 TYPE REF TO object.
      t426 = t1.
      TRY.
          t423 ?= t426.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t423 IS NOT BOUND.
        TRY.
            t425 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t425 IS BOUND.
          t423 = t425->source( ).
        ENDIF.
        IF t423 IS NOT BOUND.
          CREATE OBJECT t423.
          t423->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t423->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t422 = zcl_lnt_st_combi_module=>opt( i_first = t423 ).
    IF t422 IS BOUND.
      DATA t427 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t428 TYPE REF TO object.
      t428 = t422.
      TRY.
          t421 ?= t428.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t421 IS NOT BOUND.
        TRY.
            t427 ?= t422.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t427 IS BOUND.
          t421 = t427->source( ).
        ENDIF.
        IF t421 IS NOT BOUND.
          CREATE OBJECT t421.
          t421->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t421->oval = t422.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t332 IS BOUND.
      DATA t432 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t433 TYPE REF TO object.
      t433 = t332.
      TRY.
          t430 ?= t433.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t430 IS NOT BOUND.
        TRY.
            t432 ?= t332.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t432 IS BOUND.
          t430 = t432->source( ).
        ENDIF.
        IF t430 IS NOT BOUND.
          CREATE OBJECT t430.
          t430->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t430->oval = t332.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t435 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t435.
    t419 = zcl_lnt_st_combi_module=>seq( i_first = t421 i_second = t430 i_rest = t435 ).
    IF t419 IS BOUND.
      DATA t440 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t441 TYPE REF TO object.
      t441 = t419.
      TRY.
          t418 ?= t441.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t418 IS NOT BOUND.
        TRY.
            t440 ?= t419.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t440 IS BOUND.
          t418 = t440->source( ).
        ENDIF.
        IF t418 IS NOT BOUND.
          CREATE OBJECT t418.
          t418->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t418->oval = t419.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t443 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t443.
    t411 = zcl_lnt_st_combi_module=>alt( i_first = t413 i_second = t418 i_rest = t443 ).
    IF t411 IS BOUND.
      DATA t448 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t449 TYPE REF TO object.
      t449 = t411.
      TRY.
          t410 ?= t449.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t410 IS NOT BOUND.
        TRY.
            t448 ?= t411.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t448 IS BOUND.
          t410 = t448->source( ).
        ENDIF.
        IF t410 IS NOT BOUND.
          CREATE OBJECT t410.
          t410->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t410->oval = t411.
        ENDIF.
      ENDIF.
    ENDIF.
    t409 = zcl_lnt_st_combi_module=>opt( i_first = t410 ).
    IF t409 IS BOUND.
      DATA t450 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t451 TYPE REF TO object.
      t451 = t409.
      TRY.
          t408 ?= t451.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t408 IS NOT BOUND.
        TRY.
            t450 ?= t409.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t450 IS BOUND.
          t408 = t450->source( ).
        ENDIF.
        IF t408 IS NOT BOUND.
          CREATE OBJECT t408.
          t408->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t408->oval = t409.
        ENDIF.
      ENDIF.
    ENDIF.
    t405->load( ).
    APPEND t408 TO t405->items.
    t405->save( ).
    t397 = zcl_lnt_st_combi_module=>seq( i_first = t400 i_second = t403 i_rest = t405 ).
    DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t397 IS BOUND.
      DATA t460 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t461 TYPE REF TO object.
      t461 = t397.
      TRY.
          t458 ?= t461.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t458 IS NOT BOUND.
        TRY.
            t460 ?= t397.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t460 IS BOUND.
          t458 = t460->source( ).
        ENDIF.
        IF t458 IS NOT BOUND.
          CREATE OBJECT t458.
          t458->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t458->oval = t397.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t458 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d434_c50e637c59a5.
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
