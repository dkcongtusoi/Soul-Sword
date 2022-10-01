cam = view_camera[0];

view_w_half = camera_get_view_width(cam) * 0.5;

view_h_half = camera_get_view_height(cam) * 0.5;

camera = camera_create();

ori_size_x = 1920;
ori_size_y = 1080;

zoom_factor = 1;
zoomed_in = true;

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(ori_size_x*zoom_factor, ori_size_y*zoom_factor, 1, 10000);

camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

view_camera[0] = camera;

screen_W = display_get_width();
screen_H = display_get_height();
surface_resize(application_surface, screen_W, screen_H);

follow = obj_player;

xTo = x;
yTo = y;

offset = 200;