* TS: src/abap/5_syntax/syntax.ts.module module
CLASS zcl_lnt_syntax_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA map TYPE REF TO zlnt_runtime_map__1746889b1684.
    CLASS-METHODS add_to_map IMPORTING i_handler TYPE REF TO zif_lnt_statement_syntax.
    CLASS-DATA zlnt_builtin_init_de1d1a6daf32 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_ccbaa3f8c306.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_syntax_module IMPLEMENTATION.
  METHOD add_to_map.
    IF zcl_lnt_syntax_module=>zlnt_builtin_init_de1d1a6daf32 = abap_false.
      zcl_lnt_syntax_module=>zlnt_builtin_init_ccbaa3f8c306( ).
    ENDIF.
    DATA(t1) = i_handler.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zif_lnt_statement_syntax.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_statement_syntax.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_map__1746889b1684.
    CLEAR t5.
    IF zcl_lnt_syntax_module=>zlnt_builtin_init_de1d1a6daf32 = abap_false.
      zcl_lnt_syntax_module=>zlnt_builtin_init_ccbaa3f8c306( ).
    ENDIF.
    t5 = zcl_lnt_syntax_module=>map.
    DATA(t6) = VALUE string( ).
    DATA t7 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLEAR t7.
    DATA(t8) = t1.
    t7 = t8->zlnt_builtin_clas_3f891b097658( ).
    t6 = t7->name.
    t4 = t5->get( p0 = t6 ).
    t3 = t4.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t3.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    t11 = xsdbool( t12 = abap_false ).
    t2 = t11.
    IF t2 = abap_true.
      DATA t14 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t14.
      DATA t15 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t16.
      DATA(t17) = abap_true.
      IF t17 = abap_true.
        DATA(t18) = |syntax.ts duplicate statement syntax handler|.
        DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t19->has = abap_true.
        t19->value = t18.
        t16 = t19.
      ELSE.
        DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t20.
        t16 = t20.
      ENDIF.
      t15 = NEW zcx_lnt_assert_error( i_message_26cb = t16 ).
      t14 = NEW #( ).
      t14->payload = t15.
      CLEAR t14->source_value.
      IF t15 IS BOUND.
        DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t21.
        DATA t22 TYPE REF TO object.
        CLEAR t22.
        CLEAR t21.
        t22 = t15.
        TRY.
            t14->source_value ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t14->source_value IS NOT BOUND.
          TRY.
              t21 ?= t15.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t21 IS BOUND.
            t14->source_value = t21->source( ).
          ENDIF.
          IF t14->source_value IS NOT BOUND.
            CREATE OBJECT t14->source_value.
            t14->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t14->source_value->oval = t15.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t14.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_map__1746889b1684.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_map__1746889b1684.
    CLEAR t24.
    IF zcl_lnt_syntax_module=>zlnt_builtin_init_de1d1a6daf32 = abap_false.
      zcl_lnt_syntax_module=>zlnt_builtin_init_ccbaa3f8c306( ).
    ENDIF.
    t24 = zcl_lnt_syntax_module=>map.
    DATA(t25) = VALUE string( ).
    DATA t26 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLEAR t26.
    DATA(t27) = t1.
    t26 = t27->zlnt_builtin_clas_3f891b097658( ).
    t25 = t26->name.
    DATA(t28) = t1.
    t23 = t24->set( p0 = t25 p1 = t28 ).
  ENDMETHOD.

  METHOD zlnt_builtin_init_ccbaa3f8c306.
    IF zlnt_builtin_init_de1d1a6daf32 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_de1d1a6daf32 = abap_true.
    IF zcl_lnt_syntax_module=>zlnt_builtin_init_de1d1a6daf32 = abap_false.
      zcl_lnt_syntax_module=>zlnt_builtin_init_ccbaa3f8c306( ).
    ENDIF.
    DATA t1 TYPE REF TO zlnt_runtime_map__1746889b1684.
    DATA t2 TYPE REF TO zlnt_runtime_map__1746889b1684.
    DATA(t3) = NEW zlnt_runtime_map__1746889b1684( ).
    t2 = t3.
    DATA(t4) = t2.
    t1 = t4.
    zcl_lnt_syntax_module=>map = t1.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE i( ).
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_map__1746889b1684.
    CLEAR t8.
    IF zcl_lnt_syntax_module=>zlnt_builtin_init_de1d1a6daf32 = abap_false.
      zcl_lnt_syntax_module=>zlnt_builtin_init_ccbaa3f8c306( ).
    ENDIF.
    t8 = zcl_lnt_syntax_module=>map.
    t7 = t8->keys( ).
    t7->load( ).
    t6 = lines( t7->items ).
    DATA(t9) = 0.
    t5 = xsdbool( t6 = t9 ).
    IF t5 = abap_true.
      DATA(t10) = NEW zcl_lnt_sy_interface_deferred( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t10 ).
      DATA(t11) = NEW zcl_lnt_sy_perform( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t11 ).
      DATA(t12) = NEW zcl_lnt_sy_class_deferred( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t12 ).
      DATA(t13) = NEW zcl_lnt_sy_call( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t13 ).
      DATA(t14) = NEW zcl_lnt_sy_set_handler( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t14 ).
      DATA(t15) = NEW zcl_lnt_sy_clss_implmnttn( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t15 ).
      DATA(t16) = NEW zcl_lnt_sy_mthd_implmnttn( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t16 ).
      DATA(t17) = NEW zcl_lnt_sy_move( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t17 ).
      DATA(t18) = NEW zcl_lnt_sy_get_badi( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t18 ).
      DATA(t19) = NEW zcl_lnt_sy_call_badi( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t19 ).
      DATA(t20) = NEW zcl_lnt_sy_get_cursor( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t20 ).
      DATA(t21) = NEW zcl_lnt_sy_replace( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t21 ).
      DATA(t22) = NEW zcl_lnt_sy_truncate_dataset( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t22 ).
      DATA(t23) = NEW zcl_lnt_sy_assert( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t23 ).
      DATA(t24) = NEW zcl_lnt_sy_catch( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t24 ).
      DATA(t25) = NEW zcl_lnt_sy_loop( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t25 ).
      DATA(t26) = NEW zcl_lnt_sy_loop_at_screen( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t26 ).
      DATA(t27) = NEW zcl_lnt_sy_set_pf_status( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t27 ).
      DATA(t28) = NEW zcl_lnt_sy_set_titlebar( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t28 ).
      DATA(t29) = NEW zcl_lnt_sy_submit( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t29 ).
      DATA(t30) = NEW zcl_lnt_sy_insert_textpool( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t30 ).
      DATA(t31) = NEW zcl_lnt_sy_read_table( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t31 ).
      DATA(t32) = NEW zcl_lnt_sy_syntax_check( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t32 ).
      DATA(t33) = NEW zcl_lnt_sy_delete_report( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t33 ).
      DATA(t34) = NEW zcl_lnt_sy_import( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t34 ).
      DATA(t35) = NEW zcl_lnt_sy_collect( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t35 ).
      DATA(t36) = NEW zcl_lnt_sy_export( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t36 ).
      DATA(t37) = NEW zcl_lnt_sy_scan( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t37 ).
      DATA(t38) = NEW zcl_lnt_sy_transfer( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t38 ).
      DATA(t39) = NEW zcl_lnt_sy_split( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t39 ).
      DATA(t40) = NEW zcl_lnt_sy_call_function( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t40 ).
      DATA(t41) = NEW zcl_lnt_sy_delete_internal( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t41 ).
      DATA(t42) = NEW zcl_lnt_sy_delete_cluster( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t42 ).
      DATA(t43) = NEW zcl_lnt_sy_clear( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t43 ).
      DATA(t44) = NEW zcl_lnt_sy_free( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t44 ).
      DATA(t45) = NEW zcl_lnt_sy_refresh( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t45 ).
      DATA(t46) = NEW zcl_lnt_sy_return( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t46 ).
      DATA(t47) = NEW zcl_lnt_sy_receive( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t47 ).
      DATA(t48) = NEW zcl_lnt_sy_get_bit( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t48 ).
      DATA(t49) = NEW zcl_lnt_sy_class_local_friends( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t49 ).
      DATA(t50) = NEW zcl_lnt_sy_statem_select( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t50 ).
      DATA(t51) = NEW zcl_lnt_sy_modify_screen( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t51 ).
      DATA(t52) = NEW zcl_lnt_sy_insert_internal( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t52 ).
      DATA(t53) = NEW zcl_lnt_sy_pack( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t53 ).
      DATA(t54) = NEW zcl_lnt_sy_unpack( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t54 ).
      DATA(t55) = NEW zcl_lnt_sy_assign( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t55 ).
      DATA(t56) = NEW zcl_lnt_sy_set_locale( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t56 ).
      DATA(t57) = NEW zcl_lnt_sy_set_parameter( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t57 ).
      DATA(t58) = NEW zcl_lnt_sy_convert( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t58 ).
      DATA(t59) = NEW zcl_lnt_sy_controls( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t59 ).
      DATA(t60) = NEW zcl_lnt_sy_when( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t60 ).
      DATA(t61) = NEW zcl_lnt_sy_insert_database( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t61 ).
      DATA(t62) = NEW zcl_lnt_sy_delete_database( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t62 ).
      DATA(t63) = NEW zcl_lnt_sy_update_database( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t63 ).
      DATA(t64) = NEW zcl_lnt_sy_sort( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t64 ).
      DATA(t65) = NEW zcl_lnt_sy_wait( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t65 ).
      DATA(t66) = NEW zcl_lnt_sy_condense( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t66 ).
      DATA(t67) = NEW zcl_lnt_sy_set_bit( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t67 ).
      DATA(t68) = NEW zcl_lnt_sy_open_dataset( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t68 ).
      DATA(t69) = NEW zcl_lnt_sy_close_dataset( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t69 ).
      DATA(t70) = NEW zcl_lnt_sy_read_report( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t70 ).
      DATA(t71) = NEW zcl_lnt_sy_do( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t71 ).
      DATA(t72) = NEW zcl_lnt_sy_describe( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t72 ).
      DATA(t73) = NEW zcl_lnt_sy_find( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t73 ).
      DATA(t74) = NEW zcl_lnt_sy_message( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t74 ).
      DATA(t75) = NEW zcl_lnt_sy_system_call( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t75 ).
      DATA(t76) = NEW zcl_lnt_sy_insert_field_group( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t76 ).
      DATA(t77) = NEW zcl_lnt_sy_get_time( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t77 ).
      DATA(t78) = NEW zcl_lnt_sy_unassign( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t78 ).
      DATA(t79) = NEW zcl_lnt_sy_case_type( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t79 ).
      DATA(t80) = NEW zcl_lnt_sy_get_parameter( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t80 ).
      DATA(t81) = NEW zcl_lnt_sy_format( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t81 ).
      DATA(t82) = NEW zcl_lnt_sy_when_type( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t82 ).
      DATA(t83) = NEW zcl_lnt_sy_if( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t83 ).
      DATA(t84) = NEW zcl_lnt_sy_log_point( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t84 ).
      DATA(t85) = NEW zcl_lnt_sy_while( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t85 ).
      DATA(t86) = NEW zcl_lnt_sy_get_pf_status( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t86 ).
      DATA(t87) = NEW zcl_lnt_sy_with( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t87 ).
      DATA(t88) = NEW zcl_lnt_sy_with_loop( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t88 ).
      DATA(t89) = NEW zcl_lnt_sy_call_transformation( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t89 ).
      DATA(t90) = NEW zcl_lnt_sy_call_transaction( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t90 ).
      DATA(t91) = NEW zcl_lnt_sy_get_locale( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t91 ).
      DATA(t92) = NEW zcl_lnt_sy_get_reference( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t92 ).
      DATA(t93) = NEW zcl_lnt_sy_else_if( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t93 ).
      DATA(t94) = NEW zcl_lnt_sy_get_run_time( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t94 ).
      DATA(t95) = NEW zcl_lnt_sy_create_object( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t95 ).
      DATA(t96) = NEW zcl_lnt_sy_import_dynpro( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t96 ).
      DATA(t97) = NEW zcl_lnt_sy_create_data( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t97 ).
      DATA(t98) = NEW zcl_lnt_sy_case( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t98 ).
      DATA(t99) = NEW zcl_lnt_sy_shift( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t99 ).
      DATA(t100) = NEW zcl_lnt_sy_raise( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t100 ).
      DATA(t101) = NEW zcl_lnt_sy_concatenate( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t101 ).
      DATA(t102) = NEW zcl_lnt_sy_append( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t102 ).
      DATA(t103) = NEW zcl_lnt_sy_select_loop( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t103 ).
      DATA(t104) = NEW zcl_lnt_sy_write( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t104 ).
      DATA(t105) = NEW zcl_lnt_sy_move_corresponding( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t105 ).
      DATA(t106) = NEW zcl_lnt_sy_authority_check( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t106 ).
      DATA(t107) = NEW zcl_lnt_sy_insert_report( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t107 ).
      DATA(t108) = NEW zcl_lnt_sy_selection_screen( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t108 ).
      DATA(t109) = NEW zcl_lnt_sy_at_selection_screen( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t109 ).
      DATA(t110) = NEW zcl_lnt_sy_ranges( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t110 ).
      DATA(t111) = NEW zcl_lnt_sy_add( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t111 ).
      DATA(t112) = NEW zcl_lnt_sy_raise_event( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t112 ).
      DATA(t113) = NEW zcl_lnt_sy_subtract( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t113 ).
      DATA(t114) = NEW zcl_lnt_sy_add_corresponding( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t114 ).
      DATA(t115) = NEW zcl_lnt_sy_sbtrct_crrspndng( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t115 ).
      DATA(t116) = NEW zcl_lnt_sy_multiply( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t116 ).
      DATA(t117) = NEW zcl_lnt_sy_divide( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t117 ).
      DATA(t118) = NEW zcl_lnt_sy_check( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t118 ).
      DATA(t119) = NEW zcl_lnt_sy_modify_database( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t119 ).
      DATA(t120) = NEW zcl_lnt_sy_form( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t120 ).
      DATA(t121) = NEW zcl_lnt_sy_select_option( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t121 ).
      DATA(t122) = NEW zcl_lnt_sy_tables( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t122 ).
      DATA(t123) = NEW zcl_lnt_sy_parameter_parameter( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t123 ).
      DATA(t124) = NEW zcl_lnt_sy_field_symbol( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t124 ).
      DATA(t125) = NEW zcl_lnt_sy_read_entities( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t125 ).
      DATA(t126) = NEW zcl_lnt_sy_get_permissions( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t126 ).
      DATA(t127) = NEW zcl_lnt_sy_read_dataset( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t127 ).
      DATA(t128) = NEW zcl_lnt_sy_modify_entities( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t128 ).
      DATA(t129) = NEW zcl_lnt_sy_commit_entities( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t129 ).
      DATA(t130) = NEW zcl_lnt_sy_call_kernel( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t130 ).
      DATA(t131) = NEW zcl_lnt_sy_open_cursor( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t131 ).
      DATA(t132) = NEW zcl_lnt_sy_fetch_next_cursor( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t132 ).
      DATA(t133) = NEW zcl_lnt_sy_close_cursor( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t133 ).
      DATA(t134) = NEW zcl_lnt_sy_search( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t134 ).
      DATA(t135) = NEW zcl_lnt_sy_translate( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t135 ).
      DATA(t136) = NEW zcl_lnt_sy_modify_internal( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t136 ).
      DATA(t137) = NEW zcl_lnt_sy_read_textpool( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t137 ).
      DATA(t138) = NEW zcl_lnt_sy_field_group( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t138 ).
      DATA(t139) = NEW zcl_lnt_sy_editor_call( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t139 ).
      DATA(t140) = NEW zcl_lnt_sy_delete_memory( ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = t140 ).
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1929_edae3764be0a.
  ENDMETHOD.
ENDCLASS.
