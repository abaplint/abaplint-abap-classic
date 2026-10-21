* TS: node_modules/vscode-languageserver-types/lib/umd/main.d.ts.module module
CLASS zcl_lnt_main_d_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA ns TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLASS-DATA semantic_token_types_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA zlnt_builtin_init_13c3051ba199 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_b51b0369cabd.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_main_d_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_b51b0369cabd.
    IF zlnt_builtin_init_13c3051ba199 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_13c3051ba199 = abap_true.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    zcl_lnt_main_d_module=>ns = NEW zlnt_runtime_map__a5ffc3d163a5( ).
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    zcl_lnt_main_d_module=>semantic_token_types_namespace = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t3 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t3 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |namespace| p1 = |namespace| ).
    DATA t7 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t7 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |type| p1 = |type| ).
    DATA t11 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t11 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |class| p1 = |class| ).
    DATA t15 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t15 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |enum| p1 = |enum| ).
    DATA t19 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t19 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |interface| p1 = |interface| ).
    DATA t23 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t23 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |struct| p1 = |struct| ).
    DATA t27 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t27 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |typeParameter| p1 = |typeParameter| ).
    DATA t31 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t31 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |parameter| p1 = |parameter| ).
    DATA t35 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t35 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |variable| p1 = |variable| ).
    DATA t39 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t39 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |property| p1 = |property| ).
    DATA t43 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t43 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |enumMember| p1 = |enumMember| ).
    DATA t47 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t47 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |event| p1 = |event| ).
    DATA t51 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t51 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |function| p1 = |function| ).
    DATA t55 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t55 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |method| p1 = |method| ).
    DATA t59 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t59 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |macro| p1 = |macro| ).
    DATA t63 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t63 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |keyword| p1 = |keyword| ).
    DATA t67 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t67 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |modifier| p1 = |modifier| ).
    DATA t71 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t71 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |comment| p1 = |comment| ).
    DATA t75 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t75 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |string| p1 = |string| ).
    DATA t79 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t79 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |number| p1 = |number| ).
    DATA t83 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t83 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |regexp| p1 = |regexp| ).
    DATA t87 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t87 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |operator| p1 = |operator| ).
    DATA t91 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t91 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |decorator| p1 = |decorator| ).
    DATA t95 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
      zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
    ENDIF.
    t95 = zcl_lnt_main_d_module=>semantic_token_types_namespace->set( p0 = |label| p1 = |label| ).
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
    result = zlnt_runtime_desc_a63becc74831=>zlnt_member_d12_bad132cea1e854.
  ENDMETHOD.
ENDCLASS.
