/*
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 *
 * Copyright (C) 2009 CWCore <http://www.wow-extrem.de/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */

#ifndef WIN32
#include <dlfcn.h>
#endif

#include "Common.h"
#include "Platform/Define.h"
#include "ScriptCalls.h"
#include "World.h"
#include "Config/ConfigEnv.h"

ScriptsSet Script=NULL;

void UnloadScriptingModule()
{
    if(Script)
    {
        //todo: some check if some func from script library is called right now
        Script->ScriptsFree();
        CW_CLOSE_LIBRARY(Script->hScriptsLib);
        delete Script;
        Script = NULL;
    }
}

bool LoadScriptingModule(char const* libName)
{
    ScriptsSet testScript=new _ScriptSet;

    std::string name = strlen(libName) ? libName : CW_SCRIPT_NAME;
    name += CW_SCRIPT_EXT;

    testScript->hScriptsLib=CW_LOAD_LIBRARY(name.c_str());

    if(!testScript->hScriptsLib )
    {
        printf("Error loading Scripts Library %s !\n",name.c_str());
        delete testScript;
        return false;
    }

    if(   !(testScript->ScriptsInit         =(scriptCallScriptsInit         )CW_GET_PROC_ADDR(testScript->hScriptsLib,"ScriptsInit"         ))
        ||!(testScript->OnLogin                =(scriptCallOnLogin                )CW_GET_PROC_ADDR(testScript->hScriptsLib,"OnLogin"             ))
        ||!(testScript->OnLogout            =(scriptCallOnLogout            )CW_GET_PROC_ADDR(testScript->hScriptsLib,"OnLogout"             ))
        ||!(testScript->OnPVPKill            =(scriptCallOnPVPKill            )CW_GET_PROC_ADDR(testScript->hScriptsLib,"OnPVPKill"             ))
        ||!(testScript->ScriptsFree         =(scriptCallScriptsFree         )CW_GET_PROC_ADDR(testScript->hScriptsLib,"ScriptsFree"         ))
        ||!(testScript->ScriptsVersion      =(scriptCallScriptsVersion      )CW_GET_PROC_ADDR(testScript->hScriptsLib,"ScriptsVersion"      ))
        ||!(testScript->GossipHello         =(scriptCallGossipHello         )CW_GET_PROC_ADDR(testScript->hScriptsLib,"GossipHello"         ))
        ||!(testScript->GOChooseReward      =(scriptCallGOChooseReward      )CW_GET_PROC_ADDR(testScript->hScriptsLib,"GOChooseReward"      ))
        ||!(testScript->QuestAccept         =(scriptCallQuestAccept         )CW_GET_PROC_ADDR(testScript->hScriptsLib,"QuestAccept"         ))
        ||!(testScript->GossipSelect        =(scriptCallGossipSelect        )CW_GET_PROC_ADDR(testScript->hScriptsLib,"GossipSelect"        ))
        ||!(testScript->GossipSelectWithCode=(scriptCallGossipSelectWithCode)CW_GET_PROC_ADDR(testScript->hScriptsLib,"GossipSelectWithCode"))
        ||!(testScript->GOSelect            =(scriptCallGOSelect            )CW_GET_PROC_ADDR(testScript->hScriptsLib,"GOSelect"            ))
        ||!(testScript->GOSelectWithCode    =(scriptCallGOSelectWithCode    )CW_GET_PROC_ADDR(testScript->hScriptsLib,"GOSelectWithCode"    ))
        ||!(testScript->QuestSelect         =(scriptCallQuestSelect         )CW_GET_PROC_ADDR(testScript->hScriptsLib,"QuestSelect"         ))
        ||!(testScript->QuestComplete       =(scriptCallQuestComplete       )CW_GET_PROC_ADDR(testScript->hScriptsLib,"QuestComplete"       ))
        ||!(testScript->NPCDialogStatus     =(scriptCallNPCDialogStatus     )CW_GET_PROC_ADDR(testScript->hScriptsLib,"NPCDialogStatus"     ))
        ||!(testScript->GODialogStatus      =(scriptCallGODialogStatus      )CW_GET_PROC_ADDR(testScript->hScriptsLib,"GODialogStatus"     ))
        ||!(testScript->ChooseReward        =(scriptCallChooseReward        )CW_GET_PROC_ADDR(testScript->hScriptsLib,"ChooseReward"        ))
        ||!(testScript->ItemHello           =(scriptCallItemHello           )CW_GET_PROC_ADDR(testScript->hScriptsLib,"ItemHello"           ))
        ||!(testScript->GOHello             =(scriptCallGOHello             )CW_GET_PROC_ADDR(testScript->hScriptsLib,"GOHello"             ))
        ||!(testScript->scriptAreaTrigger   =(scriptCallAreaTrigger         )CW_GET_PROC_ADDR(testScript->hScriptsLib,"AreaTrigger"         ))
        ||!(testScript->ItemQuestAccept     =(scriptCallItemQuestAccept     )CW_GET_PROC_ADDR(testScript->hScriptsLib,"ItemQuestAccept"     ))
        ||!(testScript->GOQuestAccept       =(scriptCallGOQuestAccept       )CW_GET_PROC_ADDR(testScript->hScriptsLib,"GOQuestAccept"       ))
        ||!(testScript->ItemUse             =(scriptCallItemUse             )CW_GET_PROC_ADDR(testScript->hScriptsLib,"ItemUse"             ))
        ||!(testScript->ItemExpire          =(scriptCallItemExpire          )CW_GET_PROC_ADDR(testScript->hScriptsLib,"ItemExpire"          ))
        ||!(testScript->EffectDummyGameObj  =(scriptCallEffectDummyGameObj  )CW_GET_PROC_ADDR(testScript->hScriptsLib,"EffectDummyGameObj"  ))
        ||!(testScript->EffectDummyCreature =(scriptCallEffectDummyCreature )CW_GET_PROC_ADDR(testScript->hScriptsLib,"EffectDummyCreature" ))
        ||!(testScript->EffectDummyItem     =(scriptCallEffectDummyItem     )CW_GET_PROC_ADDR(testScript->hScriptsLib,"EffectDummyItem"     ))
        ||!(testScript->GetAI               =(scriptCallGetAI               )CW_GET_PROC_ADDR(testScript->hScriptsLib,"GetAI"               ))
        ||!(testScript->CreateInstanceData  =(scriptCallCreateInstanceData  )CW_GET_PROC_ADDR(testScript->hScriptsLib,"CreateInstanceData"  ))
        )
    {
        printf("Error loading Scripts Library %s !\n Library missing required functions.",name.c_str());
        CW_CLOSE_LIBRARY(testScript->hScriptsLib);
        delete testScript;
        return false;
    }

    sLog.outString();
    sLog.outString( ">>> Scripts Library %s was successfully loaded.\n", name.c_str() );

    //heh we are still there :P we have a valid library
    //we reload script
    UnloadScriptingModule();

    Script=testScript;
    Script->ScriptsInit(sConfig.GetFilename().c_str());

    sWorld.SetScriptsVersion(Script->ScriptsVersion());

    return true;
}

