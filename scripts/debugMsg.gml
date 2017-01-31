// Outputs debug message to debug message object and compile window.

with (obj_debugController) {
    ds_list_add(debugMessages, argument0);
    if (ds_list_size(debugMessages) > 10) {
        ds_list_delete(debugMessages, 0);
    }
}
show_debug_message(argument0);
