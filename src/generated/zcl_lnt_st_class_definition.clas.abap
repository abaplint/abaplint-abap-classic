* TS: src/abap/2_statements/statements/class_definition.ts:7:1 ClassDefinition
CLASS zcl_lnt_st_class_definition DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_class_definition IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |CREATE|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = |PUBLIC|.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t13.
    t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t13->sval = |PROTECTED|.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = |PRIVATE|.
    t15->load( ).
    APPEND t18 TO t15->items.
    t15->save( ).
    t8 = zcl_lnt_st_combi_module=>alt_prio( i_first = t10 i_second = t13 i_rest = t15 ).
    IF t8 IS BOUND.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t25 TYPE REF TO object.
      t25 = t8.
      TRY.
          t7 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t24 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t7 = t24->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t27 ).
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t35->sval = |CRITICAL|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t38.
    t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t38->sval = |HARMLESS|.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t40.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t43.
    t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t43->sval = |DANGEROUS|.
    t40->load( ).
    APPEND t43 TO t40->items.
    t40->save( ).
    t32 = zcl_lnt_st_combi_module=>alt_prio( i_first = t35 i_second = t38 i_rest = t40 ).
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t52.
    t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t52->sval = |RISK LEVEL|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t32 IS BOUND.
      DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t58 TYPE REF TO object.
      t58 = t32.
      TRY.
          t55 ?= t58.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t55 IS NOT BOUND.
        TRY.
            t57 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t57 IS BOUND.
          t55 = t57->source( ).
        ENDIF.
        IF t55 IS NOT BOUND.
          CREATE OBJECT t55.
          t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t55->oval = t32.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t60.
    t49 = zcl_lnt_st_combi_module=>seq( i_first = t52 i_second = t55 i_rest = t60 ).
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t68.
    t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t68->sval = |LONG|.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t71.
    t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t71->sval = |MEDIUM|.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t73.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t76.
    t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t76->sval = |SHORT|.
    t73->load( ).
    APPEND t76 TO t73->items.
    t73->save( ).
    t65 = zcl_lnt_st_combi_module=>alt_prio( i_first = t68 i_second = t71 i_rest = t73 ).
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t85.
    t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t85->sval = |DURATION|.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t65 IS BOUND.
      DATA t90 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t91 TYPE REF TO object.
      t91 = t65.
      TRY.
          t88 ?= t91.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t88 IS NOT BOUND.
        TRY.
            t90 ?= t65.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t90 IS BOUND.
          t88 = t90->source( ).
        ENDIF.
        IF t88 IS NOT BOUND.
          CREATE OBJECT t88.
          t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t88->oval = t65.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t93.
    t82 = zcl_lnt_st_combi_module=>seq( i_first = t85 i_second = t88 i_rest = t93 ).
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t102) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
    IF t102 IS BOUND.
      CREATE OBJECT t101.
      t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t101->cval = t102.
    ENDIF.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t105) = zlnt_runtime_desc_78196487750d=>zlnt_member_d115_e681bc20f5c0.
    IF t105 IS BOUND.
      CREATE OBJECT t104.
      t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t104->cval = t105.
    ENDIF.
    DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t106.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t109.
    t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t109->sval = |ABSTRACT|.
    t106->load( ).
    APPEND t109 TO t106->items.
    t106->save( ).
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t115.
    t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t115->sval = |INHERITING FROM|.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t119) = zlnt_runtime_desc_78196487750d=>zlnt_member_d348_ba08da875831.
    IF t119 IS BOUND.
      CREATE OBJECT t118.
      t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t118->cval = t119.
    ENDIF.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t121.
    t113 = zcl_lnt_st_combi_module=>seq( i_first = t115 i_second = t118 i_rest = t121 ).
    IF t113 IS BOUND.
      DATA t126 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t127 TYPE REF TO object.
      t127 = t113.
      TRY.
          t112 ?= t127.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t112 IS NOT BOUND.
        TRY.
            t126 ?= t113.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t126 IS BOUND.
          t112 = t126->source( ).
        ENDIF.
        IF t112 IS NOT BOUND.
          CREATE OBJECT t112.
          t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t112->oval = t113.
        ENDIF.
      ENDIF.
    ENDIF.
    t106->load( ).
    APPEND t112 TO t106->items.
    t106->save( ).
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t131 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t132 TYPE REF TO object.
      t132 = t1.
      TRY.
          t129 ?= t132.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t131 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t131 IS BOUND.
          t129 = t131->source( ).
        ENDIF.
        IF t129 IS NOT BOUND.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t129->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t106->load( ).
    APPEND t129 TO t106->items.
    t106->save( ).
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t134.
    t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t134->sval = |FOR TESTING|.
    t106->load( ).
    APPEND t134 TO t106->items.
    t106->save( ).
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t49 IS BOUND.
      DATA t139 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t140 TYPE REF TO object.
      t140 = t49.
      TRY.
          t137 ?= t140.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t137 IS NOT BOUND.
        TRY.
            t139 ?= t49.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t139 IS BOUND.
          t137 = t139->source( ).
        ENDIF.
        IF t137 IS NOT BOUND.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t137->oval = t49.
        ENDIF.
      ENDIF.
    ENDIF.
    t106->load( ).
    APPEND t137 TO t106->items.
    t106->save( ).
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t142.
    t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t142->sval = |SHARED MEMORY ENABLED|.
    t106->load( ).
    APPEND t142 TO t106->items.
    t106->save( ).
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t82 IS BOUND.
      DATA t147 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t148 TYPE REF TO object.
      t148 = t82.
      TRY.
          t145 ?= t148.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t145 IS NOT BOUND.
        TRY.
            t147 ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t147 IS BOUND.
          t145 = t147->source( ).
        ENDIF.
        IF t145 IS NOT BOUND.
          CREATE OBJECT t145.
          t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t145->oval = t82.
        ENDIF.
      ENDIF.
    ENDIF.
    t106->load( ).
    APPEND t145 TO t106->items.
    t106->save( ).
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t153 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t153 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v754| ).
    IF t153 IS BOUND.
      DATA t157 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t158 TYPE REF TO object.
      t158 = t153.
      TRY.
          t152 ?= t158.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t152 IS NOT BOUND.
        TRY.
            t157 ?= t153.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t157 IS BOUND.
          t152 = t157->source( ).
        ENDIF.
        IF t152 IS NOT BOUND.
          CREATE OBJECT t152.
          t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t152->oval = t153.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t162.
    t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t162->sval = |FOR BEHAVIOR OF|.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t166) = zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154.
    IF t166 IS BOUND.
      CREATE OBJECT t165.
      t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t165->cval = t166.
    ENDIF.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t168.
    t160 = zcl_lnt_st_combi_module=>seq( i_first = t162 i_second = t165 i_rest = t168 ).
    IF t160 IS BOUND.
      DATA t173 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t174 TYPE REF TO object.
      t174 = t160.
      TRY.
          t159 ?= t174.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t159 IS NOT BOUND.
        TRY.
            t173 ?= t160.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t173 IS BOUND.
          t159 = t173->source( ).
        ENDIF.
        IF t159 IS NOT BOUND.
          CREATE OBJECT t159.
          t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t159->oval = t160.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t177 TYPE REF TO zcl_lnt_iver_options.
    DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t182->has = abap_true.
    t182->value = |OpenABAP|.
    t177 = NEW zcl_lnt_iver_options( i_also = t182 ).
    CREATE OBJECT t177->zlnt_view_ownkeys_b0e8086400eb.
    t177->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t184 ).
    CREATE OBJECT t177->zlnt_json_ownkeys_70e5fd461788.
    t177->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t186 ).
    t151 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t152 i_first = t159 i_opts = t177 ).
    IF t151 IS BOUND.
      DATA t188 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t189 TYPE REF TO object.
      t189 = t151.
      TRY.
          t150 ?= t189.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t150 IS NOT BOUND.
        TRY.
            t188 ?= t151.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t188 IS BOUND.
          t150 = t188->source( ).
        ENDIF.
        IF t150 IS NOT BOUND.
          CREATE OBJECT t150.
          t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t150->oval = t151.
        ENDIF.
      ENDIF.
    ENDIF.
    t106->load( ).
    APPEND t150 TO t106->items.
    t106->save( ).
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t194 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t194 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    IF t194 IS BOUND.
      DATA t198 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t199 TYPE REF TO object.
      t199 = t194.
      TRY.
          t193 ?= t199.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t193 IS NOT BOUND.
        TRY.
            t198 ?= t194.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t198 IS BOUND.
          t193 = t198->source( ).
        ENDIF.
        IF t193 IS NOT BOUND.
          CREATE OBJECT t193.
          t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t193->oval = t194.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t203.
    t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t203->sval = |FOR EVENTS OF|.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t207) = zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154.
    IF t207 IS BOUND.
      CREATE OBJECT t206.
      t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t206->cval = t207.
    ENDIF.
    DATA t209 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t209.
    t201 = zcl_lnt_st_combi_module=>seq( i_first = t203 i_second = t206 i_rest = t209 ).
    IF t201 IS BOUND.
      DATA t214 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t215 TYPE REF TO object.
      t215 = t201.
      TRY.
          t200 ?= t215.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t200 IS NOT BOUND.
        TRY.
            t214 ?= t201.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t214 IS BOUND.
          t200 = t214->source( ).
        ENDIF.
        IF t200 IS NOT BOUND.
          CREATE OBJECT t200.
          t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t200->oval = t201.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t216 TYPE REF TO zcl_lnt_iver_options.
    t192 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t193 i_first = t200 i_opts = t216 ).
    IF t192 IS BOUND.
      DATA t217 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t218 TYPE REF TO object.
      t218 = t192.
      TRY.
          t191 ?= t218.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t191 IS NOT BOUND.
        TRY.
            t217 ?= t192.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t217 IS BOUND.
          t191 = t217->source( ).
        ENDIF.
        IF t191 IS NOT BOUND.
          CREATE OBJECT t191.
          t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t191->oval = t192.
        ENDIF.
      ENDIF.
    ENDIF.
    t106->load( ).
    APPEND t191 TO t106->items.
    t106->save( ).
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t221) = zlnt_runtime_desc_78196487750d=>zlnt_member_d117_490f9bcc19a9.
    IF t221 IS BOUND.
      CREATE OBJECT t220.
      t220->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t220->cval = t221.
    ENDIF.
    t106->load( ).
    APPEND t220 TO t106->items.
    t106->save( ).
    t98 = zcl_lnt_st_combi_module=>per( i_first = t101 i_second = t104 i_rest = t106 ).
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t229.
    t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t229->sval = |DEFINITION|.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t233 TYPE REF TO zif_lnt_statement_runnable.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t98 IS BOUND.
      DATA t236 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t237 TYPE REF TO object.
      t237 = t98.
      TRY.
          t234 ?= t237.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t234 IS NOT BOUND.
        TRY.
            t236 ?= t98.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t236 IS BOUND.
          t234 = t236->source( ).
        ENDIF.
        IF t234 IS NOT BOUND.
          CREATE OBJECT t234.
          t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t234->oval = t98.
        ENDIF.
      ENDIF.
    ENDIF.
    t233 = zcl_lnt_st_combi_module=>opt_prio( i_first = t234 ).
    IF t233 IS BOUND.
      DATA t238 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t239 TYPE REF TO object.
      t239 = t233.
      TRY.
          t232 ?= t239.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t232 IS NOT BOUND.
        TRY.
            t238 ?= t233.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t238 IS BOUND.
          t232 = t238->source( ).
        ENDIF.
        IF t232 IS NOT BOUND.
          CREATE OBJECT t232.
          t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t232->oval = t233.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t241.
    t226 = zcl_lnt_st_combi_module=>seq( i_first = t229 i_second = t232 i_rest = t241 ).
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t248.
    t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t248->sval = |CLASS|.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t252) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    IF t252 IS BOUND.
      CREATE OBJECT t251.
      t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t251->cval = t252.
    ENDIF.
    DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t253.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t226 IS BOUND.
      DATA t258 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t259 TYPE REF TO object.
      t259 = t226.
      TRY.
          t256 ?= t259.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t256 IS NOT BOUND.
        TRY.
            t258 ?= t226.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t258 IS BOUND.
          t256 = t258->source( ).
        ENDIF.
        IF t256 IS NOT BOUND.
          CREATE OBJECT t256.
          t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t256->oval = t226.
        ENDIF.
      ENDIF.
    ENDIF.
    t253->load( ).
    APPEND t256 TO t253->items.
    t253->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t248 i_second = t251 i_rest = t253 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d411_59ccb35321de.
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
