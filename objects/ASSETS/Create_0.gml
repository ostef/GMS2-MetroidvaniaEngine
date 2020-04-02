/// @desc Initialize variables
var buff = buffer_load("assets_items.json");
items = json_decode(buffer_read(buff, buffer_text));
buffer_delete(buff);