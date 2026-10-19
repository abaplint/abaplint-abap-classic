* TS: src/cds/cds_determine_types.ts:6:1 CDSDetermineTypes
CLASS zcl_lnt_cds_determine_types DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS parse_type IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_parsed_data TYPE REF TO zcl_lnt_parsed_data_definition i_ddls_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_determine_types IMPLEMENTATION.
  METHOD parse_type.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_parsed_data.
    DATA(t3) = i_ddls_name.
    DATA t4 TYPE REF TO zcl_lnt_ddic.
    DATA t5 TYPE REF TO zcl_lnt_ddic.
    t5 = NEW zcl_lnt_ddic( i_reg_f149 = t1 ).
    t4 = t5.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zcl_lnt_parsed_data_definition.
    t11 = t2.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t14) = xsdbool( t11 IS INITIAL ).
    IF t14 = abap_true.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t17 = t11->fields_464c.
      t13 = t17.
    ENDIF.
    t9 = t13.
    DATA t19 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t20) = xsdbool( t9 IS INITIAL ).
    IF t20 = abap_true.
    ELSE.
      DATA t23 TYPE f.
      DATA t24 TYPE i.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t25 = t9.
      t25->load( ).
      t24 = lines( t25->items ).
      t23 = t24.
      DATA(t27) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t27->has = abap_true.
      t27->value = t23.
      t19 = t27.
    ENDIF.
    t8 = t19.
    DATA t28 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t30) = CONV f( 0 ).
    DATA(t31) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t31->has = abap_true.
    t31->value = t30.
    t28 = t31.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = VALUE abap_bool( ).
    IF t8 IS BOUND.
      t33 = t8->has.
    ENDIF.
    IF t28 IS BOUND.
      t34 = t28->has.
    ENDIF.
    IF t33 = t34.
      IF t33 = abap_false.
        t7 = abap_true.
      ELSE.
        IF t8->number_special <> 0 OR t28->number_special <> 0.
          t7 = xsdbool( t8->number_special = t28->number_special AND t8->number_special <> 1 ).
        ELSE.
          t7 = xsdbool( t8->value = t28->value ).
        ENDIF.
      ENDIF.
    ENDIF.
    IF t7 = abap_true.
      DATA t35 TYPE REF TO zcl_lnt_void_type.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t38) = |DDLS:todo|.
      DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t39->has = abap_true.
      t39->value = t38.
      t36 = t39.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t35 = zcl_lnt_void_type=>get_db65( i_voided = t36 i_qualified_name = t41 ).
      result = t35.
      RETURN.
    ELSE.
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t43.
      t42 = t43.
      DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t47 TYPE REF TO zcl_lnt_parsed_data_definition.
      t47 = t2.
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t50) = xsdbool( t47 IS INITIAL ).
      IF t50 = abap_true.
      ELSE.
        DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t53 = t47->fields_464c.
        t49 = t53.
      ENDIF.
      t45 = t49.
      DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t56 TYPE abap_bool.
      t56 = xsdbool( t45 IS BOUND ).
      IF t56 = abap_true.
        t55 = t45.
      ELSE.
        DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t60.
        t55 = t60.
      ENDIF.
      t44 = t55.
      DATA t61 TYPE REF TO zcl_lnt_shape_5383185c.
      DATA t62 TYPE REF TO object.
      DATA(t63) = VALUE i( ).
      DO.
        t44->load( ).
        IF t63 >= lines( t44->items ).
          EXIT.
        ENDIF.
        CLEAR t62.
        READ TABLE t44->items INDEX t63 + 1 INTO t62.
        t63 = t63 + 1.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t64.
        CLEAR t61.
        IF t62 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t64 ?= t62.
          DATA t65 TYPE REF TO object.
          t65 = t64->as_ref( ).
          t61 ?= t65.
        ELSE.
          t61 ?= t62.
        ENDIF.
        DATA t66 TYPE abap_bool.
        DATA t67 TYPE string.
        t67 = t61->prefix.
        DATA(t69) = ||.
        t66 = xsdbool( t67 <> t69 ).
        IF t66 = abap_true.
          DATA(t70) = VALUE string( ).
          DATA t71 TYPE string.
          DATA t72 TYPE string.
          t72 = t61->prefix.
          DATA(t74) = strlen( t72 ).
          t71 = t72.
          IF t71 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t71 TO UPPER CASE.
          ELSE.
            t71 = zlnt_runtime_uppe_91169605024d=>full( t71 ).
          ENDIF.
          t70 = t71.
          DATA t75 TYPE REF TO zcl_lnt_shape_35310764.
          CLEAR t75.
          DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t78 = t2->sources.
          t77 = t78.
          DATA t80 TYPE i.
          DATA t81 TYPE i.
          t77->load( ).
          t81 = lines( t77->items ).
          t80 = t81.
          DATA t83 TYPE i.
          t83 = 0.
          DATA t85 TYPE REF TO zcl_lnt_shape_35310764.
          CLEAR t85.
          DO.
            DATA t87 TYPE abap_bool.
            t87 = xsdbool( t83 < t80 ).
            IF t87 = abap_false.
              EXIT.
            ENDIF.
            DATA t90 TYPE REF TO zcl_lnt_shape_35310764.
            CLEAR t90.
            DATA t92 TYPE REF TO zcl_lnt_shape_35310764.
            CLEAR t92.
            DATA t95 TYPE REF TO object.
            t95 = t77->get( p0 = t83 ).
            DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t96.
            CLEAR t92.
            IF t95 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t96 ?= t95.
              DATA t97 TYPE REF TO object.
              t97 = t96->as_ref( ).
              t92 ?= t97.
            ELSE.
              t92 ?= t95.
            ENDIF.
            t90 = t92.
            DATA(t98) = VALUE abap_bool( ).
            DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t99.
            DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t101 = t90->as.
            t100 = t101.
            DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t103.
            DATA(t104) = VALUE abap_bool( ).
            IF t100 IS INITIAL.
              t104 = abap_true.
            ELSEIF t100->has = abap_false.
              t104 = abap_true.
            ENDIF.
            IF t104 = abap_true.
              CLEAR t103.
            ELSE.
              DATA t107 TYPE string.
              DATA t108 TYPE string.
              t108 = t100->value.
              DATA(t110) = strlen( t108 ).
              t107 = t108.
              IF t107 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t107 TO UPPER CASE.
              ELSE.
                t107 = zlnt_runtime_uppe_91169605024d=>full( t107 ).
              ENDIF.
              DATA(t111) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t111->has = abap_true.
              t111->value = t107.
              t103 = t111.
            ENDIF.
            t99 = t103.
            DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t112.
            DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t115->has = abap_true.
            t115->value = t70.
            t112 = t115.
            DATA(t117) = VALUE abap_bool( ).
            DATA(t118) = VALUE abap_bool( ).
            IF t99 IS BOUND.
              t117 = t99->has.
            ENDIF.
            IF t112 IS BOUND.
              t118 = t112->has.
            ENDIF.
            IF t117 = t118.
              IF t117 = abap_false.
                t98 = abap_true.
              ELSEIF t99->value = t112->value.
                t98 = abap_true.
              ENDIF.
            ENDIF.
            IF t98 = abap_true.
              t85 = t90.
              EXIT.
            ENDIF.
            DATA t123 TYPE i.
            DATA(t125) = 1.
            t123 = t83 + t125.
            t83 = t123.
          ENDDO.
          t75 = t85.
          DATA(t127) = VALUE abap_bool( ).
          DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t128.
          DATA t130 TYPE REF TO zcl_lnt_shape_35310764.
          t130 = t75.
          DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t132.
          DATA(t133) = xsdbool( t130 IS INITIAL ).
          IF t133 = abap_true.
            CLEAR t132.
          ELSE.
            DATA t136 TYPE string.
            DATA t137 TYPE REF TO zcl_lnt_shape_35310764.
            t137 = t130.
            t136 = t137->name.
            DATA(t139) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t139->has = abap_true.
            t139->value = t136.
            t132 = t139.
          ENDIF.
          t128 = t132.
          DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t140.
          DATA(t142) = VALUE abap_bool( ).
          IF t128 IS INITIAL.
            t142 = abap_true.
          ELSEIF t128->has = abap_false.
            t142 = abap_true.
          ENDIF.
          t127 = t142.
          IF t127 = abap_true.
            DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t146 = t2->sources.
            t145 = t146.
            DATA t148 TYPE i.
            DATA t149 TYPE i.
            t145->load( ).
            t149 = lines( t145->items ).
            t148 = t149.
            DATA t151 TYPE i.
            t151 = 0.
            DATA t153 TYPE REF TO zcl_lnt_shape_35310764.
            CLEAR t153.
            DO.
              DATA t155 TYPE abap_bool.
              t155 = xsdbool( t151 < t148 ).
              IF t155 = abap_false.
                EXIT.
              ENDIF.
              DATA t158 TYPE REF TO zcl_lnt_shape_35310764.
              CLEAR t158.
              DATA t160 TYPE REF TO zcl_lnt_shape_35310764.
              CLEAR t160.
              DATA t163 TYPE REF TO object.
              t163 = t145->get( p0 = t151 ).
              DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t164.
              CLEAR t160.
              IF t163 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t164 ?= t163.
                DATA t165 TYPE REF TO object.
                t165 = t164->as_ref( ).
                t160 ?= t165.
              ELSE.
                t160 ?= t163.
              ENDIF.
              t158 = t160.
              DATA(t166) = VALUE abap_bool( ).
              DATA t167 TYPE string.
              DATA t168 TYPE string.
              t168 = t158->name.
              DATA(t170) = strlen( t168 ).
              t167 = t168.
              IF t167 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t167 TO UPPER CASE.
              ELSE.
                t167 = zlnt_runtime_uppe_91169605024d=>full( t167 ).
              ENDIF.
              t166 = xsdbool( t167 = t70 ).
              IF t166 = abap_true.
                t153 = t158.
                EXIT.
              ENDIF.
              DATA t176 TYPE i.
              DATA(t178) = 1.
              t176 = t151 + t178.
              t151 = t176.
            ENDDO.
            t75 = t153.
          ENDIF.
          DATA(t180) = VALUE abap_bool( ).
          DATA(t181) = VALUE abap_bool( ).
          DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t182.
          DATA t184 TYPE REF TO zcl_lnt_shape_35310764.
          t184 = t75.
          DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t186.
          DATA(t187) = xsdbool( t184 IS INITIAL ).
          IF t187 = abap_true.
            CLEAR t186.
          ELSE.
            DATA t190 TYPE string.
            DATA t191 TYPE REF TO zcl_lnt_shape_35310764.
            t191 = t184.
            t190 = t191->name.
            DATA(t193) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t193->has = abap_true.
            t193->value = t190.
            t186 = t193.
          ENDIF.
          t182 = t186.
          DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t194.
          DATA(t196) = VALUE abap_bool( ).
          IF t182 IS INITIAL.
            t196 = abap_true.
          ELSEIF t182->has = abap_false.
            t196 = abap_true.
          ENDIF.
          t181 = t196.
          t180 = t181.
          IF t181 = abap_true.
            DATA(t198) = VALUE abap_bool( ).
            DATA(t199) = VALUE abap_bool( ).
            DATA t200 TYPE REF TO zcl_lnt_shape_35310764.
            CLEAR t200.
            DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t202 = t2->associations.
            t201 = t202.
            DATA t204 TYPE i.
            DATA t205 TYPE i.
            t201->load( ).
            t205 = lines( t201->items ).
            t204 = t205.
            DATA t207 TYPE i.
            t207 = 0.
            DATA t209 TYPE REF TO zcl_lnt_shape_35310764.
            CLEAR t209.
            DO.
              DATA t211 TYPE abap_bool.
              t211 = xsdbool( t207 < t204 ).
              IF t211 = abap_false.
                EXIT.
              ENDIF.
              DATA t214 TYPE REF TO zcl_lnt_shape_35310764.
              CLEAR t214.
              DATA t216 TYPE REF TO zcl_lnt_shape_35310764.
              CLEAR t216.
              DATA t219 TYPE REF TO object.
              t219 = t201->get( p0 = t207 ).
              DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t220.
              CLEAR t216.
              IF t219 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t220 ?= t219.
                DATA t221 TYPE REF TO object.
                t221 = t220->as_ref( ).
                t216 ?= t221.
              ELSE.
                t216 ?= t219.
              ENDIF.
              t214 = t216.
              DATA(t222) = VALUE abap_bool( ).
              DATA t223 TYPE string.
              DATA t224 TYPE string.
              t224 = t214->name.
              DATA(t226) = strlen( t224 ).
              t223 = t224.
              IF t223 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t223 TO UPPER CASE.
              ELSE.
                t223 = zlnt_runtime_uppe_91169605024d=>full( t223 ).
              ENDIF.
              t222 = xsdbool( t223 = t70 ).
              IF t222 = abap_true.
                t209 = t214.
                EXIT.
              ENDIF.
              DATA t232 TYPE i.
              DATA(t234) = 1.
              t232 = t207 + t234.
              t207 = t232.
            ENDDO.
            t200 = t209.
            t199 = xsdbool( t200 IS BOUND ).
            t198 = t199.
            IF t199 = abap_false.
              DATA(t236) = VALUE abap_bool( ).
              DATA t237 TYPE REF TO zcl_lnt_shape_35310764.
              CLEAR t237.
              DATA t238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t239 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t239 = t2->associations.
              t238 = t239.
              DATA t241 TYPE i.
              DATA t242 TYPE i.
              t238->load( ).
              t242 = lines( t238->items ).
              t241 = t242.
              DATA t244 TYPE i.
              t244 = 0.
              DATA t246 TYPE REF TO zcl_lnt_shape_35310764.
              CLEAR t246.
              DO.
                DATA t248 TYPE abap_bool.
                t248 = xsdbool( t244 < t241 ).
                IF t248 = abap_false.
                  EXIT.
                ENDIF.
                DATA t251 TYPE REF TO zcl_lnt_shape_35310764.
                CLEAR t251.
                DATA t253 TYPE REF TO zcl_lnt_shape_35310764.
                CLEAR t253.
                DATA t256 TYPE REF TO object.
                t256 = t238->get( p0 = t244 ).
                DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t257.
                CLEAR t253.
                IF t256 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t257 ?= t256.
                  DATA t258 TYPE REF TO object.
                  t258 = t257->as_ref( ).
                  t253 ?= t258.
                ELSE.
                  t253 ?= t256.
                ENDIF.
                t251 = t253.
                DATA(t259) = VALUE abap_bool( ).
                DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t260.
                DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t262 = t251->as.
                t261 = t262.
                DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t264.
                DATA(t265) = VALUE abap_bool( ).
                IF t261 IS INITIAL.
                  t265 = abap_true.
                ELSEIF t261->has = abap_false.
                  t265 = abap_true.
                ENDIF.
                IF t265 = abap_true.
                  CLEAR t264.
                ELSE.
                  DATA t268 TYPE string.
                  DATA t269 TYPE string.
                  t269 = t261->value.
                  DATA(t271) = strlen( t269 ).
                  t268 = t269.
                  IF t268 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                    TRANSLATE t268 TO UPPER CASE.
                  ELSE.
                    t268 = zlnt_runtime_uppe_91169605024d=>full( t268 ).
                  ENDIF.
                  DATA(t272) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t272->has = abap_true.
                  t272->value = t268.
                  t264 = t272.
                ENDIF.
                t260 = t264.
                DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t273.
                DATA(t276) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t276->has = abap_true.
                t276->value = t70.
                t273 = t276.
                DATA(t278) = VALUE abap_bool( ).
                DATA(t279) = VALUE abap_bool( ).
                IF t260 IS BOUND.
                  t278 = t260->has.
                ENDIF.
                IF t273 IS BOUND.
                  t279 = t273->has.
                ENDIF.
                IF t278 = t279.
                  IF t278 = abap_false.
                    t259 = abap_true.
                  ELSEIF t260->value = t273->value.
                    t259 = abap_true.
                  ENDIF.
                ENDIF.
                IF t259 = abap_true.
                  t246 = t251.
                  EXIT.
                ENDIF.
                DATA t284 TYPE i.
                DATA(t286) = 1.
                t284 = t244 + t286.
                t244 = t284.
              ENDDO.
              t237 = t246.
              t236 = xsdbool( t237 IS BOUND ).
              t198 = t236.
            ENDIF.
            t180 = t198.
          ENDIF.
          IF t180 = abap_true.
            DATA t289 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t289.
            DATA t290 TYPE string.
            DATA t291 TYPE string.
            t291 = t61->name.
            t290 = t291.
            DATA t293 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t293.
            DATA t294 TYPE REF TO zcl_lnt_void_type.
            CLEAR t294.
            DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t295.
            DATA(t297) = |DDLS:association|.
            DATA(t298) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t298->has = abap_true.
            t298->value = t297.
            t295 = t298.
            DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t300.
            t294 = zcl_lnt_void_type=>get_db65( i_voided = t295 i_qualified_name = t300 ).
            t293 = t294.
            DATA t301 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t301.
            DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t303.
            t289 = NEW zcl_lnt_istructure_component( i_name = t290 i_type_9913 = t293 i_as_include = t301 i_suffix = t303 ).
            CREATE OBJECT t289->zlnt_view_ownkeys_b0e8086400eb.
            t289->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t305.
            t289->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t305 ).
            DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t306.
            IF t289->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t289->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t306 ).
            ENDIF.
            CREATE OBJECT t289->zlnt_json_ownkeys_70e5fd461788.
            t289->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t307) = |name|.
            DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t308.
            t289->zlnt_json_ownkeys_70e5fd461788->put( p0 = t307 p1 = t308 ).
            DATA(t309) = |type|.
            DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t310.
            IF t289->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t289->zlnt_json_ownkeys_70e5fd461788->put( p0 = t309 p1 = t310 ).
            ENDIF.
            t42->load( ).
            APPEND t289 TO t42->items.
            t42->save( ).
            CONTINUE.
          ENDIF.
          DATA(t311) = VALUE abap_bool( ).
          DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t312.
          DATA t314 TYPE REF TO zcl_lnt_shape_35310764.
          t314 = t75.
          DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t316.
          DATA(t317) = xsdbool( t314 IS INITIAL ).
          IF t317 = abap_true.
            CLEAR t316.
          ELSE.
            DATA t320 TYPE string.
            DATA t321 TYPE REF TO zcl_lnt_shape_35310764.
            t321 = t314.
            t320 = t321->name.
            DATA(t323) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t323->has = abap_true.
            t323->value = t320.
            t316 = t323.
          ENDIF.
          t312 = t316.
          DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t324.
          DATA(t326) = VALUE abap_bool( ).
          IF t312 IS INITIAL.
            t326 = abap_true.
          ELSEIF t312->has = abap_false.
            t326 = abap_true.
          ENDIF.
          t311 = t326.
          IF t311 = abap_true.
            DATA(t328) = VALUE abap_bool( ).
            DATA(t330) = |_|.
            DATA(t331) = strlen( t70 ).
            DATA t332 TYPE i.
            DATA(t333) = VALUE i( ).
            DATA(t334) = VALUE string( ).
            t332 = strlen( t330 ).
            IF t332 = 0.
              t328 = abap_true.
            ELSEIF t332 <= t331.
              t333 = 0.
              t334 = t70+t333(t332).
              IF t334 = t330.
                t328 = abap_true.
              ENDIF.
            ENDIF.
            IF t328 = abap_true.
              DATA t336 TYPE REF TO zcl_lnt_istructure_component.
              CLEAR t336.
              DATA t337 TYPE string.
              DATA t338 TYPE string.
              t338 = t61->name.
              t337 = t338.
              DATA t340 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t340.
              DATA t341 TYPE REF TO zcl_lnt_void_type.
              CLEAR t341.
              DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t342.
              DATA(t344) = |DDLS:association|.
              DATA(t345) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t345->has = abap_true.
              t345->value = t344.
              t342 = t345.
              DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t347.
              t341 = zcl_lnt_void_type=>get_db65( i_voided = t342 i_qualified_name = t347 ).
              t340 = t341.
              DATA t348 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t348.
              DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t350.
              t336 = NEW zcl_lnt_istructure_component( i_name = t337 i_type_9913 = t340 i_as_include = t348 i_suffix = t350 ).
              CREATE OBJECT t336->zlnt_view_ownkeys_b0e8086400eb.
              t336->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t352.
              t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t352 ).
              DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t353.
              IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t353 ).
              ENDIF.
              CREATE OBJECT t336->zlnt_json_ownkeys_70e5fd461788.
              t336->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t354) = |name|.
              DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t355.
              t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = t354 p1 = t355 ).
              DATA(t356) = |type|.
              DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t357.
              IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = t356 p1 = t357 ).
              ENDIF.
              t42->load( ).
              APPEND t336 TO t42->items.
              t42->save( ).
              CONTINUE.
            ENDIF.
            DATA t359 TYPE REF TO zcl_lnt_istructure_component.
            DATA t360 TYPE string.
            DATA t361 TYPE string.
            t361 = t61->name.
            t360 = t361.
            DATA t363 TYPE REF TO zcl_lnt_abstract_type.
            DATA t364 TYPE REF TO zcl_lnt_unknown_type.
            DATA t365 TYPE string.
            DATA t366 TYPE string.
            DATA t367 TYPE string.
            DATA(t368) = |CDS parser error, unknown source, |.
            DATA t369 TYPE string.
            t369 = t61->name.
            DATA(t371) = strlen( t368 ).
            t367 = |{ t368 }{ t369 }|.
            DATA(t372) = |, |.
            DATA(t373) = strlen( t367 ).
            t366 = |{ t367 }{ t372 }|.
            DATA(t375) = strlen( t366 ).
            t365 = |{ t366 }{ t3 }|.
            DATA t376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t376.
            t364 = NEW zcl_lnt_unknown_type( i_error = t365 i_qualified_name = t376 ).
            t363 = t364.
            DATA t377 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t377.
            DATA t379 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t379.
            t359 = NEW zcl_lnt_istructure_component( i_name = t360 i_type_9913 = t363 i_as_include = t377 i_suffix = t379 ).
            CREATE OBJECT t359->zlnt_view_ownkeys_b0e8086400eb.
            t359->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t381.
            t359->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t381 ).
            DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t382.
            IF t359->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t359->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t382 ).
            ENDIF.
            CREATE OBJECT t359->zlnt_json_ownkeys_70e5fd461788.
            t359->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t383) = |name|.
            DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t384.
            t359->zlnt_json_ownkeys_70e5fd461788->put( p0 = t383 p1 = t384 ).
            DATA(t385) = |type|.
            DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t386.
            IF t359->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t359->zlnt_json_ownkeys_70e5fd461788->put( p0 = t385 p1 = t386 ).
            ENDIF.
            t42->load( ).
            APPEND t359 TO t42->items.
            t42->save( ).
            CONTINUE.
          ENDIF.
          DATA(t387) = VALUE string( ).
          DATA(t388) = VALUE string( ).
          DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t390 = t61->name_in_source.
          t389 = t390.
          DATA(t392) = VALUE string( ).
          DATA(t393) = VALUE abap_bool( ).
          IF t389 IS INITIAL.
            t393 = abap_true.
          ELSEIF t389->has = abap_false.
            t393 = abap_true.
          ENDIF.
          IF t393 = abap_true.
            DATA t395 TYPE string.
            t395 = t61->name.
            t392 = t395.
          ELSE.
            DATA t397 TYPE string.
            t397 = t389->value.
            t392 = t397.
          ENDIF.
          t388 = t392.
          t387 = t388.
          DATA t399 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t399.
          DATA t401 TYPE REF TO zcl_lnt_ddic.
          t401 = t4.
          DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t403.
          DATA t406 TYPE string.
          DATA t407 TYPE REF TO zcl_lnt_shape_35310764.
          t407 = t75.
          t406 = t407->name.
          DATA(t409) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t409->has = abap_true.
          t409->value = t406.
          t403 = t409.
          DATA t411 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t411.
          DATA(t412) = VALUE abap_bool( ).
          DATA t413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t413 = t403.
          DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t415.
          DATA(t417) = VALUE abap_bool( ).
          IF t413 IS INITIAL.
            t417 = abap_true.
          ELSEIF t413->has = abap_false.
            t417 = abap_true.
          ENDIF.
          t412 = t417.
          IF t412 = abap_true.
            DATA t419 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t420 TYPE REF TO zcl_lnt_abstract_type.
            DATA t421 TYPE REF TO zcl_lnt_unknown_type.
            DATA(t422) = |undefined, lookupTableOrView|.
            DATA t423 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t423.
            t421 = NEW zcl_lnt_unknown_type( i_error = t422 i_qualified_name = t423 ).
            t420 = t421.
            DATA t424 TYPE REF TO zif_lnt_object.
            CLEAR t424.
            t419 = NEW zcl_lnt_ilookup_result( i_type_9913 = t420 i_object_19cd = t424 ).
            CREATE OBJECT t419->zlnt_view_ownkeys_b0e8086400eb.
            t419->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t426.
            t419->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t426 ).
            CREATE OBJECT t419->zlnt_json_ownkeys_70e5fd461788.
            t419->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t427) = |type|.
            DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t428.
            t419->zlnt_json_ownkeys_70e5fd461788->put( p0 = t427 p1 = t428 ).
            t411 = t419.
          ELSE.
            DATA t430 TYPE REF TO zcl_lnt_table.
            CLEAR t430.
            DATA t431 TYPE REF TO zcl_lnt_table.
            CLEAR t431.
            DATA t432 TYPE REF TO zif_lnt_object.
            CLEAR t432.
            DATA t433 TYPE REF TO zif_lnt_registry.
            t433 = t401->reg.
            DATA t435 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t435.
            DATA(t437) = |TABL|.
            DATA(t438) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t438->has = abap_true.
            t438->value = t437.
            t435 = t438.
            DATA t440 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t440.
            DATA t442 TYPE string.
            t442 = t403->value.
            DATA(t444) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t444->has = abap_true.
            t444->value = t442.
            t440 = t444.
            t432 = t433->get_object( i_type_9913 = t435 i_name = t440 ).
            DATA t446 TYPE REF TO object.
            t446 = t432.
            t431 ?= t446.
            t430 = t431.
            DATA t447 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t447.
            DATA t448 TYPE abap_bool.
            t448 = xsdbool( t430 IS BOUND ).
            IF t448 = abap_true.
              DATA t450 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t451 TYPE REF TO zcl_lnt_abstract_type.
              DATA t452 TYPE REF TO zcl_lnt_abstract_type.
              DATA t453 TYPE REF TO zcl_lnt_table.
              t453 = t430.
              DATA t455 TYPE REF TO zif_lnt_registry.
              t455 = t401->reg.
              DATA t457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t457.
              DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t458.
              t452 = t453->parse_type( i_reg_f149 = t455 i_data_element = t457 i_description = t458 ).
              t451 = t452.
              DATA t459 TYPE REF TO zif_lnt_object.
              t459 = t430.
              t450 = NEW zcl_lnt_ilookup_result( i_type_9913 = t451 i_object_19cd = t459 ).
              CREATE OBJECT t450->zlnt_view_ownkeys_b0e8086400eb.
              t450->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t462.
              t450->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t462 ).
              DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t463.
              IF t450->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t450->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t463 ).
              ENDIF.
              CREATE OBJECT t450->zlnt_json_ownkeys_70e5fd461788.
              t450->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t464) = |type|.
              DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t465.
              t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = t464 p1 = t465 ).
              DATA(t466) = |object|.
              DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t467.
              IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = t466 p1 = t467 ).
              ENDIF.
              t447 = t450.
            ELSE.
              DATA t469 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t469.
              DATA t470 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t470.
              DATA t472 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t472.
              DATA t474 TYPE string.
              t474 = t403->value.
              DATA(t476) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t476->has = abap_true.
              t476->value = t474.
              t472 = t476.
              t470 = t401->lookup_ddls( i_name = t472 ).
              t469 = t470.
              DATA t478 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t478.
              DATA t479 TYPE abap_bool.
              t479 = xsdbool( t469 IS BOUND ).
              IF t479 = abap_true.
                t478 = t469.
              ELSE.
                DATA t484 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t484.
                DATA t487 TYPE string.
                t487 = t403->value.
                DATA(t489) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t489->has = abap_true.
                t489->value = t487.
                t484 = t489.
                DATA t491 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t491.
                DATA(t492) = VALUE abap_bool( ).
                DATA t493 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t493 = t484.
                DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t495.
                DATA(t497) = VALUE abap_bool( ).
                IF t493 IS INITIAL.
                  t497 = abap_true.
                ELSEIF t493->has = abap_false.
                  t497 = abap_true.
                ENDIF.
                t492 = t497.
                IF t492 = abap_true.
                  DATA t499 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t500 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t501 TYPE REF TO zcl_lnt_unknown_type.
                  DATA(t502) = |undefined, lookupView|.
                  DATA t503 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t503.
                  t501 = NEW zcl_lnt_unknown_type( i_error = t502 i_qualified_name = t503 ).
                  t500 = t501.
                  DATA t504 TYPE REF TO zif_lnt_object.
                  CLEAR t504.
                  t499 = NEW zcl_lnt_ilookup_result( i_type_9913 = t500 i_object_19cd = t504 ).
                  CREATE OBJECT t499->zlnt_view_ownkeys_b0e8086400eb.
                  t499->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t506.
                  t499->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t506 ).
                  CREATE OBJECT t499->zlnt_json_ownkeys_70e5fd461788.
                  t499->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t507) = |type|.
                  DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t508.
                  t499->zlnt_json_ownkeys_70e5fd461788->put( p0 = t507 p1 = t508 ).
                  t491 = t499.
                ELSE.
                  DATA t510 TYPE REF TO zcl_lnt_table.
                  CLEAR t510.
                  DATA t511 TYPE REF TO zcl_lnt_table.
                  CLEAR t511.
                  DATA t512 TYPE REF TO zif_lnt_object.
                  CLEAR t512.
                  DATA t513 TYPE REF TO zif_lnt_registry.
                  t513 = t401->reg.
                  DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t515.
                  DATA(t517) = |VIEW|.
                  DATA(t518) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t518->has = abap_true.
                  t518->value = t517.
                  t515 = t518.
                  DATA t520 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t520.
                  DATA t522 TYPE string.
                  t522 = t484->value.
                  DATA(t524) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t524->has = abap_true.
                  t524->value = t522.
                  t520 = t524.
                  t512 = t513->get_object( i_type_9913 = t515 i_name = t520 ).
                  DATA t526 TYPE REF TO object.
                  t526 = t512.
                  t511 ?= t526.
                  t510 = t511.
                  DATA t527 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t527.
                  DATA t528 TYPE abap_bool.
                  t528 = xsdbool( t510 IS BOUND ).
                  IF t528 = abap_true.
                    DATA t530 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t531 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t532 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t533 TYPE REF TO zcl_lnt_table.
                    t533 = t510.
                    DATA t535 TYPE REF TO zif_lnt_registry.
                    t535 = t401->reg.
                    DATA t537 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t537.
                    DATA t538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t538.
                    t532 = t533->parse_type( i_reg_f149 = t535 i_data_element = t537 i_description = t538 ).
                    t531 = t532.
                    DATA t539 TYPE REF TO zif_lnt_object.
                    t539 = t510.
                    t530 = NEW zcl_lnt_ilookup_result( i_type_9913 = t531 i_object_19cd = t539 ).
                    CREATE OBJECT t530->zlnt_view_ownkeys_b0e8086400eb.
                    t530->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t542.
                    t530->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t542 ).
                    DATA t543 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t543.
                    IF t530->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t530->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t543 ).
                    ENDIF.
                    CREATE OBJECT t530->zlnt_json_ownkeys_70e5fd461788.
                    t530->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t544) = |type|.
                    DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t545.
                    t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = t544 p1 = t545 ).
                    DATA(t546) = |object|.
                    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t547.
                    IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = t546 p1 = t547 ).
                    ENDIF.
                    t527 = t530.
                  ELSE.
                    DATA t548 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t548.
                    DATA t549 TYPE abap_bool.
                    DATA t550 TYPE REF TO zif_lnt_registry.
                    t550 = t401->reg.
                    DATA t552 TYPE string.
                    t552 = t484->value.
                    t549 = t550->in_error_namespace( i_name = t552 ).
                    IF t549 = abap_true.
                      DATA t554 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t555 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t556 TYPE REF TO zcl_lnt_unknown_type.
                      DATA t557 TYPE string.
                      DATA t558 TYPE string.
                      t558 = t484->value.
                      DATA(t560) = | not found, lookupView|.
                      DATA(t561) = strlen( t558 ).
                      t557 = |{ t558 }{ t560 }|.
                      DATA t562 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t562.
                      t556 = NEW zcl_lnt_unknown_type( i_error = t557 i_qualified_name = t562 ).
                      t555 = t556.
                      DATA t563 TYPE REF TO zif_lnt_object.
                      CLEAR t563.
                      t554 = NEW zcl_lnt_ilookup_result( i_type_9913 = t555 i_object_19cd = t563 ).
                      CREATE OBJECT t554->zlnt_view_ownkeys_b0e8086400eb.
                      t554->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t565.
                      t554->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t565 ).
                      CREATE OBJECT t554->zlnt_json_ownkeys_70e5fd461788.
                      t554->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t566) = |type|.
                      DATA t567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t567.
                      t554->zlnt_json_ownkeys_70e5fd461788->put( p0 = t566 p1 = t567 ).
                      t548 = t554.
                    ELSE.
                      DATA t568 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t568.
                      DATA t569 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t569.
                      DATA t570 TYPE REF TO zcl_lnt_void_type.
                      CLEAR t570.
                      DATA t571 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t571.
                      DATA t573 TYPE string.
                      t573 = t484->value.
                      DATA(t575) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t575->has = abap_true.
                      t575->value = t573.
                      t571 = t575.
                      DATA t577 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t577.
                      t570 = zcl_lnt_void_type=>get_db65( i_voided = t571 i_qualified_name = t577 ).
                      t569 = t570.
                      DATA t578 TYPE REF TO zif_lnt_object.
                      CLEAR t578.
                      t568 = NEW zcl_lnt_ilookup_result( i_type_9913 = t569 i_object_19cd = t578 ).
                      CREATE OBJECT t568->zlnt_view_ownkeys_b0e8086400eb.
                      t568->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t580.
                      t568->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t580 ).
                      CREATE OBJECT t568->zlnt_json_ownkeys_70e5fd461788.
                      t568->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t581) = |type|.
                      DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t582.
                      t568->zlnt_json_ownkeys_70e5fd461788->put( p0 = t581 p1 = t582 ).
                      t548 = t568.
                    ENDIF.
                    t527 = t548.
                  ENDIF.
                  t491 = t527.
                ENDIF.
                t478 = t491.
              ENDIF.
              t447 = t478.
            ENDIF.
            t411 = t447.
          ENDIF.
          t399 = t411.
          DATA t583 TYPE abap_bool.
          DATA t584 TYPE REF TO zcl_lnt_abstract_type.
          t584 = t399->zlnt_view_read_sr_9be58e2d4893( ).
          t583 = xsdbool( t584 IS BOUND ).
          IF t583 = abap_true.
            DATA t586 TYPE abap_bool.
            DATA t587 TYPE REF TO zcl_lnt_abstract_type.
            t587 = t399->zlnt_view_read_sr_9be58e2d4893( ).
            t586 = xsdbool( t587 IS BOUND AND t587 IS INSTANCE OF zcl_lnt_structure_type ).
            IF t586 = abap_true.
              DATA t589 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t589.
              DATA t592 TYPE REF TO zcl_lnt_structure_type.
              DATA t593 TYPE REF TO zcl_lnt_abstract_type.
              t593 = t399->zlnt_view_read_sr_9be58e2d4893( ).
              t592 ?= t593.
              DATA t595 TYPE string.
              t595 = t387.
              DATA t597 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t597.
              DATA t598 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
              t598 = t592->indexed.
              DATA t600 TYPE string.
              DATA(t602) = strlen( t595 ).
              t600 = t595.
              IF t600 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t600 TO UPPER CASE.
              ELSE.
                t600 = zlnt_runtime_uppe_91169605024d=>full( t600 ).
              ENDIF.
              t597 = t598->get( p0 = t600 ).
              t589 = t597.
              DATA t603 TYPE abap_bool.
              t603 = xsdbool( t589 IS BOUND ).
              IF t603 = abap_true.
                DATA t606 TYPE REF TO zcl_lnt_istructure_component.
                DATA t607 TYPE string.
                DATA t608 TYPE string.
                t608 = t61->name.
                t607 = t608.
                DATA t610 TYPE REF TO zcl_lnt_abstract_type.
                t610 = t589.
                DATA t613 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t613.
                DATA t615 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t615.
                t606 = NEW zcl_lnt_istructure_component( i_name = t607 i_type_9913 = t610 i_as_include = t613 i_suffix = t615 ).
                CREATE OBJECT t606->zlnt_view_ownkeys_b0e8086400eb.
                t606->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t617.
                t606->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t617 ).
                DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t618.
                IF t606->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t606->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t618 ).
                ENDIF.
                CREATE OBJECT t606->zlnt_json_ownkeys_70e5fd461788.
                t606->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t619) = |name|.
                DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t620.
                t606->zlnt_json_ownkeys_70e5fd461788->put( p0 = t619 p1 = t620 ).
                DATA(t621) = |type|.
                DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t622.
                IF t606->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t606->zlnt_json_ownkeys_70e5fd461788->put( p0 = t621 p1 = t622 ).
                ENDIF.
                t42->load( ).
                APPEND t606 TO t42->items.
                t42->save( ).
              ELSE.
                DATA t624 TYPE REF TO zcl_lnt_istructure_component.
                DATA t625 TYPE string.
                DATA t626 TYPE string.
                t626 = t61->name.
                t625 = t626.
                DATA t628 TYPE REF TO zcl_lnt_abstract_type.
                DATA t629 TYPE REF TO zcl_lnt_unknown_type.
                DATA t630 TYPE string.
                DATA t631 TYPE string.
                DATA t632 TYPE string.
                DATA(t634) = | not found in |.
                DATA(t635) = strlen( t387 ).
                t632 = |{ t387 }{ t634 }|.
                DATA t636 TYPE string.
                DATA t637 TYPE REF TO zcl_lnt_shape_35310764.
                t637 = t75.
                t636 = t637->name.
                DATA(t639) = strlen( t632 ).
                t631 = |{ t632 }{ t636 }|.
                DATA(t640) = |, CDSDetermineTypes|.
                DATA(t641) = strlen( t631 ).
                t630 = |{ t631 }{ t640 }|.
                DATA t642 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t642.
                t629 = NEW zcl_lnt_unknown_type( i_error = t630 i_qualified_name = t642 ).
                t628 = t629.
                DATA t643 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t643.
                DATA t645 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t645.
                t624 = NEW zcl_lnt_istructure_component( i_name = t625 i_type_9913 = t628 i_as_include = t643 i_suffix = t645 ).
                CREATE OBJECT t624->zlnt_view_ownkeys_b0e8086400eb.
                t624->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t647.
                t624->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t647 ).
                DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t648.
                IF t624->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t624->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t648 ).
                ENDIF.
                CREATE OBJECT t624->zlnt_json_ownkeys_70e5fd461788.
                t624->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t649) = |name|.
                DATA t650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t650.
                t624->zlnt_json_ownkeys_70e5fd461788->put( p0 = t649 p1 = t650 ).
                DATA(t651) = |type|.
                DATA t652 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t652.
                IF t624->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t624->zlnt_json_ownkeys_70e5fd461788->put( p0 = t651 p1 = t652 ).
                ENDIF.
                t42->load( ).
                APPEND t624 TO t42->items.
                t42->save( ).
              ENDIF.
            ELSE.
              DATA t654 TYPE REF TO zcl_lnt_istructure_component.
              DATA t655 TYPE string.
              DATA t656 TYPE string.
              t656 = t61->name.
              t655 = t656.
              DATA t658 TYPE REF TO zcl_lnt_abstract_type.
              DATA t659 TYPE REF TO zcl_lnt_abstract_type.
              t659 = t399->zlnt_view_read_sr_9be58e2d4893( ).
              t658 = t659.
              DATA t661 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t661.
              DATA t663 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t663.
              t654 = NEW zcl_lnt_istructure_component( i_name = t655 i_type_9913 = t658 i_as_include = t661 i_suffix = t663 ).
              CREATE OBJECT t654->zlnt_view_ownkeys_b0e8086400eb.
              t654->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t665 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t665.
              t654->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t665 ).
              DATA t666 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t666.
              IF t654->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t654->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t666 ).
              ENDIF.
              CREATE OBJECT t654->zlnt_json_ownkeys_70e5fd461788.
              t654->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t667) = |name|.
              DATA t668 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t668.
              t654->zlnt_json_ownkeys_70e5fd461788->put( p0 = t667 p1 = t668 ).
              DATA(t669) = |type|.
              DATA t670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t670.
              IF t654->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t654->zlnt_json_ownkeys_70e5fd461788->put( p0 = t669 p1 = t670 ).
              ENDIF.
              t42->load( ).
              APPEND t654 TO t42->items.
              t42->save( ).
            ENDIF.
          ELSE.
            DATA t671 TYPE abap_bool.
            DATA t673 TYPE string.
            DATA t674 TYPE REF TO zcl_lnt_shape_35310764.
            t674 = t75.
            t673 = t674->name.
            t671 = t1->in_error_namespace( i_name = t673 ).
            IF t671 = abap_true.
              DATA t677 TYPE REF TO zcl_lnt_istructure_component.
              DATA t678 TYPE string.
              DATA t679 TYPE string.
              t679 = t61->name.
              t678 = t679.
              DATA t681 TYPE REF TO zcl_lnt_abstract_type.
              DATA t682 TYPE REF TO zcl_lnt_unknown_type.
              DATA t683 TYPE string.
              DATA t684 TYPE string.
              DATA t685 TYPE REF TO zcl_lnt_shape_35310764.
              t685 = t75.
              t684 = t685->name.
              DATA(t687) = | not found, CDSDetermineTypes|.
              DATA(t688) = strlen( t684 ).
              t683 = |{ t684 }{ t687 }|.
              DATA t689 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t689.
              t682 = NEW zcl_lnt_unknown_type( i_error = t683 i_qualified_name = t689 ).
              t681 = t682.
              DATA t690 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t690.
              DATA t692 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t692.
              t677 = NEW zcl_lnt_istructure_component( i_name = t678 i_type_9913 = t681 i_as_include = t690 i_suffix = t692 ).
              CREATE OBJECT t677->zlnt_view_ownkeys_b0e8086400eb.
              t677->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t694 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t694.
              t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t694 ).
              DATA t695 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t695.
              IF t677->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t695 ).
              ENDIF.
              CREATE OBJECT t677->zlnt_json_ownkeys_70e5fd461788.
              t677->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t696) = |name|.
              DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t697.
              t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t696 p1 = t697 ).
              DATA(t698) = |type|.
              DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t699.
              IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t698 p1 = t699 ).
              ENDIF.
              t42->load( ).
              APPEND t677 TO t42->items.
              t42->save( ).
            ELSE.
              DATA t701 TYPE REF TO zcl_lnt_istructure_component.
              CLEAR t701.
              DATA t702 TYPE string.
              DATA t703 TYPE string.
              t703 = t61->name.
              t702 = t703.
              DATA t705 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t705.
              DATA t706 TYPE REF TO zcl_lnt_void_type.
              CLEAR t706.
              DATA t707 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t707.
              DATA t709 TYPE string.
              DATA t710 TYPE REF TO zcl_lnt_shape_35310764.
              t710 = t75.
              t709 = t710->name.
              DATA(t712) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t712->has = abap_true.
              t712->value = t709.
              t707 = t712.
              DATA t714 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t714.
              t706 = zcl_lnt_void_type=>get_db65( i_voided = t707 i_qualified_name = t714 ).
              t705 = t706.
              DATA t715 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t715.
              DATA t717 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t717.
              t701 = NEW zcl_lnt_istructure_component( i_name = t702 i_type_9913 = t705 i_as_include = t715 i_suffix = t717 ).
              CREATE OBJECT t701->zlnt_view_ownkeys_b0e8086400eb.
              t701->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t719 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t719.
              t701->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t719 ).
              DATA t720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t720.
              IF t701->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t701->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t720 ).
              ENDIF.
              CREATE OBJECT t701->zlnt_json_ownkeys_70e5fd461788.
              t701->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t721) = |name|.
              DATA t722 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t722.
              t701->zlnt_json_ownkeys_70e5fd461788->put( p0 = t721 p1 = t722 ).
              DATA(t723) = |type|.
              DATA t724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t724.
              IF t701->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t701->zlnt_json_ownkeys_70e5fd461788->put( p0 = t723 p1 = t724 ).
              ENDIF.
              t42->load( ).
              APPEND t701 TO t42->items.
              t42->save( ).
            ENDIF.
          ENDIF.
        ELSE.
          DATA t726 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t726.
          DATA t727 TYPE string.
          DATA t728 TYPE string.
          t728 = t61->name.
          t727 = t728.
          DATA t730 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t730.
          DATA t731 TYPE REF TO zcl_lnt_void_type.
          CLEAR t731.
          DATA t732 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t732.
          DATA t734 TYPE string.
          DATA(t735) = |DDLS:fieldname:|.
          DATA(t737) = strlen( t735 ).
          t734 = |{ t735 }{ t3 }|.
          DATA(t738) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t738->has = abap_true.
          t738->value = t734.
          t732 = t738.
          DATA t740 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t740.
          t731 = zcl_lnt_void_type=>get_db65( i_voided = t732 i_qualified_name = t740 ).
          t730 = t731.
          DATA t741 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t741.
          DATA t743 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t743.
          t726 = NEW zcl_lnt_istructure_component( i_name = t727 i_type_9913 = t730 i_as_include = t741 i_suffix = t743 ).
          CREATE OBJECT t726->zlnt_view_ownkeys_b0e8086400eb.
          t726->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t745 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t745.
          t726->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t745 ).
          DATA t746 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t746.
          IF t726->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t726->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t746 ).
          ENDIF.
          CREATE OBJECT t726->zlnt_json_ownkeys_70e5fd461788.
          t726->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t747) = |name|.
          DATA t748 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t748.
          t726->zlnt_json_ownkeys_70e5fd461788->put( p0 = t747 p1 = t748 ).
          DATA(t749) = |type|.
          DATA t750 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t750.
          IF t726->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t726->zlnt_json_ownkeys_70e5fd461788->put( p0 = t749 p1 = t750 ).
          ENDIF.
          t42->load( ).
          APPEND t726 TO t42->items.
          t42->save( ).
        ENDIF.
      ENDDO.
      DATA t751 TYPE REF TO zcl_lnt_structure_type.
      DATA t753 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t753 = t2->definition_name.
      DATA t755 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t755 = t2->definition_name.
      DATA t757 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t757 = t2->description.
      t751 = NEW zcl_lnt_structure_type( i_components = t42 i_qualified_name = t753 i_ddic_name = t755 i_description = t757 ).
      result = t751.

    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1069_80e1fec352f9.
  ENDMETHOD.
ENDCLASS.
