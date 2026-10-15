* TS: src/rules/easy_to_find_messages.ts:15:1 EasyToFindMessages
CLASS zcl_lnt_easy_to_find_messages DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_esy_t_fnd_mssgs_cnf.
    DATA msag_references TYPE REF TO zif_lnt_msag_references.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_e_t_f_m_t_es_t_fn_ms RETURNING VALUE(result) TYPE REF TO zcl_lnt_esy_t_fnd_mssgs_cnf.
    METHODS s_c_i_s_r_e_t_f_m_t_es_t_fn_ms IMPORTING i_conf TYPE REF TO zcl_lnt_esy_t_fnd_mssgs_cnf.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS r_i_s_r_e_t_f_ms_ts_es_t_fn_ms IMPORTING i_object_19cd TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_easy_to_find_messages IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_esy_t_fnd_mssgs_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |easy_to_find_messages|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Easy to find messages|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Make messages easy to find|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |All messages must be statically referenced exactly once\n\nOnl|.
      t11 = t11 && |y MESSAGE and RAISE statments are counted as static referenc|.
      t11 = t11 && |es\n\nAlso see rule "message_exists"\n\nhttps://github.com/SAP/s|.
      t11 = t11 && |tyleguides/blob/main/clean-abap/CleanABAP.md#make-messages-e|.
      t11 = t11 && |asy-to-find|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t9 = t13.
    ENDIF.
    t8 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = t18.
      DATA(t21) = |Styleguide|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      t17 = t22.
      t15 = t17.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t23.
      t15 = t23.
    ENDIF.
    t14 = t15.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t26 i_extended_information = t8 i_tags = t14 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t37) = |key|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    ENDIF.
    DATA(t39) = |title|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |shortDescription|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |extendedInformation|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |tags|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_e_t_f_m_t_es_t_fn_ms.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_e_t_f_m_t_es_t_fn_ms.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zif_lnt_msag_references.
    CLEAR t2.
    DATA(t3) = t1.
    t2 = t3->get_msag_references( ).
    me->msag_references = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `msagReferences`.
    DATA t4 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t5.
    DATA t6 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t6.
    DATA(t7) = t1.
    t6 = t7->get_objects( ).
    t5 = t6->iterate( ).
    t4 = t5.
    DO.
      DATA(t8) = abap_true.
      IF t8 = abap_false.
        EXIT.
      ENDIF.
      DATA t9 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t9.
      DATA t10 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t10.
      DATA(t11) = t4.
      t10 = t11->next( ).
      t9 = t10.
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = t9.
      t12 = t13->done.
      IF t12 = abap_true.
        EXIT.
      ENDIF.
      DATA t14 TYPE REF TO zif_lnt_object.
      CLEAR t14.
      DATA t15 TYPE REF TO zif_lnt_object.
      CLEAR t15.
      DATA t16 TYPE REF TO zif_lnt_object.
      CLEAR t16.
      DATA(t17) = t9.
      t16 = t17->value.
      t15 = t16.
      t14 = t15.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = abap_false.
      t20 = t21.
      DATA t22 TYPE REF TO cx_root.
      CLEAR t22.
      TRY.
          DATA(t23) = VALUE abap_bool( ).
          DATA(t24) = t14.
          t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_abap_object ).
          t19 = t23.
          DATA(t25) = abap_true.
          t20 = t25.
        CATCH cx_root INTO t22.
          DATA(t26) = VALUE abap_bool( ).
          DATA(t27) = t20.
          t26 = xsdbool( t27 = abap_false ).
          IF t26 = abap_true.
            DATA(t28) = t4.
            t28->close( ).
          ENDIF.
          RAISE EXCEPTION t22.
      ENDTRY.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = t20.
      t29 = xsdbool( t30 = abap_false ).
      IF t29 = abap_true.
        DATA(t31) = t4.
        t31->close( ).
      ENDIF.
      DATA(t32) = t19.
      t18 = t32.
      IF t18 = abap_true.
        DATA t33 TYPE REF TO zcl_lnt_isyntax_result.
        CLEAR t33.
        DATA t34 TYPE REF TO zcl_lnt_isyntax_result.
        CLEAR t34.
        DATA(t35) = VALUE abap_bool( ).
        DATA(t36) = abap_false.
        t35 = t36.
        DATA t37 TYPE REF TO cx_root.
        CLEAR t37.
        TRY.
            DATA t38 TYPE REF TO zcl_lnt_isyntax_result.
            CLEAR t38.
            DATA t39 TYPE REF TO zcl_lnt_syntax_logic.
            CLEAR t39.
            DATA(t40) = t1.
            DATA t41 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t41.
            DATA(t42) = t14.
            DATA t43 TYPE REF TO object.
            CLEAR t43.
            t43 = t42.
            t41 ?= t43.
            t39 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t40 i_object_19cd = t41 ).
            t38 = t39->run( ).
            t34 = t38.
            DATA(t44) = abap_true.
            t35 = t44.
          CATCH cx_root INTO t37.
            DATA(t45) = VALUE abap_bool( ).
            DATA(t46) = t35.
            t45 = xsdbool( t46 = abap_false ).
            IF t45 = abap_true.
              DATA(t47) = t4.
              t47->close( ).
            ENDIF.
            RAISE EXCEPTION t37.
        ENDTRY.
        DATA(t48) = VALUE abap_bool( ).
        DATA(t49) = t35.
        t48 = xsdbool( t49 = abap_false ).
        IF t48 = abap_true.
          DATA(t50) = t4.
          t50->close( ).
        ENDIF.
        DATA(t51) = t34.
        t33 = t51.
      ENDIF.
    ENDDO.
    DATA(t52) = me.
    result = t52.

  ENDMETHOD.

  METHOD r_i_s_r_e_t_f_ms_ts_es_t_fn_ms.
    DATA(t1) = i_object_19cd.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE string.
    DATA(t6) = t1.
    t5 = t6->get_type( ).
    DATA(t7) = |MSAG|.
    t4 = xsdbool( t5 = t7 ).
    IF t4 = abap_true.
      DATA t8 TYPE REF TO zcl_lnt_ob_message_class.
      DATA t9 TYPE REF TO zcl_lnt_ob_message_class.
      DATA(t10) = t1.
      t9 ?= t10.
      t8 = t9.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_ob_message_class.
      DATA(t13) = t8.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t14.
      DATA(t15) = t12.
      t15->parse_xml( ).
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t17.
      DATA t18 TYPE REF TO zcl_lnt_parsed_message_class.
      DATA t19 TYPE REF TO zcl_lnt_parsed_message_class.
      DATA(t20) = t12.
      t19 = t20->xml.
      t18 = t19.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t21.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = t18.
      IF t23 IS INITIAL.
        t22 = abap_true.
      ENDIF.
      IF t22 = abap_true.
        DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t24.
        t21 = t24.
      ELSE.
        DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t26 TYPE REF TO zcl_lnt_parsed_message_class.
        DATA(t27) = t18.
        t26 = t27.
        t25 = t26->parsed_messages.
        t21 = t25.
      ENDIF.
      t17 = t21.
      t16 = t17.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t28.
      DATA t29 TYPE abap_bool.
      DATA(t30) = t16.
      t29 = xsdbool( t30 IS BOUND ).
      IF t29 = abap_true.
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t32) = t16.
        t31 = t32.
        t28 = t31.
      ELSE.
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t33.
        t28 = t33.
      ENDIF.
      t14 = t28.
      t11 = t14.
      DATA t34 TYPE REF TO zcl_lnt_ty_message.
      CLEAR t34.
      DATA t35 TYPE REF TO object.
      CLEAR t35.
      DATA(t36) = VALUE i( ).
      DO.
        t11->load( ).
        IF t36 >= lines( t11->items ).
          EXIT.
        ENDIF.
        CLEAR t35.
        READ TABLE t11->items INDEX t36 + 1 INTO t35.
        t36 = t36 + 1.
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t37.
        CLEAR t34.
        IF t35 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t37 ?= t35.
          DATA t38 TYPE REF TO object.
          t38 = t37->as_ref( ).
          t34 ?= t38.
        ELSE.
          t34 ?= t35.
        ENDIF.
        DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t39.
        DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t40.
        DATA(t41) = me->msag_references.
        DATA t42 TYPE string.
        DATA t43 TYPE string.
        DATA t44 TYPE REF TO zcl_lnt_abstract_object.
        DATA(t45) = t8.
        t44 = t45.
        DATA t46 TYPE string.
        DATA(t47) = t44.
        t46 = t47->name.
        t43 = t46.
        DATA(t48) = strlen( t43 ).
        t42 = t43.
        IF t42 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t42 TO UPPER CASE.
        ELSE.
          t42 = zlnt_runtime_uppe_91169605024d=>full( t42 ).
        ENDIF.
        DATA t49 TYPE string.
        DATA t50 TYPE REF TO zcl_lnt_ty_message.
        DATA(t51) = t34.
        t50 = t51.
        DATA t52 TYPE string.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t54) = t50.
        t53 = t54->number.
        t52 = t53->value.
        t49 = t52.
        t40 = t41->list_by_message( i_message_class = t42 i_number = t49 ).
        t39 = t40.
        DATA t55 TYPE abap_bool.
        DATA t56 TYPE i.
        DATA(t57) = t39.
        t57->load( ).
        t56 = lines( t57->items ).
        DATA(t58) = 0.
        t55 = xsdbool( t56 = t58 ).
        IF t55 = abap_true.
          DATA t59 TYPE string.
          DATA t60 TYPE string.
          DATA t61 TYPE string.
          DATA(t62) = |Message |.
          DATA t63 TYPE string.
          DATA t64 TYPE REF TO zcl_lnt_ty_message.
          DATA(t65) = t34.
          t64 = t65.
          DATA t66 TYPE string.
          DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t68) = t64.
          t67 = t68->number.
          t66 = t67->value.
          t63 = t66.
          DATA(t69) = strlen( t62 ).
          t61 = |{ t62 }{ t63 }|.
          DATA(t70) = | not statically referenced|.
          DATA(t71) = strlen( t61 ).
          t60 = |{ t61 }{ t70 }|.
          t59 = t60.
          DATA t72 TYPE REF TO zcl_lnt_position.
          DATA t73 TYPE REF TO zcl_lnt_position.
          DATA(t74) = CONV f( 1 ).
          DATA(t75) = CONV f( 1 ).
          DATA(t76) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t76->has = abap_true.
          t76->value = t75.
          t73 = NEW zcl_lnt_position( i_row = t74 i_col = t76 ).
          t72 = t73.
          DATA t77 TYPE REF TO zcl_lnt_issue.
          CLEAR t77.
          DATA t78 TYPE REF TO zcl_lnt_issue.
          CLEAR t78.
          DATA t79 TYPE REF TO zif_lnt_file.
          CLEAR t79.
          DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t81) = t1.
          t80 = t81->get_files( ).
          DATA t82 TYPE REF TO object.
          CLEAR t82.
          t80->load( ).
          CLEAR t82.
          READ TABLE t80->items INDEX 1 INTO t82.
          DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t83.
          CLEAR t79.
          IF t82 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t83 ?= t82.
            DATA t84 TYPE REF TO object.
            t84 = t83->as_ref( ).
            t79 ?= t84.
          ELSE.
            t79 ?= t82.
          ENDIF.
          DATA(t85) = t72.
          DATA(t86) = t59.
          DATA(t87) = VALUE string( ).
          DATA t88 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t88.
          DATA t89 TYPE string.
          DATA(t90) = |easy_to_find_messages|.
          t89 = t90.
          DATA t91 TYPE string.
          DATA(t92) = |Easy to find messages|.
          t91 = t92.
          DATA t93 TYPE string.
          DATA(t94) = |Make messages easy to find|.
          t93 = t94.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t96.
          DATA(t97) = abap_true.
          IF t97 = abap_true.
            DATA(t98) = |All messages must be statically referenced exactly once\n\nOnl|.
            t98 = t98 && |y MESSAGE and RAISE statments are counted as static referenc|.
            t98 = t98 && |es\n\nAlso see rule "message_exists"\n\nhttps://github.com/SAP/s|.
            t98 = t98 && |tyleguides/blob/main/clean-abap/CleanABAP.md#make-messages-e|.
            t98 = t98 && |asy-to-find|.
            DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t99->has = abap_true.
            t99->value = t98.
            t96 = t99.
          ELSE.
            DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t100.
            t96 = t100.
          ENDIF.
          t95 = t96.
          DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t101.
          DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t102.
          DATA(t103) = abap_true.
          IF t103 = abap_true.
            DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t105 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t106.
            t105 = t106.
            DATA(t107) = t105.
            DATA(t108) = |Styleguide|.
            t107->load( ).
            APPEND t108 TO t107->items.
            t107->save( ).
            DATA(t109) = t105.
            t104 = t109.
            t102 = t104.
          ELSE.
            DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t110.
            t102 = t110.
          ENDIF.
          t101 = t102.
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t112.
          t111 = t112.
          DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t114.
          t113 = t114.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t116.
          t115 = t116.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t118.
          t117 = t118.
          t88 = NEW zcl_lnt_irule_metadata( i_key = t89 i_title = t91 i_short_description = t93 i_bad_example = t111 i_good_example = t113 i_extended_information = t95 i_tags = t101 i_pragma = t115 i_pseudo_comment = t117 ).
          CREATE OBJECT t88->zlnt_view_ownkeys_b0e8086400eb.
          t88->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t119.
          IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t119 ).
          ENDIF.
          DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t120.
          IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t120 ).
          ENDIF.
          DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t121.
          IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t121 ).
          ENDIF.
          DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t122.
          IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t122 ).
          ENDIF.
          DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t123.
          IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t123 ).
          ENDIF.
          CREATE OBJECT t88->zlnt_json_ownkeys_70e5fd461788.
          t88->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t124) = |key|.
          DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t125.
          IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t124 p1 = t125 ).
          ENDIF.
          DATA(t126) = |title|.
          DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t127.
          IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
          ENDIF.
          DATA(t128) = |shortDescription|.
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t129.
          IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
          ENDIF.
          DATA(t130) = |extendedInformation|.
          DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t131.
          IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t130 p1 = t131 ).
          ENDIF.
          DATA(t132) = |tags|.
          DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t133.
          IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t132 p1 = t133 ).
          ENDIF.
          t87 = t88->key.
          DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t135) = me->conf.
          t134 = t135->zlnt_view_read_sr_15c06369f827( ).
          DATA t136 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t136.
          t78 = zcl_lnt_issue=>at_position( i_file = t79 i_start = t85 i_message_26cb = t86 i_key = t87 i_severity = t134 i_fix = t136 ).
          t77 = t78.
          DATA(t137) = t2.
          DATA(t138) = t77.
          t137->load( ).
          APPEND t138 TO t137->items.
          t137->save( ).
        ELSE.
          DATA t139 TYPE abap_bool.
          DATA t140 TYPE i.
          DATA(t141) = t39.
          t141->load( ).
          t140 = lines( t141->items ).
          DATA(t142) = 2.
          t139 = xsdbool( t140 >= t142 ).
          IF t139 = abap_true.
            DATA t143 TYPE string.
            DATA t144 TYPE string.
            DATA t145 TYPE string.
            DATA(t146) = |Message |.
            DATA t147 TYPE string.
            DATA t148 TYPE REF TO zcl_lnt_ty_message.
            DATA(t149) = t34.
            t148 = t149.
            DATA t150 TYPE string.
            DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t152) = t148.
            t151 = t152->number.
            t150 = t151->value.
            t147 = t150.
            DATA(t153) = strlen( t146 ).
            t145 = |{ t146 }{ t147 }|.
            DATA(t154) = | referenced more than once|.
            DATA(t155) = strlen( t145 ).
            t144 = |{ t145 }{ t154 }|.
            t143 = t144.
            DATA t156 TYPE REF TO zcl_lnt_position.
            DATA t157 TYPE REF TO zcl_lnt_position.
            DATA(t158) = CONV f( 1 ).
            DATA(t159) = CONV f( 1 ).
            DATA(t160) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t160->has = abap_true.
            t160->value = t159.
            t157 = NEW zcl_lnt_position( i_row = t158 i_col = t160 ).
            t156 = t157.
            DATA t161 TYPE REF TO zcl_lnt_issue.
            CLEAR t161.
            DATA t162 TYPE REF TO zcl_lnt_issue.
            CLEAR t162.
            DATA t163 TYPE REF TO zif_lnt_file.
            CLEAR t163.
            DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t165) = t1.
            t164 = t165->get_files( ).
            DATA t166 TYPE REF TO object.
            CLEAR t166.
            t164->load( ).
            CLEAR t166.
            READ TABLE t164->items INDEX 1 INTO t166.
            DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t167.
            CLEAR t163.
            IF t166 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t167 ?= t166.
              DATA t168 TYPE REF TO object.
              t168 = t167->as_ref( ).
              t163 ?= t168.
            ELSE.
              t163 ?= t166.
            ENDIF.
            DATA(t169) = t156.
            DATA(t170) = t143.
            DATA(t171) = VALUE string( ).
            DATA t172 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t172.
            DATA t173 TYPE string.
            DATA(t174) = |easy_to_find_messages|.
            t173 = t174.
            DATA t175 TYPE string.
            DATA(t176) = |Easy to find messages|.
            t175 = t176.
            DATA t177 TYPE string.
            DATA(t178) = |Make messages easy to find|.
            t177 = t178.
            DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t179.
            DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t180.
            DATA(t181) = abap_true.
            IF t181 = abap_true.
              DATA(t182) = |All messages must be statically referenced exactly once\n\nOnl|.
              t182 = t182 && |y MESSAGE and RAISE statments are counted as static referenc|.
              t182 = t182 && |es\n\nAlso see rule "message_exists"\n\nhttps://github.com/SAP/s|.
              t182 = t182 && |tyleguides/blob/main/clean-abap/CleanABAP.md#make-messages-e|.
              t182 = t182 && |asy-to-find|.
              DATA(t183) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t183->has = abap_true.
              t183->value = t182.
              t180 = t183.
            ELSE.
              DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t184.
              t180 = t184.
            ENDIF.
            t179 = t180.
            DATA t185 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t185.
            DATA t186 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t186.
            DATA(t187) = abap_true.
            IF t187 = abap_true.
              DATA t188 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t189 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t190 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t190.
              t189 = t190.
              DATA(t191) = t189.
              DATA(t192) = |Styleguide|.
              t191->load( ).
              APPEND t192 TO t191->items.
              t191->save( ).
              DATA(t193) = t189.
              t188 = t193.
              t186 = t188.
            ELSE.
              DATA t194 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t194.
              t186 = t194.
            ENDIF.
            t185 = t186.
            DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t196.
            t195 = t196.
            DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t198.
            t197 = t198.
            DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t200.
            t199 = t200.
            DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t202.
            t201 = t202.
            t172 = NEW zcl_lnt_irule_metadata( i_key = t173 i_title = t175 i_short_description = t177 i_bad_example = t195 i_good_example = t197 i_extended_information = t179 i_tags = t185 i_pragma = t199 i_pseudo_comment = t201 ).
            CREATE OBJECT t172->zlnt_view_ownkeys_b0e8086400eb.
            t172->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t203.
            IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t203 ).
            ENDIF.
            DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t204.
            IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t204 ).
            ENDIF.
            DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t205.
            IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t205 ).
            ENDIF.
            DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t206.
            IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t206 ).
            ENDIF.
            DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t207.
            IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t207 ).
            ENDIF.
            CREATE OBJECT t172->zlnt_json_ownkeys_70e5fd461788.
            t172->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t208) = |key|.
            DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t209.
            IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t208 p1 = t209 ).
            ENDIF.
            DATA(t210) = |title|.
            DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t211.
            IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t210 p1 = t211 ).
            ENDIF.
            DATA(t212) = |shortDescription|.
            DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t213.
            IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t212 p1 = t213 ).
            ENDIF.
            DATA(t214) = |extendedInformation|.
            DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t215.
            IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t214 p1 = t215 ).
            ENDIF.
            DATA(t216) = |tags|.
            DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t217.
            IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t216 p1 = t217 ).
            ENDIF.
            t171 = t172->key.
            DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t219) = me->conf.
            t218 = t219->zlnt_view_read_sr_15c06369f827( ).
            DATA t220 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t220.
            t162 = zcl_lnt_issue=>at_position( i_file = t163 i_start = t169 i_message_26cb = t170 i_key = t171 i_severity = t218 i_fix = t220 ).
            t161 = t162.
            DATA(t221) = t2.
            DATA(t222) = t161.
            t221->load( ).
            APPEND t222 TO t221->items.
            t221->save( ).
          ENDIF.
        ENDIF.
      ENDDO.
    ENDIF.
    DATA(t223) = t2.
    result = t223.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_esy_t_fnd_mssgs_cnf( me->g_c_i_s_r_e_t_f_m_t_es_t_fn_ms( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_esy_t_fnd_mssgs_cnf( me->g_c_i_s_r_e_t_f_m_t_es_t_fn_ms( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_esy_t_fnd_mssgs_cnf.
    CLEAR t2.
    DATA(t3) = t1.
    CLEAR t2.
    IF t3 IS BOUND.
      IF t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t3->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t4.
          IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t3->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_esy_t_fnd_mssgs_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_e_t_f_m_t_es_t_fn_ms( i_conf = t2 ).
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = t1.
    t2 = me->r_i_s_r_e_t_f_ms_ts_es_t_fn_ms( i_object_19cd = t3 ).
    result = t2.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1488_ec55584c6d15.
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
