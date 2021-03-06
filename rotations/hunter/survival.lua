-- SPEC ID 255
ProbablyEngine.rotation.register(255, {

    -- Pet
    { "!/cast [@pet,dead] Revive Pet; Call Pet 1", "!pet.alive" },
    { "!/cast [@pet,dead] Revive Pet; Call Pet 1", "!pet.exists" },

    -- Traps
    { "Snake Trap"    , "modifier.control", "ground" },
    { "Explosive Trap", "modifier.alt", "ground" },
    { "Freezing Trap" , "modifier.shift", "ground" },

    { "Counter Shot", "modifier.interrupts" }, 

    -- Survival
   { "Deterrence",{
        "player.health < 40",
        "!player.buff(Deterrence)"
    }}, 
    { "Exhilaration", "player.health < 40" },
    { "Mend Pet", {
        "pet.health <= 75",
        "pet.exists",
        "!pet.buff(Mend Pet)"
    }},

    -- Cooldowns
    { "Stampede", "modifier.cooldowns" },
    { "A Murder of Crows", "modifier.cooldowns" },
    { "Dire Beast", "modifier.cooldowns" },
    { "Rapid Fire", "modifier.cooldowns" },
    { "Rabid", {
        "modifier.cooldowns",
        "player.buff(Rapid Fire)"
    }},
    { "Blood Fury", "modifier.cooldowns" },

    -- AoE
    { "Multi-Shot", {
        "player.buff(Thrill of the Hunt)",
        "modifier.multitarget"
    }},
    { "Multi-Shot", {
        "player.focus >= 60",
        "modifier.multitarget"
    }},

    -- Rotation
    { "Kill Shot", "target.health < 20"}, 
    { "Explosive Shot", "player.buff(Lock and Load)" },
    { "Serpent Sting", "!target.debuff(Serpent Sting)" },
    { "Cobra Shot", "target.debuff(Serpent Sting).duration < 4" },
    { "Black Arrow"},
    { "Explosive Shot" },
    { "Glaive Toss" },
    { "Powershot" },
    { "Barrage" },
    { "Dire Beast" },
    { "Fervor", "player.focus <= 35" }, 
    { "Arcane Shot", "player.buff(Thrill of the Hunt)"},
    { "Arcane Shot", "player.focus >= 60"},
    { "Cobra Shot" }

  }
)
