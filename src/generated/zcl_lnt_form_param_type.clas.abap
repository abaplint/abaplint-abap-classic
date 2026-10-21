* TS: src/abap/2_statements/expressions/form_param_type.ts:6:1 FormParamType
CLASS zcl_lnt_form_param_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_form_param_type IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |DEFAULT|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t13->cval = t14.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    t8 = zcl_lnt_st_combi_module=>alt( i_first = t10 i_second = t13 i_rest = t16 ).
    IF t8 IS BOUND.
      DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t7 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t21 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t21 IS BOUND.
          t7 = t21->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t24 ).
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t35->sval = |STANDARD|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t38.
    t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t38->sval = |HASHED|.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t40.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t43.
    t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t43->sval = |INDEX|.
    t40->load( ).
    APPEND t43 TO t40->items.
    t40->save( ).
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = |SORTED|.
    t40->load( ).
    APPEND t46 TO t40->items.
    t40->save( ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t49.
    t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t49->sval = |ANY|.
    t40->load( ).
    APPEND t49 TO t40->items.
    t40->save( ).
    t33 = zcl_lnt_st_combi_module=>alt( i_first = t35 i_second = t38 i_rest = t40 ).
    IF t33 IS BOUND.
      DATA t55 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t32 ?= t33.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t32 IS NOT BOUND.
        TRY.
            t55 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t55 IS BOUND.
          t32 = t55->source( ).
        ENDIF.
        IF t32 IS NOT BOUND.
          CREATE OBJECT t32.
          t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t32->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = |TABLE|.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t61.
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t32 i_second = t58 i_rest = t61 ).
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t69 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t69 IS NOT BOUND.
        TRY.
            t71 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t69 = t71->source( ).
        ENDIF.
        IF t69 IS NOT BOUND.
          CREATE OBJECT t69.
          t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t69->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t79.
    t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t79->sval = |OF|.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t83) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t83 IS BOUND.
      CREATE OBJECT t82.
      t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t82->cval = t83.
    ENDIF.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t85.
    t77 = zcl_lnt_st_combi_module=>seq( i_first = t79 i_second = t82 i_rest = t85 ).
    IF t77 IS BOUND.
      DATA t90 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t76 ?= t77.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t76 IS NOT BOUND.
        TRY.
            t90 ?= t77.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t90 IS BOUND.
          t76 = t90->source( ).
        ENDIF.
        IF t76 IS NOT BOUND.
          CREATE OBJECT t76.
          t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t76->oval = t77.
        ENDIF.
      ENDIF.
    ENDIF.
    t75 = zcl_lnt_st_combi_module=>opt_prio( i_first = t76 ).
    IF t75 IS BOUND.
      DATA t92 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t74 ?= t75.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t74 IS NOT BOUND.
        TRY.
            t92 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t92 IS BOUND.
          t74 = t92->source( ).
        ENDIF.
        IF t74 IS NOT BOUND.
          CREATE OBJECT t74.
          t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t74->oval = t75.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t95.
    t66 = zcl_lnt_st_combi_module=>seq( i_first = t69 i_second = t74 i_rest = t95 ).
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t108.
    t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t108->sval = |REF TO|.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t111.
    t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t111->sval = |LINE OF|.
    DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t114.
    t106 = zcl_lnt_st_combi_module=>alt( i_first = t108 i_second = t111 i_rest = t114 ).
    IF t106 IS BOUND.
      DATA t119 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t105 ?= t106.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t105 IS NOT BOUND.
        TRY.
            t119 ?= t106.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t119 IS BOUND.
          t105 = t119->source( ).
        ENDIF.
        IF t105 IS NOT BOUND.
          CREATE OBJECT t105.
          t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t105->oval = t106.
        ENDIF.
      ENDIF.
    ENDIF.
    t104 = zcl_lnt_st_combi_module=>opt_prio( i_first = t105 ).
    IF t104 IS BOUND.
      DATA t121 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t103 ?= t104.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t121 ?= t104.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t121 IS BOUND.
          t103 = t121->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t104.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t125) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t125 IS BOUND.
      CREATE OBJECT t124.
      t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t124->cval = t125.
    ENDIF.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t126.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t133 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t131 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t131 IS NOT BOUND.
        TRY.
            t133 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t133 IS BOUND.
          t131 = t133->source( ).
        ENDIF.
        IF t131 IS NOT BOUND.
          CREATE OBJECT t131.
          t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t131->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t130 = zcl_lnt_st_combi_module=>opt( i_first = t131 ).
    IF t130 IS BOUND.
      DATA t135 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t129 ?= t130.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t135 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t135 IS BOUND.
          t129 = t135->source( ).
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
    t100 = zcl_lnt_st_combi_module=>seq( i_first = t103 i_second = t124 i_rest = t126 ).
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t144.
    t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t144->sval = |LIKE|.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t152.
    t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t152->sval = |REF TO|.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t155.
    t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t155->sval = |LINE OF|.
    DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t158.
    t150 = zcl_lnt_st_combi_module=>alt( i_first = t152 i_second = t155 i_rest = t158 ).
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
    t148 = zcl_lnt_st_combi_module=>opt_prio( i_first = t149 ).
    IF t148 IS BOUND.
      DATA t165 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t147 ?= t148.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t147 IS NOT BOUND.
        TRY.
            t165 ?= t148.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t165 IS BOUND.
          t147 = t165->source( ).
        ENDIF.
        IF t147 IS NOT BOUND.
          CREATE OBJECT t147.
          t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t147->oval = t148.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t167.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t171) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    IF t171 IS BOUND.
      CREATE OBJECT t170.
      t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t170->cval = t171.
    ENDIF.
    t167->load( ).
    APPEND t170 TO t167->items.
    t167->save( ).
    t141 = zcl_lnt_st_combi_module=>seq( i_first = t144 i_second = t147 i_rest = t167 ).
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t181.
    t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t181->sval = |TYPE|.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t66 IS BOUND.
      DATA t189 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t187 ?= t66.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t187 IS NOT BOUND.
        TRY.
            t189 ?= t66.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t189 IS BOUND.
          t187 = t189->source( ).
        ENDIF.
        IF t187 IS NOT BOUND.
          CREATE OBJECT t187.
          t187->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t187->oval = t66.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t195 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t195 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v916| ).
    IF t195 IS BOUND.
      DATA t199 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t200 TYPE REF TO object.
      t200 = t195.
      TRY.
          t194 ?= t200.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t194 IS NOT BOUND.
        TRY.
            t199 ?= t195.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t199 IS BOUND.
          t194 = t199->source( ).
        ENDIF.
        IF t194 IS NOT BOUND.
          CREATE OBJECT t194.
          t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t194->oval = t195.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t202 TYPE REF TO zif_lnt_statement_runnable.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t204.
    t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t204->sval = |ANY|.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t207.
    t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t207->sval = |STRUCTURE|.
    DATA t210 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t210.
    t202 = zcl_lnt_st_combi_module=>seq( i_first = t204 i_second = t207 i_rest = t210 ).
    IF t202 IS BOUND.
      DATA t215 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t201 ?= t202.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t201 IS NOT BOUND.
        TRY.
            t215 ?= t202.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t215 IS BOUND.
          t201 = t215->source( ).
        ENDIF.
        IF t201 IS NOT BOUND.
          CREATE OBJECT t201.
          t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t201->oval = t202.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t217 TYPE REF TO zcl_lnt_iver_options.
    t193 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t194 i_first = t201 i_opts = t217 ).
    IF t193 IS BOUND.
      DATA t218 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t192 ?= t193.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t192 IS NOT BOUND.
        TRY.
            t218 ?= t193.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t218 IS BOUND.
          t192 = t218->source( ).
        ENDIF.
        IF t192 IS NOT BOUND.
          CREATE OBJECT t192.
          t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t192->oval = t193.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t220.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t100 IS BOUND.
      DATA t225 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t223 ?= t100.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t223 IS NOT BOUND.
        TRY.
            t225 ?= t100.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t225 IS BOUND.
          t223 = t225->source( ).
        ENDIF.
        IF t223 IS NOT BOUND.
          CREATE OBJECT t223.
          t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t223->oval = t100.
        ENDIF.
      ENDIF.
    ENDIF.
    t220->load( ).
    APPEND t223 TO t220->items.
    t220->save( ).
    t185 = zcl_lnt_st_combi_module=>alt_prio( i_first = t187 i_second = t192 i_rest = t220 ).
    IF t185 IS BOUND.
      DATA t231 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t184 ?= t185.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t184 IS NOT BOUND.
        TRY.
            t231 ?= t185.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t231 IS BOUND.
          t184 = t231->source( ).
        ENDIF.
        IF t184 IS NOT BOUND.
          CREATE OBJECT t184.
          t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t184->oval = t185.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t234.
    t179 = zcl_lnt_st_combi_module=>seq( i_first = t181 i_second = t184 i_rest = t234 ).
    IF t179 IS BOUND.
      DATA t239 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t178 ?= t179.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t178 IS NOT BOUND.
        TRY.
            t239 ?= t179.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t239 IS BOUND.
          t178 = t239->source( ).
        ENDIF.
        IF t178 IS NOT BOUND.
          CREATE OBJECT t178.
          t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t178->oval = t179.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t141 IS BOUND.
      DATA t244 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t242 ?= t141.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t242 IS NOT BOUND.
        TRY.
            t244 ?= t141.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t244 IS BOUND.
          t242 = t244->source( ).
        ENDIF.
        IF t242 IS NOT BOUND.
          CREATE OBJECT t242.
          t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t242->oval = t141.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t247.
    result = zcl_lnt_st_combi_module=>alt( i_first = t178 i_second = t242 i_rest = t247 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d188_0b071dbb03a9.
  ENDMETHOD.
ENDCLASS.
