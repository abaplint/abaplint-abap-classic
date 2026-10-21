* TS: src/msag_references.ts:5:1 MSAGReferences
CLASS zcl_lnt_msag_references DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_msag_references.
    DATA name_number_index TYPE REF TO zlnt_runtime_map__e91283f90792.
    DATA filename_index TYPE REF TO zlnt_runtime_map__ca02e874f6d5.
    METHODS constructor.
    METHODS add_using IMPORTING i_filename TYPE string i_token TYPE REF TO zcl_lnt_abstract_token i_message_class TYPE string i_number TYPE string.
    METHODS clear_feba IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object.
    METHODS list_by_filename IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_by_message IMPORTING i_message_class TYPE string i_number TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_msag_references IMPLEMENTATION.
  METHOD constructor.
    me->name_number_index = NEW zlnt_runtime_map__e91283f90792( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nameNumberIndex`.
    me->filename_index = NEW zlnt_runtime_map__ca02e874f6d5( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `filenameIndex`.
  ENDMETHOD.

  METHOD add_using.
    DATA(t1) = i_filename.
    DATA(t2) = i_token.
    DATA(t3) = i_message_class.
    DATA(t4) = i_number.
    IF xsdbool( strlen( t4 ) <> 3 ) = abap_true.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t12 = me->filename_index->get( p0 = t1 ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t12 IS INITIAL ) = abap_true.
      DATA t19 TYPE REF TO zlnt_runtime_map__ca02e874f6d5.
      DATA(t20) = me->filename_index.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t22.
      t19 = t20->set( p0 = t1 p1 = t22 ).
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t23 = me->filename_index->get( p0 = t1 ).
    DATA t27 TYPE REF TO zcl_lnt_shape_08db6d95.
    t27 = NEW zcl_lnt_shape_08db6d95( i_token = t2 i_message_class = t3 i_number = t4 ).
    CREATE OBJECT t27->zlnt_view_ownkeys_b0e8086400eb.
    t27->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t27->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t37 ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t27->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t27->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `messageClass` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t27->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t27->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `number` p1 = t39 ).
    ENDIF.
    CREATE OBJECT t27->zlnt_json_ownkeys_70e5fd461788.
    t27->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t27->zlnt_json_ownkeys_70e5fd461788->put( p0 = |token| p1 = t41 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t27->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t27->zlnt_json_ownkeys_70e5fd461788->put( p0 = |messageClass| p1 = t43 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t27->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t27->zlnt_json_ownkeys_70e5fd461788->put( p0 = |number| p1 = t45 ).
    ENDIF.
    t23->load( ).
    APPEND t27 TO t23->items.
    t23->save( ).
    DATA t48 TYPE REF TO zlnt_runtime_map__68aa8717233d.
    t48 = me->name_number_index->get( p0 = t3 ).
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t48 IS INITIAL ) = abap_true.
      DATA t55 TYPE REF TO zlnt_runtime_map__e91283f90792.
      t55 = me->name_number_index->set( p0 = t3 p1 = NEW zlnt_runtime_map__68aa8717233d( ) ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t64 = me->name_number_index->get( p0 = t3 )->get( p0 = t4 ).
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t64 IS INITIAL ) = abap_true.
      DATA t74 TYPE REF TO zlnt_runtime_map__68aa8717233d.
      DATA t75 TYPE REF TO zlnt_runtime_map__68aa8717233d.
      t75 = me->name_number_index->get( p0 = t3 ).
      DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t80.
      t74 = t75->set( p0 = t4 p1 = t80 ).
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t81 = me->name_number_index->get( p0 = t3 )->get( p0 = t4 ).
    DATA t88 TYPE REF TO zcl_lnt_ifilename_and_token.
    t88 = NEW zcl_lnt_ifilename_and_token( i_filename = t1 i_token = t2 ).
    CREATE OBJECT t88->zlnt_view_ownkeys_b0e8086400eb.
    t88->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t93 ).
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t94 ).
    ENDIF.
    CREATE OBJECT t88->zlnt_json_ownkeys_70e5fd461788.
    t88->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t96 ).
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = |token| p1 = t98 ).
    ENDIF.
    t81->load( ).
    APPEND t88 TO t81->items.
    t81->save( ).
  ENDMETHOD.

  METHOD clear_feba.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t2 = i_obj_1ed0->get_files( ).
    DATA t4 TYPE REF TO zif_lnt_file.
    DATA t5 TYPE REF TO object.
    DATA(t6) = VALUE i( ).
    DO.
      t2->load( ).
      IF t6 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t5.
      READ TABLE t2->items INDEX t6 + 1 INTO t5.
      t6 = t6 + 1.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      CLEAR t4.
      IF t5 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t7 ?= t5.
        DATA t8 TYPE REF TO object.
        t8 = t7->as_ref( ).
        t4 ?= t8.
      ELSE.
        t4 ?= t5.
      ENDIF.
      DATA t9 TYPE string.
      t9 = t4->get_filename( ).
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t12.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t13 = me->filename_index->get( p0 = t9 ).
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t17.
      IF xsdbool( t13 IS BOUND ) = abap_true.
        t17 = t13.
      ELSE.
        CREATE OBJECT t17.
      ENDIF.
      t12 = t17.
      DATA t23 TYPE REF TO zcl_lnt_shape_08db6d95.
      CLEAR t23.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      DATA(t25) = VALUE i( ).
      DO.
        t12->load( ).
        IF t25 >= lines( t12->items ).
          EXIT.
        ENDIF.
        CLEAR t24.
        READ TABLE t12->items INDEX t25 + 1 INTO t24.
        t25 = t25 + 1.
        DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t26.
        CLEAR t23.
        IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t26 ?= t24.
          DATA t27 TYPE REF TO object.
          t27 = t26->as_ref( ).
          t23 ?= t27.
        ELSE.
          t23 ?= t24.
        ENDIF.
        DATA t28 TYPE REF TO zlnt_runtime_map__68aa8717233d.
        CLEAR t28.
        DATA t29 TYPE REF TO zlnt_runtime_map__68aa8717233d.
        DATA t32 TYPE string.
        t32 = t23->message_class.
        t29 = me->name_number_index->get( p0 = t32 ).
        DATA t34 TYPE string.
        t34 = t23->number.
        DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t37.
        DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t41 TYPE REF TO zlnt_runtime_map__68aa8717233d.
        DATA t44 TYPE string.
        t44 = t23->message_class.
        t41 = me->name_number_index->get( p0 = t44 ).
        DATA t46 TYPE string.
        t46 = t23->number.
        t39 = t41->get( p0 = t46 ).
        DATA t48 TYPE REF TO zcl_lnt_ifilename_and_token.
        CLEAR t48.
        DATA t49 TYPE REF TO object.
        CLEAR t49.
        DATA(t50) = VALUE i( ).
        DO.
          t39->load( ).
          IF t50 >= lines( t39->items ).
            EXIT.
          ENDIF.
          CLEAR t49.
          READ TABLE t39->items INDEX t50 + 1 INTO t49.
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
          IF xsdbool( t48->filename <> t9 ) = abap_true.
            t37->load( ).
            APPEND t48 TO t37->items.
            t37->save( ).
          ENDIF.
        ENDDO.
        t28 = t29->set( p0 = t34 p1 = t37 ).
      ENDDO.
      DATA t60 TYPE abap_bool.
      DATA(t61) = me->filename_index.
      DELETE t61->entries WHERE k = t9.
      t60 = abap_true.
    ENDDO.
  ENDMETHOD.

  METHOD list_by_filename.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = i_filename.
    t3 = me->filename_index->get( p0 = t6 ).
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t3 IS BOUND ) = abap_true.
      t7 = t3.
    ELSE.
      CREATE OBJECT t7.
    ENDIF.
    result = t7.

  ENDMETHOD.

  METHOD list_by_message.
    DATA(t2) = i_number.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_map__68aa8717233d.
    DATA(t9) = i_message_class.
    t6 = me->name_number_index->get( p0 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
    ELSE.
      t10 = t6->get( p0 = t2 ).
    ENDIF.
    t4 = t10.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t4 IS BOUND ) = abap_true.
      t18 = t4.
    ELSE.
      CREATE OBJECT t18.
    ENDIF.
    result = t18.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1181_26d1de512cd7.
  ENDMETHOD.

  METHOD zif_lnt_msag_references~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_msag_references~clear_feba.
    me->clear_feba( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.

  METHOD zif_lnt_msag_references~add_using.
    me->add_using( i_filename = i_filename i_token = i_token i_message_class = i_message_class i_number = i_number ).
  ENDMETHOD.

  METHOD zif_lnt_msag_references~list_by_filename.
    result = me->list_by_filename( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_msag_references~list_by_message.
    result = me->list_by_message( i_message_class = i_message_class i_number = i_number ).
  ENDMETHOD.
ENDCLASS.
