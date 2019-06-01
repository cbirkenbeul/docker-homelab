# Plex Media Server

Ich persönlich verwende als Medienserver auch PLEX. Die Möglichkeit von fast jedem Gerät aus meine Filme, Serien und Musik abspielen zu können, ist mir die Einschränkung einer Closed Software wert. 
Der große Unterschied zw. Plex und z. B. Kodi ist, dass Plex die Medien auf dem Server transcodiert, sollte der Client das vorliegende Format nicht wiedergeben können. Dies verlagert die benötigte Leistung von vielen einzelnen starken Clients auf einen Server. 

# Hinweise

Der Container verwendet das Netzwerk des Docker Servers. Entsprechend ist darauf zu achten, dass die benötigen Ports auf dem Host noch frei sind. 

Der PLEX_CLAIM Token sollte vorher angegeben werden. Diesen könnt ihr auf der [Plex](https://www.plex.tv/claim) Seite anfordern. Hierfür benötigt ihr bereits einen Plex Account.