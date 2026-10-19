* TS: src/abap/5_syntax/statements/delete_cluster.ts:7:1 DeleteCluster
CLASS zcl_lnt_sy_delete_cluster DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_delete_cluster IMPLEMENTATION.
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
      CLEAR t11.
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
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    t21 = t1->find_expression_after_token( i_text = |DATABASE| ).
    IF xsdbool( t21 IS BOUND ) = abap_true.
      DATA t27 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t29 TYPE REF TO zcl_lnt_ddic.
      DATA t35 TYPE REF TO zif_lnt_registry.
      t35 = t2->scope->reg.
      t29 = NEW zcl_lnt_ddic( i_reg_f149 = t35 ).
      DATA t37 TYPE REF TO zcl_lnt_ilookup_result.
      IF xsdbool( t29 IS INITIAL ) = abap_true.
      ELSE.
        DATA t42 TYPE REF TO zcl_lnt_ddic.
        t42 = t29.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t47 TYPE string.
        t47 = t21->concat_tokens( ).
        DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t50->has = abap_true.
        t50->value = t47.
        t44 = t50.
        DATA t52 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t54 = t44.
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t58) = VALUE abap_bool( ).
        IF t54 IS INITIAL.
          t58 = abap_true.
        ELSEIF t54->has = abap_false.
          t58 = abap_true.
        ENDIF.
        IF t58 = abap_true.
          DATA t60 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t61 TYPE REF TO zcl_lnt_abstract_type.
          DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t61 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupTableOrView| i_qualified_name = t64 ).
          DATA t65 TYPE REF TO zif_lnt_object.
          t60 = NEW zcl_lnt_ilookup_result( i_type_9913 = t61 i_object_19cd = t65 ).
          CREATE OBJECT t60->zlnt_view_ownkeys_b0e8086400eb.
          t60->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t67 ).
          CREATE OBJECT t60->zlnt_json_ownkeys_70e5fd461788.
          t60->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t69 ).
          t52 = t60.
        ELSE.
          DATA t71 TYPE REF TO zcl_lnt_table.
          DATA t72 TYPE REF TO zcl_lnt_table.
          DATA t74 TYPE REF TO zif_lnt_registry.
          t74 = t42->reg.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t79->has = abap_true.
          t79->value = |TABL|.
          t76 = t79.
          DATA t83 TYPE string.
          t83 = t44->value.
          DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t85->has = abap_true.
          t85->value = t83.
          DATA t87 TYPE REF TO object.
          t87 = t74->get_object( i_type_9913 = t76 i_name = t85 ).
          t72 ?= t87.
          t71 = t72.
          DATA t88 TYPE REF TO zcl_lnt_ilookup_result.
          IF xsdbool( t71 IS BOUND ) = abap_true.
            DATA t91 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t92 TYPE REF TO zcl_lnt_abstract_type.
            DATA t94 TYPE REF TO zcl_lnt_table.
            t94 = t71.
            DATA t96 TYPE REF TO zif_lnt_registry.
            t96 = t42->reg.
            DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t92 = t94->parse_type( i_reg_f149 = t96 i_data_element = t98 i_description = t99 ).
            DATA t100 TYPE REF TO zif_lnt_object.
            t100 = t71.
            t91 = NEW zcl_lnt_ilookup_result( i_type_9913 = t92 i_object_19cd = t100 ).
            CREATE OBJECT t91->zlnt_view_ownkeys_b0e8086400eb.
            t91->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t103 ).
            DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t104 ).
            ENDIF.
            CREATE OBJECT t91->zlnt_json_ownkeys_70e5fd461788.
            t91->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t106 ).
            DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t108 ).
            ENDIF.
            t88 = t91.
          ELSE.
            DATA t110 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t115 TYPE string.
            t115 = t44->value.
            DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t117->has = abap_true.
            t117->value = t115.
            t110 = t42->lookup_ddls( i_name = t117 ).
            DATA t119 TYPE REF TO zcl_lnt_ilookup_result.
            IF xsdbool( t110 IS BOUND ) = abap_true.
              t119 = t110.
            ELSE.
              DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t128 TYPE string.
              t128 = t44->value.
              DATA(t130) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t130->has = abap_true.
              t130->value = t128.
              t125 = t130.
              DATA t132 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t134 = t125.
              DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA(t138) = VALUE abap_bool( ).
              IF t134 IS INITIAL.
                t138 = abap_true.
              ELSEIF t134->has = abap_false.
                t138 = abap_true.
              ENDIF.
              IF t138 = abap_true.
                DATA t140 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t141 TYPE REF TO zcl_lnt_abstract_type.
                DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t141 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupView| i_qualified_name = t144 ).
                DATA t145 TYPE REF TO zif_lnt_object.
                t140 = NEW zcl_lnt_ilookup_result( i_type_9913 = t141 i_object_19cd = t145 ).
                CREATE OBJECT t140->zlnt_view_ownkeys_b0e8086400eb.
                t140->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t147 ).
                CREATE OBJECT t140->zlnt_json_ownkeys_70e5fd461788.
                t140->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t149 ).
                t132 = t140.
              ELSE.
                DATA t151 TYPE REF TO zcl_lnt_table.
                DATA t152 TYPE REF TO zcl_lnt_table.
                DATA t154 TYPE REF TO zif_lnt_registry.
                t154 = t42->reg.
                DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t159) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t159->has = abap_true.
                t159->value = |VIEW|.
                t156 = t159.
                DATA t163 TYPE string.
                t163 = t125->value.
                DATA(t165) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t165->has = abap_true.
                t165->value = t163.
                DATA t167 TYPE REF TO object.
                t167 = t154->get_object( i_type_9913 = t156 i_name = t165 ).
                t152 ?= t167.
                t151 = t152.
                DATA t168 TYPE REF TO zcl_lnt_ilookup_result.
                IF xsdbool( t151 IS BOUND ) = abap_true.
                  DATA t171 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t172 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t174 TYPE REF TO zcl_lnt_table.
                  t174 = t151.
                  DATA t176 TYPE REF TO zif_lnt_registry.
                  t176 = t42->reg.
                  DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t172 = t174->parse_type( i_reg_f149 = t176 i_data_element = t178 i_description = t179 ).
                  DATA t180 TYPE REF TO zif_lnt_object.
                  t180 = t151.
                  t171 = NEW zcl_lnt_ilookup_result( i_type_9913 = t172 i_object_19cd = t180 ).
                  CREATE OBJECT t171->zlnt_view_ownkeys_b0e8086400eb.
                  t171->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t183 ).
                  DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t184 ).
                  ENDIF.
                  CREATE OBJECT t171->zlnt_json_ownkeys_70e5fd461788.
                  t171->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t186 ).
                  DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t188 ).
                  ENDIF.
                  t168 = t171.
                ELSE.
                  DATA t189 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t191 TYPE REF TO zif_lnt_registry.
                  t191 = t42->reg.
                  DATA t193 TYPE string.
                  t193 = t125->value.
                  IF t191->in_error_namespace( i_name = t193 ) = abap_true.
                    DATA t195 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t196 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t199 TYPE string.
                    t199 = t125->value.
                    DATA(t202) = strlen( t199 ).
                    DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t196 = NEW zcl_lnt_unknown_type( i_error = |{ t199 }{ | not found, lookupView| }| i_qualified_name = t203 ).
                    DATA t204 TYPE REF TO zif_lnt_object.
                    t195 = NEW zcl_lnt_ilookup_result( i_type_9913 = t196 i_object_19cd = t204 ).
                    CREATE OBJECT t195->zlnt_view_ownkeys_b0e8086400eb.
                    t195->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t206 ).
                    CREATE OBJECT t195->zlnt_json_ownkeys_70e5fd461788.
                    t195->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t195->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t208 ).
                    t189 = t195.
                  ELSE.
                    DATA t209 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t210 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t214 TYPE string.
                    t214 = t125->value.
                    DATA(t216) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t216->has = abap_true.
                    t216->value = t214.
                    DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t210 = zcl_lnt_void_type=>get_db65( i_voided = t216 i_qualified_name = t218 ).
                    DATA t219 TYPE REF TO zif_lnt_object.
                    t209 = NEW zcl_lnt_ilookup_result( i_type_9913 = t210 i_object_19cd = t219 ).
                    CREATE OBJECT t209->zlnt_view_ownkeys_b0e8086400eb.
                    t209->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t209->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t221 ).
                    CREATE OBJECT t209->zlnt_json_ownkeys_70e5fd461788.
                    t209->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t209->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t223 ).
                    t189 = t209.
                  ENDIF.
                  t168 = t189.
                ENDIF.
                t132 = t168.
              ENDIF.
              t119 = t132.
            ENDIF.
            t88 = t119.
          ENDIF.
          t52 = t88.
        ENDIF.
        t37 = t52.
      ENDIF.
      t27 = t37.
      DATA t225 TYPE REF TO zcl_lnt_ilookup_result.
      t225 = t27.
      IF xsdbool( t225 IS BOUND ) = abap_true.
        DATA t227 TYPE REF TO zif_lnt_ddic_references.
        t227 = t2->scope->reg->get_ddic_references( ).
        DATA t234 TYPE REF TO zif_lnt_object.
        t234 = t2->scope->parent_obj.
        DATA t242 TYPE REF TO zcl_lnt_iobject_and_token.
        DATA t247 TYPE REF TO zcl_lnt_abstract_token.
        DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t242 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t27->zlnt_view_read_sr_2de0200e6505( ) i_token = t247 i_filename = t249 ).
        CREATE OBJECT t242->zlnt_view_ownkeys_b0e8086400eb.
        t242->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t251 ).
        CREATE OBJECT t242->zlnt_json_ownkeys_70e5fd461788.
        t242->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t253 ).
        t227->add_using( i_obj_1ed0 = t234 i_using = t242 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d887_f705e396b8f6.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
