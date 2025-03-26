extends Node2D

const dialogue: DialogueResource = preload("res://main.dialogue")

@onready var icon: Sprite2D = $Icon


func _ready() -> void:
	DialogueManager.show_dialogue_balloon(dialogue, "", [self])


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		DialogueManager.show_dialogue_balloon(dialogue, "", [self])


func enlarge() -> void:
	icon.scale *= 1.1
