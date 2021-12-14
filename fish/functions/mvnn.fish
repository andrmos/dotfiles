# Defined in - @ line 1
function mvnn --description 'alias mvnn mvn -DsocksProxyHost=127.0.0.1 -DsocksProxyPort=14122 -DsocksNonProxyHosts="localhost|127.0.0.1|dl.bintray.com|repo.maven.apache.org"'
	mvn -DsocksProxyHost=127.0.0.1 -DsocksProxyPort=14122 -DsocksNonProxyHosts="localhost|127.0.0.1|dl.bintray.com|repo.maven.apache.org|github-package-registry-mirror.gc.nav.no" $argv;
end
