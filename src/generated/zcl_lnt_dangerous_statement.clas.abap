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
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Dynamic SQL: Typically ABAP logic does not need dynamic SQL,|.
    t11 = t11 && |\ndynamic SQL can potentially create SQL injection problems|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Security| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = |SELECT * FROM (lv_table_name) INTO TABLE @DATA(lt_rows).|.
    t26 = t30.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = |SELECT * FROM zknown_table INTO TABLE @DATA(lt_rows).|.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |dangerous_statement| i_title = |Dangerous statement| i_short_description = |Detects potentially dangerous statements| i_bad_example = t26 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
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
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t50 ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t3) = |Potential dangerous statement |.
    DATA(t5) = strlen( t3 ).
    result = |{ t3 }{ i_statement }|.

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
    CREATE OBJECT t2.
    DATA t4 TYPE abap_bool.
    t4 = abap_false.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = t1->statements.
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
      t16 = t11->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ) = abap_true.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t21.
        DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t23.
        DATA t25 TYPE REF TO zcl_lnt_expression_node.
        DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
        t25 = t11->find_first_expression( i_type_9913 = t28 ).
        DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t29.
        IF xsdbool( t25 IS INITIAL ) = abap_true.
          CLEAR t29.
        ELSE.
          DATA t33 TYPE string.
          t33 = t25->concat_tokens( ).
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
          DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t56->has = abap_true.
          t56->value = |IF_RAP_QUERY_PROVIDER~SELECT|.
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
        IF xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_end_method ) = abap_true.
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
        t65 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_exec_sql ).
      ENDIF.
      IF t65 = abap_true.
        DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t74->has = abap_true.
        t74->value = |EXEC SQL|.
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
          t76 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_call_kernel ).
        ENDIF.
        IF t76 = abap_true.
          DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t85->has = abap_true.
          t85->value = |KERNEL CALL|.
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
            t87 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_system_call ).
          ENDIF.
          IF t87 = abap_true.
            DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t96->has = abap_true.
            t96->value = |SYSTEM-CALL|.
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
              t98 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_insert_report ).
            ENDIF.
            IF t98 = abap_true.
              DATA(t107) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t107->has = abap_true.
              t107->value = |INSERT REPORT|.
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
                t109 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_generate_dynpro ).
              ENDIF.
              IF t109 = abap_true.
                DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t118->has = abap_true.
                t118->value = |GENERATE DYNPRO|.
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
                  t120 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_generate_report ).
                ENDIF.
                IF t120 = abap_true.
                  DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t129->has = abap_true.
                  t129->value = |GENERATE REPORT|.
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
                    t131 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_generate_subroutine ).
                  ENDIF.
                  IF t131 = abap_true.
                    DATA(t140) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t140->has = abap_true.
                    t140->value = |GENERATE SUBROUTINE|.
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
                      t142 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_delete_report ).
                    ENDIF.
                    IF t142 = abap_true.
                      DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t151->has = abap_true.
                      t151->value = |DELETE REPORT|.
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
                        t153 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_delete_textpool ).
                      ENDIF.
                      IF t153 = abap_true.
                        DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t162->has = abap_true.
                        t162->value = |DELETE TEXTPOOL|.
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
                          t164 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_insert_textpool ).
                        ENDIF.
                        IF t164 = abap_true.
                          DATA(t173) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t173->has = abap_true.
                          t173->value = |INSERT TEXTPOOL|.
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
                            t175 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_delete_dynpro ).
                          ENDIF.
                          IF t175 = abap_true.
                            DATA(t184) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t184->has = abap_true.
                            t184->value = |DELETE DYNPRO|.
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
                              t186 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_export_dynpro ).
                            ENDIF.
                            IF t186 = abap_true.
                              DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t195->has = abap_true.
                              t195->value = |EXPORT DYNPRO|.
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
                                t198 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_editor_call ).
                              ENDIF.
                              t197 = t198.
                              IF t198 = abap_true.
                                DATA t205 TYPE REF TO zcl_lnt_abstract_token.
                                t205 = t11->find_direct_token_by_text( i_text = |REPORT| ).
                                t197 = xsdbool( t205 IS BOUND ).
                              ENDIF.
                              IF t197 = abap_true.
                                DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                t211->has = abap_true.
                                t211->value = |EDITOR-CALL FOR REPORT|.
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
        DATA(t224) = |Potential dangerous statement |.
        DATA(t226) = strlen( t224 ).
        t219 = |{ t224 }{ t221 }|.
        DATA(t227) = VALUE string( ).
        DATA t228 TYPE REF TO zcl_lnt_irule_metadata.
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
        CREATE OBJECT t245.
        t245->load( ).
        APPEND |SingleFile| TO t245->items.
        t245->save( ).
        t245->load( ).
        APPEND |Security| TO t245->items.
        t245->save( ).
        t241 = t245.
        DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t253.
        DATA(t257) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t257->has = abap_true.
        t257->value = |SELECT * FROM (lv_table_name) INTO TABLE @DATA(lt_rows).|.
        t253 = t257.
        DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t259.
        DATA(t263) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t263->has = abap_true.
        t263->value = |SELECT * FROM zknown_table INTO TABLE @DATA(lt_rows).|.
        t259 = t263.
        DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t265.
        DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t267.
        t228 = NEW zcl_lnt_irule_metadata( i_key = |dangerous_statement| i_title = |Dangerous statement| i_short_description = |Detects potentially dangerous statements| i_bad_example = t253 i_good_example = t259 i_extended_information = t235 i_tags = t241 i_pragma = t265 i_pseudo_comment = t267 ).
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
        DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t277.
        t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t277 ).
        DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t279.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t279 ).
        ENDIF.
        DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t281.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t281 ).
        ENDIF.
        DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t283.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t283 ).
        ENDIF.
        DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t285.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t285 ).
        ENDIF.
        DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t287.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t287 ).
        ENDIF.
        DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t289.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t289 ).
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
        t294 = xsdbool( t4 = abap_false ).
      ENDIF.
      IF t294 = abap_true.
        t63 = me->find_dynamic_sql( i_statement_node = t11 ).
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
          DATA(t314) = |Potential dangerous statement |.
          DATA(t316) = strlen( t314 ).
          t309 = |{ t314 }{ t311 }|.
          DATA(t317) = VALUE string( ).
          DATA t318 TYPE REF TO zcl_lnt_irule_metadata.
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
          CREATE OBJECT t335.
          t335->load( ).
          APPEND |SingleFile| TO t335->items.
          t335->save( ).
          t335->load( ).
          APPEND |Security| TO t335->items.
          t335->save( ).
          t331 = t335.
          DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t343.
          DATA(t347) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t347->has = abap_true.
          t347->value = |SELECT * FROM (lv_table_name) INTO TABLE @DATA(lt_rows).|.
          t343 = t347.
          DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t349.
          DATA(t353) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t353->has = abap_true.
          t353->value = |SELECT * FROM zknown_table INTO TABLE @DATA(lt_rows).|.
          t349 = t353.
          DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t355.
          DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t357.
          t318 = NEW zcl_lnt_irule_metadata( i_key = |dangerous_statement| i_title = |Dangerous statement| i_short_description = |Detects potentially dangerous statements| i_bad_example = t343 i_good_example = t349 i_extended_information = t325 i_tags = t331 i_pragma = t355 i_pseudo_comment = t357 ).
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
          DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t367.
          t318->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t367 ).
          DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t369.
          IF t318->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t318->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t369 ).
          ENDIF.
          DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t371.
          IF t318->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t318->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t371 ).
          ENDIF.
          DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t373.
          IF t318->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t318->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t373 ).
          ENDIF.
          DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t375.
          IF t318->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t318->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t375 ).
          ENDIF.
          DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t377.
          IF t318->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t318->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t377 ).
          ENDIF.
          DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t379.
          IF t318->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t318->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t379 ).
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
    t2 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE abap_bool.
    DATA t10 TYPE abap_bool.
    t10 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_update_database ).
    t9 = t10.
    IF t10 = abap_false.
      t9 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_statem_select ).
    ENDIF.
    t8 = t9.
    IF t9 = abap_false.
      t8 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_select_loop ).
    ENDIF.
    t7 = t8.
    IF t8 = abap_false.
      t7 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_insert_database ).
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      t6 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_modify_database ).
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      t5 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_delete_database ).
    ENDIF.
    IF t5 = abap_true.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
      t22 = t1->find_first_expression( i_type_9913 = t25 ).
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE abap_bool.
      t27 = xsdbool( t22 IS BOUND ).
      t26 = t27.
      IF t27 = abap_true.
        DATA t31 TYPE REF TO zcl_lnt_expression_node.
        DATA t32 TYPE REF TO zcl_lnt_expression_node.
        t32 = t22.
        DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
        t31 = t32->find_direct_expression( i_type_9913 = t34 ).
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t26 = xsdbool( t31 IS INITIAL ).
      ENDIF.
      IF t26 = abap_true.
        DATA(t42) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t42->has = abap_true.
        t42->value = |Dynamic SQL|.
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
