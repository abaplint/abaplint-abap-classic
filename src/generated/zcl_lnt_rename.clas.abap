* TS: src/lsp/rename.ts:29:1 Rename
CLASS zcl_lnt_rename DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS prepare_rename IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms RETURNING VALUE(result) TYPE REF TO zcl_lnt_iprepare_result.
    METHODS rename IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_irename_params RETURNING VALUE(result) TYPE REF TO object.
    METHODS rename_variable IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_irename_params RETURNING VALUE(result) TYPE REF TO object.
    METHODS rename_method IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_irename_params RETURNING VALUE(result) TYPE REF TO object.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rename IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = CAST zif_lnt_registry( t1 ).
    me->reg = t2.
  ENDMETHOD.
  METHOD prepare_rename.
    DATA(t1) = CAST zcl_lnt_itxt_dcmnt_pstn_prms( i_params_4c59 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/rename.ts:36|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD rename.
    DATA(t1) = CAST zcl_lnt_irename_params( i_params_4c59 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/rename.ts:71|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD rename_variable.
    DATA(t1) = CAST zcl_lnt_irename_params( i_params_4c59 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/rename.ts:93|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD rename_method.
    DATA(t1) = CAST zcl_lnt_irename_params( i_params_4c59 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/rename.ts:104|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1078_337e43e74a5f.
  ENDMETHOD.
ENDCLASS.
