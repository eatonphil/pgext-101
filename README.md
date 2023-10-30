# pgext: a bare minimum Postgres extension

[PGXS](https://www.postgresql.org/docs/current/extend-pgxs.html) is a
helper for Makefiles to build Postgres extensions.

It is entirely dependent on naming conventions. Every file and line in
here is necessary. Try deleting whatever you think is useless and
you'll get the idea.

To set up (you probably need `postgresql-server-devel` or equivalent
from your package manager):

```
$ make
$ sudo make install
$ psql
postgres=# CREATE EXTENSION pgext;
CREATE EXTENSION
postgres=# SELECT pgext.add_one(100);
 add_one
---------
     101
(1 row)
```

Read through all the committed files and the linked PGXS docs to
better understand.
