extends Area

export var target: NodePath
onready var target_node: Spatial = get_node(target)

export var player_inside_vis: bool
export var player_outside_vis: bool

func _init():
	connect("body_entered", self, "_body_entered")
	connect("body_exited", self, "_body_exited")

func _body_entered(body):
	if body.is_in_group("player"):
		target_node.visible = player_inside_vis

func _body_exited(body):
	if body.is_in_group("player"):
		target_node.visible = player_outside_vis
