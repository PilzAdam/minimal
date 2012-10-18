minetest.register_alias("mapgen_air", "air")
minetest.register_alias("mapgen_stone", "default:stone")
minetest.register_alias("mapgen_tree", "default:tree")
minetest.register_alias("mapgen_leaves", "default:leaves")
minetest.register_alias("mapgen_apple", "default:apple")
minetest.register_alias("mapgen_water_source", "default:water_source")
minetest.register_alias("mapgen_dirt", "default:dirt")
minetest.register_alias("mapgen_sand", "default:sand")
minetest.register_alias("mapgen_gravel", "default:gravel")
minetest.register_alias("mapgen_clay", "default:sand")
minetest.register_alias("mapgen_lava_source", "default:lava_source")
minetest.register_alias("mapgen_cobble", "default:cobble")
minetest.register_alias("mapgen_mossycobble", "default:cobble")
minetest.register_alias("mapgen_dirt_with_grass", "default:dirt_with_grass")
minetest.register_alias("mapgen_junglegrass", "air")
minetest.register_alias("mapgen_stone_with_coal", "default:stone_with_coal")
minetest.register_alias("mapgen_stone_with_iron", "default:stone_with_iron")
minetest.register_alias("mapgen_mese", "default:mese")
minetest.register_alias("mapgen_desert_sand", "default:sand")
minetest.register_alias("mapgen_desert_stone", "default:stone")

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
	generate_ore("default:stone_with_coal", "default:stone", minp, maxp, seed+0, 1/8/8/8,    3, 8, -31000,  64)
	generate_ore("default:stone_with_coal", "default:stone", minp, maxp, seed+7, 1/24/24/24, 6,27, -31000,  0)
	generate_ore("default:stone_with_iron", "default:stone", minp, maxp, seed+1, 1/12/12/12, 2, 3,    -15,   2)
	generate_ore("default:stone_with_iron", "default:stone", minp, maxp, seed+2, 1/9/9/9,    3, 5,    -63, -16)
	generate_ore("default:stone_with_iron", "default:stone", minp, maxp, seed+3, 1/7/7/7,    3, 5, -31000, -64)
	generate_ore("default:stone_with_iron", "default:stone", minp, maxp, seed+6, 1/24/24/24, 6,27, -31000, -64)
	generate_ore("default:mese",            "default:stone", minp, maxp, seed+4, 1/16/16/16, 2, 3,   -127, -64)
	generate_ore("default:mese",            "default:stone", minp, maxp, seed+5, 1/9/9/9,    3, 5, -31000,-128)
end)

