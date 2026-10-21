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
    DATA t4 TYPE REF TO zif_lnt_statement_syntax.
    DATA t5 TYPE REF TO zlnt_runtime_map__1746889b1684.
    IF zcl_lnt_syntax_module=>zlnt_builtin_init_de1d1a6daf32 = abap_false.
      zcl_lnt_syntax_module=>zlnt_builtin_init_ccbaa3f8c306( ).
    ENDIF.
    t5 = zcl_lnt_syntax_module=>map.
    DATA(t6) = VALUE string( ).
    t6 = t1->zlnt_builtin_clas_3f891b097658( )->name.
    t4 = t5->get( p0 = t6 ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t4 IS INITIAL ) = abap_false ) = abap_true.
      DATA t14 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      DATA t15 TYPE REF TO zcx_lnt_assert_error.
      DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t19->has = abap_true.
      t19->value = |syntax.ts duplicate statement syntax handler|.
      t15 = NEW zcx_lnt_assert_error( i_message_26cb = t19 ).
      t14 = NEW #( ).
      t14->payload = t15.
      CLEAR t14->source_value.
      DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t22 TYPE REF TO object.
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
      RAISE EXCEPTION t14.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_map__1746889b1684.
    DATA t24 TYPE REF TO zlnt_runtime_map__1746889b1684.
    IF zcl_lnt_syntax_module=>zlnt_builtin_init_de1d1a6daf32 = abap_false.
      zcl_lnt_syntax_module=>zlnt_builtin_init_ccbaa3f8c306( ).
    ENDIF.
    t24 = zcl_lnt_syntax_module=>map.
    DATA(t25) = VALUE string( ).
    t25 = t1->zlnt_builtin_clas_3f891b097658( )->name.
    t23 = t24->set( p0 = t25 p1 = t1 ).
  ENDMETHOD.

  METHOD zlnt_builtin_init_ccbaa3f8c306.
    IF zlnt_builtin_init_de1d1a6daf32 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_de1d1a6daf32 = abap_true.
    IF zcl_lnt_syntax_module=>zlnt_builtin_init_de1d1a6daf32 = abap_false.
      zcl_lnt_syntax_module=>zlnt_builtin_init_ccbaa3f8c306( ).
    ENDIF.
    zcl_lnt_syntax_module=>map = NEW zlnt_runtime_map__1746889b1684( ).
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    IF zcl_lnt_syntax_module=>zlnt_builtin_init_de1d1a6daf32 = abap_false.
      zcl_lnt_syntax_module=>zlnt_builtin_init_ccbaa3f8c306( ).
    ENDIF.
    t7 = zcl_lnt_syntax_module=>map->keys( ).
    t7->load( ).
    IF xsdbool( lines( t7->items ) = 0 ) = abap_true.
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_interface_deferred( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_perform( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_class_deferred( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_call( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_set_handler( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_clss_implmnttn( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_mthd_implmnttn( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_move( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_get_badi( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_call_badi( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_get_cursor( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_replace( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_truncate_dataset( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_assert( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_catch( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_loop( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_loop_at_screen( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_set_pf_status( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_set_titlebar( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_submit( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_insert_textpool( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_read_table( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_syntax_check( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_delete_report( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_import( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_collect( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_export( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_scan( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_transfer( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_split( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_call_function( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_delete_internal( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_delete_cluster( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_clear( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_free( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_refresh( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_return( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_receive( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_get_bit( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_class_local_friends( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_statem_select( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_modify_screen( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_insert_internal( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_pack( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_unpack( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_assign( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_set_locale( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_set_parameter( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_convert( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_controls( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_when( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_insert_database( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_delete_database( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_update_database( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_sort( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_wait( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_condense( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_set_bit( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_open_dataset( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_close_dataset( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_read_report( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_do( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_describe( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_find( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_message( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_system_call( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_insert_field_group( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_get_time( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_unassign( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_case_type( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_get_parameter( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_format( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_when_type( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_if( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_log_point( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_while( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_get_pf_status( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_with( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_with_loop( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_call_transformation( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_call_transaction( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_get_locale( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_get_reference( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_else_if( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_get_run_time( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_create_object( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_import_dynpro( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_create_data( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_case( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_shift( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_raise( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_concatenate( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_append( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_select_loop( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_write( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_move_corresponding( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_authority_check( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_insert_report( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_selection_screen( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_at_selection_screen( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_ranges( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_add( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_raise_event( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_subtract( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_add_corresponding( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_sbtrct_crrspndng( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_multiply( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_divide( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_check( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_modify_database( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_form( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_select_option( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_tables( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_parameter_parameter( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_field_symbol( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_read_entities( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_get_permissions( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_read_dataset( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_modify_entities( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_commit_entities( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_call_kernel( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_open_cursor( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_fetch_next_cursor( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_close_cursor( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_search( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_translate( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_modify_internal( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_read_textpool( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_field_group( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_editor_call( ) ).
      zcl_lnt_syntax_module=>add_to_map( i_handler = NEW zcl_lnt_sy_delete_memory( ) ).
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
