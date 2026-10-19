* TS: src/rules/index_completely_contained.ts:11:1 IndexCompletelyContained
CLASS zcl_lnt_indx_cmpltly_cntnd DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_indx_cmpltly_cntnd_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS i_i_sr_rl_in_cm_cn_ts_in_cm_cn RETURNING VALUE(result) TYPE REF TO zcl_lnt_indx_cmpltly_cntnd.
    METHODS g_c_i_s_r_in_cm_cn_ts_in_cm_cn RETURNING VALUE(result) TYPE REF TO zcl_lnt_indx_cmpltly_cntnd_cnf.
    METHODS s_c_i_s_r_in_cm_cn_ts_in_cm_cn IMPORTING i_conf TYPE REF TO zcl_lnt_indx_cmpltly_cntnd_cnf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_indx_cmpltly_cntnd IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_indx_cmpltly_cntnd_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |If indexes are completely contained in other indexes, they c|.
    t7 = t7 && |an be removed to improve performance.|.
    t6 = t7.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |Performance| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |index_completely_contained| i_title = |Check if database table indexes are completely contained| i_short_description = t6 i_bad_example = t20 i_good_example = t22 i_extended_information = t24 i_tags = t12 i_pragma = t26 i_pseudo_comment = t28 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t30 ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t31 ).
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t33 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t35 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t37 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t39 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t41 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD i_i_sr_rl_in_cm_cn_ts_in_cm_cn.
    result = me.

  ENDMETHOD.

  METHOD g_c_i_s_r_in_cm_cn_ts_in_cm_cn.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_in_cm_cn_ts_in_cm_cn.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_table ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zcl_lnt_table.
    DATA t9 TYPE REF TO zcl_lnt_table.
    DATA t11 TYPE REF TO object.
    t11 = t1.
    t9 ?= t11.
    t8 = t9.
    DATA t15 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t15 = t8->parsed_data.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t15 IS INITIAL ) = abap_true.
      t8->parse_xml( ).
    ENDIF.
    DATA t23 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t23 = t8->parsed_data.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t23 IS INITIAL ) = abap_true.
    ELSE.
      t26 = t23->secondary_indexes.
    ENDIF.
    t6 = t26.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = VALUE abap_bool( ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t34 = xsdbool( t6 IS INITIAL ).
    t33 = t34.
    IF t34 = abap_false.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t43 = t6.
      t43->load( ).
      t33 = xsdbool( lines( t43->items ) = 0 ).
    ENDIF.
    IF t33 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t47.
    DATA t49 TYPE i.
    t49 = 0.
    DO.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t54 = t6.
      t54->load( ).
      IF xsdbool( t49 < lines( t54->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t56 TYPE REF TO zcl_lnt_secondary_index.
      CLEAR t56.
      DATA t57 TYPE REF TO zcl_lnt_secondary_index.
      CLEAR t57.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t58 = t6.
      DATA(t60) = t49.
      t60 = t60 + 1.
      DATA t61 TYPE REF TO object.
      CLEAR t61.
      t58->load( ).
      CLEAR t61.
      READ TABLE t58->items INDEX t60 INTO t61.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      CLEAR t57.
      IF t61 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t62 ?= t61.
        DATA t63 TYPE REF TO object.
        t63 = t62->as_ref( ).
        t57 ?= t63.
      ELSE.
        t57 ?= t61.
      ENDIF.
      t56 = t57.
      DATA t64 TYPE i.
      t64 = 0.
      DO.
        DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t69 = t6.
        t69->load( ).
        IF xsdbool( t64 < lines( t69->items ) ) = abap_false.
          EXIT.
        ENDIF.
        IF xsdbool( t49 = t64 ) = abap_true.
          DATA(t76) = 1.
          t64 = t64 + t76.
          CONTINUE.
        ENDIF.
        DATA t77 TYPE REF TO zcl_lnt_secondary_index.
        CLEAR t77.
        DATA t78 TYPE REF TO zcl_lnt_secondary_index.
        CLEAR t78.
        DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t79 = t6.
        DATA(t81) = t64.
        t81 = t81 + 1.
        DATA t82 TYPE REF TO object.
        CLEAR t82.
        t79->load( ).
        CLEAR t82.
        READ TABLE t79->items INDEX t81 INTO t82.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        CLEAR t78.
        IF t82 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t83 ?= t82.
          DATA t84 TYPE REF TO object.
          t84 = t83->as_ref( ).
          t78 ?= t84.
        ELSE.
          t78 ?= t82.
        ENDIF.
        t77 = t78.
        DATA t85 TYPE abap_bool.
        t85 = abap_true.
        DATA t87 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t87 = t56->fields_464c.
        DATA(t89) = VALUE string( ).
        t87->dense( ).
        DATA(t90) = VALUE i( ).
        DO.
          t87->load( ).
          IF t90 >= lines( t87->items ).
            EXIT.
          ENDIF.
          CLEAR t89.
          READ TABLE t87->items INDEX t90 + 1 INTO t89.
          IF t87->has( t90 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t90 = t90 + 1.
          IF xsdbool( t77->fields_464c->indexof( p0 = t89 ) = -1 ) = abap_true.
            t85 = abap_false.
            EXIT.
          ENDIF.
        ENDDO.
        IF t85 = abap_true.
          DATA t100 TYPE REF TO zcl_lnt_position.
          DATA(t103) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t103->has = abap_true.
          t103->value = CONV f( 1 ).
          t100 = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t103 ).
          DATA(t104) = VALUE string( ).
          DATA(t106) = VALUE string( ).
          DATA(t107) = VALUE string( ).
          DATA(t108) = VALUE string( ).
          DATA(t109) = |Index "|.
          DATA(t110) = VALUE string( ).
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t111 = t56->name.
          DATA(t114) = VALUE string( ).
          DATA(t115) = VALUE abap_bool( ).
          IF t111 IS INITIAL.
            t115 = abap_true.
          ELSEIF t111->has = abap_false.
            t115 = abap_true.
          ENDIF.
          IF t115 = abap_true.
            t114 = |undefined|.
          ELSE.
            t114 = t111->value.
          ENDIF.
          t110 = t114.
          DATA(t120) = strlen( t109 ).
          t108 = |{ t109 }{ t110 }|.
          DATA(t122) = strlen( t108 ).
          t107 = |{ t108 }{ |" is completely contained in index "| }|.
          DATA(t123) = VALUE string( ).
          DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t124 = t77->name.
          DATA(t127) = VALUE string( ).
          DATA(t128) = VALUE abap_bool( ).
          IF t124 IS INITIAL.
            t128 = abap_true.
          ELSEIF t124->has = abap_false.
            t128 = abap_true.
          ENDIF.
          IF t128 = abap_true.
            t127 = |undefined|.
          ELSE.
            t127 = t124->value.
          ENDIF.
          t123 = t127.
          DATA(t133) = strlen( t107 ).
          t106 = |{ t107 }{ t123 }|.
          DATA(t135) = strlen( t106 ).
          t104 = |{ t106 }{ |"| }|.
          DATA t137 TYPE REF TO zcl_lnt_issue.
          CLEAR t137.
          DATA t138 TYPE REF TO zif_lnt_file.
          CLEAR t138.
          DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t140 TYPE REF TO zcl_lnt_abstract_object.
          DATA t141 TYPE REF TO zcl_lnt_table.
          DATA t143 TYPE REF TO object.
          t143 = t1.
          t141 ?= t143.
          t140 = t141.
          t139 = t140->files.
          DATA t146 TYPE REF TO object.
          CLEAR t146.
          t139->load( ).
          CLEAR t146.
          READ TABLE t139->items INDEX 1 INTO t146.
          DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t147.
          CLEAR t138.
          IF t146 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t147 ?= t146.
            DATA t148 TYPE REF TO object.
            t148 = t147->as_ref( ).
            t138 ?= t148.
          ELSE.
            t138 ?= t146.
          ENDIF.
          DATA(t151) = VALUE string( ).
          DATA t152 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t152.
          DATA t157 TYPE string.
          DATA(t158) = |If indexes are completely contained in other indexes, they c|.
          t158 = t158 && |an be removed to improve performance.|.
          t157 = t158.
          DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t159.
          DATA t163 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t163.
          t163->load( ).
          APPEND |Performance| TO t163->items.
          t163->save( ).
          t163->load( ).
          APPEND |SingleFile| TO t163->items.
          t163->save( ).
          t159 = t163.
          DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t171.
          DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t173.
          DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t175.
          DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t177.
          DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t179.
          t152 = NEW zcl_lnt_irule_metadata( i_key = |index_completely_contained| i_title = |Check if database table indexes are completely contained| i_short_description = t157 i_bad_example = t171 i_good_example = t173 i_extended_information = t175 i_tags = t159 i_pragma = t177 i_pseudo_comment = t179 ).
          CREATE OBJECT t152->zlnt_view_ownkeys_b0e8086400eb.
          t152->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t181.
          t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t181 ).
          DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t182.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t182 ).
          ENDIF.
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t183.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t183 ).
          ENDIF.
          DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t184.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t184 ).
          ENDIF.
          CREATE OBJECT t152->zlnt_json_ownkeys_70e5fd461788.
          t152->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t186.
          t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t186 ).
          DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t188.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t188 ).
          ENDIF.
          DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t190.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t190 ).
          ENDIF.
          DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t192.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t192 ).
          ENDIF.
          t151 = t152->key.
          DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t193 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t195 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t195.
          t137 = zcl_lnt_issue=>at_position( i_file = t138 i_start = t100 i_message_26cb = t104 i_key = t151 i_severity = t193 i_fix = t195 ).
          t47->load( ).
          APPEND t137 TO t47->items.
          t47->save( ).
        ENDIF.
        DATA(t198) = 1.
        t64 = t64 + t198.
      ENDDO.
      DATA(t201) = 1.
      t49 = t49 + t201.
    ENDDO.
    result = t47.

  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    result = CAST zcl_lnt_indx_cmpltly_cntnd( me->i_i_sr_rl_in_cm_cn_ts_in_cm_cn( ) ).

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_indx_cmpltly_cntnd_cnf( me->g_c_i_s_r_in_cm_cn_ts_in_cm_cn( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_indx_cmpltly_cntnd_cnf( me->g_c_i_s_r_in_cm_cn_ts_in_cm_cn( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_indx_cmpltly_cntnd_cnf.
    IF t1 IS BOUND.
      IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t1->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t1->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_indx_cmpltly_cntnd_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_in_cm_cn_ts_in_cm_cn( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1546_3eceddb8f47f.
  ENDMETHOD.

  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config.
    me->get_config( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~set_config.
    me->set_config( i_conf = i_conf ).
  ENDMETHOD.

  METHOD zif_lnt_rule~initialize.
    result = me->initialize( i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~run.
    result = me->run( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value( ).
  ENDMETHOD.
ENDCLASS.
