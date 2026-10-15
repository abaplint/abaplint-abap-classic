* TS: src/abap/4_file_information/abap_file_information.ts:4:1 ABAPFileInformation
CLASS zcl_lnt_abap_file_information DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_abap_file_information.
    DATA parsed TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
    METHODS constructor IMPORTING i_parsed TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
    METHODS list_class_implementations RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_interface_definitions RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS gt_intrfc_dfntn_by_nm IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    METHODS list_class_definitions RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_class_definition_by_name IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_info_class_definition.
    METHODS gt_clss_implmnttn_by_nm IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    METHODS list_form_definitions RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abap_file_information IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_parsed.
    DATA(t2) = t1.
    me->parsed = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsed`.
  ENDMETHOD.

  METHOD list_class_implementations.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t2) = me->parsed.
    t1 = t2->implementations.
    result = t1.

  ENDMETHOD.

  METHOD list_interface_definitions.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t2) = me->parsed.
    t1 = t2->interfaces.
    result = t1.

  ENDMETHOD.

  METHOD gt_intrfc_dfntn_by_nm.
    DATA(t1) = i_name.
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE string.
    DATA(t4) = t1.
    DATA(t5) = strlen( t4 ).
    t3 = t4.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    t2 = t3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = me->parsed.
    t6 = t7->interfaces.
    DATA t8 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t6->load( ).
      IF t10 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t6->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = VALUE string( ).
      DATA(t15) = VALUE string( ).
      DATA t16 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t17 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t18) = t8.
      t17 = t18->identifier.
      t16 = t17.
      DATA(t19) = VALUE string( ).
      DATA t20 TYPE string.
      DATA t21 TYPE string.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t24) = t16.
      t23 = t24->token.
      t22 = t23.
      DATA t25 TYPE string.
      DATA(t26) = t22.
      t25 = t26->str.
      t21 = t25.
      t20 = t21.
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = VALUE string( ).
      DATA(t29) = t20.
      DATA(t30) = 0.
      DATA(t31) = 1.
      DATA(t32) = strlen( t29 ).
      IF t30 < 0.
        t30 = t30 + t32.
        IF t30 < 0.
          t30 = 0.
        ENDIF.
      ENDIF.
      IF t30 > t32 OR t31 <= 0.
        CLEAR t28.
      ELSE.
        IF t31 > t32 - t30.
          t31 = t32 - t30.
        ENDIF.
        t28 = t29+t30(t31).
      ENDIF.
      DATA(t33) = |!|.
      t27 = xsdbool( t28 = t33 ).
      IF t27 = abap_true.
        DATA(t34) = VALUE string( ).
        DATA t35 TYPE string.
        DATA(t36) = t20.
        t35 = t36.
        DATA(t37) = VALUE string( ).
        DATA(t38) = t35.
        DATA(t39) = 1.
        DATA t40 TYPE i.
        DATA(t41) = t35.
        DATA(t42) = strlen( t41 ).
        t40 = t42.
        DATA(t43) = strlen( t38 ).
        IF t39 < 0.
          t39 = t39 + t43.
          IF t39 < 0.
            t39 = 0.
          ENDIF.
        ENDIF.
        IF t39 > t43 OR t40 <= 0.
          CLEAR t37.
        ELSE.
          IF t40 > t43 - t39.
            t40 = t43 - t39.
          ENDIF.
          t37 = t38+t39(t40).
        ENDIF.
        t34 = t37.
        t20 = t34.
      ENDIF.
      DATA(t44) = t20.
      t19 = t44.
      t15 = t19.
      DATA(t45) = strlen( t15 ).
      t14 = t15.
      IF t14 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t14 TO UPPER CASE.
      ELSE.
        t14 = zlnt_runtime_uppe_91169605024d=>full( t14 ).
      ENDIF.
      DATA(t46) = t2.
      t13 = xsdbool( t14 = t46 ).
      IF t13 = abap_true.
        DATA t47 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        CLEAR t47.
        DATA(t48) = abap_true.
        IF t48 = abap_true.
          DATA(t49) = t8.
          t47 = t49.
        ELSE.
          DATA t50 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
          CLEAR t50.
          t47 = t50.
        ENDIF.
        result = t47.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t51 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t51.
    result = t51.

  ENDMETHOD.

  METHOD list_class_definitions.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t2) = me->parsed.
    t1 = t2->classes.
    result = t1.

  ENDMETHOD.

  METHOD get_class_definition_by_name.
    DATA(t1) = i_name.
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE string.
    DATA(t4) = t1.
    DATA(t5) = strlen( t4 ).
    t3 = t4.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    t2 = t3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = me->parsed.
    t6 = t7->classes.
    DATA t8 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t6->load( ).
      IF t10 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t6->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = VALUE string( ).
      DATA(t15) = VALUE string( ).
      DATA t16 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t17 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t18) = t8.
      t17 = t18->identifier.
      t16 = t17.
      DATA(t19) = VALUE string( ).
      DATA t20 TYPE string.
      DATA t21 TYPE string.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t24) = t16.
      t23 = t24->token.
      t22 = t23.
      DATA t25 TYPE string.
      DATA(t26) = t22.
      t25 = t26->str.
      t21 = t25.
      t20 = t21.
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = VALUE string( ).
      DATA(t29) = t20.
      DATA(t30) = 0.
      DATA(t31) = 1.
      DATA(t32) = strlen( t29 ).
      IF t30 < 0.
        t30 = t30 + t32.
        IF t30 < 0.
          t30 = 0.
        ENDIF.
      ENDIF.
      IF t30 > t32 OR t31 <= 0.
        CLEAR t28.
      ELSE.
        IF t31 > t32 - t30.
          t31 = t32 - t30.
        ENDIF.
        t28 = t29+t30(t31).
      ENDIF.
      DATA(t33) = |!|.
      t27 = xsdbool( t28 = t33 ).
      IF t27 = abap_true.
        DATA(t34) = VALUE string( ).
        DATA t35 TYPE string.
        DATA(t36) = t20.
        t35 = t36.
        DATA(t37) = VALUE string( ).
        DATA(t38) = t35.
        DATA(t39) = 1.
        DATA t40 TYPE i.
        DATA(t41) = t35.
        DATA(t42) = strlen( t41 ).
        t40 = t42.
        DATA(t43) = strlen( t38 ).
        IF t39 < 0.
          t39 = t39 + t43.
          IF t39 < 0.
            t39 = 0.
          ENDIF.
        ENDIF.
        IF t39 > t43 OR t40 <= 0.
          CLEAR t37.
        ELSE.
          IF t40 > t43 - t39.
            t40 = t43 - t39.
          ENDIF.
          t37 = t38+t39(t40).
        ENDIF.
        t34 = t37.
        t20 = t34.
      ENDIF.
      DATA(t44) = t20.
      t19 = t44.
      t15 = t19.
      DATA(t45) = strlen( t15 ).
      t14 = t15.
      IF t14 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t14 TO UPPER CASE.
      ELSE.
        t14 = zlnt_runtime_uppe_91169605024d=>full( t14 ).
      ENDIF.
      DATA(t46) = t2.
      t13 = xsdbool( t14 = t46 ).
      IF t13 = abap_true.
        DATA t47 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t47.
        DATA(t48) = abap_true.
        IF t48 = abap_true.
          DATA(t49) = t8.
          t47 = t49.
        ELSE.
          DATA t50 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t50.
          t47 = t50.
        ENDIF.
        result = t47.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t51 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t51.
    result = t51.

  ENDMETHOD.

  METHOD gt_clss_implmnttn_by_nm.
    DATA(t1) = i_name.
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE string.
    DATA(t4) = t1.
    DATA(t5) = strlen( t4 ).
    t3 = t4.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    t2 = t3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = me->parsed.
    t6 = t7->implementations.
    DATA t8 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t6->load( ).
      IF t10 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t6->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = VALUE string( ).
      DATA(t15) = VALUE string( ).
      DATA t16 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t17 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t18) = t8.
      t17 = t18->identifier.
      t16 = t17.
      DATA(t19) = VALUE string( ).
      DATA t20 TYPE string.
      DATA t21 TYPE string.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t24) = t16.
      t23 = t24->token.
      t22 = t23.
      DATA t25 TYPE string.
      DATA(t26) = t22.
      t25 = t26->str.
      t21 = t25.
      t20 = t21.
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = VALUE string( ).
      DATA(t29) = t20.
      DATA(t30) = 0.
      DATA(t31) = 1.
      DATA(t32) = strlen( t29 ).
      IF t30 < 0.
        t30 = t30 + t32.
        IF t30 < 0.
          t30 = 0.
        ENDIF.
      ENDIF.
      IF t30 > t32 OR t31 <= 0.
        CLEAR t28.
      ELSE.
        IF t31 > t32 - t30.
          t31 = t32 - t30.
        ENDIF.
        t28 = t29+t30(t31).
      ENDIF.
      DATA(t33) = |!|.
      t27 = xsdbool( t28 = t33 ).
      IF t27 = abap_true.
        DATA(t34) = VALUE string( ).
        DATA t35 TYPE string.
        DATA(t36) = t20.
        t35 = t36.
        DATA(t37) = VALUE string( ).
        DATA(t38) = t35.
        DATA(t39) = 1.
        DATA t40 TYPE i.
        DATA(t41) = t35.
        DATA(t42) = strlen( t41 ).
        t40 = t42.
        DATA(t43) = strlen( t38 ).
        IF t39 < 0.
          t39 = t39 + t43.
          IF t39 < 0.
            t39 = 0.
          ENDIF.
        ENDIF.
        IF t39 > t43 OR t40 <= 0.
          CLEAR t37.
        ELSE.
          IF t40 > t43 - t39.
            t40 = t43 - t39.
          ENDIF.
          t37 = t38+t39(t40).
        ENDIF.
        t34 = t37.
        t20 = t34.
      ENDIF.
      DATA(t44) = t20.
      t19 = t44.
      t15 = t19.
      DATA(t45) = strlen( t15 ).
      t14 = t15.
      IF t14 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t14 TO UPPER CASE.
      ELSE.
        t14 = zlnt_runtime_uppe_91169605024d=>full( t14 ).
      ENDIF.
      DATA(t46) = t2.
      t13 = xsdbool( t14 = t46 ).
      IF t13 = abap_true.
        DATA t47 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
        CLEAR t47.
        DATA(t48) = abap_true.
        IF t48 = abap_true.
          DATA(t49) = t8.
          t47 = t49.
        ELSE.
          DATA t50 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          CLEAR t50.
          t47 = t50.
        ENDIF.
        result = t47.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t51 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    CLEAR t51.
    result = t51.

  ENDMETHOD.

  METHOD list_form_definitions.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t2) = me->parsed.
    t1 = t2->forms.
    result = t1.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d766_a8d695dd1092.
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~list_interface_definitions.
    result = me->list_interface_definitions( ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~gt_intrfc_dfntn_by_nm.
    result = me->gt_intrfc_dfntn_by_nm( i_name = i_name ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~list_class_definitions.
    result = me->list_class_definitions( ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~get_class_definition_by_name.
    result = me->get_class_definition_by_name( i_name = i_name ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~list_form_definitions.
    result = me->list_form_definitions( ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~list_class_implementations.
    result = me->list_class_implementations( ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~gt_clss_implmnttn_by_nm.
    result = me->gt_clss_implmnttn_by_nm( i_name = i_name ).
  ENDMETHOD.
ENDCLASS.
