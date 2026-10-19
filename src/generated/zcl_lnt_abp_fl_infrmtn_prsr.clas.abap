* TS: src/abap/4_file_information/abap_file_information_parser.ts:11:1 ABAPFileInformationParser
CLASS zcl_lnt_abp_fl_infrmtn_prsr DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA filename TYPE string.
    METHODS constructor IMPORTING i_filename TYPE string.
    METHODS parse IMPORTING i_structure TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
    METHODS parse_class_implementations IMPORTING i_structure TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parse_forms IMPORTING i_structure TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parse_interfaces IMPORTING i_structure TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parse_classes IMPORTING i_structure TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_behavior_definition_name IMPORTING i_cdef TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_implementing IMPORTING i_input_967e TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parse_aliases IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_visibility_5c1f TYPE i RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parse_constants IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_visibility_5c1f TYPE i RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parse_attributes IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_visibility_5c1f TYPE i RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parse_method_definition IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_visibility_5c1f TYPE i RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parse_method_parameters IMPORTING i_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abp_fl_infrmtn_prsr IMPLEMENTATION.
  METHOD constructor.
    me->filename = i_filename.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `filename`.
  ENDMETHOD.

  METHOD parse.
    DATA(t1) = i_structure.
    DATA t2 TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
    DATA t3 TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t3 = NEW zcl_lnt_prsd_fl_infrmtn( i_interfaces = t4 i_classes = t6 i_forms = t8 i_implementations = t10 ).
    CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
    t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `interfaces` p1 = t12 ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `classes` p1 = t13 ).
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `forms` p1 = t14 ).
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `implementations` p1 = t15 ).
    ENDIF.
    CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
    t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |interfaces| p1 = t17 ).
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |classes| p1 = t19 ).
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |forms| p1 = t21 ).
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |implementations| p1 = t23 ).
    ENDIF.
    t2 = t3.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      result = t2.
      RETURN.
    ENDIF.
    t2->classes = me->parse_classes( i_structure = t1 ).
    DELETE t2->zlnt_record_delet_0597644d88b4 WHERE table_line = `classes`.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `classes` p1 = t36 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = |classes| p1 = t38 ).
    ENDIF.
    t2->interfaces = me->parse_interfaces( i_structure = t1 ).
    DELETE t2->zlnt_record_delet_0597644d88b4 WHERE table_line = `interfaces`.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `interfaces` p1 = t43 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = |interfaces| p1 = t45 ).
    ENDIF.
    t2->implementations = me->parse_class_implementations( i_structure = t1 ).
    DELETE t2->zlnt_record_delet_0597644d88b4 WHERE table_line = `implementations`.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `implementations` p1 = t50 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = |implementations| p1 = t52 ).
    ENDIF.
    t2->forms = me->parse_forms( i_structure = t1 ).
    DELETE t2->zlnt_record_delet_0597644d88b4 WHERE table_line = `forms`.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `forms` p1 = t57 ).
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = |forms| p1 = t59 ).
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD parse_class_implementations.
    DATA(t1) = i_structure.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d702_c1c9b120591c.
    t4 = t1->find_all_structures( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t4->load( ).
      IF t9 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t4->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t12.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d721_06b6159f9afc.
      t14 = t7->find_all_structures( i_type_9913 = t16 ).
      DATA t17 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t17.
      DATA t18 TYPE REF TO object.
      CLEAR t18.
      DATA(t19) = VALUE i( ).
      DO.
        t14->load( ).
        IF t19 >= lines( t14->items ).
          EXIT.
        ENDIF.
        CLEAR t18.
        READ TABLE t14->items INDEX t19 + 1 INTO t18.
        t19 = t19 + 1.
        DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t20.
        CLEAR t17.
        IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t20 ?= t18.
          DATA t21 TYPE REF TO object.
          t21 = t20->as_ref( ).
          t17 ?= t21.
        ELSE.
          t17 ?= t18.
        ENDIF.
        DATA t22 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t22.
        DATA t24 TYPE REF TO zcl_lnt_expression_node.
        DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
        t24 = t17->find_first_expression( i_type_9913 = t27 ).
        DATA t28 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t28.
        IF xsdbool( t24 IS INITIAL ) = abap_true.
          CLEAR t28.
        ELSE.
          t28 = t24->get_first_token( ).
        ENDIF.
        t22 = t28.
        IF xsdbool( t22 IS BOUND ) = abap_true.
          DATA t38 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t39 TYPE REF TO zcl_lnt_abstract_token.
          t39 = t22.
          DATA(t41) = CONV string( me->filename ).
          t38 = NEW zcl_lnt_fi_identifier( i_token = t39 i_filename = t41 ).
          t12->load( ).
          APPEND t38 TO t12->items.
          t12->save( ).
        ENDIF.
      ENDDO.
      DATA t42 TYPE REF TO zcl_lnt_abstract_token.
      DATA t46 TYPE REF TO zcl_lnt_statement_node.
      DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d413_4f364af5c7c0.
      t46 = t7->find_first_statement( i_type_9913 = t49 ).
      DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t42 = t46->find_first_expression( i_type_9913 = t50 )->get_first_token( ).
      DATA t52 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
      DATA t53 TYPE string.
      t53 = t42->str.
      DATA(t62) = CONV string( me->filename ).
      t52 = NEW zcl_lnt_inf_clss_implmnttn( i_name = t53 i_identifier = NEW zcl_lnt_fi_identifier( i_token = t42 i_filename = t62 ) i_methods = t12 ).
      CREATE OBJECT t52->zlnt_view_ownkeys_b0e8086400eb.
      t52->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t65.
      t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t65 ).
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `identifier` p1 = t66 ).
      ENDIF.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `methods` p1 = t67 ).
      ENDIF.
      CREATE OBJECT t52->zlnt_json_ownkeys_70e5fd461788.
      t52->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t69 ).
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = |identifier| p1 = t71 ).
      ENDIF.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t73.
      IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = |methods| p1 = t73 ).
      ENDIF.
      t2->load( ).
      APPEND t52 TO t2->items.
      t2->save( ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD parse_forms.
    DATA(t1) = i_structure.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d697_195ff21ba72a.
    t4 = t1->find_all_structures( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t4->load( ).
      IF t9 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t4->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
      DATA t20 TYPE REF TO zcl_lnt_position.
      t20 = t7->find_first_expression( i_type_9913 = t19 )->get_first_token( )->start.
      DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
      DATA t28 TYPE REF TO zcl_lnt_lx_identifier.
      t28 = NEW zcl_lnt_lx_identifier( i_start = t20 i_str = t7->find_first_expression( i_type_9913 = t27 )->concat_tokens( ) ).
      DATA t33 TYPE REF TO zcl_lnt_info_form_definition.
      DATA t34 TYPE string.
      DATA t36 TYPE REF TO zcl_lnt_abstract_token.
      t36 = t28.
      t34 = t36->str.
      DATA(t43) = CONV string( me->filename ).
      t33 = NEW zcl_lnt_info_form_definition( i_name = t34 i_identifier = NEW zcl_lnt_fi_identifier( i_token = t28 i_filename = t43 ) ).
      CREATE OBJECT t33->zlnt_view_ownkeys_b0e8086400eb.
      t33->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t44 ).
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      IF t33->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `identifier` p1 = t45 ).
      ENDIF.
      CREATE OBJECT t33->zlnt_json_ownkeys_70e5fd461788.
      t33->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t47 ).
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      IF t33->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = |identifier| p1 = t49 ).
      ENDIF.
      t2->load( ).
      APPEND t33 TO t2->items.
      t2->save( ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD parse_interfaces.
    DATA(t1) = i_structure.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d700_0943ee7a14b4.
    t4 = t1->find_direct_structures( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t4->load( ).
      IF t9 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t4->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        CLEAR t11.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA t12 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t12.
      DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d539_1b20166f6dfe.
      t12 = t7->find_first_statement( i_type_9913 = t15 ).
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t19.
      IF xsdbool( t12 IS INITIAL ) = abap_true.
        DATA t23 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t23.
        DATA t24 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t24.
        DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t28->has = abap_true.
        t28->value = |Interface expected, parseInterfaces|.
        t24 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t28 ).
        t23 = NEW #( ).
        t23->payload = t24.
        CLEAR t23->source_value.
        DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t30.
        DATA t31 TYPE REF TO object.
        CLEAR t31.
        CLEAR t30.
        t31 = t24.
        TRY.
            t23->source_value ?= t31.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t23->source_value IS NOT BOUND.
          TRY.
              t30 ?= t24.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t30 IS BOUND.
            t23->source_value = t30->source( ).
          ENDIF.
          IF t23->source_value IS NOT BOUND.
            CREATE OBJECT t23->source_value.
            t23->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t23->source_value->oval = t24.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t23.
      ENDIF.
      DATA t32 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t32.
      DATA t36 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t36.
      t36 = t12.
      DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2.
      t32 = t36->find_direct_expression( i_type_9913 = t38 )->get_first_token( ).
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t40.
      t40 = me->parse_method_definition( i_node = t7 i_visibility_5c1f = 3 ).
      DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t47.
      t47 = me->parse_attributes( i_node = t7 i_visibility_5c1f = 3 ).
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t54.
      t54 = me->parse_aliases( i_node = t7 i_visibility_5c1f = 3 ).
      DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t61.
      t61 = me->parse_constants( i_node = t7 i_visibility_5c1f = 3 ).
      DATA t67 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t67.
      DATA t69 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t69.
      t69 = t12.
      DATA(t71) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
      t67 = t69->find_direct_expression( i_type_9913 = t71 ).
      DATA t73 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      CLEAR t73.
      DATA(t74) = VALUE string( ).
      t74 = t32->str.
      DATA t80 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t80.
      DATA(t83) = CONV string( me->filename ).
      t80 = NEW zcl_lnt_fi_identifier( i_token = t32 i_filename = t83 ).
      DATA t84 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t84.
      DATA(t87) = VALUE abap_bool( ).
      DATA t90 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t90.
      CLEAR t90.
      t87 = xsdbool( t67 IS INITIAL ).
      DATA(t94) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t94->has = abap_true.
      t94->value = t87.
      t84 = t94.
      DATA t102 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t102.
      CLEAR t102.
      DATA(t104) = VALUE abap_bool( ).
      t104 = xsdbool( xsdbool( t67 IS INITIAL ) = abap_false ).
      DATA(t107) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t107->has = abap_true.
      t107->value = t104.
      t73 = NEW zcl_lnt_inf_intrfc_dfntn( i_name = t74 i_identifier = t80 i_is_local = t84 i_is_global = t107 i_interfaces = me->get_implementing( i_input_967e = t7 ) i_methods = t40 i_aliases_acc1 = t54 i_constants = t61 i_attributes = t47 ).
      CREATE OBJECT t73->zlnt_view_ownkeys_b0e8086400eb.
      t73->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t120.
      t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t120 ).
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t121.
      IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `identifier` p1 = t121 ).
      ENDIF.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isLocal` p1 = t122 ).
      ENDIF.
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t123.
      IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isGlobal` p1 = t123 ).
      ENDIF.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t124.
      IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `interfaces` p1 = t124 ).
      ENDIF.
      DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t125.
      IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `aliases` p1 = t125 ).
      ENDIF.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t126.
      IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `methods` p1 = t126 ).
      ENDIF.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t127.
      IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `constants` p1 = t127 ).
      ENDIF.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t128.
      IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `attributes` p1 = t128 ).
      ENDIF.
      CREATE OBJECT t73->zlnt_json_ownkeys_70e5fd461788.
      t73->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t130.
      t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t130 ).
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t132.
      IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = |identifier| p1 = t132 ).
      ENDIF.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t134.
      IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isLocal| p1 = t134 ).
      ENDIF.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isGlobal| p1 = t136 ).
      ENDIF.
      DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t138.
      IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = |interfaces| p1 = t138 ).
      ENDIF.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = |aliases| p1 = t140 ).
      ENDIF.
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t142.
      IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = |methods| p1 = t142 ).
      ENDIF.
      DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t144.
      IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = |constants| p1 = t144 ).
      ENDIF.
      DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t146.
      IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = |attributes| p1 = t146 ).
      ENDIF.
      t2->load( ).
      APPEND t73 TO t2->items.
      t2->save( ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD parse_classes.
    DATA(t1) = i_structure.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e.
    t4 = t1->find_all_structures( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t4->load( ).
      IF t9 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t4->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      DATA t16 TYPE REF TO zcl_lnt_statement_node.
      DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d411_59ccb35321de.
      t16 = t7->find_first_statement( i_type_9913 = t19 ).
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t12 = t16->find_first_expression( i_type_9913 = t20 )->get_first_token( ).
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d716_74fc3af0c6d3.
      t21 = me->parse_method_definition( i_node = t7->find_first_structure( i_type_9913 = t25 ) i_visibility_5c1f = 3 ).
      DATA(t27) = VALUE i( ).
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d717_78ede11c0134.
      t28 = me->parse_method_definition( i_node = t7->find_first_structure( i_type_9913 = t31 ) i_visibility_5c1f = 2 ).
      DATA t33 TYPE REF TO zcl_lnt_info_method_definition.
      CLEAR t33.
      DATA t34 TYPE REF TO object.
      CLEAR t34.
      DATA(t35) = VALUE i( ).
      DO.
        t28->load( ).
        IF t35 >= lines( t28->items ).
          EXIT.
        ENDIF.
        CLEAR t34.
        READ TABLE t28->items INDEX t35 + 1 INTO t34.
        t35 = t35 + 1.
        DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t36.
        CLEAR t33.
        IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t36 ?= t34.
          DATA t37 TYPE REF TO object.
          t37 = t36->as_ref( ).
          t33 ?= t37.
        ELSE.
          t33 ?= t34.
        ENDIF.
        t21->load( ).
        APPEND t33 TO t21->items.
        t21->save( ).
      ENDDO.
      t21->load( ).
      t27 = lines( t21->items ).
      DATA(t42) = VALUE i( ).
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d718_3ac015f16676.
      t43 = me->parse_method_definition( i_node = t7->find_first_structure( i_type_9913 = t46 ) i_visibility_5c1f = 1 ).
      DATA t48 TYPE REF TO zcl_lnt_info_method_definition.
      CLEAR t48.
      DATA t49 TYPE REF TO object.
      CLEAR t49.
      DATA(t50) = VALUE i( ).
      DO.
        t43->load( ).
        IF t50 >= lines( t43->items ).
          EXIT.
        ENDIF.
        CLEAR t49.
        READ TABLE t43->items INDEX t50 + 1 INTO t49.
        t50 = t50 + 1.
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t51.
        CLEAR t48.
        IF t49 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t51 ?= t49.
          DATA t52 TYPE REF TO object.
          t52 = t51->as_ref( ).
          t48 ?= t52.
        ELSE.
          t48 ?= t49.
        ENDIF.
        t21->load( ).
        APPEND t48 TO t21->items.
        t21->save( ).
      ENDDO.
      t21->load( ).
      t42 = lines( t21->items ).
      DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d716_74fc3af0c6d3.
      t57 = me->parse_attributes( i_node = t7->find_first_structure( i_type_9913 = t61 ) i_visibility_5c1f = 3 ).
      DATA(t63) = VALUE i( ).
      DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d717_78ede11c0134.
      t64 = me->parse_attributes( i_node = t7->find_first_structure( i_type_9913 = t67 ) i_visibility_5c1f = 2 ).
      DATA t69 TYPE REF TO zcl_lnt_info_attribute.
      CLEAR t69.
      DATA t70 TYPE REF TO object.
      CLEAR t70.
      DATA(t71) = VALUE i( ).
      DO.
        t64->load( ).
        IF t71 >= lines( t64->items ).
          EXIT.
        ENDIF.
        CLEAR t70.
        READ TABLE t64->items INDEX t71 + 1 INTO t70.
        t71 = t71 + 1.
        DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t72.
        CLEAR t69.
        IF t70 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t72 ?= t70.
          DATA t73 TYPE REF TO object.
          t73 = t72->as_ref( ).
          t69 ?= t73.
        ELSE.
          t69 ?= t70.
        ENDIF.
        t57->load( ).
        APPEND t69 TO t57->items.
        t57->save( ).
      ENDDO.
      t57->load( ).
      t63 = lines( t57->items ).
      DATA(t78) = VALUE i( ).
      DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t82) = zlnt_runtime_desc_78196487750d=>zlnt_member_d718_3ac015f16676.
      t79 = me->parse_attributes( i_node = t7->find_first_structure( i_type_9913 = t82 ) i_visibility_5c1f = 1 ).
      DATA t84 TYPE REF TO zcl_lnt_info_attribute.
      CLEAR t84.
      DATA t85 TYPE REF TO object.
      CLEAR t85.
      DATA(t86) = VALUE i( ).
      DO.
        t79->load( ).
        IF t86 >= lines( t79->items ).
          EXIT.
        ENDIF.
        CLEAR t85.
        READ TABLE t79->items INDEX t86 + 1 INTO t85.
        t86 = t86 + 1.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        CLEAR t84.
        IF t85 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t87 ?= t85.
          DATA t88 TYPE REF TO object.
          t88 = t87->as_ref( ).
          t84 ?= t88.
        ELSE.
          t84 ?= t85.
        ENDIF.
        t57->load( ).
        APPEND t84 TO t57->items.
        t57->save( ).
      ENDDO.
      t57->load( ).
      t78 = lines( t57->items ).
      DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d716_74fc3af0c6d3.
      t93 = me->parse_aliases( i_node = t7->find_first_structure( i_type_9913 = t97 ) i_visibility_5c1f = 3 ).
      DATA(t99) = VALUE i( ).
      DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t103) = zlnt_runtime_desc_78196487750d=>zlnt_member_d717_78ede11c0134.
      t100 = me->parse_aliases( i_node = t7->find_first_structure( i_type_9913 = t103 ) i_visibility_5c1f = 2 ).
      DATA t105 TYPE REF TO zcl_lnt_info_alias.
      CLEAR t105.
      DATA t106 TYPE REF TO object.
      CLEAR t106.
      DATA(t107) = VALUE i( ).
      DO.
        t100->load( ).
        IF t107 >= lines( t100->items ).
          EXIT.
        ENDIF.
        CLEAR t106.
        READ TABLE t100->items INDEX t107 + 1 INTO t106.
        t107 = t107 + 1.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        CLEAR t105.
        IF t106 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t108 ?= t106.
          DATA t109 TYPE REF TO object.
          t109 = t108->as_ref( ).
          t105 ?= t109.
        ELSE.
          t105 ?= t106.
        ENDIF.
        t93->load( ).
        APPEND t105 TO t93->items.
        t93->save( ).
      ENDDO.
      t93->load( ).
      t99 = lines( t93->items ).
      DATA(t114) = VALUE i( ).
      DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t118) = zlnt_runtime_desc_78196487750d=>zlnt_member_d718_3ac015f16676.
      t115 = me->parse_aliases( i_node = t7->find_first_structure( i_type_9913 = t118 ) i_visibility_5c1f = 1 ).
      DATA t120 TYPE REF TO zcl_lnt_info_alias.
      CLEAR t120.
      DATA t121 TYPE REF TO object.
      CLEAR t121.
      DATA(t122) = VALUE i( ).
      DO.
        t115->load( ).
        IF t122 >= lines( t115->items ).
          EXIT.
        ENDIF.
        CLEAR t121.
        READ TABLE t115->items INDEX t122 + 1 INTO t121.
        t122 = t122 + 1.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        CLEAR t120.
        IF t121 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t123 ?= t121.
          DATA t124 TYPE REF TO object.
          t124 = t123->as_ref( ).
          t120 ?= t124.
        ELSE.
          t120 ?= t121.
        ENDIF.
        t93->load( ).
        APPEND t120 TO t93->items.
        t93->save( ).
      ENDDO.
      t93->load( ).
      t114 = lines( t93->items ).
      DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t133) = zlnt_runtime_desc_78196487750d=>zlnt_member_d716_74fc3af0c6d3.
      t129 = me->parse_constants( i_node = t7->find_first_structure( i_type_9913 = t133 ) i_visibility_5c1f = 3 ).
      DATA(t135) = VALUE i( ).
      DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t139) = zlnt_runtime_desc_78196487750d=>zlnt_member_d717_78ede11c0134.
      t136 = me->parse_constants( i_node = t7->find_first_structure( i_type_9913 = t139 ) i_visibility_5c1f = 2 ).
      DATA t141 TYPE REF TO zcl_lnt_info_constant.
      CLEAR t141.
      DATA t142 TYPE REF TO object.
      CLEAR t142.
      DATA(t143) = VALUE i( ).
      DO.
        t136->load( ).
        IF t143 >= lines( t136->items ).
          EXIT.
        ENDIF.
        CLEAR t142.
        READ TABLE t136->items INDEX t143 + 1 INTO t142.
        t143 = t143 + 1.
        DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t144.
        CLEAR t141.
        IF t142 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t144 ?= t142.
          DATA t145 TYPE REF TO object.
          t145 = t144->as_ref( ).
          t141 ?= t145.
        ELSE.
          t141 ?= t142.
        ENDIF.
        t129->load( ).
        APPEND t141 TO t129->items.
        t129->save( ).
      ENDDO.
      t129->load( ).
      t135 = lines( t129->items ).
      DATA(t150) = VALUE i( ).
      DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t154) = zlnt_runtime_desc_78196487750d=>zlnt_member_d718_3ac015f16676.
      t151 = me->parse_constants( i_node = t7->find_first_structure( i_type_9913 = t154 ) i_visibility_5c1f = 1 ).
      DATA t156 TYPE REF TO zcl_lnt_info_constant.
      CLEAR t156.
      DATA t157 TYPE REF TO object.
      CLEAR t157.
      DATA(t158) = VALUE i( ).
      DO.
        t151->load( ).
        IF t158 >= lines( t151->items ).
          EXIT.
        ENDIF.
        CLEAR t157.
        READ TABLE t151->items INDEX t158 + 1 INTO t157.
        t158 = t158 + 1.
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        CLEAR t156.
        IF t157 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t159 ?= t157.
          DATA t160 TYPE REF TO object.
          t160 = t159->as_ref( ).
          t156 ?= t160.
        ELSE.
          t156 ?= t157.
        ENDIF.
        t129->load( ).
        APPEND t156 TO t129->items.
        t129->save( ).
      ENDDO.
      t129->load( ).
      t150 = lines( t129->items ).
      DATA t167 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t167.
      DATA t169 TYPE REF TO zcl_lnt_expression_node.
      DATA(t172) = zlnt_runtime_desc_78196487750d=>zlnt_member_d348_ba08da875831.
      t169 = t7->find_first_expression( i_type_9913 = t172 ).
      DATA t173 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t173.
      IF xsdbool( t169 IS INITIAL ) = abap_true.
        CLEAR t173.
      ELSE.
        t173 = t169->get_first_token( ).
      ENDIF.
      t167 = t173.
      DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t180.
      IF xsdbool( t167 IS INITIAL ) = abap_true.
        CLEAR t180.
      ELSE.
        DATA t188 TYPE string.
        t188 = t167->str.
        DATA(t190) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t190->has = abap_true.
        t190->value = t188.
        t180 = t190.
      ENDIF.
      DATA t191 TYPE REF TO zcl_lnt_expression_node.
      DATA(t194) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
      t191 = t7->find_first_expression( i_type_9913 = t194 ).
      DATA t195 TYPE REF TO zcl_lnt_statement_node.
      DATA(t198) = zlnt_runtime_desc_78196487750d=>zlnt_member_d411_59ccb35321de.
      t195 = t7->find_first_statement( i_type_9913 = t198 ).
      DATA(t199) = VALUE string( ).
      DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t201.
      DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t203.
      DATA t205 TYPE REF TO zcl_lnt_statement_node.
      t205 = t195.
      DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t207.
      IF xsdbool( t205 IS INITIAL ) = abap_true.
        CLEAR t207.
      ELSE.
        DATA t211 TYPE string.
        t211 = t205->concat_tokens( ).
        DATA(t214) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t214->has = abap_true.
        t214->value = t211.
        t207 = t214.
      ENDIF.
      t203 = t207.
      DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t215.
      DATA(t216) = VALUE abap_bool( ).
      IF t203 IS INITIAL.
        t216 = abap_true.
      ELSEIF t203->has = abap_false.
        t216 = abap_true.
      ENDIF.
      IF t216 = abap_true.
        CLEAR t215.
      ELSE.
        DATA t219 TYPE string.
        DATA t220 TYPE string.
        t220 = t203->value.
        DATA(t222) = strlen( t220 ).
        t219 = t220.
        IF t219 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t219 TO UPPER CASE.
        ELSE.
          t219 = zlnt_runtime_uppe_91169605024d=>full( t219 ).
        ENDIF.
        DATA(t223) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t223->has = abap_true.
        t223->value = t219.
        t215 = t223.
      ENDIF.
      t201 = t215.
      DATA(t224) = VALUE string( ).
      DATA(t225) = VALUE abap_bool( ).
      IF t201 IS BOUND.
        IF t201->has = abap_true.
          t225 = xsdbool( strlen( t201->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t225 = abap_true.
        t224 = t201->value.
      ELSE.
        t224 = ||.
      ENDIF.
      t199 = t224.
      DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t230.
      DATA(t232) = VALUE i( ).
      DATA(t234) = |RISK LEVEL CRITICAL|.
      DATA(t235) = strlen( t199 ).
      IF t234 IS INITIAL.
        t232 = 0.
      ELSE.
        FIND t234 IN t199 MATCH OFFSET t232.
        IF sy-subrc <> 0.
          t232 = -1.
        ENDIF.
      ENDIF.
      IF xsdbool( t232 >= 0 ) = abap_true.
        DATA(t240) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t240->has = abap_true.
        t240->value = |CRITICAL|.
        t230 = t240.
      ELSE.
        DATA(t243) = VALUE i( ).
        DATA(t245) = |RISK LEVEL DANGEROUS|.
        DATA(t246) = strlen( t199 ).
        IF t245 IS INITIAL.
          t243 = 0.
        ELSE.
          FIND t245 IN t199 MATCH OFFSET t243.
          IF sy-subrc <> 0.
            t243 = -1.
          ENDIF.
        ENDIF.
        IF xsdbool( t243 >= 0 ) = abap_true.
          DATA(t251) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t251->has = abap_true.
          t251->value = |DANGEROUS|.
          t230 = t251.
        ELSE.
          DATA(t254) = VALUE i( ).
          DATA(t256) = |RISK LEVEL HARMLESS|.
          DATA(t257) = strlen( t199 ).
          IF t256 IS INITIAL.
            t254 = 0.
          ELSE.
            FIND t256 IN t199 MATCH OFFSET t254.
            IF sy-subrc <> 0.
              t254 = -1.
            ENDIF.
          ENDIF.
          IF xsdbool( t254 >= 0 ) = abap_true.
            DATA(t262) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t262->has = abap_true.
            t262->value = |HARMLESS|.
            t230 = t262.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t264.
      DATA(t266) = VALUE i( ).
      DATA(t268) = |DURATION SHORT|.
      DATA(t269) = strlen( t199 ).
      IF t268 IS INITIAL.
        t266 = 0.
      ELSE.
        FIND t268 IN t199 MATCH OFFSET t266.
        IF sy-subrc <> 0.
          t266 = -1.
        ENDIF.
      ENDIF.
      IF xsdbool( t266 >= 0 ) = abap_true.
        DATA(t274) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t274->has = abap_true.
        t274->value = |SHORT|.
        t264 = t274.
      ELSE.
        DATA(t277) = VALUE i( ).
        DATA(t279) = |DURATION LONG|.
        DATA(t280) = strlen( t199 ).
        IF t279 IS INITIAL.
          t277 = 0.
        ELSE.
          FIND t279 IN t199 MATCH OFFSET t277.
          IF sy-subrc <> 0.
            t277 = -1.
          ENDIF.
        ENDIF.
        IF xsdbool( t277 >= 0 ) = abap_true.
          DATA(t285) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t285->has = abap_true.
          t285->value = |LONG|.
          t264 = t285.
        ELSE.
          DATA(t288) = VALUE i( ).
          DATA(t290) = |DURATION MEDIUM|.
          DATA(t291) = strlen( t199 ).
          IF t290 IS INITIAL.
            t288 = 0.
          ELSE.
            FIND t290 IN t199 MATCH OFFSET t288.
            IF sy-subrc <> 0.
              t288 = -1.
            ENDIF.
          ENDIF.
          IF xsdbool( t288 >= 0 ) = abap_true.
            DATA(t296) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t296->has = abap_true.
            t296->value = |MEDIUM|.
            t264 = t296.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t299 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t299.
      DATA t300 TYPE string.
      t300 = t12->str.
      DATA t306 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t309) = CONV string( me->filename ).
      t306 = NEW zcl_lnt_fi_identifier( i_token = t12 i_filename = t309 ).
      DATA t310 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t310.
      DATA(t313) = VALUE abap_bool( ).
      DATA t316 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t316.
      t313 = xsdbool( t191 IS INITIAL ).
      DATA(t320) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t320->has = abap_true.
      t320->value = t313.
      t310 = t320.
      DATA t322 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t322.
      DATA t328 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t328.
      DATA(t330) = VALUE abap_bool( ).
      t330 = xsdbool( xsdbool( t191 IS INITIAL ) = abap_false ).
      DATA(t333) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t333->has = abap_true.
      t333->value = t330.
      t322 = t333.
      DATA t335 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t335 = t21.
      DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t337 = t180.
      DATA t339 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t339 = me->get_implementing( i_input_967e = t7 ).
      DATA t342 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t342.
      DATA(t345) = VALUE abap_bool( ).
      DATA(t346) = VALUE i( ).
      DATA(t348) = | FOR TESTING|.
      DATA(t349) = strlen( t199 ).
      IF t348 IS INITIAL.
        t346 = 0.
      ELSE.
        FIND t348 IN t199 MATCH OFFSET t346.
        IF sy-subrc <> 0.
          t346 = -1.
        ENDIF.
      ENDIF.
      t345 = xsdbool( t346 >= 0 ).
      DATA(t351) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t351->has = abap_true.
      t351->value = t345.
      t342 = t351.
      DATA t353 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t353 = t264.
      DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t355 = t230.
      DATA t357 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t357.
      DATA t363 TYPE REF TO zcl_lnt_statement_node.
      t363 = t195.
      DATA t365 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t365.
      IF xsdbool( t363 IS INITIAL ) = abap_true.
        CLEAR t365.
      ELSE.
        t365 = t363->find_direct_token_by_text( i_text = |ABSTRACT| ).
      ENDIF.
      DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t373.
      DATA(t375) = VALUE abap_bool( ).
      t375 = xsdbool( xsdbool( t365 IS INITIAL ) = abap_false ).
      DATA(t378) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t378->has = abap_true.
      t378->value = t375.
      t357 = t378.
      DATA(t380) = VALUE abap_bool( ).
      DATA(t382) = VALUE i( ).
      DATA(t384) = | SHARED MEMORY ENABLED|.
      DATA(t385) = strlen( t199 ).
      IF t384 IS INITIAL.
        t382 = 0.
      ELSE.
        FIND t384 IN t199 MATCH OFFSET t382.
        IF sy-subrc <> 0.
          t382 = -1.
        ENDIF.
      ENDIF.
      t380 = xsdbool( t382 >= 0 ).
      DATA t387 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t387 = me->find_behavior_definition_name( i_cdef = t195 ).
      DATA t393 TYPE REF TO zcl_lnt_expression_node.
      DATA(t395) = zlnt_runtime_desc_78196487750d=>zlnt_member_d115_e681bc20f5c0.
      t393 = t7->find_first_expression( i_type_9913 = t395 ).
      DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t396.
      t299 = NEW zcl_lnt_info_class_definition( i_name = t300 i_identifier = t306 i_is_local = t310 i_is_global = t322 i_methods = t335 i_aliases_acc1 = t93 i_constants = t129 i_attributes = t57 i_super_class_name = t337 i_is_abstract =
      t357 i_is_final = xsdbool( xsdbool( t393 IS INITIAL ) = abap_false ) i_interfaces = t339 i_is_for_testing = t342 i_duration = t353 i_risk_level = t355 i_is_shared_memory = t380 i_behavior_definition_name = t387 ).
      CREATE OBJECT t299->zlnt_view_ownkeys_b0e8086400eb.
      t299->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t407.
      t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t407 ).
      DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t408.
      IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `identifier` p1 = t408 ).
      ENDIF.
      DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t409.
      IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isLocal` p1 = t409 ).
      ENDIF.
      DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t410.
      IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isGlobal` p1 = t410 ).
      ENDIF.
      DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t411.
      IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `methods` p1 = t411 ).
      ENDIF.
      DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t412.
      IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `superClassName` p1 = t412 ).
      ENDIF.
      DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t413.
      IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `interfaces` p1 = t413 ).
      ENDIF.
      DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t414.
      IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isForTesting` p1 = t414 ).
      ENDIF.
      DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t415.
      IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `duration` p1 = t415 ).
      ENDIF.
      DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t416.
      IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `riskLevel` p1 = t416 ).
      ENDIF.
      DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t417.
      IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isAbstract` p1 = t417 ).
      ENDIF.
      DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t418.
      IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isSharedMemory` p1 = t418 ).
      ENDIF.
      DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t419.
      IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `behaviorDefinitionName` p1 = t419 ).
      ENDIF.
      DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t420.
      IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isFinal` p1 = t420 ).
      ENDIF.
      DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t421.
      IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `aliases` p1 = t421 ).
      ENDIF.
      DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t422.
      IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `attributes` p1 = t422 ).
      ENDIF.
      DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t423.
      IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `constants` p1 = t423 ).
      ENDIF.
      CREATE OBJECT t299->zlnt_json_ownkeys_70e5fd461788.
      t299->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t425.
      t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t425 ).
      DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t427.
      IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |identifier| p1 = t427 ).
      ENDIF.
      DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t429.
      IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isLocal| p1 = t429 ).
      ENDIF.
      DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t431.
      IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isGlobal| p1 = t431 ).
      ENDIF.
      DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t433.
      IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |methods| p1 = t433 ).
      ENDIF.
      DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t435.
      IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |superClassName| p1 = t435 ).
      ENDIF.
      DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t437.
      IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |interfaces| p1 = t437 ).
      ENDIF.
      DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t439.
      IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isForTesting| p1 = t439 ).
      ENDIF.
      DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t441.
      IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |duration| p1 = t441 ).
      ENDIF.
      DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t443.
      IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |riskLevel| p1 = t443 ).
      ENDIF.
      DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t445.
      IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isAbstract| p1 = t445 ).
      ENDIF.
      DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t447.
      IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isSharedMemory| p1 = t447 ).
      ENDIF.
      DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t449.
      IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |behaviorDefinitionName| p1 = t449 ).
      ENDIF.
      DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t451.
      IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isFinal| p1 = t451 ).
      ENDIF.
      DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t453.
      IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |aliases| p1 = t453 ).
      ENDIF.
      DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t455.
      IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |attributes| p1 = t455 ).
      ENDIF.
      DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t457.
      IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |constants| p1 = t457 ).
      ENDIF.
      t2->load( ).
      APPEND t299 TO t2->items.
      t2->save( ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_behavior_definition_name.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_statement_node.
    t6 = i_cdef.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t14 TYPE REF TO zcl_lnt_abstract_node.
      t14 = t6.
      t13 = t14->children.
      t12 ?= t13.
      t8 = t12.
    ENDIF.
    t4 = t8.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t4 IS BOUND ) = abap_true.
      t19 = t4.
    ELSE.
      CREATE OBJECT t19.
    ENDIF.
    t2 = t19.
    DATA t25 TYPE i.
    t25 = 2.
    DO.
      t2->load( ).
      IF xsdbool( t25 < lines( t2->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t31 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t31.
      DATA t32 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t32.
      DATA(t34) = t25.
      t34 = t34 + 1.
      DATA t35 TYPE REF TO object.
      CLEAR t35.
      t2->load( ).
      CLEAR t35.
      READ TABLE t2->items INDEX t34 INTO t35.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      CLEAR t32.
      IF t35 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t36 ?= t35.
        DATA t37 TYPE REF TO object.
        t37 = t36->as_ref( ).
        t32 ?= t37.
      ELSE.
        t32 ?= t35.
      ENDIF.
      t31 = t32.
      DATA(t38) = VALUE abap_bool( ).
      DATA t39 TYPE abap_bool.
      DATA t40 TYPE abap_bool.
      t40 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_expression_node ).
      t39 = t40.
      IF t40 = abap_true.
        DATA t43 TYPE REF TO zif_lnt_statement_runnable.
        DATA t44 TYPE REF TO zcl_lnt_expression_node.
        DATA t46 TYPE REF TO object.
        t46 = t31.
        t44 ?= t46.
        t43 = t44->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t39 = xsdbool( t43 IS BOUND AND t43 IS INSTANCE OF zcl_lnt_bhvr_dfntn_nm ).
      ENDIF.
      t38 = t39.
      IF t39 = abap_true.
        DATA(t48) = VALUE string( ).
        DATA(t49) = VALUE string( ).
        DATA t50 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t50.
        DATA t52 TYPE i.
        DATA(t54) = 2.
        t52 = t25 - t54.
        t52 = t52 + 1.
        DATA t55 TYPE REF TO object.
        CLEAR t55.
        t2->load( ).
        CLEAR t55.
        READ TABLE t2->items INDEX t52 INTO t55.
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t56.
        CLEAR t50.
        IF t55 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t56 ?= t55.
          DATA t57 TYPE REF TO object.
          t57 = t56->as_ref( ).
          t50 ?= t57.
        ELSE.
          t50 ?= t55.
        ENDIF.
        t49 = t50->concat_tokens( ).
        DATA(t58) = strlen( t49 ).
        t48 = t49.
        IF t48 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t48 TO UPPER CASE.
        ELSE.
          t48 = zlnt_runtime_uppe_91169605024d=>full( t48 ).
        ENDIF.
        t38 = xsdbool( t48 = |BEHAVIOR| ).
      ENDIF.
      IF t38 = abap_true.
        DATA t62 TYPE string.
        DATA t63 TYPE REF TO zcl_lnt_expression_node.
        DATA t65 TYPE REF TO object.
        t65 = t31.
        t63 ?= t65.
        t62 = t63->concat_tokens( ).
        DATA(t66) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t66->has = abap_true.
        t66->value = t62.
        result = t66.
        RETURN.
      ENDIF.
      DATA(t70) = 1.
      t25 = t25 + t70.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD get_implementing.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d540_b6420013e76a.
    t4 = t1->find_all_statements( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_statement_node.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t4->load( ).
      IF t9 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t4->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d89_8ce847e06100c3.
      t12 = t7->find_direct_expression( i_type_9913 = t15 ).
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t16.
      IF xsdbool( t12 IS BOUND ) = abap_true.
        DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t21 TYPE REF TO zcl_lnt_expression_node.
        t21 = t12.
        DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
        t20 = t21->find_direct_expressions( i_type_9913 = t23 ).
        DATA t24 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t24.
        DATA t25 TYPE REF TO object.
        CLEAR t25.
        DATA(t26) = VALUE i( ).
        DO.
          t20->load( ).
          IF t26 >= lines( t20->items ).
            EXIT.
          ENDIF.
          CLEAR t25.
          READ TABLE t20->items INDEX t26 + 1 INTO t25.
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
          DATA t30 TYPE string.
          DATA t31 TYPE string.
          t31 = t24->concat_tokens( ).
          DATA(t33) = strlen( t31 ).
          t30 = t31.
          IF t30 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t30 TO UPPER CASE.
          ELSE.
            t30 = zlnt_runtime_uppe_91169605024d=>full( t30 ).
          ENDIF.
          t16->load( ).
          APPEND t30 TO t16->items.
          t16->save( ).
        ENDDO.
      ENDIF.
      DATA t34 TYPE REF TO zcl_lnt_expression_node.
      DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d175_344bc5837b82.
      t34 = t7->find_direct_expression( i_type_9913 = t37 ).
      DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t38.
      IF xsdbool( t34 IS BOUND ) = abap_true.
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t43 TYPE REF TO zcl_lnt_expression_node.
        t43 = t34.
        DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
        t42 = t43->find_direct_expressions( i_type_9913 = t45 ).
        DATA t46 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t46.
        DATA t47 TYPE REF TO object.
        CLEAR t47.
        DATA(t48) = VALUE i( ).
        DO.
          t42->load( ).
          IF t48 >= lines( t42->items ).
            EXIT.
          ENDIF.
          CLEAR t47.
          READ TABLE t42->items INDEX t48 + 1 INTO t47.
          t48 = t48 + 1.
          DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t49.
          CLEAR t46.
          IF t47 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t49 ?= t47.
            DATA t50 TYPE REF TO object.
            t50 = t49->as_ref( ).
            t46 ?= t50.
          ELSE.
            t46 ?= t47.
          ENDIF.
          DATA t52 TYPE string.
          DATA t53 TYPE string.
          t53 = t46->concat_tokens( ).
          DATA(t55) = strlen( t53 ).
          t52 = t53.
          IF t52 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t52 TO UPPER CASE.
          ELSE.
            t52 = zlnt_runtime_uppe_91169605024d=>full( t52 ).
          ENDIF.
          t38->load( ).
          APPEND t52 TO t38->items.
          t38->save( ).
        ENDDO.
      ENDIF.
      DATA(t56) = VALUE string( ).
      DATA t57 TYPE string.
      DATA t58 TYPE string.
      t58 = t7->concat_tokens( ).
      DATA(t60) = strlen( t58 ).
      t57 = t58.
      IF t57 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t57 TO UPPER CASE.
      ELSE.
        t57 = zlnt_runtime_uppe_91169605024d=>full( t57 ).
      ENDIF.
      t56 = t57.
      DATA(t62) = VALUE abap_bool( ).
      DATA(t63) = VALUE i( ).
      DATA(t65) = | ALL METHODS ABSTRACT|.
      DATA(t66) = strlen( t56 ).
      IF t65 IS INITIAL.
        t63 = 0.
      ELSE.
        FIND t65 IN t56 MATCH OFFSET t63.
        IF sy-subrc <> 0.
          t63 = -1.
        ENDIF.
      ENDIF.
      t62 = xsdbool( t63 >= 0 ).
      DATA(t69) = VALUE abap_bool( ).
      DATA(t70) = VALUE i( ).
      DATA(t72) = | PARTIALLY IMPLEMENTED|.
      DATA(t73) = strlen( t56 ).
      IF t72 IS INITIAL.
        t70 = 0.
      ELSE.
        FIND t72 IN t56 MATCH OFFSET t70.
        IF sy-subrc <> 0.
          t70 = -1.
        ENDIF.
      ENDIF.
      t69 = xsdbool( t70 >= 0 ).
      DATA t76 TYPE string.
      DATA t77 TYPE string.
      DATA(t83) = zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2.
      t77 = t7->find_first_expression( i_type_9913 = t83 )->get_first_token( )->str.
      DATA(t86) = strlen( t77 ).
      t76 = t77.
      IF t76 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t76 TO UPPER CASE.
      ELSE.
        t76 = zlnt_runtime_uppe_91169605024d=>full( t76 ).
      ENDIF.
      DATA t88 TYPE REF TO zcl_lnt_info_implementing.
      t88 = NEW zcl_lnt_info_implementing( i_name = t76 i_partial = t69 i_all_abstract = t62 i_abstract_methods = t16 i_final_methods = t38 ).
      CREATE OBJECT t88->zlnt_view_ownkeys_b0e8086400eb.
      t88->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t99 ).
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t100.
      IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `partial` p1 = t100 ).
      ENDIF.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t101.
      IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `allAbstract` p1 = t101 ).
      ENDIF.
      DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t102.
      IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abstractMethods` p1 = t102 ).
      ENDIF.
      DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t103.
      IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `finalMethods` p1 = t103 ).
      ENDIF.
      CREATE OBJECT t88->zlnt_json_ownkeys_70e5fd461788.
      t88->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t105.
      t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t105 ).
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = |partial| p1 = t107 ).
      ENDIF.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t109.
      IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = |allAbstract| p1 = t109 ).
      ENDIF.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t111.
      IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = |abstractMethods| p1 = t111 ).
      ENDIF.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t113.
      IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = |finalMethods| p1 = t113 ).
      ENDIF.
      t2->load( ).
      APPEND t88 TO t2->items.
      t2->save( ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD parse_aliases.
    DATA(t1) = i_node.
    DATA(t2) = i_visibility_5c1f.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t11.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zcl_lnt_structure_node.
    t14 = t1.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d372_d91a525944ce.
    t13 = t14->find_all_statements( i_type_9913 = t16 ).
    DATA t17 TYPE REF TO zcl_lnt_statement_node.
    DATA t18 TYPE REF TO object.
    DATA(t19) = VALUE i( ).
    DO.
      t13->load( ).
      IF t19 >= lines( t13->items ).
        EXIT.
      ENDIF.
      CLEAR t18.
      READ TABLE t13->items INDEX t19 + 1 INTO t18.
      t19 = t19 + 1.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      CLEAR t17.
      IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t20 ?= t18.
        DATA t21 TYPE REF TO object.
        t21 = t20->as_ref( ).
        t17 ?= t21.
      ELSE.
        t17 ?= t18.
      ENDIF.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
      t22 = t17->find_first_expression( i_type_9913 = t27 )->get_first_token( ).
      DATA t29 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
      t29 = t17->find_first_expression( i_type_9913 = t33 )->get_first_token( ).
      DATA t35 TYPE REF TO zcl_lnt_info_alias.
      DATA t36 TYPE string.
      t36 = t22->str.
      DATA t42 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t45) = CONV string( me->filename ).
      t42 = NEW zcl_lnt_fi_identifier( i_token = t22 i_filename = t45 ).
      DATA t46 TYPE f.
      DATA t47 TYPE f.
      t47 = t2.
      t46 = t47.
      DATA t53 TYPE string.
      t53 = t29->str.
      t35 = NEW zcl_lnt_info_alias( i_name = t36 i_identifier = t42 i_visibility_5c1f = t46 i_component = t53 ).
      CREATE OBJECT t35->zlnt_view_ownkeys_b0e8086400eb.
      t35->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t55 ).
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t56.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `identifier` p1 = t56 ).
      ENDIF.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `visibility` p1 = t57 ).
      ENDIF.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t58.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `component` p1 = t58 ).
      ENDIF.
      CREATE OBJECT t35->zlnt_json_ownkeys_70e5fd461788.
      t35->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t60.
      t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t60 ).
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |identifier| p1 = t62 ).
      ENDIF.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t64.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |visibility| p1 = t64 ).
      ENDIF.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |component| p1 = t66 ).
      ENDIF.
      t11->load( ).
      APPEND t35 TO t11->items.
      t11->save( ).
    ENDDO.
    result = t11.

  ENDMETHOD.

  METHOD parse_constants.
    DATA(t1) = i_node.
    DATA(t2) = i_visibility_5c1f.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t11.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zcl_lnt_structure_node.
    t14 = t1.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d426_fb8ad08dadf9.
    t13 = t14->find_all_statements( i_type_9913 = t16 ).
    DATA t17 TYPE REF TO zcl_lnt_statement_node.
    DATA t18 TYPE REF TO object.
    DATA(t19) = VALUE i( ).
    DO.
      t13->load( ).
      IF t19 >= lines( t13->items ).
        EXIT.
      ENDIF.
      CLEAR t18.
      READ TABLE t13->items INDEX t19 + 1 INTO t18.
      t19 = t19 + 1.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      CLEAR t17.
      IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t20 ?= t18.
        DATA t21 TYPE REF TO object.
        t21 = t20->as_ref( ).
        t17 ?= t21.
      ELSE.
        t17 ?= t18.
      ENDIF.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
      t22 = t17->find_first_expression( i_type_9913 = t27 )->get_first_token( ).
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
      t28 = t17->find_first_expression( i_type_9913 = t31 ).
      DATA(t32) = VALUE string( ).
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      DATA t36 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t36.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t38.
      DATA t40 TYPE REF TO zcl_lnt_expression_node.
      DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d150_582536089a5b.
      t40 = t17->find_first_expression( i_type_9913 = t43 ).
      DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t44.
      IF xsdbool( t40 IS INITIAL ) = abap_true.
        CLEAR t44.
      ELSE.
        t44 = t40->get_tokens( ).
      ENDIF.
      t38 = t44.
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t51.
      IF xsdbool( t38 IS INITIAL ) = abap_true.
        CLEAR t51.
      ELSE.
        DATA t55 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t55.
        DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t56 = t38.
        DATA t58 TYPE REF TO object.
        CLEAR t58.
        t56->load( ).
        CLEAR t58.
        READ TABLE t56->items INDEX 2 INTO t58.
        DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t59.
        CLEAR t55.
        IF t58 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t59 ?= t58.
          DATA t60 TYPE REF TO object.
          t60 = t59->as_ref( ).
          t55 ?= t60.
        ELSE.
          t55 ?= t58.
        ENDIF.
        t51 = t55.
      ENDIF.
      t36 = t51.
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t61.
      IF xsdbool( t36 IS INITIAL ) = abap_true.
        CLEAR t61.
      ELSE.
        DATA t69 TYPE string.
        t69 = t36->str.
        DATA(t71) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t71->has = abap_true.
        t71->value = t69.
        t61 = t71.
      ENDIF.
      t34 = t61.
      DATA(t72) = VALUE string( ).
      DATA(t73) = VALUE abap_bool( ).
      IF t34 IS INITIAL.
        t73 = abap_true.
      ELSEIF t34->has = abap_false.
        t73 = abap_true.
      ENDIF.
      IF t73 = abap_true.
        t72 = |``|.
      ELSE.
        t72 = t34->value.
      ENDIF.
      t32 = t72.
      DATA t80 TYPE string.
      t80 = t32.
      DATA(t82) = VALUE string( ).
      DATA(t84) = 1.
      DATA t85 TYPE i.
      DATA t86 TYPE i.
      t86 = strlen( t32 ).
      DATA(t89) = 1.
      t85 = t86 - t89.
      DATA(t90) = strlen( t80 ).
      IF t84 < 0.
        t84 = t90 + t84.
      ENDIF.
      t84 = COND i( WHEN t84 < 0 THEN 0 WHEN t84 > t90 THEN t90 ELSE t84 ).
      IF t85 < 0.
        t85 = t90 + t85.
      ENDIF.
      t85 = COND i( WHEN t85 < 0 THEN 0 WHEN t85 > t90 THEN t90 ELSE t85 ).
      IF t85 > t84.
        t90 = t85 - t84.
        t82 = t80+t84(t90).
      ELSE.
        CLEAR t82.
      ENDIF.
      DATA t92 TYPE REF TO zcl_lnt_info_constant.
      CLEAR t92.
      DATA t93 TYPE string.
      t93 = t22->str.
      DATA(t99) = VALUE string( ).
      DATA(t100) = VALUE string( ).
      IF xsdbool( t28 IS BOUND ) = abap_true.
        t100 = t28->get_first_token( )->str.
      ELSE.
        t100 = ||.
      ENDIF.
      t99 = t100.
      DATA t111 TYPE string.
      t111 = t82.
      DATA t113 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t116) = CONV string( me->filename ).
      t113 = NEW zcl_lnt_fi_identifier( i_token = t22 i_filename = t116 ).
      DATA t118 TYPE f.
      t118 = t2.
      t92 = NEW zcl_lnt_info_constant( i_identifier = t113 i_name = t93 i_type_name = t99 i_visibility_5c1f = t118 i_value = t111 ).
      CREATE OBJECT t92->zlnt_view_ownkeys_b0e8086400eb.
      t92->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t120.
      t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t120 ).
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t121.
      IF t92->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `typeName` p1 = t121 ).
      ENDIF.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      IF t92->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t122 ).
      ENDIF.
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t123.
      IF t92->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `identifier` p1 = t123 ).
      ENDIF.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t124.
      IF t92->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `visibility` p1 = t124 ).
      ENDIF.
      CREATE OBJECT t92->zlnt_json_ownkeys_70e5fd461788.
      t92->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t126.
      t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t126 ).
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t128.
      IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = |typeName| p1 = t128 ).
      ENDIF.
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t130.
      IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t130 ).
      ENDIF.
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t132.
      IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = |identifier| p1 = t132 ).
      ENDIF.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t134.
      IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = |visibility| p1 = t134 ).
      ENDIF.
      t11->load( ).
      APPEND t92 TO t11->items.
      t11->save( ).
    ENDDO.
    result = t11.

  ENDMETHOD.

  METHOD parse_attributes.
    DATA(t1) = i_node.
    DATA(t2) = i_visibility_5c1f.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA t13 TYPE REF TO zcl_lnt_structure_node.
    t13 = t1.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d739_c2cc9ae0214e.
    t11 = t13->find_first_structure( i_type_9913 = t15 ).
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t11 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zcl_lnt_structure_node.
    t27 = t11.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d437_1e504b4be960.
    t26 = t27->find_direct_statements( i_type_9913 = t29 ).
    DATA t30 TYPE REF TO zcl_lnt_statement_node.
    DATA t31 TYPE REF TO object.
    DATA(t32) = VALUE i( ).
    DO.
      t26->load( ).
      IF t32 >= lines( t26->items ).
        EXIT.
      ENDIF.
      CLEAR t31.
      READ TABLE t26->items INDEX t32 + 1 INTO t31.
      t32 = t32 + 1.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      CLEAR t30.
      IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t33 ?= t31.
        DATA t34 TYPE REF TO object.
        t34 = t33->as_ref( ).
        t30 ?= t34.
      ELSE.
        t30 ?= t31.
      ENDIF.
      DATA t35 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
      t35 = t30->find_first_expression( i_type_9913 = t40 )->get_first_token( ).
      DATA t42 TYPE REF TO zcl_lnt_info_attribute.
      CLEAR t42.
      DATA t43 TYPE string.
      t43 = t35->str.
      DATA t49 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t52) = CONV string( me->filename ).
      t49 = NEW zcl_lnt_fi_identifier( i_token = t35 i_filename = t52 ).
      DATA(t55) = VALUE abap_bool( ).
      DATA(t57) = VALUE i( ).
      DATA t58 TYPE string.
      DATA t59 TYPE string.
      t59 = t30->concat_tokens( ).
      DATA(t61) = strlen( t59 ).
      t58 = t59.
      IF t58 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t58 TO UPPER CASE.
      ELSE.
        t58 = zlnt_runtime_uppe_91169605024d=>full( t58 ).
      ENDIF.
      DATA(t62) = | READ-ONLY|.
      DATA(t63) = strlen( t58 ).
      IF t62 IS INITIAL.
        t57 = 0.
      ELSE.
        FIND t62 IN t58 MATCH OFFSET t57.
        IF sy-subrc <> 0.
          t57 = -1.
        ENDIF.
      ENDIF.
      t55 = xsdbool( t57 >= 0 ).
      DATA t66 TYPE f.
      t66 = t2.
      t42 = NEW zcl_lnt_info_attribute( i_name = t43 i_identifier = t49 i_level = |instance| i_read_only = t55 i_visibility_5c1f = t66 ).
      CREATE OBJECT t42->zlnt_view_ownkeys_b0e8086400eb.
      t42->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t68 ).
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `identifier` p1 = t69 ).
      ENDIF.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `level` p1 = t70 ).
      ENDIF.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `readOnly` p1 = t71 ).
      ENDIF.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `visibility` p1 = t72 ).
      ENDIF.
      CREATE OBJECT t42->zlnt_json_ownkeys_70e5fd461788.
      t42->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t74.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t74 ).
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = |identifier| p1 = t76 ).
      ENDIF.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t78.
      IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = |level| p1 = t78 ).
      ENDIF.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = |readOnly| p1 = t80 ).
      ENDIF.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t82.
      IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = |visibility| p1 = t82 ).
      ENDIF.
      t24->load( ).
      APPEND t42 TO t24->items.
      t24->save( ).
    ENDDO.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t84 TYPE REF TO zcl_lnt_structure_node.
    t84 = t11.
    DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d407_dfd1462d93da.
    t83 = t84->find_direct_statements( i_type_9913 = t86 ).
    DATA t87 TYPE REF TO zcl_lnt_statement_node.
    DATA t88 TYPE REF TO object.
    DATA(t89) = VALUE i( ).
    DO.
      t83->load( ).
      IF t89 >= lines( t83->items ).
        EXIT.
      ENDIF.
      CLEAR t88.
      READ TABLE t83->items INDEX t89 + 1 INTO t88.
      t89 = t89 + 1.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      CLEAR t87.
      IF t88 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t90 ?= t88.
        DATA t91 TYPE REF TO object.
        t91 = t90->as_ref( ).
        t87 ?= t91.
      ELSE.
        t87 ?= t88.
      ENDIF.
      DATA t92 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
      t92 = t87->find_first_expression( i_type_9913 = t97 )->get_first_token( ).
      DATA t99 TYPE REF TO zcl_lnt_info_attribute.
      CLEAR t99.
      DATA t100 TYPE string.
      t100 = t92->str.
      DATA t106 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t109) = CONV string( me->filename ).
      t106 = NEW zcl_lnt_fi_identifier( i_token = t92 i_filename = t109 ).
      DATA(t112) = VALUE abap_bool( ).
      DATA(t114) = VALUE i( ).
      DATA t115 TYPE string.
      DATA t116 TYPE string.
      t116 = t87->concat_tokens( ).
      DATA(t118) = strlen( t116 ).
      t115 = t116.
      IF t115 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t115 TO UPPER CASE.
      ELSE.
        t115 = zlnt_runtime_uppe_91169605024d=>full( t115 ).
      ENDIF.
      DATA(t119) = | READ-ONLY|.
      DATA(t120) = strlen( t115 ).
      IF t119 IS INITIAL.
        t114 = 0.
      ELSE.
        FIND t119 IN t115 MATCH OFFSET t114.
        IF sy-subrc <> 0.
          t114 = -1.
        ENDIF.
      ENDIF.
      t112 = xsdbool( t114 >= 0 ).
      DATA t123 TYPE f.
      t123 = t2.
      t99 = NEW zcl_lnt_info_attribute( i_name = t100 i_identifier = t106 i_level = |static| i_read_only = t112 i_visibility_5c1f = t123 ).
      CREATE OBJECT t99->zlnt_view_ownkeys_b0e8086400eb.
      t99->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t125.
      t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t125 ).
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t126.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `identifier` p1 = t126 ).
      ENDIF.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t127.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `level` p1 = t127 ).
      ENDIF.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t128.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `readOnly` p1 = t128 ).
      ENDIF.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t129.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `visibility` p1 = t129 ).
      ENDIF.
      CREATE OBJECT t99->zlnt_json_ownkeys_70e5fd461788.
      t99->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t131.
      t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t131 ).
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t133.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = |identifier| p1 = t133 ).
      ENDIF.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t135.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = |level| p1 = t135 ).
      ENDIF.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t137.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = |readOnly| p1 = t137 ).
      ENDIF.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t139.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = |visibility| p1 = t139 ).
      ENDIF.
      t24->load( ).
      APPEND t99 TO t24->items.
      t24->save( ).
    ENDDO.
    DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t141 TYPE REF TO zcl_lnt_structure_node.
    t141 = t11.
    DATA(t143) = zlnt_runtime_desc_78196487750d=>zlnt_member_d426_fb8ad08dadf9.
    t140 = t141->find_direct_statements( i_type_9913 = t143 ).
    DATA t144 TYPE REF TO zcl_lnt_statement_node.
    DATA t145 TYPE REF TO object.
    DATA(t146) = VALUE i( ).
    DO.
      t140->load( ).
      IF t146 >= lines( t140->items ).
        EXIT.
      ENDIF.
      CLEAR t145.
      READ TABLE t140->items INDEX t146 + 1 INTO t145.
      t146 = t146 + 1.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t147.
      CLEAR t144.
      IF t145 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t147 ?= t145.
        DATA t148 TYPE REF TO object.
        t148 = t147->as_ref( ).
        t144 ?= t148.
      ELSE.
        t144 ?= t145.
      ENDIF.
      DATA t149 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t154) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
      t149 = t144->find_first_expression( i_type_9913 = t154 )->get_first_token( ).
      DATA t156 TYPE REF TO zcl_lnt_info_attribute.
      DATA t157 TYPE string.
      t157 = t149->str.
      DATA t163 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t166) = CONV string( me->filename ).
      t163 = NEW zcl_lnt_fi_identifier( i_token = t149 i_filename = t166 ).
      DATA t172 TYPE f.
      t172 = t2.
      t156 = NEW zcl_lnt_info_attribute( i_name = t157 i_identifier = t163 i_level = |constant| i_read_only = abap_true i_visibility_5c1f = t172 ).
      CREATE OBJECT t156->zlnt_view_ownkeys_b0e8086400eb.
      t156->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t174.
      t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t174 ).
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t175.
      IF t156->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `identifier` p1 = t175 ).
      ENDIF.
      DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t176.
      IF t156->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `level` p1 = t176 ).
      ENDIF.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t177.
      IF t156->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `readOnly` p1 = t177 ).
      ENDIF.
      DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t178.
      IF t156->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `visibility` p1 = t178 ).
      ENDIF.
      CREATE OBJECT t156->zlnt_json_ownkeys_70e5fd461788.
      t156->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t180.
      t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t180 ).
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t182.
      IF t156->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = |identifier| p1 = t182 ).
      ENDIF.
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t184.
      IF t156->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = |level| p1 = t184 ).
      ENDIF.
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t186.
      IF t156->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = |readOnly| p1 = t186 ).
      ENDIF.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t188.
      IF t156->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = |visibility| p1 = t188 ).
      ENDIF.
      t24->load( ).
      APPEND t156 TO t24->items.
      t24->save( ).
    ENDDO.
    result = t24.

  ENDMETHOD.

  METHOD parse_method_definition.
    DATA(t1) = i_node.
    DATA(t2) = i_visibility_5c1f.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t11.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zcl_lnt_structure_node.
    t14 = t1.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
    t13 = t14->find_all_statements( i_type_9913 = t16 ).
    DATA t17 TYPE REF TO zcl_lnt_statement_node.
    DATA t18 TYPE REF TO object.
    DATA(t19) = VALUE i( ).
    DO.
      t13->load( ).
      IF t19 >= lines( t13->items ).
        EXIT.
      ENDIF.
      CLEAR t18.
      READ TABLE t13->items INDEX t19 + 1 INTO t18.
      t19 = t19 + 1.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      CLEAR t17.
      IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t20 ?= t18.
        DATA t21 TYPE REF TO object.
        t21 = t20->as_ref( ).
        t17 ?= t21.
      ELSE.
        t17 ?= t18.
      ENDIF.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t22.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
      t24 = t17->find_direct_expression( i_type_9913 = t27 ).
      DATA t28 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t28.
      IF xsdbool( t24 IS INITIAL ) = abap_true.
        CLEAR t28.
      ELSE.
        t28 = t24->get_first_token( ).
      ENDIF.
      t22 = t28.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      IF xsdbool( t22 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t43 = me->parse_method_parameters( i_node = t17 ).
      DATA(t45) = VALUE string( ).
      DATA t46 TYPE string.
      DATA t47 TYPE string.
      t47 = t17->concat_tokens( ).
      DATA(t49) = strlen( t47 ).
      t46 = t47.
      IF t46 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t46 TO UPPER CASE.
      ELSE.
        t46 = zlnt_runtime_uppe_91169605024d=>full( t46 ).
      ENDIF.
      t45 = t46.
      DATA t51 TYPE REF TO zcl_lnt_info_method_definition.
      CLEAR t51.
      DATA t52 TYPE string.
      t52 = t22->str.
      DATA t59 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t61 TYPE REF TO zcl_lnt_abstract_token.
      t61 = t22.
      DATA(t63) = CONV string( me->filename ).
      t59 = NEW zcl_lnt_fi_identifier( i_token = t61 i_filename = t63 ).
      DATA(t64) = VALUE abap_bool( ).
      DATA t67 TYPE REF TO zcl_lnt_expression_node.
      DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d252_17c445ac4167.
      t67 = t17->find_direct_expression( i_type_9913 = t69 ).
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      t64 = xsdbool( xsdbool( t67 IS INITIAL ) = abap_false ).
      DATA(t75) = VALUE abap_bool( ).
      DATA(t77) = VALUE i( ).
      DATA(t79) = | FOR TESTING|.
      DATA(t80) = strlen( t45 ).
      IF t79 IS INITIAL.
        t77 = 0.
      ELSE.
        FIND t79 IN t45 MATCH OFFSET t77.
        IF sy-subrc <> 0.
          t77 = -1.
        ENDIF.
      ENDIF.
      t75 = xsdbool( t77 >= 0 ).
      DATA(t82) = VALUE abap_bool( ).
      DATA(t84) = VALUE i( ).
      DATA(t86) = | FINAL|.
      DATA(t87) = strlen( t45 ).
      IF t86 IS INITIAL.
        t84 = 0.
      ELSE.
        FIND t86 IN t45 MATCH OFFSET t84.
        IF sy-subrc <> 0.
          t84 = -1.
        ENDIF.
      ENDIF.
      t82 = xsdbool( t84 >= 0 ).
      DATA(t89) = VALUE abap_bool( ).
      DATA(t91) = VALUE i( ).
      DATA(t93) = | DEFAULT IGNORE|.
      DATA(t94) = strlen( t45 ).
      IF t93 IS INITIAL.
        t91 = 0.
      ELSE.
        FIND t93 IN t45 MATCH OFFSET t91.
        IF sy-subrc <> 0.
          t91 = -1.
        ENDIF.
      ENDIF.
      t89 = xsdbool( t91 >= 0 ).
      DATA(t96) = VALUE abap_bool( ).
      DATA(t98) = VALUE i( ).
      DATA(t100) = | DEFAULT FAIL|.
      DATA(t101) = strlen( t45 ).
      IF t100 IS INITIAL.
        t98 = 0.
      ELSE.
        FIND t100 IN t45 MATCH OFFSET t98.
        IF sy-subrc <> 0.
          t98 = -1.
        ENDIF.
      ENDIF.
      t96 = xsdbool( t98 >= 0 ).
      DATA(t103) = VALUE abap_bool( ).
      DATA t106 TYPE REF TO zcl_lnt_expression_node.
      DATA(t108) = zlnt_runtime_desc_78196487750d=>zlnt_member_d87_b6ca272efa9462.
      t106 = t17->find_direct_expression( i_type_9913 = t108 ).
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t109.
      t103 = xsdbool( xsdbool( t106 IS INITIAL ) = abap_false ).
      DATA t114 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t114.
      DATA t119 TYPE REF TO zcl_lnt_expression_node.
      DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d165_590ae906b133.
      t119 = t17->find_direct_expression( i_type_9913 = t121 ).
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      DATA(t124) = VALUE abap_bool( ).
      t124 = xsdbool( xsdbool( t119 IS INITIAL ) = abap_false ).
      DATA(t127) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t127->has = abap_true.
      t127->value = t124.
      t114 = t127.
      DATA t129 TYPE f.
      DATA t130 TYPE f.
      t130 = t2.
      t129 = t130.
      DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t132 = t43.
      DATA t134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t134.
      t51 = NEW zcl_lnt_info_method_definition( i_name = t52 i_identifier = t59 i_is_redefinition = t64 i_is_event_handler = t114 i_is_for_testing = t75 i_is_abstract = t103 i_is_final = t82 i_is_default_ignore = t89 i_is_default_fail = t96
      i_visibility_5c1f = t129 i_parameters = t132 i_exceptions = t134 ).
      CREATE OBJECT t51->zlnt_view_ownkeys_b0e8086400eb.
      t51->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t136 ).
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t137.
      IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `identifier` p1 = t137 ).
      ENDIF.
      DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t138.
      IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isRedefinition` p1 = t138 ).
      ENDIF.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t139.
      IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isForTesting` p1 = t139 ).
      ENDIF.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isFinal` p1 = t140 ).
      ENDIF.
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t141.
      IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isDefaultIgnore` p1 = t141 ).
      ENDIF.
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t142.
      IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isDefaultFail` p1 = t142 ).
      ENDIF.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t143.
      IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isAbstract` p1 = t143 ).
      ENDIF.
      DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t144.
      IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isEventHandler` p1 = t144 ).
      ENDIF.
      DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t145.
      IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `visibility` p1 = t145 ).
      ENDIF.
      DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t146.
      IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `parameters` p1 = t146 ).
      ENDIF.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t147.
      IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `exceptions` p1 = t147 ).
      ENDIF.
      CREATE OBJECT t51->zlnt_json_ownkeys_70e5fd461788.
      t51->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t149.
      t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t149 ).
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t151.
      IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |identifier| p1 = t151 ).
      ENDIF.
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t153.
      IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isRedefinition| p1 = t153 ).
      ENDIF.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t155.
      IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isForTesting| p1 = t155 ).
      ENDIF.
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t157.
      IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isFinal| p1 = t157 ).
      ENDIF.
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t159.
      IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isDefaultIgnore| p1 = t159 ).
      ENDIF.
      DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t161.
      IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isDefaultFail| p1 = t161 ).
      ENDIF.
      DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t163.
      IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isAbstract| p1 = t163 ).
      ENDIF.
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t165.
      IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isEventHandler| p1 = t165 ).
      ENDIF.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t167.
      IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |visibility| p1 = t167 ).
      ENDIF.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t169.
      IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |parameters| p1 = t169 ).
      ENDIF.
      DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t171.
      IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |exceptions| p1 = t171 ).
      ENDIF.
      t11->load( ).
      APPEND t51 TO t11->items.
      t11->save( ).
    ENDDO.
    result = t11.

  ENDMETHOD.

  METHOD parse_method_parameters.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d232_18850346ba57.
    t4 = t1->find_first_expression( i_type_9913 = t7 ).
    IF xsdbool( t4 IS BOUND ) = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      t11 = t4.
      DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81.
      t10 = t11->find_all_expressions( i_type_9913 = t13 ).
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA t15 TYPE REF TO object.
      DATA(t16) = VALUE i( ).
      DO.
        t10->load( ).
        IF t16 >= lines( t10->items ).
          EXIT.
        ENDIF.
        CLEAR t15.
        READ TABLE t10->items INDEX t16 + 1 INTO t15.
        t16 = t16 + 1.
        DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t17.
        CLEAR t14.
        IF t15 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t17 ?= t15.
          DATA t18 TYPE REF TO object.
          t18 = t17->as_ref( ).
          t14 ?= t18.
        ELSE.
          t14 ?= t15.
        ENDIF.
        DATA t19 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t19.
        DATA t21 TYPE REF TO zcl_lnt_expression_node.
        DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
        t21 = t14->find_direct_expression( i_type_9913 = t24 ).
        DATA t25 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t25.
        IF xsdbool( t21 IS INITIAL ) = abap_true.
          CLEAR t25.
        ELSE.
          t25 = t21->get_first_token( ).
        ENDIF.
        t19 = t25.
        IF xsdbool( t19 IS BOUND ) = abap_true.
          DATA t35 TYPE REF TO zcl_lnt_info_method_parameter.
          DATA t36 TYPE string.
          DATA t37 TYPE string.
          DATA t38 TYPE string.
          t38 = t19->str.
          DATA(t44) = |!|.
          DATA(t45) = ||.
          DATA(t46) = strlen( t38 ).
          t37 = t38.
          REPLACE ALL OCCURRENCES OF t44 IN t37 WITH t45.
          t36 = t37.
          DATA t49 TYPE REF TO zcl_lnt_abstract_token.
          t49 = t19.
          DATA(t51) = CONV string( me->filename ).
          t35 = NEW zcl_lnt_info_method_parameter( i_name = t36 i_identifier = NEW zcl_lnt_fi_identifier( i_token = t49 i_filename = t51 ) i_direction = |importing| ).
          CREATE OBJECT t35->zlnt_view_ownkeys_b0e8086400eb.
          t35->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t54.
          t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t54 ).
          DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t55.
          IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `identifier` p1 = t55 ).
          ENDIF.
          DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t56.
          IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `direction` p1 = t56 ).
          ENDIF.
          CREATE OBJECT t35->zlnt_json_ownkeys_70e5fd461788.
          t35->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t58.
          t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t58 ).
          DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t60.
          IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |identifier| p1 = t60 ).
          ENDIF.
          DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t62.
          IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |direction| p1 = t62 ).
          ENDIF.
          t2->load( ).
          APPEND t35 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t63 TYPE REF TO zcl_lnt_expression_node.
    DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d231_5616e0c1afc0.
    t63 = t1->find_first_expression( i_type_9913 = t66 ).
    IF xsdbool( t63 IS BOUND ) = abap_true.
      DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t70 TYPE REF TO zcl_lnt_expression_node.
      t70 = t63.
      DATA(t72) = zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81.
      t69 = t70->find_all_expressions( i_type_9913 = t72 ).
      DATA t73 TYPE REF TO zcl_lnt_expression_node.
      DATA t74 TYPE REF TO object.
      DATA(t75) = VALUE i( ).
      DO.
        t69->load( ).
        IF t75 >= lines( t69->items ).
          EXIT.
        ENDIF.
        CLEAR t74.
        READ TABLE t69->items INDEX t75 + 1 INTO t74.
        t75 = t75 + 1.
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t76.
        CLEAR t73.
        IF t74 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t76 ?= t74.
          DATA t77 TYPE REF TO object.
          t77 = t76->as_ref( ).
          t73 ?= t77.
        ELSE.
          t73 ?= t74.
        ENDIF.
        DATA t78 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t78.
        DATA t80 TYPE REF TO zcl_lnt_expression_node.
        DATA(t83) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
        t80 = t73->find_direct_expression( i_type_9913 = t83 ).
        DATA t84 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t84.
        IF xsdbool( t80 IS INITIAL ) = abap_true.
          CLEAR t84.
        ELSE.
          t84 = t80->get_first_token( ).
        ENDIF.
        t78 = t84.
        IF xsdbool( t78 IS BOUND ) = abap_true.
          DATA t94 TYPE REF TO zcl_lnt_info_method_parameter.
          DATA t95 TYPE string.
          DATA t96 TYPE string.
          DATA t97 TYPE string.
          t97 = t78->str.
          DATA(t103) = |!|.
          DATA(t104) = ||.
          DATA(t105) = strlen( t97 ).
          t96 = t97.
          REPLACE ALL OCCURRENCES OF t103 IN t96 WITH t104.
          t95 = t96.
          DATA t108 TYPE REF TO zcl_lnt_abstract_token.
          t108 = t78.
          DATA(t110) = CONV string( me->filename ).
          t94 = NEW zcl_lnt_info_method_parameter( i_name = t95 i_identifier = NEW zcl_lnt_fi_identifier( i_token = t108 i_filename = t110 ) i_direction = |exporting| ).
          CREATE OBJECT t94->zlnt_view_ownkeys_b0e8086400eb.
          t94->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t113.
          t94->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t113 ).
          DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t114.
          IF t94->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t94->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `identifier` p1 = t114 ).
          ENDIF.
          DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t115.
          IF t94->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t94->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `direction` p1 = t115 ).
          ENDIF.
          CREATE OBJECT t94->zlnt_json_ownkeys_70e5fd461788.
          t94->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t117.
          t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t117 ).
          DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t119.
          IF t94->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = |identifier| p1 = t119 ).
          ENDIF.
          DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t121.
          IF t94->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = |direction| p1 = t121 ).
          ENDIF.
          t2->load( ).
          APPEND t94 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t122 TYPE REF TO zcl_lnt_expression_node.
    DATA(t125) = zlnt_runtime_desc_78196487750d=>zlnt_member_d227_3477e061b4c4.
    t122 = t1->find_first_expression( i_type_9913 = t125 ).
    IF xsdbool( t122 IS BOUND ) = abap_true.
      DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t129 TYPE REF TO zcl_lnt_expression_node.
      t129 = t122.
      DATA(t131) = zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81.
      t128 = t129->find_all_expressions( i_type_9913 = t131 ).
      DATA t132 TYPE REF TO zcl_lnt_expression_node.
      DATA t133 TYPE REF TO object.
      DATA(t134) = VALUE i( ).
      DO.
        t128->load( ).
        IF t134 >= lines( t128->items ).
          EXIT.
        ENDIF.
        CLEAR t133.
        READ TABLE t128->items INDEX t134 + 1 INTO t133.
        t134 = t134 + 1.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        CLEAR t132.
        IF t133 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t135 ?= t133.
          DATA t136 TYPE REF TO object.
          t136 = t135->as_ref( ).
          t132 ?= t136.
        ELSE.
          t132 ?= t133.
        ENDIF.
        DATA t137 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t137.
        DATA t139 TYPE REF TO zcl_lnt_expression_node.
        DATA(t142) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
        t139 = t132->find_direct_expression( i_type_9913 = t142 ).
        DATA t143 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t143.
        IF xsdbool( t139 IS INITIAL ) = abap_true.
          CLEAR t143.
        ELSE.
          t143 = t139->get_first_token( ).
        ENDIF.
        t137 = t143.
        IF xsdbool( t137 IS BOUND ) = abap_true.
          DATA t153 TYPE REF TO zcl_lnt_info_method_parameter.
          DATA t154 TYPE string.
          DATA t155 TYPE string.
          DATA t156 TYPE string.
          t156 = t137->str.
          DATA(t162) = |!|.
          DATA(t163) = ||.
          DATA(t164) = strlen( t156 ).
          t155 = t156.
          REPLACE ALL OCCURRENCES OF t162 IN t155 WITH t163.
          t154 = t155.
          DATA t167 TYPE REF TO zcl_lnt_abstract_token.
          t167 = t137.
          DATA(t169) = CONV string( me->filename ).
          t153 = NEW zcl_lnt_info_method_parameter( i_name = t154 i_identifier = NEW zcl_lnt_fi_identifier( i_token = t167 i_filename = t169 ) i_direction = |changing| ).
          CREATE OBJECT t153->zlnt_view_ownkeys_b0e8086400eb.
          t153->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t172.
          t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t172 ).
          DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t173.
          IF t153->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `identifier` p1 = t173 ).
          ENDIF.
          DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t174.
          IF t153->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `direction` p1 = t174 ).
          ENDIF.
          CREATE OBJECT t153->zlnt_json_ownkeys_70e5fd461788.
          t153->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t176.
          t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t176 ).
          DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t178.
          IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = |identifier| p1 = t178 ).
          ENDIF.
          DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t180.
          IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = |direction| p1 = t180 ).
          ENDIF.
          t2->load( ).
          APPEND t153 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t181 TYPE REF TO zcl_lnt_expression_node.
    DATA(t184) = zlnt_runtime_desc_78196487750d=>zlnt_member_d235_40ca0b5f4dca.
    t181 = t1->find_first_expression( i_type_9913 = t184 ).
    IF xsdbool( t181 IS BOUND ) = abap_true.
      DATA t187 TYPE REF TO zcl_lnt_abstract_token.
      DATA t189 TYPE REF TO zcl_lnt_expression_node.
      DATA t191 TYPE REF TO zcl_lnt_expression_node.
      t191 = t181.
      DATA(t193) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
      t189 = t191->find_direct_expression( i_type_9913 = t193 ).
      DATA t194 TYPE REF TO zcl_lnt_abstract_token.
      IF xsdbool( t189 IS INITIAL ) = abap_true.
      ELSE.
        t194 = t189->get_first_token( ).
      ENDIF.
      t187 = t194.
      IF xsdbool( t187 IS BOUND ) = abap_true.
        DATA t204 TYPE REF TO zcl_lnt_info_method_parameter.
        DATA t205 TYPE string.
        DATA t206 TYPE string.
        DATA t207 TYPE string.
        t207 = t187->str.
        DATA(t213) = |!|.
        DATA(t214) = ||.
        DATA(t215) = strlen( t207 ).
        t206 = t207.
        REPLACE ALL OCCURRENCES OF t213 IN t206 WITH t214.
        t205 = t206.
        DATA t218 TYPE REF TO zcl_lnt_abstract_token.
        t218 = t187.
        DATA(t220) = CONV string( me->filename ).
        t204 = NEW zcl_lnt_info_method_parameter( i_name = t205 i_identifier = NEW zcl_lnt_fi_identifier( i_token = t218 i_filename = t220 ) i_direction = |returning| ).
        CREATE OBJECT t204->zlnt_view_ownkeys_b0e8086400eb.
        t204->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t223 ).
        DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t204->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `identifier` p1 = t224 ).
        ENDIF.
        DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t204->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `direction` p1 = t225 ).
        ENDIF.
        CREATE OBJECT t204->zlnt_json_ownkeys_70e5fd461788.
        t204->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t204->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t227 ).
        DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t204->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t204->zlnt_json_ownkeys_70e5fd461788->put( p0 = |identifier| p1 = t229 ).
        ENDIF.
        DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t204->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t204->zlnt_json_ownkeys_70e5fd461788->put( p0 = |direction| p1 = t231 ).
        ENDIF.
        t2->load( ).
        APPEND t204 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d767_dbe691e8327d.
  ENDMETHOD.
ENDCLASS.
