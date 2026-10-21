* TS: src/cds/cds_parser.ts:11:1 CDSParser
CLASS zcl_lnt_cds_parser DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS parse IMPORTING i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_parser IMPLEMENTATION.
  METHOD parse.
    DATA(t1) = i_file.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t10 = zcl_lnt_cds_lexer=>run( i_file = t1 ).
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    DATA(t17) = t10.
    DATA t18 TYPE REF TO zcl_lnt_abstract_token.
    DATA t19 TYPE REF TO object.
    DATA(t20) = VALUE i( ).
    DO.
      t17->load( ).
      IF t20 >= lines( t17->items ).
        EXIT.
      ENDIF.
      CLEAR t19.
      READ TABLE t17->items INDEX t20 + 1 INTO t19.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      CLEAR t18.
      IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t21 ?= t19.
        DATA t22 TYPE REF TO object.
        t22 = t21->as_ref( ).
        t18 ?= t22.
      ELSE.
        t18 ?= t19.
      ENDIF.
      IF xsdbool( xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_lx_comment ) = abap_false ) = abap_true.
        t15->load( ).
        APPEND t18 TO t15->items.
        t15->save( ).
      ENDIF.
    ENDDO.
    t10 = t15.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t31) = NEW zcl_lnt_cds_define_view( ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t34 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t34 = zcl_lnt_version_module=>default_release.
    IF t34 IS BOUND.
      DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t36 TYPE REF TO object.
      t36 = t34.
      TRY.
          t33 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t33 IS NOT BOUND.
        TRY.
            t35 ?= t34.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t35 IS BOUND.
          t33 = t35->source( ).
        ENDIF.
        IF t33 IS NOT BOUND.
          CREATE OBJECT t33.
          t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t33->oval = t34.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t29 = zcl_lnt_combi=>run( i_runnable = t31 i_tokens = t10 i_version_or_release = t33 i_language_version_0e1d = t37 ).
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = VALUE abap_bool( ).
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t39 = xsdbool( t29 IS INITIAL ).
    t38 = t39.
    IF t39 = abap_false.
      DATA t48 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t49 = t29.
      DATA t51 TYPE REF TO object.
      t49->load( ).
      READ TABLE t49->items INDEX 1 INTO t51.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t51 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t52 ?= t51.
        DATA t53 TYPE REF TO object.
        t53 = t52->as_ref( ).
        t48 ?= t53.
      ELSE.
        t48 ?= t51.
      ENDIF.
      t38 = xsdbool( xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_expression_node ) = abap_false ).
    ENDIF.
    IF t38 = abap_true.
      DATA(t55) = NEW zcl_lnt_cds_define_abstract( ).
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t58 TYPE REF TO zcl_lnt_abap_release.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t58 = zcl_lnt_version_module=>default_release.
      IF t58 IS BOUND.
        DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t60 TYPE REF TO object.
        t60 = t58.
        TRY.
            t57 ?= t60.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t57 IS NOT BOUND.
          TRY.
              t59 ?= t58.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t59 IS BOUND.
            t57 = t59->source( ).
          ENDIF.
          IF t57 IS NOT BOUND.
            CREATE OBJECT t57.
            t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t57->oval = t58.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t29 = zcl_lnt_combi=>run( i_runnable = t55 i_tokens = t10 i_version_or_release = t57 i_language_version_0e1d = t61 ).
    ENDIF.
    DATA(t62) = VALUE abap_bool( ).
    DATA(t63) = VALUE abap_bool( ).
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t63 = xsdbool( t29 IS INITIAL ).
    t62 = t63.
    IF t63 = abap_false.
      DATA t72 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t73 = t29.
      DATA t75 TYPE REF TO object.
      t73->load( ).
      READ TABLE t73->items INDEX 1 INTO t75.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t75 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t76 ?= t75.
        DATA t77 TYPE REF TO object.
        t77 = t76->as_ref( ).
        t72 ?= t77.
      ELSE.
        t72 ?= t75.
      ENDIF.
      t62 = xsdbool( xsdbool( t72 IS BOUND AND t72 IS INSTANCE OF zcl_lnt_expression_node ) = abap_false ).
    ENDIF.
    IF t62 = abap_true.
      DATA(t79) = NEW zcl_lnt_cds_define_projection( ).
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t82 TYPE REF TO zcl_lnt_abap_release.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t82 = zcl_lnt_version_module=>default_release.
      IF t82 IS BOUND.
        DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t84 TYPE REF TO object.
        t84 = t82.
        TRY.
            t81 ?= t84.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t81 IS NOT BOUND.
          TRY.
              t83 ?= t82.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t83 IS BOUND.
            t81 = t83->source( ).
          ENDIF.
          IF t81 IS NOT BOUND.
            CREATE OBJECT t81.
            t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t81->oval = t82.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t29 = zcl_lnt_combi=>run( i_runnable = t79 i_tokens = t10 i_version_or_release = t81 i_language_version_0e1d = t85 ).
    ENDIF.
    DATA(t86) = VALUE abap_bool( ).
    DATA(t87) = VALUE abap_bool( ).
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t87 = xsdbool( t29 IS INITIAL ).
    t86 = t87.
    IF t87 = abap_false.
      DATA t96 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t97 = t29.
      DATA t99 TYPE REF TO object.
      t97->load( ).
      READ TABLE t97->items INDEX 1 INTO t99.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t99 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t100 ?= t99.
        DATA t101 TYPE REF TO object.
        t101 = t100->as_ref( ).
        t96 ?= t101.
      ELSE.
        t96 ?= t99.
      ENDIF.
      t86 = xsdbool( xsdbool( t96 IS BOUND AND t96 IS INSTANCE OF zcl_lnt_expression_node ) = abap_false ).
    ENDIF.
    IF t86 = abap_true.
      DATA(t103) = NEW zcl_lnt_cds_annotate( ).
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t106 TYPE REF TO zcl_lnt_abap_release.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t106 = zcl_lnt_version_module=>default_release.
      IF t106 IS BOUND.
        DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t108 TYPE REF TO object.
        t108 = t106.
        TRY.
            t105 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t105 IS NOT BOUND.
          TRY.
              t107 ?= t106.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t107 IS BOUND.
            t105 = t107->source( ).
          ENDIF.
          IF t105 IS NOT BOUND.
            CREATE OBJECT t105.
            t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t105->oval = t106.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t29 = zcl_lnt_combi=>run( i_runnable = t103 i_tokens = t10 i_version_or_release = t105 i_language_version_0e1d = t109 ).
    ENDIF.
    DATA(t110) = VALUE abap_bool( ).
    DATA(t111) = VALUE abap_bool( ).
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t111 = xsdbool( t29 IS INITIAL ).
    t110 = t111.
    IF t111 = abap_false.
      DATA t120 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t121 = t29.
      DATA t123 TYPE REF TO object.
      t121->load( ).
      READ TABLE t121->items INDEX 1 INTO t123.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t123 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t124 ?= t123.
        DATA t125 TYPE REF TO object.
        t125 = t124->as_ref( ).
        t120 ?= t125.
      ELSE.
        t120 ?= t123.
      ENDIF.
      t110 = xsdbool( xsdbool( t120 IS BOUND AND t120 IS INSTANCE OF zcl_lnt_expression_node ) = abap_false ).
    ENDIF.
    IF t110 = abap_true.
      DATA(t127) = NEW zcl_lnt_cds_define_custom( ).
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t130 TYPE REF TO zcl_lnt_abap_release.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t130 = zcl_lnt_version_module=>default_release.
      IF t130 IS BOUND.
        DATA t131 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t132 TYPE REF TO object.
        t132 = t130.
        TRY.
            t129 ?= t132.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t129 IS NOT BOUND.
          TRY.
              t131 ?= t130.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t131 IS BOUND.
            t129 = t131->source( ).
          ENDIF.
          IF t129 IS NOT BOUND.
            CREATE OBJECT t129.
            t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t129->oval = t130.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t29 = zcl_lnt_combi=>run( i_runnable = t127 i_tokens = t10 i_version_or_release = t129 i_language_version_0e1d = t133 ).
    ENDIF.
    DATA(t134) = VALUE abap_bool( ).
    DATA(t135) = VALUE abap_bool( ).
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t135 = xsdbool( t29 IS INITIAL ).
    t134 = t135.
    IF t135 = abap_false.
      DATA t144 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t145 = t29.
      DATA t147 TYPE REF TO object.
      t145->load( ).
      READ TABLE t145->items INDEX 1 INTO t147.
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t147 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t148 ?= t147.
        DATA t149 TYPE REF TO object.
        t149 = t148->as_ref( ).
        t144 ?= t149.
      ELSE.
        t144 ?= t147.
      ENDIF.
      t134 = xsdbool( xsdbool( t144 IS BOUND AND t144 IS INSTANCE OF zcl_lnt_expression_node ) = abap_false ).
    ENDIF.
    IF t134 = abap_true.
      DATA(t151) = NEW zcl_lnt_cds_dfn_tbl_fnctn( ).
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t154 TYPE REF TO zcl_lnt_abap_release.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t154 = zcl_lnt_version_module=>default_release.
      IF t154 IS BOUND.
        DATA t155 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t156 TYPE REF TO object.
        t156 = t154.
        TRY.
            t153 ?= t156.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t153 IS NOT BOUND.
          TRY.
              t155 ?= t154.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t155 IS BOUND.
            t153 = t155->source( ).
          ENDIF.
          IF t153 IS NOT BOUND.
            CREATE OBJECT t153.
            t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t153->oval = t154.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t29 = zcl_lnt_combi=>run( i_runnable = t151 i_tokens = t10 i_version_or_release = t153 i_language_version_0e1d = t157 ).
    ENDIF.
    DATA(t158) = VALUE abap_bool( ).
    DATA(t159) = VALUE abap_bool( ).
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t159 = xsdbool( t29 IS INITIAL ).
    t158 = t159.
    IF t159 = abap_false.
      DATA t168 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t169 = t29.
      DATA t171 TYPE REF TO object.
      t169->load( ).
      READ TABLE t169->items INDEX 1 INTO t171.
      DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t171 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t172 ?= t171.
        DATA t173 TYPE REF TO object.
        t173 = t172->as_ref( ).
        t168 ?= t173.
      ELSE.
        t168 ?= t171.
      ENDIF.
      t158 = xsdbool( xsdbool( t168 IS BOUND AND t168 IS INSTANCE OF zcl_lnt_expression_node ) = abap_false ).
    ENDIF.
    IF t158 = abap_true.
      DATA(t175) = NEW zcl_lnt_cds_extend_view( ).
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t178 TYPE REF TO zcl_lnt_abap_release.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t178 = zcl_lnt_version_module=>default_release.
      IF t178 IS BOUND.
        DATA t179 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t180 TYPE REF TO object.
        t180 = t178.
        TRY.
            t177 ?= t180.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t177 IS NOT BOUND.
          TRY.
              t179 ?= t178.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t179 IS BOUND.
            t177 = t179->source( ).
          ENDIF.
          IF t177 IS NOT BOUND.
            CREATE OBJECT t177.
            t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t177->oval = t178.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t29 = zcl_lnt_combi=>run( i_runnable = t175 i_tokens = t10 i_version_or_release = t177 i_language_version_0e1d = t181 ).
    ENDIF.
    DATA(t182) = VALUE abap_bool( ).
    DATA(t183) = VALUE abap_bool( ).
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t183 = xsdbool( t29 IS INITIAL ).
    t182 = t183.
    IF t183 = abap_false.
      DATA t192 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t193 = t29.
      DATA t195 TYPE REF TO object.
      t193->load( ).
      READ TABLE t193->items INDEX 1 INTO t195.
      DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t195 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t196 ?= t195.
        DATA t197 TYPE REF TO object.
        t197 = t196->as_ref( ).
        t192 ?= t197.
      ELSE.
        t192 ?= t195.
      ENDIF.
      t182 = xsdbool( xsdbool( t192 IS BOUND AND t192 IS INSTANCE OF zcl_lnt_expression_node ) = abap_false ).
    ENDIF.
    IF t182 = abap_true.
      DATA(t199) = NEW zcl_lnt_cds_define_hierarchy( ).
      DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t202 TYPE REF TO zcl_lnt_abap_release.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t202 = zcl_lnt_version_module=>default_release.
      IF t202 IS BOUND.
        DATA t203 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t204 TYPE REF TO object.
        t204 = t202.
        TRY.
            t201 ?= t204.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t201 IS NOT BOUND.
          TRY.
              t203 ?= t202.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t203 IS BOUND.
            t201 = t203->source( ).
          ENDIF.
          IF t201 IS NOT BOUND.
            CREATE OBJECT t201.
            t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t201->oval = t202.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t29 = zcl_lnt_combi=>run( i_runnable = t199 i_tokens = t10 i_version_or_release = t201 i_language_version_0e1d = t205 ).
    ENDIF.
    DATA(t206) = VALUE abap_bool( ).
    DATA(t207) = VALUE abap_bool( ).
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t207 = xsdbool( t29 IS INITIAL ).
    t206 = t207.
    IF t207 = abap_false.
      DATA t216 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t217 = t29.
      DATA t219 TYPE REF TO object.
      t217->load( ).
      READ TABLE t217->items INDEX 1 INTO t219.
      DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t219 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t220 ?= t219.
        DATA t221 TYPE REF TO object.
        t221 = t220->as_ref( ).
        t216 ?= t221.
      ELSE.
        t216 ?= t219.
      ENDIF.
      t206 = xsdbool( xsdbool( t216 IS BOUND AND t216 IS INSTANCE OF zcl_lnt_expression_node ) = abap_false ).
    ENDIF.
    IF t206 = abap_true.
      DATA(t223) = NEW zcl_lnt_cds_dfn_extrnl_entty( ).
      DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t226 TYPE REF TO zcl_lnt_abap_release.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t226 = zcl_lnt_version_module=>default_release.
      IF t226 IS BOUND.
        DATA t227 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t228 TYPE REF TO object.
        t228 = t226.
        TRY.
            t225 ?= t228.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t225 IS NOT BOUND.
          TRY.
              t227 ?= t226.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t227 IS BOUND.
            t225 = t227->source( ).
          ENDIF.
          IF t225 IS NOT BOUND.
            CREATE OBJECT t225.
            t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t225->oval = t226.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t29 = zcl_lnt_combi=>run( i_runnable = t223 i_tokens = t10 i_version_or_release = t225 i_language_version_0e1d = t229 ).
    ENDIF.
    DATA(t230) = VALUE abap_bool( ).
    DATA(t231) = VALUE abap_bool( ).
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t231 = xsdbool( t29 IS INITIAL ).
    t230 = t231.
    IF t231 = abap_false.
      DATA t240 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t241 = t29.
      DATA t243 TYPE REF TO object.
      t241->load( ).
      READ TABLE t241->items INDEX 1 INTO t243.
      DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t243 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t244 ?= t243.
        DATA t245 TYPE REF TO object.
        t245 = t244->as_ref( ).
        t240 ?= t245.
      ELSE.
        t240 ?= t243.
      ENDIF.
      t230 = xsdbool( xsdbool( t240 IS BOUND AND t240 IS INSTANCE OF zcl_lnt_expression_node ) = abap_false ).
    ENDIF.
    IF t230 = abap_true.
      DATA(t247) = NEW zcl_lnt_cds_dfn_tbl_entty( ).
      DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t250 TYPE REF TO zcl_lnt_abap_release.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t250 = zcl_lnt_version_module=>default_release.
      IF t250 IS BOUND.
        DATA t251 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t252 TYPE REF TO object.
        t252 = t250.
        TRY.
            t249 ?= t252.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t249 IS NOT BOUND.
          TRY.
              t251 ?= t250.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t251 IS BOUND.
            t249 = t251->source( ).
          ENDIF.
          IF t249 IS NOT BOUND.
            CREATE OBJECT t249.
            t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t249->oval = t250.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t29 = zcl_lnt_combi=>run( i_runnable = t247 i_tokens = t10 i_version_or_release = t249 i_language_version_0e1d = t253 ).
    ENDIF.
    DATA(t254) = VALUE abap_bool( ).
    DATA(t255) = VALUE abap_bool( ).
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t255 = xsdbool( t29 IS INITIAL ).
    t254 = t255.
    IF t255 = abap_false.
      DATA t264 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t265 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t265 = t29.
      DATA t267 TYPE REF TO object.
      t265->load( ).
      READ TABLE t265->items INDEX 1 INTO t267.
      DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t267 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t268 ?= t267.
        DATA t269 TYPE REF TO object.
        t269 = t268->as_ref( ).
        t264 ?= t269.
      ELSE.
        t264 ?= t267.
      ENDIF.
      t254 = xsdbool( xsdbool( t264 IS BOUND AND t264 IS INSTANCE OF zcl_lnt_expression_node ) = abap_false ).
    ENDIF.
    IF t254 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t273 TYPE REF TO zcl_lnt_expression_node.
    DATA t274 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t275 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t275 = t29.
    DATA t277 TYPE REF TO object.
    t275->load( ).
    READ TABLE t275->items INDEX 1 INTO t277.
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t277 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t278 ?= t277.
      DATA t279 TYPE REF TO object.
      t279 = t278->as_ref( ).
      t274 ?= t279.
    ELSE.
      t274 ?= t277.
    ENDIF.
    t273 ?= t274.
    result = t273.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1073_c7888841318b.
  ENDMETHOD.
ENDCLASS.
