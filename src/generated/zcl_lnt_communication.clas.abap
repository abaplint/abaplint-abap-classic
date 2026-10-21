* TS: src/abap/2_statements/statements/communication.ts:7:1 Communication
CLASS zcl_lnt_communication DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_communication IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |LENGTH|.
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
    t18->sval = |RETURNCODE|.
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
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = |BUFFER|.
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
    t46->sval = |INIT ID|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t51.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t54.
    t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t54->sval = |DESTINATION|.
    t51->load( ).
    APPEND t54 TO t51->items.
    t51->save( ).
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t57->cval = t58.
    ENDIF.
    t51->load( ).
    APPEND t57 TO t51->items.
    t51->save( ).
    t43 = zcl_lnt_st_combi_module=>seq( i_first = t46 i_second = t49 i_rest = t51 ).
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t66.
    t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t66->sval = |ALLOCATE ID|.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t70) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t70 IS BOUND.
      CREATE OBJECT t69.
      t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t69->cval = t70.
    ENDIF.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t71.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t78 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t76 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t76 IS NOT BOUND.
        TRY.
            t78 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t78 IS BOUND.
          t76 = t78->source( ).
        ENDIF.
        IF t76 IS NOT BOUND.
          CREATE OBJECT t76.
          t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t76->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t75 = zcl_lnt_st_combi_module=>opt( i_first = t76 ).
    IF t75 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t74 ?= t75.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t74 IS NOT BOUND.
        TRY.
            t80 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t74 = t80->source( ).
        ENDIF.
        IF t74 IS NOT BOUND.
          CREATE OBJECT t74.
          t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t74->oval = t75.
        ENDIF.
      ENDIF.
    ENDIF.
    t71->load( ).
    APPEND t74 TO t71->items.
    t71->save( ).
    t63 = zcl_lnt_st_combi_module=>seq( i_first = t66 i_second = t69 i_rest = t71 ).
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t89.
    t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t89->sval = |SEND ID|.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t93) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t93 IS BOUND.
      CREATE OBJECT t92.
      t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t92->cval = t93.
    ENDIF.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t94.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t104 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t102 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t102 IS NOT BOUND.
        TRY.
            t104 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t104 IS BOUND.
          t102 = t104->source( ).
        ENDIF.
        IF t102 IS NOT BOUND.
          CREATE OBJECT t102.
          t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t102->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t109 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t107 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t107 IS NOT BOUND.
        TRY.
            t109 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t109 IS BOUND.
          t107 = t109->source( ).
        ENDIF.
        IF t107 IS NOT BOUND.
          CREATE OBJECT t107.
          t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t107->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t112.
    t100 = zcl_lnt_st_combi_module=>per( i_first = t102 i_second = t107 i_rest = t112 ).
    IF t100 IS BOUND.
      DATA t117 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t99 ?= t100.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t99 IS NOT BOUND.
        TRY.
            t117 ?= t100.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t117 IS BOUND.
          t99 = t117->source( ).
        ENDIF.
        IF t99 IS NOT BOUND.
          CREATE OBJECT t99.
          t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t99->oval = t100.
        ENDIF.
      ENDIF.
    ENDIF.
    t98 = zcl_lnt_st_combi_module=>opt( i_first = t99 ).
    IF t98 IS BOUND.
      DATA t119 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t97 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t97 IS NOT BOUND.
        TRY.
            t119 ?= t98.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t119 IS BOUND.
          t97 = t119->source( ).
        ENDIF.
        IF t97 IS NOT BOUND.
          CREATE OBJECT t97.
          t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t97->oval = t98.
        ENDIF.
      ENDIF.
    ENDIF.
    t94->load( ).
    APPEND t97 TO t94->items.
    t94->save( ).
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t126 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t124 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t124 IS NOT BOUND.
        TRY.
            t126 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t126 IS BOUND.
          t124 = t126->source( ).
        ENDIF.
        IF t124 IS NOT BOUND.
          CREATE OBJECT t124.
          t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t124->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t123 = zcl_lnt_st_combi_module=>opt( i_first = t124 ).
    IF t123 IS BOUND.
      DATA t128 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t122 ?= t123.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t122 IS NOT BOUND.
        TRY.
            t128 ?= t123.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t128 IS BOUND.
          t122 = t128->source( ).
        ENDIF.
        IF t122 IS NOT BOUND.
          CREATE OBJECT t122.
          t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t122->oval = t123.
        ENDIF.
      ENDIF.
    ENDIF.
    t94->load( ).
    APPEND t122 TO t94->items.
    t94->save( ).
    t86 = zcl_lnt_st_combi_module=>seq( i_first = t89 i_second = t92 i_rest = t94 ).
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t137.
    t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t137->sval = |DEALLOCATE ID|.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t141) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t141 IS BOUND.
      CREATE OBJECT t140.
      t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t140->cval = t141.
    ENDIF.
    DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t142.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t146 TYPE REF TO zif_lnt_statement_runnable.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t149 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t147 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t147 IS NOT BOUND.
        TRY.
            t149 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t149 IS BOUND.
          t147 = t149->source( ).
        ENDIF.
        IF t147 IS NOT BOUND.
          CREATE OBJECT t147.
          t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t147->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t146 = zcl_lnt_st_combi_module=>opt( i_first = t147 ).
    IF t146 IS BOUND.
      DATA t151 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t145 ?= t146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t145 IS NOT BOUND.
        TRY.
            t151 ?= t146.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t151 IS BOUND.
          t145 = t151->source( ).
        ENDIF.
        IF t145 IS NOT BOUND.
          CREATE OBJECT t145.
          t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t145->oval = t146.
        ENDIF.
      ENDIF.
    ENDIF.
    t142->load( ).
    APPEND t145 TO t142->items.
    t142->save( ).
    t134 = zcl_lnt_st_combi_module=>seq( i_first = t137 i_second = t140 i_rest = t142 ).
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t160.
    t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t160->sval = |ACCEPT ID|.
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
    t174->sval = |RECEIVE ID|.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t178) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t178 IS BOUND.
      CREATE OBJECT t177.
      t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t177->cval = t178.
    ENDIF.
    DATA t179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t179.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t182.
    t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t182->sval = |BUFFER|.
    t179->load( ).
    APPEND t182 TO t179->items.
    t179->save( ).
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t186) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t186 IS BOUND.
      CREATE OBJECT t185.
      t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t185->cval = t186.
    ENDIF.
    t179->load( ).
    APPEND t185 TO t179->items.
    t179->save( ).
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t192 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t190 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t190 IS NOT BOUND.
        TRY.
            t192 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t192 IS BOUND.
          t190 = t192->source( ).
        ENDIF.
        IF t190 IS NOT BOUND.
          CREATE OBJECT t190.
          t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t190->oval = t1.
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
    t179->load( ).
    APPEND t188 TO t179->items.
    t179->save( ).
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t197.
    t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t197->sval = |DATAINFO|.
    t179->load( ).
    APPEND t197 TO t179->items.
    t179->save( ).
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t201) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t201 IS BOUND.
      CREATE OBJECT t200.
      t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t200->cval = t201.
    ENDIF.
    t179->load( ).
    APPEND t200 TO t179->items.
    t179->save( ).
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t203.
    t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t203->sval = |STATUSINFO|.
    t179->load( ).
    APPEND t203 TO t179->items.
    t179->save( ).
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t207) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t207 IS BOUND.
      CREATE OBJECT t206.
      t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t206->cval = t207.
    ENDIF.
    t179->load( ).
    APPEND t206 TO t179->items.
    t179->save( ).
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t209.
    t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t209->sval = |RECEIVED|.
    t179->load( ).
    APPEND t209 TO t179->items.
    t179->save( ).
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t213) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t213 IS BOUND.
      CREATE OBJECT t212.
      t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t212->cval = t213.
    ENDIF.
    t179->load( ).
    APPEND t212 TO t179->items.
    t179->save( ).
    t171 = zcl_lnt_st_combi_module=>seq( i_first = t174 i_second = t177 i_rest = t179 ).
    DATA t218 TYPE REF TO zif_lnt_statement_runnable.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t221.
    t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t221->sval = |COMMUNICATION|.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t225 TYPE REF TO zif_lnt_statement_runnable.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t43 IS BOUND.
      DATA t229 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t227 ?= t43.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t227 IS NOT BOUND.
        TRY.
            t229 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t229 IS BOUND.
          t227 = t229->source( ).
        ENDIF.
        IF t227 IS NOT BOUND.
          CREATE OBJECT t227.
          t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t227->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t63 IS BOUND.
      DATA t234 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t232 ?= t63.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t232 IS NOT BOUND.
        TRY.
            t234 ?= t63.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t234 IS BOUND.
          t232 = t234->source( ).
        ENDIF.
        IF t232 IS NOT BOUND.
          CREATE OBJECT t232.
          t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t232->oval = t63.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t236 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t236.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t86 IS BOUND.
      DATA t241 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t239 ?= t86.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t239 IS NOT BOUND.
        TRY.
            t241 ?= t86.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t241 IS BOUND.
          t239 = t241->source( ).
        ENDIF.
        IF t239 IS NOT BOUND.
          CREATE OBJECT t239.
          t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t239->oval = t86.
        ENDIF.
      ENDIF.
    ENDIF.
    t236->load( ).
    APPEND t239 TO t236->items.
    t236->save( ).
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t134 IS BOUND.
      DATA t246 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t244 ?= t134.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t244 IS NOT BOUND.
        TRY.
            t246 ?= t134.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t246 IS BOUND.
          t244 = t246->source( ).
        ENDIF.
        IF t244 IS NOT BOUND.
          CREATE OBJECT t244.
          t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t244->oval = t134.
        ENDIF.
      ENDIF.
    ENDIF.
    t236->load( ).
    APPEND t244 TO t236->items.
    t236->save( ).
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t171 IS BOUND.
      DATA t251 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t249 ?= t171.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t249 IS NOT BOUND.
        TRY.
            t251 ?= t171.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t251 IS BOUND.
          t249 = t251->source( ).
        ENDIF.
        IF t249 IS NOT BOUND.
          CREATE OBJECT t249.
          t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t249->oval = t171.
        ENDIF.
      ENDIF.
    ENDIF.
    t236->load( ).
    APPEND t249 TO t236->items.
    t236->save( ).
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t157 IS BOUND.
      DATA t256 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t254 ?= t157.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t254 IS NOT BOUND.
        TRY.
            t256 ?= t157.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t256 IS BOUND.
          t254 = t256->source( ).
        ENDIF.
        IF t254 IS NOT BOUND.
          CREATE OBJECT t254.
          t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t254->oval = t157.
        ENDIF.
      ENDIF.
    ENDIF.
    t236->load( ).
    APPEND t254 TO t236->items.
    t236->save( ).
    t225 = zcl_lnt_st_combi_module=>alt( i_first = t227 i_second = t232 i_rest = t236 ).
    IF t225 IS BOUND.
      DATA t262 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t224 ?= t225.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t224 IS NOT BOUND.
        TRY.
            t262 ?= t225.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t262 IS BOUND.
          t224 = t262->source( ).
        ENDIF.
        IF t224 IS NOT BOUND.
          CREATE OBJECT t224.
          t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t224->oval = t225.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t265 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t265.
    t218 = zcl_lnt_st_combi_module=>seq( i_first = t221 i_second = t224 i_rest = t265 ).
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t218 IS BOUND.
      DATA t274 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t272 ?= t218.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t272 IS NOT BOUND.
        TRY.
            t274 ?= t218.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t274 IS BOUND.
          t272 = t274->source( ).
        ENDIF.
        IF t272 IS NOT BOUND.
          CREATE OBJECT t272.
          t272->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t272->oval = t218.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t272 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d422_bebdc7940729.
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
