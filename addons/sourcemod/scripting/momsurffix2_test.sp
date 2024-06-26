#include <sourcemod>
#include <sdktools>
#include <momsurffix2>

public void OnPluginStart()
{
    PrintToServer("[MomSurfFix2 Test] Plugin started");
}

public void MomSurfFix_OnPluginReady()
{
    PrintToServer("[MomSurfFix2 Test] MomSurfFix2 is ready");
}

public Action MomSurfFix_OnBumpIteration(int client, int bumpcount, float velocity[3], float origin[3])
{
    char clientName[MAX_NAME_LENGTH];
    GetClientName(client, clientName, sizeof(clientName));
    
    PrintToServer("[MomSurfFix2 Test] OnBumpIteration - Client: %s, Bump: %d, Velocity: %.2f %.2f %.2f, Origin: %.2f %.2f %.2f",
        clientName, bumpcount, velocity[0], velocity[1], velocity[2], origin[0], origin[1], origin[2]);
    
    // Uncomment the following lines to test modifying values
    // velocity[2] += 10.0;
    // return Plugin_Changed;
    
    return Plugin_Continue;
}

public void MomSurfFix_OnPlayerStuckOnRamp(int client, float velocity[3], float origin[3], float validPlane[3])
{
    char clientName[MAX_NAME_LENGTH];
    GetClientName(client, clientName, sizeof(clientName));
    
    PrintToServer("[MomSurfFix2 Test] OnPlayerStuckOnRamp - Client: %s, Velocity: %.2f %.2f %.2f, Origin: %.2f %.2f %.2f, ValidPlane: %.2f %.2f %.2f",
        clientName, velocity[0], velocity[1], velocity[2], origin[0], origin[1], origin[2], validPlane[0], validPlane[1], validPlane[2]);
}

public Action MomSurfFix_OnClipVelocity(int client, float inVelocity[3], float normal[3], float& overbounce)
{
    char clientName[MAX_NAME_LENGTH];
    GetClientName(client, clientName, sizeof(clientName));
    
    PrintToServer("[MomSurfFix2 Test] OnClipVelocity - Client: %s, InVelocity: %.2f %.2f %.2f, Normal: %.2f %.2f %.2f, Overbounce: %.2f",
        clientName, inVelocity[0], inVelocity[1], inVelocity[2], normal[0], normal[1], normal[2], overbounce);
    
    // Uncomment the following lines to test modifying values
    // overbounce += 0.1;
    // return Plugin_Changed;
    
    return Plugin_Continue;
}

public void MomSurfFix_OnTryPlayerMovePost(int client, int blocked, float endVelocity[3], float endOrigin[3], float allFraction)
{
    char clientName[MAX_NAME_LENGTH];
    GetClientName(client, clientName, sizeof(clientName));
    
    PrintToServer("[MomSurfFix2 Test] OnTryPlayerMovePost - Client: %s, Blocked: %d, EndVelocity: %.2f %.2f %.2f, EndOrigin: %.2f %.2f %.2f, AllFraction: %.2f",
        clientName, blocked, endVelocity[0], endVelocity[1], endVelocity[2], endOrigin[0], endOrigin[1], endOrigin[2], allFraction);
}