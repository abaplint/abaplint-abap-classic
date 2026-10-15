* TS: src/abap/artifacts.ts:81:23 shape.7ea79310710e7077777a4e54cbe4c640a32198172e46a7e914628e444dc3a7d5
CLASS zcl_lnt_shape_05e4949e DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA data_4939 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA report_d765 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA write_91d1 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_method TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA method_implementation TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_form TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA form_e887 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA import_nametab TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA check_select_options TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA call_badi TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA class_data TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA class_data_begin TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA class_data_end TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA select_loop TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA do_3360 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA break_id TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA interface_deferred TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA while_0a91 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA loop_at_screen TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA loop_c596 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA check_6031 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_provide TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA if_925a TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA convert_text TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA log_point TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA window TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_if TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA type_enum TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA type_enum_begin TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA type_enum_end TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA set_run_time TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA field_group TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA print_control TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA extract TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA sum TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_of_page TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA generate_report_04cd TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA else_if TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA else TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA perform_6b17 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA append TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA clear_69de TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA concatenate TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_do TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_class TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA try_9fd1 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_try TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA assert TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA return_5e94 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_while TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA constant TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA catch TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA infotypes TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA message_48f9 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA read_table_e6f6 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_loop TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA case_1fc5 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA create_object_c8e5 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA select_178a TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA call_966f TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA class_local_friends TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA class_deferred TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA field_symbol TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA class_definition_dd40 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA class_implementation TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA translate TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA exit TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_case TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA constant_begin TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA constant_end TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA when_others TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA when_2c09 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA continue TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA assign_c3e3 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA get_badi_8066 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA suppress_dialog TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA type_e5bc TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA hide_d6f2 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA get_locale TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA set_locale TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA commit TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA modify_screen TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA commit_entities TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA modify_entities TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA read_entities TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA rollback_entities TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA summary TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA input_5b94 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA on_change TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA at_user_command TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA position_c758 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA resume TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA stop TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA get_pf_status TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA delete_report_e98a TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA controls TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA at_line_selection TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA new_page TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA set_dataset TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA get_property TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA scroll_list TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA load_of_program TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA top_of_page TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA truncate_dataset TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA set_update_task TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA set_user_command TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA rollback TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA delete_internal TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA delete_database_4d9f TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA delete_dataset TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA free_memory_dddf TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA catch_system_exceptions TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_catch TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA assign_local_copy TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA set_extended_check TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA split TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA new_line TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA free_object TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA sort_4f19 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA replace_acb7 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA with TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA with_loop TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_with TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA condense TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA insert_internal TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA insert_database_0870 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA insert_field_group TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA update_database_e50a TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA modify_database_f459 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA merge_database TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA modify_internal TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA raise TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA define_042e TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_of_definition TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA find_340f TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA move_f496 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA move_corresponding TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA get_time TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA enhancement_point TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA enhancement_section TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_enhancement_section TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA set_handler TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA set_left TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA pack_3e97 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA case_type TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA when_type TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA exec_sql_f319 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA open_cursor TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA communication_41de TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA generate_subroutine_290c TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA reject TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA load_report TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA private TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA system_call_438e TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA set_language TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA call_dialog TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA protected TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA public TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA nodes_be95 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA demand TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA supply TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA fields_fbdf TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA delete_cluster TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA set_margin TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA call_database TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA contexts TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA interface_2dbc TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_interface TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA parameter_5560 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA include_9b20 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA collect TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA ranges_81c8 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA events_40c3 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA receive TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA back TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA add_corresponding TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA subtract_corresponding TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA static_begin TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA static_end TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA get_dataset TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA tables_0871 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA local_47b5 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA add_3508 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA describe TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA submit_67e4 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA scan TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA export TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA import TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA at_first TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA at_last TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA at_pf TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA at_c575 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA put TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_at TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_select_ff0f TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA refresh_d835 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA shift_20b0 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA type_mesh TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA transfer TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA subtract_f60f TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA unassign_8208 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA open_dataset_1685 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA close_dataset TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA interface_load TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA close_cursor TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA leave TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA class_definition_load TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA initialization TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA start_of_selection TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA set_blank TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA export_dynpro_d6d2 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_of_selection TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA search_5904 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA modify_line TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA selection_screen TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA free_ae65 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_on TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA fetch_next_cursor TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA reserve TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA raise_entity_event TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA refresh_control TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA delete_dynpro_ee3b TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA generate_dynpro_4f98 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA process_on_help_request TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA detail_5387 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA editor_call TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA break_b498 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA delete_textpool_9381 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA get_6347 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA loop_extract_459c TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA select_option_6e8f TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA convert TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA static_9685 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA compute_2725 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA multiply_ace2 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA divide_f7f7 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA format TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA syntax_check TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA aliases_dfd7 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA method_def TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA type_mesh_begin TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA type_mesh_end TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA interface_def TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA at_selection_screen TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA include_type TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA import_dynpro TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA call_function_e725 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA call_selection_screen TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA call_transformation_54f4 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA read_line TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA read_textpool TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA read_report TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA read_dataset TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA get_bit TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA get_reference_48e0 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA insert_report_118b TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA insert_textpool_1097 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA set_bit TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA get_run_time TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA get_parameter_91bd TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA create_data_b8e4 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA set_country TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA function_module TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA dynpro_loop TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA type_pools_b851 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA type_pool TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA wait TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA overlay TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA set_screen TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA set_cursor TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA call_screen TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA set_pf_status TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA set_titlebar TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA program TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA function_pool TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA module TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_module TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_function TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA retry TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA authority_check_b39c TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA set_parameter TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA field TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA get_cursor TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA call_kernel TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA call_transaction_be4a TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA unpack TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA skip_18e2 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA uline TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA data_begin TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA data_end TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA type_begin TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA process_after_input TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA process_before_output TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA process_on_value_request TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA type_end TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA raise_event TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA cleanup TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA create_ole TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA call_ole TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA set_property TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA test_injection TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_test_injection TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA test_seam TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_test_seam TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA delete_memory TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA provide TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_exec TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA chain TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_chain TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA call_subscreen TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA sort_dataset TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA get_permissions TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA set_locks TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA enhancement TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA end_enhancement TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA form_definition_faa7 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA verification_message TYPE REF TO zlnt_runtime_clas_a39833db3295.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_05e4949e IMPLEMENTATION.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1997_1940238b4ac4.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~structural.
    result = abap_true.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~source.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.has: own-key metadata absent`.
    ENDIF.
    result = me->zlnt_view_ownkeys_b0e8086400eb->has( p0 ).
    IF result = abap_false AND me->zlnt_view_extras_47272813ead1 IS BOUND.
      result = me->zlnt_view_extras_47272813ead1->has( p0 ).
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~delete.
    DATA ignored TYPE abap_bool.
    CASE p0.
      WHEN `Data`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Report`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Write`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndMethod`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `MethodImplementation`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndForm`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Form`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ImportNametab`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `CheckSelectOptions`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `CallBadi`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ClassData`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ClassDataBegin`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ClassDataEnd`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SelectLoop`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Do`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `BreakId`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `InterfaceDeferred`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `While`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `LoopAtScreen`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Loop`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Check`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndProvide`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `If`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ConvertText`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `LogPoint`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Window`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndIf`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `TypeEnum`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `TypeEnumBegin`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `TypeEnumEnd`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SetRunTime`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `FieldGroup`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `PrintControl`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Extract`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Sum`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndOfPage`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `GenerateReport`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ElseIf`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Else`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Perform`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Append`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Clear`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Concatenate`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndDo`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndClass`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Try`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndTry`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Assert`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Return`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndWhile`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Constant`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Catch`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Infotypes`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Message`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ReadTable`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndLoop`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Case`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `CreateObject`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Select`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Call`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ClassLocalFriends`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ClassDeferred`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `FieldSymbol`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ClassDefinition`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ClassImplementation`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Translate`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Exit`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndCase`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ConstantBegin`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ConstantEnd`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `WhenOthers`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `When`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Continue`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Assign`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `GetBadi`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SuppressDialog`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Type`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Hide`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `GetLocale`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SetLocale`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Commit`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ModifyScreen`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `CommitEntities`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ModifyEntities`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ReadEntities`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `RollbackEntities`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Summary`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Input`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `OnChange`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `AtUserCommand`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Position`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Resume`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Stop`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `GetPFStatus`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `DeleteReport`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Controls`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `AtLineSelection`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `NewPage`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SetDataset`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `GetProperty`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ScrollList`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `LoadOfProgram`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `TopOfPage`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `TruncateDataset`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SetUpdateTask`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SetUserCommand`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Rollback`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `DeleteInternal`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `DeleteDatabase`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `DeleteDataset`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `FreeMemory`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `CatchSystemExceptions`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndCatch`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `AssignLocalCopy`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SetExtendedCheck`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Split`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `NewLine`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `FreeObject`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Sort`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Replace`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `With`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `WithLoop`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndWith`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Condense`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `InsertInternal`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `InsertDatabase`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `InsertFieldGroup`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `UpdateDatabase`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ModifyDatabase`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `MergeDatabase`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ModifyInternal`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Raise`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Define`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndOfDefinition`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Find`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Move`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `MoveCorresponding`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `GetTime`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EnhancementPoint`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EnhancementSection`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndEnhancementSection`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SetHandler`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SetLeft`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Pack`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `CaseType`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `WhenType`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ExecSQL`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `OpenCursor`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Communication`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `GenerateSubroutine`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Reject`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `LoadReport`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Private`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SystemCall`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SetLanguage`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `CallDialog`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Protected`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Public`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Nodes`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Demand`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Supply`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Fields`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `DeleteCluster`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SetMargin`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `CallDatabase`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Contexts`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Interface`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndInterface`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Parameter`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Include`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Collect`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Ranges`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Events`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Receive`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Back`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `AddCorresponding`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SubtractCorresponding`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `StaticBegin`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `StaticEnd`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `GetDataset`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Tables`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Local`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Add`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Describe`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Submit`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Scan`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Export`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Import`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `AtFirst`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `AtLast`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `AtPF`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `At`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Put`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndAt`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndSelect`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Refresh`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Shift`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `TypeMesh`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Transfer`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Subtract`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Unassign`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `OpenDataset`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `CloseDataset`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `InterfaceLoad`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `CloseCursor`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Leave`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ClassDefinitionLoad`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Initialization`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `StartOfSelection`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SetBlank`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ExportDynpro`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndOfSelection`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Search`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ModifyLine`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SelectionScreen`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Free`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndOn`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `FetchNextCursor`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Reserve`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `RaiseEntityEvent`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `RefreshControl`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `DeleteDynpro`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `GenerateDynpro`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ProcessOnHelpRequest`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Detail`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EditorCall`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Break`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `DeleteTextpool`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Get`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `LoopExtract`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SelectOption`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Convert`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Static`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Compute`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Multiply`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Divide`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Format`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SyntaxCheck`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Aliases`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `MethodDef`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `TypeMeshBegin`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `TypeMeshEnd`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `InterfaceDef`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `AtSelectionScreen`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `IncludeType`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ImportDynpro`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `CallFunction`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `CallSelectionScreen`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `CallTransformation`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ReadLine`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ReadTextpool`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ReadReport`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ReadDataset`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `GetBit`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `GetReference`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `InsertReport`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `InsertTextpool`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SetBit`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `GetRunTime`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `GetParameter`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `CreateData`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SetCountry`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `FunctionModule`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `DynproLoop`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `TypePools`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `TypePool`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Wait`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Overlay`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SetScreen`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SetCursor`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `CallScreen`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SetPFStatus`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SetTitlebar`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Program`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `FunctionPool`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Module`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndModule`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndFunction`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Retry`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `AuthorityCheck`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SetParameter`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Field`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `GetCursor`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `CallKernel`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `CallTransaction`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Unpack`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Skip`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Uline`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `DataBegin`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `DataEnd`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `TypeBegin`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ProcessAfterInput`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ProcessBeforeOutput`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `ProcessOnValueRequest`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `TypeEnd`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `RaiseEvent`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Cleanup`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `CreateOLE`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `CallOLE`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SetProperty`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `TestInjection`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndTestInjection`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `TestSeam`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndTestSeam`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `DeleteMemory`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Provide`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndExec`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Chain`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndChain`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `CallSubscreen`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SortDataset`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `GetPermissions`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `SetLocks`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Enhancement`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `EndEnhancement`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `FormDefinition`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `VerificationMessage`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN OTHERS.
        ignored = zlnt_runtime_nati_be494c0b072c=>run( p0 = me key = p0 ).
        IF me->zlnt_view_extras_47272813ead1 IS BOUND.
          ignored = me->zlnt_view_extras_47272813ead1->delete( p0 ).
        ENDIF.
    ENDCASE.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      ignored = me->zlnt_view_ownkeys_b0e8086400eb->delete( p0 ).
    ENDIF.
    result = abap_true.
  ENDMETHOD.

  METHOD zlnt_own_storage_4c72afe8366e~keys.
    DATA(t1) = me->zlnt_view_ownkeys_b0e8086400eb.
    IF t1 IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: keys: structural own-key metadata absent`.
    ENDIF.
    result = zlnt_runtime_ownk_4497b85e405d=>keys( t1 ).
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~get.
    IF p0 = `constructor` OR p0 = `toString` OR p0 = `toLocaleString` OR p0 = `valueOf` OR p0 = `hasOwnProperty` OR p0 = `isPrototypeOf` OR p0 = `propertyIsEnumerable` OR p0 = `__proto__` OR p0 = `__defineGetter__` OR p0 =
    `__defineSetter__` OR p0 = `__lookupGetter__` OR p0 = `__lookupSetter__`.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: prototype presence metadata absent`.
      ENDIF.
      READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
      IF sy-subrc <> 0.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: inherited prototype value unavailable from native slots`.
      ENDIF.
    ENDIF.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get shape.7ea79310710e7077777a4e54cbe4c640a32198172e46a7e914628e444dc3a7d5: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `Data`.
        CLEAR result.
        IF me->data_4939 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->data_4939.
        ENDIF.
      WHEN `Report`.
        CLEAR result.
        IF me->report_d765 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->report_d765.
        ENDIF.
      WHEN `Write`.
        CLEAR result.
        IF me->write_91d1 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->write_91d1.
        ENDIF.
      WHEN `EndMethod`.
        CLEAR result.
        IF me->end_method IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_method.
        ENDIF.
      WHEN `MethodImplementation`.
        CLEAR result.
        IF me->method_implementation IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->method_implementation.
        ENDIF.
      WHEN `EndForm`.
        CLEAR result.
        IF me->end_form IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_form.
        ENDIF.
      WHEN `Form`.
        CLEAR result.
        IF me->form_e887 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->form_e887.
        ENDIF.
      WHEN `ImportNametab`.
        CLEAR result.
        IF me->import_nametab IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->import_nametab.
        ENDIF.
      WHEN `CheckSelectOptions`.
        CLEAR result.
        IF me->check_select_options IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->check_select_options.
        ENDIF.
      WHEN `CallBadi`.
        CLEAR result.
        IF me->call_badi IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->call_badi.
        ENDIF.
      WHEN `ClassData`.
        CLEAR result.
        IF me->class_data IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->class_data.
        ENDIF.
      WHEN `ClassDataBegin`.
        CLEAR result.
        IF me->class_data_begin IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->class_data_begin.
        ENDIF.
      WHEN `ClassDataEnd`.
        CLEAR result.
        IF me->class_data_end IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->class_data_end.
        ENDIF.
      WHEN `SelectLoop`.
        CLEAR result.
        IF me->select_loop IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->select_loop.
        ENDIF.
      WHEN `Do`.
        CLEAR result.
        IF me->do_3360 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->do_3360.
        ENDIF.
      WHEN `BreakId`.
        CLEAR result.
        IF me->break_id IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->break_id.
        ENDIF.
      WHEN `InterfaceDeferred`.
        CLEAR result.
        IF me->interface_deferred IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->interface_deferred.
        ENDIF.
      WHEN `While`.
        CLEAR result.
        IF me->while_0a91 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->while_0a91.
        ENDIF.
      WHEN `LoopAtScreen`.
        CLEAR result.
        IF me->loop_at_screen IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->loop_at_screen.
        ENDIF.
      WHEN `Loop`.
        CLEAR result.
        IF me->loop_c596 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->loop_c596.
        ENDIF.
      WHEN `Check`.
        CLEAR result.
        IF me->check_6031 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->check_6031.
        ENDIF.
      WHEN `EndProvide`.
        CLEAR result.
        IF me->end_provide IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_provide.
        ENDIF.
      WHEN `If`.
        CLEAR result.
        IF me->if_925a IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->if_925a.
        ENDIF.
      WHEN `ConvertText`.
        CLEAR result.
        IF me->convert_text IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->convert_text.
        ENDIF.
      WHEN `LogPoint`.
        CLEAR result.
        IF me->log_point IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->log_point.
        ENDIF.
      WHEN `Window`.
        CLEAR result.
        IF me->window IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->window.
        ENDIF.
      WHEN `EndIf`.
        CLEAR result.
        IF me->end_if IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_if.
        ENDIF.
      WHEN `TypeEnum`.
        CLEAR result.
        IF me->type_enum IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->type_enum.
        ENDIF.
      WHEN `TypeEnumBegin`.
        CLEAR result.
        IF me->type_enum_begin IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->type_enum_begin.
        ENDIF.
      WHEN `TypeEnumEnd`.
        CLEAR result.
        IF me->type_enum_end IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->type_enum_end.
        ENDIF.
      WHEN `SetRunTime`.
        CLEAR result.
        IF me->set_run_time IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->set_run_time.
        ENDIF.
      WHEN `FieldGroup`.
        CLEAR result.
        IF me->field_group IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->field_group.
        ENDIF.
      WHEN `PrintControl`.
        CLEAR result.
        IF me->print_control IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->print_control.
        ENDIF.
      WHEN `Extract`.
        CLEAR result.
        IF me->extract IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->extract.
        ENDIF.
      WHEN `Sum`.
        CLEAR result.
        IF me->sum IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->sum.
        ENDIF.
      WHEN `EndOfPage`.
        CLEAR result.
        IF me->end_of_page IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_of_page.
        ENDIF.
      WHEN `GenerateReport`.
        CLEAR result.
        IF me->generate_report_04cd IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->generate_report_04cd.
        ENDIF.
      WHEN `ElseIf`.
        CLEAR result.
        IF me->else_if IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->else_if.
        ENDIF.
      WHEN `Else`.
        CLEAR result.
        IF me->else IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->else.
        ENDIF.
      WHEN `Perform`.
        CLEAR result.
        IF me->perform_6b17 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->perform_6b17.
        ENDIF.
      WHEN `Append`.
        CLEAR result.
        IF me->append IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->append.
        ENDIF.
      WHEN `Clear`.
        CLEAR result.
        IF me->clear_69de IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->clear_69de.
        ENDIF.
      WHEN `Concatenate`.
        CLEAR result.
        IF me->concatenate IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->concatenate.
        ENDIF.
      WHEN `EndDo`.
        CLEAR result.
        IF me->end_do IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_do.
        ENDIF.
      WHEN `EndClass`.
        CLEAR result.
        IF me->end_class IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_class.
        ENDIF.
      WHEN `Try`.
        CLEAR result.
        IF me->try_9fd1 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->try_9fd1.
        ENDIF.
      WHEN `EndTry`.
        CLEAR result.
        IF me->end_try IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_try.
        ENDIF.
      WHEN `Assert`.
        CLEAR result.
        IF me->assert IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->assert.
        ENDIF.
      WHEN `Return`.
        CLEAR result.
        IF me->return_5e94 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->return_5e94.
        ENDIF.
      WHEN `EndWhile`.
        CLEAR result.
        IF me->end_while IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_while.
        ENDIF.
      WHEN `Constant`.
        CLEAR result.
        IF me->constant IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->constant.
        ENDIF.
      WHEN `Catch`.
        CLEAR result.
        IF me->catch IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->catch.
        ENDIF.
      WHEN `Infotypes`.
        CLEAR result.
        IF me->infotypes IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->infotypes.
        ENDIF.
      WHEN `Message`.
        CLEAR result.
        IF me->message_48f9 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->message_48f9.
        ENDIF.
      WHEN `ReadTable`.
        CLEAR result.
        IF me->read_table_e6f6 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->read_table_e6f6.
        ENDIF.
      WHEN `EndLoop`.
        CLEAR result.
        IF me->end_loop IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_loop.
        ENDIF.
      WHEN `Case`.
        CLEAR result.
        IF me->case_1fc5 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->case_1fc5.
        ENDIF.
      WHEN `CreateObject`.
        CLEAR result.
        IF me->create_object_c8e5 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->create_object_c8e5.
        ENDIF.
      WHEN `Select`.
        CLEAR result.
        IF me->select_178a IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->select_178a.
        ENDIF.
      WHEN `Call`.
        CLEAR result.
        IF me->call_966f IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->call_966f.
        ENDIF.
      WHEN `ClassLocalFriends`.
        CLEAR result.
        IF me->class_local_friends IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->class_local_friends.
        ENDIF.
      WHEN `ClassDeferred`.
        CLEAR result.
        IF me->class_deferred IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->class_deferred.
        ENDIF.
      WHEN `FieldSymbol`.
        CLEAR result.
        IF me->field_symbol IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->field_symbol.
        ENDIF.
      WHEN `ClassDefinition`.
        CLEAR result.
        IF me->class_definition_dd40 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->class_definition_dd40.
        ENDIF.
      WHEN `ClassImplementation`.
        CLEAR result.
        IF me->class_implementation IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->class_implementation.
        ENDIF.
      WHEN `Translate`.
        CLEAR result.
        IF me->translate IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->translate.
        ENDIF.
      WHEN `Exit`.
        CLEAR result.
        IF me->exit IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->exit.
        ENDIF.
      WHEN `EndCase`.
        CLEAR result.
        IF me->end_case IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_case.
        ENDIF.
      WHEN `ConstantBegin`.
        CLEAR result.
        IF me->constant_begin IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->constant_begin.
        ENDIF.
      WHEN `ConstantEnd`.
        CLEAR result.
        IF me->constant_end IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->constant_end.
        ENDIF.
      WHEN `WhenOthers`.
        CLEAR result.
        IF me->when_others IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->when_others.
        ENDIF.
      WHEN `When`.
        CLEAR result.
        IF me->when_2c09 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->when_2c09.
        ENDIF.
      WHEN `Continue`.
        CLEAR result.
        IF me->continue IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->continue.
        ENDIF.
      WHEN `Assign`.
        CLEAR result.
        IF me->assign_c3e3 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->assign_c3e3.
        ENDIF.
      WHEN `GetBadi`.
        CLEAR result.
        IF me->get_badi_8066 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->get_badi_8066.
        ENDIF.
      WHEN `SuppressDialog`.
        CLEAR result.
        IF me->suppress_dialog IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->suppress_dialog.
        ENDIF.
      WHEN `Type`.
        CLEAR result.
        IF me->type_e5bc IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->type_e5bc.
        ENDIF.
      WHEN `Hide`.
        CLEAR result.
        IF me->hide_d6f2 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->hide_d6f2.
        ENDIF.
      WHEN `GetLocale`.
        CLEAR result.
        IF me->get_locale IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->get_locale.
        ENDIF.
      WHEN `SetLocale`.
        CLEAR result.
        IF me->set_locale IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->set_locale.
        ENDIF.
      WHEN `Commit`.
        CLEAR result.
        IF me->commit IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->commit.
        ENDIF.
      WHEN `ModifyScreen`.
        CLEAR result.
        IF me->modify_screen IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->modify_screen.
        ENDIF.
      WHEN `CommitEntities`.
        CLEAR result.
        IF me->commit_entities IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->commit_entities.
        ENDIF.
      WHEN `ModifyEntities`.
        CLEAR result.
        IF me->modify_entities IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->modify_entities.
        ENDIF.
      WHEN `ReadEntities`.
        CLEAR result.
        IF me->read_entities IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->read_entities.
        ENDIF.
      WHEN `RollbackEntities`.
        CLEAR result.
        IF me->rollback_entities IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->rollback_entities.
        ENDIF.
      WHEN `Summary`.
        CLEAR result.
        IF me->summary IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->summary.
        ENDIF.
      WHEN `Input`.
        CLEAR result.
        IF me->input_5b94 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->input_5b94.
        ENDIF.
      WHEN `OnChange`.
        CLEAR result.
        IF me->on_change IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->on_change.
        ENDIF.
      WHEN `AtUserCommand`.
        CLEAR result.
        IF me->at_user_command IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->at_user_command.
        ENDIF.
      WHEN `Position`.
        CLEAR result.
        IF me->position_c758 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->position_c758.
        ENDIF.
      WHEN `Resume`.
        CLEAR result.
        IF me->resume IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->resume.
        ENDIF.
      WHEN `Stop`.
        CLEAR result.
        IF me->stop IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->stop.
        ENDIF.
      WHEN `GetPFStatus`.
        CLEAR result.
        IF me->get_pf_status IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->get_pf_status.
        ENDIF.
      WHEN `DeleteReport`.
        CLEAR result.
        IF me->delete_report_e98a IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->delete_report_e98a.
        ENDIF.
      WHEN `Controls`.
        CLEAR result.
        IF me->controls IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->controls.
        ENDIF.
      WHEN `AtLineSelection`.
        CLEAR result.
        IF me->at_line_selection IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->at_line_selection.
        ENDIF.
      WHEN `NewPage`.
        CLEAR result.
        IF me->new_page IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->new_page.
        ENDIF.
      WHEN `SetDataset`.
        CLEAR result.
        IF me->set_dataset IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->set_dataset.
        ENDIF.
      WHEN `GetProperty`.
        CLEAR result.
        IF me->get_property IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->get_property.
        ENDIF.
      WHEN `ScrollList`.
        CLEAR result.
        IF me->scroll_list IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->scroll_list.
        ENDIF.
      WHEN `LoadOfProgram`.
        CLEAR result.
        IF me->load_of_program IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->load_of_program.
        ENDIF.
      WHEN `TopOfPage`.
        CLEAR result.
        IF me->top_of_page IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->top_of_page.
        ENDIF.
      WHEN `TruncateDataset`.
        CLEAR result.
        IF me->truncate_dataset IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->truncate_dataset.
        ENDIF.
      WHEN `SetUpdateTask`.
        CLEAR result.
        IF me->set_update_task IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->set_update_task.
        ENDIF.
      WHEN `SetUserCommand`.
        CLEAR result.
        IF me->set_user_command IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->set_user_command.
        ENDIF.
      WHEN `Rollback`.
        CLEAR result.
        IF me->rollback IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->rollback.
        ENDIF.
      WHEN `DeleteInternal`.
        CLEAR result.
        IF me->delete_internal IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->delete_internal.
        ENDIF.
      WHEN `DeleteDatabase`.
        CLEAR result.
        IF me->delete_database_4d9f IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->delete_database_4d9f.
        ENDIF.
      WHEN `DeleteDataset`.
        CLEAR result.
        IF me->delete_dataset IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->delete_dataset.
        ENDIF.
      WHEN `FreeMemory`.
        CLEAR result.
        IF me->free_memory_dddf IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->free_memory_dddf.
        ENDIF.
      WHEN `CatchSystemExceptions`.
        CLEAR result.
        IF me->catch_system_exceptions IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->catch_system_exceptions.
        ENDIF.
      WHEN `EndCatch`.
        CLEAR result.
        IF me->end_catch IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_catch.
        ENDIF.
      WHEN `AssignLocalCopy`.
        CLEAR result.
        IF me->assign_local_copy IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->assign_local_copy.
        ENDIF.
      WHEN `SetExtendedCheck`.
        CLEAR result.
        IF me->set_extended_check IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->set_extended_check.
        ENDIF.
      WHEN `Split`.
        CLEAR result.
        IF me->split IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->split.
        ENDIF.
      WHEN `NewLine`.
        CLEAR result.
        IF me->new_line IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->new_line.
        ENDIF.
      WHEN `FreeObject`.
        CLEAR result.
        IF me->free_object IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->free_object.
        ENDIF.
      WHEN `Sort`.
        CLEAR result.
        IF me->sort_4f19 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->sort_4f19.
        ENDIF.
      WHEN `Replace`.
        CLEAR result.
        IF me->replace_acb7 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->replace_acb7.
        ENDIF.
      WHEN `With`.
        CLEAR result.
        IF me->with IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->with.
        ENDIF.
      WHEN `WithLoop`.
        CLEAR result.
        IF me->with_loop IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->with_loop.
        ENDIF.
      WHEN `EndWith`.
        CLEAR result.
        IF me->end_with IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_with.
        ENDIF.
      WHEN `Condense`.
        CLEAR result.
        IF me->condense IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->condense.
        ENDIF.
      WHEN `InsertInternal`.
        CLEAR result.
        IF me->insert_internal IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->insert_internal.
        ENDIF.
      WHEN `InsertDatabase`.
        CLEAR result.
        IF me->insert_database_0870 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->insert_database_0870.
        ENDIF.
      WHEN `InsertFieldGroup`.
        CLEAR result.
        IF me->insert_field_group IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->insert_field_group.
        ENDIF.
      WHEN `UpdateDatabase`.
        CLEAR result.
        IF me->update_database_e50a IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->update_database_e50a.
        ENDIF.
      WHEN `ModifyDatabase`.
        CLEAR result.
        IF me->modify_database_f459 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->modify_database_f459.
        ENDIF.
      WHEN `MergeDatabase`.
        CLEAR result.
        IF me->merge_database IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->merge_database.
        ENDIF.
      WHEN `ModifyInternal`.
        CLEAR result.
        IF me->modify_internal IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->modify_internal.
        ENDIF.
      WHEN `Raise`.
        CLEAR result.
        IF me->raise IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->raise.
        ENDIF.
      WHEN `Define`.
        CLEAR result.
        IF me->define_042e IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->define_042e.
        ENDIF.
      WHEN `EndOfDefinition`.
        CLEAR result.
        IF me->end_of_definition IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_of_definition.
        ENDIF.
      WHEN `Find`.
        CLEAR result.
        IF me->find_340f IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->find_340f.
        ENDIF.
      WHEN `Move`.
        CLEAR result.
        IF me->move_f496 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->move_f496.
        ENDIF.
      WHEN `MoveCorresponding`.
        CLEAR result.
        IF me->move_corresponding IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->move_corresponding.
        ENDIF.
      WHEN `GetTime`.
        CLEAR result.
        IF me->get_time IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->get_time.
        ENDIF.
      WHEN `EnhancementPoint`.
        CLEAR result.
        IF me->enhancement_point IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->enhancement_point.
        ENDIF.
      WHEN `EnhancementSection`.
        CLEAR result.
        IF me->enhancement_section IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->enhancement_section.
        ENDIF.
      WHEN `EndEnhancementSection`.
        CLEAR result.
        IF me->end_enhancement_section IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_enhancement_section.
        ENDIF.
      WHEN `SetHandler`.
        CLEAR result.
        IF me->set_handler IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->set_handler.
        ENDIF.
      WHEN `SetLeft`.
        CLEAR result.
        IF me->set_left IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->set_left.
        ENDIF.
      WHEN `Pack`.
        CLEAR result.
        IF me->pack_3e97 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->pack_3e97.
        ENDIF.
      WHEN `CaseType`.
        CLEAR result.
        IF me->case_type IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->case_type.
        ENDIF.
      WHEN `WhenType`.
        CLEAR result.
        IF me->when_type IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->when_type.
        ENDIF.
      WHEN `ExecSQL`.
        CLEAR result.
        IF me->exec_sql_f319 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->exec_sql_f319.
        ENDIF.
      WHEN `OpenCursor`.
        CLEAR result.
        IF me->open_cursor IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->open_cursor.
        ENDIF.
      WHEN `Communication`.
        CLEAR result.
        IF me->communication_41de IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->communication_41de.
        ENDIF.
      WHEN `GenerateSubroutine`.
        CLEAR result.
        IF me->generate_subroutine_290c IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->generate_subroutine_290c.
        ENDIF.
      WHEN `Reject`.
        CLEAR result.
        IF me->reject IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->reject.
        ENDIF.
      WHEN `LoadReport`.
        CLEAR result.
        IF me->load_report IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->load_report.
        ENDIF.
      WHEN `Private`.
        CLEAR result.
        IF me->private IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->private.
        ENDIF.
      WHEN `SystemCall`.
        CLEAR result.
        IF me->system_call_438e IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->system_call_438e.
        ENDIF.
      WHEN `SetLanguage`.
        CLEAR result.
        IF me->set_language IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->set_language.
        ENDIF.
      WHEN `CallDialog`.
        CLEAR result.
        IF me->call_dialog IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->call_dialog.
        ENDIF.
      WHEN `Protected`.
        CLEAR result.
        IF me->protected IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->protected.
        ENDIF.
      WHEN `Public`.
        CLEAR result.
        IF me->public IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->public.
        ENDIF.
      WHEN `Nodes`.
        CLEAR result.
        IF me->nodes_be95 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->nodes_be95.
        ENDIF.
      WHEN `Demand`.
        CLEAR result.
        IF me->demand IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->demand.
        ENDIF.
      WHEN `Supply`.
        CLEAR result.
        IF me->supply IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->supply.
        ENDIF.
      WHEN `Fields`.
        CLEAR result.
        IF me->fields_fbdf IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->fields_fbdf.
        ENDIF.
      WHEN `DeleteCluster`.
        CLEAR result.
        IF me->delete_cluster IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->delete_cluster.
        ENDIF.
      WHEN `SetMargin`.
        CLEAR result.
        IF me->set_margin IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->set_margin.
        ENDIF.
      WHEN `CallDatabase`.
        CLEAR result.
        IF me->call_database IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->call_database.
        ENDIF.
      WHEN `Contexts`.
        CLEAR result.
        IF me->contexts IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->contexts.
        ENDIF.
      WHEN `Interface`.
        CLEAR result.
        IF me->interface_2dbc IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->interface_2dbc.
        ENDIF.
      WHEN `EndInterface`.
        CLEAR result.
        IF me->end_interface IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_interface.
        ENDIF.
      WHEN `Parameter`.
        CLEAR result.
        IF me->parameter_5560 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->parameter_5560.
        ENDIF.
      WHEN `Include`.
        CLEAR result.
        IF me->include_9b20 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->include_9b20.
        ENDIF.
      WHEN `Collect`.
        CLEAR result.
        IF me->collect IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->collect.
        ENDIF.
      WHEN `Ranges`.
        CLEAR result.
        IF me->ranges_81c8 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->ranges_81c8.
        ENDIF.
      WHEN `Events`.
        CLEAR result.
        IF me->events_40c3 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->events_40c3.
        ENDIF.
      WHEN `Receive`.
        CLEAR result.
        IF me->receive IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->receive.
        ENDIF.
      WHEN `Back`.
        CLEAR result.
        IF me->back IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->back.
        ENDIF.
      WHEN `AddCorresponding`.
        CLEAR result.
        IF me->add_corresponding IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->add_corresponding.
        ENDIF.
      WHEN `SubtractCorresponding`.
        CLEAR result.
        IF me->subtract_corresponding IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->subtract_corresponding.
        ENDIF.
      WHEN `StaticBegin`.
        CLEAR result.
        IF me->static_begin IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->static_begin.
        ENDIF.
      WHEN `StaticEnd`.
        CLEAR result.
        IF me->static_end IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->static_end.
        ENDIF.
      WHEN `GetDataset`.
        CLEAR result.
        IF me->get_dataset IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->get_dataset.
        ENDIF.
      WHEN `Tables`.
        CLEAR result.
        IF me->tables_0871 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->tables_0871.
        ENDIF.
      WHEN `Local`.
        CLEAR result.
        IF me->local_47b5 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->local_47b5.
        ENDIF.
      WHEN `Add`.
        CLEAR result.
        IF me->add_3508 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->add_3508.
        ENDIF.
      WHEN `Describe`.
        CLEAR result.
        IF me->describe IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->describe.
        ENDIF.
      WHEN `Submit`.
        CLEAR result.
        IF me->submit_67e4 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->submit_67e4.
        ENDIF.
      WHEN `Scan`.
        CLEAR result.
        IF me->scan IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->scan.
        ENDIF.
      WHEN `Export`.
        CLEAR result.
        IF me->export IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->export.
        ENDIF.
      WHEN `Import`.
        CLEAR result.
        IF me->import IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->import.
        ENDIF.
      WHEN `AtFirst`.
        CLEAR result.
        IF me->at_first IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->at_first.
        ENDIF.
      WHEN `AtLast`.
        CLEAR result.
        IF me->at_last IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->at_last.
        ENDIF.
      WHEN `AtPF`.
        CLEAR result.
        IF me->at_pf IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->at_pf.
        ENDIF.
      WHEN `At`.
        CLEAR result.
        IF me->at_c575 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->at_c575.
        ENDIF.
      WHEN `Put`.
        CLEAR result.
        IF me->put IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->put.
        ENDIF.
      WHEN `EndAt`.
        CLEAR result.
        IF me->end_at IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_at.
        ENDIF.
      WHEN `EndSelect`.
        CLEAR result.
        IF me->end_select_ff0f IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_select_ff0f.
        ENDIF.
      WHEN `Refresh`.
        CLEAR result.
        IF me->refresh_d835 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->refresh_d835.
        ENDIF.
      WHEN `Shift`.
        CLEAR result.
        IF me->shift_20b0 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->shift_20b0.
        ENDIF.
      WHEN `TypeMesh`.
        CLEAR result.
        IF me->type_mesh IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->type_mesh.
        ENDIF.
      WHEN `Transfer`.
        CLEAR result.
        IF me->transfer IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->transfer.
        ENDIF.
      WHEN `Subtract`.
        CLEAR result.
        IF me->subtract_f60f IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->subtract_f60f.
        ENDIF.
      WHEN `Unassign`.
        CLEAR result.
        IF me->unassign_8208 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->unassign_8208.
        ENDIF.
      WHEN `OpenDataset`.
        CLEAR result.
        IF me->open_dataset_1685 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->open_dataset_1685.
        ENDIF.
      WHEN `CloseDataset`.
        CLEAR result.
        IF me->close_dataset IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->close_dataset.
        ENDIF.
      WHEN `InterfaceLoad`.
        CLEAR result.
        IF me->interface_load IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->interface_load.
        ENDIF.
      WHEN `CloseCursor`.
        CLEAR result.
        IF me->close_cursor IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->close_cursor.
        ENDIF.
      WHEN `Leave`.
        CLEAR result.
        IF me->leave IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->leave.
        ENDIF.
      WHEN `ClassDefinitionLoad`.
        CLEAR result.
        IF me->class_definition_load IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->class_definition_load.
        ENDIF.
      WHEN `Initialization`.
        CLEAR result.
        IF me->initialization IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->initialization.
        ENDIF.
      WHEN `StartOfSelection`.
        CLEAR result.
        IF me->start_of_selection IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->start_of_selection.
        ENDIF.
      WHEN `SetBlank`.
        CLEAR result.
        IF me->set_blank IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->set_blank.
        ENDIF.
      WHEN `ExportDynpro`.
        CLEAR result.
        IF me->export_dynpro_d6d2 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->export_dynpro_d6d2.
        ENDIF.
      WHEN `EndOfSelection`.
        CLEAR result.
        IF me->end_of_selection IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_of_selection.
        ENDIF.
      WHEN `Search`.
        CLEAR result.
        IF me->search_5904 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->search_5904.
        ENDIF.
      WHEN `ModifyLine`.
        CLEAR result.
        IF me->modify_line IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->modify_line.
        ENDIF.
      WHEN `SelectionScreen`.
        CLEAR result.
        IF me->selection_screen IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->selection_screen.
        ENDIF.
      WHEN `Free`.
        CLEAR result.
        IF me->free_ae65 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->free_ae65.
        ENDIF.
      WHEN `EndOn`.
        CLEAR result.
        IF me->end_on IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_on.
        ENDIF.
      WHEN `FetchNextCursor`.
        CLEAR result.
        IF me->fetch_next_cursor IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->fetch_next_cursor.
        ENDIF.
      WHEN `Reserve`.
        CLEAR result.
        IF me->reserve IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->reserve.
        ENDIF.
      WHEN `RaiseEntityEvent`.
        CLEAR result.
        IF me->raise_entity_event IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->raise_entity_event.
        ENDIF.
      WHEN `RefreshControl`.
        CLEAR result.
        IF me->refresh_control IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->refresh_control.
        ENDIF.
      WHEN `DeleteDynpro`.
        CLEAR result.
        IF me->delete_dynpro_ee3b IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->delete_dynpro_ee3b.
        ENDIF.
      WHEN `GenerateDynpro`.
        CLEAR result.
        IF me->generate_dynpro_4f98 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->generate_dynpro_4f98.
        ENDIF.
      WHEN `ProcessOnHelpRequest`.
        CLEAR result.
        IF me->process_on_help_request IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->process_on_help_request.
        ENDIF.
      WHEN `Detail`.
        CLEAR result.
        IF me->detail_5387 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->detail_5387.
        ENDIF.
      WHEN `EditorCall`.
        CLEAR result.
        IF me->editor_call IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->editor_call.
        ENDIF.
      WHEN `Break`.
        CLEAR result.
        IF me->break_b498 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->break_b498.
        ENDIF.
      WHEN `DeleteTextpool`.
        CLEAR result.
        IF me->delete_textpool_9381 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->delete_textpool_9381.
        ENDIF.
      WHEN `Get`.
        CLEAR result.
        IF me->get_6347 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->get_6347.
        ENDIF.
      WHEN `LoopExtract`.
        CLEAR result.
        IF me->loop_extract_459c IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->loop_extract_459c.
        ENDIF.
      WHEN `SelectOption`.
        CLEAR result.
        IF me->select_option_6e8f IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->select_option_6e8f.
        ENDIF.
      WHEN `Convert`.
        CLEAR result.
        IF me->convert IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->convert.
        ENDIF.
      WHEN `Static`.
        CLEAR result.
        IF me->static_9685 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->static_9685.
        ENDIF.
      WHEN `Compute`.
        CLEAR result.
        IF me->compute_2725 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->compute_2725.
        ENDIF.
      WHEN `Multiply`.
        CLEAR result.
        IF me->multiply_ace2 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->multiply_ace2.
        ENDIF.
      WHEN `Divide`.
        CLEAR result.
        IF me->divide_f7f7 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->divide_f7f7.
        ENDIF.
      WHEN `Format`.
        CLEAR result.
        IF me->format IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->format.
        ENDIF.
      WHEN `SyntaxCheck`.
        CLEAR result.
        IF me->syntax_check IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->syntax_check.
        ENDIF.
      WHEN `Aliases`.
        CLEAR result.
        IF me->aliases_dfd7 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->aliases_dfd7.
        ENDIF.
      WHEN `MethodDef`.
        CLEAR result.
        IF me->method_def IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->method_def.
        ENDIF.
      WHEN `TypeMeshBegin`.
        CLEAR result.
        IF me->type_mesh_begin IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->type_mesh_begin.
        ENDIF.
      WHEN `TypeMeshEnd`.
        CLEAR result.
        IF me->type_mesh_end IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->type_mesh_end.
        ENDIF.
      WHEN `InterfaceDef`.
        CLEAR result.
        IF me->interface_def IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->interface_def.
        ENDIF.
      WHEN `AtSelectionScreen`.
        CLEAR result.
        IF me->at_selection_screen IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->at_selection_screen.
        ENDIF.
      WHEN `IncludeType`.
        CLEAR result.
        IF me->include_type IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->include_type.
        ENDIF.
      WHEN `ImportDynpro`.
        CLEAR result.
        IF me->import_dynpro IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->import_dynpro.
        ENDIF.
      WHEN `CallFunction`.
        CLEAR result.
        IF me->call_function_e725 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->call_function_e725.
        ENDIF.
      WHEN `CallSelectionScreen`.
        CLEAR result.
        IF me->call_selection_screen IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->call_selection_screen.
        ENDIF.
      WHEN `CallTransformation`.
        CLEAR result.
        IF me->call_transformation_54f4 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->call_transformation_54f4.
        ENDIF.
      WHEN `ReadLine`.
        CLEAR result.
        IF me->read_line IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->read_line.
        ENDIF.
      WHEN `ReadTextpool`.
        CLEAR result.
        IF me->read_textpool IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->read_textpool.
        ENDIF.
      WHEN `ReadReport`.
        CLEAR result.
        IF me->read_report IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->read_report.
        ENDIF.
      WHEN `ReadDataset`.
        CLEAR result.
        IF me->read_dataset IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->read_dataset.
        ENDIF.
      WHEN `GetBit`.
        CLEAR result.
        IF me->get_bit IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->get_bit.
        ENDIF.
      WHEN `GetReference`.
        CLEAR result.
        IF me->get_reference_48e0 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->get_reference_48e0.
        ENDIF.
      WHEN `InsertReport`.
        CLEAR result.
        IF me->insert_report_118b IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->insert_report_118b.
        ENDIF.
      WHEN `InsertTextpool`.
        CLEAR result.
        IF me->insert_textpool_1097 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->insert_textpool_1097.
        ENDIF.
      WHEN `SetBit`.
        CLEAR result.
        IF me->set_bit IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->set_bit.
        ENDIF.
      WHEN `GetRunTime`.
        CLEAR result.
        IF me->get_run_time IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->get_run_time.
        ENDIF.
      WHEN `GetParameter`.
        CLEAR result.
        IF me->get_parameter_91bd IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->get_parameter_91bd.
        ENDIF.
      WHEN `CreateData`.
        CLEAR result.
        IF me->create_data_b8e4 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->create_data_b8e4.
        ENDIF.
      WHEN `SetCountry`.
        CLEAR result.
        IF me->set_country IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->set_country.
        ENDIF.
      WHEN `FunctionModule`.
        CLEAR result.
        IF me->function_module IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->function_module.
        ENDIF.
      WHEN `DynproLoop`.
        CLEAR result.
        IF me->dynpro_loop IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->dynpro_loop.
        ENDIF.
      WHEN `TypePools`.
        CLEAR result.
        IF me->type_pools_b851 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->type_pools_b851.
        ENDIF.
      WHEN `TypePool`.
        CLEAR result.
        IF me->type_pool IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->type_pool.
        ENDIF.
      WHEN `Wait`.
        CLEAR result.
        IF me->wait IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->wait.
        ENDIF.
      WHEN `Overlay`.
        CLEAR result.
        IF me->overlay IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->overlay.
        ENDIF.
      WHEN `SetScreen`.
        CLEAR result.
        IF me->set_screen IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->set_screen.
        ENDIF.
      WHEN `SetCursor`.
        CLEAR result.
        IF me->set_cursor IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->set_cursor.
        ENDIF.
      WHEN `CallScreen`.
        CLEAR result.
        IF me->call_screen IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->call_screen.
        ENDIF.
      WHEN `SetPFStatus`.
        CLEAR result.
        IF me->set_pf_status IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->set_pf_status.
        ENDIF.
      WHEN `SetTitlebar`.
        CLEAR result.
        IF me->set_titlebar IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->set_titlebar.
        ENDIF.
      WHEN `Program`.
        CLEAR result.
        IF me->program IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->program.
        ENDIF.
      WHEN `FunctionPool`.
        CLEAR result.
        IF me->function_pool IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->function_pool.
        ENDIF.
      WHEN `Module`.
        CLEAR result.
        IF me->module IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->module.
        ENDIF.
      WHEN `EndModule`.
        CLEAR result.
        IF me->end_module IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_module.
        ENDIF.
      WHEN `EndFunction`.
        CLEAR result.
        IF me->end_function IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_function.
        ENDIF.
      WHEN `Retry`.
        CLEAR result.
        IF me->retry IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->retry.
        ENDIF.
      WHEN `AuthorityCheck`.
        CLEAR result.
        IF me->authority_check_b39c IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->authority_check_b39c.
        ENDIF.
      WHEN `SetParameter`.
        CLEAR result.
        IF me->set_parameter IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->set_parameter.
        ENDIF.
      WHEN `Field`.
        CLEAR result.
        IF me->field IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->field.
        ENDIF.
      WHEN `GetCursor`.
        CLEAR result.
        IF me->get_cursor IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->get_cursor.
        ENDIF.
      WHEN `CallKernel`.
        CLEAR result.
        IF me->call_kernel IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->call_kernel.
        ENDIF.
      WHEN `CallTransaction`.
        CLEAR result.
        IF me->call_transaction_be4a IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->call_transaction_be4a.
        ENDIF.
      WHEN `Unpack`.
        CLEAR result.
        IF me->unpack IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->unpack.
        ENDIF.
      WHEN `Skip`.
        CLEAR result.
        IF me->skip_18e2 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->skip_18e2.
        ENDIF.
      WHEN `Uline`.
        CLEAR result.
        IF me->uline IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->uline.
        ENDIF.
      WHEN `DataBegin`.
        CLEAR result.
        IF me->data_begin IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->data_begin.
        ENDIF.
      WHEN `DataEnd`.
        CLEAR result.
        IF me->data_end IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->data_end.
        ENDIF.
      WHEN `TypeBegin`.
        CLEAR result.
        IF me->type_begin IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->type_begin.
        ENDIF.
      WHEN `ProcessAfterInput`.
        CLEAR result.
        IF me->process_after_input IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->process_after_input.
        ENDIF.
      WHEN `ProcessBeforeOutput`.
        CLEAR result.
        IF me->process_before_output IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->process_before_output.
        ENDIF.
      WHEN `ProcessOnValueRequest`.
        CLEAR result.
        IF me->process_on_value_request IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->process_on_value_request.
        ENDIF.
      WHEN `TypeEnd`.
        CLEAR result.
        IF me->type_end IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->type_end.
        ENDIF.
      WHEN `RaiseEvent`.
        CLEAR result.
        IF me->raise_event IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->raise_event.
        ENDIF.
      WHEN `Cleanup`.
        CLEAR result.
        IF me->cleanup IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->cleanup.
        ENDIF.
      WHEN `CreateOLE`.
        CLEAR result.
        IF me->create_ole IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->create_ole.
        ENDIF.
      WHEN `CallOLE`.
        CLEAR result.
        IF me->call_ole IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->call_ole.
        ENDIF.
      WHEN `SetProperty`.
        CLEAR result.
        IF me->set_property IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->set_property.
        ENDIF.
      WHEN `TestInjection`.
        CLEAR result.
        IF me->test_injection IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->test_injection.
        ENDIF.
      WHEN `EndTestInjection`.
        CLEAR result.
        IF me->end_test_injection IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_test_injection.
        ENDIF.
      WHEN `TestSeam`.
        CLEAR result.
        IF me->test_seam IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->test_seam.
        ENDIF.
      WHEN `EndTestSeam`.
        CLEAR result.
        IF me->end_test_seam IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_test_seam.
        ENDIF.
      WHEN `DeleteMemory`.
        CLEAR result.
        IF me->delete_memory IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->delete_memory.
        ENDIF.
      WHEN `Provide`.
        CLEAR result.
        IF me->provide IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->provide.
        ENDIF.
      WHEN `EndExec`.
        CLEAR result.
        IF me->end_exec IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_exec.
        ENDIF.
      WHEN `Chain`.
        CLEAR result.
        IF me->chain IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->chain.
        ENDIF.
      WHEN `EndChain`.
        CLEAR result.
        IF me->end_chain IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_chain.
        ENDIF.
      WHEN `CallSubscreen`.
        CLEAR result.
        IF me->call_subscreen IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->call_subscreen.
        ENDIF.
      WHEN `SortDataset`.
        CLEAR result.
        IF me->sort_dataset IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->sort_dataset.
        ENDIF.
      WHEN `GetPermissions`.
        CLEAR result.
        IF me->get_permissions IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->get_permissions.
        ENDIF.
      WHEN `SetLocks`.
        CLEAR result.
        IF me->set_locks IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->set_locks.
        ENDIF.
      WHEN `Enhancement`.
        CLEAR result.
        IF me->enhancement IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->enhancement.
        ENDIF.
      WHEN `EndEnhancement`.
        CLEAR result.
        IF me->end_enhancement IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->end_enhancement.
        ENDIF.
      WHEN `FormDefinition`.
        CLEAR result.
        IF me->form_definition_faa7 IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->form_definition_faa7.
        ENDIF.
      WHEN `VerificationMessage`.
        CLEAR result.
        IF me->verification_message IS BOUND.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          result->cval = me->verification_message.
        ENDIF.
      WHEN OTHERS.
        IF me->zlnt_view_extras_47272813ead1 IS BOUND.
          result = me->zlnt_view_extras_47272813ead1->get( p0 ).
        ENDIF.
    ENDCASE.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~put.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put shape.7ea79310710e7077777a4e54cbe4c640a32198172e46a7e914628e444dc3a7d5: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `Data`.
        me->data_4939 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Data`.
      WHEN `Report`.
        me->report_d765 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Report`.
      WHEN `Write`.
        me->write_91d1 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Write`.
      WHEN `EndMethod`.
        me->end_method = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndMethod`.
      WHEN `MethodImplementation`.
        me->method_implementation = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `MethodImplementation`.
      WHEN `EndForm`.
        me->end_form = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndForm`.
      WHEN `Form`.
        me->form_e887 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Form`.
      WHEN `ImportNametab`.
        me->import_nametab = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ImportNametab`.
      WHEN `CheckSelectOptions`.
        me->check_select_options = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CheckSelectOptions`.
      WHEN `CallBadi`.
        me->call_badi = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CallBadi`.
      WHEN `ClassData`.
        me->class_data = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ClassData`.
      WHEN `ClassDataBegin`.
        me->class_data_begin = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ClassDataBegin`.
      WHEN `ClassDataEnd`.
        me->class_data_end = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ClassDataEnd`.
      WHEN `SelectLoop`.
        me->select_loop = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SelectLoop`.
      WHEN `Do`.
        me->do_3360 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Do`.
      WHEN `BreakId`.
        me->break_id = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `BreakId`.
      WHEN `InterfaceDeferred`.
        me->interface_deferred = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `InterfaceDeferred`.
      WHEN `While`.
        me->while_0a91 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `While`.
      WHEN `LoopAtScreen`.
        me->loop_at_screen = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `LoopAtScreen`.
      WHEN `Loop`.
        me->loop_c596 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Loop`.
      WHEN `Check`.
        me->check_6031 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Check`.
      WHEN `EndProvide`.
        me->end_provide = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndProvide`.
      WHEN `If`.
        me->if_925a = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `If`.
      WHEN `ConvertText`.
        me->convert_text = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ConvertText`.
      WHEN `LogPoint`.
        me->log_point = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `LogPoint`.
      WHEN `Window`.
        me->window = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Window`.
      WHEN `EndIf`.
        me->end_if = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndIf`.
      WHEN `TypeEnum`.
        me->type_enum = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `TypeEnum`.
      WHEN `TypeEnumBegin`.
        me->type_enum_begin = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `TypeEnumBegin`.
      WHEN `TypeEnumEnd`.
        me->type_enum_end = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `TypeEnumEnd`.
      WHEN `SetRunTime`.
        me->set_run_time = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SetRunTime`.
      WHEN `FieldGroup`.
        me->field_group = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `FieldGroup`.
      WHEN `PrintControl`.
        me->print_control = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `PrintControl`.
      WHEN `Extract`.
        me->extract = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Extract`.
      WHEN `Sum`.
        me->sum = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Sum`.
      WHEN `EndOfPage`.
        me->end_of_page = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndOfPage`.
      WHEN `GenerateReport`.
        me->generate_report_04cd = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `GenerateReport`.
      WHEN `ElseIf`.
        me->else_if = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ElseIf`.
      WHEN `Else`.
        me->else = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Else`.
      WHEN `Perform`.
        me->perform_6b17 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Perform`.
      WHEN `Append`.
        me->append = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Append`.
      WHEN `Clear`.
        me->clear_69de = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Clear`.
      WHEN `Concatenate`.
        me->concatenate = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Concatenate`.
      WHEN `EndDo`.
        me->end_do = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndDo`.
      WHEN `EndClass`.
        me->end_class = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndClass`.
      WHEN `Try`.
        me->try_9fd1 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Try`.
      WHEN `EndTry`.
        me->end_try = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndTry`.
      WHEN `Assert`.
        me->assert = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Assert`.
      WHEN `Return`.
        me->return_5e94 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Return`.
      WHEN `EndWhile`.
        me->end_while = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndWhile`.
      WHEN `Constant`.
        me->constant = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Constant`.
      WHEN `Catch`.
        me->catch = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Catch`.
      WHEN `Infotypes`.
        me->infotypes = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Infotypes`.
      WHEN `Message`.
        me->message_48f9 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Message`.
      WHEN `ReadTable`.
        me->read_table_e6f6 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ReadTable`.
      WHEN `EndLoop`.
        me->end_loop = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndLoop`.
      WHEN `Case`.
        me->case_1fc5 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Case`.
      WHEN `CreateObject`.
        me->create_object_c8e5 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CreateObject`.
      WHEN `Select`.
        me->select_178a = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Select`.
      WHEN `Call`.
        me->call_966f = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Call`.
      WHEN `ClassLocalFriends`.
        me->class_local_friends = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ClassLocalFriends`.
      WHEN `ClassDeferred`.
        me->class_deferred = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ClassDeferred`.
      WHEN `FieldSymbol`.
        me->field_symbol = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `FieldSymbol`.
      WHEN `ClassDefinition`.
        me->class_definition_dd40 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ClassDefinition`.
      WHEN `ClassImplementation`.
        me->class_implementation = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ClassImplementation`.
      WHEN `Translate`.
        me->translate = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Translate`.
      WHEN `Exit`.
        me->exit = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Exit`.
      WHEN `EndCase`.
        me->end_case = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndCase`.
      WHEN `ConstantBegin`.
        me->constant_begin = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ConstantBegin`.
      WHEN `ConstantEnd`.
        me->constant_end = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ConstantEnd`.
      WHEN `WhenOthers`.
        me->when_others = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `WhenOthers`.
      WHEN `When`.
        me->when_2c09 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `When`.
      WHEN `Continue`.
        me->continue = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Continue`.
      WHEN `Assign`.
        me->assign_c3e3 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Assign`.
      WHEN `GetBadi`.
        me->get_badi_8066 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `GetBadi`.
      WHEN `SuppressDialog`.
        me->suppress_dialog = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SuppressDialog`.
      WHEN `Type`.
        me->type_e5bc = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Type`.
      WHEN `Hide`.
        me->hide_d6f2 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Hide`.
      WHEN `GetLocale`.
        me->get_locale = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `GetLocale`.
      WHEN `SetLocale`.
        me->set_locale = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SetLocale`.
      WHEN `Commit`.
        me->commit = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Commit`.
      WHEN `ModifyScreen`.
        me->modify_screen = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ModifyScreen`.
      WHEN `CommitEntities`.
        me->commit_entities = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CommitEntities`.
      WHEN `ModifyEntities`.
        me->modify_entities = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ModifyEntities`.
      WHEN `ReadEntities`.
        me->read_entities = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ReadEntities`.
      WHEN `RollbackEntities`.
        me->rollback_entities = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `RollbackEntities`.
      WHEN `Summary`.
        me->summary = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Summary`.
      WHEN `Input`.
        me->input_5b94 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Input`.
      WHEN `OnChange`.
        me->on_change = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `OnChange`.
      WHEN `AtUserCommand`.
        me->at_user_command = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `AtUserCommand`.
      WHEN `Position`.
        me->position_c758 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Position`.
      WHEN `Resume`.
        me->resume = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Resume`.
      WHEN `Stop`.
        me->stop = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Stop`.
      WHEN `GetPFStatus`.
        me->get_pf_status = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `GetPFStatus`.
      WHEN `DeleteReport`.
        me->delete_report_e98a = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `DeleteReport`.
      WHEN `Controls`.
        me->controls = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Controls`.
      WHEN `AtLineSelection`.
        me->at_line_selection = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `AtLineSelection`.
      WHEN `NewPage`.
        me->new_page = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `NewPage`.
      WHEN `SetDataset`.
        me->set_dataset = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SetDataset`.
      WHEN `GetProperty`.
        me->get_property = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `GetProperty`.
      WHEN `ScrollList`.
        me->scroll_list = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ScrollList`.
      WHEN `LoadOfProgram`.
        me->load_of_program = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `LoadOfProgram`.
      WHEN `TopOfPage`.
        me->top_of_page = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `TopOfPage`.
      WHEN `TruncateDataset`.
        me->truncate_dataset = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `TruncateDataset`.
      WHEN `SetUpdateTask`.
        me->set_update_task = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SetUpdateTask`.
      WHEN `SetUserCommand`.
        me->set_user_command = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SetUserCommand`.
      WHEN `Rollback`.
        me->rollback = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Rollback`.
      WHEN `DeleteInternal`.
        me->delete_internal = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `DeleteInternal`.
      WHEN `DeleteDatabase`.
        me->delete_database_4d9f = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `DeleteDatabase`.
      WHEN `DeleteDataset`.
        me->delete_dataset = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `DeleteDataset`.
      WHEN `FreeMemory`.
        me->free_memory_dddf = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `FreeMemory`.
      WHEN `CatchSystemExceptions`.
        me->catch_system_exceptions = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CatchSystemExceptions`.
      WHEN `EndCatch`.
        me->end_catch = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndCatch`.
      WHEN `AssignLocalCopy`.
        me->assign_local_copy = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `AssignLocalCopy`.
      WHEN `SetExtendedCheck`.
        me->set_extended_check = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SetExtendedCheck`.
      WHEN `Split`.
        me->split = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Split`.
      WHEN `NewLine`.
        me->new_line = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `NewLine`.
      WHEN `FreeObject`.
        me->free_object = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `FreeObject`.
      WHEN `Sort`.
        me->sort_4f19 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Sort`.
      WHEN `Replace`.
        me->replace_acb7 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Replace`.
      WHEN `With`.
        me->with = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `With`.
      WHEN `WithLoop`.
        me->with_loop = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `WithLoop`.
      WHEN `EndWith`.
        me->end_with = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndWith`.
      WHEN `Condense`.
        me->condense = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Condense`.
      WHEN `InsertInternal`.
        me->insert_internal = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `InsertInternal`.
      WHEN `InsertDatabase`.
        me->insert_database_0870 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `InsertDatabase`.
      WHEN `InsertFieldGroup`.
        me->insert_field_group = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `InsertFieldGroup`.
      WHEN `UpdateDatabase`.
        me->update_database_e50a = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `UpdateDatabase`.
      WHEN `ModifyDatabase`.
        me->modify_database_f459 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ModifyDatabase`.
      WHEN `MergeDatabase`.
        me->merge_database = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `MergeDatabase`.
      WHEN `ModifyInternal`.
        me->modify_internal = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ModifyInternal`.
      WHEN `Raise`.
        me->raise = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Raise`.
      WHEN `Define`.
        me->define_042e = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Define`.
      WHEN `EndOfDefinition`.
        me->end_of_definition = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndOfDefinition`.
      WHEN `Find`.
        me->find_340f = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Find`.
      WHEN `Move`.
        me->move_f496 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Move`.
      WHEN `MoveCorresponding`.
        me->move_corresponding = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `MoveCorresponding`.
      WHEN `GetTime`.
        me->get_time = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `GetTime`.
      WHEN `EnhancementPoint`.
        me->enhancement_point = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EnhancementPoint`.
      WHEN `EnhancementSection`.
        me->enhancement_section = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EnhancementSection`.
      WHEN `EndEnhancementSection`.
        me->end_enhancement_section = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndEnhancementSection`.
      WHEN `SetHandler`.
        me->set_handler = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SetHandler`.
      WHEN `SetLeft`.
        me->set_left = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SetLeft`.
      WHEN `Pack`.
        me->pack_3e97 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Pack`.
      WHEN `CaseType`.
        me->case_type = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CaseType`.
      WHEN `WhenType`.
        me->when_type = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `WhenType`.
      WHEN `ExecSQL`.
        me->exec_sql_f319 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ExecSQL`.
      WHEN `OpenCursor`.
        me->open_cursor = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `OpenCursor`.
      WHEN `Communication`.
        me->communication_41de = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Communication`.
      WHEN `GenerateSubroutine`.
        me->generate_subroutine_290c = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `GenerateSubroutine`.
      WHEN `Reject`.
        me->reject = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Reject`.
      WHEN `LoadReport`.
        me->load_report = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `LoadReport`.
      WHEN `Private`.
        me->private = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Private`.
      WHEN `SystemCall`.
        me->system_call_438e = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SystemCall`.
      WHEN `SetLanguage`.
        me->set_language = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SetLanguage`.
      WHEN `CallDialog`.
        me->call_dialog = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CallDialog`.
      WHEN `Protected`.
        me->protected = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Protected`.
      WHEN `Public`.
        me->public = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Public`.
      WHEN `Nodes`.
        me->nodes_be95 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Nodes`.
      WHEN `Demand`.
        me->demand = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Demand`.
      WHEN `Supply`.
        me->supply = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Supply`.
      WHEN `Fields`.
        me->fields_fbdf = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Fields`.
      WHEN `DeleteCluster`.
        me->delete_cluster = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `DeleteCluster`.
      WHEN `SetMargin`.
        me->set_margin = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SetMargin`.
      WHEN `CallDatabase`.
        me->call_database = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CallDatabase`.
      WHEN `Contexts`.
        me->contexts = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Contexts`.
      WHEN `Interface`.
        me->interface_2dbc = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Interface`.
      WHEN `EndInterface`.
        me->end_interface = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndInterface`.
      WHEN `Parameter`.
        me->parameter_5560 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Parameter`.
      WHEN `Include`.
        me->include_9b20 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Include`.
      WHEN `Collect`.
        me->collect = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Collect`.
      WHEN `Ranges`.
        me->ranges_81c8 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Ranges`.
      WHEN `Events`.
        me->events_40c3 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Events`.
      WHEN `Receive`.
        me->receive = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Receive`.
      WHEN `Back`.
        me->back = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Back`.
      WHEN `AddCorresponding`.
        me->add_corresponding = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `AddCorresponding`.
      WHEN `SubtractCorresponding`.
        me->subtract_corresponding = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SubtractCorresponding`.
      WHEN `StaticBegin`.
        me->static_begin = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `StaticBegin`.
      WHEN `StaticEnd`.
        me->static_end = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `StaticEnd`.
      WHEN `GetDataset`.
        me->get_dataset = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `GetDataset`.
      WHEN `Tables`.
        me->tables_0871 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Tables`.
      WHEN `Local`.
        me->local_47b5 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Local`.
      WHEN `Add`.
        me->add_3508 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Add`.
      WHEN `Describe`.
        me->describe = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Describe`.
      WHEN `Submit`.
        me->submit_67e4 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Submit`.
      WHEN `Scan`.
        me->scan = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Scan`.
      WHEN `Export`.
        me->export = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Export`.
      WHEN `Import`.
        me->import = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Import`.
      WHEN `AtFirst`.
        me->at_first = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `AtFirst`.
      WHEN `AtLast`.
        me->at_last = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `AtLast`.
      WHEN `AtPF`.
        me->at_pf = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `AtPF`.
      WHEN `At`.
        me->at_c575 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `At`.
      WHEN `Put`.
        me->put = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Put`.
      WHEN `EndAt`.
        me->end_at = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndAt`.
      WHEN `EndSelect`.
        me->end_select_ff0f = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndSelect`.
      WHEN `Refresh`.
        me->refresh_d835 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Refresh`.
      WHEN `Shift`.
        me->shift_20b0 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Shift`.
      WHEN `TypeMesh`.
        me->type_mesh = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `TypeMesh`.
      WHEN `Transfer`.
        me->transfer = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Transfer`.
      WHEN `Subtract`.
        me->subtract_f60f = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Subtract`.
      WHEN `Unassign`.
        me->unassign_8208 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Unassign`.
      WHEN `OpenDataset`.
        me->open_dataset_1685 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `OpenDataset`.
      WHEN `CloseDataset`.
        me->close_dataset = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CloseDataset`.
      WHEN `InterfaceLoad`.
        me->interface_load = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `InterfaceLoad`.
      WHEN `CloseCursor`.
        me->close_cursor = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CloseCursor`.
      WHEN `Leave`.
        me->leave = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Leave`.
      WHEN `ClassDefinitionLoad`.
        me->class_definition_load = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ClassDefinitionLoad`.
      WHEN `Initialization`.
        me->initialization = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Initialization`.
      WHEN `StartOfSelection`.
        me->start_of_selection = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `StartOfSelection`.
      WHEN `SetBlank`.
        me->set_blank = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SetBlank`.
      WHEN `ExportDynpro`.
        me->export_dynpro_d6d2 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ExportDynpro`.
      WHEN `EndOfSelection`.
        me->end_of_selection = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndOfSelection`.
      WHEN `Search`.
        me->search_5904 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Search`.
      WHEN `ModifyLine`.
        me->modify_line = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ModifyLine`.
      WHEN `SelectionScreen`.
        me->selection_screen = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SelectionScreen`.
      WHEN `Free`.
        me->free_ae65 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Free`.
      WHEN `EndOn`.
        me->end_on = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndOn`.
      WHEN `FetchNextCursor`.
        me->fetch_next_cursor = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `FetchNextCursor`.
      WHEN `Reserve`.
        me->reserve = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Reserve`.
      WHEN `RaiseEntityEvent`.
        me->raise_entity_event = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `RaiseEntityEvent`.
      WHEN `RefreshControl`.
        me->refresh_control = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `RefreshControl`.
      WHEN `DeleteDynpro`.
        me->delete_dynpro_ee3b = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `DeleteDynpro`.
      WHEN `GenerateDynpro`.
        me->generate_dynpro_4f98 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `GenerateDynpro`.
      WHEN `ProcessOnHelpRequest`.
        me->process_on_help_request = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ProcessOnHelpRequest`.
      WHEN `Detail`.
        me->detail_5387 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Detail`.
      WHEN `EditorCall`.
        me->editor_call = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EditorCall`.
      WHEN `Break`.
        me->break_b498 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Break`.
      WHEN `DeleteTextpool`.
        me->delete_textpool_9381 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `DeleteTextpool`.
      WHEN `Get`.
        me->get_6347 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Get`.
      WHEN `LoopExtract`.
        me->loop_extract_459c = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `LoopExtract`.
      WHEN `SelectOption`.
        me->select_option_6e8f = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SelectOption`.
      WHEN `Convert`.
        me->convert = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Convert`.
      WHEN `Static`.
        me->static_9685 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Static`.
      WHEN `Compute`.
        me->compute_2725 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Compute`.
      WHEN `Multiply`.
        me->multiply_ace2 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Multiply`.
      WHEN `Divide`.
        me->divide_f7f7 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Divide`.
      WHEN `Format`.
        me->format = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Format`.
      WHEN `SyntaxCheck`.
        me->syntax_check = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SyntaxCheck`.
      WHEN `Aliases`.
        me->aliases_dfd7 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Aliases`.
      WHEN `MethodDef`.
        me->method_def = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `MethodDef`.
      WHEN `TypeMeshBegin`.
        me->type_mesh_begin = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `TypeMeshBegin`.
      WHEN `TypeMeshEnd`.
        me->type_mesh_end = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `TypeMeshEnd`.
      WHEN `InterfaceDef`.
        me->interface_def = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `InterfaceDef`.
      WHEN `AtSelectionScreen`.
        me->at_selection_screen = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `AtSelectionScreen`.
      WHEN `IncludeType`.
        me->include_type = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `IncludeType`.
      WHEN `ImportDynpro`.
        me->import_dynpro = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ImportDynpro`.
      WHEN `CallFunction`.
        me->call_function_e725 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CallFunction`.
      WHEN `CallSelectionScreen`.
        me->call_selection_screen = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CallSelectionScreen`.
      WHEN `CallTransformation`.
        me->call_transformation_54f4 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CallTransformation`.
      WHEN `ReadLine`.
        me->read_line = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ReadLine`.
      WHEN `ReadTextpool`.
        me->read_textpool = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ReadTextpool`.
      WHEN `ReadReport`.
        me->read_report = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ReadReport`.
      WHEN `ReadDataset`.
        me->read_dataset = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ReadDataset`.
      WHEN `GetBit`.
        me->get_bit = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `GetBit`.
      WHEN `GetReference`.
        me->get_reference_48e0 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `GetReference`.
      WHEN `InsertReport`.
        me->insert_report_118b = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `InsertReport`.
      WHEN `InsertTextpool`.
        me->insert_textpool_1097 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `InsertTextpool`.
      WHEN `SetBit`.
        me->set_bit = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SetBit`.
      WHEN `GetRunTime`.
        me->get_run_time = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `GetRunTime`.
      WHEN `GetParameter`.
        me->get_parameter_91bd = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `GetParameter`.
      WHEN `CreateData`.
        me->create_data_b8e4 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CreateData`.
      WHEN `SetCountry`.
        me->set_country = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SetCountry`.
      WHEN `FunctionModule`.
        me->function_module = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `FunctionModule`.
      WHEN `DynproLoop`.
        me->dynpro_loop = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `DynproLoop`.
      WHEN `TypePools`.
        me->type_pools_b851 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `TypePools`.
      WHEN `TypePool`.
        me->type_pool = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `TypePool`.
      WHEN `Wait`.
        me->wait = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Wait`.
      WHEN `Overlay`.
        me->overlay = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Overlay`.
      WHEN `SetScreen`.
        me->set_screen = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SetScreen`.
      WHEN `SetCursor`.
        me->set_cursor = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SetCursor`.
      WHEN `CallScreen`.
        me->call_screen = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CallScreen`.
      WHEN `SetPFStatus`.
        me->set_pf_status = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SetPFStatus`.
      WHEN `SetTitlebar`.
        me->set_titlebar = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SetTitlebar`.
      WHEN `Program`.
        me->program = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Program`.
      WHEN `FunctionPool`.
        me->function_pool = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `FunctionPool`.
      WHEN `Module`.
        me->module = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Module`.
      WHEN `EndModule`.
        me->end_module = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndModule`.
      WHEN `EndFunction`.
        me->end_function = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndFunction`.
      WHEN `Retry`.
        me->retry = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Retry`.
      WHEN `AuthorityCheck`.
        me->authority_check_b39c = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `AuthorityCheck`.
      WHEN `SetParameter`.
        me->set_parameter = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SetParameter`.
      WHEN `Field`.
        me->field = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Field`.
      WHEN `GetCursor`.
        me->get_cursor = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `GetCursor`.
      WHEN `CallKernel`.
        me->call_kernel = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CallKernel`.
      WHEN `CallTransaction`.
        me->call_transaction_be4a = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CallTransaction`.
      WHEN `Unpack`.
        me->unpack = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Unpack`.
      WHEN `Skip`.
        me->skip_18e2 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Skip`.
      WHEN `Uline`.
        me->uline = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Uline`.
      WHEN `DataBegin`.
        me->data_begin = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `DataBegin`.
      WHEN `DataEnd`.
        me->data_end = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `DataEnd`.
      WHEN `TypeBegin`.
        me->type_begin = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `TypeBegin`.
      WHEN `ProcessAfterInput`.
        me->process_after_input = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ProcessAfterInput`.
      WHEN `ProcessBeforeOutput`.
        me->process_before_output = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ProcessBeforeOutput`.
      WHEN `ProcessOnValueRequest`.
        me->process_on_value_request = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ProcessOnValueRequest`.
      WHEN `TypeEnd`.
        me->type_end = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `TypeEnd`.
      WHEN `RaiseEvent`.
        me->raise_event = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `RaiseEvent`.
      WHEN `Cleanup`.
        me->cleanup = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Cleanup`.
      WHEN `CreateOLE`.
        me->create_ole = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CreateOLE`.
      WHEN `CallOLE`.
        me->call_ole = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CallOLE`.
      WHEN `SetProperty`.
        me->set_property = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SetProperty`.
      WHEN `TestInjection`.
        me->test_injection = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `TestInjection`.
      WHEN `EndTestInjection`.
        me->end_test_injection = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndTestInjection`.
      WHEN `TestSeam`.
        me->test_seam = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `TestSeam`.
      WHEN `EndTestSeam`.
        me->end_test_seam = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndTestSeam`.
      WHEN `DeleteMemory`.
        me->delete_memory = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `DeleteMemory`.
      WHEN `Provide`.
        me->provide = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Provide`.
      WHEN `EndExec`.
        me->end_exec = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndExec`.
      WHEN `Chain`.
        me->chain = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Chain`.
      WHEN `EndChain`.
        me->end_chain = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndChain`.
      WHEN `CallSubscreen`.
        me->call_subscreen = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CallSubscreen`.
      WHEN `SortDataset`.
        me->sort_dataset = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SortDataset`.
      WHEN `GetPermissions`.
        me->get_permissions = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `GetPermissions`.
      WHEN `SetLocks`.
        me->set_locks = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `SetLocks`.
      WHEN `Enhancement`.
        me->enhancement = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Enhancement`.
      WHEN `EndEnhancement`.
        me->end_enhancement = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `EndEnhancement`.
      WHEN `FormDefinition`.
        me->form_definition_faa7 = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `FormDefinition`.
      WHEN `VerificationMessage`.
        me->verification_message = p1->as_classvalue( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `VerificationMessage`.
      WHEN OTHERS.
        IF p0 = `__proto__`.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: prototype mutation unavailable`.
        ENDIF.
        IF me->zlnt_view_extras_47272813ead1 IS NOT BOUND.
          me->zlnt_view_extras_47272813ead1 = NEW #( ).
          me->zlnt_view_extras_47272813ead1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        ENDIF.
        me->zlnt_view_extras_47272813ead1->put( p0 = p0 p1 = p1 ).
    ENDCASE.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = p0 p1 = VALUE #( ) ).
    ENDIF.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t1 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
