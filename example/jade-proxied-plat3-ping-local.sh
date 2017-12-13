#!/bin/sh

java -classpath .:./lib/jade.jar:./lib/commons-codec-1.3.jar:./lib/jade-proxiedhttps.jar:./lib/jade-pingpongagent.jar jade.Boot -services jade.core.event.NotificationService -local-host 127.0.0.1 -port 1098 -mtps "jade.mtp.http.ProxiedHTTPS" -jade_mtp_http_https_keyStoreFile dummy-KeyStore.jks -jade_mtp_http_https_keyStorePass password -jade_mtp_http_https_trustManagerClass jade.mtp.http.https.FriendListAuthentication -jade_mtp_http_https_friendListFile proxied-jade-TrustStore.jks -jade_mtp_http_https_friendListPass password -platform-id plat3 -agents "PiPoAg:de.unidue.stud.sehawagn.pingpongagent.PingPongAgent(PiPoAg@plat1,https://192.168.0.1:443/plat1)" -jade_mtp_proxiedhttps_privateProtocol http -jade_mtp_proxiedhttps_privateAddress 127.0.0.1 -jade_mtp_proxiedhttps_privatePort 7779 -jade_mtp_proxiedhttps_privatePath /acc -jade_mtp_proxiedhttps_publicProtocol https -jade_mtp_proxiedhttps_publicAddress 192.168.0.1 -jade_mtp_proxiedhttps_publicPort 443 -jade_mtp_proxiedhttps_publicPath /plat3
