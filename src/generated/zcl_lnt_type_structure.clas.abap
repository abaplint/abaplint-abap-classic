* TS: src/abap/2_statements/expressions/type_structure.ts:7:1 TypeStructure
CLASS zcl_lnt_type_structure DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_type_structure IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d162_57231f39acd0.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t1 = zcl_lnt_st_combi_module=>alt( i_first = t4 i_second = t7 i_rest = t10 ).
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t17.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t22 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v779| ).
    IF t22 IS BOUND.
      DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t27 TYPE REF TO object.
      t27 = t22.
      TRY.
          t21 ?= t27.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t26 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t26 IS BOUND.
          t21 = t26->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t31.
    t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t31->sval = |FUNCTION REQUEST|.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t36 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t37 TYPE REF TO object.
      t37 = t1.
      TRY.
          t34 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t34 IS NOT BOUND.
        TRY.
            t36 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS BOUND.
          t34 = t36->source( ).
        ENDIF.
        IF t34 IS NOT BOUND.
          CREATE OBJECT t34.
          t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t34->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t39.
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t31 i_second = t34 i_rest = t39 ).
    IF t29 IS BOUND.
      DATA t44 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t45 TYPE REF TO object.
      t45 = t29.
      TRY.
          t28 ?= t45.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t28 IS NOT BOUND.
        TRY.
            t44 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t44 IS BOUND.
          t28 = t44->source( ).
        ENDIF.
        IF t28 IS NOT BOUND.
          CREATE OBJECT t28.
          t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t28->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t48 TYPE REF TO zcl_lnt_iver_options.
    DATA(t53) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t53->has = abap_true.
    t53->value = |OpenABAP|.
    t48 = NEW zcl_lnt_iver_options( i_also = t53 ).
    CREATE OBJECT t48->zlnt_view_ownkeys_b0e8086400eb.
    t48->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t55 ).
    CREATE OBJECT t48->zlnt_json_ownkeys_70e5fd461788.
    t48->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t57 ).
    t20 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t21 i_first = t28 i_opts = t48 ).
    t17->load( ).
    APPEND t20 TO t17->items.
    t17->save( ).
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t62 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t62 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v779| ).
    IF t62 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t67 TYPE REF TO object.
      t67 = t62.
      TRY.
          t61 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t61 IS NOT BOUND.
        TRY.
            t66 ?= t62.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t61 = t66->source( ).
        ENDIF.
        IF t61 IS NOT BOUND.
          CREATE OBJECT t61.
          t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t61->oval = t62.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t71.
    t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t71->sval = |ACTION REQUEST|.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t77 TYPE REF TO object.
      t77 = t1.
      TRY.
          t74 ?= t77.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t74 IS NOT BOUND.
        TRY.
            t76 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t76 IS BOUND.
          t74 = t76->source( ).
        ENDIF.
        IF t74 IS NOT BOUND.
          CREATE OBJECT t74.
          t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t74->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t79.
    t69 = zcl_lnt_st_combi_module=>seq( i_first = t71 i_second = t74 i_rest = t79 ).
    IF t69 IS BOUND.
      DATA t84 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t85 TYPE REF TO object.
      t85 = t69.
      TRY.
          t68 ?= t85.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t68 IS NOT BOUND.
        TRY.
            t84 ?= t69.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t84 IS BOUND.
          t68 = t84->source( ).
        ENDIF.
        IF t68 IS NOT BOUND.
          CREATE OBJECT t68.
          t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t68->oval = t69.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t88 TYPE REF TO zcl_lnt_iver_options.
    DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t93->has = abap_true.
    t93->value = |OpenABAP|.
    t88 = NEW zcl_lnt_iver_options( i_also = t93 ).
    CREATE OBJECT t88->zlnt_view_ownkeys_b0e8086400eb.
    t88->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t95 ).
    CREATE OBJECT t88->zlnt_json_ownkeys_70e5fd461788.
    t88->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t97 ).
    t60 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t61 i_first = t68 i_opts = t88 ).
    t17->load( ).
    APPEND t60 TO t17->items.
    t17->save( ).
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = |ACTION IMPORT|.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t106) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t105->cval = t106.
    ENDIF.
    DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t108.
    t100 = zcl_lnt_st_combi_module=>seq( i_first = t102 i_second = t105 i_rest = t108 ).
    t17->load( ).
    APPEND t100 TO t17->items.
    t17->save( ).
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t116 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t116 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v781| ).
    IF t116 IS BOUND.
      DATA t120 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t121 TYPE REF TO object.
      t121 = t116.
      TRY.
          t115 ?= t121.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t115 IS NOT BOUND.
        TRY.
            t120 ?= t116.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t120 IS BOUND.
          t115 = t120->source( ).
        ENDIF.
        IF t115 IS NOT BOUND.
          CREATE OBJECT t115.
          t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t115->oval = t116.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t125.
    t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t125->sval = |GLOBAL AUTHORIZATION REQUEST|.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t130 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t131 TYPE REF TO object.
      t131 = t1.
      TRY.
          t128 ?= t131.
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
    DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t133.
    t123 = zcl_lnt_st_combi_module=>seq( i_first = t125 i_second = t128 i_rest = t133 ).
    IF t123 IS BOUND.
      DATA t138 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t139 TYPE REF TO object.
      t139 = t123.
      TRY.
          t122 ?= t139.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t122 IS NOT BOUND.
        TRY.
            t138 ?= t123.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t138 IS BOUND.
          t122 = t138->source( ).
        ENDIF.
        IF t122 IS NOT BOUND.
          CREATE OBJECT t122.
          t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t122->oval = t123.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t142 TYPE REF TO zcl_lnt_iver_options.
    DATA(t147) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t147->has = abap_true.
    t147->value = |OpenABAP|.
    t142 = NEW zcl_lnt_iver_options( i_also = t147 ).
    CREATE OBJECT t142->zlnt_view_ownkeys_b0e8086400eb.
    t142->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t149 ).
    CREATE OBJECT t142->zlnt_json_ownkeys_70e5fd461788.
    t142->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t151 ).
    t114 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t115 i_first = t122 i_opts = t142 ).
    t17->load( ).
    APPEND t114 TO t17->items.
    t17->save( ).
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t156 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t156 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v781| ).
    IF t156 IS BOUND.
      DATA t160 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t161 TYPE REF TO object.
      t161 = t156.
      TRY.
          t155 ?= t161.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t155 IS NOT BOUND.
        TRY.
            t160 ?= t156.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t160 IS BOUND.
          t155 = t160->source( ).
        ENDIF.
        IF t155 IS NOT BOUND.
          CREATE OBJECT t155.
          t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t155->oval = t156.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t165.
    t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t165->sval = |GLOBAL AUTHORIZATION RESULT|.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t170 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t171 TYPE REF TO object.
      t171 = t1.
      TRY.
          t168 ?= t171.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t168 IS NOT BOUND.
        TRY.
            t170 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t170 IS BOUND.
          t168 = t170->source( ).
        ENDIF.
        IF t168 IS NOT BOUND.
          CREATE OBJECT t168.
          t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t168->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t173.
    t163 = zcl_lnt_st_combi_module=>seq( i_first = t165 i_second = t168 i_rest = t173 ).
    IF t163 IS BOUND.
      DATA t178 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t179 TYPE REF TO object.
      t179 = t163.
      TRY.
          t162 ?= t179.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t162 IS NOT BOUND.
        TRY.
            t178 ?= t163.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t178 IS BOUND.
          t162 = t178->source( ).
        ENDIF.
        IF t162 IS NOT BOUND.
          CREATE OBJECT t162.
          t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t162->oval = t163.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t182 TYPE REF TO zcl_lnt_iver_options.
    DATA(t187) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t187->has = abap_true.
    t187->value = |OpenABAP|.
    t182 = NEW zcl_lnt_iver_options( i_also = t187 ).
    CREATE OBJECT t182->zlnt_view_ownkeys_b0e8086400eb.
    t182->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t189 ).
    CREATE OBJECT t182->zlnt_json_ownkeys_70e5fd461788.
    t182->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t191 ).
    t154 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t155 i_first = t162 i_opts = t182 ).
    t17->load( ).
    APPEND t154 TO t17->items.
    t17->save( ).
    DATA t194 TYPE REF TO zif_lnt_statement_runnable.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t196 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t196 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v781| ).
    IF t196 IS BOUND.
      DATA t200 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t201 TYPE REF TO object.
      t201 = t196.
      TRY.
          t195 ?= t201.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t195 IS NOT BOUND.
        TRY.
            t200 ?= t196.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t200 IS BOUND.
          t195 = t200->source( ).
        ENDIF.
        IF t195 IS NOT BOUND.
          CREATE OBJECT t195.
          t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t195->oval = t196.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t205.
    t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t205->sval = |GLOBAL FEATURES REQUEST|.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t210 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t211 TYPE REF TO object.
      t211 = t1.
      TRY.
          t208 ?= t211.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t208 IS NOT BOUND.
        TRY.
            t210 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t210 IS BOUND.
          t208 = t210->source( ).
        ENDIF.
        IF t208 IS NOT BOUND.
          CREATE OBJECT t208.
          t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t208->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t213.
    t203 = zcl_lnt_st_combi_module=>seq( i_first = t205 i_second = t208 i_rest = t213 ).
    IF t203 IS BOUND.
      DATA t218 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t219 TYPE REF TO object.
      t219 = t203.
      TRY.
          t202 ?= t219.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t202 IS NOT BOUND.
        TRY.
            t218 ?= t203.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t218 IS BOUND.
          t202 = t218->source( ).
        ENDIF.
        IF t202 IS NOT BOUND.
          CREATE OBJECT t202.
          t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t202->oval = t203.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t222 TYPE REF TO zcl_lnt_iver_options.
    DATA(t227) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t227->has = abap_true.
    t227->value = |OpenABAP|.
    t222 = NEW zcl_lnt_iver_options( i_also = t227 ).
    CREATE OBJECT t222->zlnt_view_ownkeys_b0e8086400eb.
    t222->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t229 ).
    CREATE OBJECT t222->zlnt_json_ownkeys_70e5fd461788.
    t222->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t231 ).
    t194 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t195 i_first = t202 i_opts = t222 ).
    t17->load( ).
    APPEND t194 TO t17->items.
    t17->save( ).
    DATA t234 TYPE REF TO zif_lnt_statement_runnable.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t236 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t236 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v781| ).
    IF t236 IS BOUND.
      DATA t240 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t241 TYPE REF TO object.
      t241 = t236.
      TRY.
          t235 ?= t241.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t235 IS NOT BOUND.
        TRY.
            t240 ?= t236.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t240 IS BOUND.
          t235 = t240->source( ).
        ENDIF.
        IF t235 IS NOT BOUND.
          CREATE OBJECT t235.
          t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t235->oval = t236.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t243 TYPE REF TO zif_lnt_statement_runnable.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t245.
    t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t245->sval = |GLOBAL FEATURES RESULT|.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t250 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t251 TYPE REF TO object.
      t251 = t1.
      TRY.
          t248 ?= t251.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t248 IS NOT BOUND.
        TRY.
            t250 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t250 IS BOUND.
          t248 = t250->source( ).
        ENDIF.
        IF t248 IS NOT BOUND.
          CREATE OBJECT t248.
          t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t248->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t253.
    t243 = zcl_lnt_st_combi_module=>seq( i_first = t245 i_second = t248 i_rest = t253 ).
    IF t243 IS BOUND.
      DATA t258 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t259 TYPE REF TO object.
      t259 = t243.
      TRY.
          t242 ?= t259.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t242 IS NOT BOUND.
        TRY.
            t258 ?= t243.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t258 IS BOUND.
          t242 = t258->source( ).
        ENDIF.
        IF t242 IS NOT BOUND.
          CREATE OBJECT t242.
          t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t242->oval = t243.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t262 TYPE REF TO zcl_lnt_iver_options.
    DATA(t267) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t267->has = abap_true.
    t267->value = |OpenABAP|.
    t262 = NEW zcl_lnt_iver_options( i_also = t267 ).
    CREATE OBJECT t262->zlnt_view_ownkeys_b0e8086400eb.
    t262->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t262->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t269 ).
    CREATE OBJECT t262->zlnt_json_ownkeys_70e5fd461788.
    t262->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t262->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t271 ).
    t234 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t235 i_first = t242 i_opts = t262 ).
    t17->load( ).
    APPEND t234 TO t17->items.
    t17->save( ).
    DATA t274 TYPE REF TO zif_lnt_statement_runnable.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t276 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t276 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v780| ).
    IF t276 IS BOUND.
      DATA t280 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t281 TYPE REF TO object.
      t281 = t276.
      TRY.
          t275 ?= t281.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t275 IS NOT BOUND.
        TRY.
            t280 ?= t276.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t280 IS BOUND.
          t275 = t280->source( ).
        ENDIF.
        IF t275 IS NOT BOUND.
          CREATE OBJECT t275.
          t275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t275->oval = t276.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t283 TYPE REF TO zif_lnt_statement_runnable.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t285.
    t285->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t285->sval = |AUTHORIZATION REQUEST|.
    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t290 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t291 TYPE REF TO object.
      t291 = t1.
      TRY.
          t288 ?= t291.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t288 IS NOT BOUND.
        TRY.
            t290 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t290 IS BOUND.
          t288 = t290->source( ).
        ENDIF.
        IF t288 IS NOT BOUND.
          CREATE OBJECT t288.
          t288->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t288->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t293 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t293.
    t283 = zcl_lnt_st_combi_module=>seq( i_first = t285 i_second = t288 i_rest = t293 ).
    IF t283 IS BOUND.
      DATA t298 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t299 TYPE REF TO object.
      t299 = t283.
      TRY.
          t282 ?= t299.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t282 IS NOT BOUND.
        TRY.
            t298 ?= t283.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t298 IS BOUND.
          t282 = t298->source( ).
        ENDIF.
        IF t282 IS NOT BOUND.
          CREATE OBJECT t282.
          t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t282->oval = t283.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t302 TYPE REF TO zcl_lnt_iver_options.
    DATA(t307) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t307->has = abap_true.
    t307->value = |OpenABAP|.
    t302 = NEW zcl_lnt_iver_options( i_also = t307 ).
    CREATE OBJECT t302->zlnt_view_ownkeys_b0e8086400eb.
    t302->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t309 ).
    CREATE OBJECT t302->zlnt_json_ownkeys_70e5fd461788.
    t302->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t311 ).
    t274 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t275 i_first = t282 i_opts = t302 ).
    t17->load( ).
    APPEND t274 TO t17->items.
    t17->save( ).
    DATA t314 TYPE REF TO zif_lnt_statement_runnable.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t316 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t316 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v776| ).
    IF t316 IS BOUND.
      DATA t320 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t321 TYPE REF TO object.
      t321 = t316.
      TRY.
          t315 ?= t321.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t315 IS NOT BOUND.
        TRY.
            t320 ?= t316.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t320 IS BOUND.
          t315 = t320->source( ).
        ENDIF.
        IF t315 IS NOT BOUND.
          CREATE OBJECT t315.
          t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t315->oval = t316.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t323 TYPE REF TO zif_lnt_statement_runnable.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t325.
    t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t325->sval = |FEATURES REQUEST|.
    DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t330 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t331 TYPE REF TO object.
      t331 = t1.
      TRY.
          t328 ?= t331.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t328 IS NOT BOUND.
        TRY.
            t330 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t330 IS BOUND.
          t328 = t330->source( ).
        ENDIF.
        IF t328 IS NOT BOUND.
          CREATE OBJECT t328.
          t328->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t328->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t333 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t333.
    t323 = zcl_lnt_st_combi_module=>seq( i_first = t325 i_second = t328 i_rest = t333 ).
    IF t323 IS BOUND.
      DATA t338 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t339 TYPE REF TO object.
      t339 = t323.
      TRY.
          t322 ?= t339.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t322 IS NOT BOUND.
        TRY.
            t338 ?= t323.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t338 IS BOUND.
          t322 = t338->source( ).
        ENDIF.
        IF t322 IS NOT BOUND.
          CREATE OBJECT t322.
          t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t322->oval = t323.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t342 TYPE REF TO zcl_lnt_iver_options.
    DATA(t347) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t347->has = abap_true.
    t347->value = |OpenABAP|.
    t342 = NEW zcl_lnt_iver_options( i_also = t347 ).
    CREATE OBJECT t342->zlnt_view_ownkeys_b0e8086400eb.
    t342->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t342->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t349 ).
    CREATE OBJECT t342->zlnt_json_ownkeys_70e5fd461788.
    t342->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t342->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t351 ).
    t314 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t315 i_first = t322 i_opts = t342 ).
    t17->load( ).
    APPEND t314 TO t17->items.
    t17->save( ).
    DATA t354 TYPE REF TO zif_lnt_statement_runnable.
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t356.
    t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t356->sval = |PERMISSIONS REQUEST|.
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t360) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t360 IS BOUND.
      CREATE OBJECT t359.
      t359->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t359->cval = t360.
    ENDIF.
    DATA t362 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t362.
    t354 = zcl_lnt_st_combi_module=>seq( i_first = t356 i_second = t359 i_rest = t362 ).
    t17->load( ).
    APPEND t354 TO t17->items.
    t17->save( ).
    DATA t368 TYPE REF TO zif_lnt_statement_runnable.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t370 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t370 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v780| ).
    IF t370 IS BOUND.
      DATA t374 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t375 TYPE REF TO object.
      t375 = t370.
      TRY.
          t369 ?= t375.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t369 IS NOT BOUND.
        TRY.
            t374 ?= t370.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t374 IS BOUND.
          t369 = t374->source( ).
        ENDIF.
        IF t369 IS NOT BOUND.
          CREATE OBJECT t369.
          t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t369->oval = t370.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t377 TYPE REF TO zif_lnt_statement_runnable.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t379.
    t379->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t379->sval = |PERMISSIONS RESULT|.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t384 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t385 TYPE REF TO object.
      t385 = t1.
      TRY.
          t382 ?= t385.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t382 IS NOT BOUND.
        TRY.
            t384 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t384 IS BOUND.
          t382 = t384->source( ).
        ENDIF.
        IF t382 IS NOT BOUND.
          CREATE OBJECT t382.
          t382->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t382->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t387 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t387.
    t377 = zcl_lnt_st_combi_module=>seq( i_first = t379 i_second = t382 i_rest = t387 ).
    IF t377 IS BOUND.
      DATA t392 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t393 TYPE REF TO object.
      t393 = t377.
      TRY.
          t376 ?= t393.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t376 IS NOT BOUND.
        TRY.
            t392 ?= t377.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t392 IS BOUND.
          t376 = t392->source( ).
        ENDIF.
        IF t376 IS NOT BOUND.
          CREATE OBJECT t376.
          t376->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t376->oval = t377.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t396 TYPE REF TO zcl_lnt_iver_options.
    DATA(t401) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t401->has = abap_true.
    t401->value = |OpenABAP|.
    t396 = NEW zcl_lnt_iver_options( i_also = t401 ).
    CREATE OBJECT t396->zlnt_view_ownkeys_b0e8086400eb.
    t396->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t396->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t403 ).
    CREATE OBJECT t396->zlnt_json_ownkeys_70e5fd461788.
    t396->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t405 ).
    t368 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t369 i_first = t376 i_opts = t396 ).
    t17->load( ).
    APPEND t368 TO t17->items.
    t17->save( ).
    DATA t408 TYPE REF TO zif_lnt_statement_runnable.
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t410.
    t410->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t410->sval = |READ LINK|.
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t414) = zlnt_runtime_desc_78196487750d=>zlnt_member_d162_57231f39acd0.
    IF t414 IS BOUND.
      CREATE OBJECT t413.
      t413->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t413->cval = t414.
    ENDIF.
    DATA t416 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t416.
    t408 = zcl_lnt_st_combi_module=>seq( i_first = t410 i_second = t413 i_rest = t416 ).
    t17->load( ).
    APPEND t408 TO t17->items.
    t17->save( ).
    DATA t422 TYPE REF TO zif_lnt_statement_runnable.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t424.
    t424->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t424->sval = |HIERARCHY|.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t428) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t428 IS BOUND.
      CREATE OBJECT t427.
      t427->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t427->cval = t428.
    ENDIF.
    DATA t430 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t430.
    t422 = zcl_lnt_st_combi_module=>seq( i_first = t424 i_second = t427 i_rest = t430 ).
    t17->load( ).
    APPEND t422 TO t17->items.
    t17->save( ).
    DATA t436 TYPE REF TO zif_lnt_statement_runnable.
    DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t438.
    t438->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t438->sval = |EVENT|.
    DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t442) = zlnt_runtime_desc_78196487750d=>zlnt_member_d163_115ae64060bd.
    IF t442 IS BOUND.
      CREATE OBJECT t441.
      t441->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t441->cval = t442.
    ENDIF.
    DATA t444 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t444.
    t436 = zcl_lnt_st_combi_module=>seq( i_first = t438 i_second = t441 i_rest = t444 ).
    t17->load( ).
    APPEND t436 TO t17->items.
    t17->save( ).
    t15 = zcl_lnt_derived_types_module=>derived_types_alt( i_extra = t17 ).
    DATA t451 TYPE REF TO zif_lnt_statement_runnable.
    DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t454 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t454 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v774| ).
    IF t454 IS BOUND.
      DATA t458 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t459 TYPE REF TO object.
      t459 = t454.
      TRY.
          t453 ?= t459.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t453 IS NOT BOUND.
        TRY.
            t458 ?= t454.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t458 IS BOUND.
          t453 = t458->source( ).
        ENDIF.
        IF t453 IS NOT BOUND.
          CREATE OBJECT t453.
          t453->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t453->oval = t454.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t461 TYPE REF TO zif_lnt_statement_runnable.
    DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t463.
    t463->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t463->sval = |STRUCTURE FOR|.
    DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t468 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t469 TYPE REF TO object.
      t469 = t15.
      TRY.
          t466 ?= t469.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t466 IS NOT BOUND.
        TRY.
            t468 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t468 IS BOUND.
          t466 = t468->source( ).
        ENDIF.
        IF t466 IS NOT BOUND.
          CREATE OBJECT t466.
          t466->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t466->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t471 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t471.
    t461 = zcl_lnt_st_combi_module=>seq( i_first = t463 i_second = t466 i_rest = t471 ).
    IF t461 IS BOUND.
      DATA t476 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t477 TYPE REF TO object.
      t477 = t461.
      TRY.
          t460 ?= t477.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t460 IS NOT BOUND.
        TRY.
            t476 ?= t461.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t476 IS BOUND.
          t460 = t476->source( ).
        ENDIF.
        IF t460 IS NOT BOUND.
          CREATE OBJECT t460.
          t460->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t460->oval = t461.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t480 TYPE REF TO zcl_lnt_iver_options.
    DATA(t485) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t485->has = abap_true.
    t485->value = |OpenABAP|.
    t480 = NEW zcl_lnt_iver_options( i_also = t485 ).
    CREATE OBJECT t480->zlnt_view_ownkeys_b0e8086400eb.
    t480->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t487 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t480->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t487 ).
    CREATE OBJECT t480->zlnt_json_ownkeys_70e5fd461788.
    t480->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t480->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t489 ).
    t451 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t453 i_first = t460 i_opts = t480 ).
    DATA t491 TYPE REF TO zif_lnt_statement_runnable.
    DATA t493 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t494 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t494 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v776| ).
    IF t494 IS BOUND.
      DATA t498 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t499 TYPE REF TO object.
      t499 = t494.
      TRY.
          t493 ?= t499.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t493 IS NOT BOUND.
        TRY.
            t498 ?= t494.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t498 IS BOUND.
          t493 = t498->source( ).
        ENDIF.
        IF t493 IS NOT BOUND.
          CREATE OBJECT t493.
          t493->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t493->oval = t494.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t501 TYPE REF TO zif_lnt_statement_runnable.
    DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t503.
    t503->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t503->sval = |RESPONSE FOR|.
    DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t507 TYPE REF TO zif_lnt_statement_runnable.
    DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t510 TYPE REF TO zif_lnt_statement_runnable.
    DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t512.
    t512->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t512->sval = |FAILED EARLY|.
    DATA t515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t516) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t516 IS BOUND.
      CREATE OBJECT t515.
      t515->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t515->cval = t516.
    ENDIF.
    DATA t518 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t518.
    t510 = zcl_lnt_st_combi_module=>seq( i_first = t512 i_second = t515 i_rest = t518 ).
    IF t510 IS BOUND.
      DATA t523 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t524 TYPE REF TO object.
      t524 = t510.
      TRY.
          t509 ?= t524.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t509 IS NOT BOUND.
        TRY.
            t523 ?= t510.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t523 IS BOUND.
          t509 = t523->source( ).
        ENDIF.
        IF t509 IS NOT BOUND.
          CREATE OBJECT t509.
          t509->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t509->oval = t510.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t527 TYPE REF TO zif_lnt_statement_runnable.
    DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t529.
    t529->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t529->sval = |FAILED LATE|.
    DATA t532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t533) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t533 IS BOUND.
      CREATE OBJECT t532.
      t532->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t532->cval = t533.
    ENDIF.
    DATA t535 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t535.
    t527 = zcl_lnt_st_combi_module=>seq( i_first = t529 i_second = t532 i_rest = t535 ).
    IF t527 IS BOUND.
      DATA t540 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t541 TYPE REF TO object.
      t541 = t527.
      TRY.
          t526 ?= t541.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t526 IS NOT BOUND.
        TRY.
            t540 ?= t527.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t540 IS BOUND.
          t526 = t540->source( ).
        ENDIF.
        IF t526 IS NOT BOUND.
          CREATE OBJECT t526.
          t526->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t526->oval = t527.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t542 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t542.
    DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t546 TYPE REF TO zif_lnt_statement_runnable.
    DATA t548 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t548.
    t548->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t548->sval = |FAILED|.
    DATA t551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t552) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t552 IS BOUND.
      CREATE OBJECT t551.
      t551->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t551->cval = t552.
    ENDIF.
    DATA t554 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t554.
    t546 = zcl_lnt_st_combi_module=>seq( i_first = t548 i_second = t551 i_rest = t554 ).
    IF t546 IS BOUND.
      DATA t559 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t560 TYPE REF TO object.
      t560 = t546.
      TRY.
          t545 ?= t560.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t545 IS NOT BOUND.
        TRY.
            t559 ?= t546.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t559 IS BOUND.
          t545 = t559->source( ).
        ENDIF.
        IF t545 IS NOT BOUND.
          CREATE OBJECT t545.
          t545->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t545->oval = t546.
        ENDIF.
      ENDIF.
    ENDIF.
    t542->load( ).
    APPEND t545 TO t542->items.
    t542->save( ).
    DATA t562 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t563 TYPE REF TO zif_lnt_statement_runnable.
    DATA t565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t565.
    t565->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t565->sval = |MAPPED EARLY|.
    DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t569) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t569 IS BOUND.
      CREATE OBJECT t568.
      t568->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t568->cval = t569.
    ENDIF.
    DATA t571 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t571.
    t563 = zcl_lnt_st_combi_module=>seq( i_first = t565 i_second = t568 i_rest = t571 ).
    IF t563 IS BOUND.
      DATA t576 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t577 TYPE REF TO object.
      t577 = t563.
      TRY.
          t562 ?= t577.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t562 IS NOT BOUND.
        TRY.
            t576 ?= t563.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t576 IS BOUND.
          t562 = t576->source( ).
        ENDIF.
        IF t562 IS NOT BOUND.
          CREATE OBJECT t562.
          t562->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t562->oval = t563.
        ENDIF.
      ENDIF.
    ENDIF.
    t542->load( ).
    APPEND t562 TO t542->items.
    t542->save( ).
    DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t580 TYPE REF TO zif_lnt_statement_runnable.
    DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t582.
    t582->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t582->sval = |MAPPED LATE|.
    DATA t585 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t586) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t586 IS BOUND.
      CREATE OBJECT t585.
      t585->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t585->cval = t586.
    ENDIF.
    DATA t588 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t588.
    t580 = zcl_lnt_st_combi_module=>seq( i_first = t582 i_second = t585 i_rest = t588 ).
    IF t580 IS BOUND.
      DATA t593 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t594 TYPE REF TO object.
      t594 = t580.
      TRY.
          t579 ?= t594.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t579 IS NOT BOUND.
        TRY.
            t593 ?= t580.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t593 IS BOUND.
          t579 = t593->source( ).
        ENDIF.
        IF t579 IS NOT BOUND.
          CREATE OBJECT t579.
          t579->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t579->oval = t580.
        ENDIF.
      ENDIF.
    ENDIF.
    t542->load( ).
    APPEND t579 TO t542->items.
    t542->save( ).
    DATA t596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t597 TYPE REF TO zif_lnt_statement_runnable.
    DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t599.
    t599->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t599->sval = |MAPPED|.
    DATA t602 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t603) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t603 IS BOUND.
      CREATE OBJECT t602.
      t602->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t602->cval = t603.
    ENDIF.
    DATA t605 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t605.
    t597 = zcl_lnt_st_combi_module=>seq( i_first = t599 i_second = t602 i_rest = t605 ).
    IF t597 IS BOUND.
      DATA t610 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t611 TYPE REF TO object.
      t611 = t597.
      TRY.
          t596 ?= t611.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t596 IS NOT BOUND.
        TRY.
            t610 ?= t597.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t610 IS BOUND.
          t596 = t610->source( ).
        ENDIF.
        IF t596 IS NOT BOUND.
          CREATE OBJECT t596.
          t596->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t596->oval = t597.
        ENDIF.
      ENDIF.
    ENDIF.
    t542->load( ).
    APPEND t596 TO t542->items.
    t542->save( ).
    DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t614 TYPE REF TO zif_lnt_statement_runnable.
    DATA t616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t616.
    t616->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t616->sval = |REPORTED EARLY|.
    DATA t619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t620) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t620 IS BOUND.
      CREATE OBJECT t619.
      t619->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t619->cval = t620.
    ENDIF.
    DATA t622 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t622.
    t614 = zcl_lnt_st_combi_module=>seq( i_first = t616 i_second = t619 i_rest = t622 ).
    IF t614 IS BOUND.
      DATA t627 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t628 TYPE REF TO object.
      t628 = t614.
      TRY.
          t613 ?= t628.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t613 IS NOT BOUND.
        TRY.
            t627 ?= t614.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t627 IS BOUND.
          t613 = t627->source( ).
        ENDIF.
        IF t613 IS NOT BOUND.
          CREATE OBJECT t613.
          t613->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t613->oval = t614.
        ENDIF.
      ENDIF.
    ENDIF.
    t542->load( ).
    APPEND t613 TO t542->items.
    t542->save( ).
    DATA t630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t631 TYPE REF TO zif_lnt_statement_runnable.
    DATA t633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t633.
    t633->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t633->sval = |REPORTED LATE|.
    DATA t636 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t637) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t637 IS BOUND.
      CREATE OBJECT t636.
      t636->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t636->cval = t637.
    ENDIF.
    DATA t639 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t639.
    t631 = zcl_lnt_st_combi_module=>seq( i_first = t633 i_second = t636 i_rest = t639 ).
    IF t631 IS BOUND.
      DATA t644 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t645 TYPE REF TO object.
      t645 = t631.
      TRY.
          t630 ?= t645.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t630 IS NOT BOUND.
        TRY.
            t644 ?= t631.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t644 IS BOUND.
          t630 = t644->source( ).
        ENDIF.
        IF t630 IS NOT BOUND.
          CREATE OBJECT t630.
          t630->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t630->oval = t631.
        ENDIF.
      ENDIF.
    ENDIF.
    t542->load( ).
    APPEND t630 TO t542->items.
    t542->save( ).
    DATA t647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t648 TYPE REF TO zif_lnt_statement_runnable.
    DATA t650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t650.
    t650->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t650->sval = |REPORTED|.
    DATA t653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t654) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t654 IS BOUND.
      CREATE OBJECT t653.
      t653->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t653->cval = t654.
    ENDIF.
    DATA t656 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t656.
    t648 = zcl_lnt_st_combi_module=>seq( i_first = t650 i_second = t653 i_rest = t656 ).
    IF t648 IS BOUND.
      DATA t661 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t662 TYPE REF TO object.
      t662 = t648.
      TRY.
          t647 ?= t662.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t647 IS NOT BOUND.
        TRY.
            t661 ?= t648.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t661 IS BOUND.
          t647 = t661->source( ).
        ENDIF.
        IF t647 IS NOT BOUND.
          CREATE OBJECT t647.
          t647->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t647->oval = t648.
        ENDIF.
      ENDIF.
    ENDIF.
    t542->load( ).
    APPEND t647 TO t542->items.
    t542->save( ).
    t507 = zcl_lnt_st_combi_module=>alt_prio( i_first = t509 i_second = t526 i_rest = t542 ).
    IF t507 IS BOUND.
      DATA t667 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t668 TYPE REF TO object.
      t668 = t507.
      TRY.
          t506 ?= t668.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t506 IS NOT BOUND.
        TRY.
            t667 ?= t507.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t667 IS BOUND.
          t506 = t667->source( ).
        ENDIF.
        IF t506 IS NOT BOUND.
          CREATE OBJECT t506.
          t506->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t506->oval = t507.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t670 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t670.
    t501 = zcl_lnt_st_combi_module=>seq( i_first = t503 i_second = t506 i_rest = t670 ).
    IF t501 IS BOUND.
      DATA t675 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t676 TYPE REF TO object.
      t676 = t501.
      TRY.
          t500 ?= t676.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t500 IS NOT BOUND.
        TRY.
            t675 ?= t501.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t675 IS BOUND.
          t500 = t675->source( ).
        ENDIF.
        IF t500 IS NOT BOUND.
          CREATE OBJECT t500.
          t500->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t500->oval = t501.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t679 TYPE REF TO zcl_lnt_iver_options.
    DATA(t684) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t684->has = abap_true.
    t684->value = |OpenABAP|.
    t679 = NEW zcl_lnt_iver_options( i_also = t684 ).
    CREATE OBJECT t679->zlnt_view_ownkeys_b0e8086400eb.
    t679->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t686 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t679->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t686 ).
    CREATE OBJECT t679->zlnt_json_ownkeys_70e5fd461788.
    t679->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t688 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t679->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t688 ).
    t491 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t493 i_first = t500 i_opts = t679 ).
    DATA t690 TYPE REF TO zif_lnt_statement_runnable.
    DATA t692 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t693 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t693 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v778| ).
    IF t693 IS BOUND.
      DATA t697 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t698 TYPE REF TO object.
      t698 = t693.
      TRY.
          t692 ?= t698.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t692 IS NOT BOUND.
        TRY.
            t697 ?= t693.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t697 IS BOUND.
          t692 = t697->source( ).
        ENDIF.
        IF t692 IS NOT BOUND.
          CREATE OBJECT t692.
          t692->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t692->oval = t693.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t700 TYPE REF TO zif_lnt_statement_runnable.
    DATA t702 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t702.
    t702->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t702->sval = |REQUEST FOR|.
    DATA t705 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t706 TYPE REF TO zif_lnt_statement_runnable.
    DATA t708 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t708.
    t708->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t708->sval = |CHANGE|.
    DATA t711 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t711.
    t711->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t711->sval = |DELETE|.
    DATA t714 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t714.
    t706 = zcl_lnt_st_combi_module=>alt( i_first = t708 i_second = t711 i_rest = t714 ).
    IF t706 IS BOUND.
      DATA t719 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t720 TYPE REF TO object.
      t720 = t706.
      TRY.
          t705 ?= t720.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t705 IS NOT BOUND.
        TRY.
            t719 ?= t706.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t719 IS BOUND.
          t705 = t719->source( ).
        ENDIF.
        IF t705 IS NOT BOUND.
          CREATE OBJECT t705.
          t705->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t705->oval = t706.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t721 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t721.
    DATA t724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t725) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t725 IS BOUND.
      CREATE OBJECT t724.
      t724->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t724->cval = t725.
    ENDIF.
    t721->load( ).
    APPEND t724 TO t721->items.
    t721->save( ).
    t700 = zcl_lnt_st_combi_module=>seq( i_first = t702 i_second = t705 i_rest = t721 ).
    IF t700 IS BOUND.
      DATA t730 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t731 TYPE REF TO object.
      t731 = t700.
      TRY.
          t699 ?= t731.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t699 IS NOT BOUND.
        TRY.
            t730 ?= t700.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t730 IS BOUND.
          t699 = t730->source( ).
        ENDIF.
        IF t699 IS NOT BOUND.
          CREATE OBJECT t699.
          t699->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t699->oval = t700.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t734 TYPE REF TO zcl_lnt_iver_options.
    DATA(t739) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t739->has = abap_true.
    t739->value = |OpenABAP|.
    t734 = NEW zcl_lnt_iver_options( i_also = t739 ).
    CREATE OBJECT t734->zlnt_view_ownkeys_b0e8086400eb.
    t734->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t741 ).
    CREATE OBJECT t734->zlnt_json_ownkeys_70e5fd461788.
    t734->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t743 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t743 ).
    t690 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t692 i_first = t699 i_opts = t734 ).
    DATA t747 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t747.
    t747->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t747->sval = |TYPE|.
    DATA t750 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t751 TYPE REF TO zif_lnt_statement_runnable.
    DATA t753 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t451 IS BOUND.
      DATA t755 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t756 TYPE REF TO object.
      t756 = t451.
      TRY.
          t753 ?= t756.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t753 IS NOT BOUND.
        TRY.
            t755 ?= t451.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t755 IS BOUND.
          t753 = t755->source( ).
        ENDIF.
        IF t753 IS NOT BOUND.
          CREATE OBJECT t753.
          t753->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t753->oval = t451.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t491 IS BOUND.
      DATA t760 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t761 TYPE REF TO object.
      t761 = t491.
      TRY.
          t758 ?= t761.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t758 IS NOT BOUND.
        TRY.
            t760 ?= t491.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t760 IS BOUND.
          t758 = t760->source( ).
        ENDIF.
        IF t758 IS NOT BOUND.
          CREATE OBJECT t758.
          t758->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t758->oval = t491.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t762 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t762.
    DATA t765 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t690 IS BOUND.
      DATA t767 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t768 TYPE REF TO object.
      t768 = t690.
      TRY.
          t765 ?= t768.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t765 IS NOT BOUND.
        TRY.
            t767 ?= t690.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t767 IS BOUND.
          t765 = t767->source( ).
        ENDIF.
        IF t765 IS NOT BOUND.
          CREATE OBJECT t765.
          t765->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t765->oval = t690.
        ENDIF.
      ENDIF.
    ENDIF.
    t762->load( ).
    APPEND t765 TO t762->items.
    t762->save( ).
    t751 = zcl_lnt_st_combi_module=>alt_prio( i_first = t753 i_second = t758 i_rest = t762 ).
    IF t751 IS BOUND.
      DATA t773 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t774 TYPE REF TO object.
      t774 = t751.
      TRY.
          t750 ?= t774.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t750 IS NOT BOUND.
        TRY.
            t773 ?= t751.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t773 IS BOUND.
          t750 = t773->source( ).
        ENDIF.
        IF t750 IS NOT BOUND.
          CREATE OBJECT t750.
          t750->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t750->oval = t751.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t775 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t775.
    DATA t778 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t779 TYPE REF TO zif_lnt_statement_runnable.
    DATA t780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t780.
    t780->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t780->sval = |VALUE IS INITIAL|.
    t779 = zcl_lnt_st_combi_module=>opt_prio( i_first = t780 ).
    IF t779 IS BOUND.
      DATA t782 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t783 TYPE REF TO object.
      t783 = t779.
      TRY.
          t778 ?= t783.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t778 IS NOT BOUND.
        TRY.
            t782 ?= t779.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t782 IS BOUND.
          t778 = t782->source( ).
        ENDIF.
        IF t778 IS NOT BOUND.
          CREATE OBJECT t778.
          t778->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t778->oval = t779.
        ENDIF.
      ENDIF.
    ENDIF.
    t775->load( ).
    APPEND t778 TO t775->items.
    t775->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t747 i_second = t750 i_rest = t775 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d153_a3333d63766c.
  ENDMETHOD.
ENDCLASS.
