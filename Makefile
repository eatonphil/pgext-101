MODULES = pgext
EXTENSION = pgext
DATA = pgext--0.0.1.sql

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
