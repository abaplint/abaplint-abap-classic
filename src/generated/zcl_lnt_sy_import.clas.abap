* TS: src/abap/5_syntax/statements/import.ts:8:1 Import
CLASS zcl_lnt_sy_import DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_import IMPLEMENTATION.
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
    DATA t32 TYPE REF TO zcl_lnt_expression_node.
    t32 = t1->find_expression_after_token( i_text = |DATABASE| ).
    IF xsdbool( t32 IS BOUND ) = abap_true.
      DATA t38 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t40 TYPE REF TO zcl_lnt_ddic.
      DATA t46 TYPE REF TO zif_lnt_registry.
      t46 = t2->scope->reg.
      t40 = NEW zcl_lnt_ddic( i_reg_f149 = t46 ).
      DATA t48 TYPE REF TO zcl_lnt_ilookup_result.
      IF xsdbool( t40 IS INITIAL ) = abap_true.
      ELSE.
        DATA t53 TYPE REF TO zcl_lnt_ddic.
        t53 = t40.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t58 TYPE string.
        t58 = t32->concat_tokens( ).
        DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t61->has = abap_true.
        t61->value = t58.
        t55 = t61.
        DATA t63 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t65 = t55.
        DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t69) = VALUE abap_bool( ).
        IF t65 IS INITIAL.
          t69 = abap_true.
        ELSEIF t65->has = abap_false.
          t69 = abap_true.
        ENDIF.
        IF t69 = abap_true.
          DATA t71 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t72 TYPE REF TO zcl_lnt_abstract_type.
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t72 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupTableOrView| i_qualified_name = t75 ).
          DATA t76 TYPE REF TO zif_lnt_object.
          t71 = NEW zcl_lnt_ilookup_result( i_type_9913 = t72 i_object_19cd = t76 ).
          CREATE OBJECT t71->zlnt_view_ownkeys_b0e8086400eb.
          t71->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t71->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t78 ).
          CREATE OBJECT t71->zlnt_json_ownkeys_70e5fd461788.
          t71->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t80 ).
          t63 = t71.
        ELSE.
          DATA t82 TYPE REF TO zcl_lnt_table.
          DATA t83 TYPE REF TO zcl_lnt_table.
          DATA t85 TYPE REF TO zif_lnt_registry.
          t85 = t53->reg.
          DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t90) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t90->has = abap_true.
          t90->value = |TABL|.
          t87 = t90.
          DATA t94 TYPE string.
          t94 = t55->value.
          DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t96->has = abap_true.
          t96->value = t94.
          DATA t98 TYPE REF TO object.
          t98 = t85->get_object( i_type_9913 = t87 i_name = t96 ).
          t83 ?= t98.
          t82 = t83.
          DATA t99 TYPE REF TO zcl_lnt_ilookup_result.
          IF xsdbool( t82 IS BOUND ) = abap_true.
            DATA t102 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t103 TYPE REF TO zcl_lnt_abstract_type.
            DATA t105 TYPE REF TO zcl_lnt_table.
            t105 = t82.
            DATA t107 TYPE REF TO zif_lnt_registry.
            t107 = t53->reg.
            DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t103 = t105->parse_type( i_reg_f149 = t107 i_data_element = t109 i_description = t110 ).
            DATA t111 TYPE REF TO zif_lnt_object.
            t111 = t82.
            t102 = NEW zcl_lnt_ilookup_result( i_type_9913 = t103 i_object_19cd = t111 ).
            CREATE OBJECT t102->zlnt_view_ownkeys_b0e8086400eb.
            t102->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t114 ).
            DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t115 ).
            ENDIF.
            CREATE OBJECT t102->zlnt_json_ownkeys_70e5fd461788.
            t102->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t117 ).
            DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t119 ).
            ENDIF.
            t99 = t102.
          ELSE.
            DATA t121 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t126 TYPE string.
            t126 = t55->value.
            DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t128->has = abap_true.
            t128->value = t126.
            t121 = t53->lookup_ddls( i_name = t128 ).
            DATA t130 TYPE REF TO zcl_lnt_ilookup_result.
            IF xsdbool( t121 IS BOUND ) = abap_true.
              t130 = t121.
            ELSE.
              DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t139 TYPE string.
              t139 = t55->value.
              DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t141->has = abap_true.
              t141->value = t139.
              t136 = t141.
              DATA t143 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t145 = t136.
              DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA(t149) = VALUE abap_bool( ).
              IF t145 IS INITIAL.
                t149 = abap_true.
              ELSEIF t145->has = abap_false.
                t149 = abap_true.
              ENDIF.
              IF t149 = abap_true.
                DATA t151 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t152 TYPE REF TO zcl_lnt_abstract_type.
                DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t152 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupView| i_qualified_name = t155 ).
                DATA t156 TYPE REF TO zif_lnt_object.
                t151 = NEW zcl_lnt_ilookup_result( i_type_9913 = t152 i_object_19cd = t156 ).
                CREATE OBJECT t151->zlnt_view_ownkeys_b0e8086400eb.
                t151->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t158 ).
                CREATE OBJECT t151->zlnt_json_ownkeys_70e5fd461788.
                t151->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t160 ).
                t143 = t151.
              ELSE.
                DATA t162 TYPE REF TO zcl_lnt_table.
                DATA t163 TYPE REF TO zcl_lnt_table.
                DATA t165 TYPE REF TO zif_lnt_registry.
                t165 = t53->reg.
                DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t170) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t170->has = abap_true.
                t170->value = |VIEW|.
                t167 = t170.
                DATA t174 TYPE string.
                t174 = t136->value.
                DATA(t176) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t176->has = abap_true.
                t176->value = t174.
                DATA t178 TYPE REF TO object.
                t178 = t165->get_object( i_type_9913 = t167 i_name = t176 ).
                t163 ?= t178.
                t162 = t163.
                DATA t179 TYPE REF TO zcl_lnt_ilookup_result.
                IF xsdbool( t162 IS BOUND ) = abap_true.
                  DATA t182 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t183 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t185 TYPE REF TO zcl_lnt_table.
                  t185 = t162.
                  DATA t187 TYPE REF TO zif_lnt_registry.
                  t187 = t53->reg.
                  DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t183 = t185->parse_type( i_reg_f149 = t187 i_data_element = t189 i_description = t190 ).
                  DATA t191 TYPE REF TO zif_lnt_object.
                  t191 = t162.
                  t182 = NEW zcl_lnt_ilookup_result( i_type_9913 = t183 i_object_19cd = t191 ).
                  CREATE OBJECT t182->zlnt_view_ownkeys_b0e8086400eb.
                  t182->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t194 ).
                  DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t195 ).
                  ENDIF.
                  CREATE OBJECT t182->zlnt_json_ownkeys_70e5fd461788.
                  t182->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t197 ).
                  DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t199 ).
                  ENDIF.
                  t179 = t182.
                ELSE.
                  DATA t200 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t202 TYPE REF TO zif_lnt_registry.
                  t202 = t53->reg.
                  DATA t204 TYPE string.
                  t204 = t136->value.
                  IF t202->in_error_namespace( i_name = t204 ) = abap_true.
                    DATA t206 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t207 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t210 TYPE string.
                    t210 = t136->value.
                    DATA(t213) = strlen( t210 ).
                    DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t207 = NEW zcl_lnt_unknown_type( i_error = |{ t210 }{ | not found, lookupView| }| i_qualified_name = t214 ).
                    DATA t215 TYPE REF TO zif_lnt_object.
                    t206 = NEW zcl_lnt_ilookup_result( i_type_9913 = t207 i_object_19cd = t215 ).
                    CREATE OBJECT t206->zlnt_view_ownkeys_b0e8086400eb.
                    t206->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t206->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t217 ).
                    CREATE OBJECT t206->zlnt_json_ownkeys_70e5fd461788.
                    t206->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t206->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t219 ).
                    t200 = t206.
                  ELSE.
                    DATA t220 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t221 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t225 TYPE string.
                    t225 = t136->value.
                    DATA(t227) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t227->has = abap_true.
                    t227->value = t225.
                    DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t221 = zcl_lnt_void_type=>get_db65( i_voided = t227 i_qualified_name = t229 ).
                    DATA t230 TYPE REF TO zif_lnt_object.
                    t220 = NEW zcl_lnt_ilookup_result( i_type_9913 = t221 i_object_19cd = t230 ).
                    CREATE OBJECT t220->zlnt_view_ownkeys_b0e8086400eb.
                    t220->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t220->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t232 ).
                    CREATE OBJECT t220->zlnt_json_ownkeys_70e5fd461788.
                    t220->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t220->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t234 ).
                    t200 = t220.
                  ENDIF.
                  t179 = t200.
                ENDIF.
                t143 = t179.
              ENDIF.
              t130 = t143.
            ENDIF.
            t99 = t130.
          ENDIF.
          t63 = t99.
        ENDIF.
        t48 = t63.
      ENDIF.
      t38 = t48.
      DATA t236 TYPE REF TO zcl_lnt_ilookup_result.
      t236 = t38.
      IF xsdbool( t236 IS BOUND ) = abap_true.
        DATA t238 TYPE REF TO zif_lnt_ddic_references.
        t238 = t2->scope->reg->get_ddic_references( ).
        DATA t245 TYPE REF TO zif_lnt_object.
        t245 = t2->scope->parent_obj.
        DATA t253 TYPE REF TO zcl_lnt_iobject_and_token.
        DATA t258 TYPE REF TO zcl_lnt_abstract_token.
        DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t253 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t38->zlnt_view_read_sr_2de0200e6505( ) i_token = t258 i_filename = t260 ).
        CREATE OBJECT t253->zlnt_view_ownkeys_b0e8086400eb.
        t253->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t253->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t262 ).
        CREATE OBJECT t253->zlnt_json_ownkeys_70e5fd461788.
        t253->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t253->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t264 ).
        t238->add_using( i_obj_1ed0 = t245 i_using = t253 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d916_7553f99b23c9.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
