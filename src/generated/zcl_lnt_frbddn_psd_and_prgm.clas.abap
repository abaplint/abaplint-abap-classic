* TS: src/rules/forbidden_pseudo_and_pragma.ts:20:1 ForbiddenPseudoAndPragma
CLASS zcl_lnt_frbddn_psd_and_prgm DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_frbdd_psd_and_prgm_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_f_p_a_p_t_f_ps_an_pr RETURNING VALUE(result) TYPE REF TO zcl_lnt_frbdd_psd_and_prgm_cnf.
    METHODS s_c_i_s_r_f_p_a_p_t_f_ps_an_pr IMPORTING i_conf TYPE REF TO zcl_lnt_frbdd_psd_and_prgm_cnf.
    METHODS r_p_i_s_r_f_p_a_p_t_f_ps_an_pr IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_frbddn_psd_and_prgm IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_frbdd_psd_and_prgm_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |Quickfix| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = |DATA i TYPE i. "#EC *|.
    t20 = t24.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = |DATA i TYPE i.|.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |forbidden_pseudo_and_pragma| i_title = |Forbidden pseudo comments and pragma| i_short_description = |Checks for unwanted pseudo comments and pragma| i_bad_example = t20 i_good_example = t30 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t38 ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t43 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t45 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t47 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t53 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t55 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_f_p_a_p_t_f_ps_an_pr.
    DATA(t1) = me->conf.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t4 = me->conf->zlnt_view_read_sr_21ada0793ffa( ).
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      DATA(t10) = me->conf.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t11.
      t10->zlnt_view_write_s_e895eea6be84( p0 = t11 ).
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t14 = me->conf->zlnt_view_read_sr_7e3130177b9e( ).
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t14 IS INITIAL ) = abap_true.
      DATA(t20) = me->conf.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t21.
      t20->zlnt_view_write_s_ebc42a547430( p0 = t21 ).
    ENDIF.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_f_p_a_p_t_f_ps_an_pr.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_f_p_a_p_t_f_ps_an_pr.
    DATA(t1) = i_file.
    DATA t2 TYPE abap_bool.
    t2 = abap_false.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t6 = me->conf->zlnt_view_read_sr_7e3130177b9e( ).
    DATA(t8) = VALUE string( ).
    t6->dense( ).
    DATA(t9) = VALUE i( ).
    DO.
      t6->load( ).
      IF t9 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t6->items INDEX t9 + 1 INTO t8.
      IF t6->has( t9 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t10 = t1->statements.
      DATA t15 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t15.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      DATA(t17) = VALUE i( ).
      DO.
        t10->load( ).
        IF t17 >= lines( t10->items ).
          EXIT.
        ENDIF.
        CLEAR t16.
        READ TABLE t10->items INDEX t17 + 1 INTO t16.
        t17 = t17 + 1.
        DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t18.
        CLEAR t15.
        IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t18 ?= t16.
          DATA t19 TYPE REF TO object.
          t19 = t18->as_ref( ).
          t15 ?= t19.
        ELSE.
          t15 ?= t16.
        ENDIF.
        DATA t21 TYPE abap_bool.
        t21 = me->conf->zlnt_view_read_sr_493aa9b7723d( ).
        IF xsdbool( t21 = abap_true ) = abap_true.
          DATA t24 TYPE abap_bool.
          DATA t25 TYPE abap_bool.
          DATA t26 TYPE REF TO zif_lnt_statement.
          t26 = t15->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t25 = xsdbool( t26 IS BOUND AND t26 IS INSTANCE OF zcl_lnt_st_class_definition ).
          t24 = t25.
          IF t25 = abap_true.
            DATA t29 TYPE REF TO zcl_lnt_expression_node.
            DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
            t29 = t15->find_first_expression( i_type_9913 = t31 ).
            t24 = xsdbool( t29 IS BOUND ).
          ENDIF.
          IF t24 = abap_true.
            t2 = abap_true.
            CONTINUE.
          ELSE.
            DATA t33 TYPE abap_bool.
            DATA t34 TYPE abap_bool.
            t34 = xsdbool( t2 = abap_true ).
            t33 = t34.
            IF t34 = abap_true.
              DATA t38 TYPE REF TO zif_lnt_statement.
              t38 = t15->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
              t33 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_end_class ).
            ENDIF.
            IF t33 = abap_true.
              t2 = abap_false.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t42 TYPE abap_bool.
        t42 = me->conf->zlnt_view_read_sr_2c496c208fd0( ).
        IF xsdbool( t42 = abap_true ) = abap_true.
          DATA t45 TYPE abap_bool.
          DATA t46 TYPE abap_bool.
          DATA t47 TYPE REF TO zif_lnt_statement.
          t47 = t15->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t46 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_st_interface ).
          t45 = t46.
          IF t46 = abap_true.
            DATA t50 TYPE REF TO zcl_lnt_expression_node.
            DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
            t50 = t15->find_first_expression( i_type_9913 = t52 ).
            t45 = xsdbool( t50 IS BOUND ).
          ENDIF.
          IF t45 = abap_true.
            t2 = abap_true.
            CONTINUE.
          ELSE.
            DATA t54 TYPE abap_bool.
            DATA t55 TYPE abap_bool.
            t55 = xsdbool( t2 = abap_true ).
            t54 = t55.
            IF t55 = abap_true.
              DATA t59 TYPE REF TO zif_lnt_statement.
              t59 = t15->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
              t54 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_end_interface ).
            ENDIF.
            IF t54 = abap_true.
              t2 = abap_false.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
        IF xsdbool( t2 = abap_true ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t69 = t15->pragmas.
        DATA t71 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t71.
        DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t73 = t69.
        DATA t75 TYPE i.
        t73->load( ).
        t75 = lines( t73->items ).
        DATA t78 TYPE i.
        t78 = 0.
        DATA t80 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t80.
        DO.
          IF xsdbool( t78 < t75 ) = abap_false.
            EXIT.
          ENDIF.
          DATA t85 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t85.
          DATA t87 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t87.
          DATA t90 TYPE REF TO object.
          t90 = t73->get( p0 = t78 ).
          DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t91.
          CLEAR t87.
          IF t90 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t91 ?= t90.
            DATA t92 TYPE REF TO object.
            t92 = t91->as_ref( ).
            t87 ?= t92.
          ELSE.
            t87 ?= t90.
          ENDIF.
          t85 = t87.
          DATA t94 TYPE string.
          DATA t95 TYPE string.
          t95 = t85->str.
          DATA(t100) = strlen( t95 ).
          t94 = t95.
          IF t94 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t94 TO UPPER CASE.
          ELSE.
            t94 = zlnt_runtime_uppe_91169605024d=>full( t94 ).
          ENDIF.
          DATA t101 TYPE string.
          DATA(t103) = strlen( t8 ).
          t101 = t8.
          IF t101 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t101 TO UPPER CASE.
          ELSE.
            t101 = zlnt_runtime_uppe_91169605024d=>full( t101 ).
          ENDIF.
          IF xsdbool( t94 = t101 ) = abap_true.
            t80 = t85.
            EXIT.
          ENDIF.
          DATA(t110) = 1.
          t78 = t78 + t110.
        ENDDO.
        t71 = t80.
        IF xsdbool( t71 IS BOUND ) = abap_true.
          DATA t115 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t115 = zcl_lnt_edit_helper=>delete_token( i_file = t1 i_token = t71 ).
          DATA t122 TYPE REF TO zcl_lnt_issue.
          CLEAR t122.
          DATA t124 TYPE REF TO zcl_lnt_abstract_token.
          t124 = t71.
          DATA(t127) = VALUE string( ).
          DATA t128 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t135.
          DATA t139 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t139.
          t139->load( ).
          APPEND |Quickfix| TO t139->items.
          t139->save( ).
          t139->load( ).
          APPEND |SingleFile| TO t139->items.
          t139->save( ).
          t135 = t139.
          DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t147.
          DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t151->has = abap_true.
          t151->value = |DATA i TYPE i. "#EC *|.
          t147 = t151.
          DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t153.
          DATA(t157) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t157->has = abap_true.
          t157->value = |DATA i TYPE i.|.
          t153 = t157.
          DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t159.
          DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t161.
          DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t163.
          t128 = NEW zcl_lnt_irule_metadata( i_key = |forbidden_pseudo_and_pragma| i_title = |Forbidden pseudo comments and pragma| i_short_description = |Checks for unwanted pseudo comments and pragma| i_bad_example = t147 i_good_example = t153 i_extended_information = t159 i_tags = t135 i_pragma = t161 i_pseudo_comment = t163 ).
          CREATE OBJECT t128->zlnt_view_ownkeys_b0e8086400eb.
          t128->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t165.
          t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t165 ).
          DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t166.
          IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t166 ).
          ENDIF.
          DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t167.
          IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t167 ).
          ENDIF.
          DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t168.
          IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t168 ).
          ENDIF.
          DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t169.
          IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t169 ).
          ENDIF.
          DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t170.
          IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t170 ).
          ENDIF.
          CREATE OBJECT t128->zlnt_json_ownkeys_70e5fd461788.
          t128->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t172.
          t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t172 ).
          DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t174.
          IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t174 ).
          ENDIF.
          DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t176.
          IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t176 ).
          ENDIF.
          DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t178.
          IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t178 ).
          ENDIF.
          DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t180.
          IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t180 ).
          ENDIF.
          DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t182.
          IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t182 ).
          ENDIF.
          t127 = t128->key.
          t122 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t124 i_message_26cb = |Forbidden pragma| i_key = t127 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t115 ).
          t4->load( ).
          APPEND t122 TO t4->items.
          t4->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    t2 = abap_false.
    DATA t190 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t190 = me->conf->zlnt_view_read_sr_21ada0793ffa( ).
    DATA(t192) = VALUE string( ).
    t190->dense( ).
    DATA(t193) = VALUE i( ).
    DO.
      t190->load( ).
      IF t193 >= lines( t190->items ).
        EXIT.
      ENDIF.
      CLEAR t192.
      READ TABLE t190->items INDEX t193 + 1 INTO t192.
      IF t190->has( t193 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t193 = t193 + 1.
      DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t194 = t1->statements.
      DATA t199 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t199.
      DATA t200 TYPE REF TO object.
      CLEAR t200.
      DATA(t201) = VALUE i( ).
      DO.
        t194->load( ).
        IF t201 >= lines( t194->items ).
          EXIT.
        ENDIF.
        CLEAR t200.
        READ TABLE t194->items INDEX t201 + 1 INTO t200.
        t201 = t201 + 1.
        DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t202.
        CLEAR t199.
        IF t200 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t202 ?= t200.
          DATA t203 TYPE REF TO object.
          t203 = t202->as_ref( ).
          t199 ?= t203.
        ELSE.
          t199 ?= t200.
        ENDIF.
        DATA t205 TYPE abap_bool.
        t205 = me->conf->zlnt_view_read_sr_493aa9b7723d( ).
        IF xsdbool( t205 = abap_true ) = abap_true.
          DATA t208 TYPE abap_bool.
          DATA t209 TYPE abap_bool.
          DATA t210 TYPE REF TO zif_lnt_statement.
          t210 = t199->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t209 = xsdbool( t210 IS BOUND AND t210 IS INSTANCE OF zcl_lnt_st_class_definition ).
          t208 = t209.
          IF t209 = abap_true.
            DATA t213 TYPE REF TO zcl_lnt_expression_node.
            DATA(t215) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
            t213 = t199->find_first_expression( i_type_9913 = t215 ).
            t208 = xsdbool( t213 IS BOUND ).
          ENDIF.
          IF t208 = abap_true.
            t2 = abap_true.
            CONTINUE.
          ELSE.
            DATA t217 TYPE abap_bool.
            DATA t218 TYPE abap_bool.
            t218 = xsdbool( t2 = abap_true ).
            t217 = t218.
            IF t218 = abap_true.
              DATA t222 TYPE REF TO zif_lnt_statement.
              t222 = t199->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
              t217 = xsdbool( t222 IS BOUND AND t222 IS INSTANCE OF zcl_lnt_end_class ).
            ENDIF.
            IF t217 = abap_true.
              t2 = abap_false.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t226 TYPE abap_bool.
        t226 = me->conf->zlnt_view_read_sr_2c496c208fd0( ).
        IF xsdbool( t226 = abap_true ) = abap_true.
          DATA t229 TYPE abap_bool.
          DATA t230 TYPE abap_bool.
          DATA t231 TYPE REF TO zif_lnt_statement.
          t231 = t199->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t230 = xsdbool( t231 IS BOUND AND t231 IS INSTANCE OF zcl_lnt_st_interface ).
          t229 = t230.
          IF t230 = abap_true.
            DATA t234 TYPE REF TO zcl_lnt_expression_node.
            DATA(t236) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
            t234 = t199->find_first_expression( i_type_9913 = t236 ).
            t229 = xsdbool( t234 IS BOUND ).
          ENDIF.
          IF t229 = abap_true.
            t2 = abap_true.
            CONTINUE.
          ELSE.
            DATA t238 TYPE abap_bool.
            DATA t239 TYPE abap_bool.
            t239 = xsdbool( t2 = abap_true ).
            t238 = t239.
            IF t239 = abap_true.
              DATA t243 TYPE REF TO zif_lnt_statement.
              t243 = t199->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
              t238 = xsdbool( t243 IS BOUND AND t243 IS INSTANCE OF zcl_lnt_end_interface ).
            ENDIF.
            IF t238 = abap_true.
              t2 = abap_false.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
        IF xsdbool( t2 = abap_true ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t251 TYPE REF TO zif_lnt_statement.
        t251 = t199->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        IF xsdbool( xsdbool( t251 IS BOUND AND t251 IS INSTANCE OF zcl_lnt_st_comment ) = abap_false ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t254) = VALUE i( ).
        DATA t255 TYPE string.
        DATA t256 TYPE string.
        t256 = t199->concat_tokens( ).
        DATA(t258) = strlen( t256 ).
        t255 = t256.
        IF t255 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t255 TO UPPER CASE.
        ELSE.
          t255 = zlnt_runtime_uppe_91169605024d=>full( t255 ).
        ENDIF.
        DATA t259 TYPE string.
        DATA(t261) = strlen( t192 ).
        t259 = t192.
        IF t259 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t259 TO UPPER CASE.
        ELSE.
          t259 = zlnt_runtime_uppe_91169605024d=>full( t259 ).
        ENDIF.
        DATA(t262) = strlen( t255 ).
        IF t259 IS INITIAL.
          t254 = 0.
        ELSE.
          FIND t259 IN t255 MATCH OFFSET t254.
          IF sy-subrc <> 0.
            t254 = -1.
          ENDIF.
        ENDIF.
        IF xsdbool( t254 >= 0 ) = abap_true.
          DATA t265 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t265 = zcl_lnt_edit_helper=>delete_statement( i_file = t1 i_statement = t199 ).
          DATA t271 TYPE REF TO zcl_lnt_issue.
          CLEAR t271.
          DATA(t275) = VALUE string( ).
          DATA t276 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t283 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t283.
          DATA t287 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t287.
          t287->load( ).
          APPEND |Quickfix| TO t287->items.
          t287->save( ).
          t287->load( ).
          APPEND |SingleFile| TO t287->items.
          t287->save( ).
          t283 = t287.
          DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t295.
          DATA(t299) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t299->has = abap_true.
          t299->value = |DATA i TYPE i. "#EC *|.
          t295 = t299.
          DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t301.
          DATA(t305) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t305->has = abap_true.
          t305->value = |DATA i TYPE i.|.
          t301 = t305.
          DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t307.
          DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t309.
          DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t311.
          t276 = NEW zcl_lnt_irule_metadata( i_key = |forbidden_pseudo_and_pragma| i_title = |Forbidden pseudo comments and pragma| i_short_description = |Checks for unwanted pseudo comments and pragma| i_bad_example = t295 i_good_example = t301 i_extended_information = t307 i_tags = t283 i_pragma = t309 i_pseudo_comment = t311 ).
          CREATE OBJECT t276->zlnt_view_ownkeys_b0e8086400eb.
          t276->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t313.
          t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t313 ).
          DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t314.
          IF t276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t314 ).
          ENDIF.
          DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t315.
          IF t276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t315 ).
          ENDIF.
          DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t316.
          IF t276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t316 ).
          ENDIF.
          DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t317.
          IF t276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t317 ).
          ENDIF.
          DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t318.
          IF t276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t318 ).
          ENDIF.
          CREATE OBJECT t276->zlnt_json_ownkeys_70e5fd461788.
          t276->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t320.
          t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t320 ).
          DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t322.
          IF t276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t322 ).
          ENDIF.
          DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t324.
          IF t276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t324 ).
          ENDIF.
          DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t326.
          IF t276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t326 ).
          ENDIF.
          DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t328.
          IF t276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t328 ).
          ENDIF.
          DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t330.
          IF t276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t330 ).
          ENDIF.
          t275 = t276->key.
          DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t331 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t333 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t333.
          t333 = t265.
          DATA t337 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t337.
          t271 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t199 i_message_26cb = |Forbidden pseudo comment| i_key = t275 i_severity = t331 i_fix = t333 i_alternative_fixes = t337 ).
          t4->load( ).
          APPEND t271 TO t4->items.
          t4->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    result = t4.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_frbdd_psd_and_prgm_cnf( me->g_c_i_s_r_f_p_a_p_t_f_ps_an_pr( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_frbdd_psd_and_prgm_cnf( me->g_c_i_s_r_f_p_a_p_t_f_ps_an_pr( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_frbdd_psd_and_prgm_cnf.
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
        t1 = NEW zcl_lnt_frbdd_psd_and_prgm_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_f_p_a_p_t_f_ps_an_pr( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_f_p_a_p_t_f_ps_an_pr( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1508_76571cae9efb.
  ENDMETHOD.
ENDCLASS.
