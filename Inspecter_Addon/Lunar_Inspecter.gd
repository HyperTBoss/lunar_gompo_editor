tool
extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func can_handle(object):
	# We support all objects in this example.
	return true
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func parse_property(object, type, path, hint, hint_text, usage):
	# We handle properties of type integer.
	if type == TYPE_INT:
		# Create an instance of the custom property editor and register
		# it to a specific property path.
		# Inform the editor to remove the default property editor for
		# this property type.
		return true
	else:
		return false
