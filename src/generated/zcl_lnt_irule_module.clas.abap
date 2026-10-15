* TS: src/rules/_irule.ts.module module
CLASS zcl_lnt_irule_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA rule_tag_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA zlnt_builtin_init_b4b858c11bcd TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_65c8e36e282f.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_irule_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_65c8e36e282f.
    IF zlnt_builtin_init_b4b858c11bcd = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_b4b858c11bcd = abap_true.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    DATA(t1) = NEW zlnt_runtime_map__a1006b231250( ).
    zcl_lnt_irule_module=>rule_tag_namespace = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t3.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t3 = zcl_lnt_irule_module=>rule_tag_namespace.
    DATA(t4) = |Experimental|.
    DATA(t5) = |Experimental|.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t7.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t7 = zcl_lnt_irule_module=>rule_tag_namespace.
    DATA(t8) = |DeprecationCandidate|.
    DATA(t9) = |DeprecationCandidate|.
    t6 = t7->set( p0 = t8 p1 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t11.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t11 = zcl_lnt_irule_module=>rule_tag_namespace.
    DATA(t12) = |Upport|.
    DATA(t13) = |Upport|.
    t10 = t11->set( p0 = t12 p1 = t13 ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t15.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t15 = zcl_lnt_irule_module=>rule_tag_namespace.
    DATA(t16) = |Downport|.
    DATA(t17) = |Downport|.
    t14 = t15->set( p0 = t16 p1 = t17 ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t19.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t19 = zcl_lnt_irule_module=>rule_tag_namespace.
    DATA(t20) = |Whitespace|.
    DATA(t21) = |Whitespace|.
    t18 = t19->set( p0 = t20 p1 = t21 ).
    DATA t22 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t23.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t23 = zcl_lnt_irule_module=>rule_tag_namespace.
    DATA(t24) = |Naming|.
    DATA(t25) = |Naming|.
    t22 = t23->set( p0 = t24 p1 = t25 ).
    DATA t26 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t27.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t27 = zcl_lnt_irule_module=>rule_tag_namespace.
    DATA(t28) = |Quickfix|.
    DATA(t29) = |Quickfix|.
    t26 = t27->set( p0 = t28 p1 = t29 ).
    DATA t30 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t31.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t31 = zcl_lnt_irule_module=>rule_tag_namespace.
    DATA(t32) = |Performance|.
    DATA(t33) = |Performance|.
    t30 = t31->set( p0 = t32 p1 = t33 ).
    DATA t34 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t35.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t35 = zcl_lnt_irule_module=>rule_tag_namespace.
    DATA(t36) = |Syntax|.
    DATA(t37) = |Syntax|.
    t34 = t35->set( p0 = t36 p1 = t37 ).
    DATA t38 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t39.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t39 = zcl_lnt_irule_module=>rule_tag_namespace.
    DATA(t40) = |Security|.
    DATA(t41) = |Security|.
    t38 = t39->set( p0 = t40 p1 = t41 ).
    DATA t42 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t43.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t43 = zcl_lnt_irule_module=>rule_tag_namespace.
    DATA(t44) = |Styleguide|.
    DATA(t45) = |Styleguide|.
    t42 = t43->set( p0 = t44 p1 = t45 ).
    DATA t46 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t47.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t47 = zcl_lnt_irule_module=>rule_tag_namespace.
    DATA(t48) = |SingleFile|.
    DATA(t49) = |SingleFile|.
    t46 = t47->set( p0 = t48 p1 = t49 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1975_79bd221093ad.
  ENDMETHOD.
ENDCLASS.
