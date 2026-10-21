* TS: src/abap/2_statements/expressions/select.ts:8:1 Select
CLASS zcl_lnt_st_expres_select DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_expres_select IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d258_47daac7ded2f.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d259_29e6bae3a66c.
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    t1 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t7 i_rest = t9 ).
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = |SINGLE|.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = |FOR UPDATE|.
    t30 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t32 ).
    IF t30 IS BOUND.
      DATA t34 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t29 ?= t30.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t29 IS NOT BOUND.
        TRY.
            t34 ?= t30.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t34 IS BOUND.
          t29 = t34->source( ).
        ENDIF.
        IF t29 IS NOT BOUND.
          CREATE OBJECT t29.
          t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t29->oval = t30.
        ENDIF.
      ENDIF.
    ENDIF.
    t28 = zcl_lnt_st_combi_module=>opt_prio( i_first = t29 ).
    IF t28 IS BOUND.
      DATA t36 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t27 ?= t28.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t27 IS NOT BOUND.
        TRY.
            t36 ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS BOUND.
          t27 = t36->source( ).
        ENDIF.
        IF t27 IS NOT BOUND.
          CREATE OBJECT t27.
          t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t27->oval = t28.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t46) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t46->has = abap_true.
    t46->value = abap_true.
    t42 = zcl_lnt_select_core_module=>build_select_single_core( i_allow_into = t46 ).
    IF t42 IS BOUND.
      DATA t48 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t41 ?= t42.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t41 IS NOT BOUND.
        TRY.
            t48 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t48 IS BOUND.
          t41 = t48->source( ).
        ENDIF.
        IF t41 IS NOT BOUND.
          CREATE OBJECT t41.
          t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t41->oval = t42.
        ENDIF.
      ENDIF.
    ENDIF.
    t38->load( ).
    APPEND t41 TO t38->items.
    t38->save( ).
    t22 = zcl_lnt_st_combi_module=>seq( i_first = t24 i_second = t27 i_rest = t38 ).
    IF t22 IS BOUND.
      DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t21 ?= t22.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t54 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t54 IS BOUND.
          t21 = t54->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t62) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t62->has = abap_true.
    t62->value = abap_true.
    DATA t64 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t58 = zcl_lnt_select_core_module=>build_select_core( i_allow_into = t62 i_allow_order_by = t64 ).
    IF t58 IS BOUND.
      DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t57 ?= t58.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t57 IS NOT BOUND.
        TRY.
            t65 ?= t58.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t65 IS BOUND.
          t57 = t65->source( ).
        ENDIF.
        IF t57 IS NOT BOUND.
          CREATE OBJECT t57.
          t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t57->oval = t58.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t68.
    t18 = zcl_lnt_st_combi_module=>alt_prio( i_first = t21 i_second = t57 i_rest = t68 ).
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t76 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t76 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    IF t76 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t81 TYPE REF TO object.
      t81 = t76.
      TRY.
          t75 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t75 IS NOT BOUND.
        TRY.
            t80 ?= t76.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t75 = t80->source( ).
        ENDIF.
        IF t75 IS NOT BOUND.
          CREATE OBJECT t75.
          t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t75->oval = t76.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d260_1308f310bc0a.
    IF t85 IS BOUND.
      CREATE OBJECT t84.
      t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t84->cval = t85.
    ENDIF.
    t83 = zcl_lnt_st_combi_module=>plus_prio( i_first = t84 ).
    IF t83 IS BOUND.
      DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t82 ?= t83.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t82 IS NOT BOUND.
        TRY.
            t86 ?= t83.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t86 IS BOUND.
          t82 = t86->source( ).
        ENDIF.
        IF t82 IS NOT BOUND.
          CREATE OBJECT t82.
          t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t82->oval = t83.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t90 TYPE REF TO zcl_lnt_iver_options.
    DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t95->has = abap_true.
    t95->value = |OpenABAP|.
    t90 = NEW zcl_lnt_iver_options( i_also = t95 ).
    CREATE OBJECT t90->zlnt_view_ownkeys_b0e8086400eb.
    t90->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t97 ).
    CREATE OBJECT t90->zlnt_json_ownkeys_70e5fd461788.
    t90->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t99 ).
    t73 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t75 i_first = t82 i_opts = t90 ).
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t105 TYPE REF TO zif_lnt_statement_runnable.
    DATA t106 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t109) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t109->has = abap_true.
    t109->value = abap_false.
    t106 = t109.
    DATA(t114) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t114->has = abap_true.
    t114->value = abap_false.
    t105 = zcl_lnt_select_core_module=>build_select_core( i_allow_into = t106 i_allow_order_by = t114 ).
    IF t105 IS BOUND.
      DATA t116 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t104 ?= t105.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t104 IS NOT BOUND.
        TRY.
            t116 ?= t105.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t116 IS BOUND.
          t104 = t116->source( ).
        ENDIF.
        IF t104 IS NOT BOUND.
          CREATE OBJECT t104.
          t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t104->oval = t105.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t73 IS BOUND.
      DATA t121 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t119 ?= t73.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t119 IS NOT BOUND.
        TRY.
            t121 ?= t73.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t121 IS BOUND.
          t119 = t121->source( ).
        ENDIF.
        IF t119 IS NOT BOUND.
          CREATE OBJECT t119.
          t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t119->oval = t73.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t123.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d261_e2dcf59482ac.
    IF t129 IS BOUND.
      CREATE OBJECT t128.
      t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t128->cval = t129.
    ENDIF.
    t127 = zcl_lnt_st_combi_module=>opt_prio( i_first = t128 ).
    IF t127 IS BOUND.
      DATA t130 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t126 ?= t127.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t126 IS NOT BOUND.
        TRY.
            t130 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t130 IS BOUND.
          t126 = t130->source( ).
        ENDIF.
        IF t126 IS NOT BOUND.
          CREATE OBJECT t126.
          t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t126->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    t123->load( ).
    APPEND t126 TO t123->items.
    t123->save( ).
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t137 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t135 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t135 IS NOT BOUND.
        TRY.
            t137 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t137 IS BOUND.
          t135 = t137->source( ).
        ENDIF.
        IF t135 IS NOT BOUND.
          CREATE OBJECT t135.
          t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t135->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t134 = zcl_lnt_st_combi_module=>opt_prio( i_first = t135 ).
    IF t134 IS BOUND.
      DATA t139 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t133 ?= t134.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t133 IS NOT BOUND.
        TRY.
            t139 ?= t134.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t139 IS BOUND.
          t133 = t139->source( ).
        ENDIF.
        IF t133 IS NOT BOUND.
          CREATE OBJECT t133.
          t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t133->oval = t134.
        ENDIF.
      ENDIF.
    ENDIF.
    t123->load( ).
    APPEND t133 TO t123->items.
    t123->save( ).
    t101 = zcl_lnt_st_combi_module=>seq( i_first = t104 i_second = t119 i_rest = t123 ).
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t147.
    t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t147->sval = |SELECT|.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t101 IS BOUND.
      DATA t155 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t153 ?= t101.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t153 IS NOT BOUND.
        TRY.
            t155 ?= t101.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t155 IS BOUND.
          t153 = t155->source( ).
        ENDIF.
        IF t153 IS NOT BOUND.
          CREATE OBJECT t153.
          t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t153->oval = t101.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18 IS BOUND.
      DATA t160 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t158 ?= t18.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t158 IS NOT BOUND.
        TRY.
            t160 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t160 IS BOUND.
          t158 = t160->source( ).
        ENDIF.
        IF t158 IS NOT BOUND.
          CREATE OBJECT t158.
          t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t158->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t163.
    t151 = zcl_lnt_st_combi_module=>alt_prio( i_first = t153 i_second = t158 i_rest = t163 ).
    IF t151 IS BOUND.
      DATA t168 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t150 ?= t151.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t150 IS NOT BOUND.
        TRY.
            t168 ?= t151.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t168 IS BOUND.
          t150 = t168->source( ).
        ENDIF.
        IF t150 IS NOT BOUND.
          CREATE OBJECT t150.
          t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t150->oval = t151.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t171.
    result = zcl_lnt_st_combi_module=>seq( i_first = t147 i_second = t150 i_rest = t171 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0.
  ENDMETHOD.
ENDCLASS.
