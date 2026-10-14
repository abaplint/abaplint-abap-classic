* TS: src/cds/expressions/index.ts.module module
CLASS zcl_lnt_cd_index_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA ns TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLASS-DATA zlnt_builtin_init_163eed938170 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_c6604f73cce8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cd_index_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_c6604f73cce8.
    IF zlnt_builtin_init_163eed938170 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_163eed938170 = abap_true.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    DATA(t1) = NEW zlnt_runtime_map__a5ffc3d163a5( ).
    zcl_lnt_cd_index_module=>ns = t1.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1901_db36792a769a.
  ENDMETHOD.
ENDCLASS.
