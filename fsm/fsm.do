vlog -coveropt 3 +cover +acc fsm1.v tb.v
vsim -c -coverage -novopt -do"run -all; exit" tb
coverage save -onexit -directive -cvg -codeall code_cov

#vcover report -html -htmldir rtl_coverage_report rtl_cov.ucdb
#firefox ./rtl_coverage_report/index.html
