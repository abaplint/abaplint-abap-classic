* TS: src/abap/2_statements/statements/insert_internal.ts:7:1 InsertInternal
CLASS zcl_lnt_st_insert_internal DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_insert_internal IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t1 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t7 i_rest = t10 ).
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = |ASSIGNING|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
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
    t32->sval = |REFERENCE INTO|.
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
    t46->sval = |INDEX|.
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
    t57 = zcl_lnt_st_combi_module=>str( i_s = |INITIAL LINE| ).
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t63.
    t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t63->sval = |INTO|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t67 IS BOUND.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t66->cval = t67.
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t69.
    t60 = zcl_lnt_st_combi_module=>seq( i_first = t63 i_second = t66 i_rest = t69 ).
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t77.
    t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t77->sval = |INTO TABLE|.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t81 IS BOUND.
      CREATE OBJECT t80.
      t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t80->cval = t81.
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t82.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t92 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t90 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t90 IS NOT BOUND.
        TRY.
            t92 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t92 IS BOUND.
          t90 = t92->source( ).
        ENDIF.
        IF t90 IS NOT BOUND.
          CREATE OBJECT t90.
          t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t90->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t95 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t95 IS NOT BOUND.
        TRY.
            t97 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t97 IS BOUND.
          t95 = t97->source( ).
        ENDIF.
        IF t95 IS NOT BOUND.
          CREATE OBJECT t95.
          t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t95->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t100.
    t88 = zcl_lnt_st_combi_module=>alt( i_first = t90 i_second = t95 i_rest = t100 ).
    IF t88 IS BOUND.
      DATA t105 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t87 ?= t88.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t87 IS NOT BOUND.
        TRY.
            t105 ?= t88.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t105 IS BOUND.
          t87 = t105->source( ).
        ENDIF.
        IF t87 IS NOT BOUND.
          CREATE OBJECT t87.
          t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t87->oval = t88.
        ENDIF.
      ENDIF.
    ENDIF.
    t86 = zcl_lnt_st_combi_module=>opt( i_first = t87 ).
    IF t86 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t85 ?= t86.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t85 IS NOT BOUND.
        TRY.
            t107 ?= t86.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t85 = t107->source( ).
        ENDIF.
        IF t85 IS NOT BOUND.
          CREATE OBJECT t85.
          t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t85->oval = t86.
        ENDIF.
      ENDIF.
    ENDIF.
    t82->load( ).
    APPEND t85 TO t82->items.
    t82->save( ).
    t74 = zcl_lnt_st_combi_module=>seq( i_first = t77 i_second = t80 i_rest = t82 ).
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t116.
    t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t116->sval = |TO|.
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
    t130->sval = |FROM|.
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
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t127 IS BOUND.
      DATA t148 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t146 ?= t127.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t146 IS NOT BOUND.
        TRY.
            t148 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t148 IS BOUND.
          t146 = t148->source( ).
        ENDIF.
        IF t146 IS NOT BOUND.
          CREATE OBJECT t146.
          t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t146->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t113 IS BOUND.
      DATA t153 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t151 ?= t113.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t151 IS NOT BOUND.
        TRY.
            t153 ?= t113.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t153 IS BOUND.
          t151 = t153->source( ).
        ENDIF.
        IF t151 IS NOT BOUND.
          CREATE OBJECT t151.
          t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t151->oval = t113.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t156.
    t144 = zcl_lnt_st_combi_module=>per( i_first = t146 i_second = t151 i_rest = t156 ).
    IF t144 IS BOUND.
      DATA t161 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t143 ?= t144.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t143 IS NOT BOUND.
        TRY.
            t161 ?= t144.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t161 IS BOUND.
          t143 = t161->source( ).
        ENDIF.
        IF t143 IS NOT BOUND.
          CREATE OBJECT t143.
          t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t143->oval = t144.
        ENDIF.
      ENDIF.
    ENDIF.
    t141 = zcl_lnt_st_combi_module=>opt( i_first = t143 ).
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t74 IS BOUND.
      DATA t168 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t166 ?= t74.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t166 IS NOT BOUND.
        TRY.
            t168 ?= t74.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t168 IS BOUND.
          t166 = t168->source( ).
        ENDIF.
        IF t166 IS NOT BOUND.
          CREATE OBJECT t166.
          t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t166->oval = t74.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t60 IS BOUND.
      DATA t176 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t174 ?= t60.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t174 IS NOT BOUND.
        TRY.
            t176 ?= t60.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t176 IS BOUND.
          t174 = t176->source( ).
        ENDIF.
        IF t174 IS NOT BOUND.
          CREATE OBJECT t174.
          t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t174->oval = t60.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t180 TYPE REF TO zif_lnt_statement_runnable.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t43 IS BOUND.
      DATA t186 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t184 ?= t43.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t184 IS NOT BOUND.
        TRY.
            t186 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t186 IS BOUND.
          t184 = t186->source( ).
        ENDIF.
        IF t184 IS NOT BOUND.
          CREATE OBJECT t184.
          t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t184->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t194 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t192 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t192 IS NOT BOUND.
        TRY.
            t194 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t194 IS BOUND.
          t192 = t194->source( ).
        ENDIF.
        IF t192 IS NOT BOUND.
          CREATE OBJECT t192.
          t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t192->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t199 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t197 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t197 IS NOT BOUND.
        TRY.
            t199 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t199 IS BOUND.
          t197 = t199->source( ).
        ENDIF.
        IF t197 IS NOT BOUND.
          CREATE OBJECT t197.
          t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t197->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t202.
    t190 = zcl_lnt_st_combi_module=>alt( i_first = t192 i_second = t197 i_rest = t202 ).
    IF t190 IS BOUND.
      DATA t207 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t189 ?= t190.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t189 IS NOT BOUND.
        TRY.
            t207 ?= t190.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t207 IS BOUND.
          t189 = t207->source( ).
        ENDIF.
        IF t189 IS NOT BOUND.
          CREATE OBJECT t189.
          t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t189->oval = t190.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t210 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t210.
    t182 = zcl_lnt_st_combi_module=>per( i_first = t184 i_second = t189 i_rest = t210 ).
    IF t182 IS BOUND.
      DATA t215 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t181 ?= t182.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t181 IS NOT BOUND.
        TRY.
            t215 ?= t182.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t215 IS BOUND.
          t181 = t215->source( ).
        ENDIF.
        IF t181 IS NOT BOUND.
          CREATE OBJECT t181.
          t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t181->oval = t182.
        ENDIF.
      ENDIF.
    ENDIF.
    t180 = zcl_lnt_st_combi_module=>opt( i_first = t181 ).
    IF t180 IS BOUND.
      DATA t217 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t179 ?= t180.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t179 IS NOT BOUND.
        TRY.
            t217 ?= t180.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t217 IS BOUND.
          t179 = t217->source( ).
        ENDIF.
        IF t179 IS NOT BOUND.
          CREATE OBJECT t179.
          t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t179->oval = t180.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t220.
    t172 = zcl_lnt_st_combi_module=>seq( i_first = t174 i_second = t179 i_rest = t220 ).
    IF t172 IS BOUND.
      DATA t225 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t171 ?= t172.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t171 IS NOT BOUND.
        TRY.
            t225 ?= t172.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t225 IS BOUND.
          t171 = t225->source( ).
        ENDIF.
        IF t171 IS NOT BOUND.
          CREATE OBJECT t171.
          t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t171->oval = t172.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t227.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t231 TYPE REF TO zif_lnt_statement_runnable.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t43 IS BOUND.
      DATA t235 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t233 ?= t43.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t233 IS NOT BOUND.
        TRY.
            t235 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t235 IS BOUND.
          t233 = t235->source( ).
        ENDIF.
        IF t233 IS NOT BOUND.
          CREATE OBJECT t233.
          t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t233->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t239 TYPE REF TO zif_lnt_statement_runnable.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t243 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t241 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t241 IS NOT BOUND.
        TRY.
            t243 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t243 IS BOUND.
          t241 = t243->source( ).
        ENDIF.
        IF t241 IS NOT BOUND.
          CREATE OBJECT t241.
          t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t241->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t248 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t246 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t246 IS NOT BOUND.
        TRY.
            t248 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t248 IS BOUND.
          t246 = t248->source( ).
        ENDIF.
        IF t246 IS NOT BOUND.
          CREATE OBJECT t246.
          t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t246->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t251.
    t239 = zcl_lnt_st_combi_module=>alt( i_first = t241 i_second = t246 i_rest = t251 ).
    IF t239 IS BOUND.
      DATA t256 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t238 ?= t239.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t238 IS NOT BOUND.
        TRY.
            t256 ?= t239.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t256 IS BOUND.
          t238 = t256->source( ).
        ENDIF.
        IF t238 IS NOT BOUND.
          CREATE OBJECT t238.
          t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t238->oval = t239.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t259.
    t231 = zcl_lnt_st_combi_module=>per( i_first = t233 i_second = t238 i_rest = t259 ).
    IF t231 IS BOUND.
      DATA t264 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t230 ?= t231.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t230 IS NOT BOUND.
        TRY.
            t264 ?= t231.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t264 IS BOUND.
          t230 = t264->source( ).
        ENDIF.
        IF t230 IS NOT BOUND.
          CREATE OBJECT t230.
          t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t230->oval = t231.
        ENDIF.
      ENDIF.
    ENDIF.
    t227->load( ).
    APPEND t230 TO t227->items.
    t227->save( ).
    t163 = zcl_lnt_st_combi_module=>alt( i_first = t166 i_second = t171 i_rest = t227 ).
    DATA t270 TYPE REF TO zif_lnt_statement_runnable.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t273.
    t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t273->sval = |LINES OF|.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t278 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t276 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t276 IS NOT BOUND.
        TRY.
            t278 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t278 IS BOUND.
          t276 = t278->source( ).
        ENDIF.
        IF t276 IS NOT BOUND.
          CREATE OBJECT t276.
          t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t276->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t280 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t280.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t141 IS BOUND.
      DATA t287 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t285 ?= t141.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t285 IS NOT BOUND.
        TRY.
            t287 ?= t141.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t287 IS BOUND.
          t285 = t287->source( ).
        ENDIF.
        IF t285 IS NOT BOUND.
          CREATE OBJECT t285.
          t285->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t285->oval = t141.
        ENDIF.
      ENDIF.
    ENDIF.
    t284 = zcl_lnt_st_combi_module=>opt( i_first = t285 ).
    IF t284 IS BOUND.
      DATA t289 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t283 ?= t284.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t283 IS NOT BOUND.
        TRY.
            t289 ?= t284.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t289 IS BOUND.
          t283 = t289->source( ).
        ENDIF.
        IF t283 IS NOT BOUND.
          CREATE OBJECT t283.
          t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t283->oval = t284.
        ENDIF.
      ENDIF.
    ENDIF.
    t280->load( ).
    APPEND t283 TO t280->items.
    t280->save( ).
    t270 = zcl_lnt_st_combi_module=>seq( i_first = t273 i_second = t276 i_rest = t280 ).
    DATA t295 TYPE REF TO zif_lnt_statement_runnable.
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t299) = zlnt_runtime_desc_78196487750d=>zlnt_member_d129_b622fad61480.
    IF t299 IS BOUND.
      CREATE OBJECT t298.
      t298->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t298->cval = t299.
    ENDIF.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t302 TYPE REF TO zif_lnt_statement_runnable.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t304 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t304 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp02| ).
    IF t304 IS BOUND.
      DATA t308 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t309 TYPE REF TO object.
      t309 = t304.
      TRY.
          t303 ?= t309.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t303 IS NOT BOUND.
        TRY.
            t308 ?= t304.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t308 IS BOUND.
          t303 = t308->source( ).
        ENDIF.
        IF t303 IS NOT BOUND.
          CREATE OBJECT t303.
          t303->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t303->oval = t304.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t311) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t311 IS BOUND.
      CREATE OBJECT t310.
      t310->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t310->cval = t311.
    ENDIF.
    DATA t314 TYPE REF TO zcl_lnt_iver_options.
    DATA(t319) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t319->has = abap_true.
    t319->value = |OpenABAP|.
    t314 = NEW zcl_lnt_iver_options( i_also = t319 ).
    CREATE OBJECT t314->zlnt_view_ownkeys_b0e8086400eb.
    t314->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t314->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t321 ).
    CREATE OBJECT t314->zlnt_json_ownkeys_70e5fd461788.
    t314->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t314->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t323 ).
    t302 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t303 i_first = t310 i_opts = t314 ).
    IF t302 IS BOUND.
      DATA t325 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t301 ?= t302.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t301 IS NOT BOUND.
        TRY.
            t325 ?= t302.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t325 IS BOUND.
          t301 = t325->source( ).
        ENDIF.
        IF t301 IS NOT BOUND.
          CREATE OBJECT t301.
          t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t301->oval = t302.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t328 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t328.
    t295 = zcl_lnt_st_combi_module=>alt( i_first = t298 i_second = t301 i_rest = t328 ).
    DATA t333 TYPE REF TO zif_lnt_statement_runnable.
    DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t336.
    t336->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t336->sval = |TABLE|.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t340) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t340 IS BOUND.
      CREATE OBJECT t339.
      t339->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t339->cval = t340.
    ENDIF.
    DATA t342 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t342.
    t333 = zcl_lnt_st_combi_module=>seq( i_first = t336 i_second = t339 i_rest = t342 ).
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t350.
    t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t350->sval = |INSERT|.
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t354 TYPE REF TO zif_lnt_statement_runnable.
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t333 IS BOUND.
      DATA t358 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t356 ?= t333.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t356 IS NOT BOUND.
        TRY.
            t358 ?= t333.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t358 IS BOUND.
          t356 = t358->source( ).
        ENDIF.
        IF t356 IS NOT BOUND.
          CREATE OBJECT t356.
          t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t356->oval = t333.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t362 TYPE REF TO zif_lnt_statement_runnable.
    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t365 TYPE REF TO zif_lnt_statement_runnable.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57 IS BOUND.
      DATA t369 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t367 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t367 IS NOT BOUND.
        TRY.
            t369 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t369 IS BOUND.
          t367 = t369->source( ).
        ENDIF.
        IF t367 IS NOT BOUND.
          CREATE OBJECT t367.
          t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t367->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t270 IS BOUND.
      DATA t374 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t372 ?= t270.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t372 IS NOT BOUND.
        TRY.
            t374 ?= t270.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t374 IS BOUND.
          t372 = t374->source( ).
        ENDIF.
        IF t372 IS NOT BOUND.
          CREATE OBJECT t372.
          t372->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t372->oval = t270.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t376 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t376.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t295 IS BOUND.
      DATA t381 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t379 ?= t295.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t379 IS NOT BOUND.
        TRY.
            t381 ?= t295.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t381 IS BOUND.
          t379 = t381->source( ).
        ENDIF.
        IF t379 IS NOT BOUND.
          CREATE OBJECT t379.
          t379->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t379->oval = t295.
        ENDIF.
      ENDIF.
    ENDIF.
    t376->load( ).
    APPEND t379 TO t376->items.
    t376->save( ).
    t365 = zcl_lnt_st_combi_module=>alt_prio( i_first = t367 i_second = t372 i_rest = t376 ).
    IF t365 IS BOUND.
      DATA t387 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t364 ?= t365.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t364 IS NOT BOUND.
        TRY.
            t387 ?= t365.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t387 IS BOUND.
          t364 = t387->source( ).
        ENDIF.
        IF t364 IS NOT BOUND.
          CREATE OBJECT t364.
          t364->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t364->oval = t365.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t163 IS BOUND.
      DATA t392 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t390 ?= t163.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t390 IS NOT BOUND.
        TRY.
            t392 ?= t163.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t392 IS BOUND.
          t390 = t392->source( ).
        ENDIF.
        IF t390 IS NOT BOUND.
          CREATE OBJECT t390.
          t390->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t390->oval = t163.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t395 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t395.
    t362 = zcl_lnt_st_combi_module=>seq( i_first = t364 i_second = t390 i_rest = t395 ).
    IF t362 IS BOUND.
      DATA t400 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t361 ?= t362.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t361 IS NOT BOUND.
        TRY.
            t400 ?= t362.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t400 IS BOUND.
          t361 = t400->source( ).
        ENDIF.
        IF t361 IS NOT BOUND.
          CREATE OBJECT t361.
          t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t361->oval = t362.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t403 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t403.
    t354 = zcl_lnt_st_combi_module=>alt_prio( i_first = t356 i_second = t361 i_rest = t403 ).
    IF t354 IS BOUND.
      DATA t408 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t353 ?= t354.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t353 IS NOT BOUND.
        TRY.
            t408 ?= t354.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t408 IS BOUND.
          t353 = t408->source( ).
        ENDIF.
        IF t353 IS NOT BOUND.
          CREATE OBJECT t353.
          t353->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t353->oval = t354.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t411 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t411.
    result = zcl_lnt_st_combi_module=>seq( i_first = t350 i_second = t353 i_rest = t411 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d536_087fe30efad2.
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
