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
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |SPRX|.
    result = t1.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 34 ).
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA(t5) = abap_true.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t7 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t7.
    t6 = t7.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = t2 i_allow_namespace = t4 i_custom_regex = t6 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `maxLength` p1 = t8 ).
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `allowNamespace` p1 = t9 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t10) = |maxLength|.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t10 p1 = t11 ).
    ENDIF.
    DATA(t12) = |allowNamespace|.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA t1 TYPE REF TO zcl_lnt_iparse_result.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_registry.
    CLEAR t4.
    t1 = me->pr_in_sr_ob_prx_obj_ts_prx_obj( i_release_2099 = t2 i_global_macros_14ec = t3 i_reg_f149 = t4 ).
    DATA t5 TYPE REF TO zcl_lnt_proxy_data_item.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_proxy_data_item.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_parsed_proxy.
    CLEAR t9.
    DATA(t10) = me->parsed_xml.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t9.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t14.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t15.
      DATA t16 TYPE REF TO zcl_lnt_parsed_proxy.
      CLEAR t16.
      DATA(t17) = t9.
      t16 = t17.
      t15 = t16->proxy_data.
      t11 = t15.
    ENDIF.
    t8 = t11.
    t7 = t8.
    DATA t18 TYPE REF TO zcl_lnt_proxy_data_item.
    CLEAR t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = t7.
    IF t20 IS INITIAL.
      t19 = abap_true.
    ENDIF.
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_proxy_data_item.
      CLEAR t21.
      t18 = t21.
    ELSE.
      DATA t22 TYPE REF TO zcl_lnt_proxy_data_item.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t23.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t24.
      DATA(t25) = t7.
      t24 = t25.
      t23 = t24.
      DATA(t26) = VALUE i( ).
      DATA(t27) = VALUE i( ).
      DATA(t28) = t23.
      t28->load( ).
      t27 = lines( t28->items ).
      t26 = t27.
      DATA(t29) = VALUE i( ).
      DATA(t30) = 0.
      t29 = t30.
      DATA t31 TYPE REF TO zcl_lnt_proxy_data_item.
      CLEAR t31.
      DATA t32 TYPE REF TO zcl_lnt_proxy_data_item.
      CLEAR t32.
      t31 = t32.
      DO.
        DATA(t33) = VALUE abap_bool( ).
        DATA(t34) = t29.
        DATA(t35) = t26.
        t33 = xsdbool( t34 < t35 ).
        IF t33 = abap_false.
          EXIT.
        ENDIF.
        DATA t36 TYPE REF TO zcl_lnt_proxy_data_item.
        CLEAR t36.
        DATA t37 TYPE REF TO zcl_lnt_proxy_data_item.
        CLEAR t37.
        DATA t38 TYPE REF TO zcl_lnt_proxy_data_item.
        CLEAR t38.
        DATA(t39) = t23.
        DATA(t40) = t29.
        DATA t41 TYPE REF TO object.
        CLEAR t41.
        t41 = t39->get( p0 = t40 ).
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
        t37 = t38.
        t36 = t37.
        DATA(t57) = VALUE abap_bool( ).
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        DATA(t59) = t36.
        t58 = t59->zlnt_view_read_sr_35246f61540a( ).
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        DATA(t61) = abap_true.
        IF t61 = abap_true.
          DATA(t62) = |INTF|.
          DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t63->has = abap_true.
          t63->value = t62.
          t60 = t63.
        ELSE.
          DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t64.
          t60 = t64.
        ENDIF.
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
          DATA t67 TYPE REF TO zcl_lnt_proxy_data_item.
          CLEAR t67.
          DATA(t68) = abap_true.
          IF t68 = abap_true.
            DATA(t69) = t36.
            t67 = t69.
          ELSE.
            DATA t70 TYPE REF TO zcl_lnt_proxy_data_item.
            CLEAR t70.
            t67 = t70.
          ENDIF.
          t31 = t67.
          EXIT.
        ENDIF.
        DATA(t71) = VALUE i( ).
        DATA(t72) = t29.
        DATA(t73) = 1.
        t71 = t72 + t73.
        t29 = t71.
      ENDDO.
      DATA(t74) = t31.
      t22 = t74.
      t18 = t22.
    ENDIF.
    t6 = t18.
    t5 = t6.
    DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t75.
    DATA t76 TYPE REF TO zcl_lnt_proxy_data_item.
    CLEAR t76.
    DATA(t77) = t5.
    t76 = t77.
    DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t78.
    DATA(t79) = VALUE abap_bool( ).
    DATA(t80) = t76.
    IF t80 IS INITIAL.
      t79 = abap_true.
    ENDIF.
    IF t79 = abap_true.
      DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t81.
      t78 = t81.
    ELSE.
      DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t82.
      DATA t83 TYPE REF TO zcl_lnt_proxy_data_item.
      CLEAR t83.
      DATA(t84) = t76.
      t83 = t84.
      t82 = t83->zlnt_view_read_sr_c8d5f8e8bf9b( ).
      t78 = t82.
    ENDIF.
    t75 = t78.
    result = t75.

  ENDMETHOD.

  METHOD set_dirty.
    DATA t1 TYPE REF TO zcl_lnt_parsed_proxy.
    CLEAR t1.
    me->parsed_xml = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD pr_in_sr_ob_prx_obj_ts_prx_obj.
    DATA(t1) = i_release_2099.
    DATA(t2) = i_global_macros_14ec.
    DATA(t3) = i_reg_f149.
    DATA t4 TYPE abap_bool.
    DATA(t5) = me->parsed_xml.
    t4 = xsdbool( t5 IS BOUND ).
    IF t4 = abap_true.
      DATA t6 TYPE REF TO zcl_lnt_iparse_result.
      DATA t7 TYPE abap_bool.
      DATA(t8) = abap_false.
      t7 = t8.
      DATA t9 TYPE f.
      DATA(t10) = CONV f( 0 ).
      t9 = t10.
      DATA t11 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA t12 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t12.
      t11 = t12.
      t6 = NEW zcl_lnt_iparse_result( i_updated = t7 i_runtime = t9 i_runtime_extra = t11 ).
      CREATE OBJECT t6->zlnt_view_ownkeys_b0e8086400eb.
      t6->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t13 ).
      ENDIF.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t14 ).
      ENDIF.
      CREATE OBJECT t6->zlnt_json_ownkeys_70e5fd461788.
      t6->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t15) = |updated|.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t15 p1 = t16 ).
      ENDIF.
      DATA(t17) = |runtime|.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
      ENDIF.
      result = t6.
      RETURN.
    ENDIF.
    DATA t19 TYPE f.
    DATA t20 TYPE f.
    DATA(t21) = 0.
    t20 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t19 = t20.
    DATA t22 TYPE REF TO zcl_lnt_parsed_proxy.
    CLEAR t22.
    DATA(t23) = abap_true.
    IF t23 = abap_true.
      DATA(t24) = CAST zcl_lnt_parsed_proxy( me->parse_xml( ) ).
      t22 = t24.
    ELSE.
      DATA t25 TYPE REF TO zcl_lnt_parsed_proxy.
      CLEAR t25.
      t22 = t25.
    ENDIF.
    me->parsed_xml = t22.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t26 TYPE f.
    DATA t27 TYPE f.
    DATA(t28) = 0.
    t27 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t26 = t27.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( me->generate_abap_objects( ) ).
    t29 = t30.
    DATA(t31) = t29.
    DATA t32 TYPE REF TO zcl_lnt_abstract_object.
    CLEAR t32.
    DATA t33 TYPE REF TO object.
    CLEAR t33.
    DATA(t34) = VALUE i( ).
    DO.
      t31->load( ).
      IF t34 >= lines( t31->items ).
        EXIT.
      ENDIF.
      CLEAR t33.
      READ TABLE t31->items INDEX t34 + 1 INTO t33.
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
      DATA(t39) = t3.
      t38 = t39.
      DATA t40 TYPE REF TO zif_lnt_registry.
      CLEAR t40.
      DATA(t41) = VALUE abap_bool( ).
      DATA(t42) = t38.
      IF t42 IS INITIAL.
        t41 = abap_true.
      ENDIF.
      IF t41 = abap_true.
        DATA t43 TYPE REF TO zif_lnt_registry.
        CLEAR t43.
        t40 = t43.
      ELSE.
        DATA t44 TYPE REF TO zif_lnt_registry.
        DATA t45 TYPE REF TO zif_lnt_registry.
        DATA(t46) = t38.
        t45 = t46.
        DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t48 TYPE REF TO zcl_lnt_abstract_object.
        DATA(t49) = t32.
        t48 = t49.
        DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t51) = t48.
        t50 = t51->files.
        t47 = t50.
        t44 = t45->add_dependencies( i_files = t47 ).
        t40 = t44.
      ENDIF.
      t37 = t40.
    ENDDO.
    DATA t52 TYPE REF TO zcl_lnt_iparse_result.
    DATA t53 TYPE abap_bool.
    DATA(t54) = abap_true.
    t53 = t54.
    DATA t55 TYPE f.
    DATA t56 TYPE f.
    DATA(t57) = t26.
    DATA(t58) = t19.
    t56 = t57 - t58.
    t55 = t56.
    DATA t59 TYPE REF TO zcl_lnt_shape_8fc6df03.
    DATA t60 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t60.
    t59 = t60.
    t52 = NEW zcl_lnt_iparse_result( i_updated = t53 i_runtime = t55 i_runtime_extra = t59 ).
    CREATE OBJECT t52->zlnt_view_ownkeys_b0e8086400eb.
    t52->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t61 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t62 ).
    ENDIF.
    CREATE OBJECT t52->zlnt_json_ownkeys_70e5fd461788.
    t52->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t63) = |updated|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    DATA(t65) = |runtime|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    result = t52.

  ENDMETHOD.

  METHOD parse_xml.
    DATA t1 TYPE REF TO zcl_lnt_parsed_proxy.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_parsed_proxy.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    CREATE OBJECT t4.
    t3 = t4.
    t2 = NEW zcl_lnt_parsed_proxy( i_proxy_data = t3 ).
    CREATE OBJECT t2->zlnt_view_ownkeys_b0e8086400eb.
    t2->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `proxyData` p1 = t5 ).
    ENDIF.
    CREATE OBJECT t2->zlnt_json_ownkeys_70e5fd461788.
    t2->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t6) = |proxyData|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = t6 p1 = t7 ).
    ENDIF.
    t1 = t2.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA(t9) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t8.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      DATA(t16) = t8.
      t15 = t16.
      t11 = t15.
    ENDIF.
    t10 = t11.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = VALUE abap_bool( ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA(t21) = t10.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    t22 = t23.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = t20.
    IF t25 IS INITIAL.
      t24 = abap_true.
    ENDIF.
    t19 = t24.
    t18 = t19.
    IF t19 = abap_false.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      DATA(t30) = t10.
      t29 = t30.
      DATA(t31) = |abapGit|.
      t28 = t29->get( p0 = t31 ).
      t27 = t28.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      t32 = t33.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = t27.
      IF t35 IS INITIAL.
        t34 = abap_true.
      ENDIF.
      t26 = t34.
      t18 = t26.
    ENDIF.
    t17 = t18.
    IF t18 = abap_false.
      DATA(t36) = VALUE abap_bool( ).
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t37.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t43.
      DATA(t44) = t10.
      t43 = t44.
      DATA(t45) = |abapGit|.
      t42 = t43->get( p0 = t45 ).
      t41 = t42.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = t41.
      IF t48 IS NOT BOUND.
        t47 = abap_true.
      ELSE.
        t47 = xsdbool( t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t47 = abap_true.
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t49.
        t46 = t49.
      ELSE.
        DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t50.
        DATA(t51) = t41.
        DATA(t52) = |asx:abap|.
        t50 = t51->get( p0 = t52 ).
        t46 = t50.
      ENDIF.
      t40 = t46.
      t39 = t40.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      DATA(t54) = VALUE abap_bool( ).
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      DATA(t56) = t39.
      CLEAR t55.
      IF t56 IS BOUND.
        t55 = t56.
      ENDIF.
      IF t55 IS NOT BOUND.
        t54 = abap_true.
      ELSE.
        t54 = xsdbool( t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t54 = abap_true.
        DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t57.
        t53 = t57.
      ELSE.
        DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t58.
        DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t59.
        DATA(t60) = t39.
        t59 = t60.
        DATA(t61) = |asx:values|.
        t58 = t59->get( p0 = t61 ).
        t53 = t58.
      ENDIF.
      t38 = t53.
      t37 = t38.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t63.
      t62 = t63.
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = t37.
      IF t65 IS INITIAL.
        t64 = abap_true.
      ENDIF.
      t36 = t64.
      t17 = t36.
    ENDIF.
    IF t17 = abap_true.
      DATA(t66) = t1.
      result = t66.
      RETURN.
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA(t74) = t10.
    t73 = t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA(t76) = VALUE abap_bool( ).
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA(t78) = t73.
    CLEAR t77.
    IF t78 IS BOUND.
      t77 = t78.
    ENDIF.
    IF t77 IS NOT BOUND.
      t76 = abap_true.
    ELSE.
      t76 = xsdbool( t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t76 = abap_true.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      t75 = t79.
    ELSE.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      DATA(t82) = t73.
      t81 = t82.
      DATA(t83) = |abapGit|.
      t80 = t81->get( p0 = t83 ).
      t75 = t80.
    ENDIF.
    t72 = t75.
    t71 = t72.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA(t85) = VALUE abap_bool( ).
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA(t87) = t71.
    CLEAR t86.
    IF t87 IS BOUND.
      t86 = t87.
    ENDIF.
    IF t86 IS NOT BOUND.
      t85 = abap_true.
    ELSE.
      t85 = xsdbool( t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t85 = abap_true.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      t84 = t88.
    ELSE.
      DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t89.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      DATA(t91) = t71.
      t90 = t91.
      DATA(t92) = |asx:abap|.
      t89 = t90->get( p0 = t92 ).
      t84 = t89.
    ENDIF.
    t70 = t84.
    t69 = t70.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA(t94) = VALUE abap_bool( ).
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA(t96) = t69.
    CLEAR t95.
    IF t96 IS BOUND.
      t95 = t96.
    ENDIF.
    IF t95 IS NOT BOUND.
      t94 = abap_true.
    ELSE.
      t94 = xsdbool( t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t94 = abap_true.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t97.
      t93 = t97.
    ELSE.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t98.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      DATA(t100) = t69.
      t99 = t100.
      DATA(t101) = |asx:values|.
      t98 = t99->get( p0 = t101 ).
      t93 = t98.
    ENDIF.
    t68 = t93.
    t67 = t68.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA(t104) = VALUE abap_bool( ).
    DATA(t105) = t67.
    IF t105 IS INITIAL.
      t104 = abap_true.
    ENDIF.
    IF t104 = abap_true.
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t106.
      t103 = t106.
    ELSE.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      DATA(t108) = t67.
      t107 = t108.
      t103 = t107.
    ENDIF.
    t102 = t103.
    DATA(t109) = t1.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA(t118) = t102.
    t117 = t118.
    DATA(t119) = |PROXY_DATA|.
    t116 = t117->get( p0 = t119 ).
    t115 = t116.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA(t121) = VALUE abap_bool( ).
    DATA(t122) = t115.
    IF t122 IS NOT BOUND.
      t121 = abap_true.
    ELSE.
      t121 = xsdbool( t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t121 = abap_true.
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t123.
      t120 = t123.
    ELSE.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t124.
      DATA(t125) = t115.
      DATA(t126) = |item|.
      t124 = t125->get( p0 = t126 ).
      t120 = t124.
    ENDIF.
    t114 = t120.
    CLEAR t113.
    IF t114 IS BOUND.
      t113 = t114.
    ENDIF.
    t112 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t113 ).
    CLEAR t111.
    IF t112 IS BOUND.
      DATA t127 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t127.
      DATA t128 TYPE REF TO object.
      CLEAR t128.
      CLEAR t127.
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
    CLEAR t110.
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
      CLEAR t129.
      DATA t130 TYPE REF TO zcl_lnt_proxy_data_item.
      CLEAR t130.
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
    t109->proxy_data = t110.
    DELETE t109->zlnt_record_delet_0597644d88b4 WHERE table_line = `proxyData`.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `proxyData` p1 = t146 ).
    ENDIF.
    DATA(t147) = |proxyData|.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t147 p1 = t148 ).
    ENDIF.
    DATA(t149) = t1.
    result = t149.

  ENDMETHOD.

  METHOD generate_abap_objects.
    DATA t1 TYPE REF TO zcl_lnt_iparse_result.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_registry.
    CLEAR t4.
    t1 = me->pr_in_sr_ob_prx_obj_ts_prx_obj( i_release_2099 = t2 i_global_macros_14ec = t3 i_reg_f149 = t4 ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    CREATE OBJECT t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = me->parsed_xml.
    t8 = xsdbool( t9 IS BOUND ).
    t7 = xsdbool( t8 = abap_false ).
    IF t7 = abap_true.
      DATA(t10) = t5.
      result = t10.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_proxy_data_item.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_proxy_data_item.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t14.
    DATA t15 TYPE REF TO zcl_lnt_parsed_proxy.
    CLEAR t15.
    DATA(t16) = me->parsed_xml.
    t15 = t16.
    t14 = t15->proxy_data.
    t13 = t14.
    DATA(t17) = VALUE i( ).
    DATA(t18) = VALUE i( ).
    DATA(t19) = t13.
    t19->load( ).
    t18 = lines( t19->items ).
    t17 = t18.
    DATA(t20) = VALUE i( ).
    DATA(t21) = 0.
    t20 = t21.
    DATA t22 TYPE REF TO zcl_lnt_proxy_data_item.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_proxy_data_item.
    CLEAR t23.
    t22 = t23.
    DO.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = t20.
      DATA(t26) = t17.
      t24 = xsdbool( t25 < t26 ).
      IF t24 = abap_false.
        EXIT.
      ENDIF.
      DATA t27 TYPE REF TO zcl_lnt_proxy_data_item.
      CLEAR t27.
      DATA t28 TYPE REF TO zcl_lnt_proxy_data_item.
      CLEAR t28.
      DATA t29 TYPE REF TO zcl_lnt_proxy_data_item.
      CLEAR t29.
      DATA(t30) = t13.
      DATA(t31) = t20.
      DATA t32 TYPE REF TO object.
      CLEAR t32.
      t32 = t30->get( p0 = t31 ).
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
      t28 = t29.
      t27 = t28.
      DATA(t48) = VALUE abap_bool( ).
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t49.
      DATA(t50) = t27.
      t49 = t50->zlnt_view_read_sr_35246f61540a( ).
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      DATA(t52) = abap_true.
      IF t52 = abap_true.
        DATA(t53) = |INTF|.
        DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t54->has = abap_true.
        t54->value = t53.
        t51 = t54.
      ELSE.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        t51 = t55.
      ENDIF.
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
        DATA t58 TYPE REF TO zcl_lnt_proxy_data_item.
        CLEAR t58.
        DATA(t59) = abap_true.
        IF t59 = abap_true.
          DATA(t60) = t27.
          t58 = t60.
        ELSE.
          DATA t61 TYPE REF TO zcl_lnt_proxy_data_item.
          CLEAR t61.
          t58 = t61.
        ENDIF.
        t22 = t58.
        EXIT.
      ENDIF.
      DATA(t62) = VALUE i( ).
      DATA(t63) = t20.
      DATA(t64) = 1.
      t62 = t63 + t64.
      t20 = t62.
    ENDDO.
    DATA(t65) = t22.
    t12 = t65.
    t11 = t12.
    DATA(t66) = VALUE abap_bool( ).
    DATA(t67) = VALUE abap_bool( ).
    DATA(t68) = VALUE abap_bool( ).
    DATA(t69) = t11.
    t68 = xsdbool( t69 IS BOUND ).
    t67 = xsdbool( t68 = abap_false ).
    t66 = t67.
    IF t67 = abap_false.
      DATA(t70) = VALUE abap_bool( ).
      DATA(t71) = VALUE string( ).
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      DATA t73 TYPE REF TO zcl_lnt_proxy_data_item.
      CLEAR t73.
      DATA(t74) = t11.
      t73 = t74.
      DATA(t75) = |R3_NAME|.
      t72 = zlnt_property_loo_01d5731631ca=>get( p0 = t73 key = t75 ).
      IF t72 IS BOUND.
        t71 = t72->type_of( ).
        IF t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t72->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t71 = `function`.
        ENDIF.
      ELSE.
        t71 = `undefined`.
      ENDIF.
      DATA(t76) = |string|.
      t70 = xsdbool( t71 <> t76 ).
      t66 = t70.
    ENDIF.
    IF t66 = abap_true.
      DATA(t77) = t5.
      result = t77.
      RETURN.
    ENDIF.
    DATA(t78) = VALUE string( ).
    DATA(t79) = VALUE string( ).
    DATA(t80) = VALUE string( ).
    DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t81.
    DATA t82 TYPE REF TO zcl_lnt_proxy_data_item.
    CLEAR t82.
    DATA(t83) = t11.
    t82 = t83.
    t81 = t82->zlnt_view_read_sr_cab452e50c73( ).
    t80 = t81->value.
    DATA(t84) = strlen( t80 ).
    t79 = t80.
    TRANSLATE t79 TO LOWER CASE.
    t78 = t79.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t88.
    CREATE OBJECT t88.
    t87 = t88.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t89.
    DATA t90 TYPE REF TO zcl_lnt_parsed_proxy.
    CLEAR t90.
    DATA(t91) = me->parsed_xml.
    t90 = t91.
    t89 = t90->proxy_data.
    DATA t92 TYPE REF TO zcl_lnt_proxy_data_item.
    CLEAR t92.
    DATA t93 TYPE REF TO object.
    CLEAR t93.
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
      DATA(t112) = t92.
      t111 = t112->zlnt_view_read_sr_35246f61540a( ).
      DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t113.
      DATA(t114) = abap_true.
      IF t114 = abap_true.
        DATA(t115) = |METH|.
        DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t116->has = abap_true.
        t116->value = t115.
        t113 = t116.
      ELSE.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t117.
        t113 = t117.
      ENDIF.
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
        DATA(t120) = t87.
        DATA(t121) = t92.
        t120->load( ).
        APPEND t121 TO t120->items.
        t120->save( ).
      ENDIF.
    ENDDO.
    DATA(t122) = t87.
    t86 = t122.
    t85 = t86.
    DATA(t123) = VALUE string( ).
    DATA(t124) = VALUE string( ).
    DATA(t125) = VALUE string( ).
    DATA(t126) = |INTERFACE |.
    DATA(t127) = t78.
    DATA(t128) = strlen( t126 ).
    t125 = |{ t126 }{ t127 }|.
    DATA(t129) = | PUBLIC.\n|.
    DATA(t130) = strlen( t125 ).
    t124 = |{ t125 }{ t129 }|.
    t123 = t124.
    DATA(t131) = t85.
    DATA t132 TYPE REF TO zcl_lnt_proxy_data_item.
    CLEAR t132.
    DATA t133 TYPE REF TO object.
    CLEAR t133.
    DATA(t134) = VALUE i( ).
    DO.
      t131->load( ).
      IF t134 >= lines( t131->items ).
        EXIT.
      ENDIF.
      CLEAR t133.
      READ TABLE t131->items INDEX t134 + 1 INTO t133.
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
      DATA(t150) = VALUE abap_bool( ).
      DATA(t151) = VALUE string( ).
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t152.
      DATA(t153) = t132.
      DATA(t154) = |R3_NAME|.
      t152 = zlnt_property_loo_01d5731631ca=>get( p0 = t153 key = t154 ).
      IF t152 IS BOUND.
        t151 = t152->type_of( ).
        IF t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t152->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t151 = `function`.
        ENDIF.
      ELSE.
        t151 = `undefined`.
      ENDIF.
      DATA(t155) = |string|.
      t150 = xsdbool( t151 <> t155 ).
      IF t150 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t156) = VALUE string( ).
      DATA(t157) = VALUE string( ).
      DATA(t158) = VALUE string( ).
      DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t159.
      DATA(t160) = t132.
      t159 = t160->zlnt_view_read_sr_cab452e50c73( ).
      t158 = t159->value.
      DATA(t161) = strlen( t158 ).
      t157 = t158.
      TRANSLATE t157 TO LOWER CASE.
      t156 = t157.
      DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t162.
      DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t163.
      DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t164.
      DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t165.
      CREATE OBJECT t165.
      t164 = t165.
      DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t166.
      DATA t167 TYPE REF TO zcl_lnt_parsed_proxy.
      CLEAR t167.
      DATA(t168) = me->parsed_xml.
      t167 = t168.
      t166 = t167->proxy_data.
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
        DATA(t190) = t169.
        t189 = t190->zlnt_view_read_sr_35246f61540a( ).
        DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t191.
        DATA(t192) = abap_true.
        IF t192 = abap_true.
          DATA(t193) = |PAIM|.
          DATA(t194) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t194->has = abap_true.
          t194->value = t193.
          t191 = t194.
        ELSE.
          DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t195.
          t191 = t195.
        ENDIF.
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
          DATA(t200) = t169.
          t199 = t200->zlnt_view_read_sr_6acc890d5816( ).
          DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t201.
          DATA(t202) = t132.
          t201 = t202->zlnt_view_read_sr_6acc890d5816( ).
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
          DATA(t205) = t164.
          DATA(t206) = t169.
          t205->load( ).
          APPEND t206 TO t205->items.
          t205->save( ).
        ENDIF.
      ENDDO.
      DATA(t207) = t164.
      t163 = t207.
      t162 = t163.
      DATA t208 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t208.
      DATA t209 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t209.
      DATA t210 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t210.
      DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t211.
      CREATE OBJECT t211.
      t210 = t211.
      DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t212.
      DATA t213 TYPE REF TO zcl_lnt_parsed_proxy.
      CLEAR t213.
      DATA(t214) = me->parsed_xml.
      t213 = t214.
      t212 = t213->proxy_data.
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
        DATA(t236) = t215.
        t235 = t236->zlnt_view_read_sr_35246f61540a( ).
        DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t237.
        DATA(t238) = abap_true.
        IF t238 = abap_true.
          DATA(t239) = |PAEX|.
          DATA(t240) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t240->has = abap_true.
          t240->value = t239.
          t237 = t240.
        ELSE.
          DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t241.
          t237 = t241.
        ENDIF.
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
          DATA(t246) = t215.
          t245 = t246->zlnt_view_read_sr_6acc890d5816( ).
          DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t247.
          DATA(t248) = t132.
          t247 = t248->zlnt_view_read_sr_6acc890d5816( ).
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
          DATA(t251) = t210.
          DATA(t252) = t215.
          t251->load( ).
          APPEND t252 TO t251->items.
          t251->save( ).
        ENDIF.
      ENDDO.
      DATA(t253) = t210.
      t209 = t253.
      t208 = t209.
      DATA(t254) = VALUE string( ).
      DATA(t255) = t123.
      DATA(t256) = VALUE string( ).
      DATA(t257) = VALUE string( ).
      DATA(t258) = |  METHODS |.
      DATA(t259) = t156.
      DATA(t260) = strlen( t258 ).
      t257 = |{ t258 }{ t259 }|.
      DATA(t261) = |\n|.
      DATA(t262) = strlen( t257 ).
      t256 = |{ t257 }{ t261 }|.
      DATA(t263) = strlen( t255 ).
      t254 = |{ t255 }{ t256 }|.
      t123 = t254.
      DATA(t264) = VALUE abap_bool( ).
      DATA(t265) = VALUE i( ).
      DATA(t266) = t162.
      t266->load( ).
      t265 = lines( t266->items ).
      DATA(t267) = 0.
      t264 = xsdbool( t265 > t267 ).
      IF t264 = abap_true.
        DATA(t268) = VALUE string( ).
        DATA(t269) = t123.
        DATA(t270) = |    IMPORTING\n|.
        DATA(t271) = strlen( t269 ).
        t268 = |{ t269 }{ t270 }|.
        t123 = t268.
        DATA(t272) = VALUE i( ).
        DATA(t273) = 0.
        t272 = t273.
        DO.
          DATA(t274) = VALUE abap_bool( ).
          DATA(t275) = t272.
          DATA(t276) = VALUE i( ).
          DATA(t277) = t162.
          t277->load( ).
          t276 = lines( t277->items ).
          t274 = xsdbool( t275 < t276 ).
          IF t274 = abap_false.
            EXIT.
          ENDIF.
          DATA t278 TYPE REF TO zcl_lnt_proxy_data_item.
          CLEAR t278.
          DATA t279 TYPE REF TO zcl_lnt_proxy_data_item.
          CLEAR t279.
          DATA(t280) = t162.
          DATA(t281) = t272.
          t281 = t281 + 1.
          DATA t282 TYPE REF TO object.
          CLEAR t282.
          t280->load( ).
          CLEAR t282.
          READ TABLE t280->items INDEX t281 INTO t282.
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
          DATA t298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t298.
          DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t299.
          DATA(t300) = VALUE abap_bool( ).
          DATA(t301) = VALUE string( ).
          DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t302.
          DATA(t303) = t278.
          DATA(t304) = |OBJ_NAME2|.
          t302 = zlnt_property_loo_01d5731631ca=>get( p0 = t303 key = t304 ).
          IF t302 IS BOUND.
            t301 = t302->type_of( ).
            IF t302->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t302->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
              t301 = `function`.
            ENDIF.
          ELSE.
            t301 = `undefined`.
          ENDIF.
          DATA(t305) = |string|.
          t300 = xsdbool( t301 = t305 ).
          IF t300 = abap_true.
            DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t306.
            DATA(t307) = abap_true.
            IF t307 = abap_true.
              DATA(t308) = VALUE string( ).
              DATA(t309) = VALUE string( ).
              DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t310.
              DATA(t311) = t278.
              t310 = t311->zlnt_view_read_sr_7f8cbc63ea3f( ).
              t309 = t310->value.
              DATA(t312) = strlen( t309 ).
              t308 = t309.
              TRANSLATE t308 TO LOWER CASE.
              DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t313->has = abap_true.
              t313->value = t308.
              t306 = t313.
            ELSE.
              DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t314.
              t306 = t314.
            ENDIF.
            t299 = t306.
          ELSE.
            DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t315.
            t299 = t315.
          ENDIF.
          t298 = t299.
          DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t316.
          DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t317.
          DATA(t318) = VALUE abap_bool( ).
          DATA(t319) = VALUE string( ).
          DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t320.
          DATA(t321) = t278.
          DATA(t322) = |OBJ_NAME_R|.
          t320 = zlnt_property_loo_01d5731631ca=>get( p0 = t321 key = t322 ).
          IF t320 IS BOUND.
            t319 = t320->type_of( ).
            IF t320->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t320->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
              t319 = `function`.
            ENDIF.
          ELSE.
            t319 = `undefined`.
          ENDIF.
          DATA(t323) = |string|.
          t318 = xsdbool( t319 = t323 ).
          IF t318 = abap_true.
            DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t324.
            DATA(t325) = abap_true.
            IF t325 = abap_true.
              DATA(t326) = VALUE string( ).
              DATA(t327) = VALUE string( ).
              DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t328.
              DATA(t329) = t278.
              t328 = t329->zlnt_view_read_sr_85225c1d91ed( ).
              t327 = t328->value.
              DATA(t330) = strlen( t327 ).
              t326 = t327.
              TRANSLATE t326 TO LOWER CASE.
              DATA(t331) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t331->has = abap_true.
              t331->value = t326.
              t324 = t331.
            ELSE.
              DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t332.
              t324 = t332.
            ENDIF.
            t317 = t324.
          ELSE.
            DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t333.
            t317 = t333.
          ENDIF.
          t316 = t317.
          DATA(t334) = VALUE abap_bool( ).
          DATA(t335) = VALUE abap_bool( ).
          DATA(t336) = VALUE abap_bool( ).
          DATA(t337) = t272.
          DATA(t338) = VALUE i( ).
          DATA(t339) = VALUE i( ).
          DATA(t340) = t162.
          t340->load( ).
          t339 = lines( t340->items ).
          DATA(t341) = 1.
          t338 = t339 - t341.
          t336 = xsdbool( t337 = t338 ).
          t335 = t336.
          IF t336 = abap_true.
            DATA(t342) = VALUE abap_bool( ).
            DATA(t343) = VALUE i( ).
            DATA(t344) = t208.
            t344->load( ).
            t343 = lines( t344->items ).
            DATA(t345) = 0.
            t342 = xsdbool( t343 = t345 ).
            t335 = t342.
          ENDIF.
          t334 = t335.
          DATA(t346) = VALUE string( ).
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
          DATA(t357) = t298.
          t356 = t357.
          DATA(t358) = VALUE string( ).
          DATA(t359) = VALUE abap_bool( ).
          DATA(t360) = t356.
          IF t360 IS INITIAL.
            t359 = abap_true.
          ELSEIF t360->has = abap_false.
            t359 = abap_true.
          ENDIF.
          IF t359 = abap_true.
            DATA(t361) = |undefined|.
            t358 = t361.
          ELSE.
            DATA(t362) = VALUE string( ).
            DATA(t363) = t356.
            t362 = t363->value.
            t358 = t362.
          ENDIF.
          t355 = t358.
          DATA(t364) = strlen( t354 ).
          t353 = |{ t354 }{ t355 }|.
          DATA(t365) = | TYPE |.
          DATA(t366) = strlen( t353 ).
          t352 = |{ t353 }{ t365 }|.
          DATA(t367) = VALUE string( ).
          DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t368.
          DATA(t369) = t316.
          t368 = t369.
          DATA(t370) = VALUE string( ).
          DATA(t371) = VALUE abap_bool( ).
          DATA(t372) = t368.
          IF t372 IS INITIAL.
            t371 = abap_true.
          ELSEIF t372->has = abap_false.
            t371 = abap_true.
          ENDIF.
          IF t371 = abap_true.
            DATA(t373) = |undefined|.
            t370 = t373.
          ELSE.
            DATA(t374) = VALUE string( ).
            DATA(t375) = t368.
            t374 = t375->value.
            t370 = t374.
          ENDIF.
          t367 = t370.
          DATA(t376) = strlen( t352 ).
          t351 = |{ t352 }{ t367 }|.
          DATA(t377) = ||.
          DATA(t378) = strlen( t351 ).
          t350 = |{ t351 }{ t377 }|.
          DATA(t379) = VALUE string( ).
          DATA(t380) = t334.
          IF t380 = abap_true.
            DATA(t381) = |.|.
            t379 = t381.
          ELSE.
            DATA(t382) = ||.
            t379 = t382.
          ENDIF.
          DATA(t383) = strlen( t350 ).
          t349 = |{ t350 }{ t379 }|.
          DATA(t384) = |\n|.
          DATA(t385) = strlen( t349 ).
          t348 = |{ t349 }{ t384 }|.
          DATA(t386) = strlen( t347 ).
          t346 = |{ t347 }{ t348 }|.
          t123 = t346.
          DATA(t387) = VALUE i( ).
          DATA(t388) = t272.
          DATA(t389) = 1.
          t387 = t388 + t389.
          t272 = t387.
        ENDDO.
      ENDIF.
      DATA(t390) = VALUE abap_bool( ).
      DATA(t391) = VALUE i( ).
      DATA(t392) = t208.
      t392->load( ).
      t391 = lines( t392->items ).
      DATA(t393) = 0.
      t390 = xsdbool( t391 > t393 ).
      IF t390 = abap_true.
        DATA(t394) = VALUE string( ).
        DATA(t395) = t123.
        DATA(t396) = |    EXPORTING\n|.
        DATA(t397) = strlen( t395 ).
        t394 = |{ t395 }{ t396 }|.
        t123 = t394.
        DATA(t398) = VALUE i( ).
        DATA(t399) = 0.
        t398 = t399.
        DO.
          DATA(t400) = VALUE abap_bool( ).
          DATA(t401) = t398.
          DATA(t402) = VALUE i( ).
          DATA(t403) = t208.
          t403->load( ).
          t402 = lines( t403->items ).
          t400 = xsdbool( t401 < t402 ).
          IF t400 = abap_false.
            EXIT.
          ENDIF.
          DATA t404 TYPE REF TO zcl_lnt_proxy_data_item.
          CLEAR t404.
          DATA t405 TYPE REF TO zcl_lnt_proxy_data_item.
          CLEAR t405.
          DATA(t406) = t208.
          DATA(t407) = t398.
          t407 = t407 + 1.
          DATA t408 TYPE REF TO object.
          CLEAR t408.
          t406->load( ).
          CLEAR t408.
          READ TABLE t406->items INDEX t407 INTO t408.
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
          DATA t424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t424.
          DATA t425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t425.
          DATA(t426) = VALUE abap_bool( ).
          DATA(t427) = VALUE string( ).
          DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t428.
          DATA(t429) = t404.
          DATA(t430) = |OBJ_NAME2|.
          t428 = zlnt_property_loo_01d5731631ca=>get( p0 = t429 key = t430 ).
          IF t428 IS BOUND.
            t427 = t428->type_of( ).
            IF t428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t428->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
              t427 = `function`.
            ENDIF.
          ELSE.
            t427 = `undefined`.
          ENDIF.
          DATA(t431) = |string|.
          t426 = xsdbool( t427 = t431 ).
          IF t426 = abap_true.
            DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t432.
            DATA(t433) = abap_true.
            IF t433 = abap_true.
              DATA(t434) = VALUE string( ).
              DATA(t435) = VALUE string( ).
              DATA t436 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t436.
              DATA(t437) = t404.
              t436 = t437->zlnt_view_read_sr_7f8cbc63ea3f( ).
              t435 = t436->value.
              DATA(t438) = strlen( t435 ).
              t434 = t435.
              TRANSLATE t434 TO LOWER CASE.
              DATA(t439) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t439->has = abap_true.
              t439->value = t434.
              t432 = t439.
            ELSE.
              DATA t440 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t440.
              t432 = t440.
            ENDIF.
            t425 = t432.
          ELSE.
            DATA t441 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t441.
            t425 = t441.
          ENDIF.
          t424 = t425.
          DATA t442 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t442.
          DATA t443 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t443.
          DATA(t444) = VALUE abap_bool( ).
          DATA(t445) = VALUE string( ).
          DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t446.
          DATA(t447) = t404.
          DATA(t448) = |OBJ_NAME_R|.
          t446 = zlnt_property_loo_01d5731631ca=>get( p0 = t447 key = t448 ).
          IF t446 IS BOUND.
            t445 = t446->type_of( ).
            IF t446->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t446->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
              t445 = `function`.
            ENDIF.
          ELSE.
            t445 = `undefined`.
          ENDIF.
          DATA(t449) = |string|.
          t444 = xsdbool( t445 = t449 ).
          IF t444 = abap_true.
            DATA t450 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t450.
            DATA(t451) = abap_true.
            IF t451 = abap_true.
              DATA(t452) = VALUE string( ).
              DATA(t453) = VALUE string( ).
              DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t454.
              DATA(t455) = t404.
              t454 = t455->zlnt_view_read_sr_85225c1d91ed( ).
              t453 = t454->value.
              DATA(t456) = strlen( t453 ).
              t452 = t453.
              TRANSLATE t452 TO LOWER CASE.
              DATA(t457) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t457->has = abap_true.
              t457->value = t452.
              t450 = t457.
            ELSE.
              DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t458.
              t450 = t458.
            ENDIF.
            t443 = t450.
          ELSE.
            DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t459.
            t443 = t459.
          ENDIF.
          t442 = t443.
          DATA(t460) = VALUE abap_bool( ).
          DATA(t461) = VALUE abap_bool( ).
          DATA(t462) = t398.
          DATA(t463) = VALUE i( ).
          DATA(t464) = VALUE i( ).
          DATA(t465) = t208.
          t465->load( ).
          t464 = lines( t465->items ).
          DATA(t466) = 1.
          t463 = t464 - t466.
          t461 = xsdbool( t462 = t463 ).
          t460 = t461.
          DATA(t467) = VALUE string( ).
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
          DATA(t478) = t424.
          t477 = t478.
          DATA(t479) = VALUE string( ).
          DATA(t480) = VALUE abap_bool( ).
          DATA(t481) = t477.
          IF t481 IS INITIAL.
            t480 = abap_true.
          ELSEIF t481->has = abap_false.
            t480 = abap_true.
          ENDIF.
          IF t480 = abap_true.
            DATA(t482) = |undefined|.
            t479 = t482.
          ELSE.
            DATA(t483) = VALUE string( ).
            DATA(t484) = t477.
            t483 = t484->value.
            t479 = t483.
          ENDIF.
          t476 = t479.
          DATA(t485) = strlen( t475 ).
          t474 = |{ t475 }{ t476 }|.
          DATA(t486) = | TYPE |.
          DATA(t487) = strlen( t474 ).
          t473 = |{ t474 }{ t486 }|.
          DATA(t488) = VALUE string( ).
          DATA t489 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t489.
          DATA(t490) = t442.
          t489 = t490.
          DATA(t491) = VALUE string( ).
          DATA(t492) = VALUE abap_bool( ).
          DATA(t493) = t489.
          IF t493 IS INITIAL.
            t492 = abap_true.
          ELSEIF t493->has = abap_false.
            t492 = abap_true.
          ENDIF.
          IF t492 = abap_true.
            DATA(t494) = |undefined|.
            t491 = t494.
          ELSE.
            DATA(t495) = VALUE string( ).
            DATA(t496) = t489.
            t495 = t496->value.
            t491 = t495.
          ENDIF.
          t488 = t491.
          DATA(t497) = strlen( t473 ).
          t472 = |{ t473 }{ t488 }|.
          DATA(t498) = ||.
          DATA(t499) = strlen( t472 ).
          t471 = |{ t472 }{ t498 }|.
          DATA(t500) = VALUE string( ).
          DATA(t501) = t460.
          IF t501 = abap_true.
            DATA(t502) = |.|.
            t500 = t502.
          ELSE.
            DATA(t503) = ||.
            t500 = t503.
          ENDIF.
          DATA(t504) = strlen( t471 ).
          t470 = |{ t471 }{ t500 }|.
          DATA(t505) = |\n|.
          DATA(t506) = strlen( t470 ).
          t469 = |{ t470 }{ t505 }|.
          DATA(t507) = strlen( t468 ).
          t467 = |{ t468 }{ t469 }|.
          t123 = t467.
          DATA(t508) = VALUE i( ).
          DATA(t509) = t398.
          DATA(t510) = 1.
          t508 = t509 + t510.
          t398 = t508.
        ENDDO.
      ENDIF.
    ENDDO.
    DATA(t511) = VALUE string( ).
    DATA(t512) = t123.
    DATA(t513) = |ENDINTERFACE.|.
    DATA(t514) = strlen( t512 ).
    t511 = |{ t512 }{ t513 }|.
    t123 = t511.
    DATA t515 TYPE REF TO zcl_lnt_ob_interface.
    CLEAR t515.
    DATA t516 TYPE REF TO zcl_lnt_ob_interface.
    CLEAR t516.
    DATA(t517) = VALUE string( ).
    DATA(t518) = t78.
    DATA(t519) = strlen( t518 ).
    t517 = t518.
    IF t517 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t517 TO UPPER CASE.
    ELSE.
      t517 = zlnt_runtime_uppe_91169605024d=>full( t517 ).
    ENDIF.
    t516 = NEW zcl_lnt_ob_interface( i_name = t517 ).
    t515 = t516.
    DATA(t520) = t515.
    DATA t521 TYPE REF TO zcl_lnt_memory_file.
    CLEAR t521.
    DATA(t522) = VALUE string( ).
    DATA(t523) = VALUE string( ).
    DATA(t524) = ||.
    DATA(t525) = t78.
    DATA(t526) = strlen( t524 ).
    t523 = |{ t524 }{ t525 }|.
    DATA(t527) = |.intf.abap|.
    DATA(t528) = strlen( t523 ).
    t522 = |{ t523 }{ t527 }|.
    DATA(t529) = t123.
    t521 = NEW zcl_lnt_memory_file( i_filename = t522 i_raw = t529 ).
    t520->add_file( i_file = t521 ).
    DATA(t530) = t5.
    DATA(t531) = t515.
    t530->load( ).
    APPEND t531 TO t530->items.
    t530->save( ).
    DATA(t532) = t5.
    result = t532.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_prx_obj_ts_prx_obj( i_release_2099 = i_release_7928 i_global_macros_14ec = i_global_macros_5535 i_reg_f149 = i_reg_f149 ) ).
    result = t1.

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
