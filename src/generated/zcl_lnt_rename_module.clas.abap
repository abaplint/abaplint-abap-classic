* TS: src/lsp/rename.ts.module module
CLASS zcl_lnt_rename_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA rename_type_namespace TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLASS-DATA zlnt_builtin_init_ddf8139b1567 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_a971b5677c96.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rename_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_a971b5677c96.
    IF zlnt_builtin_init_ddf8139b1567 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_ddf8139b1567 = abap_true.
    IF zcl_lnt_rename_module=>zlnt_builtin_init_ddf8139b1567 = abap_false.
      zcl_lnt_rename_module=>zlnt_builtin_init_a971b5677c96( ).
    ENDIF.
    zcl_lnt_rename_module=>rename_type_namespace = NEW zlnt_runtime_map__abd6fd794ffb( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t3 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_rename_module=>zlnt_builtin_init_ddf8139b1567 = abap_false.
      zcl_lnt_rename_module=>zlnt_builtin_init_a971b5677c96( ).
    ENDIF.
    t3 = zcl_lnt_rename_module=>rename_type_namespace.
    DATA(t4) = |1|.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t6) = |GlobalClass|.
    CREATE OBJECT t5.
    t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t5->sval = t6.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t7 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t8 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_rename_module=>zlnt_builtin_init_ddf8139b1567 = abap_false.
      zcl_lnt_rename_module=>zlnt_builtin_init_a971b5677c96( ).
    ENDIF.
    t8 = zcl_lnt_rename_module=>rename_type_namespace.
    DATA(t9) = |2|.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = |Variable|.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = t11.
    t7 = t8->set( p0 = t9 p1 = t10 ).
    DATA t12 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t13 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_rename_module=>zlnt_builtin_init_ddf8139b1567 = abap_false.
      zcl_lnt_rename_module=>zlnt_builtin_init_a971b5677c96( ).
    ENDIF.
    t13 = zcl_lnt_rename_module=>rename_type_namespace.
    DATA(t14) = |3|.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t16) = |GlobalInterface|.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = t16.
    t12 = t13->set( p0 = t14 p1 = t15 ).
    DATA t17 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t18 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_rename_module=>zlnt_builtin_init_ddf8139b1567 = abap_false.
      zcl_lnt_rename_module=>zlnt_builtin_init_a971b5677c96( ).
    ENDIF.
    t18 = zcl_lnt_rename_module=>rename_type_namespace.
    DATA(t19) = |4|.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t21) = |Method|.
    CREATE OBJECT t20.
    t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t20->sval = t21.
    t17 = t18->set( p0 = t19 p1 = t20 ).
    DATA t22 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t23 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_rename_module=>zlnt_builtin_init_ddf8139b1567 = abap_false.
      zcl_lnt_rename_module=>zlnt_builtin_init_a971b5677c96( ).
    ENDIF.
    t23 = zcl_lnt_rename_module=>rename_type_namespace.
    DATA(t24) = |GlobalClass|.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t26) = 1.
    CREATE OBJECT t25.
    t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t25->nval = t26.
    t22 = t23->set( p0 = t24 p1 = t25 ).
    DATA t27 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t28 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_rename_module=>zlnt_builtin_init_ddf8139b1567 = abap_false.
      zcl_lnt_rename_module=>zlnt_builtin_init_a971b5677c96( ).
    ENDIF.
    t28 = zcl_lnt_rename_module=>rename_type_namespace.
    DATA(t29) = |Variable|.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t31) = 2.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t30->nval = t31.
    t27 = t28->set( p0 = t29 p1 = t30 ).
    DATA t32 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t33 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_rename_module=>zlnt_builtin_init_ddf8139b1567 = abap_false.
      zcl_lnt_rename_module=>zlnt_builtin_init_a971b5677c96( ).
    ENDIF.
    t33 = zcl_lnt_rename_module=>rename_type_namespace.
    DATA(t34) = |GlobalInterface|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = 3.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t35->nval = t36.
    t32 = t33->set( p0 = t34 p1 = t35 ).
    DATA t37 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t38 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_rename_module=>zlnt_builtin_init_ddf8139b1567 = abap_false.
      zcl_lnt_rename_module=>zlnt_builtin_init_a971b5677c96( ).
    ENDIF.
    t38 = zcl_lnt_rename_module=>rename_type_namespace.
    DATA(t39) = |Method|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t41) = 4.
    CREATE OBJECT t40.
    t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t40->nval = t41.
    t37 = t38->set( p0 = t39 p1 = t40 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1971_914428a1f328.
  ENDMETHOD.
ENDCLASS.
