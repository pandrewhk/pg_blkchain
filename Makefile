MODULES = pg_blkchain

EXTENSION     = pg_blkchain
DATA          = pg_blkchain--0.0.1.sql

REGRESS       = ${EXTENSION}
MODULE_big    = pg_blkchain
#SRCS        = pg_blkchain.c
#OBJS        = $(SRCS:.c=.o)

#SHLIB_LINK    += -lccoin
SHLIB_LINK    += -lbitc

# postgres build stuff
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
