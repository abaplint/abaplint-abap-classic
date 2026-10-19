* TS: src/rules/intf_referencing_clas.ts:19:1 IntfReferencingClas
CLASS zcl_lnt_intf_referencing_clas DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_intf_rfrncng_cls_cnf.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_in_rf_cl_ts_in_rf_cl RETURNING VALUE(result) TYPE REF TO zcl_lnt_intf_rfrncng_cls_cnf.
    METHODS s_c_i_s_r_in_rf_cl_ts_in_rf_cl IMPORTING i_conf TYPE REF TO zcl_lnt_intf_rfrncng_cls_cnf.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS traverse IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_intf_referencing_clas IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_intf_rfrncng_cls_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA(t11) = |Only global interfaces are checked.\n      Only first level r|.
    t11 = t11 && |eferences are checked.\n      Exception class references are |.
    t11 = t11 && |ignored.\n      Void references are ignored.|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |intf_referencing_clas| i_title = |INTF referencing CLAS| i_short_description = |Interface contains references to class| i_bad_example = t14 i_good_example = t16 i_extended_information = t12 i_tags = t18 i_pragma = t20 i_pseudo_comment = t22 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t24 ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t25 ).
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t26 ).
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t27 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t29 ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t31 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t33 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t35 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_in_rf_cl_ts_in_rf_cl.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t3 = me->conf->zlnt_view_read_sr_a9eb3807f218( ).
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      DATA(t9) = me->conf.
      DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t10.
      t9->zlnt_view_write_s_2213d8b7ea7f( p0 = t10 ).
    ENDIF.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_in_rf_cl_ts_in_rf_cl.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD initialize.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_interface ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA(t11) = me->reg.
    DATA t12 TYPE REF TO zcl_lnt_ob_interface.
    DATA t14 TYPE REF TO object.
    t14 = t1.
    t12 ?= t14.
    result = me->traverse( i_node = NEW zcl_lnt_syntax_logic( i_reg_f149 = t11 i_object_19cd = t12 )->run( )->zlnt_view_read_sr_b6b1d9e0c93e( )->get_top( ) ).

  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE string.
    t4 = |Referencing CLAS: |.
    DATA t6 TYPE REF TO zcl_lnt_ddic.
    DATA(t8) = me->reg.
    t6 = NEW zcl_lnt_ddic( i_reg_f149 = t8 ).
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t9 = t1->get_data( )->references.
    DATA t12 TYPE REF TO zcl_lnt_ireference.
    DATA t13 TYPE REF TO object.
    DATA(t14) = VALUE i( ).
    DO.
      t9->load( ).
      IF t14 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t9->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      CLEAR t12.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t15 ?= t13.
        DATA t16 TYPE REF TO object.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      DATA(t17) = VALUE abap_bool( ).
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE abap_bool.
      t19 = xsdbool( t12->reference_type = |Object| ).
      t18 = t19.
      IF t19 = abap_true.
        DATA(t23) = VALUE abap_bool( ).
        DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t24.
        DATA t25 TYPE REF TO zcl_lnt_ireference_extras.
        t25 = t12->extra.
        DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t28.
        IF xsdbool( t25 IS INITIAL ) = abap_true.
          CLEAR t28.
        ELSE.
          t28 = t25->oo_type.
        ENDIF.
        t24 = t28.
        DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t35.
        DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t38->has = abap_true.
        t38->value = |CLAS|.
        t35 = t38.
        DATA(t40) = VALUE abap_bool( ).
        DATA(t41) = VALUE abap_bool( ).
        IF t24 IS BOUND.
          t40 = t24->has.
        ENDIF.
        IF t35 IS BOUND.
          t41 = t35->has.
        ENDIF.
        IF t40 = t41.
          IF t40 = abap_false.
            t23 = abap_true.
          ELSEIF t24->value = t35->value.
            t23 = abap_true.
          ENDIF.
        ENDIF.
        t18 = t23.
      ENDIF.
      t17 = t18.
      IF t18 = abap_true.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        DATA t45 TYPE REF TO zcl_lnt_ireference_extras.
        t45 = t12->extra.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        IF xsdbool( t45 IS INITIAL ) = abap_true.
          CLEAR t49.
        ELSE.
          t49 = t45->oo_name.
        ENDIF.
        t43 = t49.
        DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t55.
        DATA(t58) = VALUE abap_bool( ).
        IF t43 IS INITIAL.
          t58 = abap_true.
        ELSEIF t43->has = abap_false.
          t58 = abap_true.
        ENDIF.
        t17 = xsdbool( t58 = abap_false ).
      ENDIF.
      IF t17 = abap_true.
        DATA t60 TYPE REF TO zcl_lnt_class.
        CLEAR t60.
        DATA t62 TYPE REF TO zcl_lnt_class.
        CLEAR t62.
        DATA t63 TYPE REF TO zcl_lnt_class.
        CLEAR t63.
        DATA t64 TYPE REF TO zif_lnt_object.
        CLEAR t64.
        DATA(t65) = me->reg.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        DATA(t69) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t69->has = abap_true.
        t69->value = |CLAS|.
        t66 = t69.
        DATA t73 TYPE string.
        t73 = t12->extra->oo_name->value.
        DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t78->has = abap_true.
        t78->value = t73.
        t64 = t65->get_object( i_type_9913 = t66 i_name = t78 ).
        t63 ?= t64.
        t62 = t63.
        DATA t80 TYPE REF TO zcl_lnt_class.
        CLEAR t80.
        IF xsdbool( t62 IS BOUND ) = abap_true.
          t80 = t62.
        ELSE.
          CLEAR t80.
        ENDIF.
        t60 = t80.
        DATA t86 TYPE abap_bool.
        DATA t87 TYPE abap_bool.
        t87 = xsdbool( t60 IS BOUND ).
        t86 = t87.
        IF t87 = abap_true.
          DATA t92 TYPE REF TO zcl_lnt_class.
          t92 = t60.
          DATA t95 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t95.
          DATA t97 TYPE REF TO zcl_lnt_abap_file.
          t97 = t92->get_main_abap_file( ).
          DATA t100 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t100.
          IF xsdbool( t97 IS INITIAL ) = abap_true.
            CLEAR t100.
          ELSE.
            t100 = t97->info.
          ENDIF.
          t95 = t100.
          DATA t110 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t110.
          IF xsdbool( t95 IS INITIAL ) = abap_true.
            CLEAR t110.
          ELSE.
            DATA t115 TYPE REF TO zif_lnt_abap_file_information.
            t115 = t95.
            DATA t117 TYPE string.
            DATA t118 TYPE REF TO zcl_lnt_abstract_object.
            t118 = t92.
            t117 = t118->name.
            t110 = t115->get_class_definition_by_name( i_name = t117 ).
          ENDIF.
          t86 = t6->is_exception( i_def = t110 i_obj_ac26 = t60 ).
        ENDIF.
        IF t86 = abap_true.
          CONTINUE.
        ELSE.
          DATA t124 TYPE abap_bool.
          t124 = abap_false.
          DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          t126 = CAST zcl_lnt_intf_rfrncng_cls_cnf( me->g_c_i_s_r_in_rf_cl_ts_in_rf_cl( ) )->zlnt_view_read_sr_a9eb3807f218( ).
          DATA(t128) = VALUE string( ).
          t126->dense( ).
          DATA(t129) = VALUE i( ).
          DO.
            t126->load( ).
            IF t129 >= lines( t126->items ).
              EXIT.
            ENDIF.
            CLEAR t128.
            READ TABLE t126->items INDEX t129 + 1 INTO t128.
            IF t126->has( t129 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t129 = t129 + 1.
            DATA t131 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            CLEAR t131.
            CREATE OBJECT t131 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t128 flags = |i|.
            DATA t134 TYPE string.
            t134 = t12->extra->oo_name->value.
            IF t131->test( p0 = t134 ) = abap_true.
              t124 = abap_true.
              EXIT.
            ENDIF.
          ENDDO.
          IF t124 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
        DATA(t141) = t2.
        DATA t142 TYPE REF TO zcl_lnt_issue.
        CLEAR t142.
        DATA t143 TYPE REF TO zcl_lnt_fi_identifier.
        t143 = t12->position_7b94.
        DATA t145 TYPE string.
        DATA t147 TYPE string.
        t147 = t12->extra->oo_name->value.
        DATA(t152) = strlen( t4 ).
        t145 = |{ t4 }{ t147 }|.
        DATA(t153) = VALUE string( ).
        DATA t154 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t154.
        DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t161.
        DATA(t164) = |Only global interfaces are checked.\n      Only first level r|.
        t164 = t164 && |eferences are checked.\n      Exception class references are |.
        t164 = t164 && |ignored.\n      Void references are ignored.|.
        DATA(t165) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t165->has = abap_true.
        t165->value = t164.
        t161 = t165.
        DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t167.
        DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t169.
        DATA t171 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t171.
        DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t173.
        DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t175.
        t154 = NEW zcl_lnt_irule_metadata( i_key = |intf_referencing_clas| i_title = |INTF referencing CLAS| i_short_description = |Interface contains references to class| i_bad_example = t167 i_good_example = t169 i_extended_information = t161 i_tags = t171 i_pragma = t173 i_pseudo_comment = t175 ).
        CREATE OBJECT t154->zlnt_view_ownkeys_b0e8086400eb.
        t154->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        t154->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t177 ).
        DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t178.
        IF t154->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t154->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t178 ).
        ENDIF.
        DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t179.
        IF t154->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t154->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t179 ).
        ENDIF.
        DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t180.
        IF t154->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t154->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t180 ).
        ENDIF.
        CREATE OBJECT t154->zlnt_json_ownkeys_70e5fd461788.
        t154->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t182.
        t154->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t182 ).
        DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t184.
        IF t154->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t154->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t184 ).
        ENDIF.
        DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t186.
        IF t154->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t154->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t186 ).
        ENDIF.
        DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t188.
        IF t154->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t154->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t188 ).
        ENDIF.
        t153 = t154->key.
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t189 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t191 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t191.
        t142 = zcl_lnt_issue=>at_identifier( i_identifier = t143 i_message_26cb = t145 i_key = t153 i_severity = t189 i_fix = t191 ).
        t141->load( ).
        APPEND t142 TO t141->items.
        t141->save( ).
      ENDIF.
    ENDDO.
    DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t192 = t1->get_children( ).
    DATA t194 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t195 TYPE REF TO object.
    DATA(t196) = VALUE i( ).
    DO.
      t192->load( ).
      IF t196 >= lines( t192->items ).
        EXIT.
      ENDIF.
      CLEAR t195.
      READ TABLE t192->items INDEX t196 + 1 INTO t195.
      t196 = t196 + 1.
      DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t197.
      CLEAR t194.
      IF t195 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t197 ?= t195.
        DATA t198 TYPE REF TO object.
        t198 = t197->as_ref( ).
        t194 ?= t198.
      ELSE.
        t194 ?= t195.
      ENDIF.
      t2 = t2->concat( p0 = me->traverse( i_node = t194 ) ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_intf_rfrncng_cls_cnf( me->g_c_i_s_r_in_rf_cl_ts_in_rf_cl( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_intf_rfrncng_cls_cnf( me->g_c_i_s_r_in_rf_cl_ts_in_rf_cl( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_intf_rfrncng_cls_cnf.
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
        t2 = NEW zcl_lnt_intf_rfrncng_cls_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_in_rf_cl_ts_in_rf_cl( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1550_2a6d0e0be8d6.
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
