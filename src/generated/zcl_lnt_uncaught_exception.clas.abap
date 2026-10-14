* TS: src/rules/uncaught_exception.ts:25:1 UncaughtException
CLASS zcl_lnt_uncaught_exception DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_uncght_excptn_cnf.
    DATA global_exceptions TYPE REF TO zlnt_runtime_map__70f58d75267f.
    DATA local_exceptions TYPE REF TO zlnt_runtime_map__70f58d75267f.
    DATA issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA sinked TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA syntax TYPE REF TO zcl_lnt_isyntax_result.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_un_ex_ts_un_exc RETURNING VALUE(result) TYPE REF TO zcl_lnt_uncght_excptn_cnf.
    METHODS in_in_sr_rl_unc_exc_ts_unc_exc IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_uncaught_exception.
    METHODS st_cn_in_sr_rl_un_ex_ts_un_exc IMPORTING i_conf TYPE REF TO zcl_lnt_uncght_excptn_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS traverse IMPORTING i_n_0c97 TYPE REF TO zif_lnt_union_8249fcb1 i_file TYPE REF TO zcl_lnt_abap_file.
    METHODS check_bf6e IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_n_0c97 TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file.
    METHODS check_for_method_calls IMPORTING i_n_0c97 TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file.
    METHODS find_constructor IMPORTING i_def TYPE REF TO zif_lnt_class_definition i_scope TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_method_definition.
    METHODS add_from_try_structure IMPORTING i_s TYPE REF TO zcl_lnt_structure_node.
    METHODS set_sinked_from_method IMPORTING i_s TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file.
    METHODS is_sinked IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE abap_bool.
    METHODS find_global_exceptions.
    METHODS find_local_exceptions IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS initialize REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_uncaught_exception IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_uncght_excptn_cnf(  ).
    me->conf = t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    me->issues = t2.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |uncaught_exception|.
    DATA(t3) = |Uncaught Exception|.
    DATA(t4) = |Checks for uncaught static exception|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = |Does not report any issues if the code contains syntax error|.
      t9 = t9 && |s|.
      DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t10->has = abap_true.
      t10->value = t9.
      t7 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      t7 = t11.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t12.
    DATA(t13) = abap_true.
    IF t13 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t16.
      t15 = t16.
      DATA(t17) = CAST zlnt_runtime_arra_8ecd6afe19e0( t15 ).
      DATA(t18) = |Syntax|.
      APPEND t18 TO t17->items.
      DATA(t19) = CAST zlnt_runtime_arra_8ecd6afe19e0( t15 ).
      t14 = t19.
      t12 = t14.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t20.
      t12 = t20.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t6 i_extended_information = t7 i_tags = t12 i_pragma = t21 i_pseudo_comment = t22 ).
    result = t1.

  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_un_ex_ts_un_exc.
    DATA(t1) = CAST zcl_lnt_uncght_excptn_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD in_in_sr_rl_unc_exc_ts_unc_exc.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/uncaught_exception.ts:49|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD st_cn_in_sr_rl_un_ex_ts_un_exc.
    DATA(t1) = CAST zcl_lnt_uncght_excptn_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/uncaught_exception.ts:55|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/uncaught_exception.ts:59|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD traverse.
    DATA(t1) = CAST zif_lnt_union_8249fcb1( i_n_0c97 ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/uncaught_exception.ts:87|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD check_bf6e.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_name ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_n_0c97 ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/uncaught_exception.ts:153|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD check_for_method_calls.
    DATA(t1) = CAST zcl_lnt_statement_node( i_n_0c97 ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/uncaught_exception.ts:160|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD find_constructor.
    DATA(t1) = CAST zif_lnt_class_definition( i_def ).
    DATA(t2) = CAST zif_lnt_spaghetti_scope_node( i_scope ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/uncaught_exception.ts:186|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD add_from_try_structure.
    DATA(t1) = CAST zcl_lnt_structure_node( i_s ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/uncaught_exception.ts:201|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD set_sinked_from_method.
    DATA(t1) = CAST zcl_lnt_statement_node( i_s ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/uncaught_exception.ts:216|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD is_sinked.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_name ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/uncaught_exception.ts:237|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD find_global_exceptions.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/uncaught_exception.ts:263|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD find_local_exceptions.
    DATA(t1) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/uncaught_exception.ts:279|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zcl_lnt_uncaught_exception( me->in_in_sr_rl_unc_exc_ts_unc_exc( i_reg_f149 = i_reg_f149 ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_uncght_excptn_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rl_un_ex_ts_un_exc( i_conf = t1 ).

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1639_4abe594ee35d.
  ENDMETHOD.
ENDCLASS.
