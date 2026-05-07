open_project toe_prj

set_top toe

set hls_flags "-Wno-unknown-pragmas -DFNS_DATA_WIDTH=64 -DTCP_NODELAY=1 -DTCP_MSS=4096 -DTCP_STACK_MAX_SESSIONS=1000 -DRX_DDR_BYPASS=0 -DFAST_RETRANSMIT=1 -DWINDOW_SCALE=1 -DFNS_ROCE_STACK_MAX_QPS=500"

add_files ../axi_utils.cpp -cflags $hls_flags
add_files ack_delay/ack_delay.cpp -cflags $hls_flags
add_files close_timer/close_timer.cpp -cflags $hls_flags
add_files event_engine/event_engine.cpp -cflags $hls_flags
add_files port_table/port_table.cpp -cflags $hls_flags
add_files probe_timer/probe_timer.cpp -cflags $hls_flags
add_files retransmit_timer/retransmit_timer.cpp -cflags $hls_flags
add_files rx_app_if/rx_app_if.cpp -cflags $hls_flags
add_files rx_app_stream_if/rx_app_stream_if.cpp -cflags $hls_flags
add_files rx_engine/rx_engine.cpp -cflags $hls_flags
add_files rx_sar_table/rx_sar_table.cpp -cflags $hls_flags
add_files session_lookup_controller/session_lookup_controller.cpp -cflags $hls_flags
add_files state_table/state_table.cpp -cflags $hls_flags
add_files tx_app_if/tx_app_if.cpp -cflags $hls_flags
add_files tx_app_stream_if/tx_app_stream_if.cpp -cflags $hls_flags
add_files tx_engine/tx_engine.cpp -cflags $hls_flags
add_files tx_sar_table/tx_sar_table.cpp -cflags $hls_flags
add_files tx_app_interface/tx_app_interface.cpp -cflags $hls_flags
add_files toe.cpp -cflags $hls_flags

open_solution "solution1"
set_part {xcu55c-fsvh2892-2L-e}
create_clock -period 3.2 -name default

csynth_design
exit
