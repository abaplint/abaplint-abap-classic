* TS: src/abap/2_statements/expressions/_derived_types.ts.module module
CLASS zcl_lnt_derived_types_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS common_derived_types RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS derived_types_alt IMPORTING i_extra TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-DATA zlnt_builtin_init_97883fd3a7a5 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_7b8174c20e26.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_derived_types_module IMPLEMENTATION.
  METHOD common_derived_types.
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
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t21 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v774| ).
    IF t21 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t26 TYPE REF TO object.
      t26 = t21.
      TRY.
          t20 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t20 IS NOT BOUND.
        TRY.
            t25 ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t20 = t25->source( ).
        ENDIF.
        IF t20 IS NOT BOUND.
          CREATE OBJECT t20.
          t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t20->oval = t21.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t30->sval = |FAILED LATE|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t36 TYPE REF TO object.
      t36 = t1.
      TRY.
          t33 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t33 IS NOT BOUND.
        TRY.
            t35 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t35 IS BOUND.
          t33 = t35->source( ).
        ENDIF.
        IF t33 IS NOT BOUND.
          CREATE OBJECT t33.
          t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t33->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    t28 = zcl_lnt_st_combi_module=>seq( i_first = t30 i_second = t33 i_rest = t38 ).
    IF t28 IS BOUND.
      DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t44 TYPE REF TO object.
      t44 = t28.
      TRY.
          t27 ?= t44.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t27 IS NOT BOUND.
        TRY.
            t43 ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t43 IS BOUND.
          t27 = t43->source( ).
        ENDIF.
        IF t27 IS NOT BOUND.
          CREATE OBJECT t27.
          t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t27->oval = t28.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t47 TYPE REF TO zcl_lnt_iver_options.
    DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t52->has = abap_true.
    t52->value = |OpenABAP|.
    t47 = NEW zcl_lnt_iver_options( i_also = t52 ).
    CREATE OBJECT t47->zlnt_view_ownkeys_b0e8086400eb.
    t47->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t47->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t54 ).
    CREATE OBJECT t47->zlnt_json_ownkeys_70e5fd461788.
    t47->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t47->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t56 ).
    t19 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t20 i_first = t27 i_opts = t47 ).
    t16->load( ).
    APPEND t19 TO t16->items.
    t16->save( ).
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t61 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t61 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v774| ).
    IF t61 IS BOUND.
      DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t66 TYPE REF TO object.
      t66 = t61.
      TRY.
          t60 ?= t66.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t65 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t65 IS BOUND.
          t60 = t65->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t70.
    t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t70->sval = |MAPPED LATE|.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t76 TYPE REF TO object.
      t76 = t1.
      TRY.
          t73 ?= t76.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t75 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t75 IS BOUND.
          t73 = t75->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t78.
    t68 = zcl_lnt_st_combi_module=>seq( i_first = t70 i_second = t73 i_rest = t78 ).
    IF t68 IS BOUND.
      DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t84 TYPE REF TO object.
      t84 = t68.
      TRY.
          t67 ?= t84.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t67 IS NOT BOUND.
        TRY.
            t83 ?= t68.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t83 IS BOUND.
          t67 = t83->source( ).
        ENDIF.
        IF t67 IS NOT BOUND.
          CREATE OBJECT t67.
          t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t67->oval = t68.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t87 TYPE REF TO zcl_lnt_iver_options.
    DATA(t92) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t92->has = abap_true.
    t92->value = |OpenABAP|.
    t87 = NEW zcl_lnt_iver_options( i_also = t92 ).
    CREATE OBJECT t87->zlnt_view_ownkeys_b0e8086400eb.
    t87->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t94 ).
    CREATE OBJECT t87->zlnt_json_ownkeys_70e5fd461788.
    t87->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t96 ).
    t59 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t60 i_first = t67 i_opts = t87 ).
    t16->load( ).
    APPEND t59 TO t16->items.
    t16->save( ).
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t101 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t101 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v774| ).
    IF t101 IS BOUND.
      DATA t105 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t106 TYPE REF TO object.
      t106 = t101.
      TRY.
          t100 ?= t106.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t100 IS NOT BOUND.
        TRY.
            t105 ?= t101.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t105 IS BOUND.
          t100 = t105->source( ).
        ENDIF.
        IF t100 IS NOT BOUND.
          CREATE OBJECT t100.
          t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t100->oval = t101.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t110.
    t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t110->sval = |REPORTED LATE|.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t116 TYPE REF TO object.
      t116 = t1.
      TRY.
          t113 ?= t116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t113 IS NOT BOUND.
        TRY.
            t115 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t113 = t115->source( ).
        ENDIF.
        IF t113 IS NOT BOUND.
          CREATE OBJECT t113.
          t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t113->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t118.
    t108 = zcl_lnt_st_combi_module=>seq( i_first = t110 i_second = t113 i_rest = t118 ).
    IF t108 IS BOUND.
      DATA t123 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t124 TYPE REF TO object.
      t124 = t108.
      TRY.
          t107 ?= t124.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t107 IS NOT BOUND.
        TRY.
            t123 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t123 IS BOUND.
          t107 = t123->source( ).
        ENDIF.
        IF t107 IS NOT BOUND.
          CREATE OBJECT t107.
          t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t107->oval = t108.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t127 TYPE REF TO zcl_lnt_iver_options.
    DATA(t132) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t132->has = abap_true.
    t132->value = |OpenABAP|.
    t127 = NEW zcl_lnt_iver_options( i_also = t132 ).
    CREATE OBJECT t127->zlnt_view_ownkeys_b0e8086400eb.
    t127->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t134 ).
    CREATE OBJECT t127->zlnt_json_ownkeys_70e5fd461788.
    t127->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t136 ).
    t99 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t100 i_first = t107 i_opts = t127 ).
    t16->load( ).
    APPEND t99 TO t16->items.
    t16->save( ).
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t141 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t141 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v777| ).
    IF t141 IS BOUND.
      DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t146 TYPE REF TO object.
      t146 = t141.
      TRY.
          t140 ?= t146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t140 IS NOT BOUND.
        TRY.
            t145 ?= t141.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t145 IS BOUND.
          t140 = t145->source( ).
        ENDIF.
        IF t140 IS NOT BOUND.
          CREATE OBJECT t140.
          t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t140->oval = t141.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t150.
    t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t150->sval = |FAILED EARLY|.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t155 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t156 TYPE REF TO object.
      t156 = t1.
      TRY.
          t153 ?= t156.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t153 IS NOT BOUND.
        TRY.
            t155 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t155 IS BOUND.
          t153 = t155->source( ).
        ENDIF.
        IF t153 IS NOT BOUND.
          CREATE OBJECT t153.
          t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t153->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t158.
    t148 = zcl_lnt_st_combi_module=>seq( i_first = t150 i_second = t153 i_rest = t158 ).
    IF t148 IS BOUND.
      DATA t163 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t164 TYPE REF TO object.
      t164 = t148.
      TRY.
          t147 ?= t164.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t147 IS NOT BOUND.
        TRY.
            t163 ?= t148.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t163 IS BOUND.
          t147 = t163->source( ).
        ENDIF.
        IF t147 IS NOT BOUND.
          CREATE OBJECT t147.
          t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t147->oval = t148.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t167 TYPE REF TO zcl_lnt_iver_options.
    DATA(t172) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t172->has = abap_true.
    t172->value = |OpenABAP|.
    t167 = NEW zcl_lnt_iver_options( i_also = t172 ).
    CREATE OBJECT t167->zlnt_view_ownkeys_b0e8086400eb.
    t167->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t167->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t174 ).
    CREATE OBJECT t167->zlnt_json_ownkeys_70e5fd461788.
    t167->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t167->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t176 ).
    t139 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t140 i_first = t147 i_opts = t167 ).
    t16->load( ).
    APPEND t139 TO t16->items.
    t16->save( ).
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t181 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t181 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v777| ).
    IF t181 IS BOUND.
      DATA t185 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t186 TYPE REF TO object.
      t186 = t181.
      TRY.
          t180 ?= t186.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t180 IS NOT BOUND.
        TRY.
            t185 ?= t181.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t185 IS BOUND.
          t180 = t185->source( ).
        ENDIF.
        IF t180 IS NOT BOUND.
          CREATE OBJECT t180.
          t180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t180->oval = t181.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t190.
    t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t190->sval = |MAPPED EARLY|.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t195 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t196 TYPE REF TO object.
      t196 = t1.
      TRY.
          t193 ?= t196.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t193 IS NOT BOUND.
        TRY.
            t195 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t195 IS BOUND.
          t193 = t195->source( ).
        ENDIF.
        IF t193 IS NOT BOUND.
          CREATE OBJECT t193.
          t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t193->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t198.
    t188 = zcl_lnt_st_combi_module=>seq( i_first = t190 i_second = t193 i_rest = t198 ).
    IF t188 IS BOUND.
      DATA t203 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t204 TYPE REF TO object.
      t204 = t188.
      TRY.
          t187 ?= t204.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t187 IS NOT BOUND.
        TRY.
            t203 ?= t188.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t203 IS BOUND.
          t187 = t203->source( ).
        ENDIF.
        IF t187 IS NOT BOUND.
          CREATE OBJECT t187.
          t187->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t187->oval = t188.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t207 TYPE REF TO zcl_lnt_iver_options.
    DATA(t212) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t212->has = abap_true.
    t212->value = |OpenABAP|.
    t207 = NEW zcl_lnt_iver_options( i_also = t212 ).
    CREATE OBJECT t207->zlnt_view_ownkeys_b0e8086400eb.
    t207->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t214 ).
    CREATE OBJECT t207->zlnt_json_ownkeys_70e5fd461788.
    t207->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t216 ).
    t179 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t180 i_first = t187 i_opts = t207 ).
    t16->load( ).
    APPEND t179 TO t16->items.
    t16->save( ).
    DATA t219 TYPE REF TO zif_lnt_statement_runnable.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t221 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t221 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v777| ).
    IF t221 IS BOUND.
      DATA t225 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t226 TYPE REF TO object.
      t226 = t221.
      TRY.
          t220 ?= t226.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t220 IS NOT BOUND.
        TRY.
            t225 ?= t221.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t225 IS BOUND.
          t220 = t225->source( ).
        ENDIF.
        IF t220 IS NOT BOUND.
          CREATE OBJECT t220.
          t220->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t220->oval = t221.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t228 TYPE REF TO zif_lnt_statement_runnable.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t230.
    t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t230->sval = |REPORTED EARLY|.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t235 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t236 TYPE REF TO object.
      t236 = t1.
      TRY.
          t233 ?= t236.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t233 IS NOT BOUND.
        TRY.
            t235 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t235 IS BOUND.
          t233 = t235->source( ).
        ENDIF.
        IF t233 IS NOT BOUND.
          CREATE OBJECT t233.
          t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t233->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t238.
    t228 = zcl_lnt_st_combi_module=>seq( i_first = t230 i_second = t233 i_rest = t238 ).
    IF t228 IS BOUND.
      DATA t243 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t244 TYPE REF TO object.
      t244 = t228.
      TRY.
          t227 ?= t244.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t227 IS NOT BOUND.
        TRY.
            t243 ?= t228.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t243 IS BOUND.
          t227 = t243->source( ).
        ENDIF.
        IF t227 IS NOT BOUND.
          CREATE OBJECT t227.
          t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t227->oval = t228.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t247 TYPE REF TO zcl_lnt_iver_options.
    DATA(t252) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t252->has = abap_true.
    t252->value = |OpenABAP|.
    t247 = NEW zcl_lnt_iver_options( i_also = t252 ).
    CREATE OBJECT t247->zlnt_view_ownkeys_b0e8086400eb.
    t247->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t247->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t254 ).
    CREATE OBJECT t247->zlnt_json_ownkeys_70e5fd461788.
    t247->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t247->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t256 ).
    t219 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t220 i_first = t227 i_opts = t247 ).
    t16->load( ).
    APPEND t219 TO t16->items.
    t16->save( ).
    DATA t259 TYPE REF TO zif_lnt_statement_runnable.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t261 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t261 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v776| ).
    IF t261 IS BOUND.
      DATA t265 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t266 TYPE REF TO object.
      t266 = t261.
      TRY.
          t260 ?= t266.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t260 IS NOT BOUND.
        TRY.
            t265 ?= t261.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t265 IS BOUND.
          t260 = t265->source( ).
        ENDIF.
        IF t260 IS NOT BOUND.
          CREATE OBJECT t260.
          t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t260->oval = t261.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t268 TYPE REF TO zif_lnt_statement_runnable.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t270.
    t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t270->sval = |FAILED|.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t275 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t276 TYPE REF TO object.
      t276 = t1.
      TRY.
          t273 ?= t276.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t273 IS NOT BOUND.
        TRY.
            t275 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t275 IS BOUND.
          t273 = t275->source( ).
        ENDIF.
        IF t273 IS NOT BOUND.
          CREATE OBJECT t273.
          t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t273->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t278 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t278.
    t268 = zcl_lnt_st_combi_module=>seq( i_first = t270 i_second = t273 i_rest = t278 ).
    IF t268 IS BOUND.
      DATA t283 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t284 TYPE REF TO object.
      t284 = t268.
      TRY.
          t267 ?= t284.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t267 IS NOT BOUND.
        TRY.
            t283 ?= t268.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t283 IS BOUND.
          t267 = t283->source( ).
        ENDIF.
        IF t267 IS NOT BOUND.
          CREATE OBJECT t267.
          t267->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t267->oval = t268.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t287 TYPE REF TO zcl_lnt_iver_options.
    DATA(t292) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t292->has = abap_true.
    t292->value = |OpenABAP|.
    t287 = NEW zcl_lnt_iver_options( i_also = t292 ).
    CREATE OBJECT t287->zlnt_view_ownkeys_b0e8086400eb.
    t287->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t287->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t294 ).
    CREATE OBJECT t287->zlnt_json_ownkeys_70e5fd461788.
    t287->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t287->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t296 ).
    t259 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t260 i_first = t267 i_opts = t287 ).
    t16->load( ).
    APPEND t259 TO t16->items.
    t16->save( ).
    DATA t299 TYPE REF TO zif_lnt_statement_runnable.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t301 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t301 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v776| ).
    IF t301 IS BOUND.
      DATA t305 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t306 TYPE REF TO object.
      t306 = t301.
      TRY.
          t300 ?= t306.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t300 IS NOT BOUND.
        TRY.
            t305 ?= t301.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t305 IS BOUND.
          t300 = t305->source( ).
        ENDIF.
        IF t300 IS NOT BOUND.
          CREATE OBJECT t300.
          t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t300->oval = t301.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t308 TYPE REF TO zif_lnt_statement_runnable.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t310.
    t310->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t310->sval = |MAPPED|.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t315 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t316 TYPE REF TO object.
      t316 = t1.
      TRY.
          t313 ?= t316.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t313 IS NOT BOUND.
        TRY.
            t315 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t315 IS BOUND.
          t313 = t315->source( ).
        ENDIF.
        IF t313 IS NOT BOUND.
          CREATE OBJECT t313.
          t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t313->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t318 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t318.
    t308 = zcl_lnt_st_combi_module=>seq( i_first = t310 i_second = t313 i_rest = t318 ).
    IF t308 IS BOUND.
      DATA t323 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t324 TYPE REF TO object.
      t324 = t308.
      TRY.
          t307 ?= t324.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t307 IS NOT BOUND.
        TRY.
            t323 ?= t308.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t323 IS BOUND.
          t307 = t323->source( ).
        ENDIF.
        IF t307 IS NOT BOUND.
          CREATE OBJECT t307.
          t307->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t307->oval = t308.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t327 TYPE REF TO zcl_lnt_iver_options.
    DATA(t332) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t332->has = abap_true.
    t332->value = |OpenABAP|.
    t327 = NEW zcl_lnt_iver_options( i_also = t332 ).
    CREATE OBJECT t327->zlnt_view_ownkeys_b0e8086400eb.
    t327->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t327->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t334 ).
    CREATE OBJECT t327->zlnt_json_ownkeys_70e5fd461788.
    t327->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t327->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t336 ).
    t299 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t300 i_first = t307 i_opts = t327 ).
    t16->load( ).
    APPEND t299 TO t16->items.
    t16->save( ).
    DATA t339 TYPE REF TO zif_lnt_statement_runnable.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t341 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t341 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v776| ).
    IF t341 IS BOUND.
      DATA t345 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t346 TYPE REF TO object.
      t346 = t341.
      TRY.
          t340 ?= t346.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t340 IS NOT BOUND.
        TRY.
            t345 ?= t341.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t345 IS BOUND.
          t340 = t345->source( ).
        ENDIF.
        IF t340 IS NOT BOUND.
          CREATE OBJECT t340.
          t340->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t340->oval = t341.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t348 TYPE REF TO zif_lnt_statement_runnable.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t350.
    t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t350->sval = |REPORTED|.
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t355 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t356 TYPE REF TO object.
      t356 = t1.
      TRY.
          t353 ?= t356.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t353 IS NOT BOUND.
        TRY.
            t355 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t355 IS BOUND.
          t353 = t355->source( ).
        ENDIF.
        IF t353 IS NOT BOUND.
          CREATE OBJECT t353.
          t353->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t353->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t358 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t358.
    t348 = zcl_lnt_st_combi_module=>seq( i_first = t350 i_second = t353 i_rest = t358 ).
    IF t348 IS BOUND.
      DATA t363 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t364 TYPE REF TO object.
      t364 = t348.
      TRY.
          t347 ?= t364.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t347 IS NOT BOUND.
        TRY.
            t363 ?= t348.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t363 IS BOUND.
          t347 = t363->source( ).
        ENDIF.
        IF t347 IS NOT BOUND.
          CREATE OBJECT t347.
          t347->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t347->oval = t348.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t367 TYPE REF TO zcl_lnt_iver_options.
    DATA(t372) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t372->has = abap_true.
    t372->value = |OpenABAP|.
    t367 = NEW zcl_lnt_iver_options( i_also = t372 ).
    CREATE OBJECT t367->zlnt_view_ownkeys_b0e8086400eb.
    t367->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t367->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t374 ).
    CREATE OBJECT t367->zlnt_json_ownkeys_70e5fd461788.
    t367->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t367->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t376 ).
    t339 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t340 i_first = t347 i_opts = t367 ).
    t16->load( ).
    APPEND t339 TO t16->items.
    t16->save( ).
    DATA t379 TYPE REF TO zif_lnt_statement_runnable.
    DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t381 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t381 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v773| ).
    IF t381 IS BOUND.
      DATA t385 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t386 TYPE REF TO object.
      t386 = t381.
      TRY.
          t380 ?= t386.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t380 IS NOT BOUND.
        TRY.
            t385 ?= t381.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t385 IS BOUND.
          t380 = t385->source( ).
        ENDIF.
        IF t380 IS NOT BOUND.
          CREATE OBJECT t380.
          t380->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t380->oval = t381.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t388 TYPE REF TO zif_lnt_statement_runnable.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t390.
    t390->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t390->sval = |FUNCTION IMPORT|.
    DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t395 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t396 TYPE REF TO object.
      t396 = t1.
      TRY.
          t393 ?= t396.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t393 IS NOT BOUND.
        TRY.
            t395 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t395 IS BOUND.
          t393 = t395->source( ).
        ENDIF.
        IF t393 IS NOT BOUND.
          CREATE OBJECT t393.
          t393->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t393->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t398 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t398.
    t388 = zcl_lnt_st_combi_module=>seq( i_first = t390 i_second = t393 i_rest = t398 ).
    IF t388 IS BOUND.
      DATA t403 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t404 TYPE REF TO object.
      t404 = t388.
      TRY.
          t387 ?= t404.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t387 IS NOT BOUND.
        TRY.
            t403 ?= t388.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t403 IS BOUND.
          t387 = t403->source( ).
        ENDIF.
        IF t387 IS NOT BOUND.
          CREATE OBJECT t387.
          t387->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t387->oval = t388.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t407 TYPE REF TO zcl_lnt_iver_options.
    DATA(t412) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t412->has = abap_true.
    t412->value = |OpenABAP|.
    t407 = NEW zcl_lnt_iver_options( i_also = t412 ).
    CREATE OBJECT t407->zlnt_view_ownkeys_b0e8086400eb.
    t407->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t407->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t414 ).
    CREATE OBJECT t407->zlnt_json_ownkeys_70e5fd461788.
    t407->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t407->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t416 ).
    t379 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t380 i_first = t387 i_opts = t407 ).
    t16->load( ).
    APPEND t379 TO t16->items.
    t16->save( ).
    DATA t419 TYPE REF TO zif_lnt_statement_runnable.
    DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t421 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t421 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v773| ).
    IF t421 IS BOUND.
      DATA t425 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t426 TYPE REF TO object.
      t426 = t421.
      TRY.
          t420 ?= t426.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t420 IS NOT BOUND.
        TRY.
            t425 ?= t421.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t425 IS BOUND.
          t420 = t425->source( ).
        ENDIF.
        IF t420 IS NOT BOUND.
          CREATE OBJECT t420.
          t420->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t420->oval = t421.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t428 TYPE REF TO zif_lnt_statement_runnable.
    DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t430.
    t430->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t430->sval = |FUNCTION RESULT|.
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t435 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t436 TYPE REF TO object.
      t436 = t1.
      TRY.
          t433 ?= t436.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t433 IS NOT BOUND.
        TRY.
            t435 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t435 IS BOUND.
          t433 = t435->source( ).
        ENDIF.
        IF t433 IS NOT BOUND.
          CREATE OBJECT t433.
          t433->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t433->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t438 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t438.
    t428 = zcl_lnt_st_combi_module=>seq( i_first = t430 i_second = t433 i_rest = t438 ).
    IF t428 IS BOUND.
      DATA t443 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t444 TYPE REF TO object.
      t444 = t428.
      TRY.
          t427 ?= t444.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t427 IS NOT BOUND.
        TRY.
            t443 ?= t428.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t443 IS BOUND.
          t427 = t443->source( ).
        ENDIF.
        IF t427 IS NOT BOUND.
          CREATE OBJECT t427.
          t427->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t427->oval = t428.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t447 TYPE REF TO zcl_lnt_iver_options.
    DATA(t452) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t452->has = abap_true.
    t452->value = |OpenABAP|.
    t447 = NEW zcl_lnt_iver_options( i_also = t452 ).
    CREATE OBJECT t447->zlnt_view_ownkeys_b0e8086400eb.
    t447->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t447->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t454 ).
    CREATE OBJECT t447->zlnt_json_ownkeys_70e5fd461788.
    t447->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t447->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t456 ).
    t419 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t420 i_first = t427 i_opts = t447 ).
    t16->load( ).
    APPEND t419 TO t16->items.
    t16->save( ).
    DATA t459 TYPE REF TO zif_lnt_statement_runnable.
    DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t461 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t461 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v773| ).
    IF t461 IS BOUND.
      DATA t465 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t466 TYPE REF TO object.
      t466 = t461.
      TRY.
          t460 ?= t466.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t460 IS NOT BOUND.
        TRY.
            t465 ?= t461.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t465 IS BOUND.
          t460 = t465->source( ).
        ENDIF.
        IF t460 IS NOT BOUND.
          CREATE OBJECT t460.
          t460->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t460->oval = t461.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t468 TYPE REF TO zif_lnt_statement_runnable.
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t470.
    t470->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t470->sval = |ACTION RESULT|.
    DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t475 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t476 TYPE REF TO object.
      t476 = t1.
      TRY.
          t473 ?= t476.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t473 IS NOT BOUND.
        TRY.
            t475 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t475 IS BOUND.
          t473 = t475->source( ).
        ENDIF.
        IF t473 IS NOT BOUND.
          CREATE OBJECT t473.
          t473->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t473->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t478 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t478.
    t468 = zcl_lnt_st_combi_module=>seq( i_first = t470 i_second = t473 i_rest = t478 ).
    IF t468 IS BOUND.
      DATA t483 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t484 TYPE REF TO object.
      t484 = t468.
      TRY.
          t467 ?= t484.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t467 IS NOT BOUND.
        TRY.
            t483 ?= t468.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t483 IS BOUND.
          t467 = t483->source( ).
        ENDIF.
        IF t467 IS NOT BOUND.
          CREATE OBJECT t467.
          t467->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t467->oval = t468.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t487 TYPE REF TO zcl_lnt_iver_options.
    DATA(t492) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t492->has = abap_true.
    t492->value = |OpenABAP|.
    t487 = NEW zcl_lnt_iver_options( i_also = t492 ).
    CREATE OBJECT t487->zlnt_view_ownkeys_b0e8086400eb.
    t487->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t487->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t494 ).
    CREATE OBJECT t487->zlnt_json_ownkeys_70e5fd461788.
    t487->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t487->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t496 ).
    t459 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t460 i_first = t467 i_opts = t487 ).
    t16->load( ).
    APPEND t459 TO t16->items.
    t16->save( ).
    DATA t499 TYPE REF TO zif_lnt_statement_runnable.
    DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t501 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t501 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v781| ).
    IF t501 IS BOUND.
      DATA t505 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t506 TYPE REF TO object.
      t506 = t501.
      TRY.
          t500 ?= t506.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t500 IS NOT BOUND.
        TRY.
            t505 ?= t501.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t505 IS BOUND.
          t500 = t505->source( ).
        ENDIF.
        IF t500 IS NOT BOUND.
          CREATE OBJECT t500.
          t500->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t500->oval = t501.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t508 TYPE REF TO zif_lnt_statement_runnable.
    DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t510.
    t510->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t510->sval = |INSTANCE AUTHORIZATION KEY|.
    DATA t513 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t515 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t516 TYPE REF TO object.
      t516 = t1.
      TRY.
          t513 ?= t516.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t513 IS NOT BOUND.
        TRY.
            t515 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t515 IS BOUND.
          t513 = t515->source( ).
        ENDIF.
        IF t513 IS NOT BOUND.
          CREATE OBJECT t513.
          t513->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t513->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t518 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t518.
    t508 = zcl_lnt_st_combi_module=>seq( i_first = t510 i_second = t513 i_rest = t518 ).
    IF t508 IS BOUND.
      DATA t523 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t524 TYPE REF TO object.
      t524 = t508.
      TRY.
          t507 ?= t524.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t507 IS NOT BOUND.
        TRY.
            t523 ?= t508.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t523 IS BOUND.
          t507 = t523->source( ).
        ENDIF.
        IF t507 IS NOT BOUND.
          CREATE OBJECT t507.
          t507->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t507->oval = t508.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t527 TYPE REF TO zcl_lnt_iver_options.
    DATA(t532) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t532->has = abap_true.
    t532->value = |OpenABAP|.
    t527 = NEW zcl_lnt_iver_options( i_also = t532 ).
    CREATE OBJECT t527->zlnt_view_ownkeys_b0e8086400eb.
    t527->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t527->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t534 ).
    CREATE OBJECT t527->zlnt_json_ownkeys_70e5fd461788.
    t527->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t527->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t536 ).
    t499 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t500 i_first = t507 i_opts = t527 ).
    t16->load( ).
    APPEND t499 TO t16->items.
    t16->save( ).
    DATA t539 TYPE REF TO zif_lnt_statement_runnable.
    DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t541 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t541 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v781| ).
    IF t541 IS BOUND.
      DATA t545 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t546 TYPE REF TO object.
      t546 = t541.
      TRY.
          t540 ?= t546.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t540 IS NOT BOUND.
        TRY.
            t545 ?= t541.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t545 IS BOUND.
          t540 = t545->source( ).
        ENDIF.
        IF t540 IS NOT BOUND.
          CREATE OBJECT t540.
          t540->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t540->oval = t541.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t548 TYPE REF TO zif_lnt_statement_runnable.
    DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t550.
    t550->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t550->sval = |INSTANCE AUTHORIZATION REQUEST|.
    DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t555 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t556 TYPE REF TO object.
      t556 = t1.
      TRY.
          t553 ?= t556.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t553 IS NOT BOUND.
        TRY.
            t555 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t555 IS BOUND.
          t553 = t555->source( ).
        ENDIF.
        IF t553 IS NOT BOUND.
          CREATE OBJECT t553.
          t553->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t553->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t558 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t558.
    t548 = zcl_lnt_st_combi_module=>seq( i_first = t550 i_second = t553 i_rest = t558 ).
    IF t548 IS BOUND.
      DATA t563 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t564 TYPE REF TO object.
      t564 = t548.
      TRY.
          t547 ?= t564.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t547 IS NOT BOUND.
        TRY.
            t563 ?= t548.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t563 IS BOUND.
          t547 = t563->source( ).
        ENDIF.
        IF t547 IS NOT BOUND.
          CREATE OBJECT t547.
          t547->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t547->oval = t548.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t567 TYPE REF TO zcl_lnt_iver_options.
    DATA(t572) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t572->has = abap_true.
    t572->value = |OpenABAP|.
    t567 = NEW zcl_lnt_iver_options( i_also = t572 ).
    CREATE OBJECT t567->zlnt_view_ownkeys_b0e8086400eb.
    t567->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t567->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t574 ).
    CREATE OBJECT t567->zlnt_json_ownkeys_70e5fd461788.
    t567->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t567->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t576 ).
    t539 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t540 i_first = t547 i_opts = t567 ).
    t16->load( ).
    APPEND t539 TO t16->items.
    t16->save( ).
    DATA t579 TYPE REF TO zif_lnt_statement_runnable.
    DATA t580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t581 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t581 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v781| ).
    IF t581 IS BOUND.
      DATA t585 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t586 TYPE REF TO object.
      t586 = t581.
      TRY.
          t580 ?= t586.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t580 IS NOT BOUND.
        TRY.
            t585 ?= t581.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t585 IS BOUND.
          t580 = t585->source( ).
        ENDIF.
        IF t580 IS NOT BOUND.
          CREATE OBJECT t580.
          t580->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t580->oval = t581.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t588 TYPE REF TO zif_lnt_statement_runnable.
    DATA t590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t590.
    t590->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t590->sval = |INSTANCE AUTHORIZATION RESULT|.
    DATA t593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t595 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t596 TYPE REF TO object.
      t596 = t1.
      TRY.
          t593 ?= t596.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t593 IS NOT BOUND.
        TRY.
            t595 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t595 IS BOUND.
          t593 = t595->source( ).
        ENDIF.
        IF t593 IS NOT BOUND.
          CREATE OBJECT t593.
          t593->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t593->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t598 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t598.
    t588 = zcl_lnt_st_combi_module=>seq( i_first = t590 i_second = t593 i_rest = t598 ).
    IF t588 IS BOUND.
      DATA t603 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t604 TYPE REF TO object.
      t604 = t588.
      TRY.
          t587 ?= t604.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t587 IS NOT BOUND.
        TRY.
            t603 ?= t588.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t603 IS BOUND.
          t587 = t603->source( ).
        ENDIF.
        IF t587 IS NOT BOUND.
          CREATE OBJECT t587.
          t587->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t587->oval = t588.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t607 TYPE REF TO zcl_lnt_iver_options.
    DATA(t612) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t612->has = abap_true.
    t612->value = |OpenABAP|.
    t607 = NEW zcl_lnt_iver_options( i_also = t612 ).
    CREATE OBJECT t607->zlnt_view_ownkeys_b0e8086400eb.
    t607->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t607->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t614 ).
    CREATE OBJECT t607->zlnt_json_ownkeys_70e5fd461788.
    t607->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t607->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t616 ).
    t579 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t580 i_first = t587 i_opts = t607 ).
    t16->load( ).
    APPEND t579 TO t16->items.
    t16->save( ).
    DATA t619 TYPE REF TO zif_lnt_statement_runnable.
    DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t621 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t621 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v781| ).
    IF t621 IS BOUND.
      DATA t625 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t626 TYPE REF TO object.
      t626 = t621.
      TRY.
          t620 ?= t626.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t620 IS NOT BOUND.
        TRY.
            t625 ?= t621.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t625 IS BOUND.
          t620 = t625->source( ).
        ENDIF.
        IF t620 IS NOT BOUND.
          CREATE OBJECT t620.
          t620->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t620->oval = t621.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t628 TYPE REF TO zif_lnt_statement_runnable.
    DATA t630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t630.
    t630->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t630->sval = |INSTANCE FEATURES KEY|.
    DATA t633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t635 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t636 TYPE REF TO object.
      t636 = t1.
      TRY.
          t633 ?= t636.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t633 IS NOT BOUND.
        TRY.
            t635 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t635 IS BOUND.
          t633 = t635->source( ).
        ENDIF.
        IF t633 IS NOT BOUND.
          CREATE OBJECT t633.
          t633->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t633->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t638 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t638.
    t628 = zcl_lnt_st_combi_module=>seq( i_first = t630 i_second = t633 i_rest = t638 ).
    IF t628 IS BOUND.
      DATA t643 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t644 TYPE REF TO object.
      t644 = t628.
      TRY.
          t627 ?= t644.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t627 IS NOT BOUND.
        TRY.
            t643 ?= t628.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t643 IS BOUND.
          t627 = t643->source( ).
        ENDIF.
        IF t627 IS NOT BOUND.
          CREATE OBJECT t627.
          t627->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t627->oval = t628.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t647 TYPE REF TO zcl_lnt_iver_options.
    DATA(t652) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t652->has = abap_true.
    t652->value = |OpenABAP|.
    t647 = NEW zcl_lnt_iver_options( i_also = t652 ).
    CREATE OBJECT t647->zlnt_view_ownkeys_b0e8086400eb.
    t647->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t654 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t647->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t654 ).
    CREATE OBJECT t647->zlnt_json_ownkeys_70e5fd461788.
    t647->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t647->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t656 ).
    t619 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t620 i_first = t627 i_opts = t647 ).
    t16->load( ).
    APPEND t619 TO t16->items.
    t16->save( ).
    DATA t659 TYPE REF TO zif_lnt_statement_runnable.
    DATA t660 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t661 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t661 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v781| ).
    IF t661 IS BOUND.
      DATA t665 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t666 TYPE REF TO object.
      t666 = t661.
      TRY.
          t660 ?= t666.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t660 IS NOT BOUND.
        TRY.
            t665 ?= t661.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t665 IS BOUND.
          t660 = t665->source( ).
        ENDIF.
        IF t660 IS NOT BOUND.
          CREATE OBJECT t660.
          t660->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t660->oval = t661.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t668 TYPE REF TO zif_lnt_statement_runnable.
    DATA t670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t670.
    t670->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t670->sval = |INSTANCE FEATURES REQUEST|.
    DATA t673 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t675 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t676 TYPE REF TO object.
      t676 = t1.
      TRY.
          t673 ?= t676.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t673 IS NOT BOUND.
        TRY.
            t675 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t675 IS BOUND.
          t673 = t675->source( ).
        ENDIF.
        IF t673 IS NOT BOUND.
          CREATE OBJECT t673.
          t673->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t673->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t678 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t678.
    t668 = zcl_lnt_st_combi_module=>seq( i_first = t670 i_second = t673 i_rest = t678 ).
    IF t668 IS BOUND.
      DATA t683 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t684 TYPE REF TO object.
      t684 = t668.
      TRY.
          t667 ?= t684.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t667 IS NOT BOUND.
        TRY.
            t683 ?= t668.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t683 IS BOUND.
          t667 = t683->source( ).
        ENDIF.
        IF t667 IS NOT BOUND.
          CREATE OBJECT t667.
          t667->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t667->oval = t668.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t687 TYPE REF TO zcl_lnt_iver_options.
    DATA(t692) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t692->has = abap_true.
    t692->value = |OpenABAP|.
    t687 = NEW zcl_lnt_iver_options( i_also = t692 ).
    CREATE OBJECT t687->zlnt_view_ownkeys_b0e8086400eb.
    t687->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t694 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t687->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t694 ).
    CREATE OBJECT t687->zlnt_json_ownkeys_70e5fd461788.
    t687->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t687->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t696 ).
    t659 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t660 i_first = t667 i_opts = t687 ).
    t16->load( ).
    APPEND t659 TO t16->items.
    t16->save( ).
    DATA t699 TYPE REF TO zif_lnt_statement_runnable.
    DATA t700 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t701 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t701 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v781| ).
    IF t701 IS BOUND.
      DATA t705 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t706 TYPE REF TO object.
      t706 = t701.
      TRY.
          t700 ?= t706.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t700 IS NOT BOUND.
        TRY.
            t705 ?= t701.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t705 IS BOUND.
          t700 = t705->source( ).
        ENDIF.
        IF t700 IS NOT BOUND.
          CREATE OBJECT t700.
          t700->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t700->oval = t701.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t707 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t708 TYPE REF TO zif_lnt_statement_runnable.
    DATA t710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t710.
    t710->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t710->sval = |INSTANCE FEATURES RESULT|.
    DATA t713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t715 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t716 TYPE REF TO object.
      t716 = t1.
      TRY.
          t713 ?= t716.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t713 IS NOT BOUND.
        TRY.
            t715 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t715 IS BOUND.
          t713 = t715->source( ).
        ENDIF.
        IF t713 IS NOT BOUND.
          CREATE OBJECT t713.
          t713->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t713->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t718 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t718.
    t708 = zcl_lnt_st_combi_module=>seq( i_first = t710 i_second = t713 i_rest = t718 ).
    IF t708 IS BOUND.
      DATA t723 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t724 TYPE REF TO object.
      t724 = t708.
      TRY.
          t707 ?= t724.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t707 IS NOT BOUND.
        TRY.
            t723 ?= t708.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t723 IS BOUND.
          t707 = t723->source( ).
        ENDIF.
        IF t707 IS NOT BOUND.
          CREATE OBJECT t707.
          t707->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t707->oval = t708.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t727 TYPE REF TO zcl_lnt_iver_options.
    DATA(t732) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t732->has = abap_true.
    t732->value = |OpenABAP|.
    t727 = NEW zcl_lnt_iver_options( i_also = t732 ).
    CREATE OBJECT t727->zlnt_view_ownkeys_b0e8086400eb.
    t727->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t734 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t727->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t734 ).
    CREATE OBJECT t727->zlnt_json_ownkeys_70e5fd461788.
    t727->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t736 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t727->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t736 ).
    t699 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t700 i_first = t707 i_opts = t727 ).
    t16->load( ).
    APPEND t699 TO t16->items.
    t16->save( ).
    DATA t739 TYPE REF TO zif_lnt_statement_runnable.
    DATA t740 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t741 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t741 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v780| ).
    IF t741 IS BOUND.
      DATA t745 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t746 TYPE REF TO object.
      t746 = t741.
      TRY.
          t740 ?= t746.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t740 IS NOT BOUND.
        TRY.
            t745 ?= t741.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t745 IS BOUND.
          t740 = t745->source( ).
        ENDIF.
        IF t740 IS NOT BOUND.
          CREATE OBJECT t740.
          t740->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t740->oval = t741.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t747 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t748 TYPE REF TO zif_lnt_statement_runnable.
    DATA t750 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t750.
    t750->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t750->sval = |AUTHORIZATION RESULT|.
    DATA t753 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t755 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t756 TYPE REF TO object.
      t756 = t1.
      TRY.
          t753 ?= t756.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t753 IS NOT BOUND.
        TRY.
            t755 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t755 IS BOUND.
          t753 = t755->source( ).
        ENDIF.
        IF t753 IS NOT BOUND.
          CREATE OBJECT t753.
          t753->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t753->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t758 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t758.
    t748 = zcl_lnt_st_combi_module=>seq( i_first = t750 i_second = t753 i_rest = t758 ).
    IF t748 IS BOUND.
      DATA t763 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t764 TYPE REF TO object.
      t764 = t748.
      TRY.
          t747 ?= t764.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t747 IS NOT BOUND.
        TRY.
            t763 ?= t748.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t763 IS BOUND.
          t747 = t763->source( ).
        ENDIF.
        IF t747 IS NOT BOUND.
          CREATE OBJECT t747.
          t747->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t747->oval = t748.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t767 TYPE REF TO zcl_lnt_iver_options.
    DATA(t772) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t772->has = abap_true.
    t772->value = |OpenABAP|.
    t767 = NEW zcl_lnt_iver_options( i_also = t772 ).
    CREATE OBJECT t767->zlnt_view_ownkeys_b0e8086400eb.
    t767->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t767->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t774 ).
    CREATE OBJECT t767->zlnt_json_ownkeys_70e5fd461788.
    t767->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t767->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t776 ).
    t739 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t740 i_first = t747 i_opts = t767 ).
    t16->load( ).
    APPEND t739 TO t16->items.
    t16->save( ).
    DATA t779 TYPE REF TO zif_lnt_statement_runnable.
    DATA t780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t781 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t781 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v781| ).
    IF t781 IS BOUND.
      DATA t785 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t786 TYPE REF TO object.
      t786 = t781.
      TRY.
          t780 ?= t786.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t780 IS NOT BOUND.
        TRY.
            t785 ?= t781.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t785 IS BOUND.
          t780 = t785->source( ).
        ENDIF.
        IF t780 IS NOT BOUND.
          CREATE OBJECT t780.
          t780->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t780->oval = t781.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t787 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t788 TYPE REF TO zif_lnt_statement_runnable.
    DATA t790 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t790.
    t790->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t790->sval = |AUTHORIZATION KEY|.
    DATA t793 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t795 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t796 TYPE REF TO object.
      t796 = t1.
      TRY.
          t793 ?= t796.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t793 IS NOT BOUND.
        TRY.
            t795 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t795 IS BOUND.
          t793 = t795->source( ).
        ENDIF.
        IF t793 IS NOT BOUND.
          CREATE OBJECT t793.
          t793->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t793->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t798 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t798.
    t788 = zcl_lnt_st_combi_module=>seq( i_first = t790 i_second = t793 i_rest = t798 ).
    IF t788 IS BOUND.
      DATA t803 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t804 TYPE REF TO object.
      t804 = t788.
      TRY.
          t787 ?= t804.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t787 IS NOT BOUND.
        TRY.
            t803 ?= t788.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t803 IS BOUND.
          t787 = t803->source( ).
        ENDIF.
        IF t787 IS NOT BOUND.
          CREATE OBJECT t787.
          t787->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t787->oval = t788.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t807 TYPE REF TO zcl_lnt_iver_options.
    DATA(t812) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t812->has = abap_true.
    t812->value = |OpenABAP|.
    t807 = NEW zcl_lnt_iver_options( i_also = t812 ).
    CREATE OBJECT t807->zlnt_view_ownkeys_b0e8086400eb.
    t807->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t814 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t807->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t814 ).
    CREATE OBJECT t807->zlnt_json_ownkeys_70e5fd461788.
    t807->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t807->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t816 ).
    t779 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t780 i_first = t787 i_opts = t807 ).
    t16->load( ).
    APPEND t779 TO t16->items.
    t16->save( ).
    DATA t819 TYPE REF TO zif_lnt_statement_runnable.
    DATA t820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t821 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t821 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v776| ).
    IF t821 IS BOUND.
      DATA t825 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t826 TYPE REF TO object.
      t826 = t821.
      TRY.
          t820 ?= t826.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t820 IS NOT BOUND.
        TRY.
            t825 ?= t821.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t825 IS BOUND.
          t820 = t825->source( ).
        ENDIF.
        IF t820 IS NOT BOUND.
          CREATE OBJECT t820.
          t820->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t820->oval = t821.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t827 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t828 TYPE REF TO zif_lnt_statement_runnable.
    DATA t830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t830.
    t830->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t830->sval = |FEATURES RESULT|.
    DATA t833 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t835 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t836 TYPE REF TO object.
      t836 = t1.
      TRY.
          t833 ?= t836.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t833 IS NOT BOUND.
        TRY.
            t835 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t835 IS BOUND.
          t833 = t835->source( ).
        ENDIF.
        IF t833 IS NOT BOUND.
          CREATE OBJECT t833.
          t833->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t833->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t838 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t838.
    t828 = zcl_lnt_st_combi_module=>seq( i_first = t830 i_second = t833 i_rest = t838 ).
    IF t828 IS BOUND.
      DATA t843 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t844 TYPE REF TO object.
      t844 = t828.
      TRY.
          t827 ?= t844.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t827 IS NOT BOUND.
        TRY.
            t843 ?= t828.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t843 IS BOUND.
          t827 = t843->source( ).
        ENDIF.
        IF t827 IS NOT BOUND.
          CREATE OBJECT t827.
          t827->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t827->oval = t828.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t847 TYPE REF TO zcl_lnt_iver_options.
    DATA(t852) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t852->has = abap_true.
    t852->value = |OpenABAP|.
    t847 = NEW zcl_lnt_iver_options( i_also = t852 ).
    CREATE OBJECT t847->zlnt_view_ownkeys_b0e8086400eb.
    t847->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t854 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t847->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t854 ).
    CREATE OBJECT t847->zlnt_json_ownkeys_70e5fd461788.
    t847->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t856 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t847->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t856 ).
    t819 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t820 i_first = t827 i_opts = t847 ).
    t16->load( ).
    APPEND t819 TO t16->items.
    t16->save( ).
    DATA t859 TYPE REF TO zif_lnt_statement_runnable.
    DATA t860 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t861 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t861 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v776| ).
    IF t861 IS BOUND.
      DATA t865 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t866 TYPE REF TO object.
      t866 = t861.
      TRY.
          t860 ?= t866.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t860 IS NOT BOUND.
        TRY.
            t865 ?= t861.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t865 IS BOUND.
          t860 = t865->source( ).
        ENDIF.
        IF t860 IS NOT BOUND.
          CREATE OBJECT t860.
          t860->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t860->oval = t861.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t867 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t868 TYPE REF TO zif_lnt_statement_runnable.
    DATA t870 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t870.
    t870->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t870->sval = |FEATURES KEY|.
    DATA t873 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t875 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t876 TYPE REF TO object.
      t876 = t1.
      TRY.
          t873 ?= t876.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t873 IS NOT BOUND.
        TRY.
            t875 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t875 IS BOUND.
          t873 = t875->source( ).
        ENDIF.
        IF t873 IS NOT BOUND.
          CREATE OBJECT t873.
          t873->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t873->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t878 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t878.
    t868 = zcl_lnt_st_combi_module=>seq( i_first = t870 i_second = t873 i_rest = t878 ).
    IF t868 IS BOUND.
      DATA t883 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t884 TYPE REF TO object.
      t884 = t868.
      TRY.
          t867 ?= t884.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t867 IS NOT BOUND.
        TRY.
            t883 ?= t868.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t883 IS BOUND.
          t867 = t883->source( ).
        ENDIF.
        IF t867 IS NOT BOUND.
          CREATE OBJECT t867.
          t867->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t867->oval = t868.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t887 TYPE REF TO zcl_lnt_iver_options.
    DATA(t892) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t892->has = abap_true.
    t892->value = |OpenABAP|.
    t887 = NEW zcl_lnt_iver_options( i_also = t892 ).
    CREATE OBJECT t887->zlnt_view_ownkeys_b0e8086400eb.
    t887->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t894 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t887->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t894 ).
    CREATE OBJECT t887->zlnt_json_ownkeys_70e5fd461788.
    t887->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t896 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t887->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t896 ).
    t859 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t860 i_first = t867 i_opts = t887 ).
    t16->load( ).
    APPEND t859 TO t16->items.
    t16->save( ).
    DATA t899 TYPE REF TO zif_lnt_statement_runnable.
    DATA t900 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t901 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t901 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v780| ).
    IF t901 IS BOUND.
      DATA t905 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t906 TYPE REF TO object.
      t906 = t901.
      TRY.
          t900 ?= t906.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t900 IS NOT BOUND.
        TRY.
            t905 ?= t901.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t905 IS BOUND.
          t900 = t905->source( ).
        ENDIF.
        IF t900 IS NOT BOUND.
          CREATE OBJECT t900.
          t900->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t900->oval = t901.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t907 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t908 TYPE REF TO zif_lnt_statement_runnable.
    DATA t910 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t910.
    t910->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t910->sval = |PERMISSIONS KEY|.
    DATA t913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t915 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t916 TYPE REF TO object.
      t916 = t1.
      TRY.
          t913 ?= t916.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t913 IS NOT BOUND.
        TRY.
            t915 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t915 IS BOUND.
          t913 = t915->source( ).
        ENDIF.
        IF t913 IS NOT BOUND.
          CREATE OBJECT t913.
          t913->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t913->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t918 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t918.
    t908 = zcl_lnt_st_combi_module=>seq( i_first = t910 i_second = t913 i_rest = t918 ).
    IF t908 IS BOUND.
      DATA t923 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t924 TYPE REF TO object.
      t924 = t908.
      TRY.
          t907 ?= t924.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t907 IS NOT BOUND.
        TRY.
            t923 ?= t908.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t923 IS BOUND.
          t907 = t923->source( ).
        ENDIF.
        IF t907 IS NOT BOUND.
          CREATE OBJECT t907.
          t907->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t907->oval = t908.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t927 TYPE REF TO zcl_lnt_iver_options.
    DATA(t932) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t932->has = abap_true.
    t932->value = |OpenABAP|.
    t927 = NEW zcl_lnt_iver_options( i_also = t932 ).
    CREATE OBJECT t927->zlnt_view_ownkeys_b0e8086400eb.
    t927->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t934 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t927->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t934 ).
    CREATE OBJECT t927->zlnt_json_ownkeys_70e5fd461788.
    t927->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t936 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t927->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t936 ).
    t899 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t900 i_first = t907 i_opts = t927 ).
    t16->load( ).
    APPEND t899 TO t16->items.
    t16->save( ).
    DATA t939 TYPE REF TO zif_lnt_statement_runnable.
    DATA t941 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t941.
    t941->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t941->sval = |READ IMPORT|.
    DATA t944 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t946 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t947 TYPE REF TO object.
      t947 = t1.
      TRY.
          t944 ?= t947.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t944 IS NOT BOUND.
        TRY.
            t946 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t946 IS BOUND.
          t944 = t946->source( ).
        ENDIF.
        IF t944 IS NOT BOUND.
          CREATE OBJECT t944.
          t944->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t944->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t949 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t949.
    t939 = zcl_lnt_st_combi_module=>seq( i_first = t941 i_second = t944 i_rest = t949 ).
    t16->load( ).
    APPEND t939 TO t16->items.
    t16->save( ).
    DATA t955 TYPE REF TO zif_lnt_statement_runnable.
    DATA t957 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t957.
    t957->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t957->sval = |READ RESULT|.
    DATA t960 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t962 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t963 TYPE REF TO object.
      t963 = t1.
      TRY.
          t960 ?= t963.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t960 IS NOT BOUND.
        TRY.
            t962 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t962 IS BOUND.
          t960 = t962->source( ).
        ENDIF.
        IF t960 IS NOT BOUND.
          CREATE OBJECT t960.
          t960->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t960->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t965 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t965.
    t955 = zcl_lnt_st_combi_module=>seq( i_first = t957 i_second = t960 i_rest = t965 ).
    t16->load( ).
    APPEND t955 TO t16->items.
    t16->save( ).
    DATA t971 TYPE REF TO zif_lnt_statement_runnable.
    DATA t972 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t973 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t973 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v915| ).
    IF t973 IS BOUND.
      DATA t977 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t978 TYPE REF TO object.
      t978 = t973.
      TRY.
          t972 ?= t978.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t972 IS NOT BOUND.
        TRY.
            t977 ?= t973.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t977 IS BOUND.
          t972 = t977->source( ).
        ENDIF.
        IF t972 IS NOT BOUND.
          CREATE OBJECT t972.
          t972->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t972->oval = t973.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t979 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t980 TYPE REF TO zif_lnt_statement_runnable.
    DATA t982 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t982.
    t982->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t982->sval = |READ CHANGES|.
    DATA t985 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t987 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t988 TYPE REF TO object.
      t988 = t1.
      TRY.
          t985 ?= t988.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t985 IS NOT BOUND.
        TRY.
            t987 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t987 IS BOUND.
          t985 = t987->source( ).
        ENDIF.
        IF t985 IS NOT BOUND.
          CREATE OBJECT t985.
          t985->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t985->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t990 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t990.
    t980 = zcl_lnt_st_combi_module=>seq( i_first = t982 i_second = t985 i_rest = t990 ).
    IF t980 IS BOUND.
      DATA t995 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t996 TYPE REF TO object.
      t996 = t980.
      TRY.
          t979 ?= t996.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t979 IS NOT BOUND.
        TRY.
            t995 ?= t980.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t995 IS BOUND.
          t979 = t995->source( ).
        ENDIF.
        IF t979 IS NOT BOUND.
          CREATE OBJECT t979.
          t979->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t979->oval = t980.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t999 TYPE REF TO zcl_lnt_iver_options.
    DATA(t1004) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1004->has = abap_true.
    t1004->value = |OpenABAP|.
    t999 = NEW zcl_lnt_iver_options( i_also = t1004 ).
    CREATE OBJECT t999->zlnt_view_ownkeys_b0e8086400eb.
    t999->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1006 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t999->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t1006 ).
    CREATE OBJECT t999->zlnt_json_ownkeys_70e5fd461788.
    t999->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1008 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t999->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t1008 ).
    t971 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t972 i_first = t979 i_opts = t999 ).
    t16->load( ).
    APPEND t971 TO t16->items.
    t16->save( ).
    DATA t1011 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1013 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1013.
    t1013->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1013->sval = |CREATE|.
    DATA t1016 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t1018 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1019 TYPE REF TO object.
      t1019 = t1.
      TRY.
          t1016 ?= t1019.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1016 IS NOT BOUND.
        TRY.
            t1018 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1018 IS BOUND.
          t1016 = t1018->source( ).
        ENDIF.
        IF t1016 IS NOT BOUND.
          CREATE OBJECT t1016.
          t1016->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1016->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1021 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1021.
    t1011 = zcl_lnt_st_combi_module=>seq( i_first = t1013 i_second = t1016 i_rest = t1021 ).
    t16->load( ).
    APPEND t1011 TO t16->items.
    t16->save( ).
    DATA t1027 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1029 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1029.
    t1029->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1029->sval = |DELETE|.
    DATA t1032 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t1034 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1035 TYPE REF TO object.
      t1035 = t1.
      TRY.
          t1032 ?= t1035.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1032 IS NOT BOUND.
        TRY.
            t1034 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1034 IS BOUND.
          t1032 = t1034->source( ).
        ENDIF.
        IF t1032 IS NOT BOUND.
          CREATE OBJECT t1032.
          t1032->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1032->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1037 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1037.
    t1027 = zcl_lnt_st_combi_module=>seq( i_first = t1029 i_second = t1032 i_rest = t1037 ).
    t16->load( ).
    APPEND t1027 TO t16->items.
    t16->save( ).
    DATA t1043 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1045 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1045.
    t1045->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1045->sval = |UPDATE|.
    DATA t1048 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t1050 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1051 TYPE REF TO object.
      t1051 = t1.
      TRY.
          t1048 ?= t1051.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1048 IS NOT BOUND.
        TRY.
            t1050 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1050 IS BOUND.
          t1048 = t1050->source( ).
        ENDIF.
        IF t1048 IS NOT BOUND.
          CREATE OBJECT t1048.
          t1048->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1048->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1053 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1053.
    t1043 = zcl_lnt_st_combi_module=>seq( i_first = t1045 i_second = t1048 i_rest = t1053 ).
    t16->load( ).
    APPEND t1043 TO t16->items.
    t16->save( ).
    DATA t1059 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1060 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1061 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1061 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v777| ).
    IF t1061 IS BOUND.
      DATA t1065 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1066 TYPE REF TO object.
      t1066 = t1061.
      TRY.
          t1060 ?= t1066.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1060 IS NOT BOUND.
        TRY.
            t1065 ?= t1061.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1065 IS BOUND.
          t1060 = t1065->source( ).
        ENDIF.
        IF t1060 IS NOT BOUND.
          CREATE OBJECT t1060.
          t1060->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1060->oval = t1061.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1067 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1068 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1070 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1070.
    t1070->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1070->sval = |LOCK|.
    DATA t1073 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t1075 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1076 TYPE REF TO object.
      t1076 = t1.
      TRY.
          t1073 ?= t1076.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1073 IS NOT BOUND.
        TRY.
            t1075 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1075 IS BOUND.
          t1073 = t1075->source( ).
        ENDIF.
        IF t1073 IS NOT BOUND.
          CREATE OBJECT t1073.
          t1073->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1073->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1078 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1078.
    t1068 = zcl_lnt_st_combi_module=>seq( i_first = t1070 i_second = t1073 i_rest = t1078 ).
    IF t1068 IS BOUND.
      DATA t1083 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1084 TYPE REF TO object.
      t1084 = t1068.
      TRY.
          t1067 ?= t1084.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1067 IS NOT BOUND.
        TRY.
            t1083 ?= t1068.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1083 IS BOUND.
          t1067 = t1083->source( ).
        ENDIF.
        IF t1067 IS NOT BOUND.
          CREATE OBJECT t1067.
          t1067->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1067->oval = t1068.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1087 TYPE REF TO zcl_lnt_iver_options.
    DATA(t1092) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1092->has = abap_true.
    t1092->value = |OpenABAP|.
    t1087 = NEW zcl_lnt_iver_options( i_also = t1092 ).
    CREATE OBJECT t1087->zlnt_view_ownkeys_b0e8086400eb.
    t1087->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1094 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1087->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t1094 ).
    CREATE OBJECT t1087->zlnt_json_ownkeys_70e5fd461788.
    t1087->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1096 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1087->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t1096 ).
    t1059 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t1060 i_first = t1067 i_opts = t1087 ).
    t16->load( ).
    APPEND t1059 TO t16->items.
    t16->save( ).
    DATA t1099 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1101 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1101 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v775| ).
    IF t1101 IS BOUND.
      DATA t1105 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1106 TYPE REF TO object.
      t1106 = t1101.
      TRY.
          t1100 ?= t1106.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1100 IS NOT BOUND.
        TRY.
            t1105 ?= t1101.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1105 IS BOUND.
          t1100 = t1105->source( ).
        ENDIF.
        IF t1100 IS NOT BOUND.
          CREATE OBJECT t1100.
          t1100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1100->oval = t1101.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1108 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1110.
    t1110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1110->sval = |KEY OF|.
    DATA t1113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t1115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1116 TYPE REF TO object.
      t1116 = t1.
      TRY.
          t1113 ?= t1116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1113 IS NOT BOUND.
        TRY.
            t1115 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1115 IS BOUND.
          t1113 = t1115->source( ).
        ENDIF.
        IF t1113 IS NOT BOUND.
          CREATE OBJECT t1113.
          t1113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1113->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1118.
    t1108 = zcl_lnt_st_combi_module=>seq( i_first = t1110 i_second = t1113 i_rest = t1118 ).
    IF t1108 IS BOUND.
      DATA t1123 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1124 TYPE REF TO object.
      t1124 = t1108.
      TRY.
          t1107 ?= t1124.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1107 IS NOT BOUND.
        TRY.
            t1123 ?= t1108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1123 IS BOUND.
          t1107 = t1123->source( ).
        ENDIF.
        IF t1107 IS NOT BOUND.
          CREATE OBJECT t1107.
          t1107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1107->oval = t1108.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1127 TYPE REF TO zcl_lnt_iver_options.
    DATA(t1132) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1132->has = abap_true.
    t1132->value = |OpenABAP|.
    t1127 = NEW zcl_lnt_iver_options( i_also = t1132 ).
    CREATE OBJECT t1127->zlnt_view_ownkeys_b0e8086400eb.
    t1127->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t1134 ).
    CREATE OBJECT t1127->zlnt_json_ownkeys_70e5fd461788.
    t1127->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1127->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t1136 ).
    t1099 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t1100 i_first = t1107 i_opts = t1127 ).
    t16->load( ).
    APPEND t1099 TO t16->items.
    t16->save( ).
    DATA t1139 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1141 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1141 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v776| ).
    IF t1141 IS BOUND.
      DATA t1145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1146 TYPE REF TO object.
      t1146 = t1141.
      TRY.
          t1140 ?= t1146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1140 IS NOT BOUND.
        TRY.
            t1145 ?= t1141.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1145 IS BOUND.
          t1140 = t1145->source( ).
        ENDIF.
        IF t1140 IS NOT BOUND.
          CREATE OBJECT t1140.
          t1140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1140->oval = t1141.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1148 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1150.
    t1150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1150->sval = |DETERMINATION|.
    DATA t1153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t1155 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1156 TYPE REF TO object.
      t1156 = t1.
      TRY.
          t1153 ?= t1156.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1153 IS NOT BOUND.
        TRY.
            t1155 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1155 IS BOUND.
          t1153 = t1155->source( ).
        ENDIF.
        IF t1153 IS NOT BOUND.
          CREATE OBJECT t1153.
          t1153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1153->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1158.
    t1148 = zcl_lnt_st_combi_module=>seq( i_first = t1150 i_second = t1153 i_rest = t1158 ).
    IF t1148 IS BOUND.
      DATA t1163 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1164 TYPE REF TO object.
      t1164 = t1148.
      TRY.
          t1147 ?= t1164.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1147 IS NOT BOUND.
        TRY.
            t1163 ?= t1148.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1163 IS BOUND.
          t1147 = t1163->source( ).
        ENDIF.
        IF t1147 IS NOT BOUND.
          CREATE OBJECT t1147.
          t1147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1147->oval = t1148.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1167 TYPE REF TO zcl_lnt_iver_options.
    DATA(t1172) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1172->has = abap_true.
    t1172->value = |OpenABAP|.
    t1167 = NEW zcl_lnt_iver_options( i_also = t1172 ).
    CREATE OBJECT t1167->zlnt_view_ownkeys_b0e8086400eb.
    t1167->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1167->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t1174 ).
    CREATE OBJECT t1167->zlnt_json_ownkeys_70e5fd461788.
    t1167->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1167->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t1176 ).
    t1139 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t1140 i_first = t1147 i_opts = t1167 ).
    t16->load( ).
    APPEND t1139 TO t16->items.
    t16->save( ).
    DATA t1179 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1181 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1181 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v776| ).
    IF t1181 IS BOUND.
      DATA t1185 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1186 TYPE REF TO object.
      t1186 = t1181.
      TRY.
          t1180 ?= t1186.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1180 IS NOT BOUND.
        TRY.
            t1185 ?= t1181.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1185 IS BOUND.
          t1180 = t1185->source( ).
        ENDIF.
        IF t1180 IS NOT BOUND.
          CREATE OBJECT t1180.
          t1180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1180->oval = t1181.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1188 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1190.
    t1190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1190->sval = |VALIDATION|.
    DATA t1193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t1195 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1196 TYPE REF TO object.
      t1196 = t1.
      TRY.
          t1193 ?= t1196.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1193 IS NOT BOUND.
        TRY.
            t1195 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1195 IS BOUND.
          t1193 = t1195->source( ).
        ENDIF.
        IF t1193 IS NOT BOUND.
          CREATE OBJECT t1193.
          t1193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1193->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1198.
    t1188 = zcl_lnt_st_combi_module=>seq( i_first = t1190 i_second = t1193 i_rest = t1198 ).
    IF t1188 IS BOUND.
      DATA t1203 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1204 TYPE REF TO object.
      t1204 = t1188.
      TRY.
          t1187 ?= t1204.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1187 IS NOT BOUND.
        TRY.
            t1203 ?= t1188.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1203 IS BOUND.
          t1187 = t1203->source( ).
        ENDIF.
        IF t1187 IS NOT BOUND.
          CREATE OBJECT t1187.
          t1187->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1187->oval = t1188.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1207 TYPE REF TO zcl_lnt_iver_options.
    DATA(t1212) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1212->has = abap_true.
    t1212->value = |OpenABAP|.
    t1207 = NEW zcl_lnt_iver_options( i_also = t1212 ).
    CREATE OBJECT t1207->zlnt_view_ownkeys_b0e8086400eb.
    t1207->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t1214 ).
    CREATE OBJECT t1207->zlnt_json_ownkeys_70e5fd461788.
    t1207->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1207->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t1216 ).
    t1179 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t1180 i_first = t1187 i_opts = t1207 ).
    t16->load( ).
    APPEND t1179 TO t16->items.
    t16->save( ).
    DATA t1219 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1221 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1221 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v778| ).
    IF t1221 IS BOUND.
      DATA t1225 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1226 TYPE REF TO object.
      t1226 = t1221.
      TRY.
          t1220 ?= t1226.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1220 IS NOT BOUND.
        TRY.
            t1225 ?= t1221.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1225 IS BOUND.
          t1220 = t1225->source( ).
        ENDIF.
        IF t1220 IS NOT BOUND.
          CREATE OBJECT t1220.
          t1220->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1220->oval = t1221.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1228 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1230.
    t1230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1230->sval = |CHANGE|.
    DATA t1233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t1235 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1236 TYPE REF TO object.
      t1236 = t1.
      TRY.
          t1233 ?= t1236.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1233 IS NOT BOUND.
        TRY.
            t1235 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1235 IS BOUND.
          t1233 = t1235->source( ).
        ENDIF.
        IF t1233 IS NOT BOUND.
          CREATE OBJECT t1233.
          t1233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1233->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1238.
    t1228 = zcl_lnt_st_combi_module=>seq( i_first = t1230 i_second = t1233 i_rest = t1238 ).
    IF t1228 IS BOUND.
      DATA t1243 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1244 TYPE REF TO object.
      t1244 = t1228.
      TRY.
          t1227 ?= t1244.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1227 IS NOT BOUND.
        TRY.
            t1243 ?= t1228.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1243 IS BOUND.
          t1227 = t1243->source( ).
        ENDIF.
        IF t1227 IS NOT BOUND.
          CREATE OBJECT t1227.
          t1227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1227->oval = t1228.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1247 TYPE REF TO zcl_lnt_iver_options.
    DATA(t1252) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1252->has = abap_true.
    t1252->value = |OpenABAP|.
    t1247 = NEW zcl_lnt_iver_options( i_also = t1252 ).
    CREATE OBJECT t1247->zlnt_view_ownkeys_b0e8086400eb.
    t1247->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1247->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t1254 ).
    CREATE OBJECT t1247->zlnt_json_ownkeys_70e5fd461788.
    t1247->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1247->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t1256 ).
    t1219 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t1220 i_first = t1227 i_opts = t1247 ).
    t16->load( ).
    APPEND t1219 TO t16->items.
    t16->save( ).
    result = t16.

  ENDMETHOD.

  METHOD derived_types_alt.
    DATA(t1) = i_extra.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t15 = t5->concat( p0 = t1 )->concat( p0 = CAST zlnt_runtime_arra_c22708faf2e3( zcl_lnt_derived_types_module=>common_derived_types( ) ) ).
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t20 TYPE REF TO object.
    t15->load( ).
    READ TABLE t15->items INDEX 1 INTO t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t21 ?= t20.
      DATA t22 TYPE REF TO object.
      t22 = t21->as_ref( ).
      t18 ?= t22.
    ELSE.
      t18 ?= t20.
    ENDIF.
    t17 = t18.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA t26 TYPE REF TO object.
    t15->load( ).
    READ TABLE t15->items INDEX 2 INTO t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t27 ?= t26.
      DATA t28 TYPE REF TO object.
      t28 = t27->as_ref( ).
      t24 ?= t28.
    ELSE.
      t24 ?= t26.
    ENDIF.
    t23 = t24.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t29 = t15->slice1( p0 = 2 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t17 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t38 TYPE REF TO object.
      t38 = t17.
      TRY.
          t35 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t37 ?= t17.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t35 = t37->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t17.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t23 IS BOUND.
      DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t43 TYPE REF TO object.
      t43 = t23.
      TRY.
          t40 ?= t43.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t40 IS NOT BOUND.
        TRY.
            t42 ?= t23.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t42 IS BOUND.
          t40 = t42->source( ).
        ENDIF.
        IF t40 IS NOT BOUND.
          CREATE OBJECT t40.
          t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t40->oval = t23.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t44.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA t48 TYPE REF TO object.
    DATA(t49) = VALUE i( ).
    DO.
      t29->load( ).
      IF t49 >= lines( t29->items ).
        EXIT.
      ENDIF.
      CLEAR t48.
      READ TABLE t29->items INDEX t49 + 1 INTO t48.
      t49 = t49 + 1.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      CLEAR t47.
      IF t48 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t50 ?= t48.
        DATA t51 TYPE REF TO object.
        t51 = t50->as_ref( ).
        t47 ?= t51.
      ELSE.
        t47 ?= t48.
      ENDIF.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      CLEAR t53.
      IF t47 IS BOUND.
        DATA t55 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t55.
        DATA t56 TYPE REF TO object.
        CLEAR t55.
        t56 = t47.
        TRY.
            t53 ?= t56.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t53 IS NOT BOUND.
          TRY.
              t55 ?= t47.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t55 IS BOUND.
            t53 = t55->source( ).
          ENDIF.
          IF t53 IS NOT BOUND.
            CREATE OBJECT t53.
            t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t53->oval = t47.
          ENDIF.
        ENDIF.
      ENDIF.
      t44->load( ).
      APPEND t53 TO t44->items.
      t44->save( ).
    ENDDO.
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t35 i_second = t40 i_rest = t44 ).

  ENDMETHOD.

  METHOD zlnt_builtin_init_7b8174c20e26.
    IF zlnt_builtin_init_97883fd3a7a5 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_97883fd3a7a5 = abap_true.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1921_e47f466bb518.
  ENDMETHOD.
ENDCLASS.
