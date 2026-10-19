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
    me->conf = NEW zcl_lnt_esy_t_fnd_mssgs_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |All messages must be statically referenced exactly once\n\nOnl|.
    t11 = t11 && |y MESSAGE and RAISE statments are counted as static referenc|.
    t11 = t11 && |es\n\nAlso see rule "message_exists"\n\nhttps://github.com/SAP/s|.
    t11 = t11 && |tyleguides/blob/main/clean-abap/CleanABAP.md#make-messages-e|.
    t11 = t11 && |asy-to-find|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |easy_to_find_messages| i_title = |Easy to find messages| i_short_description = |Make messages easy to find| i_bad_example = t24 i_good_example = t26 i_extended_information = t8 i_tags = t18 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t38 ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t40 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t42 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t44 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_e_t_f_m_t_es_t_fn_ms.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_e_t_f_m_t_es_t_fn_ms.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    me->msag_references = t1->get_msag_references( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `msagReferences`.
    DATA t4 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t4 = t1->get_objects( )->iterate( ).
    DO.
      DATA t9 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t9.
      t9 = t4->next( ).
      IF t9->done = abap_true.
        EXIT.
      ENDIF.
      DATA t14 TYPE REF TO zif_lnt_object.
      CLEAR t14.
      t14 = t9->value.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE abap_bool( ).
      t20 = abap_false.
      DATA t22 TYPE REF TO cx_root.
      CLEAR t22.
      TRY.
          t19 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_abap_object ).
          t20 = abap_true.
        CATCH cx_root INTO t22.
          IF xsdbool( t20 = abap_false ) = abap_true.
            t4->close( ).
          ENDIF.
          RAISE EXCEPTION t22.
      ENDTRY.
      IF xsdbool( t20 = abap_false ) = abap_true.
        t4->close( ).
      ENDIF.
      IF t19 = abap_true.
        DATA t33 TYPE REF TO zcl_lnt_isyntax_result.
        CLEAR t33.
        DATA t34 TYPE REF TO zcl_lnt_isyntax_result.
        CLEAR t34.
        DATA(t35) = VALUE abap_bool( ).
        t35 = abap_false.
        DATA t37 TYPE REF TO cx_root.
        CLEAR t37.
        TRY.
            DATA t41 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t41.
            DATA t43 TYPE REF TO object.
            CLEAR t43.
            t43 = t14.
            t41 ?= t43.
            t34 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t1 i_object_19cd = t41 )->run( ).
            t35 = abap_true.
          CATCH cx_root INTO t37.
            IF xsdbool( t35 = abap_false ) = abap_true.
              t4->close( ).
            ENDIF.
            RAISE EXCEPTION t37.
        ENDTRY.
        IF xsdbool( t35 = abap_false ) = abap_true.
          t4->close( ).
        ENDIF.
        t33 = t34.
      ENDIF.
    ENDDO.
    result = me.

  ENDMETHOD.

  METHOD r_i_s_r_e_t_f_ms_ts_es_t_fn_ms.
    DATA(t1) = i_object_19cd.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    IF xsdbool( t1->get_type( ) = |MSAG| ) = abap_true.
      DATA t8 TYPE REF TO zcl_lnt_ob_message_class.
      DATA t9 TYPE REF TO zcl_lnt_ob_message_class.
      t9 ?= t1.
      t8 = t9.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t12 TYPE REF TO zcl_lnt_ob_message_class.
      t12 = t8.
      t12->parse_xml( ).
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t18 TYPE REF TO zcl_lnt_parsed_message_class.
      t18 = t12->xml.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF xsdbool( t18 IS INITIAL ) = abap_true.
      ELSE.
        t21 = t18->parsed_messages.
      ENDIF.
      t16 = t21.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF xsdbool( t16 IS BOUND ) = abap_true.
        t28 = t16.
      ELSE.
        CREATE OBJECT t28.
      ENDIF.
      t11 = t28.
      DATA t34 TYPE REF TO zcl_lnt_ty_message.
      DATA t35 TYPE REF TO object.
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
        DATA(t41) = me->msag_references.
        DATA t42 TYPE string.
        DATA t43 TYPE string.
        DATA t44 TYPE REF TO zcl_lnt_abstract_object.
        t44 = t8.
        t43 = t44->name.
        DATA(t48) = strlen( t43 ).
        t42 = t43.
        IF t42 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t42 TO UPPER CASE.
        ELSE.
          t42 = zlnt_runtime_uppe_91169605024d=>full( t42 ).
        ENDIF.
        DATA t49 TYPE string.
        t49 = t34->number->value.
        t39 = t41->list_by_message( i_message_class = t42 i_number = t49 ).
        t39->load( ).
        IF xsdbool( lines( t39->items ) = 0 ) = abap_true.
          DATA t60 TYPE string.
          DATA t61 TYPE string.
          DATA(t62) = |Message |.
          DATA t63 TYPE string.
          t63 = t34->number->value.
          DATA(t69) = strlen( t62 ).
          t61 = |{ t62 }{ t63 }|.
          DATA(t71) = strlen( t61 ).
          t60 = |{ t61 }{ | not statically referenced| }|.
          DATA t73 TYPE REF TO zcl_lnt_position.
          DATA(t76) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t76->has = abap_true.
          t76->value = CONV f( 1 ).
          t73 = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t76 ).
          DATA t78 TYPE REF TO zcl_lnt_issue.
          CLEAR t78.
          DATA t79 TYPE REF TO zif_lnt_file.
          CLEAR t79.
          DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t80 = t1->get_files( ).
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
          DATA(t87) = VALUE string( ).
          DATA t88 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t88.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          DATA(t98) = |All messages must be statically referenced exactly once\n\nOnl|.
          t98 = t98 && |y MESSAGE and RAISE statments are counted as static referenc|.
          t98 = t98 && |es\n\nAlso see rule "message_exists"\n\nhttps://github.com/SAP/s|.
          t98 = t98 && |tyleguides/blob/main/clean-abap/CleanABAP.md#make-messages-e|.
          t98 = t98 && |asy-to-find|.
          DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t99->has = abap_true.
          t99->value = t98.
          t95 = t99.
          DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t101.
          DATA t105 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t105.
          t105->load( ).
          APPEND |Styleguide| TO t105->items.
          t105->save( ).
          t101 = t105.
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t111.
          DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t113.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t117.
          t88 = NEW zcl_lnt_irule_metadata( i_key = |easy_to_find_messages| i_title = |Easy to find messages| i_short_description = |Make messages easy to find| i_bad_example = t111 i_good_example = t113 i_extended_information = t95 i_tags = t101 i_pragma = t115 i_pseudo_comment = t117 ).
          CREATE OBJECT t88->zlnt_view_ownkeys_b0e8086400eb.
          t88->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t119.
          t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t119 ).
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
          DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t125.
          t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t125 ).
          DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t127.
          IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t127 ).
          ENDIF.
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t129.
          IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t129 ).
          ENDIF.
          DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t131.
          IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t131 ).
          ENDIF.
          DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t133.
          IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t133 ).
          ENDIF.
          t87 = t88->key.
          DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t134 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t136 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t136.
          t78 = zcl_lnt_issue=>at_position( i_file = t79 i_start = t73 i_message_26cb = t60 i_key = t87 i_severity = t134 i_fix = t136 ).
          t2->load( ).
          APPEND t78 TO t2->items.
          t2->save( ).
        ELSE.
          t39->load( ).
          IF xsdbool( lines( t39->items ) >= 2 ) = abap_true.
            DATA t144 TYPE string.
            DATA t145 TYPE string.
            DATA(t146) = |Message |.
            DATA t147 TYPE string.
            t147 = t34->number->value.
            DATA(t153) = strlen( t146 ).
            t145 = |{ t146 }{ t147 }|.
            DATA(t155) = strlen( t145 ).
            t144 = |{ t145 }{ | referenced more than once| }|.
            DATA t157 TYPE REF TO zcl_lnt_position.
            DATA(t160) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t160->has = abap_true.
            t160->value = CONV f( 1 ).
            t157 = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t160 ).
            DATA t162 TYPE REF TO zcl_lnt_issue.
            CLEAR t162.
            DATA t163 TYPE REF TO zif_lnt_file.
            CLEAR t163.
            DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t164 = t1->get_files( ).
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
            DATA(t171) = VALUE string( ).
            DATA t172 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t172.
            DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t179.
            DATA(t182) = |All messages must be statically referenced exactly once\n\nOnl|.
            t182 = t182 && |y MESSAGE and RAISE statments are counted as static referenc|.
            t182 = t182 && |es\n\nAlso see rule "message_exists"\n\nhttps://github.com/SAP/s|.
            t182 = t182 && |tyleguides/blob/main/clean-abap/CleanABAP.md#make-messages-e|.
            t182 = t182 && |asy-to-find|.
            DATA(t183) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t183->has = abap_true.
            t183->value = t182.
            t179 = t183.
            DATA t185 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t185.
            DATA t189 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t189.
            t189->load( ).
            APPEND |Styleguide| TO t189->items.
            t189->save( ).
            t185 = t189.
            DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t195.
            DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t197.
            DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t199.
            DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t201.
            t172 = NEW zcl_lnt_irule_metadata( i_key = |easy_to_find_messages| i_title = |Easy to find messages| i_short_description = |Make messages easy to find| i_bad_example = t195 i_good_example = t197 i_extended_information = t179 i_tags = t185 i_pragma = t199 i_pseudo_comment = t201 ).
            CREATE OBJECT t172->zlnt_view_ownkeys_b0e8086400eb.
            t172->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t203.
            t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t203 ).
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
            DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t209.
            t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t209 ).
            DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t211.
            IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t211 ).
            ENDIF.
            DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t213.
            IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t213 ).
            ENDIF.
            DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t215.
            IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t215 ).
            ENDIF.
            DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t217.
            IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t217 ).
            ENDIF.
            t171 = t172->key.
            DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t218 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t220 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t220.
            t162 = zcl_lnt_issue=>at_position( i_file = t163 i_start = t157 i_message_26cb = t144 i_key = t171 i_severity = t218 i_fix = t220 ).
            t2->load( ).
            APPEND t162 TO t2->items.
            t2->save( ).
          ENDIF.
        ENDIF.
      ENDDO.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_esy_t_fnd_mssgs_cnf( me->g_c_i_s_r_e_t_f_m_t_es_t_fn_ms( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_esy_t_fnd_mssgs_cnf( me->g_c_i_s_r_e_t_f_m_t_es_t_fn_ms( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_esy_t_fnd_mssgs_cnf.
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
        t2 = NEW zcl_lnt_esy_t_fnd_mssgs_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_e_t_f_m_t_es_t_fn_ms( i_conf = t2 ).
  ENDMETHOD.

  METHOD run.
    DATA(t3) = i_obj_1ed0.
    result = me->r_i_s_r_e_t_f_ms_ts_es_t_fn_ms( i_object_19cd = t3 ).

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
