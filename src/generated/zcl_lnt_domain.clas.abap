* TS: src/objects/domain.ts:22:1 Domain
CLASS zcl_lnt_domain DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_42a36aec.
    INTERFACES zif_lnt_union_864794cc.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_b346f020.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS get_conversion_exit RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_data_type RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_identifier REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS parse_type IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_data_element TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS prs_instn_src_objct_dmn_ts_dmn RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS get_fixed_values RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_fixed_values_translations RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_aff_file RETURNING VALUE(result) TYPE REF TO zif_lnt_file.
    METHODS parse REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_domain IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    result = |DOMA|.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_instn_src_objct_dmn_ts_dmn( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_b346f020.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
    ELSE.
      t5 = t3->description.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_conversion_exit.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_instn_src_objct_dmn_ts_dmn( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_b346f020.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
    ELSE.
      t5 = t3->conversion_exit.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_data_type.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_instn_src_objct_dmn_ts_dmn( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_b346f020.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
    ELSE.
      t5 = t3->datatype_2b0f.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = CONV f( 30 ) i_allow_namespace = abap_true i_custom_regex = t6 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `maxLength` p1 = t8 ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `allowNamespace` p1 = t9 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |maxLength| p1 = t11 ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |allowNamespace| p1 = t13 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_identifier.
    DATA t1 TYPE REF TO zcl_lnt_fi_identifier.
    t1 = CAST zcl_lnt_fi_identifier( super->get_identifier( ) ).
    IF xsdbool( t1 IS BOUND ) = abap_true.
      result = t1.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zif_lnt_file.
    t10 = CAST zif_lnt_file( me->get_aff_file( ) ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t10 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t24 TYPE REF TO zcl_lnt_position.
    DATA(t27) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t27->has = abap_true.
    t27->value = CONV f( 1 ).
    t24 = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t27 ).
    DATA t29 TYPE REF TO zcl_lnt_abstract_object.
    t29 = me.
    DATA t31 TYPE string.
    t31 = t29->name.
    result = NEW zcl_lnt_fi_identifier( i_token = NEW zcl_lnt_lx_identifier( i_start = t24 i_str = t31 ) i_filename = t10->get_filename( ) ).

  ENDMETHOD.

  METHOD set_dirty.
    CLEAR me->parsed_xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD parse_type.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_data_element.
    DATA(t3) = i_description.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_xml IS INITIAL ) = abap_true.
      DATA(t11) = CAST zcl_lnt_iparse_result( me->prs_instn_src_objct_dmn_ts_dmn( ) ).
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_xml IS INITIAL ) = abap_true.
      DATA t20 TYPE string.
      DATA t21 TYPE string.
      DATA(t22) = |Domain |.
      DATA t23 TYPE string.
      DATA t24 TYPE REF TO zcl_lnt_abstract_object.
      t24 = me.
      t23 = t24->name.
      DATA(t28) = strlen( t22 ).
      t21 = |{ t22 }{ t23 }|.
      DATA(t30) = strlen( t21 ).
      t20 = |{ t21 }{ | parser error| }|.
      DATA t34 TYPE REF TO zcl_lnt_abstract_object.
      t34 = me.
      DATA t36 TYPE string.
      t36 = t34->name.
      DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t38->has = abap_true.
      t38->value = t36.
      result = NEW zcl_lnt_unknown_type( i_error = t20 i_qualified_name = t38 ).
      RETURN.
    ENDIF.
    DATA t41 TYPE REF TO zcl_lnt_ddic.
    t41 = NEW zcl_lnt_ddic( i_reg_f149 = t1 ).
    DATA t45 TYPE REF TO zcl_lnt_shape_4a88086c.
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t46 = me->parsed_xml->datatype_2b0f.
    DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t50 = me->parsed_xml->length.
    DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t54 = me->parsed_xml->decimals_29bf.
    DATA t58 TYPE string.
    DATA t60 TYPE REF TO zcl_lnt_abstract_object.
    t60 = me.
    t58 = t60->name.
    DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t64 = t2.
    DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t66 = me->parsed_xml->conversion_exit.
    t45 = NEW zcl_lnt_shape_4a88086c( i_text = t46 i_length = t50 i_decimals_2eed = t54 i_info_text = t58 i_qualified_name = t64 i_conversion_exit = t66 i_ddic_name = t2 i_description = t3 ).
    CREATE OBJECT t45->zlnt_view_ownkeys_b0e8086400eb.
    t45->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `text` p1 = t74 ).
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t75 ).
    ENDIF.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t76 ).
    ENDIF.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `infoText` p1 = t77 ).
    ENDIF.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t78 ).
    ENDIF.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `conversionExit` p1 = t79 ).
    ENDIF.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t80 ).
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t81 ).
    ENDIF.
    CREATE OBJECT t45->zlnt_json_ownkeys_70e5fd461788.
    t45->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = |text| p1 = t83 ).
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = |length| p1 = t85 ).
    ENDIF.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = |decimals| p1 = t87 ).
    ENDIF.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = |infoText| p1 = t89 ).
    ENDIF.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t91 ).
    ENDIF.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = |conversionExit| p1 = t93 ).
    ENDIF.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ddicName| p1 = t95 ).
    ENDIF.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t97 ).
    ENDIF.
    result = t41->text_to_type( i_input_967e = t45 ).

  ENDMETHOD.

  METHOD prs_instn_src_objct_dmn_ts_dmn.
    IF xsdbool( me->parsed_xml IS BOUND ) = abap_true.
      DATA t3 TYPE REF TO zcl_lnt_iparse_result.
      DATA t8 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t3 = NEW zcl_lnt_iparse_result( i_updated = abap_false i_runtime = CONV f( 0 ) i_runtime_extra = t8 ).
      CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
      t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t10 ).
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t11 ).
      ENDIF.
      CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
      t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t13 ).
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t15 ).
      ENDIF.
      result = t3.
      RETURN.
    ENDIF.
    DATA(t16) = VALUE f( ).
    DATA(t18) = 0.
    t16 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t21 TYPE REF TO zcl_lnt_shape_b346f020.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t21 = NEW zcl_lnt_shape_b346f020( i_description = t22 i_datatype_9e1e = t24 i_length = t26 i_decimals_2eed = t28 i_conversion_exit = t30 i_values = t32 i_values_translations = t34 ).
    CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
    t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
    t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    me->parsed_xml = t21.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t37 TYPE REF TO zif_lnt_file.
    t37 = CAST zif_lnt_file( me->get_aff_file( ) ).
    IF xsdbool( t37 IS BOUND ) = abap_true.
      DATA t41 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      TRY.
          DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t44) = VALUE string( ).
          t44 = t37->get_raw( ).
          TRY.
              t43 = zlnt_runtime_json_7c6b3012af76=>parse( t44 ).
            CATCH zlnt_exception_js_ebcc2df7d5e4.
              DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t47->has = abap_true.
              t47->value = `Invalid JSON`.
              DATA(t48) = NEW zcx_lnt_builtin_4c6a1223( i_message_26cb = t47 ).
              DATA(t49) = NEW zlnt_exception_cl_30eec8e8805d( ).
              t49->payload = t48.
              DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t51 TYPE REF TO zlnt_view_storage_74017ca272ac.
              DATA t52 TYPE REF TO object.
              t52 = t48.
              TRY.
                  t50 ?= t52.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t50 IS NOT BOUND.
                TRY.
                    t51 ?= t48.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t51 IS BOUND.
                  t50 = t51->source( ).
                ENDIF.
                IF t50 IS NOT BOUND.
                  CREATE OBJECT t50.
                  t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t50->oval = t48.
                ENDIF.
              ENDIF.
              t49->source_value = t50.
              RAISE EXCEPTION t49.
          ENDTRY.
          t42 = t43.
          DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t55 = t42->get( p0 = |header| ).
          DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t60) = VALUE abap_bool( ).
          IF t55 IS NOT BOUND.
            t60 = abap_true.
          ELSE.
            t60 = xsdbool( t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t60 = abap_true.
          ELSE.
            t59 = t55->get( p0 = |originalLanguage| ).
          ENDIF.
          t53 = t59.
          DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF xsdbool( t53 IS INITIAL ) = abap_true.
          ELSE.
            t67 = t53.
          ENDIF.
          t66 = t67.
          DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t73.
          DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t78 = t42->get( p0 = |fixedValues| ).
          DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t83) = VALUE abap_bool( ).
          IF t78 IS NOT BOUND.
            t83 = abap_true.
          ELSE.
            t83 = xsdbool( t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t83 = abap_true.
            DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CREATE OBJECT t86.
            DATA t87 TYPE REF TO zlnt_view_storage_74017ca272ac.
            DATA t88 TYPE REF TO object.
            t88 = t86.
            TRY.
                t85 ?= t88.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t85 IS NOT BOUND.
              TRY.
                  t87 ?= t86.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t87 IS BOUND.
                t85 = t87->source( ).
              ENDIF.
              IF t85 IS NOT BOUND.
                CREATE OBJECT t85.
                t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t85->oval = t86.
              ENDIF.
            ENDIF.
            t82 = t85.
          ELSE.
            t82 = t78.
          ENDIF.
          t77 = t82.
          IF t77 IS BOUND.
            IF t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t76 ?= t77->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
              ENDTRY.
            ELSEIF t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
              CREATE OBJECT t76.
              t76->source = t77.
            ELSE.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
            ENDIF.
            t76->load( ).
            DATA t90 TYPE REF TO object.
            DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            LOOP AT t76->items INTO t90.
              DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t92.
              CLEAR t91.
              IF t90 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t92 ?= t90.
                t91 = t92.
              ELSE.
                IF t90 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
                  DATA t93 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t93.
                  t93 ?= t90.
                  CLEAR t91.
                  IF t93 IS BOUND.
                    CREATE OBJECT t91.
                    t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
                    t91->cval = t93.
                  ENDIF.
                ELSE.
                  CLEAR t91.
                  IF t90 IS BOUND.
                    DATA t94 TYPE REF TO zlnt_view_storage_74017ca272ac.
                    CLEAR t94.
                    DATA t95 TYPE REF TO object.
                    CLEAR t95.
                    CLEAR t94.
                    t95 = t90.
                    TRY.
                        t91 ?= t95.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t91 IS NOT BOUND.
                      TRY.
                          t94 ?= t90.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                      IF t94 IS BOUND.
                        t91 = t94->source( ).
                      ENDIF.
                      IF t91 IS NOT BOUND.
                        CREATE OBJECT t91.
                        t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        t91->oval = t90.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDLOOP.
          ENDIF.
          t75 = t76.
          DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t98 TYPE REF TO object.
          DATA(t99) = VALUE i( ).
          DO.
            t75->load( ).
            IF t99 >= lines( t75->items ).
              EXIT.
            ENDIF.
            CLEAR t98.
            READ TABLE t75->items INDEX t99 + 1 INTO t98.
            t99 = t99 + 1.
            DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t100.
            CLEAR t97.
            IF t98 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t100 ?= t98.
              t97 = t100.
            ELSE.
              IF t98 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
                DATA t101 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                CLEAR t101.
                t101 ?= t98.
                CLEAR t97.
                IF t101 IS BOUND.
                  CREATE OBJECT t97.
                  t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
                  t97->cval = t101.
                ENDIF.
              ELSE.
                CLEAR t97.
                IF t98 IS BOUND.
                  DATA t102 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t102.
                  DATA t103 TYPE REF TO object.
                  CLEAR t103.
                  CLEAR t102.
                  t103 = t98.
                  TRY.
                      t97 ?= t103.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t97 IS NOT BOUND.
                    TRY.
                        t102 ?= t98.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t102 IS BOUND.
                      t97 = t102->source( ).
                    ENDIF.
                    IF t97 IS NOT BOUND.
                      CREATE OBJECT t97.
                      t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      t97->oval = t98.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
            DATA t105 TYPE REF TO zcl_lnt_domain_value.
            CLEAR t105.
            DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t106.
            DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t108.
            t108 = t97.
            DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t110.
            DATA(t111) = VALUE abap_bool( ).
            IF t108 IS NOT BOUND.
              t111 = abap_true.
            ELSE.
              t111 = xsdbool( t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t111 = abap_true.
              CLEAR t110.
            ELSE.
              t110 = t108->get( p0 = |fixedValue| ).
            ENDIF.
            t106 = t110.
            DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t117.
            DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t119.
            t119 = t97.
            DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t121.
            DATA(t122) = VALUE abap_bool( ).
            IF t119 IS NOT BOUND.
              t122 = abap_true.
            ELSE.
              t122 = xsdbool( t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t122 = abap_true.
              CLEAR t121.
            ELSE.
              t121 = t119->get( p0 = |description| ).
            ENDIF.
            t117 = t121.
            DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t128.
            t128 = t66.
            DATA t130 TYPE REF TO zcl_lnt_domain_value.
            CLEAR t130.
            DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t131.
            DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t132.
            IF xsdbool( t106 IS INITIAL ) = abap_true.
              CLEAR t132.
            ELSE.
              DATA(t136) = VALUE string( ).
              t136 = t106->as_string( ).
              DATA(t139) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t139->has = abap_true.
              t139->value = t136.
              t132 = t139.
            ENDIF.
            t131 = t132.
            DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t140.
            DATA(t144) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t144->has = abap_true.
            t144->value = ||.
            t140 = t144.
            DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t146.
            DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t147.
            IF xsdbool( t117 IS INITIAL ) = abap_true.
              CLEAR t147.
            ELSE.
              DATA(t151) = VALUE string( ).
              t151 = t117->as_string( ).
              DATA(t154) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t154->has = abap_true.
              t154->value = t151.
              t147 = t154.
            ENDIF.
            t146 = t147.
            DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t156.
            IF xsdbool( t128 IS INITIAL ) = abap_true.
              CLEAR t156.
            ELSE.
              DATA(t160) = VALUE string( ).
              t160 = t128->as_string( ).
              DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t163->has = abap_true.
              t163->value = t160.
              t156 = t163.
            ENDIF.
            t130 = NEW zcl_lnt_domain_value( i_language = t156 i_low_a740 = t131 i_high = t140 i_description = t146 ).
            CREATE OBJECT t130->zlnt_view_ownkeys_b0e8086400eb.
            t130->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t164.
            t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `low` p1 = t164 ).
            DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t165.
            IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `high` p1 = t165 ).
            ENDIF.
            DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t166.
            IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t166 ).
            ENDIF.
            DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t167.
            IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `language` p1 = t167 ).
            ENDIF.
            CREATE OBJECT t130->zlnt_json_ownkeys_70e5fd461788.
            t130->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t169.
            t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = |low| p1 = t169 ).
            DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t171.
            IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = |high| p1 = t171 ).
            ENDIF.
            DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t173.
            IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t173 ).
            ENDIF.
            DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t175.
            IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = |language| p1 = t175 ).
            ENDIF.
            t105 = t130.
            t73->load( ).
            APPEND t105 TO t73->items.
            t73->save( ).
          ENDDO.
          DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t179 = t42->get( p0 = |fixedValueIntervals| ).
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t184) = VALUE abap_bool( ).
          IF t179 IS NOT BOUND.
            t184 = abap_true.
          ELSE.
            t184 = xsdbool( t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t184 = abap_true.
            DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CREATE OBJECT t187.
            DATA t188 TYPE REF TO zlnt_view_storage_74017ca272ac.
            DATA t189 TYPE REF TO object.
            t189 = t187.
            TRY.
                t186 ?= t189.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t186 IS NOT BOUND.
              TRY.
                  t188 ?= t187.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t188 IS BOUND.
                t186 = t188->source( ).
              ENDIF.
              IF t186 IS NOT BOUND.
                CREATE OBJECT t186.
                t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t186->oval = t187.
              ENDIF.
            ENDIF.
            t183 = t186.
          ELSE.
            t183 = t179.
          ENDIF.
          t178 = t183.
          IF t178 IS BOUND.
            IF t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t177 ?= t178->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
              ENDTRY.
            ELSEIF t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
              CREATE OBJECT t177.
              t177->source = t178.
            ELSE.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
            ENDIF.
            t177->load( ).
            DATA t191 TYPE REF TO object.
            DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            LOOP AT t177->items INTO t191.
              DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t193.
              CLEAR t192.
              IF t191 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t193 ?= t191.
                t192 = t193.
              ELSE.
                IF t191 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
                  DATA t194 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t194.
                  t194 ?= t191.
                  CLEAR t192.
                  IF t194 IS BOUND.
                    CREATE OBJECT t192.
                    t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
                    t192->cval = t194.
                  ENDIF.
                ELSE.
                  CLEAR t192.
                  IF t191 IS BOUND.
                    DATA t195 TYPE REF TO zlnt_view_storage_74017ca272ac.
                    CLEAR t195.
                    DATA t196 TYPE REF TO object.
                    CLEAR t196.
                    CLEAR t195.
                    t196 = t191.
                    TRY.
                        t192 ?= t196.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t192 IS NOT BOUND.
                      TRY.
                          t195 ?= t191.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                      IF t195 IS BOUND.
                        t192 = t195->source( ).
                      ENDIF.
                      IF t192 IS NOT BOUND.
                        CREATE OBJECT t192.
                        t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        t192->oval = t191.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDLOOP.
          ENDIF.
          t176 = t177.
          DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t199 TYPE REF TO object.
          DATA(t200) = VALUE i( ).
          DO.
            t176->load( ).
            IF t200 >= lines( t176->items ).
              EXIT.
            ENDIF.
            CLEAR t199.
            READ TABLE t176->items INDEX t200 + 1 INTO t199.
            t200 = t200 + 1.
            DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t201.
            CLEAR t198.
            IF t199 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t201 ?= t199.
              t198 = t201.
            ELSE.
              IF t199 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
                DATA t202 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                CLEAR t202.
                t202 ?= t199.
                CLEAR t198.
                IF t202 IS BOUND.
                  CREATE OBJECT t198.
                  t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
                  t198->cval = t202.
                ENDIF.
              ELSE.
                CLEAR t198.
                IF t199 IS BOUND.
                  DATA t203 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t203.
                  DATA t204 TYPE REF TO object.
                  CLEAR t204.
                  CLEAR t203.
                  t204 = t199.
                  TRY.
                      t198 ?= t204.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t198 IS NOT BOUND.
                    TRY.
                        t203 ?= t199.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t203 IS BOUND.
                      t198 = t203->source( ).
                    ENDIF.
                    IF t198 IS NOT BOUND.
                      CREATE OBJECT t198.
                      t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      t198->oval = t199.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
            DATA t206 TYPE REF TO zcl_lnt_domain_value.
            CLEAR t206.
            DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t207.
            DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t209.
            t209 = t198.
            DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t211.
            DATA(t212) = VALUE abap_bool( ).
            IF t209 IS NOT BOUND.
              t212 = abap_true.
            ELSE.
              t212 = xsdbool( t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t212 = abap_true.
              CLEAR t211.
            ELSE.
              t211 = t209->get( p0 = |lowLimit| ).
            ENDIF.
            t207 = t211.
            DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t218.
            DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t220.
            t220 = t198.
            DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t222.
            DATA(t223) = VALUE abap_bool( ).
            IF t220 IS NOT BOUND.
              t223 = abap_true.
            ELSE.
              t223 = xsdbool( t220->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t223 = abap_true.
              CLEAR t222.
            ELSE.
              t222 = t220->get( p0 = |highLimit| ).
            ENDIF.
            t218 = t222.
            DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t229.
            DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t231.
            t231 = t198.
            DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t233.
            DATA(t234) = VALUE abap_bool( ).
            IF t231 IS NOT BOUND.
              t234 = abap_true.
            ELSE.
              t234 = xsdbool( t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t234 = abap_true.
              CLEAR t233.
            ELSE.
              t233 = t231->get( p0 = |description| ).
            ENDIF.
            t229 = t233.
            DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t240.
            t240 = t66.
            DATA t242 TYPE REF TO zcl_lnt_domain_value.
            CLEAR t242.
            DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t243.
            DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t244.
            IF xsdbool( t207 IS INITIAL ) = abap_true.
              CLEAR t244.
            ELSE.
              DATA(t248) = VALUE string( ).
              t248 = t207->as_string( ).
              DATA(t251) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t251->has = abap_true.
              t251->value = t248.
              t244 = t251.
            ENDIF.
            t243 = t244.
            DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t252.
            DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t253.
            IF xsdbool( t218 IS INITIAL ) = abap_true.
              CLEAR t253.
            ELSE.
              DATA(t257) = VALUE string( ).
              t257 = t218->as_string( ).
              DATA(t260) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t260->has = abap_true.
              t260->value = t257.
              t253 = t260.
            ENDIF.
            t252 = t253.
            DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t261.
            DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t262.
            IF xsdbool( t229 IS INITIAL ) = abap_true.
              CLEAR t262.
            ELSE.
              DATA(t266) = VALUE string( ).
              t266 = t229->as_string( ).
              DATA(t269) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t269->has = abap_true.
              t269->value = t266.
              t262 = t269.
            ENDIF.
            t261 = t262.
            DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t271.
            IF xsdbool( t240 IS INITIAL ) = abap_true.
              CLEAR t271.
            ELSE.
              DATA(t275) = VALUE string( ).
              t275 = t240->as_string( ).
              DATA(t278) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t278->has = abap_true.
              t278->value = t275.
              t271 = t278.
            ENDIF.
            t242 = NEW zcl_lnt_domain_value( i_language = t271 i_low_a740 = t243 i_high = t252 i_description = t261 ).
            CREATE OBJECT t242->zlnt_view_ownkeys_b0e8086400eb.
            t242->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t279.
            t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `low` p1 = t279 ).
            DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t280.
            IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `high` p1 = t280 ).
            ENDIF.
            DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t281.
            IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t281 ).
            ENDIF.
            DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t282.
            IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `language` p1 = t282 ).
            ENDIF.
            CREATE OBJECT t242->zlnt_json_ownkeys_70e5fd461788.
            t242->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t284.
            t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = |low| p1 = t284 ).
            DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t286.
            IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = |high| p1 = t286 ).
            ENDIF.
            DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t288.
            IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t288 ).
            ENDIF.
            DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t290.
            IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = |language| p1 = t290 ).
            ENDIF.
            t206 = t242.
            t73->load( ).
            APPEND t206 TO t73->items.
            t73->save( ).
          ENDDO.
          DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t296 = t42->get( p0 = |header| ).
          DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t301) = VALUE abap_bool( ).
          IF t296 IS NOT BOUND.
            t301 = abap_true.
          ELSE.
            t301 = xsdbool( t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t301 = abap_true.
          ELSE.
            t300 = t296->get( p0 = |description| ).
          ENDIF.
          t294 = t300.
          DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t309 = t42->get( p0 = |format| ).
          DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t314) = VALUE abap_bool( ).
          IF t309 IS NOT BOUND.
            t314 = abap_true.
          ELSE.
            t314 = xsdbool( t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t314 = abap_true.
          ELSE.
            t313 = t309->get( p0 = |dataType| ).
          ENDIF.
          t307 = t313.
          DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t322 = t42->get( p0 = |outputCharacteristics| ).
          DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t327) = VALUE abap_bool( ).
          IF t322 IS NOT BOUND.
            t327 = abap_true.
          ELSE.
            t327 = xsdbool( t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t327 = abap_true.
          ELSE.
            t326 = t322->get( p0 = |conversionRoutine| ).
          ENDIF.
          t320 = t326.
          DATA t333 TYPE REF TO zcl_lnt_shape_b346f020.
          DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          IF xsdbool( t294 IS INITIAL ) = abap_true.
          ELSE.
            DATA(t339) = VALUE string( ).
            t339 = t294->as_string( ).
            DATA(t342) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t342->has = abap_true.
            t342->value = t339.
            t335 = t342.
          ENDIF.
          t334 = t335.
          DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          IF xsdbool( t307 IS INITIAL ) = abap_true.
          ELSE.
            DATA(t348) = VALUE string( ).
            t348 = t307->as_string( ).
            DATA(t351) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t351->has = abap_true.
            t351->value = t348.
            t344 = t351.
          ENDIF.
          t343 = t344.
          DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t356 = t42->get( p0 = |format| ).
          DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t361) = VALUE abap_bool( ).
          IF t356 IS NOT BOUND.
            t361 = abap_true.
          ELSE.
            t361 = xsdbool( t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t361 = abap_true.
          ELSE.
            t360 = t356->get( p0 = |length| ).
          ENDIF.
          t354 = t360.
          DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t368) = VALUE abap_bool( ).
          DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t354 IS BOUND.
            t369 = t354.
          ENDIF.
          IF t369 IS NOT BOUND.
            t368 = abap_true.
          ELSE.
            t368 = xsdbool( t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t368 = abap_true.
          ELSE.
            DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t373 = t354.
            DATA(t376) = VALUE abap_bool( ).
            IF t373 IS NOT BOUND.
              t376 = abap_true.
            ELSE.
              t376 = xsdbool( t373->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t376 = abap_true.
              DATA(t378) = NEW zlnt_exception_un_5f2d02892fe8( ).
              t378->source_location = |src/objects/domain.ts:133:19|.
              RAISE EXCEPTION t378.
            ENDIF.
            DATA(t380) = VALUE string( ).
            IF t373 IS BOUND.
              t380 = t373->to_string( ).
            ELSE.
              t380 = `undefined`.
            ENDIF.
            DATA(t382) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t382->has = abap_true.
            t382->value = t380.
            t367 = t382.
          ENDIF.
          t352 = t367.
          DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t387 = t42->get( p0 = |format| ).
          DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t392) = VALUE abap_bool( ).
          IF t387 IS NOT BOUND.
            t392 = abap_true.
          ELSE.
            t392 = xsdbool( t387->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t392 = abap_true.
          ELSE.
            t391 = t387->get( p0 = |decimals| ).
          ENDIF.
          t385 = t391.
          DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t399) = VALUE abap_bool( ).
          DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t385 IS BOUND.
            t400 = t385.
          ENDIF.
          IF t400 IS NOT BOUND.
            t399 = abap_true.
          ELSE.
            t399 = xsdbool( t400->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t399 = abap_true.
          ELSE.
            DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t404 = t385.
            DATA(t407) = VALUE abap_bool( ).
            IF t404 IS NOT BOUND.
              t407 = abap_true.
            ELSE.
              t407 = xsdbool( t404->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t407 = abap_true.
              DATA(t409) = NEW zlnt_exception_un_5f2d02892fe8( ).
              t409->source_location = |src/objects/domain.ts:134:21|.
              RAISE EXCEPTION t409.
            ENDIF.
            DATA(t411) = VALUE string( ).
            IF t404 IS BOUND.
              t411 = t404->to_string( ).
            ELSE.
              t411 = `undefined`.
            ENDIF.
            DATA(t413) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t413->has = abap_true.
            t413->value = t411.
            t398 = t413.
          ENDIF.
          t383 = t398.
          DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t415 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          IF xsdbool( t320 IS INITIAL ) = abap_true.
          ELSE.
            DATA(t419) = VALUE string( ).
            t419 = t320->as_string( ).
            DATA(t422) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t422->has = abap_true.
            t422->value = t419.
            t415 = t422.
          ENDIF.
          t414 = t415.
          DATA t423 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t423 = t73.
          DATA t428 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t428.
          t333 = NEW zcl_lnt_shape_b346f020( i_description = t334 i_datatype_9e1e = t343 i_length = t352 i_decimals_2eed = t383 i_conversion_exit = t414 i_values = t423 i_values_translations = t428 ).
          CREATE OBJECT t333->zlnt_view_ownkeys_b0e8086400eb.
          t333->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t333->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t433 ).
          DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t333->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t333->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `datatype` p1 = t434 ).
          ENDIF.
          DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t333->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t333->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t435 ).
          ENDIF.
          DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t333->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t333->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t436 ).
          ENDIF.
          DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t333->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t333->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `conversionExit` p1 = t437 ).
          ENDIF.
          DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t333->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t333->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `values` p1 = t438 ).
          ENDIF.
          DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t333->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t333->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `valuesTranslations` p1 = t439 ).
          ENDIF.
          CREATE OBJECT t333->zlnt_json_ownkeys_70e5fd461788.
          t333->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t333->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t441 ).
          DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t333->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t333->zlnt_json_ownkeys_70e5fd461788->put( p0 = |datatype| p1 = t443 ).
          ENDIF.
          DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t333->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t333->zlnt_json_ownkeys_70e5fd461788->put( p0 = |length| p1 = t445 ).
          ENDIF.
          DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t333->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t333->zlnt_json_ownkeys_70e5fd461788->put( p0 = |decimals| p1 = t447 ).
          ENDIF.
          DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t333->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t333->zlnt_json_ownkeys_70e5fd461788->put( p0 = |conversionExit| p1 = t449 ).
          ENDIF.
          DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t333->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t333->zlnt_json_ownkeys_70e5fd461788->put( p0 = |values| p1 = t451 ).
          ENDIF.
          DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t333->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t333->zlnt_json_ownkeys_70e5fd461788->put( p0 = |valuesTranslations| p1 = t453 ).
          ENDIF.
          me->parsed_xml = t333.
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
        CATCH zlnt_exception_cl_30eec8e8805d INTO t41.
          DATA(t455) = t41->payload.
      ENDTRY.
      DATA(t456) = VALUE f( ).
      DATA(t458) = 0.
      t456 = zlnt_runtime_tele_970d5104e5f4=>now( ).
      DATA t459 TYPE REF TO zcl_lnt_iparse_result.
      DATA(t462) = VALUE f( ).
      t462 = t456 - t16.
      DATA t466 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t459 = NEW zcl_lnt_iparse_result( i_updated = abap_true i_runtime = t462 i_runtime_extra = t466 ).
      CREATE OBJECT t459->zlnt_view_ownkeys_b0e8086400eb.
      t459->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t459->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t468 ).
      DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t459->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t459->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t469 ).
      ENDIF.
      CREATE OBJECT t459->zlnt_json_ownkeys_70e5fd461788.
      t459->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t459->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t471 ).
      DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t459->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t459->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t473 ).
      ENDIF.
      result = t459.
      RETURN.
    ENDIF.
    DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t474 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t474 IS INITIAL ) = abap_true.
    ELSE.
      t477 = t474.
    ENDIF.
    t476 = t477.
    DATA t486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t476 IS INITIAL ) = abap_true.
      DATA t490 TYPE REF TO zcl_lnt_iparse_result.
      DATA t495 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t490 = NEW zcl_lnt_iparse_result( i_updated = abap_false i_runtime = CONV f( 0 ) i_runtime_extra = t495 ).
      CREATE OBJECT t490->zlnt_view_ownkeys_b0e8086400eb.
      t490->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t497 ).
      DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t490->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t498 ).
      ENDIF.
      CREATE OBJECT t490->zlnt_json_ownkeys_70e5fd461788.
      t490->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t490->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t500 ).
      DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t490->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t502 ).
      ENDIF.
      result = t490.
      RETURN.
    ENDIF.
    DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t509 = t476->get( p0 = |abapGit| ).
    DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t515) = VALUE abap_bool( ).
    IF t509 IS NOT BOUND.
      t515 = abap_true.
    ELSE.
      t515 = xsdbool( t509->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t515 = abap_true.
    ELSE.
      t514 = t509->get( p0 = |asx:abap| ).
    ENDIF.
    t507 = t514.
    DATA t521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t522) = VALUE abap_bool( ).
    DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t507 IS BOUND.
      t523 = t507.
    ENDIF.
    IF t523 IS NOT BOUND.
      t522 = abap_true.
    ELSE.
      t522 = xsdbool( t523->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t522 = abap_true.
    ELSE.
      t521 = t507->get( p0 = |asx:values| ).
    ENDIF.
    t505 = t521.
    DATA t530 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t531) = VALUE abap_bool( ).
    DATA t532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t505 IS BOUND.
      t532 = t505.
    ENDIF.
    IF t532 IS NOT BOUND.
      t531 = abap_true.
    ELSE.
      t531 = xsdbool( t532->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t531 = abap_true.
    ELSE.
      t530 = t505->get( p0 = |DD01V| ).
    ENDIF.
    t503 = t530.
    DATA t539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t503 IS INITIAL ) = abap_true.
    ELSE.
      t540 = t503.
    ENDIF.
    t539 = t540.
    DATA t546 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t548 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t554 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t556 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t556 = t476->get( p0 = |abapGit| ).
    DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t562) = VALUE abap_bool( ).
    IF t556 IS NOT BOUND.
      t562 = abap_true.
    ELSE.
      t562 = xsdbool( t556->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t562 = abap_true.
    ELSE.
      t561 = t556->get( p0 = |asx:abap| ).
    ENDIF.
    t554 = t561.
    DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t569) = VALUE abap_bool( ).
    DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t554 IS BOUND.
      t570 = t554.
    ENDIF.
    IF t570 IS NOT BOUND.
      t569 = abap_true.
    ELSE.
      t569 = xsdbool( t570->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t569 = abap_true.
    ELSE.
      t568 = t554->get( p0 = |asx:values| ).
    ENDIF.
    t552 = t568.
    DATA t577 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t578) = VALUE abap_bool( ).
    DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t552 IS BOUND.
      t579 = t552.
    ENDIF.
    IF t579 IS NOT BOUND.
      t578 = abap_true.
    ELSE.
      t578 = xsdbool( t579->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t578 = abap_true.
    ELSE.
      t577 = t552->get( p0 = |DD07V_TAB| ).
    ENDIF.
    t550 = t577.
    DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t587) = VALUE abap_bool( ).
    DATA t588 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t550 IS BOUND.
      t588 = t550.
    ENDIF.
    IF t588 IS NOT BOUND.
      t587 = abap_true.
    ELSE.
      t587 = xsdbool( t588->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t587 = abap_true.
    ELSE.
      t586 = t550->get( p0 = |DD07V| ).
    ENDIF.
    t549 = t586.
    IF t549 IS BOUND.
      t548 = t549.
    ENDIF.
    t546 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t548 ).
    DATA t595 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t595.
    DATA t598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t599 TYPE REF TO object.
    DATA(t600) = VALUE i( ).
    DO.
      t546->load( ).
      IF t600 >= lines( t546->items ).
        EXIT.
      ENDIF.
      CLEAR t599.
      READ TABLE t546->items INDEX t600 + 1 INTO t599.
      t600 = t600 + 1.
      DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t601.
      CLEAR t598.
      IF t599 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t601 ?= t599.
        t598 = t601.
      ELSE.
        IF t599 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t602 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t602.
          t602 ?= t599.
          CLEAR t598.
          IF t602 IS BOUND.
            CREATE OBJECT t598.
            t598->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t598->cval = t602.
          ENDIF.
        ELSE.
          CLEAR t598.
          IF t599 IS BOUND.
            DATA t603 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t603.
            DATA t604 TYPE REF TO object.
            CLEAR t604.
            CLEAR t603.
            t604 = t599.
            TRY.
                t598 ?= t604.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t598 IS NOT BOUND.
              TRY.
                  t603 ?= t599.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t603 IS BOUND.
                t598 = t603->source( ).
              ENDIF.
              IF t598 IS NOT BOUND.
                CREATE OBJECT t598.
                t598->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t598->oval = t599.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t607.
      DATA t609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t609.
      t609 = t598.
      DATA t611 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t611.
      DATA(t612) = VALUE abap_bool( ).
      IF t609 IS NOT BOUND.
        t612 = abap_true.
      ELSE.
        t612 = xsdbool( t609->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t612 = abap_true.
        CLEAR t611.
      ELSE.
        t611 = t609->get( p0 = |DDTEXT| ).
      ENDIF.
      t607 = t611.
      DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t618.
      DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t620.
      t620 = t598.
      DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t622.
      DATA(t623) = VALUE abap_bool( ).
      IF t620 IS NOT BOUND.
        t623 = abap_true.
      ELSE.
        t623 = xsdbool( t620->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t623 = abap_true.
        CLEAR t622.
      ELSE.
        t622 = t620->get( p0 = |DOMVALUE_L| ).
      ENDIF.
      t618 = t622.
      DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t629.
      DATA t631 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t631.
      t631 = t598.
      DATA t633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t633.
      DATA(t634) = VALUE abap_bool( ).
      IF t631 IS NOT BOUND.
        t634 = abap_true.
      ELSE.
        t634 = xsdbool( t631->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t634 = abap_true.
        CLEAR t633.
      ELSE.
        t633 = t631->get( p0 = |DOMVALUE_H| ).
      ENDIF.
      t629 = t633.
      DATA t640 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t640.
      DATA t642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t642.
      t642 = t598.
      DATA t644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t644.
      DATA(t645) = VALUE abap_bool( ).
      IF t642 IS NOT BOUND.
        t645 = abap_true.
      ELSE.
        t645 = xsdbool( t642->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t645 = abap_true.
        CLEAR t644.
      ELSE.
        t644 = t642->get( p0 = |DDLANGUAGE| ).
      ENDIF.
      t640 = t644.
      DATA t651 TYPE REF TO zcl_lnt_domain_value.
      CLEAR t651.
      DATA t652 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t652.
      DATA t653 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t653.
      IF xsdbool( t607 IS INITIAL ) = abap_true.
        CLEAR t653.
      ELSE.
        DATA(t657) = VALUE string( ).
        t657 = t607->as_string( ).
        DATA(t660) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t660->has = abap_true.
        t660->value = t657.
        t653 = t660.
      ENDIF.
      t652 = t653.
      DATA t661 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t661.
      DATA t662 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t662.
      IF xsdbool( t618 IS INITIAL ) = abap_true.
        CLEAR t662.
      ELSE.
        DATA(t666) = VALUE string( ).
        t666 = t618->as_string( ).
        DATA(t669) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t669->has = abap_true.
        t669->value = t666.
        t662 = t669.
      ENDIF.
      t661 = t662.
      DATA t670 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t670.
      DATA t671 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t671.
      IF xsdbool( t629 IS INITIAL ) = abap_true.
        CLEAR t671.
      ELSE.
        DATA(t675) = VALUE string( ).
        t675 = t629->as_string( ).
        DATA(t678) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t678->has = abap_true.
        t678->value = t675.
        t671 = t678.
      ENDIF.
      t670 = t671.
      DATA t680 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t680.
      IF xsdbool( t640 IS INITIAL ) = abap_true.
        CLEAR t680.
      ELSE.
        DATA(t684) = VALUE string( ).
        t684 = t640->as_string( ).
        DATA(t687) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t687->has = abap_true.
        t687->value = t684.
        t680 = t687.
      ENDIF.
      t651 = NEW zcl_lnt_domain_value( i_language = t680 i_low_a740 = t661 i_high = t670 i_description = t652 ).
      CREATE OBJECT t651->zlnt_view_ownkeys_b0e8086400eb.
      t651->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t688 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t688.
      t651->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t688 ).
      DATA t689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t689.
      IF t651->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t651->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `low` p1 = t689 ).
      ENDIF.
      DATA t690 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t690.
      IF t651->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t651->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `high` p1 = t690 ).
      ENDIF.
      DATA t691 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t691.
      IF t651->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t651->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `language` p1 = t691 ).
      ENDIF.
      CREATE OBJECT t651->zlnt_json_ownkeys_70e5fd461788.
      t651->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t693.
      t651->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t693 ).
      DATA t695 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t695.
      IF t651->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t651->zlnt_json_ownkeys_70e5fd461788->put( p0 = |low| p1 = t695 ).
      ENDIF.
      DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t697.
      IF t651->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t651->zlnt_json_ownkeys_70e5fd461788->put( p0 = |high| p1 = t697 ).
      ENDIF.
      DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t699.
      IF t651->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t651->zlnt_json_ownkeys_70e5fd461788->put( p0 = |language| p1 = t699 ).
      ENDIF.
      t595->load( ).
      APPEND t651 TO t595->items.
      t595->save( ).
    ENDDO.
    DATA t702 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t704 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t705 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t706 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t708 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t712 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t712 = t476->get( p0 = |abapGit| ).
    DATA t717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t718) = VALUE abap_bool( ).
    IF t712 IS NOT BOUND.
      t718 = abap_true.
    ELSE.
      t718 = xsdbool( t712->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t718 = abap_true.
    ELSE.
      t717 = t712->get( p0 = |asx:abap| ).
    ENDIF.
    t710 = t717.
    DATA t724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t725) = VALUE abap_bool( ).
    DATA t726 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t710 IS BOUND.
      t726 = t710.
    ENDIF.
    IF t726 IS NOT BOUND.
      t725 = abap_true.
    ELSE.
      t725 = xsdbool( t726->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t725 = abap_true.
    ELSE.
      t724 = t710->get( p0 = |asx:values| ).
    ENDIF.
    t708 = t724.
    DATA t733 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t734) = VALUE abap_bool( ).
    DATA t735 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t708 IS BOUND.
      t735 = t708.
    ENDIF.
    IF t735 IS NOT BOUND.
      t734 = abap_true.
    ELSE.
      t734 = xsdbool( t735->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t734 = abap_true.
    ELSE.
      t733 = t708->get( p0 = |DD07_TEXTS| ).
    ENDIF.
    t706 = t733.
    DATA t742 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t743) = VALUE abap_bool( ).
    DATA t744 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t706 IS BOUND.
      t744 = t706.
    ENDIF.
    IF t744 IS NOT BOUND.
      t743 = abap_true.
    ELSE.
      t743 = xsdbool( t744->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t743 = abap_true.
    ELSE.
      t742 = t706->get( p0 = |item| ).
    ENDIF.
    t705 = t742.
    IF t705 IS BOUND.
      t704 = t705.
    ENDIF.
    t702 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t704 ).
    DATA t751 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t751.
    DATA t754 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t755 TYPE REF TO object.
    DATA(t756) = VALUE i( ).
    DO.
      t702->load( ).
      IF t756 >= lines( t702->items ).
        EXIT.
      ENDIF.
      CLEAR t755.
      READ TABLE t702->items INDEX t756 + 1 INTO t755.
      t756 = t756 + 1.
      DATA t757 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t757.
      CLEAR t754.
      IF t755 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t757 ?= t755.
        t754 = t757.
      ELSE.
        IF t755 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t758 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t758.
          t758 ?= t755.
          CLEAR t754.
          IF t758 IS BOUND.
            CREATE OBJECT t754.
            t754->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t754->cval = t758.
          ENDIF.
        ELSE.
          CLEAR t754.
          IF t755 IS BOUND.
            DATA t759 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t759.
            DATA t760 TYPE REF TO object.
            CLEAR t760.
            CLEAR t759.
            t760 = t755.
            TRY.
                t754 ?= t760.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t754 IS NOT BOUND.
              TRY.
                  t759 ?= t755.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t759 IS BOUND.
                t754 = t759->source( ).
              ENDIF.
              IF t754 IS NOT BOUND.
                CREATE OBJECT t754.
                t754->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t754->oval = t755.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t763 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t763.
      DATA t765 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t765.
      t765 = t754.
      DATA t767 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t767.
      DATA(t768) = VALUE abap_bool( ).
      IF t765 IS NOT BOUND.
        t768 = abap_true.
      ELSE.
        t768 = xsdbool( t765->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t768 = abap_true.
        CLEAR t767.
      ELSE.
        t767 = t765->get( p0 = |DDLANGUAGE| ).
      ENDIF.
      t763 = t767.
      DATA t774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t774.
      DATA t776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t776.
      t776 = t754.
      DATA t778 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t778.
      DATA(t779) = VALUE abap_bool( ).
      IF t776 IS NOT BOUND.
        t779 = abap_true.
      ELSE.
        t779 = xsdbool( t776->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t779 = abap_true.
        CLEAR t778.
      ELSE.
        t778 = t776->get( p0 = |DDTEXT| ).
      ENDIF.
      t774 = t778.
      DATA t785 TYPE REF TO zcl_lnt_dmn_vl_trnsltn.
      CLEAR t785.
      DATA t786 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t786.
      DATA t787 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t787.
      IF xsdbool( t763 IS INITIAL ) = abap_true.
        CLEAR t787.
      ELSE.
        DATA(t791) = VALUE string( ).
        t791 = t763->as_string( ).
        DATA(t794) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t794->has = abap_true.
        t794->value = t791.
        t787 = t794.
      ENDIF.
      t786 = t787.
      DATA t796 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t796.
      IF xsdbool( t774 IS INITIAL ) = abap_true.
        CLEAR t796.
      ELSE.
        DATA(t800) = VALUE string( ).
        t800 = t774->as_string( ).
        DATA(t803) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t803->has = abap_true.
        t803->value = t800.
        t796 = t803.
      ENDIF.
      t785 = NEW zcl_lnt_dmn_vl_trnsltn( i_language = t786 i_description = t796 ).
      CREATE OBJECT t785->zlnt_view_ownkeys_b0e8086400eb.
      t785->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t804 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t804.
      t785->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `language` p1 = t804 ).
      DATA t805 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t805.
      IF t785->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t785->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t805 ).
      ENDIF.
      CREATE OBJECT t785->zlnt_json_ownkeys_70e5fd461788.
      t785->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t807 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t807.
      t785->zlnt_json_ownkeys_70e5fd461788->put( p0 = |language| p1 = t807 ).
      DATA t809 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t809.
      IF t785->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t785->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t809 ).
      ENDIF.
      t751->load( ).
      APPEND t785 TO t751->items.
      t751->save( ).
    ENDDO.
    DATA t815 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t817 = t539.
    DATA t819 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t820) = VALUE abap_bool( ).
    DATA t821 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t817 IS BOUND.
      t821 = t817.
    ENDIF.
    IF t821 IS NOT BOUND.
      t820 = abap_true.
    ELSE.
      t820 = xsdbool( t821->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t820 = abap_true.
    ELSE.
      t819 = t817->get( p0 = |DDTEXT| ).
    ENDIF.
    t815 = t819.
    DATA t828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t830 = t539.
    DATA t832 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t833) = VALUE abap_bool( ).
    DATA t834 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t830 IS BOUND.
      t834 = t830.
    ENDIF.
    IF t834 IS NOT BOUND.
      t833 = abap_true.
    ELSE.
      t833 = xsdbool( t834->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t833 = abap_true.
    ELSE.
      t832 = t830->get( p0 = |DATATYPE| ).
    ENDIF.
    t828 = t832.
    DATA t841 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t843 = t539.
    DATA t845 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t846) = VALUE abap_bool( ).
    DATA t847 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t843 IS BOUND.
      t847 = t843.
    ENDIF.
    IF t847 IS NOT BOUND.
      t846 = abap_true.
    ELSE.
      t846 = xsdbool( t847->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t846 = abap_true.
    ELSE.
      t845 = t843->get( p0 = |LENG| ).
    ENDIF.
    t841 = t845.
    DATA t854 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t856 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t856 = t539.
    DATA t858 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t859) = VALUE abap_bool( ).
    DATA t860 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t856 IS BOUND.
      t860 = t856.
    ENDIF.
    IF t860 IS NOT BOUND.
      t859 = abap_true.
    ELSE.
      t859 = xsdbool( t860->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t859 = abap_true.
    ELSE.
      t858 = t856->get( p0 = |CONVEXIT| ).
    ENDIF.
    t854 = t858.
    DATA t867 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t869 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t869 = t539.
    DATA t871 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t872) = VALUE abap_bool( ).
    DATA t873 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t869 IS BOUND.
      t873 = t869.
    ENDIF.
    IF t873 IS NOT BOUND.
      t872 = abap_true.
    ELSE.
      t872 = xsdbool( t873->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t872 = abap_true.
    ELSE.
      t871 = t869->get( p0 = |DECIMALS| ).
    ENDIF.
    t867 = t871.
    DATA t880 TYPE REF TO zcl_lnt_shape_b346f020.
    DATA t881 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t882 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t815 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t886) = VALUE string( ).
      t886 = t815->as_string( ).
      DATA(t889) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t889->has = abap_true.
      t889->value = t886.
      t882 = t889.
    ENDIF.
    t881 = t882.
    DATA t890 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t891 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t828 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t895) = VALUE string( ).
      t895 = t828->as_string( ).
      DATA(t898) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t898->has = abap_true.
      t898->value = t895.
      t891 = t898.
    ENDIF.
    t890 = t891.
    DATA t899 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t900 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t841 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t904) = VALUE string( ).
      t904 = t841->as_string( ).
      DATA(t907) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t907->has = abap_true.
      t907->value = t904.
      t900 = t907.
    ENDIF.
    t899 = t900.
    DATA t908 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t909 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t854 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t913) = VALUE string( ).
      t913 = t854->as_string( ).
      DATA(t916) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t916->has = abap_true.
      t916->value = t913.
      t909 = t916.
    ENDIF.
    t908 = t909.
    DATA t918 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t867 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t922) = VALUE string( ).
      t922 = t867->as_string( ).
      DATA(t925) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t925->has = abap_true.
      t925->value = t922.
      t918 = t925.
    ENDIF.
    t880 = NEW zcl_lnt_shape_b346f020( i_description = t881 i_datatype_9e1e = t890 i_length = t899 i_decimals_2eed = t918 i_conversion_exit = t908 i_values = t595 i_values_translations = t751 ).
    CREATE OBJECT t880->zlnt_view_ownkeys_b0e8086400eb.
    t880->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t936 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t880->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t936 ).
    DATA t937 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t880->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t880->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `datatype` p1 = t937 ).
    ENDIF.
    DATA t938 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t880->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t880->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t938 ).
    ENDIF.
    DATA t939 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t880->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t880->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `conversionExit` p1 = t939 ).
    ENDIF.
    DATA t940 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t880->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t880->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t940 ).
    ENDIF.
    DATA t941 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t880->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t880->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `values` p1 = t941 ).
    ENDIF.
    DATA t942 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t880->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t880->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `valuesTranslations` p1 = t942 ).
    ENDIF.
    CREATE OBJECT t880->zlnt_json_ownkeys_70e5fd461788.
    t880->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t944 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t880->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t944 ).
    DATA t946 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t880->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t880->zlnt_json_ownkeys_70e5fd461788->put( p0 = |datatype| p1 = t946 ).
    ENDIF.
    DATA t948 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t880->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t880->zlnt_json_ownkeys_70e5fd461788->put( p0 = |length| p1 = t948 ).
    ENDIF.
    DATA t950 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t880->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t880->zlnt_json_ownkeys_70e5fd461788->put( p0 = |conversionExit| p1 = t950 ).
    ENDIF.
    DATA t952 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t880->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t880->zlnt_json_ownkeys_70e5fd461788->put( p0 = |decimals| p1 = t952 ).
    ENDIF.
    DATA t954 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t880->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t880->zlnt_json_ownkeys_70e5fd461788->put( p0 = |values| p1 = t954 ).
    ENDIF.
    DATA t956 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t880->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t880->zlnt_json_ownkeys_70e5fd461788->put( p0 = |valuesTranslations| p1 = t956 ).
    ENDIF.
    me->parsed_xml = t880.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA(t958) = VALUE f( ).
    DATA(t960) = 0.
    t958 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t961 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t964) = VALUE f( ).
    t964 = t958 - t16.
    DATA t968 TYPE REF TO zcl_lnt_shape_8fc6df03.
    t961 = NEW zcl_lnt_iparse_result( i_updated = abap_true i_runtime = t964 i_runtime_extra = t968 ).
    CREATE OBJECT t961->zlnt_view_ownkeys_b0e8086400eb.
    t961->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t970 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t961->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t970 ).
    DATA t971 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t961->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t961->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t971 ).
    ENDIF.
    CREATE OBJECT t961->zlnt_json_ownkeys_70e5fd461788.
    t961->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t973 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t961->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t973 ).
    DATA t975 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t961->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t961->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t975 ).
    ENDIF.
    result = t961.

  ENDMETHOD.

  METHOD get_fixed_values.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_shape_b346f020.
    t4 = me->parsed_xml.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
    ELSE.
      t6 = t4->values.
    ENDIF.
    t2 = t6.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      CREATE OBJECT t13.
    ELSE.
      t13 = t2.
    ENDIF.
    result = t13.

  ENDMETHOD.

  METHOD get_fixed_values_translations.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_shape_b346f020.
    t4 = me->parsed_xml.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
    ELSE.
      t6 = t4->values_translations.
    ENDIF.
    t2 = t6.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      CREATE OBJECT t13.
    ELSE.
      t13 = t2.
    ENDIF.
    result = t13.

  ENDMETHOD.

  METHOD get_aff_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_object.
    t4 = me.
    t2 = t4->files.
    DATA t8 TYPE i.
    t2->load( ).
    t8 = lines( t2->items ).
    DATA t11 TYPE i.
    t11 = 0.
    DATA t13 TYPE REF TO zif_lnt_file.
    DO.
      IF xsdbool( t11 < t8 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t18 TYPE REF TO zif_lnt_file.
      CLEAR t18.
      DATA t20 TYPE REF TO zif_lnt_file.
      CLEAR t20.
      DATA t23 TYPE REF TO object.
      t23 = t2->get( p0 = t11 ).
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      CLEAR t20.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t24 ?= t23.
        DATA t25 TYPE REF TO object.
        t25 = t24->as_ref( ).
        t20 ?= t25.
      ELSE.
        t20 ?= t23.
      ENDIF.
      t18 = t20.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE string.
      DATA t28 TYPE string.
      t28 = t18->get_filename( ).
      DATA(t30) = strlen( t28 ).
      t27 = t28.
      TRANSLATE t27 TO LOWER CASE.
      DATA(t31) = |.doma.json|.
      DATA(t32) = strlen( t27 ).
      DATA t33 TYPE i.
      DATA(t34) = VALUE i( ).
      DATA(t35) = VALUE string( ).
      t33 = strlen( t31 ).
      IF t33 = 0.
        t26 = abap_true.
      ELSEIF t33 <= t32.
        t34 = 0.
        t34 = t32 - t33.
        t35 = t27+t34(t33).
        IF t35 = t31.
          t26 = abap_true.
        ENDIF.
      ENDIF.
      IF t26 = abap_true.
        t13 = t18.
        EXIT.
      ENDIF.
      DATA(t42) = 1.
      t11 = t11 + t42.
    ENDDO.
    result = t13.

  ENDMETHOD.

  METHOD parse.
    result = CAST zcl_lnt_iparse_result( me->prs_instn_src_objct_dmn_ts_dmn( ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1243_332432e07897.
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~parse_type.
    result = me->parse_type( i_reg_f149 = i_reg_f149 i_data_element = i_data_element i_description = i_description ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~update_file.
    me->update_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~parse_type.
    result = me->parse_type( i_reg_f149 = i_reg_f149 i_data_element = i_data_element i_description = i_description ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~update_file.
    me->update_file( i_file = i_file ).
  ENDMETHOD.
ENDCLASS.
