* TS: node_modules/vscode-languageserver-types/lib/umd/main.d.ts.module module
CLASS zcl_lnt_main_d_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA ns TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLASS-DATA zlnt_builtin_init_13c3051ba199 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_b51b0369cabd.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
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
    DATA(t1) = NEW zlnt_runtime_map__a5ffc3d163a5(  ).
    zcl_lnt_main_d_module=>ns = t1.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_a63becc74831=>zlnt_member_d1_2d6b79a5b052ba.
  ENDMETHOD.
ENDCLASS.
