* TS: src/rules/obsolete_statement.ts:16:1 ObsoleteStatementConf
CLASS zcl_lnt_obslt_sttmnt_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS zlnt_own_storage_4c72afe8366e~keys REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~get REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~put REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~has REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~delete REDEFINITION.
    METHODS zlnt_view_read_sr_e5182c9cb5b0 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_c34ffa589182 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_74d4d49d4745 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_7aaaec7a8836 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_e1b5545ca094 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_f888fac3bfbf IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_7cd00c4cd3d2 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_86b0b4eb9c19 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_53e2daddf5c0 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_bdb007b58688 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_199e22f3d1e2 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_5b06ec244635 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_f1ab3a745d20 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_4e43fde4b44e IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_73010cccd5a3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_4059138c8c03 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_9564c57a9817 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_a57b47984a39 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_a489a62433a9 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_cea8dc23fd8f IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_5ab84e52ca26 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_c149d25a9805 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_74010c810334 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_6612e73c5041 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_e7ae581b8c54 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_9244f5534fce IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_79f97f0da28d RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_e9850db9ffab IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_32a9ad24daa8 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_32ae346506cf IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_df26b38faf17 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_0d6acb4c46b3 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_2efbb7e799e5 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_142a194460ab IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_af6f73503223 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_c6338b50a220 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_b9ac5976bbdc RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_8afcc35d1093 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_f913da31cb26 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_353b70ed79b1 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_6a5fcc262012 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_7d4dba3c13e7 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_8bc7f98b4ab7 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_a5e4692e8c46 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_2a70a957561f RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_ad763e429ff1 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_1e511c9f8d04 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_8182dc9b4061 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_3922bd87722d RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_0989c3aa1a9a IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_76df01b8d502 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_4f98d1d0d1fe IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_07dfda9b4838 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_8693fb2446ea IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_a82fd91e3e4c RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_5bcdd3b7ffd5 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_8b1de602e50e RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_bb8e39f7b8a6 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_107aabcd4247 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_b2cd68211ddc IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_bc501b82d528 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_c2df3a39768b IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_2b4baa7f3ded RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_7d114caaf601 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_285c76f87f81 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_7f41b5b75ecf IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA refresh_83dc TYPE abap_bool.
    DATA compute_3a6a TYPE abap_bool.
    DATA add_51c1 TYPE abap_bool.
    DATA subtract_1d9c TYPE abap_bool.
    DATA multiply_0deb TYPE abap_bool.
    DATA divide_5c22 TYPE abap_bool.
    DATA move_9ad0 TYPE abap_bool.
    DATA requested TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA occurs TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA set_extended TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA with_header_line TYPE abap_bool.
    DATA field_symbol_structure TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA type_pools_243d TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA load TYPE abap_bool.
    DATA parameter_6dfd TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA ranges_ca07 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA communication_6e94 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA pack_130b TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA select_without_into TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA free_memory_596a TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA exit_from_sql TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA sort_by_fs TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA call_transformation_5f8a TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA regex TYPE abap_bool.
    DATA occurences TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA client_specified TYPE abap_bool.
    DATA form_definition_b43b TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA form_implementation TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA common_part TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA field_groups TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA replace_into TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA loop_extract_daeb TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA sort_extract TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS constructor IMPORTING view_source TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_obslt_sttmnt_cnf IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS NOT BOUND.
    ENDIF.
    super->constructor( view_source = view_source ).
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA(t1) = abap_true.
    me->zlnt_view_write_s_c34ffa589182( p0 = t1 ).
    DATA(t2) = abap_true.
    me->zlnt_view_write_s_7aaaec7a8836( p0 = t2 ).
    DATA(t3) = abap_true.
    me->zlnt_view_write_s_f888fac3bfbf( p0 = t3 ).
    DATA(t4) = abap_true.
    me->zlnt_view_write_s_86b0b4eb9c19( p0 = t4 ).
    DATA(t5) = abap_true.
    me->zlnt_view_write_s_bdb007b58688( p0 = t5 ).
    DATA(t6) = abap_true.
    me->zlnt_view_write_s_5b06ec244635( p0 = t6 ).
    DATA(t7) = abap_true.
    me->zlnt_view_write_s_4e43fde4b44e( p0 = t7 ).
    DATA(t8) = abap_true.
    DATA(t9) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t9->has = abap_true.
    t9->value = t8.
    me->zlnt_view_write_s_4059138c8c03( p0 = t9 ).
    DATA(t10) = abap_true.
    DATA(t11) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t11->has = abap_true.
    t11->value = t10.
    me->zlnt_view_write_s_a57b47984a39( p0 = t11 ).
    DATA(t12) = abap_true.
    DATA(t13) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t13->has = abap_true.
    t13->value = t12.
    me->zlnt_view_write_s_cea8dc23fd8f( p0 = t13 ).
    DATA(t14) = abap_true.
    me->zlnt_view_write_s_c149d25a9805( p0 = t14 ).
    DATA(t15) = abap_true.
    DATA(t16) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t16->has = abap_true.
    t16->value = t15.
    me->zlnt_view_write_s_6612e73c5041( p0 = t16 ).
    DATA(t17) = abap_true.
    DATA(t18) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t18->has = abap_true.
    t18->value = t17.
    me->zlnt_view_write_s_9244f5534fce( p0 = t18 ).
    DATA(t19) = abap_true.
    me->zlnt_view_write_s_e9850db9ffab( p0 = t19 ).
    DATA(t20) = abap_true.
    DATA(t21) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t21->has = abap_true.
    t21->value = t20.
    me->zlnt_view_write_s_32ae346506cf( p0 = t21 ).
    DATA(t22) = abap_true.
    DATA(t23) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t23->has = abap_true.
    t23->value = t22.
    me->zlnt_view_write_s_0d6acb4c46b3( p0 = t23 ).
    DATA(t24) = abap_true.
    DATA(t25) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t25->has = abap_true.
    t25->value = t24.
    me->zlnt_view_write_s_142a194460ab( p0 = t25 ).
    DATA(t26) = abap_true.
    DATA(t27) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t27->has = abap_true.
    t27->value = t26.
    me->zlnt_view_write_s_c6338b50a220( p0 = t27 ).
    DATA(t28) = abap_true.
    DATA(t29) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t29->has = abap_true.
    t29->value = t28.
    me->zlnt_view_write_s_8afcc35d1093( p0 = t29 ).
    DATA(t30) = abap_true.
    DATA(t31) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t31->has = abap_true.
    t31->value = t30.
    me->zlnt_view_write_s_353b70ed79b1( p0 = t31 ).
    DATA(t32) = abap_true.
    DATA(t33) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t33->has = abap_true.
    t33->value = t32.
    me->zlnt_view_write_s_7d4dba3c13e7( p0 = t33 ).
    DATA(t34) = abap_true.
    DATA(t35) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t35->has = abap_true.
    t35->value = t34.
    me->zlnt_view_write_s_a5e4692e8c46( p0 = t35 ).
    DATA(t36) = abap_true.
    DATA(t37) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t37->has = abap_true.
    t37->value = t36.
    me->zlnt_view_write_s_ad763e429ff1( p0 = t37 ).
    DATA(t38) = abap_true.
    me->zlnt_view_write_s_8182dc9b4061( p0 = t38 ).
    DATA(t39) = abap_true.
    DATA(t40) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t40->has = abap_true.
    t40->value = t39.
    me->zlnt_view_write_s_0989c3aa1a9a( p0 = t40 ).
    DATA(t41) = abap_true.
    me->zlnt_view_write_s_4f98d1d0d1fe( p0 = t41 ).
    DATA(t42) = abap_true.
    DATA(t43) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t43->has = abap_true.
    t43->value = t42.
    me->zlnt_view_write_s_8693fb2446ea( p0 = t43 ).
    DATA(t44) = abap_true.
    DATA(t45) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t45->has = abap_true.
    t45->value = t44.
    me->zlnt_view_write_s_5bcdd3b7ffd5( p0 = t45 ).
    DATA(t46) = abap_true.
    DATA(t47) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t47->has = abap_true.
    t47->value = t46.
    me->zlnt_view_write_s_bb8e39f7b8a6( p0 = t47 ).
    DATA(t48) = abap_true.
    DATA(t49) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t49->has = abap_true.
    t49->value = t48.
    me->zlnt_view_write_s_b2cd68211ddc( p0 = t49 ).
    DATA(t50) = abap_true.
    DATA(t51) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t51->has = abap_true.
    t51->value = t50.
    me->zlnt_view_write_s_c2df3a39768b( p0 = t51 ).
    DATA(t52) = abap_true.
    DATA(t53) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t53->has = abap_true.
    t53->value = t52.
    me->zlnt_view_write_s_7d114caaf601( p0 = t53 ).
    DATA(t54) = abap_true.
    DATA(t55) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t55->has = abap_true.
    t55->value = t54.
    me->zlnt_view_write_s_7f41b5b75ecf( p0 = t55 ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    IF zlnt_view_source_36f3bf68b9b8 IS NOT BOUND.
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1632_3132ec89730b.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_e5182c9cb5b0.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `refresh` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->refresh_83dc.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_c34ffa589182.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `refresh` p1 = t1 ).
    ELSE.
      me->refresh_83dc = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `refresh`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_74d4d49d4745.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `compute` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->compute_3a6a.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_7aaaec7a8836.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `compute` p1 = t1 ).
    ELSE.
      me->compute_3a6a = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `compute`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_e1b5545ca094.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `add` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->add_51c1.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_f888fac3bfbf.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `add` p1 = t1 ).
    ELSE.
      me->add_51c1 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `add`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_7cd00c4cd3d2.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `subtract` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->subtract_1d9c.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_86b0b4eb9c19.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `subtract` p1 = t1 ).
    ELSE.
      me->subtract_1d9c = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `subtract`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_53e2daddf5c0.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `multiply` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->multiply_0deb.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_bdb007b58688.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `multiply` p1 = t1 ).
    ELSE.
      me->multiply_0deb = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `multiply`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_199e22f3d1e2.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `divide` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->divide_5c22.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_5b06ec244635.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `divide` p1 = t1 ).
    ELSE.
      me->divide_5c22 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `divide`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_f1ab3a745d20.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `move` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->move_9ad0.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_4e43fde4b44e.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `move` p1 = t1 ).
    ELSE.
      me->move_9ad0 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `move`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_73010cccd5a3.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `requested` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->requested.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_4059138c8c03.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `requested` p1 = t1 ).
    ELSE.
      me->requested = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `requested`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_9564c57a9817.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `occurs` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->occurs.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_a57b47984a39.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `occurs` p1 = t1 ).
    ELSE.
      me->occurs = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `occurs`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_a489a62433a9.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `setExtended` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->set_extended.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_cea8dc23fd8f.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `setExtended` p1 = t1 ).
    ELSE.
      me->set_extended = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `setExtended`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_5ab84e52ca26.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `withHeaderLine` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->with_header_line.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_c149d25a9805.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `withHeaderLine` p1 = t1 ).
    ELSE.
      me->with_header_line = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `withHeaderLine`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_74010c810334.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `fieldSymbolStructure` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->field_symbol_structure.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_6612e73c5041.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `fieldSymbolStructure` p1 = t1 ).
    ELSE.
      me->field_symbol_structure = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `fieldSymbolStructure`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_e7ae581b8c54.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `typePools` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->type_pools_243d.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_9244f5534fce.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `typePools` p1 = t1 ).
    ELSE.
      me->type_pools_243d = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `typePools`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_79f97f0da28d.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `load` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->load.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_e9850db9ffab.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `load` p1 = t1 ).
    ELSE.
      me->load = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `load`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_32a9ad24daa8.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `parameter` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->parameter_6dfd.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_32ae346506cf.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `parameter` p1 = t1 ).
    ELSE.
      me->parameter_6dfd = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parameter`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_df26b38faf17.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `ranges` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->ranges_ca07.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_0d6acb4c46b3.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `ranges` p1 = t1 ).
    ELSE.
      me->ranges_ca07 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ranges`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_2efbb7e799e5.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `communication` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->communication_6e94.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_142a194460ab.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `communication` p1 = t1 ).
    ELSE.
      me->communication_6e94 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `communication`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_af6f73503223.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `pack` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->pack_130b.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_c6338b50a220.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `pack` p1 = t1 ).
    ELSE.
      me->pack_130b = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `pack`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_b9ac5976bbdc.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `selectWithoutInto` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->select_without_into.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_8afcc35d1093.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `selectWithoutInto` p1 = t1 ).
    ELSE.
      me->select_without_into = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `selectWithoutInto`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_f913da31cb26.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `freeMemory` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->free_memory_596a.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_353b70ed79b1.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `freeMemory` p1 = t1 ).
    ELSE.
      me->free_memory_596a = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `freeMemory`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_6a5fcc262012.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `exitFromSQL` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->exit_from_sql.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_7d4dba3c13e7.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `exitFromSQL` p1 = t1 ).
    ELSE.
      me->exit_from_sql = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `exitFromSQL`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_8bc7f98b4ab7.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `sortByFS` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->sort_by_fs.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_a5e4692e8c46.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `sortByFS` p1 = t1 ).
    ELSE.
      me->sort_by_fs = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sortByFS`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_2a70a957561f.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `callTransformation` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->call_transformation_5f8a.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_ad763e429ff1.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `callTransformation` p1 = t1 ).
    ELSE.
      me->call_transformation_5f8a = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `callTransformation`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_1e511c9f8d04.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `regex` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->regex.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_8182dc9b4061.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `regex` p1 = t1 ).
    ELSE.
      me->regex = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `regex`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_3922bd87722d.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `occurences` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->occurences.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_0989c3aa1a9a.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `occurences` p1 = t1 ).
    ELSE.
      me->occurences = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `occurences`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_76df01b8d502.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `clientSpecified` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->client_specified.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_4f98d1d0d1fe.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `clientSpecified` p1 = t1 ).
    ELSE.
      me->client_specified = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `clientSpecified`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_07dfda9b4838.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `formDefinition` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->form_definition_b43b.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_8693fb2446ea.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `formDefinition` p1 = t1 ).
    ELSE.
      me->form_definition_b43b = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `formDefinition`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_a82fd91e3e4c.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `formImplementation` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->form_implementation.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_5bcdd3b7ffd5.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `formImplementation` p1 = t1 ).
    ELSE.
      me->form_implementation = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `formImplementation`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_8b1de602e50e.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `commonPart` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->common_part.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_bb8e39f7b8a6.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `commonPart` p1 = t1 ).
    ELSE.
      me->common_part = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `commonPart`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_107aabcd4247.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `fieldGroups` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->field_groups.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_b2cd68211ddc.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `fieldGroups` p1 = t1 ).
    ELSE.
      me->field_groups = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `fieldGroups`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_bc501b82d528.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `replaceInto` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->replace_into.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_c2df3a39768b.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `replaceInto` p1 = t1 ).
    ELSE.
      me->replace_into = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `replaceInto`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_2b4baa7f3ded.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `loopExtract` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->loop_extract_daeb.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_7d114caaf601.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `loopExtract` p1 = t1 ).
    ELSE.
      me->loop_extract_daeb = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `loopExtract`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_285c76f87f81.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `sortExtract` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->sort_extract.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_7f41b5b75ecf.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `sortExtract` p1 = t1 ).
    ELSE.
      me->sort_extract = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sortExtract`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->has( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `refresh`.
        result = abap_true.
      WHEN `compute`.
        result = abap_true.
      WHEN `add`.
        result = abap_true.
      WHEN `subtract`.
        result = abap_true.
      WHEN `multiply`.
        result = abap_true.
      WHEN `divide`.
        result = abap_true.
      WHEN `move`.
        result = abap_true.
      WHEN `requested`.
        result = abap_true.
      WHEN `occurs`.
        result = abap_true.
      WHEN `setExtended`.
        result = abap_true.
      WHEN `withHeaderLine`.
        result = abap_true.
      WHEN `fieldSymbolStructure`.
        result = abap_true.
      WHEN `typePools`.
        result = abap_true.
      WHEN `load`.
        result = abap_true.
      WHEN `parameter`.
        result = abap_true.
      WHEN `ranges`.
        result = abap_true.
      WHEN `communication`.
        result = abap_true.
      WHEN `pack`.
        result = abap_true.
      WHEN `selectWithoutInto`.
        result = abap_true.
      WHEN `freeMemory`.
        result = abap_true.
      WHEN `exitFromSQL`.
        result = abap_true.
      WHEN `sortByFS`.
        result = abap_true.
      WHEN `callTransformation`.
        result = abap_true.
      WHEN `regex`.
        result = abap_true.
      WHEN `occurences`.
        result = abap_true.
      WHEN `clientSpecified`.
        result = abap_true.
      WHEN `formDefinition`.
        result = abap_true.
      WHEN `formImplementation`.
        result = abap_true.
      WHEN `commonPart`.
        result = abap_true.
      WHEN `fieldGroups`.
        result = abap_true.
      WHEN `replaceInto`.
        result = abap_true.
      WHEN `loopExtract`.
        result = abap_true.
      WHEN `sortExtract`.
        result = abap_true.
      WHEN `exclude`.
        result = abap_true.
      WHEN `severity`.
        result = abap_true.
    ENDCASE.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      result = abap_false.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~delete.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->delete( p0 ).
      RETURN.
    ENDIF.
    result = zlnt_runtime_nati_be494c0b072c=>run( p0 = me key = p0 ).
  ENDMETHOD.

  METHOD zlnt_own_storage_4c72afe8366e~keys.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = zlnt_runtime_ownk_4497b85e405d=>keys( me->zlnt_view_source_36f3bf68b9b8 ).
      RETURN.
    ENDIF.
    t1 = NEW #( ).
    t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `exclude` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `exclude` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `severity` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `severity` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `refresh` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `refresh` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `compute` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `compute` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `add` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `add` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `subtract` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `subtract` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `multiply` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `multiply` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `divide` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `divide` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `move` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `move` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `requested` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `requested` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `occurs` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `occurs` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `setExtended` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `setExtended` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `withHeaderLine` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `withHeaderLine` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `fieldSymbolStructure` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `fieldSymbolStructure` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `typePools` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `typePools` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `load` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `load` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `parameter` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `parameter` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `ranges` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `ranges` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `communication` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `communication` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `pack` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `pack` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `selectWithoutInto` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `selectWithoutInto` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `freeMemory` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `freeMemory` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `exitFromSQL` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `exitFromSQL` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `sortByFS` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `sortByFS` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `callTransformation` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `callTransformation` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `regex` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `regex` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `occurences` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `occurences` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `clientSpecified` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `clientSpecified` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `formDefinition` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `formDefinition` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `formImplementation` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `formImplementation` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `commonPart` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `commonPart` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `fieldGroups` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `fieldGroups` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `replaceInto` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `replaceInto` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `loopExtract` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `loopExtract` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `sortExtract` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `sortExtract` p1 = VALUE #( ) ).
    ENDIF.
    result = zlnt_runtime_ownk_4497b85e405d=>keys( t1 ).
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~get.
    IF p0 = `constructor` OR p0 = `toString` OR p0 = `toLocaleString` OR p0 = `valueOf` OR p0 = `hasOwnProperty` OR p0 = `isPrototypeOf` OR p0 = `propertyIsEnumerable` OR p0 = `__proto__` OR p0 = `__defineGetter__` OR p0 =
    `__defineSetter__` OR p0 = `__lookupGetter__` OR p0 = `__lookupSetter__`.
      IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
        IF me->zlnt_view_source_36f3bf68b9b8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          READ TABLE me->zlnt_view_source_36f3bf68b9b8->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
          IF sy-subrc <> 0.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: inherited prototype value unavailable from graph`.
          ENDIF.
        ELSEIF me->zlnt_view_source_36f3bf68b9b8->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: primitive prototype lookup unavailable`.
        ENDIF.
      ELSE.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: native prototype lookup unavailable`.
      ENDIF.
    ENDIF.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->get( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `exclude`.
        CLEAR result.
        IF me->exclude IS BOUND.
          CLEAR result.
          IF me->exclude IS BOUND.
            DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t1.
            DATA t2 TYPE REF TO object.
            CLEAR t2.
            CLEAR t1.
            t2 = me->exclude.
            TRY.
                result ?= t2.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t1 ?= me->exclude.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t1 IS BOUND.
                result = t1->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->exclude.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `severity`.
        CLEAR result.
        IF me->severity IS BOUND AND me->severity->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->severity->value.
        ENDIF.
      WHEN `refresh`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->refresh_83dc.
      WHEN `compute`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->compute_3a6a.
      WHEN `add`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->add_51c1.
      WHEN `subtract`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->subtract_1d9c.
      WHEN `multiply`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->multiply_0deb.
      WHEN `divide`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->divide_5c22.
      WHEN `move`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->move_9ad0.
      WHEN `requested`.
        CLEAR result.
        IF me->requested IS BOUND AND me->requested->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->requested->value.
        ENDIF.
      WHEN `occurs`.
        CLEAR result.
        IF me->occurs IS BOUND AND me->occurs->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->occurs->value.
        ENDIF.
      WHEN `setExtended`.
        CLEAR result.
        IF me->set_extended IS BOUND AND me->set_extended->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->set_extended->value.
        ENDIF.
      WHEN `withHeaderLine`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->with_header_line.
      WHEN `fieldSymbolStructure`.
        CLEAR result.
        IF me->field_symbol_structure IS BOUND AND me->field_symbol_structure->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->field_symbol_structure->value.
        ENDIF.
      WHEN `typePools`.
        CLEAR result.
        IF me->type_pools_243d IS BOUND AND me->type_pools_243d->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->type_pools_243d->value.
        ENDIF.
      WHEN `load`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->load.
      WHEN `parameter`.
        CLEAR result.
        IF me->parameter_6dfd IS BOUND AND me->parameter_6dfd->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->parameter_6dfd->value.
        ENDIF.
      WHEN `ranges`.
        CLEAR result.
        IF me->ranges_ca07 IS BOUND AND me->ranges_ca07->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->ranges_ca07->value.
        ENDIF.
      WHEN `communication`.
        CLEAR result.
        IF me->communication_6e94 IS BOUND AND me->communication_6e94->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->communication_6e94->value.
        ENDIF.
      WHEN `pack`.
        CLEAR result.
        IF me->pack_130b IS BOUND AND me->pack_130b->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->pack_130b->value.
        ENDIF.
      WHEN `selectWithoutInto`.
        CLEAR result.
        IF me->select_without_into IS BOUND AND me->select_without_into->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->select_without_into->value.
        ENDIF.
      WHEN `freeMemory`.
        CLEAR result.
        IF me->free_memory_596a IS BOUND AND me->free_memory_596a->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->free_memory_596a->value.
        ENDIF.
      WHEN `exitFromSQL`.
        CLEAR result.
        IF me->exit_from_sql IS BOUND AND me->exit_from_sql->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->exit_from_sql->value.
        ENDIF.
      WHEN `sortByFS`.
        CLEAR result.
        IF me->sort_by_fs IS BOUND AND me->sort_by_fs->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->sort_by_fs->value.
        ENDIF.
      WHEN `callTransformation`.
        CLEAR result.
        IF me->call_transformation_5f8a IS BOUND AND me->call_transformation_5f8a->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->call_transformation_5f8a->value.
        ENDIF.
      WHEN `regex`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->regex.
      WHEN `occurences`.
        CLEAR result.
        IF me->occurences IS BOUND AND me->occurences->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->occurences->value.
        ENDIF.
      WHEN `clientSpecified`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->client_specified.
      WHEN `formDefinition`.
        CLEAR result.
        IF me->form_definition_b43b IS BOUND AND me->form_definition_b43b->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->form_definition_b43b->value.
        ENDIF.
      WHEN `formImplementation`.
        CLEAR result.
        IF me->form_implementation IS BOUND AND me->form_implementation->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->form_implementation->value.
        ENDIF.
      WHEN `commonPart`.
        CLEAR result.
        IF me->common_part IS BOUND AND me->common_part->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->common_part->value.
        ENDIF.
      WHEN `fieldGroups`.
        CLEAR result.
        IF me->field_groups IS BOUND AND me->field_groups->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->field_groups->value.
        ENDIF.
      WHEN `replaceInto`.
        CLEAR result.
        IF me->replace_into IS BOUND AND me->replace_into->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->replace_into->value.
        ENDIF.
      WHEN `loopExtract`.
        CLEAR result.
        IF me->loop_extract_daeb IS BOUND AND me->loop_extract_daeb->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->loop_extract_daeb->value.
        ENDIF.
      WHEN `sortExtract`.
        CLEAR result.
        IF me->sort_extract IS BOUND AND me->sort_extract->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->sort_extract->value.
        ENDIF.
    ENDCASE.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~put.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = p0 p1 = p1 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `severity`.
        CLEAR me->severity.
        IF p1 IS BOUND.
          me->severity = NEW #( ).
          me->severity->has = abap_true.
          me->severity->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `severity`.
      WHEN `refresh`.
        me->refresh_83dc = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `refresh`.
      WHEN `compute`.
        me->compute_3a6a = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `compute`.
      WHEN `add`.
        me->add_51c1 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `add`.
      WHEN `subtract`.
        me->subtract_1d9c = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `subtract`.
      WHEN `multiply`.
        me->multiply_0deb = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `multiply`.
      WHEN `divide`.
        me->divide_5c22 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `divide`.
      WHEN `move`.
        me->move_9ad0 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `move`.
      WHEN `requested`.
        CLEAR me->requested.
        IF p1 IS BOUND.
          me->requested = NEW #( ).
          me->requested->has = abap_true.
          me->requested->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `requested`.
      WHEN `occurs`.
        CLEAR me->occurs.
        IF p1 IS BOUND.
          me->occurs = NEW #( ).
          me->occurs->has = abap_true.
          me->occurs->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `occurs`.
      WHEN `setExtended`.
        CLEAR me->set_extended.
        IF p1 IS BOUND.
          me->set_extended = NEW #( ).
          me->set_extended->has = abap_true.
          me->set_extended->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `setExtended`.
      WHEN `withHeaderLine`.
        me->with_header_line = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `withHeaderLine`.
      WHEN `fieldSymbolStructure`.
        CLEAR me->field_symbol_structure.
        IF p1 IS BOUND.
          me->field_symbol_structure = NEW #( ).
          me->field_symbol_structure->has = abap_true.
          me->field_symbol_structure->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `fieldSymbolStructure`.
      WHEN `typePools`.
        CLEAR me->type_pools_243d.
        IF p1 IS BOUND.
          me->type_pools_243d = NEW #( ).
          me->type_pools_243d->has = abap_true.
          me->type_pools_243d->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `typePools`.
      WHEN `load`.
        me->load = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `load`.
      WHEN `parameter`.
        CLEAR me->parameter_6dfd.
        IF p1 IS BOUND.
          me->parameter_6dfd = NEW #( ).
          me->parameter_6dfd->has = abap_true.
          me->parameter_6dfd->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parameter`.
      WHEN `ranges`.
        CLEAR me->ranges_ca07.
        IF p1 IS BOUND.
          me->ranges_ca07 = NEW #( ).
          me->ranges_ca07->has = abap_true.
          me->ranges_ca07->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ranges`.
      WHEN `communication`.
        CLEAR me->communication_6e94.
        IF p1 IS BOUND.
          me->communication_6e94 = NEW #( ).
          me->communication_6e94->has = abap_true.
          me->communication_6e94->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `communication`.
      WHEN `pack`.
        CLEAR me->pack_130b.
        IF p1 IS BOUND.
          me->pack_130b = NEW #( ).
          me->pack_130b->has = abap_true.
          me->pack_130b->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `pack`.
      WHEN `selectWithoutInto`.
        CLEAR me->select_without_into.
        IF p1 IS BOUND.
          me->select_without_into = NEW #( ).
          me->select_without_into->has = abap_true.
          me->select_without_into->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `selectWithoutInto`.
      WHEN `freeMemory`.
        CLEAR me->free_memory_596a.
        IF p1 IS BOUND.
          me->free_memory_596a = NEW #( ).
          me->free_memory_596a->has = abap_true.
          me->free_memory_596a->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `freeMemory`.
      WHEN `exitFromSQL`.
        CLEAR me->exit_from_sql.
        IF p1 IS BOUND.
          me->exit_from_sql = NEW #( ).
          me->exit_from_sql->has = abap_true.
          me->exit_from_sql->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `exitFromSQL`.
      WHEN `sortByFS`.
        CLEAR me->sort_by_fs.
        IF p1 IS BOUND.
          me->sort_by_fs = NEW #( ).
          me->sort_by_fs->has = abap_true.
          me->sort_by_fs->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sortByFS`.
      WHEN `callTransformation`.
        CLEAR me->call_transformation_5f8a.
        IF p1 IS BOUND.
          me->call_transformation_5f8a = NEW #( ).
          me->call_transformation_5f8a->has = abap_true.
          me->call_transformation_5f8a->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `callTransformation`.
      WHEN `regex`.
        me->regex = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `regex`.
      WHEN `occurences`.
        CLEAR me->occurences.
        IF p1 IS BOUND.
          me->occurences = NEW #( ).
          me->occurences->has = abap_true.
          me->occurences->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `occurences`.
      WHEN `clientSpecified`.
        me->client_specified = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `clientSpecified`.
      WHEN `formDefinition`.
        CLEAR me->form_definition_b43b.
        IF p1 IS BOUND.
          me->form_definition_b43b = NEW #( ).
          me->form_definition_b43b->has = abap_true.
          me->form_definition_b43b->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `formDefinition`.
      WHEN `formImplementation`.
        CLEAR me->form_implementation.
        IF p1 IS BOUND.
          me->form_implementation = NEW #( ).
          me->form_implementation->has = abap_true.
          me->form_implementation->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `formImplementation`.
      WHEN `commonPart`.
        CLEAR me->common_part.
        IF p1 IS BOUND.
          me->common_part = NEW #( ).
          me->common_part->has = abap_true.
          me->common_part->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `commonPart`.
      WHEN `fieldGroups`.
        CLEAR me->field_groups.
        IF p1 IS BOUND.
          me->field_groups = NEW #( ).
          me->field_groups->has = abap_true.
          me->field_groups->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `fieldGroups`.
      WHEN `replaceInto`.
        CLEAR me->replace_into.
        IF p1 IS BOUND.
          me->replace_into = NEW #( ).
          me->replace_into->has = abap_true.
          me->replace_into->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `replaceInto`.
      WHEN `loopExtract`.
        CLEAR me->loop_extract_daeb.
        IF p1 IS BOUND.
          me->loop_extract_daeb = NEW #( ).
          me->loop_extract_daeb->has = abap_true.
          me->loop_extract_daeb->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `loopExtract`.
      WHEN `sortExtract`.
        CLEAR me->sort_extract.
        IF p1 IS BOUND.
          me->sort_extract = NEW #( ).
          me->sort_extract->has = abap_true.
          me->sort_extract->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sortExtract`.
      WHEN OTHERS.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: unknown nominal slot has no storage`.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
