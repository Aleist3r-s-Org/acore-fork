/*
 * This file is part of the AzerothCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Affero General Public License as published by the
 * Free Software Foundation; either version 3 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "Player.h"
#include "SpellAuraEffects.h"
#include "SpellInfo.h"
#include "SpellMgr.h"
#include "SpellScript.h"
#include "SpellScriptLoader.h"

enum MonkSpells
{
    SPELL_MONK_OX_STANCE                    = 101064,
    SPELL_MONK_OX_STANCE_PASSIVE1           = 101065,
    SPELL_MONK_OX_STANCE_PASSIVE2           = 101066,
    SPELL_MONK_SERPENT_STANCE               = 101060,
    SPELL_MONK_SERPENT_STANCE_PASSIVE       = 101061,
    SPELL_MONK_TIGER_STANCE                 = 101062,
    SPELL_MONK_TIGER_STANCE_PASSIVE         = 101063,
    SPELL_MONK_VIVIFY_ENERGY_COST           = 101094
};

enum MiscSpells
{
    SPELL_BLOOD_ELF_ARCANE_TORRENT_MANA     = 101010,
    SPELL_BLOOD_ELF_ARCANE_TORRENT_MONK     = 101009,
    SPELL_BLOOD_ELF_ARCANE_TORRENT_ENERGY   = 101011
};

// 101009 - Arcane Torrent
class spell_monk_arcane_torrent : public SpellScript
{
    PrepareSpellScript(spell_monk_arcane_torrent);

    bool Validate(SpellInfo const* /*spellEntry*/) override
    {
        return ValidateSpellInfo(
            {
                SPELL_BLOOD_ELF_ARCANE_TORRENT_MONK,
                SPELL_BLOOD_ELF_ARCANE_TORRENT_ENERGY,
                SPELL_BLOOD_ELF_ARCANE_TORRENT_MANA,
                SPELL_MONK_SERPENT_STANCE
            });
    }

    void HandleOnHit(SpellEffIndex effIndex)
    {
        Unit* caster = GetCaster();

        if (!caster->HasAura(SPELL_MONK_SERPENT_STANCE))
        {
            PreventHitDefaultEffect(effIndex);
            caster->CastSpell(caster, SPELL_BLOOD_ELF_ARCANE_TORRENT_ENERGY, true);
        }
        else
        {
            PreventHitDefaultEffect(effIndex);
            caster->CastSpell(caster, SPELL_BLOOD_ELF_ARCANE_TORRENT_MANA, true);
        }
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_monk_arcane_torrent::HandleOnHit, EFFECT_1, SPELL_EFFECT_DUMMY);
    }
};

// 101062 - Stance of the Sturdy Ox
class spell_monk_ox_stance_aura : public AuraScript
{
    PrepareAuraScript(spell_monk_ox_stance_aura);

    bool Validate(SpellInfo const* /*spellEntry*/) override
    {
        return ValidateSpellInfo(
            {
                SPELL_MONK_OX_STANCE,
                SPELL_MONK_OX_STANCE_PASSIVE1,
                SPELL_MONK_OX_STANCE_PASSIVE2
            });
    }

    void HandleOnApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        Unit* caster = GetCaster();

        if (!caster->HasAura(SPELL_MONK_OX_STANCE_PASSIVE1))
            caster->AddAura(SPELL_MONK_OX_STANCE_PASSIVE1, caster);

        if (!caster->HasAura(SPELL_MONK_OX_STANCE_PASSIVE2))
            caster->AddAura(SPELL_MONK_OX_STANCE_PASSIVE2, caster);
    }

    void HandleOnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        Unit* caster = GetCaster();

        if (caster->HasAura(SPELL_MONK_OX_STANCE_PASSIVE1))
            caster->RemoveAura(SPELL_MONK_OX_STANCE_PASSIVE1);

        if (caster->HasAura(SPELL_MONK_OX_STANCE_PASSIVE2))
            caster->RemoveAura(SPELL_MONK_OX_STANCE_PASSIVE2);
    }

    void Register() override
    {
        OnEffectApply += AuraEffectApplyFn(spell_monk_ox_stance_aura::HandleOnApply, EFFECT_0, SPELL_AURA_MOD_SHAPESHIFT, AURA_EFFECT_HANDLE_REAL);
        OnEffectRemove += AuraEffectRemoveFn(spell_monk_ox_stance_aura::HandleOnRemove, EFFECT_0, SPELL_AURA_MOD_SHAPESHIFT, AURA_EFFECT_HANDLE_REAL);
    }
};

// 101060 - Stance of the Wise Serpent
class spell_monk_serpent_stance_aura : public AuraScript
{
    PrepareAuraScript(spell_monk_serpent_stance_aura);

    bool Validate(SpellInfo const* /*spellEntry*/) override
    {
        return ValidateSpellInfo(
            {
                SPELL_MONK_SERPENT_STANCE,
                SPELL_MONK_SERPENT_STANCE_PASSIVE
            });
    }

    void HandleOnApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        Unit* caster = GetCaster();

        if (!caster->HasAura(SPELL_MONK_SERPENT_STANCE_PASSIVE))
            caster->AddAura(SPELL_MONK_SERPENT_STANCE_PASSIVE, caster);
    }

    void HandleOnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        Unit* caster = GetCaster();

        if (caster->HasAura(SPELL_MONK_SERPENT_STANCE_PASSIVE))
            caster->RemoveAura(SPELL_MONK_SERPENT_STANCE_PASSIVE);
    }

    void Register() override
    {
        OnEffectApply += AuraEffectApplyFn(spell_monk_serpent_stance_aura::HandleOnApply, EFFECT_0, SPELL_AURA_MOD_SHAPESHIFT, AURA_EFFECT_HANDLE_REAL);
        OnEffectRemove += AuraEffectRemoveFn(spell_monk_serpent_stance_aura::HandleOnRemove, EFFECT_0, SPELL_AURA_MOD_SHAPESHIFT, AURA_EFFECT_HANDLE_REAL);
    }
};

// 101062 - Stance of the Fierce Tiger
class spell_monk_tiger_stance_aura : public AuraScript
{
    PrepareAuraScript(spell_monk_tiger_stance_aura);

    bool Validate(SpellInfo const* /*spellEntry*/) override
    {
        return ValidateSpellInfo(
            {
                SPELL_MONK_TIGER_STANCE,
                SPELL_MONK_TIGER_STANCE_PASSIVE
            });
    }

    void HandleOnApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        Unit* caster = GetCaster();

        if (!caster->HasAura(SPELL_MONK_TIGER_STANCE_PASSIVE))
            caster->AddAura(SPELL_MONK_TIGER_STANCE_PASSIVE, caster);
    }

    void HandleOnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        Unit* caster = GetCaster();

        if (caster->HasAura(SPELL_MONK_TIGER_STANCE_PASSIVE))
            caster->RemoveAura(SPELL_MONK_TIGER_STANCE_PASSIVE);
    }

    void Register() override
    {
        OnEffectApply += AuraEffectApplyFn(spell_monk_tiger_stance_aura::HandleOnApply, EFFECT_0, SPELL_AURA_MOD_SHAPESHIFT, AURA_EFFECT_HANDLE_REAL);
        OnEffectRemove += AuraEffectRemoveFn(spell_monk_tiger_stance_aura::HandleOnRemove, EFFECT_0, SPELL_AURA_MOD_SHAPESHIFT, AURA_EFFECT_HANDLE_REAL);
    }
};

// -101093 - Vivify
class spell_monk_vivify : public SpellScript
{
    PrepareSpellScript(spell_monk_vivify);

    bool Validate(SpellInfo const* /*spellEntry*/) override
    {
        return ValidateSpellInfo(
            {
                SPELL_MONK_OX_STANCE,
                SPELL_MONK_TIGER_STANCE,
                SPELL_MONK_VIVIFY_ENERGY_COST
            });
    }

    SpellCastResult CheckRequirement()
    {
        Unit* caster = GetCaster();

        if (caster->HasAura(SPELL_MONK_OX_STANCE) || caster->HasAura(SPELL_MONK_TIGER_STANCE))
            if (caster->GetPower(POWER_ENERGY) < 30)
            {
                Spell::SpellErrorVoiceNotification(int32(POWER_ENERGY), caster->ToPlayer());
                return SPELL_FAILED_DONT_REPORT;
            }

        return SPELL_CAST_OK;
    }

    void ConsumeEnergy()
    {
        if (GetCaster()->HasAura(SPELL_MONK_OX_STANCE) || GetCaster()->HasAura(SPELL_MONK_TIGER_STANCE))
            GetCaster()->CastSpell(GetCaster(), SPELL_MONK_VIVIFY_ENERGY_COST, true);
    }

    void Register() override
    {
        OnCheckCast += SpellCheckCastFn(spell_monk_vivify::CheckRequirement);
        OnCast += SpellCastFn(spell_monk_vivify::ConsumeEnergy);
    }
};

void AddSC_monk_spell_scripts()
{
    RegisterSpellScript(spell_monk_arcane_torrent);
    RegisterSpellScript(spell_monk_ox_stance_aura);
    RegisterSpellScript(spell_monk_serpent_stance_aura);
    RegisterSpellScript(spell_monk_tiger_stance_aura);
    RegisterSpellScript(spell_monk_vivify);
}
