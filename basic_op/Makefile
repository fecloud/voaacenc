basic_op = basic_op/basicop2.c \
	basic_op/oper_32b.c

SOURCES += $(basic_op)

basic_op_module += $(patsubst %cpp,%o,$(filter %cpp ,$(basic_op))) 
basic_op_module +=$(patsubst %c,%o,$(filter %c ,$(basic_op)))
