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
    DATA t1 TYPE REF TO zlnt_runtime_map__e91283f90792.
    DATA t2 TYPE REF TO zlnt_runtime_map__e91283f90792.
    DATA(t3) = NEW zlnt_runtime_map__e91283f90792( ).
    t2 = t3.
    DATA(t4) = t2.
    t1 = t4.
    me->name_number_index = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nameNumberIndex`.
    DATA t5 TYPE REF TO zlnt_runtime_map__ca02e874f6d5.
    DATA t6 TYPE REF TO zlnt_runtime_map__ca02e874f6d5.
    DATA(t7) = NEW zlnt_runtime_map__ca02e874f6d5( ).
    t6 = t7.
    DATA(t8) = t6.
    t5 = t8.
    me->filename_index = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `filenameIndex`.
  ENDMETHOD.

  METHOD add_using.
    DATA(t1) = i_filename.
    DATA(t2) = i_token.
    DATA(t3) = i_message_class.
    DATA(t4) = i_number.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE i.
    DATA(t7) = t4.
    DATA(t8) = strlen( t7 ).
    t6 = t8.
    DATA(t9) = 3.
    t5 = xsdbool( t6 <> t9 ).
    IF t5 = abap_true.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t13) = me->filename_index.
    DATA(t14) = t1.
    t12 = t13->get( p0 = t14 ).
    t11 = t12.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    t15 = t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = t11.
    IF t18 IS INITIAL.
      t17 = abap_true.
    ENDIF.
    t10 = t17.
    IF t10 = abap_true.
      DATA t19 TYPE REF TO zlnt_runtime_map__ca02e874f6d5.
      DATA(t20) = me->filename_index.
      DATA(t21) = t1.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t22.
      t19 = t20->set( p0 = t21 p1 = t22 ).
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t25) = me->filename_index.
    DATA(t26) = t1.
    t24 = t25->get( p0 = t26 ).
    t23 = t24.
    DATA t27 TYPE REF TO zcl_lnt_shape_08db6d95.
    CLEAR t27.
    DATA t28 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t28.
    DATA t29 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = t2.
      t29 = t31.
    ELSE.
      DATA t32 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t32.
      t29 = t32.
    ENDIF.
    t28 = t29.
    DATA t33 TYPE string.
    DATA(t34) = t3.
    t33 = t34.
    DATA t35 TYPE string.
    DATA(t36) = t4.
    t35 = t36.
    t27 = NEW zcl_lnt_shape_08db6d95( i_token = t28 i_message_class = t33 i_number = t35 ).
    CREATE OBJECT t27->zlnt_view_ownkeys_b0e8086400eb.
    t27->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t27->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t27->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t27->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t27->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `messageClass` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t27->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t27->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `number` p1 = t39 ).
    ENDIF.
    CREATE OBJECT t27->zlnt_json_ownkeys_70e5fd461788.
    t27->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t40) = |token|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t27->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t27->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
    ENDIF.
    DATA(t42) = |messageClass|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t27->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t27->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    ENDIF.
    DATA(t44) = |number|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t27->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t27->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    t23->load( ).
    APPEND t27 TO t23->items.
    t23->save( ).
    DATA(t46) = VALUE abap_bool( ).
    DATA t47 TYPE REF TO zlnt_runtime_map__68aa8717233d.
    DATA t48 TYPE REF TO zlnt_runtime_map__68aa8717233d.
    DATA(t49) = me->name_number_index.
    DATA(t50) = t3.
    t48 = t49->get( p0 = t50 ).
    t47 = t48.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    t51 = t52.
    DATA(t53) = VALUE abap_bool( ).
    DATA(t54) = t47.
    IF t54 IS INITIAL.
      t53 = abap_true.
    ENDIF.
    t46 = t53.
    IF t46 = abap_true.
      DATA t55 TYPE REF TO zlnt_runtime_map__e91283f90792.
      DATA(t56) = me->name_number_index.
      DATA(t57) = t3.
      DATA t58 TYPE REF TO zlnt_runtime_map__68aa8717233d.
      DATA t59 TYPE REF TO zlnt_runtime_map__68aa8717233d.
      DATA(t60) = NEW zlnt_runtime_map__68aa8717233d( ).
      t59 = t60.
      DATA(t61) = t59.
      t58 = t61.
      t55 = t56->set( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t62) = VALUE abap_bool( ).
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t65 TYPE REF TO zlnt_runtime_map__68aa8717233d.
    DATA t66 TYPE REF TO zlnt_runtime_map__68aa8717233d.
    DATA(t67) = me->name_number_index.
    DATA(t68) = t3.
    t66 = t67->get( p0 = t68 ).
    t65 = t66.
    DATA(t69) = t4.
    t64 = t65->get( p0 = t69 ).
    t63 = t64.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    t70 = t71.
    DATA(t72) = VALUE abap_bool( ).
    DATA(t73) = t63.
    IF t73 IS INITIAL.
      t72 = abap_true.
    ENDIF.
    t62 = t72.
    IF t62 = abap_true.
      DATA t74 TYPE REF TO zlnt_runtime_map__68aa8717233d.
      DATA t75 TYPE REF TO zlnt_runtime_map__68aa8717233d.
      DATA t76 TYPE REF TO zlnt_runtime_map__68aa8717233d.
      DATA(t77) = me->name_number_index.
      DATA(t78) = t3.
      t76 = t77->get( p0 = t78 ).
      t75 = t76.
      DATA(t79) = t4.
      DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t80.
      t74 = t75->set( p0 = t79 p1 = t80 ).
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t83 TYPE REF TO zlnt_runtime_map__68aa8717233d.
    DATA t84 TYPE REF TO zlnt_runtime_map__68aa8717233d.
    DATA(t85) = me->name_number_index.
    DATA(t86) = t3.
    t84 = t85->get( p0 = t86 ).
    t83 = t84.
    DATA(t87) = t4.
    t82 = t83->get( p0 = t87 ).
    t81 = t82.
    DATA t88 TYPE REF TO zcl_lnt_ifilename_and_token.
    DATA t89 TYPE string.
    DATA(t90) = t1.
    t89 = t90.
    DATA t91 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t92) = t2.
    t91 = t92.
    t88 = NEW zcl_lnt_ifilename_and_token( i_filename = t89 i_token = t91 ).
    CREATE OBJECT t88->zlnt_view_ownkeys_b0e8086400eb.
    t88->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t93 ).
    ENDIF.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t94 ).
    ENDIF.
    CREATE OBJECT t88->zlnt_json_ownkeys_70e5fd461788.
    t88->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t95) = |filename|.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
    ENDIF.
    DATA(t97) = |token|.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t97 p1 = t98 ).
    ENDIF.
    t81->load( ).
    APPEND t88 TO t81->items.
    t81->save( ).
  ENDMETHOD.

  METHOD clear_feba.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = t1.
    t2 = t3->get_files( ).
    DATA t4 TYPE REF TO zif_lnt_file.
    CLEAR t4.
    DATA t5 TYPE REF TO object.
    CLEAR t5.
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
      DATA t10 TYPE string.
      DATA(t11) = t4.
      t10 = t11->get_filename( ).
      t9 = t10.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t12.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t15) = me->filename_index.
      DATA(t16) = t9.
      t14 = t15->get( p0 = t16 ).
      t13 = t14.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t17.
      DATA t18 TYPE abap_bool.
      DATA(t19) = t13.
      t18 = xsdbool( t19 IS BOUND ).
      IF t18 = abap_true.
        DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t21) = t13.
        t20 = t21.
        t17 = t20.
      ELSE.
        DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t22.
        t17 = t22.
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
        DATA t30 TYPE REF TO zlnt_runtime_map__68aa8717233d.
        DATA(t31) = me->name_number_index.
        DATA t32 TYPE string.
        DATA(t33) = t23.
        t32 = t33->message_class.
        t30 = t31->get( p0 = t32 ).
        t29 = t30.
        DATA t34 TYPE string.
        DATA(t35) = t23.
        t34 = t35->number.
        DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t36.
        DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t38.
        t37 = t38.
        DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t41 TYPE REF TO zlnt_runtime_map__68aa8717233d.
        DATA t42 TYPE REF TO zlnt_runtime_map__68aa8717233d.
        DATA(t43) = me->name_number_index.
        DATA t44 TYPE string.
        DATA(t45) = t23.
        t44 = t45->message_class.
        t42 = t43->get( p0 = t44 ).
        t41 = t42.
        DATA t46 TYPE string.
        DATA(t47) = t23.
        t46 = t47->number.
        t40 = t41->get( p0 = t46 ).
        t39 = t40.
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
          DATA t53 TYPE abap_bool.
          DATA t54 TYPE string.
          DATA(t55) = t48.
          t54 = t55->filename.
          DATA(t56) = t9.
          t53 = xsdbool( t54 <> t56 ).
          IF t53 = abap_true.
            DATA(t57) = t37.
            DATA(t58) = t48.
            t57->load( ).
            APPEND t58 TO t57->items.
            t57->save( ).
          ENDIF.
        ENDDO.
        DATA(t59) = t37.
        t36 = t59.
        t28 = t29->set( p0 = t34 p1 = t36 ).
      ENDDO.
      DATA t60 TYPE abap_bool.
      DATA(t61) = me->filename_index.
      DATA(t62) = t9.
      DELETE t61->entries WHERE k = t62.
      t60 = abap_true.
    ENDDO.
  ENDMETHOD.

  METHOD list_by_filename.
    DATA(t1) = i_filename.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = me->filename_index.
    DATA(t6) = t1.
    t4 = t5->get( p0 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA t8 TYPE abap_bool.
    DATA(t9) = t3.
    t8 = xsdbool( t9 IS BOUND ).
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t11) = t3.
      t10 = t11.
      t7 = t10.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t12.
      t7 = t12.
    ENDIF.
    t2 = t7.
    result = t2.

  ENDMETHOD.

  METHOD list_by_message.
    DATA(t1) = i_message_class.
    DATA(t2) = i_number.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_map__68aa8717233d.
    DATA t7 TYPE REF TO zlnt_runtime_map__68aa8717233d.
    DATA(t8) = me->name_number_index.
    DATA(t9) = t1.
    t7 = t8->get( p0 = t9 ).
    t6 = t7.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t6.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t13.
      t10 = t13.
    ELSE.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t15 TYPE REF TO zlnt_runtime_map__68aa8717233d.
      DATA(t16) = t6.
      t15 = t16.
      DATA(t17) = t2.
      t14 = t15->get( p0 = t17 ).
      t10 = t14.
    ENDIF.
    t5 = t10.
    t4 = t5.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t18.
    DATA t19 TYPE abap_bool.
    DATA(t20) = t4.
    t19 = xsdbool( t20 IS BOUND ).
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t22) = t4.
      t21 = t22.
      t18 = t21.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t23.
      t18 = t23.
    ENDIF.
    t3 = t18.
    result = t3.

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
