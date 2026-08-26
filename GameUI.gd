extends Control

const Story := preload("res://Story.gd")
const ChoiceButtonScene: PackedScene = preload("res://ui/ChoiceButton.tscn")

@onready var ascii_background: Label = %ASCIIBackground
@onready var game_text: RichTextLabel = %GameText
@onready var choices_container: VBoxContainer = %ChoicesContainer

var story: Dictionary = Story.get_story()
var current_node_id := "1"
var current_page := 0

func _ready() -> void:
	randomize()
	show_node("1")

func show_node(node_id: String) -> void:
	current_node_id = node_id
	current_page = 0
	render_current_page()

func render_current_page() -> void:
	clear_choices()

	var node: Dictionary = story[current_node_id]
	var pages: Array = node.get("pages", [])
	var text := str(pages[current_page])

	render_background_art(node)

	if node.has("ending"):
		text = "[center][b]%s[/b][/center]\n\n%s" % [node["ending"], text]

	game_text.text = text

	if current_page < pages.size() - 1:
		add_choice_button("Avançar", func() -> void:
			current_page += 1
			render_current_page()
		)
		return

	for choice in node.get("choices", []):
		add_choice_button(choice["label"], func() -> void:
			handle_choice(choice)
		)

func render_background_art(node: Dictionary) -> void:
	ascii_background.text = ""

	var art_pages: Array = node.get("art", [])
	if current_page >= art_pages.size():
		return

	var art_path := str(art_pages[current_page])
	if not art_path.is_empty() and FileAccess.file_exists(art_path):
		ascii_background.text = FileAccess.get_file_as_string(art_path)

func handle_choice(choice: Dictionary) -> void:
	if choice.has("random_next"):
		var options: Array = choice["random_next"]
		show_node(str(options.pick_random()))
		return

	show_node(str(choice["next"]))

func add_choice_button(label: String, callback: Callable) -> void:
	var button := ChoiceButtonScene.instantiate() as Button
	button.text = label
	button.pressed.connect(callback)
	choices_container.add_child(button)

func clear_choices() -> void:
	for child in choices_container.get_children():
		child.queue_free()
