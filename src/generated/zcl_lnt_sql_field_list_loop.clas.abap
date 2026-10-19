* TS: src/abap/2_statements/expressions/sql_field_list_loop.ts:9:1 SQLFieldListLoop
CLASS zcl_lnt_sql_field_list_loop DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_field_list_loop IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t6 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp05| ).
    IF t6 IS BOUND.
      DATA t10 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t11 TYPE REF TO object.
      t11 = t6.
      TRY.
          t5 ?= t11.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t5 IS NOT BOUND.
        TRY.
            t10 ?= t6.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t10 IS BOUND.
          t5 = t10->source( ).
        ENDIF.
        IF t5 IS NOT BOUND.
          CREATE OBJECT t5.
          t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t5->oval = t6.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = |,|.
    DATA t16 TYPE REF TO zcl_lnt_iver_options.
    DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t21->has = abap_true.
    t21->value = |OpenABAP|.
    t16 = NEW zcl_lnt_iver_options( i_also = t21 ).
    CREATE OBJECT t16->zlnt_view_ownkeys_b0e8086400eb.
    t16->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t23 ).
    CREATE OBJECT t16->zlnt_json_ownkeys_70e5fd461788.
    t16->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t25 ).
    t4 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t5 i_first = t12 i_opts = t16 ).
    IF t4 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t28 TYPE REF TO object.
      t28 = t4.
      TRY.
          t3 ?= t28.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t27 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS BOUND.
          t3 = t27->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    t1 = zcl_lnt_st_combi_module=>opt( i_first = t3 ).
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = |AS|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
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
    DATA(t47) = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
    IF t47 IS BOUND.
      CREATE OBJECT t46.
      t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t46->cval = t47.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t51 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t52 TYPE REF TO object.
      t52 = t1.
      TRY.
          t49 ?= t52.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t49 IS NOT BOUND.
        TRY.
            t51 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t51 IS BOUND.
          t49 = t51->source( ).
        ENDIF.
        IF t49 IS NOT BOUND.
          CREATE OBJECT t49.
          t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t49->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t54.
    t43 = zcl_lnt_st_combi_module=>seq( i_first = t46 i_second = t49 i_rest = t54 ).
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t62 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t62 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp05| ).
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
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d42_9f93cd02a8cf40.
    t72 = zcl_lnt_st_combi_module=>tok( i_t = t73 ).
    IF t72 IS BOUND.
      DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t75 TYPE REF TO object.
      t75 = t72.
      TRY.
          t71 ?= t75.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t71 IS NOT BOUND.
        TRY.
            t74 ?= t72.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t74 IS BOUND.
          t71 = t74->source( ).
        ENDIF.
        IF t71 IS NOT BOUND.
          CREATE OBJECT t71.
          t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t71->oval = t72.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d171_8a7e3c79c08f.
    IF t78 IS BOUND.
      CREATE OBJECT t77.
      t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t77->cval = t78.
    ENDIF.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t80.
    t69 = zcl_lnt_st_combi_module=>seq( i_first = t71 i_second = t77 i_rest = t80 ).
    IF t69 IS BOUND.
      DATA t85 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t86 TYPE REF TO object.
      t86 = t69.
      TRY.
          t68 ?= t86.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t68 IS NOT BOUND.
        TRY.
            t85 ?= t69.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t85 IS BOUND.
          t68 = t85->source( ).
        ENDIF.
        IF t68 IS NOT BOUND.
          CREATE OBJECT t68.
          t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t68->oval = t69.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t89 TYPE REF TO zcl_lnt_iver_options.
    DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t94->has = abap_true.
    t94->value = |OpenABAP|.
    t89 = NEW zcl_lnt_iver_options( i_also = t94 ).
    CREATE OBJECT t89->zlnt_view_ownkeys_b0e8086400eb.
    t89->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t96 ).
    CREATE OBJECT t89->zlnt_json_ownkeys_70e5fd461788.
    t89->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t98 ).
    t59 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t61 i_first = t68 i_opts = t89 ).
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t43 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t108 TYPE REF TO object.
      t108 = t43.
      TRY.
          t105 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t105 IS NOT BOUND.
        TRY.
            t107 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t105 = t107->source( ).
        ENDIF.
        IF t105 IS NOT BOUND.
          CREATE OBJECT t105.
          t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t105->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    t104 = zcl_lnt_st_combi_module=>star( i_first = t105 ).
    IF t104 IS BOUND.
      DATA t109 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t110 TYPE REF TO object.
      t110 = t104.
      TRY.
          t103 ?= t110.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t109 ?= t104.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t109 IS BOUND.
          t103 = t109->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t104.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t116) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    IF t116 IS BOUND.
      CREATE OBJECT t115.
      t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t115->cval = t116.
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t59 IS BOUND.
      DATA t120 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t121 TYPE REF TO object.
      t121 = t59.
      TRY.
          t118 ?= t121.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t118 IS NOT BOUND.
        TRY.
            t120 ?= t59.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t120 IS BOUND.
          t118 = t120->source( ).
        ENDIF.
        IF t118 IS NOT BOUND.
          CREATE OBJECT t118.
          t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t118->oval = t59.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t122.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t126) = zlnt_runtime_desc_78196487750d=>zlnt_member_d295_c8c13651616a.
    IF t126 IS BOUND.
      CREATE OBJECT t125.
      t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t125->cval = t126.
    ENDIF.
    t122->load( ).
    APPEND t125 TO t122->items.
    t122->save( ).
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    IF t129 IS BOUND.
      CREATE OBJECT t128.
      t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t128->cval = t129.
    ENDIF.
    t122->load( ).
    APPEND t128 TO t122->items.
    t122->save( ).
    t113 = zcl_lnt_st_combi_module=>alt( i_first = t115 i_second = t118 i_rest = t122 ).
    IF t113 IS BOUND.
      DATA t134 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t135 TYPE REF TO object.
      t135 = t113.
      TRY.
          t112 ?= t135.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t112 IS NOT BOUND.
        TRY.
            t134 ?= t113.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t134 IS BOUND.
          t112 = t134->source( ).
        ENDIF.
        IF t112 IS NOT BOUND.
          CREATE OBJECT t112.
          t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t112->oval = t113.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t136.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t143 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t144 TYPE REF TO object.
      t144 = t29.
      TRY.
          t141 ?= t144.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t141 IS NOT BOUND.
        TRY.
            t143 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t143 IS BOUND.
          t141 = t143->source( ).
        ENDIF.
        IF t141 IS NOT BOUND.
          CREATE OBJECT t141.
          t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t141->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    t140 = zcl_lnt_st_combi_module=>opt_prio( i_first = t141 ).
    IF t140 IS BOUND.
      DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t146 TYPE REF TO object.
      t146 = t140.
      TRY.
          t139 ?= t146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t139 IS NOT BOUND.
        TRY.
            t145 ?= t140.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t145 IS BOUND.
          t139 = t145->source( ).
        ENDIF.
        IF t139 IS NOT BOUND.
          CREATE OBJECT t139.
          t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t139->oval = t140.
        ENDIF.
      ENDIF.
    ENDIF.
    t136->load( ).
    APPEND t139 TO t136->items.
    t136->save( ).
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t150 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t151 TYPE REF TO object.
      t151 = t1.
      TRY.
          t148 ?= t151.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t148 IS NOT BOUND.
        TRY.
            t150 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t150 IS BOUND.
          t148 = t150->source( ).
        ENDIF.
        IF t148 IS NOT BOUND.
          CREATE OBJECT t148.
          t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t148->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t136->load( ).
    APPEND t148 TO t136->items.
    t136->save( ).
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t43 IS BOUND.
      DATA t157 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t158 TYPE REF TO object.
      t158 = t43.
      TRY.
          t155 ?= t158.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t155 IS NOT BOUND.
        TRY.
            t157 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t157 IS BOUND.
          t155 = t157->source( ).
        ENDIF.
        IF t155 IS NOT BOUND.
          CREATE OBJECT t155.
          t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t155->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    t154 = zcl_lnt_st_combi_module=>star( i_first = t155 ).
    IF t154 IS BOUND.
      DATA t159 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t160 TYPE REF TO object.
      t160 = t154.
      TRY.
          t153 ?= t160.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t153 IS NOT BOUND.
        TRY.
            t159 ?= t154.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t159 IS BOUND.
          t153 = t159->source( ).
        ENDIF.
        IF t153 IS NOT BOUND.
          CREATE OBJECT t153.
          t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t153->oval = t154.
        ENDIF.
      ENDIF.
    ENDIF.
    t136->load( ).
    APPEND t153 TO t136->items.
    t136->save( ).
    t100 = zcl_lnt_st_combi_module=>seq( i_first = t103 i_second = t112 i_rest = t136 ).
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t168.
    t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t168->sval = |*|.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t172) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t172 IS BOUND.
      CREATE OBJECT t171.
      t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t171->cval = t172.
    ENDIF.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t173.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t100 IS BOUND.
      DATA t178 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t179 TYPE REF TO object.
      t179 = t100.
      TRY.
          t176 ?= t179.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t176 IS NOT BOUND.
        TRY.
            t178 ?= t100.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t178 IS BOUND.
          t176 = t178->source( ).
        ENDIF.
        IF t176 IS NOT BOUND.
          CREATE OBJECT t176.
          t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t176->oval = t100.
        ENDIF.
      ENDIF.
    ENDIF.
    t173->load( ).
    APPEND t176 TO t173->items.
    t173->save( ).
    result = zcl_lnt_st_combi_module=>alt( i_first = t168 i_second = t171 i_rest = t173 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d318_e4aedf15dc12.
  ENDMETHOD.
ENDCLASS.
