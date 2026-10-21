* TS: src/abap/5_syntax/statements/create_data.ts:13:1 CreateData
CLASS zcl_lnt_sy_create_data DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_create_data IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t3 = t1->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t12.
      t12 = t6.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t20.
      t11 = zcl_lnt_sy_source=>run_syntax( i_node = t12 i_input_967e = t2 i_target_type = t17 i_write_reference = t18 i_allow_generic_deference = t19 i_read_reference = t20 ).
    ENDDO.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t21 = t1->find_direct_expressions( i_type_9913 = t23 ).
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    DATA t25 TYPE REF TO object.
    DATA(t26) = VALUE i( ).
    DO.
      t21->load( ).
      IF t26 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t25.
      READ TABLE t21->items INDEX t26 + 1 INTO t25.
      t26 = t26 + 1.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t24.
      IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t25.
        DATA t28 TYPE REF TO object.
        t28 = t27->as_ref( ).
        t24 ?= t28.
      ELSE.
        t24 ?= t25.
      ENDIF.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      t29 = zcl_lnt_sy_target=>run_syntax( i_node = t24 i_input_967e = t2 ).
    ENDDO.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t32 = t1->find_direct_expressions( i_type_9913 = t34 ).
    DATA t35 TYPE REF TO zcl_lnt_expression_node.
    DATA t36 TYPE REF TO object.
    DATA(t37) = VALUE i( ).
    DO.
      t32->load( ).
      IF t37 >= lines( t32->items ).
        EXIT.
      ENDIF.
      CLEAR t36.
      READ TABLE t32->items INDEX t37 + 1 INTO t36.
      t37 = t37 + 1.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      CLEAR t35.
      IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t38 ?= t36.
        DATA t39 TYPE REF TO object.
        t39 = t38->as_ref( ).
        t35 ?= t39.
      ELSE.
        t35 ?= t36.
      ENDIF.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t35 i_input_967e = t2 ).
    ENDDO.
    DATA t42 TYPE REF TO zcl_lnt_expression_node.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    t42 = t1->find_direct_expression( i_type_9913 = t45 ).
    IF xsdbool( t42 IS BOUND ) = abap_true.
      DATA t48 TYPE REF TO zcl_lnt_abstract_type.
      DATA t57 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t48 = NEW zcl_lnt_basic_types( i_input_967e = t2 )->resolve_type_name( i_type_name = t42 i_length = t57 i_decimals_2eed = t58 i_qualified_name = t59 ).
      IF xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_true.
        DATA(t63) = VALUE i( ).
        DATA t64 TYPE string.
        DATA t65 TYPE string.
        t65 = t1->concat_tokens( ).
        DATA(t67) = strlen( t65 ).
        t64 = t65.
        IF t64 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t64 TO UPPER CASE.
        ELSE.
          t64 = zlnt_runtime_uppe_91169605024d=>full( t64 ).
        ENDIF.
        DATA(t68) = | REF TO |.
        DATA(t69) = strlen( t64 ).
        IF t68 IS INITIAL.
          t63 = 0.
        ELSE.
          FIND t68 IN t64 MATCH OFFSET t63.
          IF sy-subrc <> 0.
            t63 = -1.
          ENDIF.
        ENDIF.
        IF xsdbool( t63 >= 0 ) = abap_true.
          DATA t71 TYPE REF TO zif_lnt_interface_definition.
          DATA t73 TYPE REF TO zcl_lnt_current_scope.
          t73 = t2->scope.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t79 TYPE string.
          t79 = t42->concat_tokens( ).
          DATA(t82) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t82->has = abap_true.
          t82->value = t79.
          t76 = t82.
          DATA t84 TYPE REF TO zif_lnt_interface_definition.
          DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t86 = t76.
          DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t90) = VALUE abap_bool( ).
          IF t86 IS INITIAL.
            t90 = abap_true.
          ELSEIF t86->has = abap_false.
            t90 = abap_true.
          ENDIF.
          IF t90 = abap_true.
          ELSE.
            DATA t94 TYPE REF TO zif_lnt_class_definition.
            DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t99 TYPE string.
            t99 = t76->value.
            DATA(t101) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t101->has = abap_true.
            t101->value = t99.
            t96 = t101.
            DATA t103 TYPE REF TO zif_lnt_class_definition.
            DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t105 = t96.
            DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t109) = VALUE abap_bool( ).
            IF t105 IS INITIAL.
              t109 = abap_true.
            ELSEIF t105->has = abap_false.
              t109 = abap_true.
            ENDIF.
            IF t109 = abap_true.
            ELSE.
              DATA t113 TYPE REF TO zif_lnt_class_definition.
              DATA t115 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t115 = t73->current.
              DATA t118 TYPE REF TO zif_lnt_class_definition.
              IF xsdbool( t115 IS INITIAL ) = abap_true.
              ELSE.
                DATA t123 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t123 = t115.
                DATA t125 TYPE string.
                t125 = t96->value.
                t118 = t123->find_class_definition( i_name = t125 ).
              ENDIF.
              t113 = t118.
              DATA t127 TYPE REF TO zif_lnt_class_definition.
              IF xsdbool( t113 IS BOUND ) = abap_true.
                t127 = t113.
              ELSE.
                DATA t136 TYPE REF TO zcl_lnt_class.
                DATA t137 TYPE REF TO zcl_lnt_class.
                DATA t139 TYPE REF TO zif_lnt_registry.
                t139 = t73->reg.
                DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t144) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t144->has = abap_true.
                t144->value = |CLAS|.
                t141 = t144.
                DATA t148 TYPE string.
                t148 = t96->value.
                DATA(t150) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t150->has = abap_true.
                t150->value = t148.
                DATA t152 TYPE REF TO object.
                t152 = t139->get_object( i_type_9913 = t141 i_name = t150 ).
                t137 ?= t152.
                t136 = t137.
                DATA t153 TYPE REF TO zif_lnt_class_definition.
                IF xsdbool( t136 IS BOUND ) = abap_true.
                  t153 = t136->gt_dfn_ins_src_obj_cls_ts_clss( ).
                ELSE.
                  CLEAR t153.
                ENDIF.
                t127 = t153.
              ENDIF.
              t103 = t127.
            ENDIF.
            t94 = t103.
            DATA t160 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t94 IS BOUND ) = abap_true.
              DATA t163 TYPE REF TO zif_lnt_interface_definition.
              t163 ?= t94.
              t160 = t163.
            ELSE.
              DATA t167 TYPE REF TO zif_lnt_interface_definition.
              DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t172 TYPE string.
              t172 = t76->value.
              DATA(t174) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t174->has = abap_true.
              t174->value = t172.
              t169 = t174.
              DATA t176 TYPE REF TO zif_lnt_interface_definition.
              DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t178 = t169.
              DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA(t182) = VALUE abap_bool( ).
              IF t178 IS INITIAL.
                t182 = abap_true.
              ELSEIF t178->has = abap_false.
                t182 = abap_true.
              ENDIF.
              IF t182 = abap_true.
              ELSE.
                DATA t186 TYPE REF TO zif_lnt_interface_definition.
                DATA t188 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t188 = t73->current.
                DATA t191 TYPE REF TO zif_lnt_interface_definition.
                IF xsdbool( t188 IS INITIAL ) = abap_true.
                ELSE.
                  DATA t196 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  t196 = t188.
                  DATA t198 TYPE string.
                  t198 = t169->value.
                  t191 = t196->find_interface_definition( i_name = t198 ).
                ENDIF.
                t186 = t191.
                DATA t200 TYPE REF TO zif_lnt_interface_definition.
                IF xsdbool( t186 IS BOUND ) = abap_true.
                  t200 = t186.
                ELSE.
                  DATA t209 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t210 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t212 TYPE REF TO zif_lnt_registry.
                  t212 = t73->reg.
                  DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t217) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t217->has = abap_true.
                  t217->value = |INTF|.
                  t214 = t217.
                  DATA t221 TYPE string.
                  t221 = t169->value.
                  DATA(t223) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t223->has = abap_true.
                  t223->value = t221.
                  DATA t225 TYPE REF TO object.
                  t225 = t212->get_object( i_type_9913 = t214 i_name = t223 ).
                  t210 ?= t225.
                  t209 = t210.
                  DATA t226 TYPE REF TO zif_lnt_interface_definition.
                  IF xsdbool( t209 IS BOUND ) = abap_true.
                    t226 = t209->def.
                  ELSE.
                    CLEAR t226.
                  ENDIF.
                  t200 = t226.
                ENDIF.
                t176 = t200.
              ENDIF.
              t167 = t176.
              DATA t236 TYPE REF TO zif_lnt_interface_definition.
              IF xsdbool( t167 IS BOUND ) = abap_true.
                t236 = t167.
              ELSE.
                CLEAR t236.
              ENDIF.
              t160 = t236.
            ENDIF.
            t84 = t160.
          ENDIF.
          t71 = t84.
          IF xsdbool( t71 IS BOUND ) = abap_true.
            DATA t247 TYPE REF TO zcl_lnt_current_scope.
            t247 = t2->scope.
            DATA t249 TYPE REF TO zcl_lnt_abstract_token.
            t249 = t42->get_first_token( ).
            DATA t255 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t257 TYPE REF TO zcl_lnt_fi_identifier.
            t257 ?= t71.
            t255 = t257.
            DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CREATE OBJECT t261.
            t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t261->sval = |Type|.
            DATA t263 TYPE string.
            t263 = t2->filename.
            DATA t265 TYPE REF TO zcl_lnt_ireference_extras.
            t247->add_reference( i_usage = t249 i_referencing = t255 i_type_9913 = t261 i_filename = t263 i_extra = t265 ).
          ELSE.
            DATA t267 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t268 TYPE REF TO zcl_lnt_abstract_token.
            t268 = t42->get_first_token( ).
            DATA t271 TYPE string.
            t271 = t2->filename.
            DATA t273 TYPE REF TO zcl_lnt_unknown_type.
            t273 ?= t48.
            DATA t275 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t267 = NEW zcl_lnt_typed_identifier( i_token = t268 i_filename = t271 i_type_9913 = t273 i_meta = t275 i_value = t276 ).
            DATA t277 TYPE REF TO zcl_lnt_current_scope.
            t277 = t2->scope.
            DATA t279 TYPE REF TO zcl_lnt_abstract_token.
            t279 = t42->get_first_token( ).
            DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CREATE OBJECT t286.
            t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t286->sval = |Type|.
            DATA t288 TYPE string.
            t288 = t2->filename.
            DATA t290 TYPE REF TO zcl_lnt_ireference_extras.
            t277->add_reference( i_usage = t279 i_referencing = t267 i_type_9913 = t286 i_filename = t288 i_extra = t290 ).
          ENDIF.
        ELSE.
          DATA t292 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t293 TYPE REF TO zcl_lnt_abstract_token.
          t293 = t42->get_first_token( ).
          DATA t296 TYPE string.
          t296 = t2->filename.
          DATA t298 TYPE REF TO zcl_lnt_unknown_type.
          t298 ?= t48.
          DATA t300 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t292 = NEW zcl_lnt_typed_identifier( i_token = t293 i_filename = t296 i_type_9913 = t298 i_meta = t300 i_value = t301 ).
          DATA t302 TYPE REF TO zcl_lnt_current_scope.
          t302 = t2->scope.
          DATA t304 TYPE REF TO zcl_lnt_abstract_token.
          t304 = t42->get_first_token( ).
          DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t311.
          t311->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t311->sval = |Type|.
          DATA t313 TYPE string.
          t313 = t2->filename.
          DATA t315 TYPE REF TO zcl_lnt_ireference_extras.
          t302->add_reference( i_usage = t304 i_referencing = t292 i_type_9913 = t311 i_filename = t313 i_extra = t315 ).
        ENDIF.
      ENDIF.
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d884_00ae71c368d2.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
