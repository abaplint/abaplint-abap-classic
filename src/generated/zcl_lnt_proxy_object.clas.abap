* TS: src/objects/proxy_object.ts:28:1 ProxyObject
CLASS zcl_lnt_proxy_object DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    DATA parsed_xml TYPE REF TO zcl_lnt_parsed_proxy.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS pr_in_sr_ob_prx_obj_ts_prx_obj IMPORTING i_release_2099 TYPE REF TO zcl_lnt_abap_release i_global_macros_14ec TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO
    zcl_lnt_iparse_result.
    METHODS parse_xml RETURNING VALUE(result) TYPE REF TO zcl_lnt_parsed_proxy.
    METHODS generate_abap_objects RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parse REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_proxy_object IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    result = |SPRX|.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = CONV f( 34 ) i_allow_namespace = abap_true i_custom_regex = t6 ).
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

  METHOD get_description.
    DATA t1 TYPE REF TO zcl_lnt_iparse_result.
    DATA t2 TYPE REF TO zcl_lnt_abap_release.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4 TYPE REF TO zif_lnt_registry.
    t1 = me->pr_in_sr_ob_prx_obj_ts_prx_obj( i_release_2099 = t2 i_global_macros_14ec = t3 i_reg_f149 = t4 ).
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zcl_lnt_parsed_proxy.
    t9 = me->parsed_xml.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t9 IS INITIAL ) = abap_true.
    ELSE.
      t11 = t9->proxy_data.
    ENDIF.
    t7 = t11.
    DATA t18 TYPE REF TO zcl_lnt_proxy_data_item.
    IF xsdbool( t7 IS INITIAL ) = abap_true.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t23 = t7.
      DATA(t26) = VALUE i( ).
      t23->load( ).
      t26 = lines( t23->items ).
      DATA(t29) = VALUE i( ).
      t29 = 0.
      DATA t31 TYPE REF TO zcl_lnt_proxy_data_item.
      DO.
        IF xsdbool( t29 < t26 ) = abap_false.
          EXIT.
        ENDIF.
        DATA t36 TYPE REF TO zcl_lnt_proxy_data_item.
        CLEAR t36.
        DATA t38 TYPE REF TO zcl_lnt_proxy_data_item.
        CLEAR t38.
        DATA t41 TYPE REF TO object.
        CLEAR t41.
        t41 = t23->get( p0 = t29 ).
        DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t42.
        CLEAR t38.
        IF t41 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t42 ?= t41.
          CLEAR t38.
          IF t42 IS BOUND.
            IF t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t38 ?= t42->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t38 IS NOT BOUND.
              IF t42->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t42->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t42->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t42->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t43.
                IF t42->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t43 ?= t42->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t43->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t44.
              DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t45.
              DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t46.
              DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t47.
              DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t48.
              DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t49.
              DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t50.
              DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t51.
              DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t52.
              DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t53.
              DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t54.
              DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t55.
              DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t56.
              t38 = NEW zcl_lnt_proxy_data_item( view_source = t42 i_object_5749 = t44 i_obj_name = t45 i_object1 = t46 i_obj_name1 = t47 i_object2 = t48 i_obj_name2 = t49 i_object_r = t50 i_obj_name_r = t51 i_r3_type = t52 i_r3_name = t53
              i_r3_text = t54 i_ifr_type = t55 i_ifr_name = t56 ).
            ENDIF.
          ENDIF.
        ELSE.
          t38 ?= t41.
        ENDIF.
        t36 = t38.
        DATA(t57) = VALUE abap_bool( ).
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        t58 = t36->zlnt_view_read_sr_35246f61540a( ).
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t63->has = abap_true.
        t63->value = |INTF|.
        t60 = t63.
        DATA(t65) = VALUE abap_bool( ).
        DATA(t66) = VALUE abap_bool( ).
        IF t58 IS BOUND.
          t65 = t58->has.
        ENDIF.
        IF t60 IS BOUND.
          t66 = t60->has.
        ENDIF.
        IF t65 = t66.
          IF t65 = abap_false.
            t57 = abap_true.
          ELSEIF t58->value = t60->value.
            t57 = abap_true.
          ENDIF.
        ENDIF.
        IF t57 = abap_true.
          t31 = t36.
          EXIT.
        ENDIF.
        DATA(t73) = 1.
        t29 = t29 + t73.
      ENDDO.
      t18 = t31.
    ENDIF.
    DATA t76 TYPE REF TO zcl_lnt_proxy_data_item.
    t76 = t18.
    DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t76 IS INITIAL ) = abap_true.
    ELSE.
      t78 = t76->zlnt_view_read_sr_c8d5f8e8bf9b( ).
    ENDIF.
    result = t78.

  ENDMETHOD.

  METHOD set_dirty.
    CLEAR me->parsed_xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD pr_in_sr_ob_prx_obj_ts_prx_obj.
    DATA(t1) = i_release_2099.
    DATA(t2) = i_global_macros_14ec.
    DATA(t3) = i_reg_f149.
    IF xsdbool( me->parsed_xml IS BOUND ) = abap_true.
      DATA t6 TYPE REF TO zcl_lnt_iparse_result.
      DATA t11 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t6 = NEW zcl_lnt_iparse_result( i_updated = abap_false i_runtime = CONV f( 0 ) i_runtime_extra = t11 ).
      CREATE OBJECT t6->zlnt_view_ownkeys_b0e8086400eb.
      t6->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t13 ).
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t14 ).
      ENDIF.
      CREATE OBJECT t6->zlnt_json_ownkeys_70e5fd461788.
      t6->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t16 ).
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t18 ).
      ENDIF.
      result = t6.
      RETURN.
    ENDIF.
    DATA t20 TYPE f.
    DATA(t21) = 0.
    t20 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    me->parsed_xml = CAST zcl_lnt_parsed_proxy( me->parse_xml( ) ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t27 TYPE f.
    DATA(t28) = 0.
    t27 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t29 = CAST zlnt_runtime_arra_c22708faf2e3( me->generate_abap_objects( ) ).
    DATA t32 TYPE REF TO zcl_lnt_abstract_object.
    DATA t33 TYPE REF TO object.
    DATA(t34) = VALUE i( ).
    DO.
      t29->load( ).
      IF t34 >= lines( t29->items ).
        EXIT.
      ENDIF.
      CLEAR t33.
      READ TABLE t29->items INDEX t34 + 1 INTO t33.
      t34 = t34 + 1.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      CLEAR t32.
      IF t33 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t35 ?= t33.
        DATA t36 TYPE REF TO object.
        t36 = t35->as_ref( ).
        t32 ?= t36.
      ELSE.
        t32 ?= t33.
      ENDIF.
      DATA t37 TYPE REF TO zif_lnt_registry.
      CLEAR t37.
      DATA t38 TYPE REF TO zif_lnt_registry.
      t38 = t3.
      DATA t40 TYPE REF TO zif_lnt_registry.
      CLEAR t40.
      IF xsdbool( t38 IS INITIAL ) = abap_true.
        CLEAR t40.
      ELSE.
        DATA t45 TYPE REF TO zif_lnt_registry.
        t45 = t38.
        DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t47 = t32->files.
        t40 = t45->add_dependencies( i_files = t47 ).
      ENDIF.
      t37 = t40.
    ENDDO.
    DATA t52 TYPE REF TO zcl_lnt_iparse_result.
    DATA t55 TYPE f.
    t55 = t27 - t20.
    DATA t59 TYPE REF TO zcl_lnt_shape_8fc6df03.
    t52 = NEW zcl_lnt_iparse_result( i_updated = abap_true i_runtime = t55 i_runtime_extra = t59 ).
    CREATE OBJECT t52->zlnt_view_ownkeys_b0e8086400eb.
    t52->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t61 ).
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t62 ).
    ENDIF.
    CREATE OBJECT t52->zlnt_json_ownkeys_70e5fd461788.
    t52->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t64 ).
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t66 ).
    ENDIF.
    result = t52.

  ENDMETHOD.

  METHOD parse_xml.
    DATA t1 TYPE REF TO zcl_lnt_parsed_proxy.
    DATA t2 TYPE REF TO zcl_lnt_parsed_proxy.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = NEW zcl_lnt_parsed_proxy( i_proxy_data = t3 ).
    CREATE OBJECT t2->zlnt_view_ownkeys_b0e8086400eb.
    t2->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `proxyData` p1 = t5 ).
    CREATE OBJECT t2->zlnt_json_ownkeys_70e5fd461788.
    t2->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = |proxyData| p1 = t7 ).
    t1 = t2.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t8 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t8 IS INITIAL ) = abap_true.
    ELSE.
      t11 = t8.
    ENDIF.
    t10 = t11.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = VALUE abap_bool( ).
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t19 = xsdbool( t10 IS INITIAL ).
    t18 = t19.
    IF t19 = abap_false.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t28 = t10->get( p0 = |abapGit| ).
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t18 = xsdbool( t28 IS INITIAL ).
    ENDIF.
    t17 = t18.
    IF t18 = abap_false.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t41 = t10->get( p0 = |abapGit| ).
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t47) = VALUE abap_bool( ).
      IF t41 IS NOT BOUND.
        t47 = abap_true.
      ELSE.
        t47 = xsdbool( t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t47 = abap_true.
      ELSE.
        t46 = t41->get( p0 = |asx:abap| ).
      ENDIF.
      t39 = t46.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t54) = VALUE abap_bool( ).
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t39 IS BOUND.
        t55 = t39.
      ENDIF.
      IF t55 IS NOT BOUND.
        t54 = abap_true.
      ELSE.
        t54 = xsdbool( t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t54 = abap_true.
      ELSE.
        t53 = t39->get( p0 = |asx:values| ).
      ENDIF.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t17 = xsdbool( t53 IS INITIAL ).
    ENDIF.
    IF t17 = abap_true.
      result = t1.
      RETURN.
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t73 = t10.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t76) = VALUE abap_bool( ).
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t73 IS BOUND.
      t77 = t73.
    ENDIF.
    IF t77 IS NOT BOUND.
      t76 = abap_true.
    ELSE.
      t76 = xsdbool( t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t76 = abap_true.
    ELSE.
      t75 = t73->get( p0 = |abapGit| ).
    ENDIF.
    t71 = t75.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t85) = VALUE abap_bool( ).
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t71 IS BOUND.
      t86 = t71.
    ENDIF.
    IF t86 IS NOT BOUND.
      t85 = abap_true.
    ELSE.
      t85 = xsdbool( t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t85 = abap_true.
    ELSE.
      t84 = t71->get( p0 = |asx:abap| ).
    ENDIF.
    t69 = t84.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t94) = VALUE abap_bool( ).
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t69 IS BOUND.
      t95 = t69.
    ENDIF.
    IF t95 IS NOT BOUND.
      t94 = abap_true.
    ELSE.
      t94 = xsdbool( t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t94 = abap_true.
    ELSE.
      t93 = t69->get( p0 = |asx:values| ).
    ENDIF.
    t67 = t93.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t67 IS INITIAL ) = abap_true.
    ELSE.
      t103 = t67.
    ENDIF.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t115 = t103->get( p0 = |PROXY_DATA| ).
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t121) = VALUE abap_bool( ).
    IF t115 IS NOT BOUND.
      t121 = abap_true.
    ELSE.
      t121 = xsdbool( t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t121 = abap_true.
    ELSE.
      t120 = t115->get( p0 = |item| ).
    ENDIF.
    t114 = t120.
    IF t114 IS BOUND.
      t113 = t114.
    ENDIF.
    t112 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t113 ).
    IF t112 IS BOUND.
      DATA t127 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t128 TYPE REF TO object.
      t128 = t112.
      TRY.
          t111 ?= t128.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t111 IS NOT BOUND.
        TRY.
            t127 ?= t112.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t127 IS BOUND.
          t111 = t127->source( ).
        ENDIF.
        IF t111 IS NOT BOUND.
          CREATE OBJECT t111.
          t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t111->oval = t112.
        ENDIF.
      ENDIF.
    ENDIF.
    IF t111 IS BOUND.
      IF t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t110 ?= t111->oval.
          CATCH cx_sy_move_cast_error.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
        ENDTRY.
      ELSEIF t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
        CREATE OBJECT t110.
        t110->source = t111.
      ELSE.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
      ENDIF.
      t110->load( ).
      DATA t129 TYPE REF TO object.
      DATA t130 TYPE REF TO zcl_lnt_proxy_data_item.
      LOOP AT t110->items INTO t129.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        CLEAR t130.
        IF t129 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t131 ?= t129.
          CLEAR t130.
          IF t131 IS BOUND.
            IF t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t130 ?= t131->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t130 IS NOT BOUND.
              IF t131->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t131->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t131->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t131->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                DATA t132 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t132.
                IF t131->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t132 ?= t131->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t132->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t133.
              DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t134.
              DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t135.
              DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t136.
              DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t137.
              DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t138.
              DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t139.
              DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t140.
              DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t141.
              DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t142.
              DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t143.
              DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t144.
              DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t145.
              t130 = NEW zcl_lnt_proxy_data_item( view_source = t131 i_object_5749 = t133 i_obj_name = t134 i_object1 = t135 i_obj_name1 = t136 i_object2 = t137 i_obj_name2 = t138 i_object_r = t139 i_obj_name_r = t140 i_r3_type = t141
              i_r3_name = t142 i_r3_text = t143 i_ifr_type = t144 i_ifr_name = t145 ).
            ENDIF.
          ENDIF.
        ELSE.
          t130 ?= t129.
        ENDIF.
      ENDLOOP.
    ENDIF.
    t1->proxy_data = t110.
    DELETE t1->zlnt_record_delet_0597644d88b4 WHERE table_line = `proxyData`.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `proxyData` p1 = t146 ).
    ENDIF.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |proxyData| p1 = t148 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD generate_abap_objects.
    DATA t1 TYPE REF TO zcl_lnt_iparse_result.
    DATA t2 TYPE REF TO zcl_lnt_abap_release.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4 TYPE REF TO zif_lnt_registry.
    t1 = me->pr_in_sr_ob_prx_obj_ts_prx_obj( i_release_2099 = t2 i_global_macros_14ec = t3 i_reg_f149 = t4 ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    DATA(t8) = VALUE abap_bool( ).
    t8 = xsdbool( me->parsed_xml IS BOUND ).
    IF xsdbool( t8 = abap_false ) = abap_true.
      result = t5.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_proxy_data_item.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t13 = me->parsed_xml->proxy_data.
    DATA(t17) = VALUE i( ).
    t13->load( ).
    t17 = lines( t13->items ).
    DATA(t20) = VALUE i( ).
    t20 = 0.
    DATA t22 TYPE REF TO zcl_lnt_proxy_data_item.
    DO.
      IF xsdbool( t20 < t17 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t27 TYPE REF TO zcl_lnt_proxy_data_item.
      CLEAR t27.
      DATA t29 TYPE REF TO zcl_lnt_proxy_data_item.
      CLEAR t29.
      DATA t32 TYPE REF TO object.
      CLEAR t32.
      t32 = t13->get( p0 = t20 ).
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      CLEAR t29.
      IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t33 ?= t32.
        CLEAR t29.
        IF t33 IS BOUND.
          IF t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                t29 ?= t33->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF t29 IS NOT BOUND.
            IF t33->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t33->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t33->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t33->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
              DATA t34 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t34.
              IF t33->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t34 ?= t33->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t34->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t35.
            DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t36.
            DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t37.
            DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t38.
            DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t39.
            DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t40.
            DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t41.
            DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t42.
            DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t43.
            DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t44.
            DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t45.
            DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t46.
            DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t47.
            t29 = NEW zcl_lnt_proxy_data_item( view_source = t33 i_object_5749 = t35 i_obj_name = t36 i_object1 = t37 i_obj_name1 = t38 i_object2 = t39 i_obj_name2 = t40 i_object_r = t41 i_obj_name_r = t42 i_r3_type = t43 i_r3_name = t44
            i_r3_text = t45 i_ifr_type = t46 i_ifr_name = t47 ).
          ENDIF.
        ENDIF.
      ELSE.
        t29 ?= t32.
      ENDIF.
      t27 = t29.
      DATA(t48) = VALUE abap_bool( ).
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t49.
      t49 = t27->zlnt_view_read_sr_35246f61540a( ).
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t54->has = abap_true.
      t54->value = |INTF|.
      t51 = t54.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = VALUE abap_bool( ).
      IF t49 IS BOUND.
        t56 = t49->has.
      ENDIF.
      IF t51 IS BOUND.
        t57 = t51->has.
      ENDIF.
      IF t56 = t57.
        IF t56 = abap_false.
          t48 = abap_true.
        ELSEIF t49->value = t51->value.
          t48 = abap_true.
        ENDIF.
      ENDIF.
      IF t48 = abap_true.
        t22 = t27.
        EXIT.
      ENDIF.
      DATA(t64) = 1.
      t20 = t20 + t64.
    ENDDO.
    t11 = t22.
    DATA(t66) = VALUE abap_bool( ).
    DATA(t67) = VALUE abap_bool( ).
    t67 = xsdbool( xsdbool( t11 IS BOUND ) = abap_false ).
    t66 = t67.
    IF t67 = abap_false.
      DATA(t71) = VALUE string( ).
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t72 = zlnt_property_loo_01d5731631ca=>get( p0 = t11 key = |R3_NAME| ).
      IF t72 IS BOUND.
        t71 = t72->type_of( ).
        IF t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t72->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t71 = `function`.
        ENDIF.
      ELSE.
        t71 = `undefined`.
      ENDIF.
      t66 = xsdbool( t71 <> |string| ).
    ENDIF.
    IF t66 = abap_true.
      result = t5.
      RETURN.
    ENDIF.
    DATA(t78) = VALUE string( ).
    DATA(t79) = VALUE string( ).
    DATA(t80) = VALUE string( ).
    t80 = t11->zlnt_view_read_sr_cab452e50c73( )->value.
    DATA(t84) = strlen( t80 ).
    t79 = t80.
    TRANSLATE t79 TO LOWER CASE.
    t78 = t79.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t87.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t89 = me->parsed_xml->proxy_data.
    DATA t92 TYPE REF TO zcl_lnt_proxy_data_item.
    DATA t93 TYPE REF TO object.
    DATA(t94) = VALUE i( ).
    DO.
      t89->load( ).
      IF t94 >= lines( t89->items ).
        EXIT.
      ENDIF.
      CLEAR t93.
      READ TABLE t89->items INDEX t94 + 1 INTO t93.
      t94 = t94 + 1.
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t95.
      CLEAR t92.
      IF t93 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t95 ?= t93.
        CLEAR t92.
        IF t95 IS BOUND.
          IF t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                t92 ?= t95->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF t92 IS NOT BOUND.
            IF t95->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t95->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t95->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t95->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
              DATA t96 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t96.
              IF t95->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t96 ?= t95->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t96->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t97.
            DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t98.
            DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t99.
            DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t100.
            DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t101.
            DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t102.
            DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t103.
            DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t104.
            DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t105.
            DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t106.
            DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t107.
            DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t108.
            DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t109.
            t92 = NEW zcl_lnt_proxy_data_item( view_source = t95 i_object_5749 = t97 i_obj_name = t98 i_object1 = t99 i_obj_name1 = t100 i_object2 = t101 i_obj_name2 = t102 i_object_r = t103 i_obj_name_r = t104 i_r3_type = t105 i_r3_name =
            t106 i_r3_text = t107 i_ifr_type = t108 i_ifr_name = t109 ).
          ENDIF.
        ENDIF.
      ELSE.
        t92 ?= t93.
      ENDIF.
      DATA(t110) = VALUE abap_bool( ).
      DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t111.
      t111 = t92->zlnt_view_read_sr_35246f61540a( ).
      DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t113.
      DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t116->has = abap_true.
      t116->value = |METH|.
      t113 = t116.
      DATA(t118) = VALUE abap_bool( ).
      DATA(t119) = VALUE abap_bool( ).
      IF t111 IS BOUND.
        t118 = t111->has.
      ENDIF.
      IF t113 IS BOUND.
        t119 = t113->has.
      ENDIF.
      IF t118 = t119.
        IF t118 = abap_false.
          t110 = abap_true.
        ELSEIF t111->value = t113->value.
          t110 = abap_true.
        ENDIF.
      ENDIF.
      IF t110 = abap_true.
        t87->load( ).
        APPEND t92 TO t87->items.
        t87->save( ).
      ENDIF.
    ENDDO.
    t85 = t87.
    DATA(t123) = VALUE string( ).
    DATA(t125) = VALUE string( ).
    DATA(t126) = |INTERFACE |.
    DATA(t128) = strlen( t126 ).
    t125 = |{ t126 }{ t78 }|.
    DATA(t130) = strlen( t125 ).
    t123 = |{ t125 }{ | PUBLIC.\n| }|.
    DATA t132 TYPE REF TO zcl_lnt_proxy_data_item.
    DATA t133 TYPE REF TO object.
    DATA(t134) = VALUE i( ).
    DO.
      t85->load( ).
      IF t134 >= lines( t85->items ).
        EXIT.
      ENDIF.
      CLEAR t133.
      READ TABLE t85->items INDEX t134 + 1 INTO t133.
      t134 = t134 + 1.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t135.
      CLEAR t132.
      IF t133 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t135 ?= t133.
        CLEAR t132.
        IF t135 IS BOUND.
          IF t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                t132 ?= t135->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF t132 IS NOT BOUND.
            IF t135->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t135->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t135->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t135->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
              DATA t136 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t136.
              IF t135->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t136 ?= t135->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t136->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t137.
            DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t138.
            DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t139.
            DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t140.
            DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t141.
            DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t142.
            DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t143.
            DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t144.
            DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t145.
            DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t146.
            DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t147.
            DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t148.
            DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t149.
            t132 = NEW zcl_lnt_proxy_data_item( view_source = t135 i_object_5749 = t137 i_obj_name = t138 i_object1 = t139 i_obj_name1 = t140 i_object2 = t141 i_obj_name2 = t142 i_object_r = t143 i_obj_name_r = t144 i_r3_type = t145
            i_r3_name = t146 i_r3_text = t147 i_ifr_type = t148 i_ifr_name = t149 ).
          ENDIF.
        ENDIF.
      ELSE.
        t132 ?= t133.
      ENDIF.
      DATA(t151) = VALUE string( ).
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t152.
      t152 = zlnt_property_loo_01d5731631ca=>get( p0 = t132 key = |R3_NAME| ).
      IF t152 IS BOUND.
        t151 = t152->type_of( ).
        IF t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t152->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t151 = `function`.
        ENDIF.
      ELSE.
        t151 = `undefined`.
      ENDIF.
      IF xsdbool( t151 <> |string| ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t156) = VALUE string( ).
      DATA(t157) = VALUE string( ).
      DATA(t158) = VALUE string( ).
      t158 = t132->zlnt_view_read_sr_cab452e50c73( )->value.
      DATA(t161) = strlen( t158 ).
      t157 = t158.
      TRANSLATE t157 TO LOWER CASE.
      t156 = t157.
      DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t162.
      DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t164.
      DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t165.
      CREATE OBJECT t165.
      t164 = t165.
      DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t166.
      t166 = me->parsed_xml->proxy_data.
      DATA t169 TYPE REF TO zcl_lnt_proxy_data_item.
      CLEAR t169.
      DATA t170 TYPE REF TO object.
      CLEAR t170.
      DATA(t171) = VALUE i( ).
      DO.
        t166->load( ).
        IF t171 >= lines( t166->items ).
          EXIT.
        ENDIF.
        CLEAR t170.
        READ TABLE t166->items INDEX t171 + 1 INTO t170.
        t171 = t171 + 1.
        DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t172.
        CLEAR t169.
        IF t170 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t172 ?= t170.
          CLEAR t169.
          IF t172 IS BOUND.
            IF t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t169 ?= t172->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t169 IS NOT BOUND.
              IF t172->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t172->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t172->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t172->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                DATA t173 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t173.
                IF t172->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t173 ?= t172->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t173->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t174.
              DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t175.
              DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t176.
              DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t177.
              DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t178.
              DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t179.
              DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t180.
              DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t181.
              DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t182.
              DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t183.
              DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t184.
              DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t185.
              DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t186.
              t169 = NEW zcl_lnt_proxy_data_item( view_source = t172 i_object_5749 = t174 i_obj_name = t175 i_object1 = t176 i_obj_name1 = t177 i_object2 = t178 i_obj_name2 = t179 i_object_r = t180 i_obj_name_r = t181 i_r3_type = t182
              i_r3_name = t183 i_r3_text = t184 i_ifr_type = t185 i_ifr_name = t186 ).
            ENDIF.
          ENDIF.
        ELSE.
          t169 ?= t170.
        ENDIF.
        DATA(t187) = VALUE abap_bool( ).
        DATA(t188) = VALUE abap_bool( ).
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t189.
        t189 = t169->zlnt_view_read_sr_35246f61540a( ).
        DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t191.
        DATA(t194) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t194->has = abap_true.
        t194->value = |PAIM|.
        t191 = t194.
        DATA(t196) = VALUE abap_bool( ).
        DATA(t197) = VALUE abap_bool( ).
        IF t189 IS BOUND.
          t196 = t189->has.
        ENDIF.
        IF t191 IS BOUND.
          t197 = t191->has.
        ENDIF.
        IF t196 = t197.
          IF t196 = abap_false.
            t188 = abap_true.
          ELSEIF t189->value = t191->value.
            t188 = abap_true.
          ENDIF.
        ENDIF.
        t187 = t188.
        IF t188 = abap_true.
          DATA(t198) = VALUE abap_bool( ).
          DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t199.
          t199 = t169->zlnt_view_read_sr_6acc890d5816( ).
          DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t201.
          t201 = t132->zlnt_view_read_sr_6acc890d5816( ).
          DATA(t203) = VALUE abap_bool( ).
          DATA(t204) = VALUE abap_bool( ).
          IF t199 IS BOUND.
            t203 = t199->has.
          ENDIF.
          IF t201 IS BOUND.
            t204 = t201->has.
          ENDIF.
          IF t203 = t204.
            IF t203 = abap_false.
              t198 = abap_true.
            ELSEIF t199->value = t201->value.
              t198 = abap_true.
            ENDIF.
          ENDIF.
          t187 = t198.
        ENDIF.
        IF t187 = abap_true.
          t164->load( ).
          APPEND t169 TO t164->items.
          t164->save( ).
        ENDIF.
      ENDDO.
      t162 = t164.
      DATA t208 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t208.
      DATA t210 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t210.
      DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t211.
      CREATE OBJECT t211.
      t210 = t211.
      DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t212.
      t212 = me->parsed_xml->proxy_data.
      DATA t215 TYPE REF TO zcl_lnt_proxy_data_item.
      CLEAR t215.
      DATA t216 TYPE REF TO object.
      CLEAR t216.
      DATA(t217) = VALUE i( ).
      DO.
        t212->load( ).
        IF t217 >= lines( t212->items ).
          EXIT.
        ENDIF.
        CLEAR t216.
        READ TABLE t212->items INDEX t217 + 1 INTO t216.
        t217 = t217 + 1.
        DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t218.
        CLEAR t215.
        IF t216 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t218 ?= t216.
          CLEAR t215.
          IF t218 IS BOUND.
            IF t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t215 ?= t218->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t215 IS NOT BOUND.
              IF t218->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t218->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t218->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t218->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                DATA t219 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t219.
                IF t218->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t219 ?= t218->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t219->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t220.
              DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t221.
              DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t222.
              DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t223.
              DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t224.
              DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t225.
              DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t226.
              DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t227.
              DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t228.
              DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t229.
              DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t230.
              DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t231.
              DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t232.
              t215 = NEW zcl_lnt_proxy_data_item( view_source = t218 i_object_5749 = t220 i_obj_name = t221 i_object1 = t222 i_obj_name1 = t223 i_object2 = t224 i_obj_name2 = t225 i_object_r = t226 i_obj_name_r = t227 i_r3_type = t228
              i_r3_name = t229 i_r3_text = t230 i_ifr_type = t231 i_ifr_name = t232 ).
            ENDIF.
          ENDIF.
        ELSE.
          t215 ?= t216.
        ENDIF.
        DATA(t233) = VALUE abap_bool( ).
        DATA(t234) = VALUE abap_bool( ).
        DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t235.
        t235 = t215->zlnt_view_read_sr_35246f61540a( ).
        DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t237.
        DATA(t240) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t240->has = abap_true.
        t240->value = |PAEX|.
        t237 = t240.
        DATA(t242) = VALUE abap_bool( ).
        DATA(t243) = VALUE abap_bool( ).
        IF t235 IS BOUND.
          t242 = t235->has.
        ENDIF.
        IF t237 IS BOUND.
          t243 = t237->has.
        ENDIF.
        IF t242 = t243.
          IF t242 = abap_false.
            t234 = abap_true.
          ELSEIF t235->value = t237->value.
            t234 = abap_true.
          ENDIF.
        ENDIF.
        t233 = t234.
        IF t234 = abap_true.
          DATA(t244) = VALUE abap_bool( ).
          DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t245.
          t245 = t215->zlnt_view_read_sr_6acc890d5816( ).
          DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t247.
          t247 = t132->zlnt_view_read_sr_6acc890d5816( ).
          DATA(t249) = VALUE abap_bool( ).
          DATA(t250) = VALUE abap_bool( ).
          IF t245 IS BOUND.
            t249 = t245->has.
          ENDIF.
          IF t247 IS BOUND.
            t250 = t247->has.
          ENDIF.
          IF t249 = t250.
            IF t249 = abap_false.
              t244 = abap_true.
            ELSEIF t245->value = t247->value.
              t244 = abap_true.
            ENDIF.
          ENDIF.
          t233 = t244.
        ENDIF.
        IF t233 = abap_true.
          t210->load( ).
          APPEND t215 TO t210->items.
          t210->save( ).
        ENDIF.
      ENDDO.
      t208 = t210.
      DATA(t255) = t123.
      DATA(t256) = VALUE string( ).
      DATA(t257) = VALUE string( ).
      DATA(t258) = |  METHODS |.
      DATA(t260) = strlen( t258 ).
      t257 = |{ t258 }{ t156 }|.
      DATA(t262) = strlen( t257 ).
      t256 = |{ t257 }{ |\n| }|.
      DATA(t263) = strlen( t255 ).
      t123 = |{ t255 }{ t256 }|.
      t162->load( ).
      IF xsdbool( lines( t162->items ) > 0 ) = abap_true.
        DATA(t269) = t123.
        DATA(t271) = strlen( t269 ).
        t123 = |{ t269 }{ |    IMPORTING\n| }|.
        DATA(t272) = VALUE i( ).
        t272 = 0.
        DO.
          t162->load( ).
          IF xsdbool( t272 < lines( t162->items ) ) = abap_false.
            EXIT.
          ENDIF.
          DATA t278 TYPE REF TO zcl_lnt_proxy_data_item.
          CLEAR t278.
          DATA t279 TYPE REF TO zcl_lnt_proxy_data_item.
          CLEAR t279.
          DATA(t281) = t272.
          t281 = t281 + 1.
          DATA t282 TYPE REF TO object.
          CLEAR t282.
          t162->load( ).
          CLEAR t282.
          READ TABLE t162->items INDEX t281 INTO t282.
          DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t283.
          CLEAR t279.
          IF t282 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t283 ?= t282.
            CLEAR t279.
            IF t283 IS BOUND.
              IF t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                TRY.
                    t279 ?= t283->oval.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
              ENDIF.
              IF t279 IS NOT BOUND.
                IF t283->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t283->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t283->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t283->tag <>
                zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                  DATA t284 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t284.
                  IF t283->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                  ENDIF.
                  TRY.
                      t284 ?= t283->oval.
                    CATCH cx_sy_move_cast_error.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                  ENDTRY.
                  IF t284->structural( ) <> abap_true.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                  ENDIF.
                ENDIF.
                DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t285.
                DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t286.
                DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t287.
                DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t288.
                DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t289.
                DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t290.
                DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t291.
                DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t292.
                DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t293.
                DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t294.
                DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t295.
                DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t296.
                DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t297.
                t279 = NEW zcl_lnt_proxy_data_item( view_source = t283 i_object_5749 = t285 i_obj_name = t286 i_object1 = t287 i_obj_name1 = t288 i_object2 = t289 i_obj_name2 = t290 i_object_r = t291 i_obj_name_r = t292 i_r3_type = t293
                i_r3_name = t294 i_r3_text = t295 i_ifr_type = t296 i_ifr_name = t297 ).
              ENDIF.
            ENDIF.
          ELSE.
            t279 ?= t282.
          ENDIF.
          t278 = t279.
          DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t299.
          DATA(t301) = VALUE string( ).
          DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t302.
          t302 = zlnt_property_loo_01d5731631ca=>get( p0 = t278 key = |OBJ_NAME2| ).
          IF t302 IS BOUND.
            t301 = t302->type_of( ).
            IF t302->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t302->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
              t301 = `function`.
            ENDIF.
          ELSE.
            t301 = `undefined`.
          ENDIF.
          IF xsdbool( t301 = |string| ) = abap_true.
            DATA(t308) = VALUE string( ).
            DATA(t309) = VALUE string( ).
            t309 = t278->zlnt_view_read_sr_7f8cbc63ea3f( )->value.
            DATA(t312) = strlen( t309 ).
            t308 = t309.
            TRANSLATE t308 TO LOWER CASE.
            DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t313->has = abap_true.
            t313->value = t308.
            t299 = t313.
          ELSE.
            CLEAR t299.
          ENDIF.
          DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t317.
          DATA(t319) = VALUE string( ).
          DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t320.
          t320 = zlnt_property_loo_01d5731631ca=>get( p0 = t278 key = |OBJ_NAME_R| ).
          IF t320 IS BOUND.
            t319 = t320->type_of( ).
            IF t320->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t320->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
              t319 = `function`.
            ENDIF.
          ELSE.
            t319 = `undefined`.
          ENDIF.
          IF xsdbool( t319 = |string| ) = abap_true.
            DATA(t326) = VALUE string( ).
            DATA(t327) = VALUE string( ).
            t327 = t278->zlnt_view_read_sr_85225c1d91ed( )->value.
            DATA(t330) = strlen( t327 ).
            t326 = t327.
            TRANSLATE t326 TO LOWER CASE.
            DATA(t331) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t331->has = abap_true.
            t331->value = t326.
            t317 = t331.
          ELSE.
            CLEAR t317.
          ENDIF.
          DATA(t334) = VALUE abap_bool( ).
          DATA(t335) = VALUE abap_bool( ).
          DATA(t336) = VALUE abap_bool( ).
          DATA(t338) = VALUE i( ).
          DATA(t339) = VALUE i( ).
          t162->load( ).
          t339 = lines( t162->items ).
          DATA(t341) = 1.
          t338 = t339 - t341.
          t336 = xsdbool( t272 = t338 ).
          t335 = t336.
          IF t336 = abap_true.
            t208->load( ).
            t335 = xsdbool( lines( t208->items ) = 0 ).
          ENDIF.
          t334 = t335.
          DATA(t347) = t123.
          DATA(t348) = VALUE string( ).
          DATA(t349) = VALUE string( ).
          DATA(t350) = VALUE string( ).
          DATA(t351) = VALUE string( ).
          DATA(t352) = VALUE string( ).
          DATA(t353) = VALUE string( ).
          DATA(t354) = |      |.
          DATA(t355) = VALUE string( ).
          DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t356.
          t356 = t299.
          DATA(t358) = VALUE string( ).
          DATA(t359) = VALUE abap_bool( ).
          IF t356 IS INITIAL.
            t359 = abap_true.
          ELSEIF t356->has = abap_false.
            t359 = abap_true.
          ENDIF.
          IF t359 = abap_true.
            t358 = |undefined|.
          ELSE.
            t358 = t356->value.
          ENDIF.
          t355 = t358.
          DATA(t364) = strlen( t354 ).
          t353 = |{ t354 }{ t355 }|.
          DATA(t366) = strlen( t353 ).
          t352 = |{ t353 }{ | TYPE | }|.
          DATA(t367) = VALUE string( ).
          DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t368.
          t368 = t317.
          DATA(t370) = VALUE string( ).
          DATA(t371) = VALUE abap_bool( ).
          IF t368 IS INITIAL.
            t371 = abap_true.
          ELSEIF t368->has = abap_false.
            t371 = abap_true.
          ENDIF.
          IF t371 = abap_true.
            t370 = |undefined|.
          ELSE.
            t370 = t368->value.
          ENDIF.
          t367 = t370.
          DATA(t376) = strlen( t352 ).
          t351 = |{ t352 }{ t367 }|.
          DATA(t378) = strlen( t351 ).
          t350 = |{ t351 }{ || }|.
          DATA(t379) = VALUE string( ).
          IF t334 = abap_true.
            t379 = |.|.
          ELSE.
            t379 = ||.
          ENDIF.
          DATA(t383) = strlen( t350 ).
          t349 = |{ t350 }{ t379 }|.
          DATA(t385) = strlen( t349 ).
          t348 = |{ t349 }{ |\n| }|.
          DATA(t386) = strlen( t347 ).
          t123 = |{ t347 }{ t348 }|.
          DATA(t389) = 1.
          t272 = t272 + t389.
        ENDDO.
      ENDIF.
      t208->load( ).
      IF xsdbool( lines( t208->items ) > 0 ) = abap_true.
        DATA(t395) = t123.
        DATA(t397) = strlen( t395 ).
        t123 = |{ t395 }{ |    EXPORTING\n| }|.
        DATA(t398) = VALUE i( ).
        t398 = 0.
        DO.
          t208->load( ).
          IF xsdbool( t398 < lines( t208->items ) ) = abap_false.
            EXIT.
          ENDIF.
          DATA t404 TYPE REF TO zcl_lnt_proxy_data_item.
          CLEAR t404.
          DATA t405 TYPE REF TO zcl_lnt_proxy_data_item.
          CLEAR t405.
          DATA(t407) = t398.
          t407 = t407 + 1.
          DATA t408 TYPE REF TO object.
          CLEAR t408.
          t208->load( ).
          CLEAR t408.
          READ TABLE t208->items INDEX t407 INTO t408.
          DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t409.
          CLEAR t405.
          IF t408 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t409 ?= t408.
            CLEAR t405.
            IF t409 IS BOUND.
              IF t409->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                TRY.
                    t405 ?= t409->oval.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
              ENDIF.
              IF t405 IS NOT BOUND.
                IF t409->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t409->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t409->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t409->tag <>
                zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                  DATA t410 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t410.
                  IF t409->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                  ENDIF.
                  TRY.
                      t410 ?= t409->oval.
                    CATCH cx_sy_move_cast_error.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                  ENDTRY.
                  IF t410->structural( ) <> abap_true.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                  ENDIF.
                ENDIF.
                DATA t411 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t411.
                DATA t412 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t412.
                DATA t413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t413.
                DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t414.
                DATA t415 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t415.
                DATA t416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t416.
                DATA t417 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t417.
                DATA t418 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t418.
                DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t419.
                DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t420.
                DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t421.
                DATA t422 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t422.
                DATA t423 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t423.
                t405 = NEW zcl_lnt_proxy_data_item( view_source = t409 i_object_5749 = t411 i_obj_name = t412 i_object1 = t413 i_obj_name1 = t414 i_object2 = t415 i_obj_name2 = t416 i_object_r = t417 i_obj_name_r = t418 i_r3_type = t419
                i_r3_name = t420 i_r3_text = t421 i_ifr_type = t422 i_ifr_name = t423 ).
              ENDIF.
            ENDIF.
          ELSE.
            t405 ?= t408.
          ENDIF.
          t404 = t405.
          DATA t425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t425.
          DATA(t427) = VALUE string( ).
          DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t428.
          t428 = zlnt_property_loo_01d5731631ca=>get( p0 = t404 key = |OBJ_NAME2| ).
          IF t428 IS BOUND.
            t427 = t428->type_of( ).
            IF t428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t428->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
              t427 = `function`.
            ENDIF.
          ELSE.
            t427 = `undefined`.
          ENDIF.
          IF xsdbool( t427 = |string| ) = abap_true.
            DATA(t434) = VALUE string( ).
            DATA(t435) = VALUE string( ).
            t435 = t404->zlnt_view_read_sr_7f8cbc63ea3f( )->value.
            DATA(t438) = strlen( t435 ).
            t434 = t435.
            TRANSLATE t434 TO LOWER CASE.
            DATA(t439) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t439->has = abap_true.
            t439->value = t434.
            t425 = t439.
          ELSE.
            CLEAR t425.
          ENDIF.
          DATA t443 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t443.
          DATA(t445) = VALUE string( ).
          DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t446.
          t446 = zlnt_property_loo_01d5731631ca=>get( p0 = t404 key = |OBJ_NAME_R| ).
          IF t446 IS BOUND.
            t445 = t446->type_of( ).
            IF t446->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t446->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
              t445 = `function`.
            ENDIF.
          ELSE.
            t445 = `undefined`.
          ENDIF.
          IF xsdbool( t445 = |string| ) = abap_true.
            DATA(t452) = VALUE string( ).
            DATA(t453) = VALUE string( ).
            t453 = t404->zlnt_view_read_sr_85225c1d91ed( )->value.
            DATA(t456) = strlen( t453 ).
            t452 = t453.
            TRANSLATE t452 TO LOWER CASE.
            DATA(t457) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t457->has = abap_true.
            t457->value = t452.
            t443 = t457.
          ELSE.
            CLEAR t443.
          ENDIF.
          DATA(t460) = VALUE abap_bool( ).
          DATA(t463) = VALUE i( ).
          DATA(t464) = VALUE i( ).
          t208->load( ).
          t464 = lines( t208->items ).
          DATA(t466) = 1.
          t463 = t464 - t466.
          t460 = xsdbool( t398 = t463 ).
          DATA(t468) = t123.
          DATA(t469) = VALUE string( ).
          DATA(t470) = VALUE string( ).
          DATA(t471) = VALUE string( ).
          DATA(t472) = VALUE string( ).
          DATA(t473) = VALUE string( ).
          DATA(t474) = VALUE string( ).
          DATA(t475) = |      |.
          DATA(t476) = VALUE string( ).
          DATA t477 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t477.
          t477 = t425.
          DATA(t479) = VALUE string( ).
          DATA(t480) = VALUE abap_bool( ).
          IF t477 IS INITIAL.
            t480 = abap_true.
          ELSEIF t477->has = abap_false.
            t480 = abap_true.
          ENDIF.
          IF t480 = abap_true.
            t479 = |undefined|.
          ELSE.
            t479 = t477->value.
          ENDIF.
          t476 = t479.
          DATA(t485) = strlen( t475 ).
          t474 = |{ t475 }{ t476 }|.
          DATA(t487) = strlen( t474 ).
          t473 = |{ t474 }{ | TYPE | }|.
          DATA(t488) = VALUE string( ).
          DATA t489 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t489.
          t489 = t443.
          DATA(t491) = VALUE string( ).
          DATA(t492) = VALUE abap_bool( ).
          IF t489 IS INITIAL.
            t492 = abap_true.
          ELSEIF t489->has = abap_false.
            t492 = abap_true.
          ENDIF.
          IF t492 = abap_true.
            t491 = |undefined|.
          ELSE.
            t491 = t489->value.
          ENDIF.
          t488 = t491.
          DATA(t497) = strlen( t473 ).
          t472 = |{ t473 }{ t488 }|.
          DATA(t499) = strlen( t472 ).
          t471 = |{ t472 }{ || }|.
          DATA(t500) = VALUE string( ).
          IF t460 = abap_true.
            t500 = |.|.
          ELSE.
            t500 = ||.
          ENDIF.
          DATA(t504) = strlen( t471 ).
          t470 = |{ t471 }{ t500 }|.
          DATA(t506) = strlen( t470 ).
          t469 = |{ t470 }{ |\n| }|.
          DATA(t507) = strlen( t468 ).
          t123 = |{ t468 }{ t469 }|.
          DATA(t510) = 1.
          t398 = t398 + t510.
        ENDDO.
      ENDIF.
    ENDDO.
    DATA(t512) = t123.
    DATA(t514) = strlen( t512 ).
    t123 = |{ t512 }{ |ENDINTERFACE.| }|.
    DATA t515 TYPE REF TO zcl_lnt_ob_interface.
    DATA(t517) = VALUE string( ).
    DATA(t519) = strlen( t78 ).
    t517 = t78.
    IF t517 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t517 TO UPPER CASE.
    ELSE.
      t517 = zlnt_runtime_uppe_91169605024d=>full( t517 ).
    ENDIF.
    t515 = NEW zcl_lnt_ob_interface( i_name = t517 ).
    DATA(t523) = VALUE string( ).
    DATA(t524) = ||.
    DATA(t526) = strlen( t524 ).
    t523 = |{ t524 }{ t78 }|.
    DATA(t528) = strlen( t523 ).
    t515->add_file( i_file = NEW zcl_lnt_memory_file( i_filename = |{ t523 }{ |.intf.abap| }| i_raw = t123 ) ).
    t5->load( ).
    APPEND t515 TO t5->items.
    t5->save( ).
    result = t5.

  ENDMETHOD.

  METHOD parse.
    result = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_prx_obj_ts_prx_obj( i_release_2099 = i_release_7928 i_global_macros_14ec = i_global_macros_5535 i_reg_f149 = i_reg_f149 ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1325_6b20a4100a68.
  ENDMETHOD.
ENDCLASS.
