* TS: src/version.ts:192:61 shape.793ddc3519b3468e2dd901bdf81ffc88b4d03d99afc7dedb8390b9cb8cee7778
CLASS zcl_lnt_shape_ef834e92 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA v700 TYPE REF TO zcl_lnt_abap_release.
    DATA v702 TYPE REF TO zcl_lnt_abap_release.
    DATA v740sp02 TYPE REF TO zcl_lnt_abap_release.
    DATA v740sp05 TYPE REF TO zcl_lnt_abap_release.
    DATA v740sp08 TYPE REF TO zcl_lnt_abap_release.
    DATA v750 TYPE REF TO zcl_lnt_abap_release.
    DATA v751 TYPE REF TO zcl_lnt_abap_release.
    DATA v752 TYPE REF TO zcl_lnt_abap_release.
    DATA v753 TYPE REF TO zcl_lnt_abap_release.
    DATA v754 TYPE REF TO zcl_lnt_abap_release.
    DATA v755 TYPE REF TO zcl_lnt_abap_release.
    DATA v756 TYPE REF TO zcl_lnt_abap_release.
    DATA v757 TYPE REF TO zcl_lnt_abap_release.
    DATA v758 TYPE REF TO zcl_lnt_abap_release.
    DATA v816 TYPE REF TO zcl_lnt_abap_release.
    DATA cloud_f2f0 TYPE REF TO zcl_lnt_abap_release.
    DATA open_abap TYPE REF TO zcl_lnt_abap_release.
    METHODS constructor IMPORTING i_v700 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v702 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v740sp02 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v740sp05 TYPE REF TO zcl_lnt_abap_release OPTIONAL
    i_v740sp08 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v750 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v751 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v752 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v753 TYPE REF TO
    zcl_lnt_abap_release OPTIONAL i_v754 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v755 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v756 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v757 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v758
    TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v816 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_cloud_a4f6 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_open_abap TYPE REF TO zcl_lnt_abap_release OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_ef834e92 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_abap_release( i_v700 ).
    DATA(t2) = CAST zcl_lnt_abap_release( i_v702 ).
    DATA(t3) = CAST zcl_lnt_abap_release( i_v740sp02 ).
    DATA(t4) = CAST zcl_lnt_abap_release( i_v740sp05 ).
    DATA(t5) = CAST zcl_lnt_abap_release( i_v740sp08 ).
    DATA(t6) = CAST zcl_lnt_abap_release( i_v750 ).
    DATA(t7) = CAST zcl_lnt_abap_release( i_v751 ).
    DATA(t8) = CAST zcl_lnt_abap_release( i_v752 ).
    DATA(t9) = CAST zcl_lnt_abap_release( i_v753 ).
    DATA(t10) = CAST zcl_lnt_abap_release( i_v754 ).
    DATA(t11) = CAST zcl_lnt_abap_release( i_v755 ).
    DATA(t12) = CAST zcl_lnt_abap_release( i_v756 ).
    DATA(t13) = CAST zcl_lnt_abap_release( i_v757 ).
    DATA(t14) = CAST zcl_lnt_abap_release( i_v758 ).
    DATA(t15) = CAST zcl_lnt_abap_release( i_v816 ).
    DATA(t16) = CAST zcl_lnt_abap_release( i_cloud_a4f6 ).
    DATA(t17) = CAST zcl_lnt_abap_release( i_open_abap ).
    DATA t18 TYPE REF TO zcl_lnt_abap_release.
    DATA(t19) = CAST zcl_lnt_abap_release( t1 ).
    t18 = t19.
    me->v700 = t18.
    DATA t20 TYPE REF TO zcl_lnt_abap_release.
    DATA(t21) = CAST zcl_lnt_abap_release( t2 ).
    t20 = t21.
    me->v702 = t20.
    DATA t22 TYPE REF TO zcl_lnt_abap_release.
    DATA(t23) = CAST zcl_lnt_abap_release( t3 ).
    t22 = t23.
    me->v740sp02 = t22.
    DATA t24 TYPE REF TO zcl_lnt_abap_release.
    DATA(t25) = CAST zcl_lnt_abap_release( t4 ).
    t24 = t25.
    me->v740sp05 = t24.
    DATA t26 TYPE REF TO zcl_lnt_abap_release.
    DATA(t27) = CAST zcl_lnt_abap_release( t5 ).
    t26 = t27.
    me->v740sp08 = t26.
    DATA t28 TYPE REF TO zcl_lnt_abap_release.
    DATA(t29) = CAST zcl_lnt_abap_release( t6 ).
    t28 = t29.
    me->v750 = t28.
    DATA t30 TYPE REF TO zcl_lnt_abap_release.
    DATA(t31) = CAST zcl_lnt_abap_release( t7 ).
    t30 = t31.
    me->v751 = t30.
    DATA t32 TYPE REF TO zcl_lnt_abap_release.
    DATA(t33) = CAST zcl_lnt_abap_release( t8 ).
    t32 = t33.
    me->v752 = t32.
    DATA t34 TYPE REF TO zcl_lnt_abap_release.
    DATA(t35) = CAST zcl_lnt_abap_release( t9 ).
    t34 = t35.
    me->v753 = t34.
    DATA t36 TYPE REF TO zcl_lnt_abap_release.
    DATA(t37) = CAST zcl_lnt_abap_release( t10 ).
    t36 = t37.
    me->v754 = t36.
    DATA t38 TYPE REF TO zcl_lnt_abap_release.
    DATA(t39) = CAST zcl_lnt_abap_release( t11 ).
    t38 = t39.
    me->v755 = t38.
    DATA t40 TYPE REF TO zcl_lnt_abap_release.
    DATA(t41) = CAST zcl_lnt_abap_release( t12 ).
    t40 = t41.
    me->v756 = t40.
    DATA t42 TYPE REF TO zcl_lnt_abap_release.
    DATA(t43) = CAST zcl_lnt_abap_release( t13 ).
    t42 = t43.
    me->v757 = t42.
    DATA t44 TYPE REF TO zcl_lnt_abap_release.
    DATA(t45) = CAST zcl_lnt_abap_release( t14 ).
    t44 = t45.
    me->v758 = t44.
    DATA t46 TYPE REF TO zcl_lnt_abap_release.
    DATA(t47) = CAST zcl_lnt_abap_release( t15 ).
    t46 = t47.
    me->v816 = t46.
    DATA t48 TYPE REF TO zcl_lnt_abap_release.
    DATA(t49) = CAST zcl_lnt_abap_release( t16 ).
    t48 = t49.
    me->cloud_f2f0 = t48.
    DATA t50 TYPE REF TO zcl_lnt_abap_release.
    DATA(t51) = CAST zcl_lnt_abap_release( t17 ).
    t50 = t51.
    me->open_abap = t50.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1898_996e4b9bd14e.
  ENDMETHOD.
ENDCLASS.
