* TS: src/pretty_printer/indentation_options.ts:1:1 IIndentationOptions
CLASS zcl_lnt_iindentation_options DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA align_try_catch TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA slctn_scrn_blck_indnttn TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA global_class_skip_first TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS constructor IMPORTING i_align_try_catch TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_slctn_scrn_blck_indnttn TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_global_class_skip_first TYPE REF TO
    zlnt_runtime_opti_7f2541396f43 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iindentation_options IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_7f2541396f43( i_align_try_catch ).
    DATA(t2) = CAST zlnt_runtime_opti_7f2541396f43( i_slctn_scrn_blck_indnttn ).
    DATA(t3) = CAST zlnt_runtime_opti_7f2541396f43( i_global_class_skip_first ).
    DATA(t4) = CAST zlnt_runtime_opti_7f2541396f43( t1 ).
    me->align_try_catch = t4.
    DATA(t5) = CAST zlnt_runtime_opti_7f2541396f43( t2 ).
    me->slctn_scrn_blck_indnttn = t5.
    DATA(t6) = CAST zlnt_runtime_opti_7f2541396f43( t3 ).
    me->global_class_skip_first = t6.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1276_7ddf35ef50dd.
  ENDMETHOD.
ENDCLASS.
