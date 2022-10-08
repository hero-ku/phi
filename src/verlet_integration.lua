local verlet_integration = {}

function verlet_integration.create_verlet_object(properties)
    return {
        current_position = properties.position,
        old_position = properties.position,
        acceleration = Vector2.new()
    }
end

function verlet_integration.update_verlet_object(verlet_object, delta_time)
	local velocity = verlet_object.current_position - verlet_object.old_position
		
	verlet_object.old_position = verlet_object.current_position
	verlet_object.current_position = verlet_object.current_position + velocity + verlet_object.acceleration * delta_time^2

	verlet_object.acceleration = Vector2.new(0,0)
end



return verlet_integration