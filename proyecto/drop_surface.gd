extends PanelContainer

var board
var zone = ""
var card_owner = -1
var uid = -1
var display_uid = -1
var clicked = Callable()

func _ready():
	if board != null and (uid != -1 or display_uid != -1 or clicked.is_valid()): board.hover_feedback(self,1.045)

func descriptor():
	return {"zone": zone, "owner": card_owner, "target": uid, "card":get_meta("card_surface", false)}

func _get_drag_data(_at_position):
	if board == null: return null
	var data = board.drag_payload(uid, zone, card_owner)
	if data == null: return null
	set_drag_preview(board.drag_preview(uid, zone))
	board.highlight_destinations(data)
	return data

func _can_drop_data(_at_position, data):
	return board != null and board.can_drop(data, board.effective_destination(self))

func _drop_data(_at_position, data):
	board.apply_drop(data, board.effective_destination(self))

func _gui_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if (board.presenting or board.fx.busy) and not event.double_click and zone!="inspection": return
		if event.double_click:
			var card_uid = display_uid if display_uid != -1 else uid
			if card_uid != -1:
				board.open_card_detail(card_uid)
				accept_event()
				return
		if board.tutorial.active and board.screen=="table" and board.tutorial.click_surface(self):
			accept_event();return
		if zone=="defense" and uid!=-1 and board.cancel_block_on_click(uid):accept_event();return
		if clicked.is_valid(): clicked.call()

func _notification(what):
	if what == NOTIFICATION_DRAG_END and board != null:
		board.clear_highlights()
