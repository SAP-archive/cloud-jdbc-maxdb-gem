# JDBC driver for MaxDB as a Ruby gem

This is a Ruby gem that wraps the JDBC driver for the [SAP MaxDB database](
http://maxdb.sap.com/).

The MaxDB driver version currently is 7.8.00.17, but you can easily change it
with a different version by replacing the lib/sapdbc.jar file.

This gem is needed by the [ActiveRecord JDBC adapter for MaxDB](
https://github.com/sapnwcloudlabs/activerecord-maxdb-adapter).

Please build the gem from sources and install it:

    jruby -S gem build jdbc-maxdb.gemspec
	jruby -S gem install jdbc-maxdb