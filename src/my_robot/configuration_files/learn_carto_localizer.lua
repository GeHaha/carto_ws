include "map_builder.lua"
include "trajectory_builder.lua"

options = {
  map_builder = MAP_BUILDER,
  trajectory_builder = TRAJECTORY_BUILDER,
  map_frame = "map",
  tracking_frame = "base_link",
  published_frame = "base_link",
  odom_frame = "odom",
  provide_odom_frame = true,
  publish_frame_projected_to_2d = false,
  use_pose_extrapolator = true,
  use_odometry = false,
  use_nav_sat = false,
  use_landmarks = false,
  num_laser_scans = 1,
  num_multi_echo_laser_scans = 0,
  num_subdivisions_per_laser_scan = 1,
  num_point_clouds = 0,
  lookup_transform_timeout_sec = 0.2,
  submap_publish_period_sec = 0.3,
  pose_publish_period_sec = 5e-2,
  trajectory_publish_period_sec = 50e-3,
  rangefinder_sampling_ratio = 1.,
  odometry_sampling_ratio = 1.,
  fixed_frame_pose_sampling_ratio = 1.,
  imu_sampling_ratio = 1.,
  landmarks_sampling_ratio = 0.2,
}
MAP_BUILDER.use_trajectory_builder_2d = true
TRAJECTORY_BUILDER_2D.num_accumulated_range_data = 1
TRAJECTORY_BUILDER_2D.use_imu_data = false

-- MAP_BUILDER.use_trajectory_builder_2d = true
-- MAP_BUILDER.num_background_threads = 8

-- TRAJECTORY_BUILDER.pure_localization_trimmer = {
--   max_submaps_to_keep = 3,
-- }

-- TRAJECTORY_BUILDER_2D.adaptive_voxel_filter.max_length = 0.2
-- TRAJECTORY_BUILDER_2D.adaptive_voxel_filter.min_num_points = 400
-- TRAJECTORY_BUILDER_2D.submaps.num_range_data = 20
-- TRAJECTORY_BUILDER_2D.min_range = 1.
-- TRAJECTORY_BUILDER_2D.max_range = 20.
-- TRAJECTORY_BUILDER_2D.missing_data_ray_length = 20.
-- TRAJECTORY_BUILDER_2D.num_accumulated_range_data = 2
-- TRAJECTORY_BUILDER_2D.use_imu_data = false
-- TRAJECTORY_BUILDER_2D.use_online_correlative_scan_matching = false
-- TRAJECTORY_BUILDER_2D.real_time_correlative_scan_matcher.linear_search_window = 0.03
-- TRAJECTORY_BUILDER_2D.real_time_correlative_scan_matcher.translation_delta_cost_weight = 20.
-- TRAJECTORY_BUILDER_2D.real_time_correlative_scan_matcher.rotation_delta_cost_weight = 1e-1
-- TRAJECTORY_BUILDER_2D.ceres_scan_matcher.translation_weight = 30.
-- TRAJECTORY_BUILDER_2D.ceres_scan_matcher.rotation_weight = 30.
-- TRAJECTORY_BUILDER_2D.ceres_scan_matcher.ceres_solver_options.max_num_iterations = 20
-- TRAJECTORY_BUILDER_2D.submaps.range_data_inserter.probability_grid_range_data_inserter.hit_probability = 0.61
-- TRAJECTORY_BUILDER_2D.submaps.range_data_inserter.probability_grid_range_data_inserter.miss_probability = 0.45

-- TRAJECTORY_BUILDER_2D.motion_filter.max_distance_meters = 1.0
-- TRAJECTORY_BUILDER_2D.motion_filter.max_angle_radians = math.rad(8.)
-- TRAJECTORY_BUILDER_2D.motion_filter.max_time_seconds = 5.

-- POSE_GRAPH.optimize_every_n_nodes = 8
-- POSE_GRAPH.optimization_problem.huber_scale = 1e2
-- POSE_GRAPH.optimization_problem.ceres_solver_options.max_num_iterations = 20
-- POSE_GRAPH.optimization_problem.odometry_translation_weight = 200.
-- POSE_GRAPH.optimization_problem.odometry_rotation_weight = 200.
-- POSE_GRAPH.constraint_builder.min_score = 0.4
-- POSE_GRAPH.constraint_builder.max_constraint_distance = 15.
-- POSE_GRAPH.constraint_builder.sampling_ratio = 0.4
-- POSE_GRAPH.constraint_builder.global_localization_min_score = 0.45
-- POSE_GRAPH.global_sampling_ratio = 0.001

return options