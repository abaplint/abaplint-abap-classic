* TS: src/rules/dangerous_statement.ts:34:1 DangerousStatement
CLASS zcl_lnt_dangerous_statement DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_dngrs_sttmnt_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_statement TYPE string RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_dn_st_ts_dn_stt RETURNING VALUE(result) TYPE REF TO zcl_lnt_dngrs_sttmnt_cnf.
    METHODS st_cn_in_sr_rl_dn_st_ts_dn_stt IMPORTING i_conf TYPE REF TO zcl_lnt_dngrs_sttmnt_cnf.
    METHODS rn_pr_in_sr_rl_dn_st_ts_dn_stt IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_dynamic_sql IMPORTING i_statement_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_dangerous_statement IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_dngrs_sttmnt_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |dangerous_statement|.
    DATA t4 TYPE string.
    t4 = |Dangerous statement|.
    DATA t6 TYPE string.
    t6 = |Detects potentially dangerous statements|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Dynamic SQL: Typically ABAP logic does not need dynamic SQL,|.
    t11 = t11 && |\ndynamic SQL can potentially create SQL injection problems|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |SingleFile|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    DATA(t23) = |Security|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t29) = |SELECT * FROM (lv_table_name) INTO TABLE @DATA(lt_rows).|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t35) = |SELECT * FROM zknown_table INTO TABLE @DATA(lt_rows).|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    t32 = t36.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t32 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t49) = |key|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    DATA(t51) = |title|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |shortDescription|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |extendedInformation|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |tags|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |badExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |goodExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA t2 TYPE string.
    DATA(t3) = |Potential dangerous statement |.
    DATA(t5) = strlen( t3 ).
    t2 = |{ t3 }{ i_statement }|.
    result = t2.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_dn_st_ts_dn_stt.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_dn_st_ts_dn_stt.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_dn_st_ts_dn_stt.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    t4 = abap_false.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t9 = t1->statements.
    t6 = t9.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    DATA t12 TYPE REF TO object.
    DATA(t13) = VALUE i( ).
    DO.
      t6->load( ).
      IF t13 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t6->items INDEX t13 + 1 INTO t12.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t11.
      IF t12 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t12.
        DATA t15 TYPE REF TO object.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      DATA t16 TYPE REF TO zif_lnt_statement.
      DATA t17 TYPE REF TO zif_lnt_statement.
      t17 = t11->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t16 = t17.
      DATA t19 TYPE abap_bool.
      t19 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ).
      IF t19 = abap_true.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t21.
        DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t23.
        DATA t25 TYPE REF TO zcl_lnt_expression_node.
        DATA t26 TYPE REF TO zcl_lnt_expression_node.
        DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
        t26 = t11->find_first_expression( i_type_9913 = t28 ).
        t25 = t26.
        DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t29.
        DATA(t30) = xsdbool( t25 IS INITIAL ).
        IF t30 = abap_true.
          CLEAR t29.
        ELSE.
          DATA t33 TYPE string.
          DATA t34 TYPE REF TO zcl_lnt_expression_node.
          t34 = t25.
          t33 = t34->concat_tokens( ).
          DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t36->has = abap_true.
          t36->value = t33.
          t29 = t36.
        ENDIF.
        t23 = t29.
        DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t37.
        DATA(t38) = VALUE abap_bool( ).
        IF t23 IS INITIAL.
          t38 = abap_true.
        ELSEIF t23->has = abap_false.
          t38 = abap_true.
        ENDIF.
        IF t38 = abap_true.
          CLEAR t37.
        ELSE.
          DATA t41 TYPE string.
          DATA t42 TYPE string.
          t42 = t23->value.
          DATA(t44) = strlen( t42 ).
          t41 = t42.
          IF t41 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t41 TO UPPER CASE.
          ELSE.
            t41 = zlnt_runtime_uppe_91169605024d=>full( t41 ).
          ENDIF.
          DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t45->has = abap_true.
          t45->value = t41.
          t37 = t45.
        ENDIF.
        t21 = t37.
        DATA t46 TYPE abap_bool.
        DATA t47 TYPE abap_bool.
        DATA t48 TYPE abap_bool.
        t48 = me->conf->zlnt_view_read_sr_b2d423c99bdd( ).
        t47 = xsdbool( t48 = abap_true ).
        t46 = t47.
        IF t47 = abap_true.
          DATA(t51) = VALUE abap_bool( ).
          DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t53.
          DATA(t55) = |IF_RAP_QUERY_PROVIDER~SELECT|.
          DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t56->has = abap_true.
          t56->value = t55.
          t53 = t56.
          DATA(t58) = VALUE abap_bool( ).
          DATA(t59) = VALUE abap_bool( ).
          IF t21 IS BOUND.
            t58 = t21->has.
          ENDIF.
          IF t53 IS BOUND.
            t59 = t53->has.
          ENDIF.
          IF t58 = t59.
            IF t58 = abap_false.
              t51 = abap_true.
            ELSEIF t21->value = t53->value.
              t51 = abap_true.
            ENDIF.
          ENDIF.
          t46 = t51.
        ENDIF.
        t4 = t46.
      ELSE.
        DATA t60 TYPE abap_bool.
        t60 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_end_method ).
        IF t60 = abap_true.
          t4 = abap_false.
        ENDIF.
      ENDIF.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t63.
      DATA(t65) = VALUE abap_bool( ).
      DATA(t66) = VALUE abap_bool( ).
      DATA t67 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t67 = me->conf->zlnt_view_read_sr_e9bcbe1faf47( ).
      IF t67 IS BOUND.
        IF t67->has = abap_true.
          t66 = xsdbool( t67->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t65 = t66.
      IF t66 = abap_true.
        DATA t69 TYPE abap_bool.
        t69 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_exec_sql ).
        t65 = t69.
      ENDIF.
      IF t65 = abap_true.
        DATA(t73) = |EXEC SQL|.
        DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t74->has = abap_true.
        t74->value = t73.
        t63 = t74.
      ELSE.
        DATA(t76) = VALUE abap_bool( ).
        DATA(t77) = VALUE abap_bool( ).
        DATA t78 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t78 = me->conf->zlnt_view_read_sr_1871f229e082( ).
        IF t78 IS BOUND.
          IF t78->has = abap_true.
            t77 = xsdbool( t78->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t76 = t77.
        IF t77 = abap_true.
          DATA t80 TYPE abap_bool.
          t80 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_call_kernel ).
          t76 = t80.
        ENDIF.
        IF t76 = abap_true.
          DATA(t84) = |KERNEL CALL|.
          DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t85->has = abap_true.
          t85->value = t84.
          t63 = t85.
        ELSE.
          DATA(t87) = VALUE abap_bool( ).
          DATA(t88) = VALUE abap_bool( ).
          DATA t89 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t89 = me->conf->zlnt_view_read_sr_7ca471dec8c6( ).
          IF t89 IS BOUND.
            IF t89->has = abap_true.
              t88 = xsdbool( t89->value IS NOT INITIAL ).
            ENDIF.
          ENDIF.
          t87 = t88.
          IF t88 = abap_true.
            DATA t91 TYPE abap_bool.
            t91 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_system_call ).
            t87 = t91.
          ENDIF.
          IF t87 = abap_true.
            DATA(t95) = |SYSTEM-CALL|.
            DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t96->has = abap_true.
            t96->value = t95.
            t63 = t96.
          ELSE.
            DATA(t98) = VALUE abap_bool( ).
            DATA(t99) = VALUE abap_bool( ).
            DATA t100 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            t100 = me->conf->zlnt_view_read_sr_014bdfa86c52( ).
            IF t100 IS BOUND.
              IF t100->has = abap_true.
                t99 = xsdbool( t100->value IS NOT INITIAL ).
              ENDIF.
            ENDIF.
            t98 = t99.
            IF t99 = abap_true.
              DATA t102 TYPE abap_bool.
              t102 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_insert_report ).
              t98 = t102.
            ENDIF.
            IF t98 = abap_true.
              DATA(t106) = |INSERT REPORT|.
              DATA(t107) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t107->has = abap_true.
              t107->value = t106.
              t63 = t107.
            ELSE.
              DATA(t109) = VALUE abap_bool( ).
              DATA(t110) = VALUE abap_bool( ).
              DATA t111 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              t111 = me->conf->zlnt_view_read_sr_16a0eb86254c( ).
              IF t111 IS BOUND.
                IF t111->has = abap_true.
                  t110 = xsdbool( t111->value IS NOT INITIAL ).
                ENDIF.
              ENDIF.
              t109 = t110.
              IF t110 = abap_true.
                DATA t113 TYPE abap_bool.
                t113 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_generate_dynpro ).
                t109 = t113.
              ENDIF.
              IF t109 = abap_true.
                DATA(t117) = |GENERATE DYNPRO|.
                DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t118->has = abap_true.
                t118->value = t117.
                t63 = t118.
              ELSE.
                DATA(t120) = VALUE abap_bool( ).
                DATA(t121) = VALUE abap_bool( ).
                DATA t122 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                t122 = me->conf->zlnt_view_read_sr_085be375b29e( ).
                IF t122 IS BOUND.
                  IF t122->has = abap_true.
                    t121 = xsdbool( t122->value IS NOT INITIAL ).
                  ENDIF.
                ENDIF.
                t120 = t121.
                IF t121 = abap_true.
                  DATA t124 TYPE abap_bool.
                  t124 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_generate_report ).
                  t120 = t124.
                ENDIF.
                IF t120 = abap_true.
                  DATA(t128) = |GENERATE REPORT|.
                  DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t129->has = abap_true.
                  t129->value = t128.
                  t63 = t129.
                ELSE.
                  DATA(t131) = VALUE abap_bool( ).
                  DATA(t132) = VALUE abap_bool( ).
                  DATA t133 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  t133 = me->conf->zlnt_view_read_sr_6b039f478731( ).
                  IF t133 IS BOUND.
                    IF t133->has = abap_true.
                      t132 = xsdbool( t133->value IS NOT INITIAL ).
                    ENDIF.
                  ENDIF.
                  t131 = t132.
                  IF t132 = abap_true.
                    DATA t135 TYPE abap_bool.
                    t135 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_generate_subroutine ).
                    t131 = t135.
                  ENDIF.
                  IF t131 = abap_true.
                    DATA(t139) = |GENERATE SUBROUTINE|.
                    DATA(t140) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t140->has = abap_true.
                    t140->value = t139.
                    t63 = t140.
                  ELSE.
                    DATA(t142) = VALUE abap_bool( ).
                    DATA(t143) = VALUE abap_bool( ).
                    DATA t144 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    t144 = me->conf->zlnt_view_read_sr_5e84d7a71798( ).
                    IF t144 IS BOUND.
                      IF t144->has = abap_true.
                        t143 = xsdbool( t144->value IS NOT INITIAL ).
                      ENDIF.
                    ENDIF.
                    t142 = t143.
                    IF t143 = abap_true.
                      DATA t146 TYPE abap_bool.
                      t146 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_delete_report ).
                      t142 = t146.
                    ENDIF.
                    IF t142 = abap_true.
                      DATA(t150) = |DELETE REPORT|.
                      DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t151->has = abap_true.
                      t151->value = t150.
                      t63 = t151.
                    ELSE.
                      DATA(t153) = VALUE abap_bool( ).
                      DATA(t154) = VALUE abap_bool( ).
                      DATA t155 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      t155 = me->conf->zlnt_view_read_sr_35e6f285754a( ).
                      IF t155 IS BOUND.
                        IF t155->has = abap_true.
                          t154 = xsdbool( t155->value IS NOT INITIAL ).
                        ENDIF.
                      ENDIF.
                      t153 = t154.
                      IF t154 = abap_true.
                        DATA t157 TYPE abap_bool.
                        t157 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_delete_textpool ).
                        t153 = t157.
                      ENDIF.
                      IF t153 = abap_true.
                        DATA(t161) = |DELETE TEXTPOOL|.
                        DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t162->has = abap_true.
                        t162->value = t161.
                        t63 = t162.
                      ELSE.
                        DATA(t164) = VALUE abap_bool( ).
                        DATA(t165) = VALUE abap_bool( ).
                        DATA t166 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        t166 = me->conf->zlnt_view_read_sr_407fb524ae8d( ).
                        IF t166 IS BOUND.
                          IF t166->has = abap_true.
                            t165 = xsdbool( t166->value IS NOT INITIAL ).
                          ENDIF.
                        ENDIF.
                        t164 = t165.
                        IF t165 = abap_true.
                          DATA t168 TYPE abap_bool.
                          t168 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_insert_textpool ).
                          t164 = t168.
                        ENDIF.
                        IF t164 = abap_true.
                          DATA(t172) = |INSERT TEXTPOOL|.
                          DATA(t173) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t173->has = abap_true.
                          t173->value = t172.
                          t63 = t173.
                        ELSE.
                          DATA(t175) = VALUE abap_bool( ).
                          DATA(t176) = VALUE abap_bool( ).
                          DATA t177 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                          t177 = me->conf->zlnt_view_read_sr_d3488ea5ba06( ).
                          IF t177 IS BOUND.
                            IF t177->has = abap_true.
                              t176 = xsdbool( t177->value IS NOT INITIAL ).
                            ENDIF.
                          ENDIF.
                          t175 = t176.
                          IF t176 = abap_true.
                            DATA t179 TYPE abap_bool.
                            t179 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_delete_dynpro ).
                            t175 = t179.
                          ENDIF.
                          IF t175 = abap_true.
                            DATA(t183) = |DELETE DYNPRO|.
                            DATA(t184) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t184->has = abap_true.
                            t184->value = t183.
                            t63 = t184.
                          ELSE.
                            DATA(t186) = VALUE abap_bool( ).
                            DATA(t187) = VALUE abap_bool( ).
                            DATA t188 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            t188 = me->conf->zlnt_view_read_sr_14a64a56fa20( ).
                            IF t188 IS BOUND.
                              IF t188->has = abap_true.
                                t187 = xsdbool( t188->value IS NOT INITIAL ).
                              ENDIF.
                            ENDIF.
                            t186 = t187.
                            IF t187 = abap_true.
                              DATA t190 TYPE abap_bool.
                              t190 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_export_dynpro ).
                              t186 = t190.
                            ENDIF.
                            IF t186 = abap_true.
                              DATA(t194) = |EXPORT DYNPRO|.
                              DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t195->has = abap_true.
                              t195->value = t194.
                              t63 = t195.
                            ELSE.
                              DATA(t197) = VALUE abap_bool( ).
                              DATA(t198) = VALUE abap_bool( ).
                              DATA(t199) = VALUE abap_bool( ).
                              DATA t200 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                              t200 = me->conf->zlnt_view_read_sr_fdda7544b790( ).
                              IF t200 IS BOUND.
                                IF t200->has = abap_true.
                                  t199 = xsdbool( t200->value IS NOT INITIAL ).
                                ENDIF.
                              ENDIF.
                              t198 = t199.
                              IF t199 = abap_true.
                                DATA t202 TYPE abap_bool.
                                t202 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_editor_call ).
                                t198 = t202.
                              ENDIF.
                              t197 = t198.
                              IF t198 = abap_true.
                                DATA t204 TYPE abap_bool.
                                DATA t205 TYPE REF TO zcl_lnt_abstract_token.
                                DATA(t207) = |REPORT|.
                                t205 = t11->find_direct_token_by_text( i_text = t207 ).
                                t204 = xsdbool( t205 IS BOUND ).
                                t197 = t204.
                              ENDIF.
                              IF t197 = abap_true.
                                DATA(t210) = |EDITOR-CALL FOR REPORT|.
                                DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                t211->has = abap_true.
                                t211->value = t210.
                                t63 = t211.
                              ENDIF.
                            ENDIF.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t213) = VALUE abap_bool( ).
      DATA(t214) = t63.
      IF t214 IS BOUND.
        IF t214->has = abap_true.
          t213 = xsdbool( strlen( t214->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t213 = abap_true.
        DATA t216 TYPE REF TO zcl_lnt_issue.
        CLEAR t216.
        DATA t219 TYPE string.
        DATA t221 TYPE string.
        t221 = t63->value.
        DATA t223 TYPE string.
        DATA(t224) = |Potential dangerous statement |.
        DATA(t226) = strlen( t224 ).
        t223 = |{ t224 }{ t221 }|.
        t219 = t223.
        DATA(t227) = VALUE string( ).
        DATA t228 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t228.
        DATA t229 TYPE string.
        t229 = |dangerous_statement|.
        DATA t231 TYPE string.
        t231 = |Dangerous statement|.
        DATA t233 TYPE string.
        t233 = |Detects potentially dangerous statements|.
        DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t235.
        DATA(t238) = |Dynamic SQL: Typically ABAP logic does not need dynamic SQL,|.
        t238 = t238 && |\ndynamic SQL can potentially create SQL injection problems|.
        DATA(t239) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t239->has = abap_true.
        t239->value = t238.
        t235 = t239.
        DATA t241 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t241.
        DATA t245 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t246 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t246.
        t245 = t246.
        DATA(t248) = |SingleFile|.
        t245->load( ).
        APPEND t248 TO t245->items.
        t245->save( ).
        DATA(t250) = |Security|.
        t245->load( ).
        APPEND t250 TO t245->items.
        t245->save( ).
        t241 = t245.
        DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t253.
        DATA(t256) = |SELECT * FROM (lv_table_name) INTO TABLE @DATA(lt_rows).|.
        DATA(t257) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t257->has = abap_true.
        t257->value = t256.
        t253 = t257.
        DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t259.
        DATA(t262) = |SELECT * FROM zknown_table INTO TABLE @DATA(lt_rows).|.
        DATA(t263) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t263->has = abap_true.
        t263->value = t262.
        t259 = t263.
        DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t265.
        DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t267.
        t228 = NEW zcl_lnt_irule_metadata( i_key = t229 i_title = t231 i_short_description = t233 i_bad_example = t253 i_good_example = t259 i_extended_information = t235 i_tags = t241 i_pragma = t265 i_pseudo_comment = t267 ).
        CREATE OBJECT t228->zlnt_view_ownkeys_b0e8086400eb.
        t228->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t269.
        t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t269 ).
        DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t270.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t270 ).
        ENDIF.
        DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t271.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t271 ).
        ENDIF.
        DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t272.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t272 ).
        ENDIF.
        DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t273.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t273 ).
        ENDIF.
        DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t274.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t274 ).
        ENDIF.
        DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t275.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t275 ).
        ENDIF.
        CREATE OBJECT t228->zlnt_json_ownkeys_70e5fd461788.
        t228->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t276) = |key|.
        DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t277.
        t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t276 p1 = t277 ).
        DATA(t278) = |title|.
        DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t279.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t278 p1 = t279 ).
        ENDIF.
        DATA(t280) = |shortDescription|.
        DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t281.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t280 p1 = t281 ).
        ENDIF.
        DATA(t282) = |extendedInformation|.
        DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t283.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t282 p1 = t283 ).
        ENDIF.
        DATA(t284) = |tags|.
        DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t285.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t284 p1 = t285 ).
        ENDIF.
        DATA(t286) = |badExample|.
        DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t287.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t286 p1 = t287 ).
        ENDIF.
        DATA(t288) = |goodExample|.
        DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t289.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t288 p1 = t289 ).
        ENDIF.
        t227 = t228->key.
        DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t290 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t292 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t292.
        DATA t293 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t293.
        t216 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t11 i_message_26cb = t219 i_key = t227 i_severity = t290 i_fix = t292 i_alternative_fixes = t293 ).
        t2->load( ).
        APPEND t216 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA(t294) = VALUE abap_bool( ).
      DATA(t295) = VALUE abap_bool( ).
      DATA t296 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t296 = me->conf->zlnt_view_read_sr_41bb737a1000( ).
      IF t296 IS BOUND.
        IF t296->has = abap_true.
          t295 = xsdbool( t296->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t294 = t295.
      IF t295 = abap_true.
        DATA t298 TYPE abap_bool.
        t298 = xsdbool( t4 = abap_false ).
        t294 = t298.
      ENDIF.
      IF t294 = abap_true.
        DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t301 = me->find_dynamic_sql( i_statement_node = t11 ).
        t63 = t301.
        DATA(t303) = VALUE abap_bool( ).
        IF t63 IS BOUND.
          IF t63->has = abap_true.
            t303 = xsdbool( strlen( t63->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t303 = abap_true.
          DATA t306 TYPE REF TO zcl_lnt_issue.
          CLEAR t306.
          DATA t309 TYPE string.
          DATA t311 TYPE string.
          t311 = t63->value.
          DATA t313 TYPE string.
          DATA(t314) = |Potential dangerous statement |.
          DATA(t316) = strlen( t314 ).
          t313 = |{ t314 }{ t311 }|.
          t309 = t313.
          DATA(t317) = VALUE string( ).
          DATA t318 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t318.
          DATA t319 TYPE string.
          t319 = |dangerous_statement|.
          DATA t321 TYPE string.
          t321 = |Dangerous statement|.
          DATA t323 TYPE string.
          t323 = |Detects potentially dangerous statements|.
          DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t325.
          DATA(t328) = |Dynamic SQL: Typically ABAP logic does not need dynamic SQL,|.
          t328 = t328 && |\ndynamic SQL can potentially create SQL injection problems|.
          DATA(t329) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t329->has = abap_true.
          t329->value = t328.
          t325 = t329.
          DATA t331 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t331.
          DATA t335 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t336 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t336.
          t335 = t336.
          DATA(t338) = |SingleFile|.
          t335->load( ).
          APPEND t338 TO t335->items.
          t335->save( ).
          DATA(t340) = |Security|.
          t335->load( ).
          APPEND t340 TO t335->items.
          t335->save( ).
          t331 = t335.
          DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t343.
          DATA(t346) = |SELECT * FROM (lv_table_name) INTO TABLE @DATA(lt_rows).|.
          DATA(t347) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t347->has = abap_true.
          t347->value = t346.
          t343 = t347.
          DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t349.
          DATA(t352) = |SELECT * FROM zknown_table INTO TABLE @DATA(lt_rows).|.
          DATA(t353) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t353->has = abap_true.
          t353->value = t352.
          t349 = t353.
          DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t355.
          DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t357.
          t318 = NEW zcl_lnt_irule_metadata( i_key = t319 i_title = t321 i_short_description = t323 i_bad_example = t343 i_good_example = t349 i_extended_information = t325 i_tags = t331 i_pragma = t355 i_pseudo_comment = t357 ).
          CREATE OBJECT t318->zlnt_view_ownkeys_b0e8086400eb.
          t318->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t359.
          t318->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t359 ).
          DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t360.
          IF t318->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t318->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t360 ).
          ENDIF.
          DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t361.
          IF t318->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t318->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t361 ).
          ENDIF.
          DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t362.
          IF t318->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t318->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t362 ).
          ENDIF.
          DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t363.
          IF t318->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t318->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t363 ).
          ENDIF.
          DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t364.
          IF t318->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t318->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t364 ).
          ENDIF.
          DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t365.
          IF t318->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t318->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t365 ).
          ENDIF.
          CREATE OBJECT t318->zlnt_json_ownkeys_70e5fd461788.
          t318->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t366) = |key|.
          DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t367.
          t318->zlnt_json_ownkeys_70e5fd461788->put( p0 = t366 p1 = t367 ).
          DATA(t368) = |title|.
          DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t369.
          IF t318->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t318->zlnt_json_ownkeys_70e5fd461788->put( p0 = t368 p1 = t369 ).
          ENDIF.
          DATA(t370) = |shortDescription|.
          DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t371.
          IF t318->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t318->zlnt_json_ownkeys_70e5fd461788->put( p0 = t370 p1 = t371 ).
          ENDIF.
          DATA(t372) = |extendedInformation|.
          DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t373.
          IF t318->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t318->zlnt_json_ownkeys_70e5fd461788->put( p0 = t372 p1 = t373 ).
          ENDIF.
          DATA(t374) = |tags|.
          DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t375.
          IF t318->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t318->zlnt_json_ownkeys_70e5fd461788->put( p0 = t374 p1 = t375 ).
          ENDIF.
          DATA(t376) = |badExample|.
          DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t377.
          IF t318->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t318->zlnt_json_ownkeys_70e5fd461788->put( p0 = t376 p1 = t377 ).
          ENDIF.
          DATA(t378) = |goodExample|.
          DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t379.
          IF t318->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t318->zlnt_json_ownkeys_70e5fd461788->put( p0 = t378 p1 = t379 ).
          ENDIF.
          t317 = t318->key.
          DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t380 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t382 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t382.
          DATA t383 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t383.
          t306 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t11 i_message_26cb = t309 i_key = t317 i_severity = t380 i_fix = t382 i_alternative_fixes = t383 ).
          t2->load( ).
          APPEND t306 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_dynamic_sql.
    DATA(t1) = i_statement_node.
    DATA t2 TYPE REF TO zif_lnt_statement.
    DATA t3 TYPE REF TO zif_lnt_statement.
    t3 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t2 = t3.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE abap_bool.
    DATA t10 TYPE abap_bool.
    t10 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_update_database ).
    t9 = t10.
    IF t10 = abap_false.
      DATA t12 TYPE abap_bool.
      t12 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_statem_select ).
      t9 = t12.
    ENDIF.
    t8 = t9.
    IF t9 = abap_false.
      DATA t14 TYPE abap_bool.
      t14 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_select_loop ).
      t8 = t14.
    ENDIF.
    t7 = t8.
    IF t8 = abap_false.
      DATA t16 TYPE abap_bool.
      t16 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_insert_database ).
      t7 = t16.
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      DATA t18 TYPE abap_bool.
      t18 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_modify_database ).
      t6 = t18.
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      DATA t20 TYPE abap_bool.
      t20 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_delete_database ).
      t5 = t20.
    ENDIF.
    IF t5 = abap_true.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
      t23 = t1->find_first_expression( i_type_9913 = t25 ).
      t22 = t23.
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE abap_bool.
      t27 = xsdbool( t22 IS BOUND ).
      t26 = t27.
      IF t27 = abap_true.
        DATA(t29) = VALUE abap_bool( ).
        DATA t31 TYPE REF TO zcl_lnt_expression_node.
        DATA t32 TYPE REF TO zcl_lnt_expression_node.
        t32 = t22.
        DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
        t31 = t32->find_direct_expression( i_type_9913 = t34 ).
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t29 = xsdbool( t31 IS INITIAL ).
        t26 = t29.
      ENDIF.
      IF t26 = abap_true.
        DATA(t41) = |Dynamic SQL|.
        DATA(t42) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t42->has = abap_true.
        t42->value = t41.
        result = t42.
        RETURN.
      ENDIF.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_dngrs_sttmnt_cnf( me->gt_cn_in_sr_rl_dn_st_ts_dn_stt( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_dngrs_sttmnt_cnf( me->gt_cn_in_sr_rl_dn_st_ts_dn_stt( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_dngrs_sttmnt_cnf.
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
        t1 = NEW zcl_lnt_dngrs_sttmnt_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_dn_st_ts_dn_stt( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_dn_st_ts_dn_stt( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1473_330ef1d2bae6.
  ENDMETHOD.
ENDCLASS.
