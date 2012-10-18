default.leafdecay_trunk_cache = {}
default.leafdecay_enable_cache = true
default.leafdecay_trunk_find_allow_accumulator = 0

minetest.register_globalstep(function(dtime)
	local finds_per_second = 5000
	default.leafdecay_trunk_find_allow_accumulator =
			math.floor(dtime * finds_per_second)
end)

minetest.register_abm({
	nodenames = {"group:leafdecay"},
	neighbors = {"air", "group:liquid"},
	interval = 2,
	chance = 5,

	action = function(p0, node, _, _)
		local do_preserve = false
		local d = minetest.registered_nodes[node.name].groups.leafdecay
		if not d or d == 0 then
			return
		end
		local n0 = minetest.env:get_node(p0)
		if n0.param2 ~= 0 then
			return
		end
		local p0_hash = nil
		if default.leafdecay_enable_cache then
			p0_hash = minetest.hash_node_position(p0)
			local trunkp = default.leafdecay_trunk_cache[p0_hash]
			if trunkp then
				local n = minetest.env:get_node(trunkp)
				local reg = minetest.registered_nodes[n.name]
				if n.name == "ignore" or (reg.groups.tree and reg.groups.tree ~= 0) then
					return
				end
				table.remove(default.leafdecay_trunk_cache, p0_hash)
			end
		end
		if default.leafdecay_trunk_find_allow_accumulator <= 0 then
			return
		end
		default.leafdecay_trunk_find_allow_accumulator =
				default.leafdecay_trunk_find_allow_accumulator - 1
		local p1 = minetest.env:find_node_near(p0, d, {"ignore", "group:tree"})
		if p1 then
			do_preserve = true
			if default.leafdecay_enable_cache then
				default.leafdecay_trunk_cache[p0_hash] = p1
			end
		end
		if not do_preserve then
			itemstacks = minetest.get_node_drops(n0.name)
			for _, itemname in ipairs(itemstacks) do
				if itemname ~= n0.name then
					local p_drop = {
						x = p0.x - 0.5 + math.random(),
						y = p0.y - 0.5 + math.random(),
						z = p0.z - 0.5 + math.random(),
					}
					minetest.env:add_item(p_drop, itemname)
				end
			end
			minetest.env:remove_node(p0)
		end
	end
})

