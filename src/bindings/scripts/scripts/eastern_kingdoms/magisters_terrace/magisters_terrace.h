/* Copyright (C) 2006 - 2012 ScriptDev2 <http://www.scriptdev2.com/>
 * This program is free software licensed under GPL version 2
 * Please see the included DOCS/LICENSE.TXT for more information */

#ifndef DEF_MAGISTERS_TERRACE_H
#define DEF_MAGISTERS_TERRACE_H

enum
{
    MAX_ENCOUNTER               = 4,
    MAX_DELRISSA_ADDS           = 4,

    TYPE_SELIN                  = 0,
    TYPE_VEXALLUS               = 1,
    TYPE_DELRISSA               = 2,
    TYPE_KAELTHAS               = 3,

    NPC_SELIN_FIREHEART         = 24723,
    NPC_DELRISSA                = 24560,
    NPC_FEL_CRYSTAL             = 24722,
    NPC_KALECGOS_DRAGON         = 24844,
    NPC_KAELTHAS                = 24664,

    // Delrissa adds
    NPC_KAGANI                  = 24557,
    NPC_ELLRYS                  = 24558,
    NPC_ERAMAS                  = 24554,
    NPC_YAZZAI                  = 24561,
    NPC_SALARIS                 = 24559,
    NPC_GARAXXAS                = 24555,
    NPC_APOKO                   = 24553,
    NPC_ZELFAN                  = 24556,

    GO_VEXALLUS_DOOR            = 187896,
    GO_SELIN_DOOR               = 187979,                   // SunwellRaid Gate 02
    GO_DELRISSA_DOOR            = 187770,
    GO_SELIN_ENCOUNTER_DOOR     = 188065,                   // Assembly Chamber Door

    GO_KAEL_DOOR                = 188064,
    // GO_KAEL_STATUE_LEFT       = 188165,                  // animation statues - they do not reset on fail
    // GO_KAEL_STATUE_RIGHT      = 188166,
    GO_ESCAPE_QUEL_DANAS        = 188173,
};

static const int32 aDelrissaAddDeath[MAX_DELRISSA_ADDS] = { -1585013, -1585014, -1585015, -1585016};

class MANGOS_DLL_DECL instance_magisters_terrace : public ScriptedInstance
{
    public:
        instance_magisters_terrace(Map* pMap);

        void Initialize() override;

        void OnCreatureCreate(Creature* pCreature) override;
        void OnObjectCreate(GameObject* pGo) override;

        void OnCreatureDeath(Creature* pCreature) override;

        uint32 GetData(uint32 uiType) override;
        void SetData(uint32 uiType, uint32 uiData) override;

        const char* Save() override { return m_strInstData.c_str(); }
        void Load(const char* chrIn) override;

    private:
        uint32 m_auiEncounter[MAX_ENCOUNTER];
        std::string m_strInstData;

        uint32 m_uiDelrissaDeathCount;

        GuidList m_lFelCrystalGuid;
};

#endif
