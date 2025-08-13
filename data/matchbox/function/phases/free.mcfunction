clear @a

item replace entity @a hotbar.0 with iron_axe[unbreakable={},!attribute_modifiers,tooltip_display={hide_tooltip:true},can_break={blocks:"minecraft:oak_sign"}]
item replace entity @a hotbar.1 with oak_sign[tooltip_display={hide_tooltip:true},can_place_on={blocks:"quartz_block"}] 16
item replace entity @a hotbar.2 with wooden_sword[unbreakable={},!attribute_modifiers,tooltip_display={hide_tooltip:true},custom_data={MATCHBOX:"mark"},consumable={consume_seconds:2147483647},item_model="air",item_name=""]
item replace entity @a hotbar.3 with wooden_sword[unbreakable={},!attribute_modifiers,tooltip_display={hide_tooltip:true},custom_data={MATCHBOX:"mark"},consumable={consume_seconds:2147483647},item_model="air",item_name=""]
item replace entity @a hotbar.4 with wooden_sword[unbreakable={},!attribute_modifiers,tooltip_display={hide_tooltip:true},custom_data={MATCHBOX:"mark"},consumable={consume_seconds:2147483647},item_model="air",item_name=""]
item replace entity @a hotbar.5 with wooden_sword[unbreakable={},!attribute_modifiers,tooltip_display={hide_tooltip:true},custom_data={MATCHBOX:"mark"},consumable={consume_seconds:2147483647},item_model="air",item_name=""]
item replace entity @a hotbar.6 with wooden_sword[unbreakable={},!attribute_modifiers,tooltip_display={hide_tooltip:true},custom_data={MATCHBOX:"mark"},consumable={consume_seconds:2147483647},item_model="air",item_name=""]
item replace entity @a hotbar.7 with wooden_sword[unbreakable={},!attribute_modifiers,tooltip_display={hide_tooltip:true},custom_data={MATCHBOX:"mark"},consumable={consume_seconds:2147483647},item_model="air",item_name=""]
item replace entity @a hotbar.8 with crossbow[unbreakable={},!attribute_modifiers,tooltip_display={hide_tooltip:true}]

give @a spectral_arrow[tooltip_display={hide_tooltip:true},item_model="air",item_name=""]

item replace entity @a inventory.13 with barrier[item_name={"text":"请不要在游戏内打开背包!","color":"red"},lore=[{"text":"在游戏内操作物品栏可能会","color":"gray",italic:false},{"text":"预想不到的错误!","color":"gray",italic:false}]]

schedule function matchbox:phases/enter_intro 598s
schedule function matchbox:phases/discuss 600s