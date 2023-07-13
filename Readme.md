# b4-core\shared\items

* Change Script Name From `b4-craftingsystem-main` To `b4-craftingsystem`

**(Add This In resources.cfg)**
`ensure b4-craftingsystem`

*(Add This)*
```lua
-- [QB] - [B4-CraftingSystem] - [V1]
["blueprint_pistol90"] =          {["name"] = "blueprint_pistol90",         ["label"] = "Blueprint",                  ["weight"] = 1, ["type"] = "item", ["image"] = "blueprint_pistol90.png", ["unique"] = true, ["useable"] = true, ['shouldClose'] = true, ["combinable"] = nil, ["description"] = "A blueprint for a crafting item"},

["blueprint_pistol"] =          {["name"] = "blueprint_pistol",         ["label"] = "Blueprint",                  ["weight"] = 1, ["type"] = "item", ["image"] = "blueprint_pistol.png", ["unique"] = true, ["useable"] = true, ['shouldClose'] = true, ["combinable"] = nil, ["description"] = "A blueprint for a crafting item"},

["blueprint_uzi"] =          {["name"] = "blueprint_uzi",         ["label"] = "Blueprint",                  ["weight"] = 1, ["type"] = "item", ["image"] = "blueprint_uzi.png", ["unique"] = true, ["useable"] = true, ['shouldClose'] = true, ["combinable"] = nil, ["description"] = "A blueprint for a crafting item"},

["blueprint_ak"] =          {["name"] = "blueprint_ak",         ["label"] = "Blueprint",                  ["weight"] = 1, ["type"] = "item", ["image"] = "blueprint_ak.png", ["unique"] = true, ["useable"] = true, ['shouldClose'] = true, ["combinable"] = nil, ["description"] = "A blueprint for a crafting item"},

["blueprint_appistol"] =          {["name"] = "blueprint_appistol",         ["label"] = "Blueprint",                  ["weight"] = 1, ["type"] = "item", ["image"] = "blueprint_appistol.png", ["unique"] = true, ["useable"] = true, ['shouldClose'] = true, ["combinable"] = nil, ["description"] = "A blueprint for a crafting item"},

["blueprint_mk"] =          {["name"] = "blueprint_mk",         ["label"] = "Blueprint",                  ["weight"] = 1, ["type"] = "item", ["image"] = "blueprint_mk.png", ["unique"] = true, ["useable"] = true, ['shouldClose'] = true, ["combinable"] = nil, ["description"] = "A blueprint for a crafting item"},
-- Blue Print 
["keys"] = {
    ["name"] = "keys",
    ["label"] = "BluePrint Key",
    ["weight"] = 0,
    ["type"] = "item",
    ["unique"] = false,
    ["useable"] = true,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["image"] = "Keys.png",
    ["description"] = "Blue Print"
},
```

# b4-inventory\html\images

**(Add iT in your Inventory)**

+ from b4-crafting system\images To b4-inventory\html\images

# only Copy image and paste in your inventory

# qb-shops\config
```lua
["bluebrint"] = {
        ["label"] = "bluebrintkeys",
        ["coords"] = vector4(-396.91, 179.11, 80.25, 92.56),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "talk to delar",
        ["products"] = Config.Products["bluebrint"],
        ["showblip"] = false,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-396.91, 179.11, 80.25, 92.56)
    },
```
```lua
["bluebrint"] = {
        [1] = {
            name = "keys",
            price = 3500,
            amount = 1,
            info = {},
            type = "item",
            slot = 1,
        },
    },    
```
# All Rights For B4 Store
+ Discord : ( https://discord.gg/b4s )
+ Discord : ( https://discord.gg/NvbDy6j4Qd )