tool
extends EditorPlugin

const MainPanel = preload("res://addons/Lunar_Gompo_Editor/Lunar_Manager/Main_Lunar_Tab.tscn")
var InspecterPanel = preload("res://addons/Lunar_Gompo_Editor/Inspecter_Addon/Lunar_Inspecter.tscn")

var main_panel_instance

var Custome2D_Tools:Dictionary = {}

func _enter_tree():
	main_panel_instance = MainPanel.instance()
	# Add the main panel to the editor's main viewport.
	#print(get_editor_interface().get_editor_viewport().get_children())
	print(get_viewport2D_children_nodes()) #I have found the tool parts for the 2D editor
	print("Seperater")
	print(get_viewport2D_children()) #I have found the tool parts for the 2D editor
	get_editor_interface().get_editor_viewport().add_child(main_panel_instance)
	place_Canvas_Tools(Custome2D_Tools)
	#var viewPort2D_Dock_Nodes = get_viewport2D_children_nodes()
	#get_editor_interface().get_resource_previewer().add_child(InspecterPanel)
	#get_editor_interface().get_inspector().add_child(InspecterPanel)
	
	# Hide the main panel. Very much required.
	make_visible(false)
	pass


func _exit_tree():
	if main_panel_instance:
		main_panel_instance.queue_free()
		
	#remove_inspector_plugin(InspecterPanel)



func place_Canvas_Tools(canvas_Items:Dictionary)->void:
	var Godot_2DView_Dock = get_viewport2D_children_nodes()
	
	if !canvas_Items.empty(): #Not Empty
		
		pass
	pass

func get_viewport():
	return get_editor_interface().get_editor_viewport()

func get_viewport2D_children():
	return get_editor_interface().get_editor_viewport().get_children()[0].get_children()

func get_viewport2D_children_nodes():
	return get_editor_interface().get_editor_viewport().get_children()[0].get_children()[0].get_children()

func has_main_screen():
	return true


func make_visible(visible):
	if main_panel_instance:
		main_panel_instance.visible = visible


func get_plugin_name():
	return "Lunar Gompo Editor"


func get_plugin_icon():
	return get_editor_interface().get_base_control().get_icon("Node", "EditorIcons")
