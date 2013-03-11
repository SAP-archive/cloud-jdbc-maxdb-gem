# JDBC driver for MaxDB as a Ruby gem

This is a Ruby gem that wraps the JDBC driver for the [SAP MaxDB database](
http://maxdb.sap.com/).

This gem is needed by the [ActiveRecord JDBC adapter for MaxDB](
https://github.com/sapnwcloudlabs/activerecord-maxdb-adapter).

**Note**: In order for this gem to be built, installed and to be working correctly, you would
need to obtain the JDBC driver for the MaxDB database, and place it under the */lib* folder of
the gem. Please name the file *sapdbc.jar*. If you need the name to be different than this,
then adjust accordingly the gem metadata descriptors which refer to it, (those are *jdbc-maxdb.gemspec*,
*lib/jdbc/maxdb.rb* and optionally *Manifest.txt* files).

You can obtain the jar file, for example from [here](http://www.sapdb.org/sap_db_jdbc.htm). As a
user of the MaxDB database you should better know where to find the JDBC driver for your MaxDB, 
which you are most probably already using. For example, if you are using the SAP MaxDB Studio as 
a client, you can find the jar in its Eclipse plugins directory.


Please sync this repo, build the gem from sources and install it:

* `jruby -S gem build jdbc-maxdb.gemspec`
* `jruby -S gem install jdbc-maxdb`