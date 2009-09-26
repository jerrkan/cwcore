/* Copyright (C) 2006 - 2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

/* ScriptData
SDName: OnEvents
SD%Complete: 100
SDComment: This is the OnEvents handler for c++ scripting
SDCategory: Custom
EndScriptData */

#include "precompiled.h"
#include <cstring>

//This function is called when the player logs in (every login)
void OnLogin(Player* pPlayer)
{
    //TODO
}

//This function is called when the player logsout
void OnLogout(Player* pPlayer)
{
    //TODO
}

//This function is called when the player kills another player
void OnPVPKill(Player * killer, Player * killed)
{
    //TODO
}

//This function is called when the player clicks an option on the gossip menubool

void AddSC_onevents()
{
    Script* newscript;
    newscript = new Script;
    newscript->Name = "scripted_on_events";
    newscript->pOnLogin = &OnLogin;
    newscript->pOnLogout = &OnLogout;
    newscript->pOnPVPKill = &OnPVPKill;
    newscript->pOnAreaChange = &OnAreaChange;
    newscript->pOnCreatureKill = &OnCreatureKill;
    newscript->pOnGetMoney = &OnGetMoney;
    newscript->pOnGetXP = &OnGetXP;
    newscript->pOnGoClick = &OnGoClick;
    newscript->pOnItemClick = &OnItemClick;
    newscript->pOnItemOpen = &OnItemOpen;
    newscript->pOnPlayerChat = &OnPlayerChat;
    newscript->pOnServerShutdown = &OnServerShutdown;
    newscript->pOnServerStartup = &OnServerStartup;
    newscript->pOnSpellCast = &OnSpellCast;
    
    newscript->RegisterSelf();
}