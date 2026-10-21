* TS: src/cds/expressions/cds_association.ts:6:1 CDSAssociation
CLASS zcl_lnt_cds_association DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_association IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = |EXACT|.
    t5 = zcl_lnt_st_combi_module=>opt( i_first = t6 ).
    IF t5 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t4 ?= t5.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t8 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8 IS BOUND.
          t4 = t8->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t14.
    t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t14->sval = |ONE|.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t17.
    t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t17->sval = |MANY|.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    t12 = zcl_lnt_st_combi_module=>alt_prio( i_first = t14 i_second = t17 i_rest = t20 ).
    IF t12 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t11 ?= t12.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t11 IS NOT BOUND.
        TRY.
            t25 ?= t12.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t11 = t25->source( ).
        ENDIF.
        IF t11 IS NOT BOUND.
          CREATE OBJECT t11.
          t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t11->oval = t12.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t11 i_rest = t28 ).
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    DATA t38 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t38 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+$| flags = ||.
    t38->source = `^\d+$`.
    t37 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t38 ).
    IF t37 IS BOUND.
      DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t36 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t36 IS NOT BOUND.
        TRY.
            t42 ?= t37.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t42 IS BOUND.
          t36 = t42->source( ).
        ENDIF.
        IF t36 IS NOT BOUND.
          CREATE OBJECT t36.
          t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t36->oval = t37.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t45.
    t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t45->sval = |*|.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t48.
    t33 = zcl_lnt_st_combi_module=>alt_prio( i_first = t36 i_second = t45 i_rest = t48 ).
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t56.
    t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t56->sval = |[|.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33 IS BOUND.
      DATA t61 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t59 ?= t33.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t59 IS NOT BOUND.
        TRY.
            t61 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t61 IS BOUND.
          t59 = t61->source( ).
        ENDIF.
        IF t59 IS NOT BOUND.
          CREATE OBJECT t59.
          t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t59->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t63.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t71.
    t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t71->sval = |.|.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t74.
    t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t74->sval = |.|.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t76.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33 IS BOUND.
      DATA t81 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t79 ?= t33.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t79 IS NOT BOUND.
        TRY.
            t81 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t81 IS BOUND.
          t79 = t81->source( ).
        ENDIF.
        IF t79 IS NOT BOUND.
          CREATE OBJECT t79.
          t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t79->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    t76->load( ).
    APPEND t79 TO t76->items.
    t76->save( ).
    t69 = zcl_lnt_st_combi_module=>seq( i_first = t71 i_second = t74 i_rest = t76 ).
    IF t69 IS BOUND.
      DATA t87 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t68 ?= t69.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t68 IS NOT BOUND.
        TRY.
            t87 ?= t69.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t87 IS BOUND.
          t68 = t87->source( ).
        ENDIF.
        IF t68 IS NOT BOUND.
          CREATE OBJECT t68.
          t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t68->oval = t69.
        ENDIF.
      ENDIF.
    ENDIF.
    t67 = zcl_lnt_st_combi_module=>opt_prio( i_first = t68 ).
    IF t67 IS BOUND.
      DATA t89 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t66 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t66 IS NOT BOUND.
        TRY.
            t89 ?= t67.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t89 IS BOUND.
          t66 = t89->source( ).
        ENDIF.
        IF t66 IS NOT BOUND.
          CREATE OBJECT t66.
          t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t66->oval = t67.
        ENDIF.
      ENDIF.
    ENDIF.
    t63->load( ).
    APPEND t66 TO t63->items.
    t63->save( ).
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t92.
    t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t92->sval = |]|.
    t63->load( ).
    APPEND t92 TO t63->items.
    t63->save( ).
    t53 = zcl_lnt_st_combi_module=>seq( i_first = t56 i_second = t59 i_rest = t63 ).
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t104.
    t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t104->sval = |EXACT|.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t107.
    t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t107->sval = |ONE|.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t110.
    t102 = zcl_lnt_st_combi_module=>seq( i_first = t104 i_second = t107 i_rest = t110 ).
    IF t102 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t101 ?= t102.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t101 IS NOT BOUND.
        TRY.
            t115 ?= t102.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t101 = t115->source( ).
        ENDIF.
        IF t101 IS NOT BOUND.
          CREATE OBJECT t101.
          t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t101->oval = t102.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t118.
    t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t118->sval = |ONE|.
    DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t120.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t123.
    t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t123->sval = |MANY|.
    t120->load( ).
    APPEND t123 TO t120->items.
    t120->save( ).
    t98 = zcl_lnt_st_combi_module=>alt_prio( i_first = t101 i_second = t118 i_rest = t120 ).
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t132.
    t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t132->sval = |ASSOCIATION|.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t135.
    t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t135->sval = |OF|.
    DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t137.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t98 IS BOUND.
      DATA t142 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t140 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t140 IS NOT BOUND.
        TRY.
            t142 ?= t98.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t142 IS BOUND.
          t140 = t142->source( ).
        ENDIF.
        IF t140 IS NOT BOUND.
          CREATE OBJECT t140.
          t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t140->oval = t98.
        ENDIF.
      ENDIF.
    ENDIF.
    t137->load( ).
    APPEND t140 TO t137->items.
    t137->save( ).
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t145.
    t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t145->sval = |TO|.
    t137->load( ).
    APPEND t145 TO t137->items.
    t137->save( ).
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t98 IS BOUND.
      DATA t150 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t148 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t148 IS NOT BOUND.
        TRY.
            t150 ?= t98.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t150 IS BOUND.
          t148 = t150->source( ).
        ENDIF.
        IF t148 IS NOT BOUND.
          CREATE OBJECT t148.
          t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t148->oval = t98.
        ENDIF.
      ENDIF.
    ENDIF.
    t137->load( ).
    APPEND t148 TO t137->items.
    t137->save( ).
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t154) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1092_b2702bebb604.
    IF t154 IS BOUND.
      CREATE OBJECT t153.
      t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t153->cval = t154.
    ENDIF.
    t137->load( ).
    APPEND t153 TO t137->items.
    t137->save( ).
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t156.
    t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t156->sval = |ON|.
    t137->load( ).
    APPEND t156 TO t137->items.
    t137->save( ).
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t160) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    IF t160 IS BOUND.
      CREATE OBJECT t159.
      t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t159->cval = t160.
    ENDIF.
    t137->load( ).
    APPEND t159 TO t137->items.
    t137->save( ).
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t167.
    t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t167->sval = |WITH|.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t170.
    t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t170->sval = |DEFAULT|.
    DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t172.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t175.
    t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t175->sval = |FILTER|.
    t172->load( ).
    APPEND t175 TO t172->items.
    t172->save( ).
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t179) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    IF t179 IS BOUND.
      CREATE OBJECT t178.
      t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t178->cval = t179.
    ENDIF.
    t172->load( ).
    APPEND t178 TO t172->items.
    t172->save( ).
    t165 = zcl_lnt_st_combi_module=>seq( i_first = t167 i_second = t170 i_rest = t172 ).
    IF t165 IS BOUND.
      DATA t184 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t164 ?= t165.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t164 IS NOT BOUND.
        TRY.
            t184 ?= t165.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t184 IS BOUND.
          t164 = t184->source( ).
        ENDIF.
        IF t164 IS NOT BOUND.
          CREATE OBJECT t164.
          t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t164->oval = t165.
        ENDIF.
      ENDIF.
    ENDIF.
    t163 = zcl_lnt_st_combi_module=>opt( i_first = t164 ).
    IF t163 IS BOUND.
      DATA t186 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t162 ?= t163.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t162 IS NOT BOUND.
        TRY.
            t186 ?= t163.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t186 IS BOUND.
          t162 = t186->source( ).
        ENDIF.
        IF t162 IS NOT BOUND.
          CREATE OBJECT t162.
          t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t162->oval = t163.
        ENDIF.
      ENDIF.
    ENDIF.
    t137->load( ).
    APPEND t162 TO t137->items.
    t137->save( ).
    t129 = zcl_lnt_st_combi_module=>seq( i_first = t132 i_second = t135 i_rest = t137 ).
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t195.
    t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t195->sval = |ASSOCIATION|.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t198.
    t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t198->sval = |OF|.
    DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t200.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t53 IS BOUND.
      DATA t205 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t203 ?= t53.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t203 IS NOT BOUND.
        TRY.
            t205 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t205 IS BOUND.
          t203 = t205->source( ).
        ENDIF.
        IF t203 IS NOT BOUND.
          CREATE OBJECT t203.
          t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t203->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    t200->load( ).
    APPEND t203 TO t200->items.
    t200->save( ).
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t208.
    t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t208->sval = |TO|.
    t200->load( ).
    APPEND t208 TO t200->items.
    t200->save( ).
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t212) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1092_b2702bebb604.
    IF t212 IS BOUND.
      CREATE OBJECT t211.
      t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t211->cval = t212.
    ENDIF.
    t200->load( ).
    APPEND t211 TO t200->items.
    t200->save( ).
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t214.
    t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t214->sval = |ON|.
    t200->load( ).
    APPEND t214 TO t200->items.
    t200->save( ).
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t218) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    IF t218 IS BOUND.
      CREATE OBJECT t217.
      t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t217->cval = t218.
    ENDIF.
    t200->load( ).
    APPEND t217 TO t200->items.
    t200->save( ).
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t223 TYPE REF TO zif_lnt_statement_runnable.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t225.
    t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t225->sval = |WITH|.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t228.
    t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t228->sval = |DEFAULT|.
    DATA t230 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t230.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t233.
    t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t233->sval = |FILTER|.
    t230->load( ).
    APPEND t233 TO t230->items.
    t230->save( ).
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t237) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    IF t237 IS BOUND.
      CREATE OBJECT t236.
      t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t236->cval = t237.
    ENDIF.
    t230->load( ).
    APPEND t236 TO t230->items.
    t230->save( ).
    t223 = zcl_lnt_st_combi_module=>seq( i_first = t225 i_second = t228 i_rest = t230 ).
    IF t223 IS BOUND.
      DATA t242 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t222 ?= t223.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t222 IS NOT BOUND.
        TRY.
            t242 ?= t223.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t242 IS BOUND.
          t222 = t242->source( ).
        ENDIF.
        IF t222 IS NOT BOUND.
          CREATE OBJECT t222.
          t222->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t222->oval = t223.
        ENDIF.
      ENDIF.
    ENDIF.
    t221 = zcl_lnt_st_combi_module=>opt( i_first = t222 ).
    IF t221 IS BOUND.
      DATA t244 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t220 ?= t221.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t220 IS NOT BOUND.
        TRY.
            t244 ?= t221.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t244 IS BOUND.
          t220 = t244->source( ).
        ENDIF.
        IF t220 IS NOT BOUND.
          CREATE OBJECT t220.
          t220->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t220->oval = t221.
        ENDIF.
      ENDIF.
    ENDIF.
    t200->load( ).
    APPEND t220 TO t200->items.
    t200->save( ).
    t192 = zcl_lnt_st_combi_module=>seq( i_first = t195 i_second = t198 i_rest = t200 ).
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t253.
    t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t253->sval = |ASSOCIATION|.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t256.
    t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t256->sval = |TO|.
    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t258.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t261.
    t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t261->sval = |PARENT|.
    t258->load( ).
    APPEND t261 TO t258->items.
    t258->save( ).
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t265) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1092_b2702bebb604.
    IF t265 IS BOUND.
      CREATE OBJECT t264.
      t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t264->cval = t265.
    ENDIF.
    t258->load( ).
    APPEND t264 TO t258->items.
    t258->save( ).
    t250 = zcl_lnt_st_combi_module=>seq( i_first = t253 i_second = t256 i_rest = t258 ).
    DATA t270 TYPE REF TO zif_lnt_statement_runnable.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t273.
    t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t273->sval = |ASSOCIATION|.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t277 TYPE REF TO zif_lnt_statement_runnable.
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t279) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1094_471f5e803ae2.
    IF t279 IS BOUND.
      CREATE OBJECT t278.
      t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t278->cval = t279.
    ENDIF.
    t277 = zcl_lnt_st_combi_module=>opt_prio( i_first = t278 ).
    IF t277 IS BOUND.
      DATA t280 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t276 ?= t277.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t276 IS NOT BOUND.
        TRY.
            t280 ?= t277.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t280 IS BOUND.
          t276 = t280->source( ).
        ENDIF.
        IF t276 IS NOT BOUND.
          CREATE OBJECT t276.
          t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t276->oval = t277.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t282 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t282.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t285.
    t285->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t285->sval = |TO|.
    t282->load( ).
    APPEND t285 TO t282->items.
    t282->save( ).
    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t289 TYPE REF TO zif_lnt_statement_runnable.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t291 TYPE REF TO zif_lnt_statement_runnable.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t295 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t293 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t293 IS NOT BOUND.
        TRY.
            t295 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t295 IS BOUND.
          t293 = t295->source( ).
        ENDIF.
        IF t293 IS NOT BOUND.
          CREATE OBJECT t293.
          t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t293->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t298.
    t298->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t298->sval = |PARENT|.
    DATA t301 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t301.
    t291 = zcl_lnt_st_combi_module=>alt_prio( i_first = t293 i_second = t298 i_rest = t301 ).
    IF t291 IS BOUND.
      DATA t306 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t290 ?= t291.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t290 IS NOT BOUND.
        TRY.
            t306 ?= t291.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t306 IS BOUND.
          t290 = t306->source( ).
        ENDIF.
        IF t290 IS NOT BOUND.
          CREATE OBJECT t290.
          t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t290->oval = t291.
        ENDIF.
      ENDIF.
    ENDIF.
    t289 = zcl_lnt_st_combi_module=>opt( i_first = t290 ).
    IF t289 IS BOUND.
      DATA t308 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t288 ?= t289.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t288 IS NOT BOUND.
        TRY.
            t308 ?= t289.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t308 IS BOUND.
          t288 = t308->source( ).
        ENDIF.
        IF t288 IS NOT BOUND.
          CREATE OBJECT t288.
          t288->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t288->oval = t289.
        ENDIF.
      ENDIF.
    ENDIF.
    t282->load( ).
    APPEND t288 TO t282->items.
    t282->save( ).
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t312) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1092_b2702bebb604.
    IF t312 IS BOUND.
      CREATE OBJECT t311.
      t311->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t311->cval = t312.
    ENDIF.
    t282->load( ).
    APPEND t311 TO t282->items.
    t282->save( ).
    DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t314.
    t314->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t314->sval = |ON|.
    t282->load( ).
    APPEND t314 TO t282->items.
    t282->save( ).
    DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t318) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    IF t318 IS BOUND.
      CREATE OBJECT t317.
      t317->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t317->cval = t318.
    ENDIF.
    t282->load( ).
    APPEND t317 TO t282->items.
    t282->save( ).
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t321 TYPE REF TO zif_lnt_statement_runnable.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t323 TYPE REF TO zif_lnt_statement_runnable.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t325.
    t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t325->sval = |WITH|.
    DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t328.
    t328->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t328->sval = |DEFAULT|.
    DATA t330 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t330.
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t333.
    t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t333->sval = |FILTER|.
    t330->load( ).
    APPEND t333 TO t330->items.
    t330->save( ).
    DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t337) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    IF t337 IS BOUND.
      CREATE OBJECT t336.
      t336->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t336->cval = t337.
    ENDIF.
    t330->load( ).
    APPEND t336 TO t330->items.
    t330->save( ).
    t323 = zcl_lnt_st_combi_module=>seq( i_first = t325 i_second = t328 i_rest = t330 ).
    IF t323 IS BOUND.
      DATA t342 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t322 ?= t323.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t322 IS NOT BOUND.
        TRY.
            t342 ?= t323.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t342 IS BOUND.
          t322 = t342->source( ).
        ENDIF.
        IF t322 IS NOT BOUND.
          CREATE OBJECT t322.
          t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t322->oval = t323.
        ENDIF.
      ENDIF.
    ENDIF.
    t321 = zcl_lnt_st_combi_module=>opt( i_first = t322 ).
    IF t321 IS BOUND.
      DATA t344 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t320 ?= t321.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t320 IS NOT BOUND.
        TRY.
            t344 ?= t321.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t344 IS BOUND.
          t320 = t344->source( ).
        ENDIF.
        IF t320 IS NOT BOUND.
          CREATE OBJECT t320.
          t320->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t320->oval = t321.
        ENDIF.
      ENDIF.
    ENDIF.
    t282->load( ).
    APPEND t320 TO t282->items.
    t282->save( ).
    t270 = zcl_lnt_st_combi_module=>seq( i_first = t273 i_second = t276 i_rest = t282 ).
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t129 IS BOUND.
      DATA t354 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t352 ?= t129.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t352 IS NOT BOUND.
        TRY.
            t354 ?= t129.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t354 IS BOUND.
          t352 = t354->source( ).
        ENDIF.
        IF t352 IS NOT BOUND.
          CREATE OBJECT t352.
          t352->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t352->oval = t129.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t192 IS BOUND.
      DATA t359 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t357 ?= t192.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t357 IS NOT BOUND.
        TRY.
            t359 ?= t192.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t359 IS BOUND.
          t357 = t359->source( ).
        ENDIF.
        IF t357 IS NOT BOUND.
          CREATE OBJECT t357.
          t357->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t357->oval = t192.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t361 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t361.
    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t270 IS BOUND.
      DATA t366 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t364 ?= t270.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t364 IS NOT BOUND.
        TRY.
            t366 ?= t270.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t366 IS BOUND.
          t364 = t366->source( ).
        ENDIF.
        IF t364 IS NOT BOUND.
          CREATE OBJECT t364.
          t364->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t364->oval = t270.
        ENDIF.
      ENDIF.
    ENDIF.
    t361->load( ).
    APPEND t364 TO t361->items.
    t361->save( ).
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t250 IS BOUND.
      DATA t371 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t369 ?= t250.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t369 IS NOT BOUND.
        TRY.
            t371 ?= t250.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t371 IS BOUND.
          t369 = t371->source( ).
        ENDIF.
        IF t369 IS NOT BOUND.
          CREATE OBJECT t369.
          t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t369->oval = t250.
        ENDIF.
      ENDIF.
    ENDIF.
    t361->load( ).
    APPEND t369 TO t361->items.
    t361->save( ).
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t352 i_second = t357 i_rest = t361 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1095_9dff9bf77964.
  ENDMETHOD.
ENDCLASS.
