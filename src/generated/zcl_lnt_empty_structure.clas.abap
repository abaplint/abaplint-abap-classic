* TS: src/rules/empty_structure.ts:34:1 EmptyStructure
CLASS zcl_lnt_empty_structure DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_empty_structure_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_em_st_ts_em_str RETURNING VALUE(result) TYPE REF TO zcl_lnt_empty_structure_conf.
    METHODS st_cn_in_sr_rl_em_st_ts_em_str IMPORTING i_conf TYPE REF TO zcl_lnt_empty_structure_conf.
    METHODS rn_pr_in_sr_rl_em_st_ts_em_str IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_empty_structure IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_empty_structure_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#no-empty-if-branches|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = |IF foo = bar.\nENDIF.\n\nDO 2 TIMES.\nENDDO.|.
    t26 = t30.
    DATA(t35) = |LOOP AT itab WHERE qty = 0 OR date > sy-datum.\nENDLOOP.\nresu|.
    t35 = t35 && |lt = xsdbool( sy-subrc = 0 ).|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |empty_structure| i_title = |Find empty blocks| i_short_description = |Checks that the code does not contain empty blocks.| i_bad_example = t26 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
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
    DATA(t3) = |Empty block, add code: |.
    DATA(t5) = strlen( t3 ).
    result = |{ t3 }{ i_name }|.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_em_st_ts_em_str.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_em_st_ts_em_str.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_em_st_ts_em_str.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    t4 = t1->structure.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t18 = t1->statements.
    DATA t25 TYPE REF TO zcl_lnt_statement_node.
    DATA t26 TYPE REF TO object.
    DATA(t27) = VALUE i( ).
    DO.
      t18->load( ).
      IF t27 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t26.
      READ TABLE t18->items INDEX t27 + 1 INTO t26.
      t27 = t27 + 1.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      CLEAR t25.
      IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t28 ?= t26.
        DATA t29 TYPE REF TO object.
        CLEAR t29.
        t29 = t28->as_ref( ).
        t25 ?= t29.
      ELSE.
        t25 ?= t26.
      ENDIF.
      DATA t31 TYPE REF TO zif_lnt_statement.
      CLEAR t31.
      t31 = t25->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_unknown ) = abap_true.
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t33.
        CREATE OBJECT t33.
        result = t33.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t34.
    DATA(t37) = VALUE abap_bool( ).
    t37 = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) )->zlnt_view_read_sr_22c78f5eda46( ).
    IF xsdbool( t37 = abap_true ) = abap_true.
      DATA(t40) = VALUE i( ).
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t42 TYPE REF TO zcl_lnt_structure_node.
      t42 = t4.
      DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d753_f3a2f457d984.
      t41 = t42->find_all_structures_recursive( i_type_9913 = t44 ).
      DATA t45 TYPE REF TO zcl_lnt_structure_node.
      DATA t46 TYPE REF TO object.
      DATA(t47) = VALUE i( ).
      DO.
        t41->load( ).
        IF t47 >= lines( t41->items ).
          EXIT.
        ENDIF.
        CLEAR t46.
        READ TABLE t41->items INDEX t47 + 1 INTO t46.
        t47 = t47 + 1.
        DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t48.
        CLEAR t45.
        IF t46 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t48 ?= t46.
          DATA t49 TYPE REF TO object.
          CLEAR t49.
          t49 = t48->as_ref( ).
          t45 ?= t49.
        ELSE.
          t45 ?= t46.
        ENDIF.
        t34->load( ).
        APPEND t45 TO t34->items.
        t34->save( ).
      ENDDO.
      t34->load( ).
      t40 = lines( t34->items ).
    ENDIF.
    DATA(t55) = VALUE abap_bool( ).
    t55 = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) )->zlnt_view_read_sr_43a444581482( ).
    IF xsdbool( t55 = abap_true ) = abap_true.
      DATA(t58) = VALUE i( ).
      DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t60 TYPE REF TO zcl_lnt_structure_node.
      t60 = t4.
      DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d709_9d7d29fb0565.
      t59 = t60->find_all_structures_recursive( i_type_9913 = t62 ).
      DATA t63 TYPE REF TO zcl_lnt_structure_node.
      DATA t64 TYPE REF TO object.
      DATA(t65) = VALUE i( ).
      DO.
        t59->load( ).
        IF t65 >= lines( t59->items ).
          EXIT.
        ENDIF.
        CLEAR t64.
        READ TABLE t59->items INDEX t65 + 1 INTO t64.
        t65 = t65 + 1.
        DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t66.
        CLEAR t63.
        IF t64 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t66 ?= t64.
          DATA t67 TYPE REF TO object.
          CLEAR t67.
          t67 = t66->as_ref( ).
          t63 ?= t67.
        ELSE.
          t63 ?= t64.
        ENDIF.
        t34->load( ).
        APPEND t63 TO t34->items.
        t34->save( ).
      ENDDO.
      t34->load( ).
      t58 = lines( t34->items ).
    ENDIF.
    DATA(t73) = VALUE abap_bool( ).
    t73 = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) )->zlnt_view_read_sr_a0a1d19d185e( ).
    IF xsdbool( t73 = abap_true ) = abap_true.
      DATA(t76) = VALUE i( ).
      DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t78 TYPE REF TO zcl_lnt_structure_node.
      t78 = t4.
      DATA(t80) = zlnt_runtime_desc_78196487750d=>zlnt_member_d751_4d9c6e99dfab.
      t77 = t78->find_all_structures_recursive( i_type_9913 = t80 ).
      DATA t81 TYPE REF TO zcl_lnt_structure_node.
      DATA t82 TYPE REF TO object.
      DATA(t83) = VALUE i( ).
      DO.
        t77->load( ).
        IF t83 >= lines( t77->items ).
          EXIT.
        ENDIF.
        CLEAR t82.
        READ TABLE t77->items INDEX t83 + 1 INTO t82.
        t83 = t83 + 1.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t84.
        CLEAR t81.
        IF t82 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t84 ?= t82.
          DATA t85 TYPE REF TO object.
          CLEAR t85.
          t85 = t84->as_ref( ).
          t81 ?= t85.
        ELSE.
          t81 ?= t82.
        ENDIF.
        t34->load( ).
        APPEND t81 TO t34->items.
        t34->save( ).
      ENDDO.
      t34->load( ).
      t76 = lines( t34->items ).
    ENDIF.
    DATA(t91) = VALUE abap_bool( ).
    t91 = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) )->zlnt_view_read_sr_996db639d95e( ).
    IF xsdbool( t91 = abap_true ) = abap_true.
      DATA(t94) = VALUE i( ).
      DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t96 TYPE REF TO zcl_lnt_structure_node.
      t96 = t4.
      DATA(t98) = zlnt_runtime_desc_78196487750d=>zlnt_member_d727_3ba4cd3431c9.
      t95 = t96->find_all_structures_recursive( i_type_9913 = t98 ).
      DATA t99 TYPE REF TO zcl_lnt_structure_node.
      DATA t100 TYPE REF TO object.
      DATA(t101) = VALUE i( ).
      DO.
        t95->load( ).
        IF t101 >= lines( t95->items ).
          EXIT.
        ENDIF.
        CLEAR t100.
        READ TABLE t95->items INDEX t101 + 1 INTO t100.
        t101 = t101 + 1.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        CLEAR t99.
        IF t100 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t102 ?= t100.
          DATA t103 TYPE REF TO object.
          CLEAR t103.
          t103 = t102->as_ref( ).
          t99 ?= t103.
        ELSE.
          t99 ?= t100.
        ENDIF.
        t34->load( ).
        APPEND t99 TO t34->items.
        t34->save( ).
      ENDDO.
      t34->load( ).
      t94 = lines( t34->items ).
    ENDIF.
    DATA(t109) = VALUE abap_bool( ).
    t109 = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) )->zlnt_view_read_sr_c09d4cea8735( ).
    IF xsdbool( t109 = abap_true ) = abap_true.
      DATA(t112) = VALUE i( ).
      DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t114 TYPE REF TO zcl_lnt_structure_node.
      t114 = t4.
      DATA(t116) = zlnt_runtime_desc_78196487750d=>zlnt_member_d705_d5c8a90641bd.
      t113 = t114->find_all_structures_recursive( i_type_9913 = t116 ).
      DATA t117 TYPE REF TO zcl_lnt_structure_node.
      DATA t118 TYPE REF TO object.
      DATA(t119) = VALUE i( ).
      DO.
        t113->load( ).
        IF t119 >= lines( t113->items ).
          EXIT.
        ENDIF.
        CLEAR t118.
        READ TABLE t113->items INDEX t119 + 1 INTO t118.
        t119 = t119 + 1.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t120.
        CLEAR t117.
        IF t118 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t120 ?= t118.
          DATA t121 TYPE REF TO object.
          CLEAR t121.
          t121 = t120->as_ref( ).
          t117 ?= t121.
        ELSE.
          t117 ?= t118.
        ENDIF.
        t34->load( ).
        APPEND t117 TO t34->items.
        t34->save( ).
      ENDDO.
      t34->load( ).
      t112 = lines( t34->items ).
      DATA(t126) = VALUE i( ).
      DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t128 TYPE REF TO zcl_lnt_structure_node.
      t128 = t4.
      DATA(t130) = zlnt_runtime_desc_78196487750d=>zlnt_member_d706_b5e09ff8af85.
      t127 = t128->find_all_structures_recursive( i_type_9913 = t130 ).
      DATA t131 TYPE REF TO zcl_lnt_structure_node.
      DATA t132 TYPE REF TO object.
      DATA(t133) = VALUE i( ).
      DO.
        t127->load( ).
        IF t133 >= lines( t127->items ).
          EXIT.
        ENDIF.
        CLEAR t132.
        READ TABLE t127->items INDEX t133 + 1 INTO t132.
        t133 = t133 + 1.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        CLEAR t131.
        IF t132 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t134 ?= t132.
          DATA t135 TYPE REF TO object.
          CLEAR t135.
          t135 = t134->as_ref( ).
          t131 ?= t135.
        ELSE.
          t131 ?= t132.
        ENDIF.
        t34->load( ).
        APPEND t131 TO t34->items.
        t34->save( ).
      ENDDO.
      t34->load( ).
      t126 = lines( t34->items ).
      DATA(t140) = VALUE i( ).
      DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t142 TYPE REF TO zcl_lnt_structure_node.
      t142 = t4.
      DATA(t144) = zlnt_runtime_desc_78196487750d=>zlnt_member_d707_8cc2599df085.
      t141 = t142->find_all_structures_recursive( i_type_9913 = t144 ).
      DATA t145 TYPE REF TO zcl_lnt_structure_node.
      DATA t146 TYPE REF TO object.
      DATA(t147) = VALUE i( ).
      DO.
        t141->load( ).
        IF t147 >= lines( t141->items ).
          EXIT.
        ENDIF.
        CLEAR t146.
        READ TABLE t141->items INDEX t147 + 1 INTO t146.
        t147 = t147 + 1.
        DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t148.
        CLEAR t145.
        IF t146 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t148 ?= t146.
          DATA t149 TYPE REF TO object.
          CLEAR t149.
          t149 = t148->as_ref( ).
          t145 ?= t149.
        ELSE.
          t145 ?= t146.
        ENDIF.
        t34->load( ).
        APPEND t145 TO t34->items.
        t34->save( ).
      ENDDO.
      t34->load( ).
      t140 = lines( t34->items ).
    ENDIF.
    DATA t155 TYPE REF TO zcl_lnt_structure_node.
    DATA t156 TYPE REF TO object.
    DATA(t157) = VALUE i( ).
    DO.
      t34->load( ).
      IF t157 >= lines( t34->items ).
        EXIT.
      ENDIF.
      CLEAR t156.
      READ TABLE t34->items INDEX t157 + 1 INTO t156.
      t157 = t157 + 1.
      DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t158.
      CLEAR t155.
      IF t156 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t158 ?= t156.
        DATA t159 TYPE REF TO object.
        CLEAR t159.
        t159 = t158->as_ref( ).
        t155 ?= t159.
      ELSE.
        t155 ?= t156.
      ENDIF.
      DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t162.
      DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t163.
      DATA t164 TYPE REF TO zcl_lnt_abstract_node.
      CLEAR t164.
      t164 = t155.
      t163 = t164->children.
      t162 ?= t163.
      t162->load( ).
      IF xsdbool( lines( t162->items ) = 2 ) = abap_true.
        DATA t170 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t170.
        t170 = t155->get_first_token( ).
        DATA t173 TYPE REF TO zcl_lnt_issue.
        CLEAR t173.
        DATA(t176) = VALUE string( ).
        DATA(t177) = VALUE string( ).
        t177 = t155->gt_in_sr_ab_nd_st_nd_ts_str_nd( )->zlnt_builtin_clas_3f891b097658( )->name.
        DATA(t183) = |Empty block, add code: |.
        DATA(t185) = strlen( t183 ).
        t176 = |{ t183 }{ t177 }|.
        DATA(t186) = VALUE string( ).
        DATA t187 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t187.
        DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t194.
        DATA(t197) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t197 = t197 && |nABAP.md#no-empty-if-branches|.
        DATA(t198) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t198->has = abap_true.
        t198->value = t197.
        t194 = t198.
        DATA t200 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t200.
        DATA t204 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t204.
        DATA t205 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t205.
        CREATE OBJECT t205.
        t204 = t205.
        t204->load( ).
        APPEND |Styleguide| TO t204->items.
        t204->save( ).
        t204->load( ).
        APPEND |SingleFile| TO t204->items.
        t204->save( ).
        t200 = t204.
        DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t212.
        DATA(t216) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t216->has = abap_true.
        t216->value = |IF foo = bar.\nENDIF.\n\nDO 2 TIMES.\nENDDO.|.
        t212 = t216.
        DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t218.
        DATA(t221) = |LOOP AT itab WHERE qty = 0 OR date > sy-datum.\nENDLOOP.\nresu|.
        t221 = t221 && |lt = xsdbool( sy-subrc = 0 ).|.
        DATA(t222) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t222->has = abap_true.
        t222->value = t221.
        t218 = t222.
        DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t224.
        CLEAR t224.
        DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t226.
        CLEAR t226.
        t187 = NEW zcl_lnt_irule_metadata( i_key = |empty_structure| i_title = |Find empty blocks| i_short_description = |Checks that the code does not contain empty blocks.| i_bad_example = t212 i_good_example = t218 i_extended_information = t194 i_tags = t200 i_pragma = t224 i_pseudo_comment = t226 ).
        CREATE OBJECT t187->zlnt_view_ownkeys_b0e8086400eb.
        t187->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t228.
        t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t228 ).
        DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t229.
        IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t229 ).
        ENDIF.
        DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t230.
        IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t230 ).
        ENDIF.
        DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t231.
        IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t231 ).
        ENDIF.
        DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t232.
        IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t232 ).
        ENDIF.
        DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t233.
        IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t233 ).
        ENDIF.
        DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t234.
        IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t234 ).
        ENDIF.
        CREATE OBJECT t187->zlnt_json_ownkeys_70e5fd461788.
        t187->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t236.
        t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t236 ).
        DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t238.
        IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t238 ).
        ENDIF.
        DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t240.
        IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t240 ).
        ENDIF.
        DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t242.
        IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t242 ).
        ENDIF.
        DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t244.
        IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t244 ).
        ENDIF.
        DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t246.
        IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t246 ).
        ENDIF.
        DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t248.
        IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t248 ).
        ENDIF.
        t186 = t187->key.
        DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t249.
        t249 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t251 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t251.
        t173 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t170 i_message_26cb = t176 i_key = t186 i_severity = t249 i_fix = t251 ).
        t2->load( ).
        APPEND t173 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    DATA(t255) = VALUE abap_bool( ).
    t255 = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) )->zlnt_view_read_sr_23037fee38bb( ).
    IF xsdbool( t255 = abap_true ) = abap_true.
      DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t260 TYPE REF TO zcl_lnt_structure_node.
      t260 = t4.
      DATA(t262) = zlnt_runtime_desc_78196487750d=>zlnt_member_d744_dbdc6f78b1c3.
      t258 = t260->find_all_structures_recursive( i_type_9913 = t262 ).
      DATA t264 TYPE REF TO zcl_lnt_structure_node.
      DATA t265 TYPE REF TO object.
      DATA(t266) = VALUE i( ).
      DO.
        t258->load( ).
        IF t266 >= lines( t258->items ).
          EXIT.
        ENDIF.
        CLEAR t265.
        READ TABLE t258->items INDEX t266 + 1 INTO t265.
        t266 = t266 + 1.
        DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t267.
        CLEAR t264.
        IF t265 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t267 ?= t265.
          DATA t268 TYPE REF TO object.
          CLEAR t268.
          t268 = t267->as_ref( ).
          t264 ?= t268.
        ELSE.
          t264 ?= t265.
        ENDIF.
        DATA t270 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t270.
        DATA(t272) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
        t270 = t264->find_direct_structure( i_type_9913 = t272 ).
        DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t276.
        CLEAR t276.
        IF xsdbool( t270 IS INITIAL ) = abap_true.
          DATA t281 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t281.
          t281 = t264->get_first_token( ).
          DATA t284 TYPE REF TO zcl_lnt_issue.
          CLEAR t284.
          DATA(t287) = VALUE string( ).
          DATA(t288) = VALUE string( ).
          t288 = t264->gt_in_sr_ab_nd_st_nd_ts_str_nd( )->zlnt_builtin_clas_3f891b097658( )->name.
          DATA(t294) = |Empty block, add code: |.
          DATA(t296) = strlen( t294 ).
          t287 = |{ t294 }{ t288 }|.
          DATA(t297) = VALUE string( ).
          DATA t298 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t298.
          DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t305.
          DATA(t308) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t308 = t308 && |nABAP.md#no-empty-if-branches|.
          DATA(t309) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t309->has = abap_true.
          t309->value = t308.
          t305 = t309.
          DATA t311 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t311.
          DATA t315 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t315.
          DATA t316 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t316.
          CREATE OBJECT t316.
          t315 = t316.
          t315->load( ).
          APPEND |Styleguide| TO t315->items.
          t315->save( ).
          t315->load( ).
          APPEND |SingleFile| TO t315->items.
          t315->save( ).
          t311 = t315.
          DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t323.
          DATA(t327) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t327->has = abap_true.
          t327->value = |IF foo = bar.\nENDIF.\n\nDO 2 TIMES.\nENDDO.|.
          t323 = t327.
          DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t329.
          DATA(t332) = |LOOP AT itab WHERE qty = 0 OR date > sy-datum.\nENDLOOP.\nresu|.
          t332 = t332 && |lt = xsdbool( sy-subrc = 0 ).|.
          DATA(t333) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t333->has = abap_true.
          t333->value = t332.
          t329 = t333.
          DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t335.
          CLEAR t335.
          DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t337.
          CLEAR t337.
          t298 = NEW zcl_lnt_irule_metadata( i_key = |empty_structure| i_title = |Find empty blocks| i_short_description = |Checks that the code does not contain empty blocks.| i_bad_example = t323 i_good_example = t329 i_extended_information = t305 i_tags = t311 i_pragma = t335 i_pseudo_comment = t337 ).
          CREATE OBJECT t298->zlnt_view_ownkeys_b0e8086400eb.
          t298->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t339.
          t298->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t339 ).
          DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t340.
          IF t298->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t298->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t340 ).
          ENDIF.
          DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t341.
          IF t298->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t298->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t341 ).
          ENDIF.
          DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t342.
          IF t298->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t298->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t342 ).
          ENDIF.
          DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t343.
          IF t298->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t298->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t343 ).
          ENDIF.
          DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t344.
          IF t298->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t298->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t344 ).
          ENDIF.
          DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t345.
          IF t298->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t298->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t345 ).
          ENDIF.
          CREATE OBJECT t298->zlnt_json_ownkeys_70e5fd461788.
          t298->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t347.
          t298->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t347 ).
          DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t349.
          IF t298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t298->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t349 ).
          ENDIF.
          DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t351.
          IF t298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t298->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t351 ).
          ENDIF.
          DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t353.
          IF t298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t298->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t353 ).
          ENDIF.
          DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t355.
          IF t298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t298->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t355 ).
          ENDIF.
          DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t357.
          IF t298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t298->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t357 ).
          ENDIF.
          DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t359.
          IF t298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t298->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t359 ).
          ENDIF.
          t297 = t298->key.
          DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t360.
          t360 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t362 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t362.
          t284 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t281 i_message_26cb = t287 i_key = t297 i_severity = t360 i_fix = t362 ).
          t2->load( ).
          APPEND t284 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA(t366) = VALUE abap_bool( ).
    t366 = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) )->zlnt_view_read_sr_f2f44c885431( ).
    IF xsdbool( t366 = abap_true ) = abap_true.
      DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t371 TYPE REF TO zcl_lnt_structure_node.
      t371 = t4.
      DATA(t373) = zlnt_runtime_desc_78196487750d=>zlnt_member_d741_a4c2609517be.
      t369 = t371->find_all_structures_recursive( i_type_9913 = t373 ).
      DATA t375 TYPE REF TO zcl_lnt_structure_node.
      DATA t376 TYPE REF TO object.
      DATA(t377) = VALUE i( ).
      DO.
        t369->load( ).
        IF t377 >= lines( t369->items ).
          EXIT.
        ENDIF.
        CLEAR t376.
        READ TABLE t369->items INDEX t377 + 1 INTO t376.
        t377 = t377 + 1.
        DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t378.
        CLEAR t375.
        IF t376 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t378 ?= t376.
          DATA t379 TYPE REF TO object.
          CLEAR t379.
          t379 = t378->as_ref( ).
          t375 ?= t379.
        ELSE.
          t375 ?= t376.
        ENDIF.
        DATA t382 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t382.
        DATA t383 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t383.
        DATA t384 TYPE REF TO zcl_lnt_abstract_node.
        CLEAR t384.
        t384 = t375.
        t383 = t384->children.
        t382 ?= t383.
        t382->load( ).
        IF xsdbool( lines( t382->items ) = 2 ) = abap_true.
          DATA t389 TYPE REF TO zif_lnt_union_8249fcb1.
          CLEAR t389.
          DATA t390 TYPE REF TO zif_lnt_union_8249fcb1.
          CLEAR t390.
          DATA t391 TYPE REF TO zif_lnt_node.
          CLEAR t391.
          DATA t392 TYPE REF TO zcl_lnt_abstract_node.
          CLEAR t392.
          t392 = t375.
          DATA t396 TYPE REF TO zif_lnt_node.
          CLEAR t396.
          DATA t397 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t397.
          t397 = t392->children.
          DATA(t399) = VALUE i( ).
          DATA(t400) = VALUE i( ).
          DATA t401 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t401.
          t401 = t392->children.
          t401->load( ).
          t400 = lines( t401->items ).
          DATA(t403) = 1.
          t399 = t400 - t403.
          t399 = t399 + 1.
          DATA t404 TYPE REF TO object.
          CLEAR t404.
          t397->load( ).
          CLEAR t404.
          READ TABLE t397->items INDEX t399 INTO t404.
          DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t405.
          CLEAR t396.
          IF t404 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t405 ?= t404.
            DATA t406 TYPE REF TO object.
            CLEAR t406.
            t406 = t405->as_ref( ).
            t396 ?= t406.
          ELSE.
            t396 ?= t404.
          ENDIF.
          t391 = t396.
          t390 ?= t391.
          t389 = t390.
          DATA(t408) = VALUE f( ).
          DATA(t410) = VALUE f( ).
          t410 = CONV f( -1 ).
          DATA(t412) = VALUE f( ).
          t412 = CONV f( -1 ).
          DATA t415 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t415.
          DATA t416 TYPE REF TO object.
          CLEAR t416.
          DATA(t417) = VALUE i( ).
          DO.
            t18->load( ).
            IF t417 >= lines( t18->items ).
              EXIT.
            ENDIF.
            CLEAR t416.
            READ TABLE t18->items INDEX t417 + 1 INTO t416.
            t417 = t417 + 1.
            DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t418.
            CLEAR t415.
            IF t416 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t418 ?= t416.
              DATA t419 TYPE REF TO object.
              CLEAR t419.
              t419 = t418->as_ref( ).
              t415 ?= t419.
            ELSE.
              t415 ?= t416.
            ENDIF.
            DATA(t422) = CONV f( 1 ).
            t410 = t410 + t422.
            DATA(t423) = VALUE abap_bool( ).
            DATA t424 TYPE REF TO zif_lnt_union_8249fcb1.
            CLEAR t424.
            t424 = t415.
            DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t429.
            DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t430.
            CLEAR t429.
            IF t424 IS BOUND.
              CLEAR t429.
              IF t424 IS BOUND.
                DATA t431 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t431.
                DATA t432 TYPE REF TO object.
                CLEAR t432.
                CLEAR t431.
                t432 = t424.
                TRY.
                    t429 ?= t432.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t429 IS NOT BOUND.
                  TRY.
                      t431 ?= t424.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t431 IS BOUND.
                    t429 = t431->source( ).
                  ENDIF.
                  IF t429 IS NOT BOUND.
                    CREATE OBJECT t429.
                    t429->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t429->oval = t424.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
            CLEAR t430.
            IF t389 IS BOUND.
              CLEAR t430.
              IF t389 IS BOUND.
                DATA t433 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t433.
                DATA t434 TYPE REF TO object.
                CLEAR t434.
                CLEAR t433.
                t434 = t389.
                TRY.
                    t430 ?= t434.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t430 IS NOT BOUND.
                  TRY.
                      t433 ?= t389.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t433 IS BOUND.
                    t430 = t433->source( ).
                  ENDIF.
                  IF t430 IS NOT BOUND.
                    CREATE OBJECT t430.
                    t430->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t430->oval = t389.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
            IF t429 IS BOUND.
              t423 = t429->strict_equals( t430 ).
            ELSE.
              t423 = xsdbool( t430 IS NOT BOUND ).
            ENDIF.
            IF t423 = abap_true.
              t412 = t410.
              EXIT.
            ENDIF.
          ENDDO.
          t408 = t412.
          DATA t437 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t437.
          DATA t438 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t438.
          DATA(t440) = VALUE i( ).
          DATA(t441) = VALUE f( ).
          DATA(t443) = CONV f( 1 ).
          t441 = t408 + t443.
          IF t441 > range_i32_upper.
            t440 = range_i32_upper.
          ELSEIF t441 < range_i32_lower.
            t440 = range_i32_lower.
          ELSE.
            t440 = trunc( t441 ).
          ENDIF.
          t440 = t440 + 1.
          DATA t444 TYPE REF TO object.
          CLEAR t444.
          t18->load( ).
          CLEAR t444.
          READ TABLE t18->items INDEX t440 INTO t444.
          DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t445.
          CLEAR t438.
          IF t444 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t445 ?= t444.
            DATA t446 TYPE REF TO object.
            CLEAR t446.
            t446 = t445->as_ref( ).
            t438 ?= t446.
          ELSE.
            t438 ?= t444.
          ENDIF.
          t437 = t438.
          DATA(t447) = VALUE abap_bool( ).
          DATA(t448) = VALUE abap_bool( ).
          DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t451.
          CLEAR t451.
          t448 = xsdbool( xsdbool( t437 IS INITIAL ) = abap_false ).
          t447 = t448.
          IF t448 = abap_true.
            DATA(t457) = VALUE i( ).
            DATA(t458) = VALUE string( ).
            DATA(t459) = VALUE string( ).
            t459 = t437->concat_tokens( ).
            DATA(t461) = strlen( t459 ).
            t458 = t459.
            IF t458 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t458 TO UPPER CASE.
            ELSE.
              t458 = zlnt_runtime_uppe_91169605024d=>full( t458 ).
            ENDIF.
            DATA(t462) = |SY-SUBRC|.
            DATA(t463) = strlen( t458 ).
            IF t462 IS INITIAL.
              t457 = 0.
            ELSE.
              FIND t462 IN t458 MATCH OFFSET t457.
              IF sy-subrc <> 0.
                t457 = -1.
              ENDIF.
            ENDIF.
            t447 = xsdbool( t457 >= 0 ).
          ENDIF.
          IF t447 = abap_true.
            CONTINUE.
          ENDIF.
          DATA t466 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t466.
          t466 = t375->get_first_token( ).
          DATA t469 TYPE REF TO zcl_lnt_issue.
          CLEAR t469.
          DATA(t472) = VALUE string( ).
          DATA(t473) = VALUE string( ).
          t473 = t375->gt_in_sr_ab_nd_st_nd_ts_str_nd( )->zlnt_builtin_clas_3f891b097658( )->name.
          DATA(t479) = |Empty block, add code: |.
          DATA(t481) = strlen( t479 ).
          t472 = |{ t479 }{ t473 }|.
          DATA(t482) = VALUE string( ).
          DATA t483 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t483.
          DATA t490 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t490.
          DATA(t493) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t493 = t493 && |nABAP.md#no-empty-if-branches|.
          DATA(t494) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t494->has = abap_true.
          t494->value = t493.
          t490 = t494.
          DATA t496 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t496.
          DATA t500 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t500.
          DATA t501 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t501.
          CREATE OBJECT t501.
          t500 = t501.
          t500->load( ).
          APPEND |Styleguide| TO t500->items.
          t500->save( ).
          t500->load( ).
          APPEND |SingleFile| TO t500->items.
          t500->save( ).
          t496 = t500.
          DATA t508 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t508.
          DATA(t512) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t512->has = abap_true.
          t512->value = |IF foo = bar.\nENDIF.\n\nDO 2 TIMES.\nENDDO.|.
          t508 = t512.
          DATA t514 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t514.
          DATA(t517) = |LOOP AT itab WHERE qty = 0 OR date > sy-datum.\nENDLOOP.\nresu|.
          t517 = t517 && |lt = xsdbool( sy-subrc = 0 ).|.
          DATA(t518) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t518->has = abap_true.
          t518->value = t517.
          t514 = t518.
          DATA t520 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t520.
          CLEAR t520.
          DATA t522 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t522.
          CLEAR t522.
          t483 = NEW zcl_lnt_irule_metadata( i_key = |empty_structure| i_title = |Find empty blocks| i_short_description = |Checks that the code does not contain empty blocks.| i_bad_example = t508 i_good_example = t514 i_extended_information = t490 i_tags = t496 i_pragma = t520 i_pseudo_comment = t522 ).
          CREATE OBJECT t483->zlnt_view_ownkeys_b0e8086400eb.
          t483->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t524.
          t483->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t524 ).
          DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t525.
          IF t483->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t483->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t525 ).
          ENDIF.
          DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t526.
          IF t483->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t483->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t526 ).
          ENDIF.
          DATA t527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t527.
          IF t483->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t483->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t527 ).
          ENDIF.
          DATA t528 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t528.
          IF t483->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t483->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t528 ).
          ENDIF.
          DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t529.
          IF t483->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t483->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t529 ).
          ENDIF.
          DATA t530 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t530.
          IF t483->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t483->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t530 ).
          ENDIF.
          CREATE OBJECT t483->zlnt_json_ownkeys_70e5fd461788.
          t483->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t532.
          t483->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t532 ).
          DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t534.
          IF t483->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t483->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t534 ).
          ENDIF.
          DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t536.
          IF t483->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t483->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t536 ).
          ENDIF.
          DATA t538 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t538.
          IF t483->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t483->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t538 ).
          ENDIF.
          DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t540.
          IF t483->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t483->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t540 ).
          ENDIF.
          DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t542.
          IF t483->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t483->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t542 ).
          ENDIF.
          DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t544.
          IF t483->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t483->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t544 ).
          ENDIF.
          t482 = t483->key.
          DATA t545 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t545.
          t545 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t547 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t547.
          t469 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t466 i_message_26cb = t472 i_key = t482 i_severity = t545 i_fix = t547 ).
          t2->load( ).
          APPEND t469 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA(t551) = VALUE abap_bool( ).
    t551 = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) )->zlnt_view_read_sr_05ad6227cfd0( ).
    IF xsdbool( t551 = abap_true ) = abap_true.
      DATA t554 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t556 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t557 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t558 TYPE REF TO zcl_lnt_structure_node.
      t558 = t4.
      DATA(t560) = zlnt_runtime_desc_78196487750d=>zlnt_member_d738_747279fb02d5.
      t557 = t558->find_all_structures_recursive( i_type_9913 = t560 ).
      DATA t562 TYPE REF TO zcl_lnt_structure_node.
      t562 = t4.
      DATA(t564) = zlnt_runtime_desc_78196487750d=>zlnt_member_d734_f05b24426da6.
      t556 = t557->concat( p0 = t562->find_all_structures_recursive( i_type_9913 = t564 ) ).
      DATA t566 TYPE REF TO zcl_lnt_structure_node.
      t566 = t4.
      DATA(t568) = zlnt_runtime_desc_78196487750d=>zlnt_member_d735_6e36d2820627.
      t554 = t556->concat( p0 = t566->find_all_structures_recursive( i_type_9913 = t568 ) ).
      DATA t570 TYPE REF TO zcl_lnt_structure_node.
      DATA t571 TYPE REF TO object.
      DATA(t572) = VALUE i( ).
      DO.
        t554->load( ).
        IF t572 >= lines( t554->items ).
          EXIT.
        ENDIF.
        CLEAR t571.
        READ TABLE t554->items INDEX t572 + 1 INTO t571.
        t572 = t572 + 1.
        DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t573.
        CLEAR t570.
        IF t571 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t573 ?= t571.
          DATA t574 TYPE REF TO object.
          CLEAR t574.
          t574 = t573->as_ref( ).
          t570 ?= t574.
        ELSE.
          t570 ?= t571.
        ENDIF.
        DATA t576 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t576.
        DATA(t578) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
        t576 = t570->find_direct_structure( i_type_9913 = t578 ).
        DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t582.
        CLEAR t582.
        IF xsdbool( t576 IS INITIAL ) = abap_true.
          DATA t587 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t587.
          t587 = t570->get_first_token( ).
          DATA t590 TYPE REF TO zcl_lnt_issue.
          CLEAR t590.
          DATA(t593) = VALUE string( ).
          DATA(t594) = VALUE string( ).
          t594 = t570->gt_in_sr_ab_nd_st_nd_ts_str_nd( )->zlnt_builtin_clas_3f891b097658( )->name.
          DATA(t600) = |Empty block, add code: |.
          DATA(t602) = strlen( t600 ).
          t593 = |{ t600 }{ t594 }|.
          DATA(t603) = VALUE string( ).
          DATA t604 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t604.
          DATA t611 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t611.
          DATA(t614) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t614 = t614 && |nABAP.md#no-empty-if-branches|.
          DATA(t615) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t615->has = abap_true.
          t615->value = t614.
          t611 = t615.
          DATA t617 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t617.
          DATA t621 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t621.
          DATA t622 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t622.
          CREATE OBJECT t622.
          t621 = t622.
          t621->load( ).
          APPEND |Styleguide| TO t621->items.
          t621->save( ).
          t621->load( ).
          APPEND |SingleFile| TO t621->items.
          t621->save( ).
          t617 = t621.
          DATA t629 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t629.
          DATA(t633) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t633->has = abap_true.
          t633->value = |IF foo = bar.\nENDIF.\n\nDO 2 TIMES.\nENDDO.|.
          t629 = t633.
          DATA t635 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t635.
          DATA(t638) = |LOOP AT itab WHERE qty = 0 OR date > sy-datum.\nENDLOOP.\nresu|.
          t638 = t638 && |lt = xsdbool( sy-subrc = 0 ).|.
          DATA(t639) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t639->has = abap_true.
          t639->value = t638.
          t635 = t639.
          DATA t641 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t641.
          CLEAR t641.
          DATA t643 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t643.
          CLEAR t643.
          t604 = NEW zcl_lnt_irule_metadata( i_key = |empty_structure| i_title = |Find empty blocks| i_short_description = |Checks that the code does not contain empty blocks.| i_bad_example = t629 i_good_example = t635 i_extended_information = t611 i_tags = t617 i_pragma = t641 i_pseudo_comment = t643 ).
          CREATE OBJECT t604->zlnt_view_ownkeys_b0e8086400eb.
          t604->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t645.
          t604->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t645 ).
          DATA t646 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t646.
          IF t604->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t604->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t646 ).
          ENDIF.
          DATA t647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t647.
          IF t604->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t604->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t647 ).
          ENDIF.
          DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t648.
          IF t604->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t604->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t648 ).
          ENDIF.
          DATA t649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t649.
          IF t604->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t604->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t649 ).
          ENDIF.
          DATA t650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t650.
          IF t604->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t604->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t650 ).
          ENDIF.
          DATA t651 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t651.
          IF t604->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t604->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t651 ).
          ENDIF.
          CREATE OBJECT t604->zlnt_json_ownkeys_70e5fd461788.
          t604->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t653.
          t604->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t653 ).
          DATA t655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t655.
          IF t604->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t604->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t655 ).
          ENDIF.
          DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t657.
          IF t604->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t604->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t657 ).
          ENDIF.
          DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t659.
          IF t604->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t604->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t659 ).
          ENDIF.
          DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t661.
          IF t604->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t604->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t661 ).
          ENDIF.
          DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t663.
          IF t604->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t604->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t663 ).
          ENDIF.
          DATA t665 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t665.
          IF t604->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t604->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t665 ).
          ENDIF.
          t603 = t604->key.
          DATA t666 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t666.
          t666 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t668 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t668.
          t590 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t587 i_message_26cb = t593 i_key = t603 i_severity = t666 i_fix = t668 ).
          t2->load( ).
          APPEND t590 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA(t672) = VALUE abap_bool( ).
    t672 = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) )->zlnt_view_read_sr_54bebfc4c85f( ).
    IF xsdbool( t672 = abap_true ) = abap_true.
      DATA t675 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t677 TYPE REF TO zcl_lnt_structure_node.
      t677 = t4.
      DATA(t679) = zlnt_runtime_desc_78196487750d=>zlnt_member_d708_dde8d9743472.
      t675 = t677->find_all_structures_recursive( i_type_9913 = t679 ).
      DATA t681 TYPE REF TO zcl_lnt_structure_node.
      DATA t682 TYPE REF TO object.
      DATA(t683) = VALUE i( ).
      DO.
        t675->load( ).
        IF t683 >= lines( t675->items ).
          EXIT.
        ENDIF.
        CLEAR t682.
        READ TABLE t675->items INDEX t683 + 1 INTO t682.
        t683 = t683 + 1.
        DATA t684 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t684.
        CLEAR t681.
        IF t682 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t684 ?= t682.
          DATA t685 TYPE REF TO object.
          CLEAR t685.
          t685 = t684->as_ref( ).
          t681 ?= t685.
        ELSE.
          t681 ?= t682.
        ENDIF.
        DATA t688 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t688.
        DATA t689 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t689.
        DATA t690 TYPE REF TO zcl_lnt_abstract_node.
        CLEAR t690.
        t690 = t681.
        t689 = t690->children.
        t688 ?= t689.
        t688->load( ).
        IF xsdbool( lines( t688->items ) = 1 ) = abap_true.
          DATA t696 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t696.
          t696 = t681->get_first_token( ).
          DATA(t698) = VALUE string( ).
          DATA(t700) = VALUE string( ).
          t700 = t681->gt_in_sr_ab_nd_st_nd_ts_str_nd( )->zlnt_builtin_clas_3f891b097658( )->name.
          DATA(t706) = |Empty block, add code: |.
          DATA(t708) = strlen( t706 ).
          t698 = |{ t706 }{ t700 }|.
          DATA t710 TYPE REF TO zcl_lnt_issue.
          CLEAR t710.
          DATA(t714) = VALUE string( ).
          DATA t715 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t715.
          DATA t722 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t722.
          DATA(t725) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t725 = t725 && |nABAP.md#no-empty-if-branches|.
          DATA(t726) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t726->has = abap_true.
          t726->value = t725.
          t722 = t726.
          DATA t728 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t728.
          DATA t732 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t732.
          DATA t733 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t733.
          CREATE OBJECT t733.
          t732 = t733.
          t732->load( ).
          APPEND |Styleguide| TO t732->items.
          t732->save( ).
          t732->load( ).
          APPEND |SingleFile| TO t732->items.
          t732->save( ).
          t728 = t732.
          DATA t740 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t740.
          DATA(t744) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t744->has = abap_true.
          t744->value = |IF foo = bar.\nENDIF.\n\nDO 2 TIMES.\nENDDO.|.
          t740 = t744.
          DATA t746 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t746.
          DATA(t749) = |LOOP AT itab WHERE qty = 0 OR date > sy-datum.\nENDLOOP.\nresu|.
          t749 = t749 && |lt = xsdbool( sy-subrc = 0 ).|.
          DATA(t750) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t750->has = abap_true.
          t750->value = t749.
          t746 = t750.
          DATA t752 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t752.
          CLEAR t752.
          DATA t754 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t754.
          CLEAR t754.
          t715 = NEW zcl_lnt_irule_metadata( i_key = |empty_structure| i_title = |Find empty blocks| i_short_description = |Checks that the code does not contain empty blocks.| i_bad_example = t740 i_good_example = t746 i_extended_information = t722 i_tags = t728 i_pragma = t752 i_pseudo_comment = t754 ).
          CREATE OBJECT t715->zlnt_view_ownkeys_b0e8086400eb.
          t715->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t756 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t756.
          t715->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t756 ).
          DATA t757 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t757.
          IF t715->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t715->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t757 ).
          ENDIF.
          DATA t758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t758.
          IF t715->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t715->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t758 ).
          ENDIF.
          DATA t759 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t759.
          IF t715->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t715->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t759 ).
          ENDIF.
          DATA t760 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t760.
          IF t715->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t715->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t760 ).
          ENDIF.
          DATA t761 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t761.
          IF t715->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t715->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t761 ).
          ENDIF.
          DATA t762 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t762.
          IF t715->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t715->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t762 ).
          ENDIF.
          CREATE OBJECT t715->zlnt_json_ownkeys_70e5fd461788.
          t715->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t764 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t764.
          t715->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t764 ).
          DATA t766 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t766.
          IF t715->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t715->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t766 ).
          ENDIF.
          DATA t768 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t768.
          IF t715->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t715->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t768 ).
          ENDIF.
          DATA t770 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t770.
          IF t715->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t715->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t770 ).
          ENDIF.
          DATA t772 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t772.
          IF t715->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t715->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t772 ).
          ENDIF.
          DATA t774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t774.
          IF t715->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t715->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t774 ).
          ENDIF.
          DATA t776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t776.
          IF t715->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t715->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t776 ).
          ENDIF.
          t714 = t715->key.
          DATA t777 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t777.
          t777 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t779 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t779.
          t710 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t696 i_message_26cb = t698 i_key = t714 i_severity = t777 i_fix = t779 ).
          t2->load( ).
          APPEND t710 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_empty_structure_conf.
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
        t1 = NEW zcl_lnt_empty_structure_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_em_st_ts_em_str( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_em_st_ts_em_str( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1496_37725c25a700.
  ENDMETHOD.
ENDCLASS.
