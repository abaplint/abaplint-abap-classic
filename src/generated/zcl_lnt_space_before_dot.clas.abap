* TS: src/rules/space_before_dot.ts:20:1 SpaceBeforeDot
CLASS zcl_lnt_space_before_dot DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_space_before_dot_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_sp_bf_dt_ts_sp_bf_dt RETURNING VALUE(result) TYPE REF TO zcl_lnt_space_before_dot_conf.
    METHODS s_c_i_s_r_sp_bf_dt_ts_sp_bf_dt IMPORTING i_conf TYPE REF TO zcl_lnt_space_before_dot_conf.
    METHODS r_p_i_s_r_sp_bf_dt_ts_sp_bf_dt IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_space_before_dot IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_space_before_dot_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for extra spaces before dots at the ends of statement|.
    t7 = t7 && |s|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
    t11 = t11 && |anABAP.md#be-consistent\nhttps://github.com/SAP/styleguides/b|.
    t11 = t11 && |lob/main/clean-abap/CleanABAP.md#condense-your-code|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Whitespace| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = |WRITE bar .|.
    t30 = t34.
    DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t40->has = abap_true.
    t40->value = |WRITE bar.|.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |space_before_dot| i_title = |Space before dot| i_short_description = t6 i_bad_example = t30 i_good_example = t40 i_extended_information = t8 i_tags = t14 i_pragma = t42 i_pseudo_comment = t44 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t46 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t52 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t54 ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t64 ).
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t66 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |Remove space before "," or "."|.

  ENDMETHOD.

  METHOD g_c_i_s_r_sp_bf_dt_ts_sp_bf_dt.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_sp_bf_dt_ts_sp_bf_dt.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_sp_bf_dt_ts_sp_bf_dt.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t7 TYPE f.
    t7 = CONV f( 0 ).
    DATA t14 TYPE REF TO zcl_lnt_structure_node.
    t14 = t1->structure.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t14 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t22 TYPE REF TO zcl_lnt_ddic.
    DATA(t23) = me->reg.
    t22 = NEW zcl_lnt_ddic( i_reg_f149 = t23 ).
    DATA(t24) = VALUE abap_bool( ).
    DATA t25 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t25 = me->conf->zlnt_view_read_sr_2639abf67a0f( ).
    IF t25 IS BOUND.
      IF t25->has = abap_true.
        t24 = xsdbool( t25->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF t24 = abap_true.
      DATA t27 TYPE REF TO zcl_lnt_structure_node.
      t27 = t1->structure.
      DATA t33 TYPE abap_bool.
      DATA t34 TYPE abap_bool.
      t34 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ).
      t33 = t34.
      IF t34 = abap_true.
        DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t33 = xsdbool( xsdbool( t27 IS INITIAL ) = abap_false ).
      ENDIF.
      IF t33 = abap_true.
        DATA t44 TYPE REF TO zcl_lnt_statement_node.
        DATA t46 TYPE REF TO zcl_lnt_structure_node.
        t46 = t27.
        DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d468_9c9153155b4d.
        t44 = t46->find_first_statement( i_type_9913 = t48 ).
        DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( xsdbool( t44 IS INITIAL ) = abap_false ) = abap_true.
          DATA t64 TYPE REF TO zcl_lnt_position.
          t64 = t44->get_first_token( )->start.
          t7 = t64->row.
        ENDIF.
        DATA t68 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t70 TYPE REF TO zcl_lnt_class.
        DATA t71 TYPE REF TO zcl_lnt_class.
        DATA t73 TYPE REF TO object.
        t73 = t2.
        t71 ?= t73.
        t70 = t71.
        DATA t75 TYPE REF TO zif_lnt_abap_file_information.
        DATA t77 TYPE REF TO zcl_lnt_abap_file.
        t77 = t70->get_main_abap_file( ).
        DATA t80 TYPE REF TO zif_lnt_abap_file_information.
        IF xsdbool( t77 IS INITIAL ) = abap_true.
        ELSE.
          t80 = t77->info.
        ENDIF.
        t75 = t80.
        DATA t90 TYPE REF TO zcl_lnt_info_class_definition.
        IF xsdbool( t75 IS INITIAL ) = abap_true.
        ELSE.
          DATA t95 TYPE REF TO zif_lnt_abap_file_information.
          t95 = t75.
          DATA t97 TYPE string.
          DATA t98 TYPE REF TO zcl_lnt_abstract_object.
          t98 = t70.
          t97 = t98->name.
          t90 = t95->get_class_definition_by_name( i_name = t97 ).
        ENDIF.
        t68 = t90.
        DATA(t102) = VALUE abap_bool( ).
        DATA(t103) = VALUE abap_bool( ).
        DATA(t104) = VALUE abap_bool( ).
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t104 = xsdbool( xsdbool( t68 IS INITIAL ) = abap_false ).
        t103 = t104.
        IF t104 = abap_true.
          t103 = me->conf->zlnt_view_read_sr_3ff1416bfe51( ).
        ENDIF.
        t102 = t103.
        IF t103 = abap_true.
          DATA t116 TYPE REF TO zcl_lnt_info_class_definition.
          t116 = t68.
          DATA t121 TYPE REF TO zcl_lnt_class.
          DATA t123 TYPE REF TO object.
          t123 = t2.
          t121 ?= t123.
          t102 = t22->is_exception( i_def = t116 i_obj_ac26 = t121 ).
        ENDIF.
        IF t102 = abap_true.
          CREATE OBJECT result.
          RETURN.
        ENDIF.
      ELSE.
        DATA t125 TYPE abap_bool.
        DATA t126 TYPE abap_bool.
        t126 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ob_interface ).
        t125 = t126.
        IF t126 = abap_true.
          DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t125 = xsdbool( xsdbool( t27 IS INITIAL ) = abap_false ).
        ENDIF.
        IF t125 = abap_true.
          DATA t136 TYPE REF TO zcl_lnt_statement_node.
          DATA t138 TYPE REF TO zcl_lnt_structure_node.
          t138 = t27.
          DATA(t140) = zlnt_runtime_desc_78196487750d=>zlnt_member_d475_9e77338670ac.
          t136 = t138->find_first_statement( i_type_9913 = t140 ).
          DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF xsdbool( xsdbool( t136 IS INITIAL ) = abap_false ) = abap_true.
            DATA t156 TYPE REF TO zcl_lnt_position.
            t156 = t136->get_first_token( )->start.
            t7 = t156->row.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t162 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t160 = t1->get_tokens( i_with_pragmas = t162 ).
    DATA t163 TYPE REF TO zcl_lnt_abstract_token.
    DATA t164 TYPE REF TO object.
    DATA(t165) = VALUE i( ).
    DO.
      t160->load( ).
      IF t165 >= lines( t160->items ).
        EXIT.
      ENDIF.
      CLEAR t164.
      READ TABLE t160->items INDEX t165 + 1 INTO t164.
      t165 = t165 + 1.
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t166.
      CLEAR t163.
      IF t164 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t166 ?= t164.
        DATA t167 TYPE REF TO object.
        t167 = t166->as_ref( ).
        t163 ?= t167.
      ELSE.
        t163 ?= t164.
      ENDIF.
      IF xsdbool( t163->start->row < t7 ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t179) = VALUE abap_bool( ).
      DATA(t180) = VALUE abap_bool( ).
      DATA(t181) = VALUE abap_bool( ).
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t184.
      t181 = xsdbool( xsdbool( t5 IS INITIAL ) = abap_false ).
      t180 = t181.
      IF t181 = abap_true.
        t180 = xsdbool( t163 IS BOUND AND t163 IS INSTANCE OF zcl_lnt_punctuation ).
      ENDIF.
      t179 = t180.
      IF t180 = abap_true.
        DATA t192 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t193 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t193 = t5->start->col.
        DATA t203 TYPE f.
        t203 = strlen( t5->str ).
        DATA(t212) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t212->has = abap_true.
        t212->value = t203.
        t192 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t193 right = t212 op = `+` ).
        DATA t214 TYPE REF TO zcl_lnt_abstract_token.
        DATA t215 TYPE REF TO zcl_lnt_punctuation.
        t215 ?= t163.
        t214 = t215.
        DATA t221 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t221 = t214->start->col.
        t179 = zlnt_runtime_numb_290eb04a9758=>compare( left = t192 right = t221 op = `<` ).
      ENDIF.
      IF t179 = abap_true.
        DATA t223 TYPE REF TO zcl_lnt_position.
        DATA t225 TYPE f.
        DATA t228 TYPE REF TO zcl_lnt_abstract_token.
        DATA t229 TYPE REF TO zcl_lnt_punctuation.
        t229 ?= t163.
        t228 = t229.
        t225 = t228->start->row.
        DATA t238 TYPE REF TO zcl_lnt_abstract_token.
        t238 = t5.
        DATA t242 TYPE f.
        t242 = t238->start->row.
        DATA t249 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t249 = t238->start->col.
        DATA t255 TYPE f.
        t255 = strlen( t238->str ).
        DATA(t260) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t260->has = abap_true.
        t260->value = t255.
        DATA t261 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t261 = NEW zcl_lnt_position( i_row = t242 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t249 right = t260 op = `+` ) )->col.
        t223 = NEW zcl_lnt_position( i_row = t225 i_col = t261 ).
        DATA t263 TYPE REF TO zcl_lnt_position.
        DATA t265 TYPE f.
        DATA t268 TYPE REF TO zcl_lnt_abstract_token.
        DATA t269 TYPE REF TO zcl_lnt_punctuation.
        t269 ?= t163.
        t268 = t269.
        t265 = t268->start->row.
        DATA t278 TYPE REF TO zcl_lnt_abstract_token.
        DATA t279 TYPE REF TO zcl_lnt_punctuation.
        t279 ?= t163.
        t278 = t279.
        DATA t283 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t283 = t278->start->col.
        t263 = NEW zcl_lnt_position( i_row = t265 i_col = t283 ).
        DATA t286 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t286 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t223 i_end = t263 ).
        DATA t291 TYPE REF TO zcl_lnt_issue.
        CLEAR t291.
        DATA(t296) = VALUE string( ).
        DATA t297 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t297.
        DATA t302 TYPE string.
        DATA(t303) = |Checks for extra spaces before dots at the ends of statement|.
        t303 = t303 && |s|.
        t302 = t303.
        DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t304.
        DATA(t307) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
        t307 = t307 && |anABAP.md#be-consistent\nhttps://github.com/SAP/styleguides/b|.
        t307 = t307 && |lob/main/clean-abap/CleanABAP.md#condense-your-code|.
        DATA(t308) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t308->has = abap_true.
        t308->value = t307.
        t304 = t308.
        DATA t310 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t310.
        DATA t314 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t314.
        t314->load( ).
        APPEND |Whitespace| TO t314->items.
        t314->save( ).
        t314->load( ).
        APPEND |Quickfix| TO t314->items.
        t314->save( ).
        t314->load( ).
        APPEND |Styleguide| TO t314->items.
        t314->save( ).
        t314->load( ).
        APPEND |SingleFile| TO t314->items.
        t314->save( ).
        t310 = t314.
        DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t326.
        DATA(t330) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t330->has = abap_true.
        t330->value = |WRITE bar .|.
        t326 = t330.
        DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t332.
        DATA(t336) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t336->has = abap_true.
        t336->value = |WRITE bar.|.
        t332 = t336.
        DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t338.
        DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t340.
        t297 = NEW zcl_lnt_irule_metadata( i_key = |space_before_dot| i_title = |Space before dot| i_short_description = t302 i_bad_example = t326 i_good_example = t332 i_extended_information = t304 i_tags = t310 i_pragma = t338 i_pseudo_comment = t340 ).
        CREATE OBJECT t297->zlnt_view_ownkeys_b0e8086400eb.
        t297->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t342.
        t297->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t342 ).
        DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t343.
        IF t297->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t297->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t343 ).
        ENDIF.
        DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t344.
        IF t297->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t297->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t344 ).
        ENDIF.
        DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t345.
        IF t297->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t297->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t345 ).
        ENDIF.
        DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t346.
        IF t297->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t297->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t346 ).
        ENDIF.
        DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t347.
        IF t297->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t297->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t347 ).
        ENDIF.
        DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t348.
        IF t297->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t297->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t348 ).
        ENDIF.
        CREATE OBJECT t297->zlnt_json_ownkeys_70e5fd461788.
        t297->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t350.
        t297->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t350 ).
        DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t352.
        IF t297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t297->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t352 ).
        ENDIF.
        DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t354.
        IF t297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t297->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t354 ).
        ENDIF.
        DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t356.
        IF t297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t297->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t356 ).
        ENDIF.
        DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t358.
        IF t297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t297->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t358 ).
        ENDIF.
        DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t360.
        IF t297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t297->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t360 ).
        ENDIF.
        DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t362.
        IF t297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t297->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t362 ).
        ENDIF.
        t296 = t297->key.
        DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t363 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t365 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t365.
        t365 = t286.
        DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t369.
        t291 = zcl_lnt_issue=>at_range( i_file = t1 i_start = t223 i_end = t263 i_message_26cb = |Remove space before "," or "."| i_key = t296 i_severity = t363 i_fix = t365 i_alternative_fixes = t369 ).
        t3->load( ).
        APPEND t291 TO t3->items.
        t3->save( ).
      ENDIF.
      t5 = t163.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_space_before_dot_conf( me->g_c_i_s_r_sp_bf_dt_ts_sp_bf_dt( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_space_before_dot_conf( me->g_c_i_s_r_sp_bf_dt_ts_sp_bf_dt( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_space_before_dot_conf.
    IF i_conf IS BOUND.
      IF i_conf->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t1 ?= i_conf->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t1 IS NOT BOUND.
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t2 ?= i_conf->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t2->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t1 = NEW zcl_lnt_space_before_dot_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_sp_bf_dt_ts_sp_bf_dt( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_sp_bf_dt_ts_sp_bf_dt( i_file = i_file i_obj_1ed0 = i_obj_1ed0 ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1708_1373e9845b5c.
  ENDMETHOD.
ENDCLASS.
