* TS: src/abap/2_statements/statements/describe.ts:7:1 Describe
CLASS zcl_lnt_st_describe DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_describe IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |LINES|.
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
    t18->sval = |KIND|.
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
    t32->sval = |OCCURS|.
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
    t46->sval = |TABLE|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t51.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t61 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t59 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t59 IS NOT BOUND.
        TRY.
            t61 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t61 IS BOUND.
          t59 = t61->source( ).
        ENDIF.
        IF t59 IS NOT BOUND.
          CREATE OBJECT t59.
          t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t59->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t64 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t64 IS NOT BOUND.
        TRY.
            t66 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t64 = t66->source( ).
        ENDIF.
        IF t64 IS NOT BOUND.
          CREATE OBJECT t64.
          t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t64->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t68.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t73 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t71 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t71 IS NOT BOUND.
        TRY.
            t73 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t73 IS BOUND.
          t71 = t73->source( ).
        ENDIF.
        IF t71 IS NOT BOUND.
          CREATE OBJECT t71.
          t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t71->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    t68->load( ).
    APPEND t71 TO t68->items.
    t68->save( ).
    t57 = zcl_lnt_st_combi_module=>per( i_first = t59 i_second = t64 i_rest = t68 ).
    IF t57 IS BOUND.
      DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t56 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56 IS NOT BOUND.
        TRY.
            t79 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t79 IS BOUND.
          t56 = t79->source( ).
        ENDIF.
        IF t56 IS NOT BOUND.
          CREATE OBJECT t56.
          t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    t55 = zcl_lnt_st_combi_module=>opt( i_first = t56 ).
    IF t55 IS BOUND.
      DATA t81 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t54 ?= t55.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t81 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t81 IS BOUND.
          t54 = t81->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t55.
        ENDIF.
      ENDIF.
    ENDIF.
    t51->load( ).
    APPEND t54 TO t51->items.
    t51->save( ).
    t43 = zcl_lnt_st_combi_module=>seq( i_first = t46 i_second = t49 i_rest = t51 ).
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t90.
    t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t90->sval = |IN|.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t96.
    t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t96->sval = |BYTE|.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t99.
    t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t99->sval = |CHARACTER|.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t102.
    t94 = zcl_lnt_st_combi_module=>alt( i_first = t96 i_second = t99 i_rest = t102 ).
    IF t94 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t93 ?= t94.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t93 IS NOT BOUND.
        TRY.
            t107 ?= t94.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t93 = t107->source( ).
        ENDIF.
        IF t93 IS NOT BOUND.
          CREATE OBJECT t93.
          t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t93->oval = t94.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t109.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t112.
    t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t112->sval = |MODE|.
    t109->load( ).
    APPEND t112 TO t109->items.
    t109->save( ).
    t87 = zcl_lnt_st_combi_module=>seq( i_first = t90 i_second = t93 i_rest = t109 ).
    DATA t118 TYPE REF TO zif_lnt_statement_runnable.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t121.
    t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t121->sval = |FIELD|.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t125) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t125 IS BOUND.
      CREATE OBJECT t124.
      t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t124->cval = t125.
    ENDIF.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t126.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t135.
    t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t135->sval = |TYPE|.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t139) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t139 IS BOUND.
      CREATE OBJECT t138.
      t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t138->cval = t139.
    ENDIF.
    DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t141.
    t133 = zcl_lnt_st_combi_module=>seq( i_first = t135 i_second = t138 i_rest = t141 ).
    IF t133 IS BOUND.
      DATA t146 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t132 ?= t133.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t132 IS NOT BOUND.
        TRY.
            t146 ?= t133.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t146 IS BOUND.
          t132 = t146->source( ).
        ENDIF.
        IF t132 IS NOT BOUND.
          CREATE OBJECT t132.
          t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t132->oval = t133.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t152.
    t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t152->sval = |COMPONENTS|.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t156) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t156 IS BOUND.
      CREATE OBJECT t155.
      t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t155->cval = t156.
    ENDIF.
    DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t158.
    t150 = zcl_lnt_st_combi_module=>seq( i_first = t152 i_second = t155 i_rest = t158 ).
    IF t150 IS BOUND.
      DATA t163 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t149 ?= t150.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t149 IS NOT BOUND.
        TRY.
            t163 ?= t150.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t163 IS BOUND.
          t149 = t163->source( ).
        ENDIF.
        IF t149 IS NOT BOUND.
          CREATE OBJECT t149.
          t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t149->oval = t150.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t165.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t171.
    t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t171->sval = |LENGTH|.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t175) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t175 IS BOUND.
      CREATE OBJECT t174.
      t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t174->cval = t175.
    ENDIF.
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t176.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t180 TYPE REF TO zif_lnt_statement_runnable.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t87 IS BOUND.
      DATA t183 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t181 ?= t87.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t181 IS NOT BOUND.
        TRY.
            t183 ?= t87.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t183 IS BOUND.
          t181 = t183->source( ).
        ENDIF.
        IF t181 IS NOT BOUND.
          CREATE OBJECT t181.
          t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t181->oval = t87.
        ENDIF.
      ENDIF.
    ENDIF.
    t180 = zcl_lnt_st_combi_module=>opt( i_first = t181 ).
    IF t180 IS BOUND.
      DATA t185 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t179 ?= t180.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t179 IS NOT BOUND.
        TRY.
            t185 ?= t180.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t185 IS BOUND.
          t179 = t185->source( ).
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
    t169 = zcl_lnt_st_combi_module=>seq( i_first = t171 i_second = t174 i_rest = t176 ).
    IF t169 IS BOUND.
      DATA t191 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t168 ?= t169.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t168 IS NOT BOUND.
        TRY.
            t191 ?= t169.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t191 IS BOUND.
          t168 = t191->source( ).
        ENDIF.
        IF t168 IS NOT BOUND.
          CREATE OBJECT t168.
          t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t168->oval = t169.
        ENDIF.
      ENDIF.
    ENDIF.
    t165->load( ).
    APPEND t168 TO t165->items.
    t165->save( ).
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t195 TYPE REF TO zif_lnt_statement_runnable.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t197.
    t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t197->sval = |DECIMALS|.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t201) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t201 IS BOUND.
      CREATE OBJECT t200.
      t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t200->cval = t201.
    ENDIF.
    DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t203.
    t195 = zcl_lnt_st_combi_module=>seq( i_first = t197 i_second = t200 i_rest = t203 ).
    IF t195 IS BOUND.
      DATA t208 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t194 ?= t195.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t194 IS NOT BOUND.
        TRY.
            t208 ?= t195.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t208 IS BOUND.
          t194 = t208->source( ).
        ENDIF.
        IF t194 IS NOT BOUND.
          CREATE OBJECT t194.
          t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t194->oval = t195.
        ENDIF.
      ENDIF.
    ENDIF.
    t165->load( ).
    APPEND t194 TO t165->items.
    t165->save( ).
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t212 TYPE REF TO zif_lnt_statement_runnable.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t214.
    t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t214->sval = |HELP-ID|.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t218) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t218 IS BOUND.
      CREATE OBJECT t217.
      t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t217->cval = t218.
    ENDIF.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t220.
    t212 = zcl_lnt_st_combi_module=>seq( i_first = t214 i_second = t217 i_rest = t220 ).
    IF t212 IS BOUND.
      DATA t225 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t211 ?= t212.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t211 IS NOT BOUND.
        TRY.
            t225 ?= t212.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t225 IS BOUND.
          t211 = t225->source( ).
        ENDIF.
        IF t211 IS NOT BOUND.
          CREATE OBJECT t211.
          t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t211->oval = t212.
        ENDIF.
      ENDIF.
    ENDIF.
    t165->load( ).
    APPEND t211 TO t165->items.
    t165->save( ).
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t229 TYPE REF TO zif_lnt_statement_runnable.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t231.
    t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t231->sval = |OUTPUT-LENGTH|.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t235) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t235 IS BOUND.
      CREATE OBJECT t234.
      t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t234->cval = t235.
    ENDIF.
    DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t237.
    t229 = zcl_lnt_st_combi_module=>seq( i_first = t231 i_second = t234 i_rest = t237 ).
    IF t229 IS BOUND.
      DATA t242 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t228 ?= t229.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t228 IS NOT BOUND.
        TRY.
            t242 ?= t229.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t242 IS BOUND.
          t228 = t242->source( ).
        ENDIF.
        IF t228 IS NOT BOUND.
          CREATE OBJECT t228.
          t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t228->oval = t229.
        ENDIF.
      ENDIF.
    ENDIF.
    t165->load( ).
    APPEND t228 TO t165->items.
    t165->save( ).
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t246 TYPE REF TO zif_lnt_statement_runnable.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t248.
    t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t248->sval = |EDIT MASK|.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t252) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t252 IS BOUND.
      CREATE OBJECT t251.
      t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t251->cval = t252.
    ENDIF.
    DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t254.
    t246 = zcl_lnt_st_combi_module=>seq( i_first = t248 i_second = t251 i_rest = t254 ).
    IF t246 IS BOUND.
      DATA t259 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t245 ?= t246.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t245 IS NOT BOUND.
        TRY.
            t259 ?= t246.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t259 IS BOUND.
          t245 = t259->source( ).
        ENDIF.
        IF t245 IS NOT BOUND.
          CREATE OBJECT t245.
          t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t245->oval = t246.
        ENDIF.
      ENDIF.
    ENDIF.
    t165->load( ).
    APPEND t245 TO t165->items.
    t165->save( ).
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t263 TYPE REF TO zif_lnt_statement_runnable.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t265.
    t265->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t265->sval = |INTO|.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t269) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t269 IS BOUND.
      CREATE OBJECT t268.
      t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t268->cval = t269.
    ENDIF.
    DATA t271 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t271.
    t263 = zcl_lnt_st_combi_module=>seq( i_first = t265 i_second = t268 i_rest = t271 ).
    IF t263 IS BOUND.
      DATA t276 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t262 ?= t263.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t262 IS NOT BOUND.
        TRY.
            t276 ?= t263.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t276 IS BOUND.
          t262 = t276->source( ).
        ENDIF.
        IF t262 IS NOT BOUND.
          CREATE OBJECT t262.
          t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t262->oval = t263.
        ENDIF.
      ENDIF.
    ENDIF.
    t165->load( ).
    APPEND t262 TO t165->items.
    t165->save( ).
    t130 = zcl_lnt_st_combi_module=>per( i_first = t132 i_second = t149 i_rest = t165 ).
    IF t130 IS BOUND.
      DATA t282 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t129 ?= t130.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t282 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t282 IS BOUND.
          t129 = t282->source( ).
        ENDIF.
        IF t129 IS NOT BOUND.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t129->oval = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    t126->load( ).
    APPEND t129 TO t126->items.
    t126->save( ).
    t118 = zcl_lnt_st_combi_module=>seq( i_first = t121 i_second = t124 i_rest = t126 ).
    DATA t288 TYPE REF TO zif_lnt_statement_runnable.
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t291.
    t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t291->sval = |DISTANCE BETWEEN|.
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t295) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t295 IS BOUND.
      CREATE OBJECT t294.
      t294->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t294->cval = t295.
    ENDIF.
    DATA t296 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t296.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t299.
    t299->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t299->sval = |AND|.
    t296->load( ).
    APPEND t299 TO t296->items.
    t296->save( ).
    DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t303) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t303 IS BOUND.
      CREATE OBJECT t302.
      t302->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t302->cval = t303.
    ENDIF.
    t296->load( ).
    APPEND t302 TO t296->items.
    t296->save( ).
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t305.
    t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t305->sval = |INTO|.
    t296->load( ).
    APPEND t305 TO t296->items.
    t296->save( ).
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t309) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t309 IS BOUND.
      CREATE OBJECT t308.
      t308->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t308->cval = t309.
    ENDIF.
    t296->load( ).
    APPEND t308 TO t296->items.
    t296->save( ).
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t312 TYPE REF TO zif_lnt_statement_runnable.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t87 IS BOUND.
      DATA t315 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t313 ?= t87.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t313 IS NOT BOUND.
        TRY.
            t315 ?= t87.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t315 IS BOUND.
          t313 = t315->source( ).
        ENDIF.
        IF t313 IS NOT BOUND.
          CREATE OBJECT t313.
          t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t313->oval = t87.
        ENDIF.
      ENDIF.
    ENDIF.
    t312 = zcl_lnt_st_combi_module=>opt( i_first = t313 ).
    IF t312 IS BOUND.
      DATA t317 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t311 ?= t312.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t311 IS NOT BOUND.
        TRY.
            t317 ?= t312.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t317 IS BOUND.
          t311 = t317->source( ).
        ENDIF.
        IF t311 IS NOT BOUND.
          CREATE OBJECT t311.
          t311->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t311->oval = t312.
        ENDIF.
      ENDIF.
    ENDIF.
    t296->load( ).
    APPEND t311 TO t296->items.
    t296->save( ).
    t288 = zcl_lnt_st_combi_module=>seq( i_first = t291 i_second = t294 i_rest = t296 ).
    DATA t323 TYPE REF TO zif_lnt_statement_runnable.
    DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t326.
    t326->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t326->sval = |NUMBER OF LINES|.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t330) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t330 IS BOUND.
      CREATE OBJECT t329.
      t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t329->cval = t330.
    ENDIF.
    DATA t332 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t332.
    t323 = zcl_lnt_st_combi_module=>seq( i_first = t326 i_second = t329 i_rest = t332 ).
    DATA t337 TYPE REF TO zif_lnt_statement_runnable.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t340.
    t340->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t340->sval = |NUMBER OF PAGES|.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t344) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t344 IS BOUND.
      CREATE OBJECT t343.
      t343->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t343->cval = t344.
    ENDIF.
    DATA t346 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t346.
    t337 = zcl_lnt_st_combi_module=>seq( i_first = t340 i_second = t343 i_rest = t346 ).
    DATA t351 TYPE REF TO zif_lnt_statement_runnable.
    DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t354.
    t354->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t354->sval = |LINE|.
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t358) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t358 IS BOUND.
      CREATE OBJECT t357.
      t357->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t357->cval = t358.
    ENDIF.
    DATA t360 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t360.
    t351 = zcl_lnt_st_combi_module=>seq( i_first = t354 i_second = t357 i_rest = t360 ).
    DATA t365 TYPE REF TO zif_lnt_statement_runnable.
    DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t368.
    t368->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t368->sval = |PAGE|.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t372) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t372 IS BOUND.
      CREATE OBJECT t371.
      t371->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t371->cval = t372.
    ENDIF.
    DATA t374 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t374.
    t365 = zcl_lnt_st_combi_module=>seq( i_first = t368 i_second = t371 i_rest = t374 ).
    DATA t379 TYPE REF TO zif_lnt_statement_runnable.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t382.
    t382->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t382->sval = |INDEX|.
    DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t386) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t386 IS BOUND.
      CREATE OBJECT t385.
      t385->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t385->cval = t386.
    ENDIF.
    DATA t388 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t388.
    t379 = zcl_lnt_st_combi_module=>seq( i_first = t382 i_second = t385 i_rest = t388 ).
    DATA t393 TYPE REF TO zif_lnt_statement_runnable.
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t396.
    t396->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t396->sval = |TOP-LINES|.
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t400) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t400 IS BOUND.
      CREATE OBJECT t399.
      t399->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t399->cval = t400.
    ENDIF.
    DATA t402 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t402.
    t393 = zcl_lnt_st_combi_module=>seq( i_first = t396 i_second = t399 i_rest = t402 ).
    DATA t407 TYPE REF TO zif_lnt_statement_runnable.
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t410.
    t410->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t410->sval = |LINE-SIZE|.
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t414) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t414 IS BOUND.
      CREATE OBJECT t413.
      t413->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t413->cval = t414.
    ENDIF.
    DATA t416 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t416.
    t407 = zcl_lnt_st_combi_module=>seq( i_first = t410 i_second = t413 i_rest = t416 ).
    DATA t421 TYPE REF TO zif_lnt_statement_runnable.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t424.
    t424->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t424->sval = |LINE-COUNT|.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t428) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t428 IS BOUND.
      CREATE OBJECT t427.
      t427->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t427->cval = t428.
    ENDIF.
    DATA t430 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t430.
    t421 = zcl_lnt_st_combi_module=>seq( i_first = t424 i_second = t427 i_rest = t430 ).
    DATA t435 TYPE REF TO zif_lnt_statement_runnable.
    DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t438.
    t438->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t438->sval = |FIRST-LINE|.
    DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t442) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t442 IS BOUND.
      CREATE OBJECT t441.
      t441->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t441->cval = t442.
    ENDIF.
    DATA t444 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t444.
    t435 = zcl_lnt_st_combi_module=>seq( i_first = t438 i_second = t441 i_rest = t444 ).
    DATA t449 TYPE REF TO zif_lnt_statement_runnable.
    DATA t452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t452.
    t452->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t452->sval = |LIST|.
    DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t456 TYPE REF TO zif_lnt_statement_runnable.
    DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t323 IS BOUND.
      DATA t460 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t458 ?= t323.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t458 IS NOT BOUND.
        TRY.
            t460 ?= t323.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t460 IS BOUND.
          t458 = t460->source( ).
        ENDIF.
        IF t458 IS NOT BOUND.
          CREATE OBJECT t458.
          t458->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t458->oval = t323.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t337 IS BOUND.
      DATA t465 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t463 ?= t337.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t463 IS NOT BOUND.
        TRY.
            t465 ?= t337.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t465 IS BOUND.
          t463 = t465->source( ).
        ENDIF.
        IF t463 IS NOT BOUND.
          CREATE OBJECT t463.
          t463->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t463->oval = t337.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t467 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t467.
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t379 IS BOUND.
      DATA t472 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t470 ?= t379.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t470 IS NOT BOUND.
        TRY.
            t472 ?= t379.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t472 IS BOUND.
          t470 = t472->source( ).
        ENDIF.
        IF t470 IS NOT BOUND.
          CREATE OBJECT t470.
          t470->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t470->oval = t379.
        ENDIF.
      ENDIF.
    ENDIF.
    t467->load( ).
    APPEND t470 TO t467->items.
    t467->save( ).
    DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t351 IS BOUND.
      DATA t477 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t475 ?= t351.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t475 IS NOT BOUND.
        TRY.
            t477 ?= t351.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t477 IS BOUND.
          t475 = t477->source( ).
        ENDIF.
        IF t475 IS NOT BOUND.
          CREATE OBJECT t475.
          t475->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t475->oval = t351.
        ENDIF.
      ENDIF.
    ENDIF.
    t467->load( ).
    APPEND t475 TO t467->items.
    t467->save( ).
    DATA t480 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t365 IS BOUND.
      DATA t482 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t480 ?= t365.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t480 IS NOT BOUND.
        TRY.
            t482 ?= t365.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t482 IS BOUND.
          t480 = t482->source( ).
        ENDIF.
        IF t480 IS NOT BOUND.
          CREATE OBJECT t480.
          t480->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t480->oval = t365.
        ENDIF.
      ENDIF.
    ENDIF.
    t467->load( ).
    APPEND t480 TO t467->items.
    t467->save( ).
    DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t393 IS BOUND.
      DATA t487 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t485 ?= t393.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t485 IS NOT BOUND.
        TRY.
            t487 ?= t393.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t487 IS BOUND.
          t485 = t487->source( ).
        ENDIF.
        IF t485 IS NOT BOUND.
          CREATE OBJECT t485.
          t485->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t485->oval = t393.
        ENDIF.
      ENDIF.
    ENDIF.
    t467->load( ).
    APPEND t485 TO t467->items.
    t467->save( ).
    DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t435 IS BOUND.
      DATA t492 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t490 ?= t435.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t490 IS NOT BOUND.
        TRY.
            t492 ?= t435.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t492 IS BOUND.
          t490 = t492->source( ).
        ENDIF.
        IF t490 IS NOT BOUND.
          CREATE OBJECT t490.
          t490->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t490->oval = t435.
        ENDIF.
      ENDIF.
    ENDIF.
    t467->load( ).
    APPEND t490 TO t467->items.
    t467->save( ).
    DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t497 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t495 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t495 IS NOT BOUND.
        TRY.
            t497 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t497 IS BOUND.
          t495 = t497->source( ).
        ENDIF.
        IF t495 IS NOT BOUND.
          CREATE OBJECT t495.
          t495->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t495->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t467->load( ).
    APPEND t495 TO t467->items.
    t467->save( ).
    DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t407 IS BOUND.
      DATA t502 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t500 ?= t407.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t500 IS NOT BOUND.
        TRY.
            t502 ?= t407.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t502 IS BOUND.
          t500 = t502->source( ).
        ENDIF.
        IF t500 IS NOT BOUND.
          CREATE OBJECT t500.
          t500->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t500->oval = t407.
        ENDIF.
      ENDIF.
    ENDIF.
    t467->load( ).
    APPEND t500 TO t467->items.
    t467->save( ).
    DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t421 IS BOUND.
      DATA t507 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t505 ?= t421.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t505 IS NOT BOUND.
        TRY.
            t507 ?= t421.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t507 IS BOUND.
          t505 = t507->source( ).
        ENDIF.
        IF t505 IS NOT BOUND.
          CREATE OBJECT t505.
          t505->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t505->oval = t421.
        ENDIF.
      ENDIF.
    ENDIF.
    t467->load( ).
    APPEND t505 TO t467->items.
    t467->save( ).
    t456 = zcl_lnt_st_combi_module=>per( i_first = t458 i_second = t463 i_rest = t467 ).
    IF t456 IS BOUND.
      DATA t513 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t455 ?= t456.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t455 IS NOT BOUND.
        TRY.
            t513 ?= t456.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t513 IS BOUND.
          t455 = t513->source( ).
        ENDIF.
        IF t455 IS NOT BOUND.
          CREATE OBJECT t455.
          t455->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t455->oval = t456.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t516 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t516.
    t449 = zcl_lnt_st_combi_module=>seq( i_first = t452 i_second = t455 i_rest = t516 ).
    DATA t521 TYPE REF TO zif_lnt_statement_runnable.
    DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t524.
    t524->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t524->sval = |DESCRIBE|.
    DATA t527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t528 TYPE REF TO zif_lnt_statement_runnable.
    DATA t530 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t43 IS BOUND.
      DATA t532 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t530 ?= t43.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t530 IS NOT BOUND.
        TRY.
            t532 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t532 IS BOUND.
          t530 = t532->source( ).
        ENDIF.
        IF t530 IS NOT BOUND.
          CREATE OBJECT t530.
          t530->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t530->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t118 IS BOUND.
      DATA t537 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t535 ?= t118.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t535 IS NOT BOUND.
        TRY.
            t537 ?= t118.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t537 IS BOUND.
          t535 = t537->source( ).
        ENDIF.
        IF t535 IS NOT BOUND.
          CREATE OBJECT t535.
          t535->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t535->oval = t118.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t539 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t539.
    DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t288 IS BOUND.
      DATA t544 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t542 ?= t288.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t542 IS NOT BOUND.
        TRY.
            t544 ?= t288.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t544 IS BOUND.
          t542 = t544->source( ).
        ENDIF.
        IF t542 IS NOT BOUND.
          CREATE OBJECT t542.
          t542->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t542->oval = t288.
        ENDIF.
      ENDIF.
    ENDIF.
    t539->load( ).
    APPEND t542 TO t539->items.
    t539->save( ).
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t449 IS BOUND.
      DATA t549 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t547 ?= t449.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t547 IS NOT BOUND.
        TRY.
            t549 ?= t449.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t549 IS BOUND.
          t547 = t549->source( ).
        ENDIF.
        IF t547 IS NOT BOUND.
          CREATE OBJECT t547.
          t547->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t547->oval = t449.
        ENDIF.
      ENDIF.
    ENDIF.
    t539->load( ).
    APPEND t547 TO t539->items.
    t539->save( ).
    t528 = zcl_lnt_st_combi_module=>alt_prio( i_first = t530 i_second = t535 i_rest = t539 ).
    IF t528 IS BOUND.
      DATA t555 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t527 ?= t528.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t527 IS NOT BOUND.
        TRY.
            t555 ?= t528.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t555 IS BOUND.
          t527 = t555->source( ).
        ENDIF.
        IF t527 IS NOT BOUND.
          CREATE OBJECT t527.
          t527->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t527->oval = t528.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t558 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t558.
    t521 = zcl_lnt_st_combi_module=>seq( i_first = t524 i_second = t527 i_rest = t558 ).
    DATA t565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t521 IS BOUND.
      DATA t567 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t565 ?= t521.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t565 IS NOT BOUND.
        TRY.
            t567 ?= t521.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t567 IS BOUND.
          t565 = t567->source( ).
        ENDIF.
        IF t565 IS NOT BOUND.
          CREATE OBJECT t565.
          t565->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t565->oval = t521.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t565 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d450_5d14e5d4dc2d.
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
