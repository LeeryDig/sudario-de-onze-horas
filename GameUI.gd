extends Control

const Story := preload("res://Story.gd")
const ChoiceButtonScene: PackedScene = preload("res://ui/ChoiceButton.tscn")
const ASCII_MIN_FONT_SIZE := 4
const ASCII_MAX_FONT_SIZE := 11

@onready var art_area: Control = %ArtArea
@onready var ascii_background: Label = %ASCIIBackground
@onready var game_text: RichTextLabel = %GameText
@onready var choices_container: VBoxContainer = %ChoicesContainer

var story: Dictionary = Story.get_story()
var current_node_id := "1"
var current_page := 0

func _ready() -> void:
	randomize()
	resized.connect(queue_ascii_art_fit)
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
	if art_pages.is_empty():
		return

	var art_index := mini(current_page, art_pages.size() - 1)
	var art_path := str(art_pages[art_index])
	if not art_path.is_empty() and FileAccess.file_exists(art_path):
		var art_text := FileAccess.get_file_as_string(art_path)
		while art_text.ends_with("\n") or art_text.ends_with("\r"):
			art_text = art_text.substr(0, art_text.length() - 1)
		ascii_background.text = art_text
		queue_ascii_art_fit()

func queue_ascii_art_fit() -> void:
	_fit_ascii_art.call_deferred()

func _fit_ascii_art() -> void:
	if ascii_background.text.is_empty() or art_area.size.x <= 0.0 or art_area.size.y <= 0.0:
		return

	var available_size := art_area.size
	var font := ascii_background.get_theme_font("font")
	var line_spacing := ascii_background.get_theme_constant("line_spacing")
	var lines := ascii_background.text.split("\n")
	var selected_size := ASCII_MIN_FONT_SIZE

	for font_size in range(ASCII_MAX_FONT_SIZE, ASCII_MIN_FONT_SIZE - 1, -1):
		var required_width := 0.0
		for line in lines:
			required_width = maxf(required_width, font.get_string_size(line, HORIZONTAL_ALIGNMENT_LEFT, -1, font_size).x)

		var required_height := font.get_height(font_size) * lines.size()
		required_height += line_spacing * maxi(lines.size() - 1, 0)
		if required_width <= available_size.x and required_height <= available_size.y:
			selected_size = font_size
			break

	ascii_background.add_theme_font_size_override("font_size", selected_size)

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
