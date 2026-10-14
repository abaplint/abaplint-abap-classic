* TS: src/msag_references.ts:5:1 MSAGReferences
CLASS zcl_lnt_msag_references DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
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
    DATA t5 TYPE REF TO zlnt_runtime_map__ca02e874f6d5.
    DATA t6 TYPE REF TO zlnt_runtime_map__ca02e874f6d5.
    DATA(t7) = NEW zlnt_runtime_map__ca02e874f6d5( ).
    t6 = t7.
    DATA(t8) = t6.
    t5 = t8.
    me->filename_index = t5.
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
    DATA(t29) = abap_true.
    IF t29 = abap_true.
      DATA(t30) = t2.
      t28 = t30.
    ELSE.
      DATA t31 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t31.
      t28 = t31.
    ENDIF.
    DATA(t32) = t3.
    DATA(t33) = t4.
    t27 = NEW zcl_lnt_shape_08db6d95( i_token = t28 i_message_class = t32 i_number = t33 ).
    APPEND t27 TO t23->items.
    DATA(t34) = VALUE abap_bool( ).
    DATA t35 TYPE REF TO zlnt_runtime_map__68aa8717233d.
    DATA t36 TYPE REF TO zlnt_runtime_map__68aa8717233d.
    DATA(t37) = me->name_number_index.
    DATA(t38) = t3.
    t36 = t37->get( p0 = t38 ).
    t35 = t36.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    t39 = t40.
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = t35.
    IF t42 IS INITIAL.
      t41 = abap_true.
    ENDIF.
    t34 = t41.
    IF t34 = abap_true.
      DATA t43 TYPE REF TO zlnt_runtime_map__e91283f90792.
      DATA(t44) = me->name_number_index.
      DATA(t45) = t3.
      DATA t46 TYPE REF TO zlnt_runtime_map__68aa8717233d.
      DATA t47 TYPE REF TO zlnt_runtime_map__68aa8717233d.
      DATA(t48) = NEW zlnt_runtime_map__68aa8717233d( ).
      t47 = t48.
      DATA(t49) = t47.
      t46 = t49.
      t43 = t44->set( p0 = t45 p1 = t46 ).
    ENDIF.
    DATA(t50) = VALUE abap_bool( ).
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t53 TYPE REF TO zlnt_runtime_map__68aa8717233d.
    DATA t54 TYPE REF TO zlnt_runtime_map__68aa8717233d.
    DATA(t55) = me->name_number_index.
    DATA(t56) = t3.
    t54 = t55->get( p0 = t56 ).
    t53 = t54.
    DATA(t57) = t4.
    t52 = t53->get( p0 = t57 ).
    t51 = t52.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    t58 = t59.
    DATA(t60) = VALUE abap_bool( ).
    DATA(t61) = t51.
    IF t61 IS INITIAL.
      t60 = abap_true.
    ENDIF.
    t50 = t60.
    IF t50 = abap_true.
      DATA t62 TYPE REF TO zlnt_runtime_map__68aa8717233d.
      DATA t63 TYPE REF TO zlnt_runtime_map__68aa8717233d.
      DATA t64 TYPE REF TO zlnt_runtime_map__68aa8717233d.
      DATA(t65) = me->name_number_index.
      DATA(t66) = t3.
      t64 = t65->get( p0 = t66 ).
      t63 = t64.
      DATA(t67) = t4.
      DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t68.
      t62 = t63->set( p0 = t67 p1 = t68 ).
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t71 TYPE REF TO zlnt_runtime_map__68aa8717233d.
    DATA t72 TYPE REF TO zlnt_runtime_map__68aa8717233d.
    DATA(t73) = me->name_number_index.
    DATA(t74) = t3.
    t72 = t73->get( p0 = t74 ).
    t71 = t72.
    DATA(t75) = t4.
    t70 = t71->get( p0 = t75 ).
    t69 = t70.
    DATA t76 TYPE REF TO zcl_lnt_ifilename_and_token.
    DATA(t77) = t1.
    DATA(t78) = t2.
    t76 = NEW zcl_lnt_ifilename_and_token( i_filename = t77 i_token = t78 ).
    APPEND t76 TO t69->items.
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
    LOOP AT t2->items INTO t5.
      t4 ?= t5.
      DATA t6 TYPE string.
      DATA t7 TYPE string.
      DATA(t8) = t4.
      t7 = t8->get_filename( ).
      t6 = t7.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t9.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t12) = me->filename_index.
      DATA(t13) = t6.
      t11 = t12->get( p0 = t13 ).
      t10 = t11.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t14.
      DATA t15 TYPE abap_bool.
      DATA(t16) = t10.
      t15 = xsdbool( t16 IS BOUND ).
      IF t15 = abap_true.
        DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t18) = t10.
        t17 = t18.
        t14 = t17.
      ELSE.
        DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t19.
        t14 = t19.
      ENDIF.
      t9 = t14.
      DATA t20 TYPE REF TO zcl_lnt_shape_08db6d95.
      CLEAR t20.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      LOOP AT t9->items INTO t21.
        t20 ?= t21.
        DATA t22 TYPE REF TO zlnt_runtime_map__68aa8717233d.
        CLEAR t22.
        DATA t23 TYPE REF TO zlnt_runtime_map__68aa8717233d.
        DATA t24 TYPE REF TO zlnt_runtime_map__68aa8717233d.
        DATA(t25) = me->name_number_index.
        DATA t26 TYPE string.
        DATA(t27) = t20.
        t26 = t27->message_class.
        t24 = t25->get( p0 = t26 ).
        t23 = t24.
        DATA t28 TYPE string.
        DATA(t29) = t20.
        t28 = t29->number.
        DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t30.
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t32.
        t31 = t32.
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t35 TYPE REF TO zlnt_runtime_map__68aa8717233d.
        DATA t36 TYPE REF TO zlnt_runtime_map__68aa8717233d.
        DATA(t37) = me->name_number_index.
        DATA t38 TYPE string.
        DATA(t39) = t20.
        t38 = t39->message_class.
        t36 = t37->get( p0 = t38 ).
        t35 = t36.
        DATA t40 TYPE string.
        DATA(t41) = t20.
        t40 = t41->number.
        t34 = t35->get( p0 = t40 ).
        t33 = t34.
        DATA t42 TYPE REF TO zcl_lnt_ifilename_and_token.
        CLEAR t42.
        DATA t43 TYPE REF TO object.
        CLEAR t43.
        LOOP AT t33->items INTO t43.
          t42 ?= t43.
          DATA t44 TYPE abap_bool.
          DATA t45 TYPE string.
          DATA(t46) = t42.
          t45 = t46->filename.
          DATA(t47) = t6.
          t44 = xsdbool( t45 <> t47 ).
          IF t44 = abap_true.
            DATA(t48) = t31.
            DATA(t49) = t42.
            APPEND t49 TO t48->items.
          ENDIF.
        ENDLOOP.
        DATA(t50) = t31.
        t30 = t50.
        t22 = t23->set( p0 = t28 p1 = t30 ).
      ENDLOOP.
      DATA t51 TYPE abap_bool.
      DATA(t52) = me->filename_index.
      DATA(t53) = t6.
      DELETE t52->entries WHERE k = t53.
      t51 = abap_true.
    ENDLOOP.
  ENDMETHOD.

  METHOD list_by_filename.
    DATA(t1) = i_filename.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/msag_references.ts:47|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD list_by_message.
    DATA(t1) = i_message_class.
    DATA(t2) = i_number.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/msag_references.ts:51|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
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
