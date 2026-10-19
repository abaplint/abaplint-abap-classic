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
    DATA t2 TYPE string.
    t2 = |space_before_dot|.
    DATA t4 TYPE string.
    t4 = |Space before dot|.
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
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |Whitespace|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    DATA(t23) = |Quickfix|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    DATA(t25) = |Styleguide|.
    t18->load( ).
    APPEND t25 TO t18->items.
    t18->save( ).
    DATA(t27) = |SingleFile|.
    t18->load( ).
    APPEND t27 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t33) = |WRITE bar .|.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = t33.
    t30 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t39) = |WRITE bar.|.
    DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t40->has = abap_true.
    t40->value = t39.
    t36 = t40.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t30 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t42 i_pseudo_comment = t44 ).
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
    DATA(t53) = |key|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    DATA(t55) = |title|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |shortDescription|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |extendedInformation|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |tags|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |badExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    DATA(t65) = |goodExample|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
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
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t7 TYPE f.
    DATA(t8) = CONV f( 0 ).
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA t14 TYPE REF TO zcl_lnt_structure_node.
    t14 = t1->structure.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t9 = xsdbool( t14 IS INITIAL ).
    IF t9 = abap_true.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t20.
      result = t20.
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
      DATA t31 TYPE REF TO zcl_lnt_structure_node.
      t31 = t1->structure.
      t27 = t31.
      DATA t33 TYPE abap_bool.
      DATA t34 TYPE abap_bool.
      t34 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ).
      t33 = t34.
      IF t34 = abap_true.
        DATA(t36) = VALUE abap_bool( ).
        DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t41) = VALUE abap_bool( ).
        DATA(t42) = xsdbool( t27 IS INITIAL ).
        t41 = xsdbool( t42 = abap_false ).
        t36 = t41.
        t33 = t36.
      ENDIF.
      IF t33 = abap_true.
        DATA t44 TYPE REF TO zcl_lnt_statement_node.
        DATA t45 TYPE REF TO zcl_lnt_statement_node.
        DATA t46 TYPE REF TO zcl_lnt_structure_node.
        t46 = t27.
        DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d468_9c9153155b4d.
        t45 = t46->find_first_statement( i_type_9913 = t48 ).
        t44 = t45.
        DATA(t49) = VALUE abap_bool( ).
        DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = xsdbool( t44 IS INITIAL ).
        t54 = xsdbool( t55 = abap_false ).
        t49 = t54.
        IF t49 = abap_true.
          DATA t59 TYPE REF TO zcl_lnt_abstract_token.
          DATA t60 TYPE REF TO zcl_lnt_statement_node.
          t60 = t44.
          t59 = t60->get_first_token( ).
          DATA t64 TYPE REF TO zcl_lnt_position.
          t64 = t59->start.
          DATA t66 TYPE f.
          t66 = t64->row.
          t7 = t66.
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
        DATA t78 TYPE REF TO zcl_lnt_abap_file.
        t78 = t70->get_main_abap_file( ).
        t77 = t78.
        DATA t80 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t81) = xsdbool( t77 IS INITIAL ).
        IF t81 = abap_true.
        ELSE.
          DATA t88 TYPE REF TO zif_lnt_abap_file_information.
          t88 = t77->info.
          t80 = t88.
        ENDIF.
        t75 = t80.
        DATA t90 TYPE REF TO zcl_lnt_info_class_definition.
        DATA(t91) = xsdbool( t75 IS INITIAL ).
        IF t91 = abap_true.
        ELSE.
          DATA t94 TYPE REF TO zcl_lnt_info_class_definition.
          DATA t95 TYPE REF TO zif_lnt_abap_file_information.
          t95 = t75.
          DATA t97 TYPE string.
          DATA t98 TYPE REF TO zcl_lnt_abstract_object.
          t98 = t70.
          DATA t100 TYPE string.
          t100 = t98->name.
          t97 = t100.
          t94 = t95->get_class_definition_by_name( i_name = t97 ).
          t90 = t94.
        ENDIF.
        t68 = t90.
        DATA(t102) = VALUE abap_bool( ).
        DATA(t103) = VALUE abap_bool( ).
        DATA(t104) = VALUE abap_bool( ).
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t109) = VALUE abap_bool( ).
        DATA(t110) = xsdbool( t68 IS INITIAL ).
        t109 = xsdbool( t110 = abap_false ).
        t104 = t109.
        t103 = t104.
        IF t104 = abap_true.
          DATA t112 TYPE abap_bool.
          t112 = me->conf->zlnt_view_read_sr_3ff1416bfe51( ).
          t103 = t112.
        ENDIF.
        t102 = t103.
        IF t103 = abap_true.
          DATA(t114) = VALUE abap_bool( ).
          DATA t116 TYPE REF TO zcl_lnt_info_class_definition.
          t116 = t68.
          DATA t121 TYPE REF TO zcl_lnt_class.
          DATA t123 TYPE REF TO object.
          t123 = t2.
          t121 ?= t123.
          t114 = t22->is_exception( i_def = t116 i_obj_ac26 = t121 ).
          t102 = t114.
        ENDIF.
        IF t102 = abap_true.
          DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t124.
          result = t124.
          RETURN.
        ENDIF.
      ELSE.
        DATA t125 TYPE abap_bool.
        DATA t126 TYPE abap_bool.
        t126 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ob_interface ).
        t125 = t126.
        IF t126 = abap_true.
          DATA(t128) = VALUE abap_bool( ).
          DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t133) = VALUE abap_bool( ).
          DATA(t134) = xsdbool( t27 IS INITIAL ).
          t133 = xsdbool( t134 = abap_false ).
          t128 = t133.
          t125 = t128.
        ENDIF.
        IF t125 = abap_true.
          DATA t136 TYPE REF TO zcl_lnt_statement_node.
          DATA t137 TYPE REF TO zcl_lnt_statement_node.
          DATA t138 TYPE REF TO zcl_lnt_structure_node.
          t138 = t27.
          DATA(t140) = zlnt_runtime_desc_78196487750d=>zlnt_member_d475_9e77338670ac.
          t137 = t138->find_first_statement( i_type_9913 = t140 ).
          t136 = t137.
          DATA(t141) = VALUE abap_bool( ).
          DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t146) = VALUE abap_bool( ).
          DATA(t147) = xsdbool( t136 IS INITIAL ).
          t146 = xsdbool( t147 = abap_false ).
          t141 = t146.
          IF t141 = abap_true.
            DATA t151 TYPE REF TO zcl_lnt_abstract_token.
            DATA t152 TYPE REF TO zcl_lnt_statement_node.
            t152 = t136.
            t151 = t152->get_first_token( ).
            DATA t156 TYPE REF TO zcl_lnt_position.
            t156 = t151->start.
            DATA t158 TYPE f.
            t158 = t156->row.
            t7 = t158.
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
      DATA t168 TYPE abap_bool.
      DATA t169 TYPE f.
      DATA t174 TYPE REF TO zcl_lnt_position.
      t174 = t163->start.
      DATA t176 TYPE f.
      t176 = t174->row.
      t169 = t176.
      t168 = xsdbool( t169 < t7 ).
      IF t168 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t179) = VALUE abap_bool( ).
      DATA(t180) = VALUE abap_bool( ).
      DATA(t181) = VALUE abap_bool( ).
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t184.
      DATA(t186) = VALUE abap_bool( ).
      DATA(t187) = xsdbool( t5 IS INITIAL ).
      t186 = xsdbool( t187 = abap_false ).
      t181 = t186.
      t180 = t181.
      IF t181 = abap_true.
        DATA t189 TYPE abap_bool.
        t189 = xsdbool( t163 IS BOUND AND t163 IS INSTANCE OF zcl_lnt_punctuation ).
        t180 = t189.
      ENDIF.
      t179 = t180.
      IF t180 = abap_true.
        DATA t191 TYPE abap_bool.
        DATA t192 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t193 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t199 TYPE REF TO zcl_lnt_position.
        t199 = t5->start.
        DATA t201 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t201 = t199->col.
        t193 = t201.
        DATA t203 TYPE f.
        DATA t205 TYPE string.
        DATA t209 TYPE string.
        t209 = t5->str.
        t205 = t209.
        t203 = strlen( t205 ).
        DATA(t212) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t212->has = abap_true.
        t212->value = t203.
        t192 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t193 right = t212 op = `+` ).
        DATA t213 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t214 TYPE REF TO zcl_lnt_abstract_token.
        DATA t215 TYPE REF TO zcl_lnt_punctuation.
        t215 ?= t163.
        t214 = t215.
        DATA t219 TYPE REF TO zcl_lnt_position.
        t219 = t214->start.
        DATA t221 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t221 = t219->col.
        t213 = t221.
        t191 = zlnt_runtime_numb_290eb04a9758=>compare( left = t192 right = t213 op = `<` ).
        t179 = t191.
      ENDIF.
      IF t179 = abap_true.
        DATA t223 TYPE REF TO zcl_lnt_position.
        DATA t224 TYPE REF TO zcl_lnt_position.
        DATA t225 TYPE f.
        DATA t228 TYPE REF TO zcl_lnt_abstract_token.
        DATA t229 TYPE REF TO zcl_lnt_punctuation.
        t229 ?= t163.
        t228 = t229.
        DATA t231 TYPE REF TO zcl_lnt_position.
        t231 = t228->start.
        DATA t233 TYPE f.
        t233 = t231->row.
        t225 = t233.
        DATA t235 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t238 TYPE REF TO zcl_lnt_abstract_token.
        t238 = t5.
        DATA t241 TYPE REF TO zcl_lnt_position.
        DATA t242 TYPE f.
        DATA t244 TYPE REF TO zcl_lnt_position.
        t244 = t238->start.
        DATA t246 TYPE f.
        t246 = t244->row.
        t242 = t246.
        DATA t248 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t249 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t251 TYPE REF TO zcl_lnt_position.
        t251 = t238->start.
        DATA t253 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t253 = t251->col.
        t249 = t253.
        DATA t255 TYPE f.
        DATA t257 TYPE string.
        t257 = t238->str.
        t255 = strlen( t257 ).
        DATA(t260) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t260->has = abap_true.
        t260->value = t255.
        t248 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t249 right = t260 op = `+` ).
        t241 = NEW zcl_lnt_position( i_row = t242 i_col = t248 ).
        DATA t261 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t261 = t241->col.
        t235 = t261.
        t224 = NEW zcl_lnt_position( i_row = t225 i_col = t235 ).
        t223 = t224.
        DATA t263 TYPE REF TO zcl_lnt_position.
        DATA t264 TYPE REF TO zcl_lnt_position.
        DATA t265 TYPE f.
        DATA t268 TYPE REF TO zcl_lnt_abstract_token.
        DATA t269 TYPE REF TO zcl_lnt_punctuation.
        t269 ?= t163.
        t268 = t269.
        DATA t271 TYPE REF TO zcl_lnt_position.
        t271 = t268->start.
        DATA t273 TYPE f.
        t273 = t271->row.
        t265 = t273.
        DATA t275 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t278 TYPE REF TO zcl_lnt_abstract_token.
        DATA t279 TYPE REF TO zcl_lnt_punctuation.
        t279 ?= t163.
        t278 = t279.
        DATA t281 TYPE REF TO zcl_lnt_position.
        t281 = t278->start.
        DATA t283 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t283 = t281->col.
        t275 = t283.
        t264 = NEW zcl_lnt_position( i_row = t265 i_col = t275 ).
        t263 = t264.
        DATA t286 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t286 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t223 i_end = t263 ).
        DATA t291 TYPE REF TO zcl_lnt_issue.
        CLEAR t291.
        DATA(t295) = |Remove space before "," or "."|.
        DATA(t296) = VALUE string( ).
        DATA t297 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t297.
        DATA t298 TYPE string.
        t298 = |space_before_dot|.
        DATA t300 TYPE string.
        t300 = |Space before dot|.
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
        DATA t315 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t315.
        t314 = t315.
        DATA(t317) = |Whitespace|.
        t314->load( ).
        APPEND t317 TO t314->items.
        t314->save( ).
        DATA(t319) = |Quickfix|.
        t314->load( ).
        APPEND t319 TO t314->items.
        t314->save( ).
        DATA(t321) = |Styleguide|.
        t314->load( ).
        APPEND t321 TO t314->items.
        t314->save( ).
        DATA(t323) = |SingleFile|.
        t314->load( ).
        APPEND t323 TO t314->items.
        t314->save( ).
        t310 = t314.
        DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t326.
        DATA(t329) = |WRITE bar .|.
        DATA(t330) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t330->has = abap_true.
        t330->value = t329.
        t326 = t330.
        DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t332.
        DATA(t335) = |WRITE bar.|.
        DATA(t336) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t336->has = abap_true.
        t336->value = t335.
        t332 = t336.
        DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t338.
        DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t340.
        t297 = NEW zcl_lnt_irule_metadata( i_key = t298 i_title = t300 i_short_description = t302 i_bad_example = t326 i_good_example = t332 i_extended_information = t304 i_tags = t310 i_pragma = t338 i_pseudo_comment = t340 ).
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
        DATA(t349) = |key|.
        DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t350.
        t297->zlnt_json_ownkeys_70e5fd461788->put( p0 = t349 p1 = t350 ).
        DATA(t351) = |title|.
        DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t352.
        IF t297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t297->zlnt_json_ownkeys_70e5fd461788->put( p0 = t351 p1 = t352 ).
        ENDIF.
        DATA(t353) = |shortDescription|.
        DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t354.
        IF t297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t297->zlnt_json_ownkeys_70e5fd461788->put( p0 = t353 p1 = t354 ).
        ENDIF.
        DATA(t355) = |extendedInformation|.
        DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t356.
        IF t297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t297->zlnt_json_ownkeys_70e5fd461788->put( p0 = t355 p1 = t356 ).
        ENDIF.
        DATA(t357) = |tags|.
        DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t358.
        IF t297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t297->zlnt_json_ownkeys_70e5fd461788->put( p0 = t357 p1 = t358 ).
        ENDIF.
        DATA(t359) = |badExample|.
        DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t360.
        IF t297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t297->zlnt_json_ownkeys_70e5fd461788->put( p0 = t359 p1 = t360 ).
        ENDIF.
        DATA(t361) = |goodExample|.
        DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t362.
        IF t297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t297->zlnt_json_ownkeys_70e5fd461788->put( p0 = t361 p1 = t362 ).
        ENDIF.
        t296 = t297->key.
        DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t363 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t365 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t365.
        t365 = t286.
        DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t369.
        t291 = zcl_lnt_issue=>at_range( i_file = t1 i_start = t223 i_end = t263 i_message_26cb = t295 i_key = t296 i_severity = t363 i_fix = t365 i_alternative_fixes = t369 ).
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
