src = src/aac_rom.c \
	src/aacenc_core.c \
	src/aacenc.c \
	src/adj_thr.c \
	src/band_nrg.c \
	src/bit_cnt.c \
	src/bitbuffer.c \
	src/bitenc.c \
	src/block_switch.c \
	src/channel_map.c \
	src/cmnMemory.c \
	src/dyn_bits.c \
	src/grp_data.c \
	src/interface.c \
	src/line_pe.c \
	src/memalign.c \
	src/ms_stereo.c \
	src/pre_echo_control.c \
	src/psy_configuration.c \
	src/psy_main.c \
	src/qc_main.c \
	src/quantize.c \
	src/sf_estim.c \
	src/spreading.c \
	src/stat_bits.c \
	src/tns.c \
	src/transform.c

SOURCES += $(src)

src_module += $(patsubst %cpp,%o,$(filter %cpp ,$(src))) 
src_module +=$(patsubst %c,%o,$(filter %c ,$(src)))
