(** Modules we use to interact with the host (to which we are a client). *)

include Wayland.Wayland_client
include Wayland_protocols.Xdg_shell_client
include Wayland_protocols.Xdg_output_unstable_v1_client
include Wayland_protocols.Gtk_primary_selection_client
include Wayland_protocols.Wp_primary_selection_unstable_v1_client
include Wayland_protocols.Server_decoration_client
