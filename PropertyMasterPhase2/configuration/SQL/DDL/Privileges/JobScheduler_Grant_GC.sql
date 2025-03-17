GRANT USAGE ON SCHEMA ser_gs_gc TO ser_gs_js_app;

GRANT SELECT on TABLE ser_gs_gc.ft_t_jblg TO ser_gs_js_app;

GRANT EXECUTE ON FUNCTION ser_gs_gc.sysdate() TO ser_gs_js_app;