minetest.register_item(":", {
	type = "none",
	wield_image = "wieldhand.png",
	wield_scale = {x=1,y=1,z=2.5},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level = 0,
		groupcaps = {
			fleshy = {times={[2]=2.00, [3]=1.00}, uses=0, maxlevel=1},
			crumbly = {times={[2]=3.00, [3]=0.70}, uses=0, maxlevel=1},
			snappy = {times={[3]=0.40}, uses=0, maxlevel=1},
			oddly_breakable_by_hand = {times={[1]=7.00,[2]=4.00,[3]=1.40}, uses=0, maxlevel=3},
		}
	}
})

minetest.register_tool("minimal:pick_wood", {
	description = "Wooden Pickaxe",
	inventory_image = "default_tool_woodpick.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			cracky={times={[2]=2.00, [3]=1.20}, uses=10, maxlevel=1}
		}
	},
})

minetest.register_tool("minimal:pick_stone", {
	description = "Stone Pickaxe",
	inventory_image = "default_tool_stonepick.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			cracky={times={[1]=3.00, [2]=1.20, [3]=0.80}, uses=20, maxlevel=1}
		}
	},
})

minetest.register_tool("minimal:pick_steel", {
	description = "Steel Pickaxe",
	inventory_image = "default_tool_steelpick.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			cracky={times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=30, maxlevel=2}
		}
	},
})

minetest.register_tool("minimal:pick_mese", {
	description = "Mese Pickaxe",
	inventory_image = "default_tool_mesepick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			cracky={times={[1]=2.0, [2]=1.0, [3]=0.5}, uses=20, maxlevel=3},
			crumbly={times={[1]=2.0, [2]=1.0, [3]=0.5}, uses=20, maxlevel=3},
			snappy={times={[1]=2.0, [2]=1.0, [3]=0.5}, uses=20, maxlevel=3}
		}
	},
})

minetest.register_tool("minimal:shovel_stone", {
	description = "Stone Shovel",
	inventory_image = "default_tool_stoneshovel.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			crumbly={times={[1]=1.50, [2]=0.50, [3]=0.30}, uses=20, maxlevel=1}
		}
	},
})

minetest.register_tool("minimal:shovel_steel", {
	description = "Steel Shovel",
	inventory_image = "default_tool_steelshovel.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=30, maxlevel=2}
		}
	},
})

minetest.register_tool("minimal:axe_stone", {
	description = "Stone Axe",
	inventory_image = "default_tool_stoneaxe.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			choppy={times={[1]=3.00, [2]=1.00, [3]=0.60}, uses=20, maxlevel=1},
			fleshy={times={[2]=1.30, [3]=0.70}, uses=20, maxlevel=1}
		}
	},
})

minetest.register_tool("minimal:axe_steel", {
	description = "Steel Axe",
	inventory_image = "default_tool_steelaxe.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=30, maxlevel=2},
			fleshy={times={[2]=1.10, [3]=0.60}, uses=40, maxlevel=1}
		}
	},
})

minetest.register_craft({
	output = 'minimal:wood 4',
	recipe = {
		{'minimal:tree'},
	}
})

minetest.register_craft({
	output = 'minimal:stick 4',
	recipe = {
		{'minimal:wood'},
	}
})

minetest.register_craft({
	output = 'minimal:torch 4',
	recipe = {
		{'minimal:coal_lump'},
		{'minimal:stick'},
	}
})

minetest.register_craft({
	output = 'minimal:pick_wood',
	recipe = {
		{'minimal:wood', 'minimal:wood', 'minimal:wood'},
		{'', 'minimal:stick', ''},
		{'', 'minimal:stick', ''},
	}
})

minetest.register_craft({
	output = 'minimal:pick_stone',
	recipe = {
		{'minimal:cobble', 'minimal:cobble', 'minimal:cobble'},
		{'', 'minimal:stick', ''},
		{'', 'minimal:stick', ''},
	}
})

minetest.register_craft({
	output = 'minimal:pick_steel',
	recipe = {
		{'minimal:steel_ingot', 'minimal:steel_ingot', 'minimal:steel_ingot'},
		{'', 'minimal:stick', ''},
		{'', 'minimal:stick', ''},
	}
})

minetest.register_craft({
	output = 'minimal:pick_mese',
	recipe = {
		{'minimal:mese', 'minimal:mese', 'minimal:mese'},
		{'', 'minimal:stick', ''},
		{'', 'minimal:stick', ''},
	}
})

minetest.register_craft({
	output = 'minimal:shovel_stone',
	recipe = {
		{'minimal:cobble'},
		{'minimal:stick'},
		{'minimal:stick'},
	}
})

minetest.register_craft({
	output = 'minimal:shovel_steel',
	recipe = {
		{'minimal:steel_ingot'},
		{'minimal:stick'},
		{'minimal:stick'},
	}
})

minetest.register_craft({
	output = 'minimal:axe_stone',
	recipe = {
		{'minimal:cobble', 'minimal:cobble'},
		{'minimal:cobble', 'minimal:stick'},
		{'', 'minimal:stick'},
	}
})

minetest.register_craft({
	output = 'minimal:axe_steel',
	recipe = {
		{'minimal:steel_ingot', 'minimal:steel_ingot'},
		{'minimal:steel_ingot', 'minimal:stick'},
		{'', 'minimal:stick'},
	}
})

minetest.register_craft({
	output = 'minimal:chest',
	recipe = {
		{'minimal:wood', 'minimal:wood', 'minimal:wood'},
		{'minimal:wood', '', 'minimal:wood'},
		{'minimal:wood', 'minimal:wood', 'minimal:wood'},
	}
})

minetest.register_craft({
	output = 'minimal:furnace',
	recipe = {
		{'minimal:cobble', 'minimal:cobble', 'minimal:cobble'},
		{'minimal:cobble', '', 'minimal:cobble'},
		{'minimal:cobble', 'minimal:cobble', 'minimal:cobble'},
	}
})

minetest.register_craft({
	output = 'minimal:ladder',
	recipe = {
		{'minimal:stick', '', 'minimal:stick'},
		{'minimal:stick', 'minimal:stick', 'minimal:stick'},
		{'minimal:stick', '', 'minimal:stick'},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "minimal:glass",
	recipe = "minimal:sand",
})

minetest.register_craft({
	type = "cooking",
	output = "minimal:stone",
	recipe = "minimal:cobble",
})

minetest.register_craft({
	type = "cooking",
	output = "minimal:steel_ingot",
	recipe = "minimal:iron_lump",
})

minetest.register_craft({
	type = "fuel",
	recipe = "minimal:tree",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "minimal:leaves",
	burntime = 1,
})

minetest.register_craft({
	type = "fuel",
	recipe = "minimal:ladder",
	burntime = 5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "minimal:wood",
	burntime = 7,
})

minetest.register_craft({
	type = "fuel",
	recipe = "minimal:mese",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "minimal:lava_source",
	burntime = 60,
})

minetest.register_craft({
	type = "fuel",
	recipe = "minimal:torch",
	burntime = 4,
})

minetest.register_craft({
	type = "fuel",
	recipe = "minimal:chest",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "minimal:sapling",
	burntime = 10,
})

minetest.register_craft({
	type = "fuel",
	recipe = "minimal:apple",
	burntime = 3,
})

minetest.register_craft({
	type = "fuel",
	recipe = "minimal:coal_lump",
	burntime = 40,
})

minetest.register_node("minimal:stone", {
	description = "Stone",
	tiles = {"default_stone.png"},
	groups = {cracky=3},
	drop = 'minimal:cobble',
	sounds = {footstep={name="default_hard_footstep",gain=0.2}, dug={name="default_dug_node",gain=1.0}, dig={name="default_dig_cracky",gain=0.4}},
})

minetest.register_node("minimal:stone_with_coal", {
	description = "Coal Ore",
	tiles = {"default_stone.png^default_mineral_coal.png"},
	groups = {cracky=3},
	drop = 'minimal:coal_lump',
	sounds = {footstep={name="default_hard_footstep",gain=0.2}, dug={name="default_dug_node",gain=1.0}, dig={name="default_dig_cracky",gain=0.4}},
})

minetest.register_node("minimal:stone_with_iron", {
	description = "Iron Ore",
	tiles = {"default_stone.png^default_mineral_iron.png"},
	groups = {cracky=3},
	drop = 'minimal:iron_lump',
	sounds = {footstep={name="default_hard_footstep",gain=0.2}, dug={name="default_dug_node",gain=1.0}, dig={name="default_dig_cracky",gain=0.4}},
})

minetest.register_node("minimal:dirt_with_grass", {
	description = "Dirt with Grass",
	tiles = {"default_grass.png", "default_dirt.png", "default_dirt.png^default_grass_side.png"},
	groups = {crumbly=3},
	drop = 'minimal:dirt',
	sounds = {footstep={name="default_grass_footstep",gain=0.4}, dug={name="",gain=1.0}, dig={name="default_dig_crumbly",gain=0.4}},
})

minetest.register_node("minimal:dirt", {
	description = "Dirt",
	tiles = {"default_dirt.png"},
	groups = {crumbly=3},
	sounds = {footstep={name="default_grass_footstep",gain=0.4}, dug={name="",gain=1.0}, dig={name="default_dig_crumbly",gain=0.4}},
})

minetest.register_node("minimal:sand", {
	description = "Sand",
	tiles = {"default_sand.png"},
	groups = {crumbly=3},
	sounds = {footstep={name="default_grass_footstep",gain=0.25}, dug={name="",gain=0.25}, dig={name="default_dig_crumbly",gain=0.4}},
})

minetest.register_node("minimal:gravel", {
	description = "Gravel",
	tiles = {"default_gravel.png"},
	groups = {crumbly=2},
	sounds = {footstep={name="default_gravel_footstep",gain=0.45}, dug={name="",gain=1.0}, dig={name="default_dig_crumbly",gain=0.4}},
})

minetest.register_node("minimal:tree", {
	description = "Tree",
	tiles = {"default_tree_top.png", "default_tree_top.png", "default_tree.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = {footstep={name="default_hard_footstep",gain=0.3}, dug={name="default_dug_node",gain=1.0}, dig={name="default_dig_choppy",gain=0.4}},
})

minetest.register_node("minimal:leaves", {
	description = "Leaves",
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	tiles = {"default_leaves.png"},
	paramtype = "light",
	groups = {snappy=3,flammable=2},
	drop = {
		max_items = 1,
		items = {
			{
				items = {'minimal:sapling'},
				rarity = 20,
			},
			{
				items = {'minimal:leaves'},
			}
		}
	},
	sounds = {footstep={name="default_grass_footstep",gain=0.25}, dug={name="",gain=1.0}, dig={name="default_dig_crumbly",gain=0.4}},
})

minetest.register_node("minimal:glass", {
	description = "Glass",
	drawtype = "glasslike",
	tiles = {"default_glass.png"},
	inventory_image = minetest.inventorycube("default_glass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = {footstep={name="default_hard_footstep",gain=0.25}, dug={name="default_break_glass",gain=1.0}, dig={name="",gain=0.4}},
})

minetest.register_node("minimal:ladder", {
	description = "Ladder",
	drawtype = "signlike",
	tiles = {"default_ladder.png"},
	inventory_image = "default_ladder.png",
	wield_image = "default_ladder.png",
	paramtype = "light",
	sunlight_propagates = true,
	paramtype2 = "wallmounted",
	walkable = false,
	climbable = true,
	selection_box = {
		type = "wallmounted",
	},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=3,flammable=2},
	legacy_wallmounted = true,
	sounds = {footstep={name="default_hard_footstep",gain=0.3}, dug={name="",gain=1.0}, dig={name="default_dig_choppy",gain=0.4}},
})

minetest.register_node("minimal:wood", {
	description = "Wooden Planks",
	tiles = {"default_wood.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	sounds = {footstep={name="default_hard_footstep",gain=0.3}, dug={name="default_dug_node",gain=1.0}, dig={name="default_dig_choppy",gain=0.4}},
})

minetest.register_node("minimal:mese", {
	description = "Mese",
	tiles = {"default_mese.png"},
	groups = {cracky=1},
	sounds = {footstep={name="",gain=1.0}, dug={name="default_dug_node",gain=1.0}, dig={name="default_dig_cracky",gain=0.4}},
})

minetest.register_node("minimal:water_flowing", {
	description = "Flowing Water",
	inventory_image = minetest.inventorycube("default_water.png"),
	drawtype = "flowingliquid",
	tiles = {"default_water.png"},
	special_tiles = {
		{image="default_water.png", backface_culling=false},
		{image="default_water.png", backface_culling=true},
	},
	alpha = 220,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	liquidtype = "flowing",
	liquid_alternative_flowing = "minimal:water_flowing",
	liquid_alternative_source = "minimal:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a=220, r=10, g=10, b=30},
	groups = {water=3, liquid=3, puts_out_fire=1, not_in_creative_inventory=1},
})

minetest.register_node("minimal:water_source", {
	description = "Water Source",
	inventory_image = minetest.inventorycube("default_water.png"),
	drawtype = "liquid",
	tiles = {"default_water.png"},
	special_tiles = {
		{name="default_water.png", backface_culling=false},
	},
	alpha = 220,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	liquidtype = "source",
	liquid_alternative_flowing = "minimal:water_flowing",
	liquid_alternative_source = "minimal:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a=220, r=10, g=10, b=30},
	groups = {water=3, liquid=3, puts_out_fire=1},
})

minetest.register_node("minimal:lava_flowing", {
	description = "Flowing Lava",
	inventory_image = minetest.inventorycube("default_lava.png"),
	drawtype = "flowingliquid",
	tiles = {"default_lava.png"},
	special_tiles = {
		{image="default_lava.png", backface_culling=false},
		{image="default_lava.png", backface_culling=true},
	},
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 13,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	liquidtype = "flowing",
	liquid_alternative_flowing = "minimal:lava_flowing",
	liquid_alternative_source = "minimal:lava_source",
	liquid_viscosity = 7,
	damage_per_second = 4*2,
	post_effect_color = {a=192, r=255, g=64, b=0},
	groups = {lava=3, liquid=2, hot=3, igniter=1, not_in_creative_inventory=1},
})

minetest.register_node("minimal:lava_source", {
	description = "Lava Source",
	inventory_image = minetest.inventorycube("default_lava.png"),
	drawtype = "liquid",
	tiles = {"default_lava.png"},
	special_tiles = {
		{name="default_lava.png", backface_culling=false},
	},
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 13,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	liquidtype = "source",
	liquid_alternative_flowing = "minimal:lava_flowing",
	liquid_alternative_source = "minimal:lava_source",
	liquid_viscosity = 7,
	damage_per_second = 4*2,
	post_effect_color = {a=192, r=255, g=64, b=0},
	groups = {lava=3, liquid=2, hot=3, igniter=1},
})

minetest.register_node("minimal:torch", {
	description = "Torch",
	drawtype = "torchlike",
	tiles = {"default_torch_on_floor.png", "default_torch_on_ceiling.png", "default_torch.png"},
	inventory_image = "default_torch_on_floor.png",
	wield_image = "default_torch_on_floor.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = 13,
	selection_box = {
		type = "wallmounted",
		wall_top = {-0.1, 0.5-0.6, -0.1, 0.1, 0.5, 0.1},
		wall_bottom = {-0.1, -0.5, -0.1, 0.1, -0.5+0.6, 0.1},
		wall_side = {-0.5, -0.3, -0.1, -0.5+0.3, 0.3, 0.1},
	},
	groups = {choppy=2,dig_immediate=3},
	legacy_wallmounted = true,
	sounds = {footstep={name="",gain=1.0}, dug={name="",gain=1.0}, dig={name="",gain=1.0}},
})

minetest.register_node("minimal:chest", {
	description = "Chest",
	tiles = {"default_chest_top.png", "default_chest_top.png", "default_chest_side.png",
		"default_chest_side.png", "default_chest_side.png", "default_chest_front.png"},
	paramtype2 = "facedir",
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	sounds = {footstep={name="default_hard_footstep",gain=0.3}, dug={name="default_dug_node",gain=1.0}, dig={name="default_dig_choppy",gain=0.4}},
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec",
				"size[8,9]"..
				"list[current_name;main;0,0;8,4;]"..
				"list[current_player;main;0,5;8,4;]")
		meta:set_string("infotext", "Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
	end,
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		local meta = minetest.env:get_meta(pos)
		local meta2 = meta
		meta:from_table(oldmetadata)
		local inv = meta:get_inventory()
		for i=1,inv:get_size("main") do
			local stack = inv:get_stack("main", i)
			if not stack:is_empty() then
				local p = {x=pos.x+math.random(0, 10)/10-0.5, y=pos.y, z=pos.z+math.random(0, 10)/10-0.5}
				minetest.env:add_item(p, stack)
			end
		end
		meta:from_table(meta2:to_table())
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from chest at "..minetest.pos_to_string(pos))
	end,
})

local furnace_inactive_formspec =
	"size[8,9]"..
	"image[2,2;1,1;default_furnace_fire_bg.png]"..
	"list[current_name;fuel;2,3;1,1;]"..
	"list[current_name;src;2,1;1,1;]"..
	"list[current_name;dst;5,1;2,2;]"..
	"list[current_player;main;0,5;8,4;]"

minetest.register_node("minimal:furnace", {
	description = "Furnace",
	tiles = {"default_furnace_top.png", "default_furnace_bottom.png", "default_furnace_side.png",
		"default_furnace_side.png", "default_furnace_side.png", "default_furnace_front.png"},
	paramtype2 = "facedir",
	groups = {cracky=2},
	legacy_facedir_simple = true,
	sounds = {footstep={name="default_hard_footstep",gain=0.2}, dug={name="default_dug_node",gain=1.0}, dig={name="default_dig_cracky",gain=0.4}},
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec", furnace_inactive_formspec)
		meta:set_string("infotext", "Furnace")
		local inv = meta:get_inventory()
		inv:set_size("fuel", 1)
		inv:set_size("src", 1)
		inv:set_size("dst", 4)
	end,
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		local meta = minetest.env:get_meta(pos)
		local meta2 = meta
		meta:from_table(oldmetadata)
		local inv = meta:get_inventory()
		for _,list in ipairs({"fuel", "src", "dst"}) do
			for i=1,inv:get_size(list) do
				local stack = inv:get_stack(list, i)
				if not stack:is_empty() then
					local p = {x=pos.x+math.random(0, 10)/10-0.5, y=pos.y, z=pos.z+math.random(0, 10)/10-0.5}
					minetest.env:add_item(p, stack)
				end
			end
		end
		meta:from_table(meta2:to_table())
	end,
})

minetest.register_node("minimal:furnace_active", {
	description = "Furnace",
	tiles = {"default_furnace_top.png", "default_furnace_bottom.png", "default_furnace_side.png",
		"default_furnace_side.png", "default_furnace_side.png", "default_furnace_front_active.png"},
	paramtype2 = "facedir",
	light_source = 8,
	drop = "minimal:furnace",
	groups = {cracky=2, not_in_creative_inventory=1},
	legacy_facedir_simple = true,
	sounds = {footstep={name="default_hard_footstep",gain=0.2}, dug={name="default_dug_node",gain=1.0}, dig={name="default_dig_cracky",gain=0.4}},
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec", furnace_inactive_formspec)
		meta:set_string("infotext", "Furnace");
		local inv = meta:get_inventory()
		inv:set_size("fuel", 1)
		inv:set_size("src", 1)
		inv:set_size("dst", 4)
	end,
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		local meta = minetest.env:get_meta(pos)
		local meta2 = meta
		meta:from_table(oldmetadata)
		local inv = meta:get_inventory()
		for _,list in ipairs({"fuel", "src", "dst"}) do
			for i=1,inv:get_size(list) do
				local stack = inv:get_stack(list, i)
				if not stack:is_empty() then
					local p = {x=pos.x+math.random(0, 10)/10-0.5, y=pos.y, z=pos.z+math.random(0, 10)/10-0.5}
					minetest.env:add_item(p, stack)
				end
			end
		end
		meta:from_table(meta2:to_table())
	end,
})

function hacky_swap_node(pos,name)
	local node = minetest.env:get_node(pos)
	local meta = minetest.env:get_meta(pos)
	local meta0 = meta:to_table()
	if node.name == name then
		return
	end
	node.name = name
	local meta0 = meta:to_table()
	minetest.env:set_node(pos,node)
	meta = minetest.env:get_meta(pos)
	meta:from_table(meta0)
end

minetest.register_abm({
	nodenames = {"minimal:furnace","minimal:furnace_active"},
	interval = 1.0,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local meta = minetest.env:get_meta(pos)
		for i, name in ipairs({
				"fuel_totaltime",
				"fuel_time",
				"src_totaltime",
				"src_time"
		}) do
			if meta:get_string(name) == "" then
				meta:set_float(name, 0.0)
			end
		end

		local inv = meta:get_inventory()

		local srclist = inv:get_list("src")
		local cooked = nil
		
		if srclist then
			cooked = minetest.get_craft_result({method = "cooking", width = 1, items = srclist})
		end
		
		local was_active = false
		
		if meta:get_float("fuel_time") < meta:get_float("fuel_totaltime") then
			was_active = true
			meta:set_float("fuel_time", meta:get_float("fuel_time") + 1)
			meta:set_float("src_time", meta:get_float("src_time") + 1)
			if cooked and cooked.item and meta:get_float("src_time") >= cooked.time then
				if inv:room_for_item("dst",cooked.item) then
					inv:add_item("dst", cooked.item)
					srcstack = inv:get_stack("src", 1)
					srcstack:take_item()
					inv:set_stack("src", 1, srcstack)
				else
					print("Could not insert '"..cooked.item:to_string().."'")
				end
				meta:set_string("src_time", 0)
			end
		end
		
		if meta:get_float("fuel_time") < meta:get_float("fuel_totaltime") then
			local percent = math.floor(meta:get_float("fuel_time") /
					meta:get_float("fuel_totaltime") * 100)
			meta:set_string("infotext","Furnace active: "..percent.."%")
			hacky_swap_node(pos,"minimal:furnace_active")
			meta:set_string("formspec",
				"size[8,9]"..
				"image[2,2;1,1;default_furnace_fire_bg.png^[lowpart:"..
						(100-percent)..":default_furnace_fire_fg.png]"..
				"list[current_name;fuel;2,3;1,1;]"..
				"list[current_name;src;2,1;1,1;]"..
				"list[current_name;dst;5,1;2,2;]"..
				"list[current_player;main;0,5;8,4;]")
			return
		end

		local fuel = nil
		local cooked = nil
		local fuellist = inv:get_list("fuel")
		local srclist = inv:get_list("src")
		
		if srclist then
			cooked = minetest.get_craft_result({method = "cooking", width = 1, items = srclist})
		end
		if fuellist then
			fuel = minetest.get_craft_result({method = "fuel", width = 1, items = fuellist})
		end

		if fuel.time <= 0 then
			meta:set_string("infotext","Furnace out of fuel")
			hacky_swap_node(pos,"minimal:furnace")
			meta:set_string("formspec", furnace_inactive_formspec)
			return
		end

		if cooked.item:is_empty() then
			if was_active then
				meta:set_string("infotext","Furnace is empty")
				hacky_swap_node(pos,"minimal:furnace")
				meta:set_string("formspec", furnace_inactive_formspec)
			end
			return
		end

		meta:set_string("fuel_totaltime", fuel.time)
		meta:set_string("fuel_time", 0)
		
		local stack = inv:get_stack("fuel", 1)
		stack:take_item()
		inv:set_stack("fuel", 1, stack)
	end,
})

minetest.register_node("minimal:cobble", {
	description = "Cobblestone",
	tiles = {"default_cobble.png"},
	groups = {cracky=3},
	sounds = {footstep={name="default_hard_footstep",gain=0.2}, dug={name="default_dug_node",gain=1.0}, dig={name="default_dig_cracky",gain=0.4}},
})

minetest.register_node("minimal:sapling", {
	description = "Sapling",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"default_sapling.png"},
	inventory_image = "default_sapling.png",
	wield_image = "default_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy=2,dig_immediate=2,flammable=2},
	sounds = {footstep={name="",gain=1.0}, dug={name="",gain=1.0}, dig={name="default_dig_crumbly",gain=0.4}},
})

minetest.register_abm({
	nodenames = {"minimal:sapling"},
	interval = 10,
	chance = 50,
	action = function(pos, node)
		if not minetest.env:get_node_light(pos) then
			return
		end
		if minetest.env:get_node_light(pos) < 8 then
			return
		end
		for dy=1,5 do
			pos.y = pos.y+dy
			if not minetest.registered_nodes[minetest.env:get_node(pos).name].buildable_to then
				return
			end
			pos.y = pos.y-dy
		end
		make_tree(pos, math.random(1,10)==1)
	end
})

minetest.register_node("minimal:apple", {
	description = "Apple",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"default_apple.png"},
	inventory_image = "default_apple.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3,dig_immediate=2,flammable=2},
	on_use = minetest.item_eat(4),
	sounds = {footstep={name="",gain=1.0}, dug={name="",gain=1.0}, dig={name="default_dig_crumbly",gain=0.4}},
})

minetest.register_craftitem("minimal:stick", {
	description = "Stick",
	inventory_image = "default_stick.png",
})

minetest.register_craftitem("minimal:coal_lump", {
	description = "Coal Lump",
	inventory_image = "default_coal_lump.png",
})

minetest.register_craftitem("minimal:iron_lump", {
	description = "Iron Lump",
	inventory_image = "default_iron_lump.png",
})

minetest.register_craftitem("minimal:steel_ingot", {
	description = "Steel Ingot",
	inventory_image = "default_steel_ingot.png",
})

minetest.register_alias("mapgen_air", "air")
minetest.register_alias("mapgen_stone", "minimal:stone")
minetest.register_alias("mapgen_tree", "minimal:tree")
minetest.register_alias("mapgen_leaves", "minimal:leaves")
minetest.register_alias("mapgen_apple", "minimal:apple")
minetest.register_alias("mapgen_water_source", "minimal:water_source")
minetest.register_alias("mapgen_dirt", "minimal:dirt")
minetest.register_alias("mapgen_sand", "minimal:sand")
minetest.register_alias("mapgen_gravel", "minimal:gravel")
minetest.register_alias("mapgen_clay", "minimal:sand")
minetest.register_alias("mapgen_lava_source", "minimal:lava_source")
minetest.register_alias("mapgen_cobble", "minimal:cobble")
minetest.register_alias("mapgen_mossycobble", "minimal:cobble")
minetest.register_alias("mapgen_dirt_with_grass", "minimal:dirt_with_grass")
minetest.register_alias("mapgen_junglegrass", "air")
minetest.register_alias("mapgen_stone_with_coal", "minimal:stone_with_coal")
minetest.register_alias("mapgen_stone_with_iron", "minimal:stone_with_iron")
minetest.register_alias("mapgen_mese", "minimal:mese")
minetest.register_alias("mapgen_desert_sand", "minimal:sand")
minetest.register_alias("mapgen_desert_stone", "minimal:stone")

function generate_ore(name, wherein, minp, maxp, seed, chunks_per_volume, chunk_size, ore_per_chunk, height_min, height_max)
	if maxp.y < height_min or minp.y > height_max then
		return
	end
	local y_min = math.max(minp.y, height_min)
	local y_max = math.min(maxp.y, height_max)
	local volume = (maxp.x-minp.x+1)*(y_max-y_min+1)*(maxp.z-minp.z+1)
	local pr = PseudoRandom(seed)
	local num_chunks = math.floor(chunks_per_volume * volume)
	local inverse_chance = math.floor(chunk_size*chunk_size*chunk_size / ore_per_chunk)
	for i=1,num_chunks do
		local y0 = pr:next(y_min, y_max-chunk_size+1)
		if y0 >= height_min and y0 <= height_max then
			local x0 = pr:next(minp.x, maxp.x-chunk_size+1)
			local z0 = pr:next(minp.z, maxp.z-chunk_size+1)
			local p0 = {x=x0, y=y0, z=z0}
			for x1=0,chunk_size-1 do
			for y1=0,chunk_size-1 do
			for z1=0,chunk_size-1 do
				if pr:next(1,inverse_chance) == 1 then
					local x2 = x0+x1
					local y2 = y0+y1
					local z2 = z0+z1
					local p2 = {x=x2, y=y2, z=z2}
					if minetest.env:get_node(p2).name == wherein then
						minetest.env:set_node(p2, {name=name})
					end
				end
			end
			end
			end
		end
	end
end

minetest.register_on_generated(function(minp, maxp, seed)
	generate_ore("minimal:stone_with_coal", "minimal:stone", minp, maxp, seed+0, 1/8/8/8,    3, 8, -31000,  64)
	generate_ore("minimal:stone_with_coal", "minimal:stone", minp, maxp, seed+7, 1/24/24/24, 6,27, -31000,  0)
	generate_ore("minimal:stone_with_iron", "minimal:stone", minp, maxp, seed+1, 1/12/12/12, 2, 3,    -15,   2)
	generate_ore("minimal:stone_with_iron", "minimal:stone", minp, maxp, seed+2, 1/9/9/9,    3, 5,    -63, -16)
	generate_ore("minimal:stone_with_iron", "minimal:stone", minp, maxp, seed+3, 1/7/7/7,    3, 5, -31000, -64)
	generate_ore("minimal:stone_with_iron", "minimal:stone", minp, maxp, seed+6, 1/24/24/24, 6,27, -31000, -64)
	generate_ore("minimal:mese",            "minimal:stone", minp, maxp, seed+4, 1/16/16/16, 2, 3,   -127, -64)
	generate_ore("minimal:mese",            "minimal:stone", minp, maxp, seed+5, 1/9/9/9,    3, 5, -31000,-128)
end)

function make_tree(pos, is_apple_tree)
	for _=1,math.random(4,5) do
		minetest.env:set_node(pos, {name="minimal:tree"})
		pos.y = pos.y+1
	end
	
	pos.y = pos.y-1
	
	local function set_leaves(pos)
		if minetest.registered_nodes[minetest.env:get_node(pos).name].buildable_to then
			if is_apple_tree and math.random(1, 10)==1 then
				minetest.env:set_node(pos, {name="minimal:apple"})
			else
				minetest.env:set_node(pos, {name="minimal:leaves"})
			end
		end
	end
	
	for dx=-1,1 do
	for dy=-1,1 do
	for dz=-1,1 do
		set_leaves({x=pos.x+dx,y=pos.y+dy,z=pos.z+dz})
	end
	end
	end
	
	for _=1,8 do
		local p = {x=math.random(-2, 1),y=math.random(-1, 1),z=math.random(-2, 1),}
		p.x = p.x+pos.x
		p.y = p.y+pos.y
		p.z = p.z+pos.z
		for dx=0,1 do
		for dy=0,1 do
		for dz=0,1 do
			set_leaves({x=p.x+dx,y=p.y+dy,z=p.z+dz})
		end
		end
		end
	end
end
