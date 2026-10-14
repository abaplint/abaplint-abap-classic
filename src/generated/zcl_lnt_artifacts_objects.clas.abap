* TS: src/artifacts_objects.ts:5:1 ArtifactsObjects
CLASS zcl_lnt_artifacts_objects DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA object_map TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-METHODS new_object IMPORTING i_name TYPE string i_type_9913 TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_object.
    CLASS-METHODS build_object_map.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_artifacts_objects IMPLEMENTATION.
  METHOD new_object.
    DATA(t1) = i_name.
    DATA(t2) = i_type_9913.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t2.
    DATA(t5) = |CLAS|.
    t3 = xsdbool( t4 = t5 ).
    IF t3 = abap_true.
      DATA t6 TYPE REF TO zif_lnt_object.
      DATA t7 TYPE REF TO zcl_lnt_class.
      DATA(t8) = t1.
      t7 = NEW zcl_lnt_class( i_name = t8 ).
      t6 ?= t7.
      result = t6.
      RETURN.
    ENDIF.
    DATA t9 TYPE abap_bool.
    DATA(t10) = t2.
    DATA(t11) = |INTF|.
    t9 = xsdbool( t10 = t11 ).
    IF t9 = abap_true.
      DATA t12 TYPE REF TO zif_lnt_object.
      DATA t13 TYPE REF TO zcl_lnt_ob_interface.
      DATA(t14) = t1.
      t13 = NEW zcl_lnt_ob_interface( i_name = t14 ).
      t12 ?= t13.
      result = t12.
      RETURN.
    ENDIF.
    DATA t15 TYPE abap_bool.
    DATA(t16) = t2.
    DATA(t17) = |PROG|.
    t15 = xsdbool( t16 = t17 ).
    IF t15 = abap_true.
      DATA t18 TYPE REF TO zif_lnt_object.
      DATA t19 TYPE REF TO zcl_lnt_ob_program.
      DATA(t20) = t1.
      t19 = NEW zcl_lnt_ob_program( i_name = t20 ).
      t18 ?= t19.
      result = t18.
      RETURN.
    ENDIF.
    DATA t21 TYPE abap_bool.
    DATA(t22) = t2.
    DATA(t23) = |TYPE|.
    t21 = xsdbool( t22 = t23 ).
    IF t21 = abap_true.
      DATA t24 TYPE REF TO zif_lnt_object.
      DATA t25 TYPE REF TO zcl_lnt_ob_type_pool.
      DATA(t26) = t1.
      t25 = NEW zcl_lnt_ob_type_pool( i_name = t26 ).
      t24 ?= t25.
      result = t24.
      RETURN.
    ENDIF.
    DATA t27 TYPE abap_bool.
    DATA(t28) = t2.
    DATA(t29) = |XSLT|.
    t27 = xsdbool( t28 = t29 ).
    IF t27 = abap_true.
      DATA t30 TYPE REF TO zif_lnt_object.
      DATA t31 TYPE REF TO zcl_lnt_transformation.
      DATA(t32) = t1.
      t31 = NEW zcl_lnt_transformation( i_name = t32 ).
      t30 ?= t31.
      result = t30.
      RETURN.
    ENDIF.
    DATA(t33) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t34) = |src/artifacts_objects.ts:8|.
    t33->source_location = t34.
    RAISE EXCEPTION t33.
  ENDMETHOD.
  METHOD build_object_map.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/artifacts_objects.ts:20|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1045_53bb9238e4eb.
  ENDMETHOD.
ENDCLASS.
