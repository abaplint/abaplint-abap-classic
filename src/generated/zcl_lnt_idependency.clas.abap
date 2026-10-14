* TS: src/_config.ts:32:1 IDependency
CLASS zcl_lnt_idependency DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_builtin_mate_4bfafaf0b5ed TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA url_01ab TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA branch TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA folder_5143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA files TYPE string.
    METHODS constructor IMPORTING i_url_8ce1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_branch TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_folder_5c67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_files TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_idependency IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_url_8ce1 ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_branch ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_folder_5c67 ).
    DATA(t4) = i_files.
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    me->url_01ab = t5.
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->branch = t6.
    DATA(t7) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    me->folder_5143 = t7.
    DATA(t8) = t4.
    me->files = t8.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1_2d6b79a5b052ba.
  ENDMETHOD.
ENDCLASS.
