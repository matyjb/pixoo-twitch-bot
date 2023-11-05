String getTtvOAuthKeyUrl({
  bool chatRead = true,
  bool chatEdit = false,
  bool isMod = false,
  bool whispersRead = true,
  bool whispersEdit = false,
}) {
  String baseUrl = "https://id.twitch.tv/oauth2/authorize?response_type=token&client_id=q6batx0epp608isickayubi39itsckt&redirect_uri=https://twitchapps.com/tmi/";
  String scope = [
    if(chatRead) "chat:read",
    if(chatEdit) "chat:edit",
    if(isMod) "channel:moderate",
    if(whispersRead) "whispers:read",
    if(whispersEdit) "whispers:edit",
  ].join("+");  

  return "$baseUrl&scope=$scope";
}