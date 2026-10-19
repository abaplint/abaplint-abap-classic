* TS: src/abap/types/function_module_definition.ts:25:1 FunctionModuleDefinition
CLASS zcl_lnt_fnctn_mdl_dfntn DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA name TYPE string.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA parameters TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA global_parameters TYPE abap_bool.
    DATA module_type TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_data_dc02 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS get_parameters RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_module_type RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_description RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_name RETURNING VALUE(result) TYPE string.
    METHODS is_global_parameters RETURNING VALUE(result) TYPE abap_bool.
    METHODS parse IMPORTING i_data_dc02 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_fnctn_mdl_dfntn IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_data_dc02.
    me->parse( i_data_dc02 = t2 ).
  ENDMETHOD.

  METHOD get_parameters.
    result = me->parameters.

  ENDMETHOD.

  METHOD get_module_type.
    result = me->module_type.

  ENDMETHOD.

  METHOD get_description.
    result = me->description.

  ENDMETHOD.

  METHOD get_name.
    DATA(t1) = CONV string( me->name ).
    result = t1.

  ENDMETHOD.

  METHOD is_global_parameters.
    DATA(t1) = CONV abap_bool( me->global_parameters ).
    result = t1.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = i_data_dc02.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4 = t1->get( p0 = |FUNCNAME| ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      DATA t11 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t12 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t16->has = abap_true.
      t16->value = |Function module name undefined|.
      t12 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t16 ).
      t11 = NEW #( ).
      t11->payload = t12.
      CLEAR t11->source_value.
      DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t19 TYPE REF TO object.
      t19 = t12.
      TRY.
          t11->source_value ?= t19.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t11->source_value IS NOT BOUND.
        TRY.
            t18 ?= t12.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t18 IS BOUND.
          t11->source_value = t18->source( ).
        ENDIF.
        IF t11->source_value IS NOT BOUND.
          CREATE OBJECT t11->source_value.
          t11->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t11->source_value->oval = t12.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t11.
    ENDIF.
    me->name = t1->get( p0 = |FUNCNAME| )->as_string( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `name`.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t24 = t1->get( p0 = |SHORT_TEXT| ).
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t24 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t32) = VALUE string( ).
      t32 = t24->as_string( ).
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t32.
      t28 = t34.
    ENDIF.
    me->description = t28.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t35.
    me->parameters = t35.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parameters`.
    DATA(t36) = VALUE abap_bool( ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t37 = t1->get( p0 = |GLOBAL_FLAG| ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t40.
    t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t40->sval = |X|.
    IF t37 IS NOT BOUND.
      t36 = xsdbool( t40 IS NOT BOUND ).
    ELSE.
      t36 = t37->strict_equals( t40 ).
    ENDIF.
    me->global_parameters = t36.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalParameters`.
    DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t45->has = abap_true.
    t45->value = |regular|.
    me->module_type = t45.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `moduleType`.
    DATA(t47) = VALUE abap_bool( ).
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t48 = t1->get( p0 = |REMOTE_CALL| ).
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t51.
    t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t51->sval = |R|.
    IF t48 IS NOT BOUND.
      t47 = xsdbool( t51 IS NOT BOUND ).
    ELSE.
      t47 = t48->strict_equals( t51 ).
    ENDIF.
    IF t47 = abap_true.
      DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t56->has = abap_true.
      t56->value = |remoteEnabled|.
      me->module_type = t56.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `moduleType`.
    ELSE.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t60 = t1->get( p0 = |UPDATE_TASK| ).
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( xsdbool( t60 IS INITIAL ) = abap_false ) = abap_true.
        DATA(t71) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t71->has = abap_true.
        t71->value = |update|.
        me->module_type = t71.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `moduleType`.
      ENDIF.
    ENDIF.
    DATA(t73) = VALUE abap_bool( ).
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t74 = t1->get( p0 = |IMPORT| ).
    IF t74 IS BOUND.
      t73 = t74->truth( ).
    ENDIF.
    IF t73 = abap_true.
      DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t77 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t1->get( p0 = |IMPORT| )->get( p0 = |RSIMP| ) ).
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t84 TYPE REF TO object.
      DATA(t85) = VALUE i( ).
      DO.
        t77->load( ).
        IF t85 >= lines( t77->items ).
          EXIT.
        ENDIF.
        CLEAR t84.
        READ TABLE t77->items INDEX t85 + 1 INTO t84.
        t85 = t85 + 1.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        CLEAR t83.
        IF t84 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t86 ?= t84.
          t83 = t86.
        ELSE.
          IF t84 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
            DATA t87 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            CLEAR t87.
            t87 ?= t84.
            CLEAR t83.
            IF t87 IS BOUND.
              CREATE OBJECT t83.
              t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
              t83->cval = t87.
            ENDIF.
          ELSE.
            CLEAR t83.
            IF t84 IS BOUND.
              DATA t88 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t88.
              DATA t89 TYPE REF TO object.
              CLEAR t89.
              CLEAR t88.
              t89 = t84.
              TRY.
                  t83 ?= t89.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t83 IS NOT BOUND.
                TRY.
                    t88 ?= t84.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t88 IS BOUND.
                  t83 = t88->source( ).
                ENDIF.
                IF t83 IS NOT BOUND.
                  CREATE OBJECT t83.
                  t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t83->oval = t84.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        t92 = t83->get( p0 = |PARAMETER| ).
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        CLEAR t95.
        IF xsdbool( t92 IS INITIAL ) = abap_true.
          DATA t99 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
          CLEAR t99.
          DATA t100 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
          CLEAR t100.
          DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t104->has = abap_true.
          t104->value = |Function module name parameter undefined, importing|.
          t100 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t104 ).
          t99 = NEW #( ).
          t99->payload = t100.
          CLEAR t99->source_value.
          DATA t106 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t106.
          DATA t107 TYPE REF TO object.
          CLEAR t107.
          CLEAR t106.
          t107 = t100.
          TRY.
              t99->source_value ?= t107.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t99->source_value IS NOT BOUND.
            TRY.
                t106 ?= t100.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t106 IS BOUND.
              t99->source_value = t106->source( ).
            ENDIF.
            IF t99->source_value IS NOT BOUND.
              CREATE OBJECT t99->source_value.
              t99->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t99->source_value->oval = t100.
            ENDIF.
          ENDIF.
          RAISE EXCEPTION t99.
        ENDIF.
        DATA(t108) = me->parameters.
        DATA t109 TYPE REF TO zcl_lnt_ifnctn_mdl_prmtr.
        CLEAR t109.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        t110 = t83->get( p0 = |PARAMETER| ).
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t114.
        t114 = t83->get( p0 = |DEFAULT| ).
        DATA t118 TYPE REF TO zcl_lnt_ifnctn_mdl_prmtr.
        CLEAR t118.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t119.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t120.
        IF xsdbool( t110 IS INITIAL ) = abap_true.
          CLEAR t120.
        ELSE.
          DATA(t124) = VALUE string( ).
          t124 = t110->as_string( ).
          DATA(t126) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t126->has = abap_true.
          t126->value = t124.
          t120 = t126.
        ENDIF.
        t119 = t120.
        DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t129.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        t131 = t83->get( p0 = |TYP| ).
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        t135 = t131.
        DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t137.
        t137 = t83->get( p0 = |DBFIELD| ).
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t141.
        DATA(t142) = VALUE abap_bool( ).
        IF t131 IS BOUND.
          t142 = t131->truth( ).
        ENDIF.
        IF t142 = abap_true.
          DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t144.
          IF xsdbool( t135 IS INITIAL ) = abap_true.
            CLEAR t144.
          ELSE.
            DATA(t148) = VALUE string( ).
            t148 = t135->as_string( ).
            DATA(t150) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t150->has = abap_true.
            t150->value = t148.
            t144 = t150.
          ENDIF.
          t141 = t144.
        ELSE.
          DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t151.
          IF xsdbool( t137 IS INITIAL ) = abap_true.
            CLEAR t151.
          ELSE.
            DATA(t155) = VALUE string( ).
            t155 = t137->as_string( ).
            DATA(t157) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t157->has = abap_true.
            t157->value = t155.
            t151 = t157.
          ENDIF.
          t141 = t151.
        ENDIF.
        t129 = t141.
        DATA(t158) = VALUE abap_bool( ).
        DATA(t159) = VALUE abap_bool( ).
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        t160 = t83->get( p0 = |OPTIONAL| ).
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        CLEAR t163.
        CREATE OBJECT t163.
        t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t163->sval = |X|.
        IF t160 IS NOT BOUND.
          t159 = xsdbool( t163 IS NOT BOUND ).
        ELSE.
          t159 = t160->strict_equals( t163 ).
        ENDIF.
        t158 = t159.
        DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t165.
        DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t166.
        IF xsdbool( t114 IS INITIAL ) = abap_true.
          CLEAR t166.
        ELSE.
          DATA(t170) = VALUE string( ).
          t170 = t114->as_string( ).
          DATA(t172) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t172->has = abap_true.
          t172->value = t170.
          t166 = t172.
        ENDIF.
        t165 = t166.
        DATA(t176) = VALUE abap_bool( ).
        DATA(t177) = VALUE abap_bool( ).
        DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t178.
        t178 = t83->get( p0 = |REFERENCE| ).
        DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t181.
        CLEAR t181.
        CREATE OBJECT t181.
        t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t181->sval = |X|.
        IF t178 IS NOT BOUND.
          t177 = xsdbool( t181 IS NOT BOUND ).
        ELSE.
          t177 = t178->strict_equals( t181 ).
        ENDIF.
        t176 = xsdbool( t177 = abap_false ).
        DATA(t183) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t183->has = abap_true.
        t183->value = t176.
        t118 = NEW zcl_lnt_ifnctn_mdl_prmtr( i_name = t119 i_direction = |importing| i_type_9913 = t129 i_optional = t158 i_default_value = t165 i_pass_by_value = t183 ).
        CREATE OBJECT t118->zlnt_view_ownkeys_b0e8086400eb.
        t118->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t185.
        t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t185 ).
        DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t186.
        IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `direction` p1 = t186 ).
        ENDIF.
        DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t187.
        IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t187 ).
        ENDIF.
        DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t188.
        IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t188 ).
        ENDIF.
        DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t189.
        IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `defaultValue` p1 = t189 ).
        ENDIF.
        DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t190.
        IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `passByValue` p1 = t190 ).
        ENDIF.
        CREATE OBJECT t118->zlnt_json_ownkeys_70e5fd461788.
        t118->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t192.
        t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t192 ).
        DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t194.
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |direction| p1 = t194 ).
        ENDIF.
        DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t196.
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t196 ).
        ENDIF.
        DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t198.
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t198 ).
        ENDIF.
        DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t200.
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |defaultValue| p1 = t200 ).
        ENDIF.
        DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t202.
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |passByValue| p1 = t202 ).
        ENDIF.
        t109 = t118.
        t108->load( ).
        APPEND t109 TO t108->items.
        t108->save( ).
      ENDDO.
    ENDIF.
    DATA(t203) = VALUE abap_bool( ).
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t204 = t1->get( p0 = |CHANGING| ).
    IF t204 IS BOUND.
      t203 = t204->truth( ).
    ENDIF.
    IF t203 = abap_true.
      DATA t207 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t207 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t1->get( p0 = |CHANGING| )->get( p0 = |RSCHA| ) ).
      DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t214 TYPE REF TO object.
      DATA(t215) = VALUE i( ).
      DO.
        t207->load( ).
        IF t215 >= lines( t207->items ).
          EXIT.
        ENDIF.
        CLEAR t214.
        READ TABLE t207->items INDEX t215 + 1 INTO t214.
        t215 = t215 + 1.
        DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t216.
        CLEAR t213.
        IF t214 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t216 ?= t214.
          t213 = t216.
        ELSE.
          IF t214 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
            DATA t217 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            CLEAR t217.
            t217 ?= t214.
            CLEAR t213.
            IF t217 IS BOUND.
              CREATE OBJECT t213.
              t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
              t213->cval = t217.
            ENDIF.
          ELSE.
            CLEAR t213.
            IF t214 IS BOUND.
              DATA t218 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t218.
              DATA t219 TYPE REF TO object.
              CLEAR t219.
              CLEAR t218.
              t219 = t214.
              TRY.
                  t213 ?= t219.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t213 IS NOT BOUND.
                TRY.
                    t218 ?= t214.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t218 IS BOUND.
                  t213 = t218->source( ).
                ENDIF.
                IF t213 IS NOT BOUND.
                  CREATE OBJECT t213.
                  t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t213->oval = t214.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t222.
        t222 = t213->get( p0 = |PARAMETER| ).
        DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t225.
        CLEAR t225.
        IF xsdbool( t222 IS INITIAL ) = abap_true.
          DATA t229 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
          CLEAR t229.
          DATA t230 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
          CLEAR t230.
          DATA(t234) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t234->has = abap_true.
          t234->value = |Function module name parameter undefined, changing|.
          t230 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t234 ).
          t229 = NEW #( ).
          t229->payload = t230.
          CLEAR t229->source_value.
          DATA t236 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t236.
          DATA t237 TYPE REF TO object.
          CLEAR t237.
          CLEAR t236.
          t237 = t230.
          TRY.
              t229->source_value ?= t237.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t229->source_value IS NOT BOUND.
            TRY.
                t236 ?= t230.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t236 IS BOUND.
              t229->source_value = t236->source( ).
            ENDIF.
            IF t229->source_value IS NOT BOUND.
              CREATE OBJECT t229->source_value.
              t229->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t229->source_value->oval = t230.
            ENDIF.
          ENDIF.
          RAISE EXCEPTION t229.
        ENDIF.
        DATA(t238) = me->parameters.
        DATA t239 TYPE REF TO zcl_lnt_ifnctn_mdl_prmtr.
        CLEAR t239.
        DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t240.
        t240 = t213->get( p0 = |PARAMETER| ).
        DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t244.
        t244 = t213->get( p0 = |DEFAULT| ).
        DATA t248 TYPE REF TO zcl_lnt_ifnctn_mdl_prmtr.
        CLEAR t248.
        DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t249.
        DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t250.
        IF xsdbool( t240 IS INITIAL ) = abap_true.
          CLEAR t250.
        ELSE.
          DATA(t254) = VALUE string( ).
          t254 = t240->as_string( ).
          DATA(t256) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t256->has = abap_true.
          t256->value = t254.
          t250 = t256.
        ENDIF.
        t249 = t250.
        DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t259.
        DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t261.
        t261 = t213->get( p0 = |TYP| ).
        DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t265.
        t265 = t261.
        DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t267.
        t267 = t213->get( p0 = |DBFIELD| ).
        DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t271.
        DATA(t272) = VALUE abap_bool( ).
        IF t261 IS BOUND.
          t272 = t261->truth( ).
        ENDIF.
        IF t272 = abap_true.
          DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t274.
          IF xsdbool( t265 IS INITIAL ) = abap_true.
            CLEAR t274.
          ELSE.
            DATA(t278) = VALUE string( ).
            t278 = t265->as_string( ).
            DATA(t280) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t280->has = abap_true.
            t280->value = t278.
            t274 = t280.
          ENDIF.
          t271 = t274.
        ELSE.
          DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t281.
          IF xsdbool( t267 IS INITIAL ) = abap_true.
            CLEAR t281.
          ELSE.
            DATA(t285) = VALUE string( ).
            t285 = t267->as_string( ).
            DATA(t287) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t287->has = abap_true.
            t287->value = t285.
            t281 = t287.
          ENDIF.
          t271 = t281.
        ENDIF.
        t259 = t271.
        DATA(t288) = VALUE abap_bool( ).
        DATA(t289) = VALUE abap_bool( ).
        DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t290.
        t290 = t213->get( p0 = |OPTIONAL| ).
        DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t293.
        CLEAR t293.
        CREATE OBJECT t293.
        t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t293->sval = |X|.
        IF t290 IS NOT BOUND.
          t289 = xsdbool( t293 IS NOT BOUND ).
        ELSE.
          t289 = t290->strict_equals( t293 ).
        ENDIF.
        t288 = t289.
        DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t295.
        DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t296.
        IF xsdbool( t244 IS INITIAL ) = abap_true.
          CLEAR t296.
        ELSE.
          DATA(t300) = VALUE string( ).
          t300 = t244->as_string( ).
          DATA(t302) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t302->has = abap_true.
          t302->value = t300.
          t296 = t302.
        ENDIF.
        t295 = t296.
        DATA(t306) = VALUE abap_bool( ).
        DATA(t307) = VALUE abap_bool( ).
        DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t308.
        t308 = t213->get( p0 = |REFERENCE| ).
        DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t311.
        CLEAR t311.
        CREATE OBJECT t311.
        t311->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t311->sval = |X|.
        IF t308 IS NOT BOUND.
          t307 = xsdbool( t311 IS NOT BOUND ).
        ELSE.
          t307 = t308->strict_equals( t311 ).
        ENDIF.
        t306 = xsdbool( t307 = abap_false ).
        DATA(t313) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t313->has = abap_true.
        t313->value = t306.
        t248 = NEW zcl_lnt_ifnctn_mdl_prmtr( i_name = t249 i_direction = |changing| i_type_9913 = t259 i_optional = t288 i_default_value = t295 i_pass_by_value = t313 ).
        CREATE OBJECT t248->zlnt_view_ownkeys_b0e8086400eb.
        t248->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t315.
        t248->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t315 ).
        DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t316.
        IF t248->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t248->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `direction` p1 = t316 ).
        ENDIF.
        DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t317.
        IF t248->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t248->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t317 ).
        ENDIF.
        DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t318.
        IF t248->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t248->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t318 ).
        ENDIF.
        DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t319.
        IF t248->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t248->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `defaultValue` p1 = t319 ).
        ENDIF.
        DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t320.
        IF t248->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t248->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `passByValue` p1 = t320 ).
        ENDIF.
        CREATE OBJECT t248->zlnt_json_ownkeys_70e5fd461788.
        t248->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t322.
        t248->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t322 ).
        DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t324.
        IF t248->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t248->zlnt_json_ownkeys_70e5fd461788->put( p0 = |direction| p1 = t324 ).
        ENDIF.
        DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t326.
        IF t248->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t248->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t326 ).
        ENDIF.
        DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t328.
        IF t248->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t248->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t328 ).
        ENDIF.
        DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t330.
        IF t248->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t248->zlnt_json_ownkeys_70e5fd461788->put( p0 = |defaultValue| p1 = t330 ).
        ENDIF.
        DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t332.
        IF t248->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t248->zlnt_json_ownkeys_70e5fd461788->put( p0 = |passByValue| p1 = t332 ).
        ENDIF.
        t239 = t248.
        t238->load( ).
        APPEND t239 TO t238->items.
        t238->save( ).
      ENDDO.
    ENDIF.
    DATA(t333) = VALUE abap_bool( ).
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t334 = t1->get( p0 = |EXPORT| ).
    IF t334 IS BOUND.
      t333 = t334->truth( ).
    ENDIF.
    IF t333 = abap_true.
      DATA t337 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t337 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t1->get( p0 = |EXPORT| )->get( p0 = |RSEXP| ) ).
      DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t344 TYPE REF TO object.
      DATA(t345) = VALUE i( ).
      DO.
        t337->load( ).
        IF t345 >= lines( t337->items ).
          EXIT.
        ENDIF.
        CLEAR t344.
        READ TABLE t337->items INDEX t345 + 1 INTO t344.
        t345 = t345 + 1.
        DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t346.
        CLEAR t343.
        IF t344 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t346 ?= t344.
          t343 = t346.
        ELSE.
          IF t344 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
            DATA t347 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            CLEAR t347.
            t347 ?= t344.
            CLEAR t343.
            IF t347 IS BOUND.
              CREATE OBJECT t343.
              t343->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
              t343->cval = t347.
            ENDIF.
          ELSE.
            CLEAR t343.
            IF t344 IS BOUND.
              DATA t348 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t348.
              DATA t349 TYPE REF TO object.
              CLEAR t349.
              CLEAR t348.
              t349 = t344.
              TRY.
                  t343 ?= t349.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t343 IS NOT BOUND.
                TRY.
                    t348 ?= t344.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t348 IS BOUND.
                  t343 = t348->source( ).
                ENDIF.
                IF t343 IS NOT BOUND.
                  CREATE OBJECT t343.
                  t343->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t343->oval = t344.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t352.
        t352 = t343->get( p0 = |PARAMETER| ).
        DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t355.
        CLEAR t355.
        IF xsdbool( t352 IS INITIAL ) = abap_true.
          DATA t359 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
          CLEAR t359.
          DATA t360 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
          CLEAR t360.
          DATA(t364) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t364->has = abap_true.
          t364->value = |Function module name parameter undefined, exporting|.
          t360 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t364 ).
          t359 = NEW #( ).
          t359->payload = t360.
          CLEAR t359->source_value.
          DATA t366 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t366.
          DATA t367 TYPE REF TO object.
          CLEAR t367.
          CLEAR t366.
          t367 = t360.
          TRY.
              t359->source_value ?= t367.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t359->source_value IS NOT BOUND.
            TRY.
                t366 ?= t360.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t366 IS BOUND.
              t359->source_value = t366->source( ).
            ENDIF.
            IF t359->source_value IS NOT BOUND.
              CREATE OBJECT t359->source_value.
              t359->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t359->source_value->oval = t360.
            ENDIF.
          ENDIF.
          RAISE EXCEPTION t359.
        ENDIF.
        DATA(t368) = me->parameters.
        DATA t369 TYPE REF TO zcl_lnt_ifnctn_mdl_prmtr.
        CLEAR t369.
        DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t370.
        t370 = t343->get( p0 = |PARAMETER| ).
        DATA t374 TYPE REF TO zcl_lnt_ifnctn_mdl_prmtr.
        CLEAR t374.
        DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t375.
        DATA t376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t376.
        IF xsdbool( t370 IS INITIAL ) = abap_true.
          CLEAR t376.
        ELSE.
          DATA(t380) = VALUE string( ).
          t380 = t370->as_string( ).
          DATA(t382) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t382->has = abap_true.
          t382->value = t380.
          t376 = t382.
        ENDIF.
        t375 = t376.
        DATA t385 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t385.
        DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t387.
        t387 = t343->get( p0 = |TYP| ).
        DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t391.
        t391 = t387.
        DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t393.
        t393 = t343->get( p0 = |DBFIELD| ).
        DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t397.
        DATA(t398) = VALUE abap_bool( ).
        IF t387 IS BOUND.
          t398 = t387->truth( ).
        ENDIF.
        IF t398 = abap_true.
          DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t400.
          IF xsdbool( t391 IS INITIAL ) = abap_true.
            CLEAR t400.
          ELSE.
            DATA(t404) = VALUE string( ).
            t404 = t391->as_string( ).
            DATA(t406) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t406->has = abap_true.
            t406->value = t404.
            t400 = t406.
          ENDIF.
          t397 = t400.
        ELSE.
          DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t407.
          IF xsdbool( t393 IS INITIAL ) = abap_true.
            CLEAR t407.
          ELSE.
            DATA(t411) = VALUE string( ).
            t411 = t393->as_string( ).
            DATA(t413) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t413->has = abap_true.
            t413->value = t411.
            t407 = t413.
          ENDIF.
          t397 = t407.
        ENDIF.
        t385 = t397.
        DATA t416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t416.
        CLEAR t416.
        DATA(t421) = VALUE abap_bool( ).
        DATA(t422) = VALUE abap_bool( ).
        DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t423.
        t423 = t343->get( p0 = |REFERENCE| ).
        DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t426.
        CLEAR t426.
        CREATE OBJECT t426.
        t426->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t426->sval = |X|.
        IF t423 IS NOT BOUND.
          t422 = xsdbool( t426 IS NOT BOUND ).
        ELSE.
          t422 = t423->strict_equals( t426 ).
        ENDIF.
        t421 = xsdbool( t422 = abap_false ).
        DATA(t428) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t428->has = abap_true.
        t428->value = t421.
        t374 = NEW zcl_lnt_ifnctn_mdl_prmtr( i_name = t375 i_direction = |exporting| i_type_9913 = t385 i_optional = abap_true i_default_value = t416 i_pass_by_value = t428 ).
        CREATE OBJECT t374->zlnt_view_ownkeys_b0e8086400eb.
        t374->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t430.
        t374->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t430 ).
        DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t431.
        IF t374->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t374->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `direction` p1 = t431 ).
        ENDIF.
        DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t432.
        IF t374->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t374->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t432 ).
        ENDIF.
        DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t433.
        IF t374->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t374->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t433 ).
        ENDIF.
        DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t434.
        IF t374->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t374->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `defaultValue` p1 = t434 ).
        ENDIF.
        DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t435.
        IF t374->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t374->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `passByValue` p1 = t435 ).
        ENDIF.
        CREATE OBJECT t374->zlnt_json_ownkeys_70e5fd461788.
        t374->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t437.
        t374->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t437 ).
        DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t439.
        IF t374->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t374->zlnt_json_ownkeys_70e5fd461788->put( p0 = |direction| p1 = t439 ).
        ENDIF.
        DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t441.
        IF t374->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t374->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t441 ).
        ENDIF.
        DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t443.
        IF t374->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t374->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t443 ).
        ENDIF.
        DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t445.
        IF t374->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t374->zlnt_json_ownkeys_70e5fd461788->put( p0 = |defaultValue| p1 = t445 ).
        ENDIF.
        DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t447.
        IF t374->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t374->zlnt_json_ownkeys_70e5fd461788->put( p0 = |passByValue| p1 = t447 ).
        ENDIF.
        t369 = t374.
        t368->load( ).
        APPEND t369 TO t368->items.
        t368->save( ).
      ENDDO.
    ENDIF.
    DATA(t448) = VALUE abap_bool( ).
    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t449 = t1->get( p0 = |TABLES| ).
    IF t449 IS BOUND.
      t448 = t449->truth( ).
    ENDIF.
    IF t448 = abap_true.
      DATA t452 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t452 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t1->get( p0 = |TABLES| )->get( p0 = |RSTBL| ) ).
      DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t459 TYPE REF TO object.
      DATA(t460) = VALUE i( ).
      DO.
        t452->load( ).
        IF t460 >= lines( t452->items ).
          EXIT.
        ENDIF.
        CLEAR t459.
        READ TABLE t452->items INDEX t460 + 1 INTO t459.
        t460 = t460 + 1.
        DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t461.
        CLEAR t458.
        IF t459 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t461 ?= t459.
          t458 = t461.
        ELSE.
          IF t459 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
            DATA t462 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            CLEAR t462.
            t462 ?= t459.
            CLEAR t458.
            IF t462 IS BOUND.
              CREATE OBJECT t458.
              t458->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
              t458->cval = t462.
            ENDIF.
          ELSE.
            CLEAR t458.
            IF t459 IS BOUND.
              DATA t463 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t463.
              DATA t464 TYPE REF TO object.
              CLEAR t464.
              CLEAR t463.
              t464 = t459.
              TRY.
                  t458 ?= t464.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t458 IS NOT BOUND.
                TRY.
                    t463 ?= t459.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t463 IS BOUND.
                  t458 = t463->source( ).
                ENDIF.
                IF t458 IS NOT BOUND.
                  CREATE OBJECT t458.
                  t458->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t458->oval = t459.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t467.
        t467 = t458->get( p0 = |PARAMETER| ).
        DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t470.
        CLEAR t470.
        IF xsdbool( t467 IS INITIAL ) = abap_true.
          DATA t474 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
          CLEAR t474.
          DATA t475 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
          CLEAR t475.
          DATA(t479) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t479->has = abap_true.
          t479->value = |Function module name parameter undefined, tables|.
          t475 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t479 ).
          t474 = NEW #( ).
          t474->payload = t475.
          CLEAR t474->source_value.
          DATA t481 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t481.
          DATA t482 TYPE REF TO object.
          CLEAR t482.
          CLEAR t481.
          t482 = t475.
          TRY.
              t474->source_value ?= t482.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t474->source_value IS NOT BOUND.
            TRY.
                t481 ?= t475.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t481 IS BOUND.
              t474->source_value = t481->source( ).
            ENDIF.
            IF t474->source_value IS NOT BOUND.
              CREATE OBJECT t474->source_value.
              t474->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t474->source_value->oval = t475.
            ENDIF.
          ENDIF.
          RAISE EXCEPTION t474.
        ENDIF.
        DATA(t483) = me->parameters.
        DATA t484 TYPE REF TO zcl_lnt_ifnctn_mdl_prmtr.
        CLEAR t484.
        DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t485.
        t485 = t458->get( p0 = |PARAMETER| ).
        DATA t489 TYPE REF TO zcl_lnt_ifnctn_mdl_prmtr.
        CLEAR t489.
        DATA t490 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t490.
        DATA t491 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t491.
        IF xsdbool( t485 IS INITIAL ) = abap_true.
          CLEAR t491.
        ELSE.
          DATA(t495) = VALUE string( ).
          t495 = t485->as_string( ).
          DATA(t497) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t497->has = abap_true.
          t497->value = t495.
          t491 = t497.
        ENDIF.
        t490 = t491.
        DATA t500 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t500.
        DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t502.
        t502 = t458->get( p0 = |DBSTRUCT| ).
        DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t506.
        t506 = t502.
        DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t508.
        t508 = t458->get( p0 = |TYP| ).
        DATA t512 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t512.
        DATA(t513) = VALUE abap_bool( ).
        IF t502 IS BOUND.
          t513 = t502->truth( ).
        ENDIF.
        IF t513 = abap_true.
          DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t515.
          IF xsdbool( t506 IS INITIAL ) = abap_true.
            CLEAR t515.
          ELSE.
            DATA(t519) = VALUE string( ).
            t519 = t506->as_string( ).
            DATA(t521) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t521->has = abap_true.
            t521->value = t519.
            t515 = t521.
          ENDIF.
          t512 = t515.
        ELSE.
          DATA t522 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t522.
          IF xsdbool( t508 IS INITIAL ) = abap_true.
            CLEAR t522.
          ELSE.
            DATA(t526) = VALUE string( ).
            t526 = t508->as_string( ).
            DATA(t528) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t528->has = abap_true.
            t528->value = t526.
            t522 = t528.
          ENDIF.
          t512 = t522.
        ENDIF.
        t500 = t512.
        DATA(t529) = VALUE abap_bool( ).
        DATA(t530) = VALUE abap_bool( ).
        DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t531.
        t531 = t458->get( p0 = |OPTIONAL| ).
        DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t534.
        CLEAR t534.
        CREATE OBJECT t534.
        t534->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t534->sval = |X|.
        IF t531 IS NOT BOUND.
          t530 = xsdbool( t534 IS NOT BOUND ).
        ELSE.
          t530 = t531->strict_equals( t534 ).
        ENDIF.
        t529 = t530.
        DATA t536 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t536.
        CLEAR t536.
        DATA(t542) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t542->has = abap_true.
        t542->value = abap_false.
        t489 = NEW zcl_lnt_ifnctn_mdl_prmtr( i_name = t490 i_direction = |tables| i_type_9913 = t500 i_optional = t529 i_default_value = t536 i_pass_by_value = t542 ).
        CREATE OBJECT t489->zlnt_view_ownkeys_b0e8086400eb.
        t489->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t544.
        t489->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t544 ).
        DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t545.
        IF t489->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t489->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `direction` p1 = t545 ).
        ENDIF.
        DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t546.
        IF t489->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t489->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t546 ).
        ENDIF.
        DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t547.
        IF t489->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t489->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t547 ).
        ENDIF.
        DATA t548 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t548.
        IF t489->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t489->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `defaultValue` p1 = t548 ).
        ENDIF.
        DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t549.
        IF t489->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t489->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `passByValue` p1 = t549 ).
        ENDIF.
        CREATE OBJECT t489->zlnt_json_ownkeys_70e5fd461788.
        t489->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t551.
        t489->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t551 ).
        DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t553.
        IF t489->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t489->zlnt_json_ownkeys_70e5fd461788->put( p0 = |direction| p1 = t553 ).
        ENDIF.
        DATA t555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t555.
        IF t489->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t489->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t555 ).
        ENDIF.
        DATA t557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t557.
        IF t489->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t489->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t557 ).
        ENDIF.
        DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t559.
        IF t489->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t489->zlnt_json_ownkeys_70e5fd461788->put( p0 = |defaultValue| p1 = t559 ).
        ENDIF.
        DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t561.
        IF t489->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t489->zlnt_json_ownkeys_70e5fd461788->put( p0 = |passByValue| p1 = t561 ).
        ENDIF.
        t484 = t489.
        t483->load( ).
        APPEND t484 TO t483->items.
        t483->save( ).
      ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1059_bee82e1d812f.
  ENDMETHOD.
ENDCLASS.
