## *********************************************************
##
## File autogenerated for the ipa_room_segmentation package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'name': 'Default', 'type': '', 'state': True, 'cstate': 'true', 'id': 0, 'parent': 0, 'parameters': [{'name': 'room_segmentation_algorithm', 'type': 'int', 'default': 3, 'level': 0, 'description': 'Segmentation method', 'min': 1, 'max': 99, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': "{'enum': [{'name': 'MorphologicalSegmentation', 'type': 'int', 'value': 1, 'srcline': 8, 'srcfile': '/home/hp/catkin_ws/src/ipa_coverage_planning/ipa_room_segmentation/cfg/RoomSegmentation.cfg', 'description': 'Use the morphological segmentation algorithm.', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'DistanceSegmentation', 'type': 'int', 'value': 2, 'srcline': 9, 'srcfile': '/home/hp/catkin_ws/src/ipa_coverage_planning/ipa_room_segmentation/cfg/RoomSegmentation.cfg', 'description': 'Use the distance segmentation algorithm.', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'VoronoiSegmentation', 'type': 'int', 'value': 3, 'srcline': 10, 'srcfile': '/home/hp/catkin_ws/src/ipa_coverage_planning/ipa_room_segmentation/cfg/RoomSegmentation.cfg', 'description': 'Use the Voronoi segmentation algorithm.', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'SemanticSegmentation', 'type': 'int', 'value': 4, 'srcline': 11, 'srcfile': '/home/hp/catkin_ws/src/ipa_coverage_planning/ipa_room_segmentation/cfg/RoomSegmentation.cfg', 'description': 'Use the semantic/feature-based segmentation algorithm.', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'RandomFieldSegmentation', 'type': 'int', 'value': 5, 'srcline': 12, 'srcfile': '/home/hp/catkin_ws/src/ipa_coverage_planning/ipa_room_segmentation/cfg/RoomSegmentation.cfg', 'description': 'Use the voronoi-random-field segmentation algorithm.', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'PassThroughSegmentation', 'type': 'int', 'value': 99, 'srcline': 13, 'srcfile': '/home/hp/catkin_ws/src/ipa_coverage_planning/ipa_room_segmentation/cfg/RoomSegmentation.cfg', 'description': 'Use the pass through segmentation algorithm.', 'ctype': 'int', 'cconsttype': 'const int'}], 'enum_description': 'Segmentation algorithm'}", 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'display_segmented_map', 'type': 'bool', 'default': False, 'level': 0, 'description': 'Show the resulting segmented map directly', 'min': False, 'max': True, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'bool', 'cconsttype': 'const bool'}, {'name': 'publish_segmented_map', 'type': 'bool', 'default': False, 'level': 0, 'description': 'Publish the resulting segmented map as grid map', 'min': False, 'max': True, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'bool', 'cconsttype': 'const bool'}, {'name': 'room_area_factor_upper_limit_morphological', 'type': 'double', 'default': 47.0, 'level': 0, 'description': 'Upper room limit for morphological segmentation', 'min': 0.0, 'max': inf, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'room_area_factor_lower_limit_morphological', 'type': 'double', 'default': 0.8, 'level': 0, 'description': 'Lower room limit for morphological segmentation', 'min': 0.0, 'max': inf, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'room_area_factor_upper_limit_distance', 'type': 'double', 'default': 163.0, 'level': 0, 'description': 'Upper room limit for distance segmentation', 'min': 0.0, 'max': inf, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'room_area_factor_lower_limit_distance', 'type': 'double', 'default': 0.35, 'level': 0, 'description': 'Lower room limit for distance segmentation', 'min': 0.0, 'max': inf, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'room_area_factor_upper_limit_voronoi', 'type': 'double', 'default': 1000000.0, 'level': 0, 'description': 'Upper room limit for Voronoi segmentation', 'min': 0.0, 'max': inf, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'room_area_factor_lower_limit_voronoi', 'type': 'double', 'default': 0.1, 'level': 0, 'description': 'Lower room limit for Voronoi segmentation', 'min': 0.0, 'max': inf, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'room_area_factor_upper_limit_semantic', 'type': 'double', 'default': 1000000.0, 'level': 0, 'description': 'Upper room limit for semantic/feature-based segmentation', 'min': 0.0, 'max': inf, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'room_area_factor_lower_limit_semantic', 'type': 'double', 'default': 1.0, 'level': 0, 'description': 'Lower room limit for semantic/feature-based segmentation', 'min': 0.0, 'max': inf, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'room_area_upper_limit_voronoi_random', 'type': 'double', 'default': 1000000.0, 'level': 0, 'description': 'Upper room limit for Voronoi-random-field segmentation', 'min': 0.0, 'max': inf, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'room_area_lower_limit_voronoi_random', 'type': 'double', 'default': 1.53, 'level': 0, 'description': 'Lower room limit for Voronoi-random-field segmentation', 'min': 0.0, 'max': inf, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'room_area_upper_limit_passthrough', 'type': 'double', 'default': 1000000.0, 'level': 0, 'description': 'Upper room limit for Voronoi-random-field segmentation', 'min': 0.0, 'max': inf, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'room_area_lower_limit_passthrough', 'type': 'double', 'default': 1.0, 'level': 0, 'description': 'Lower room limit for Voronoi-random-field segmentation', 'min': 0.0, 'max': inf, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'voronoi_neighborhood_index', 'type': 'int', 'default': 280, 'level': 0, 'description': 'Size of neighborhood on graph for Voronoi segmentation, larger value sets a larger neighborhood for searching critical points', 'min': 0, 'max': 2147483647, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'max_iterations', 'type': 'int', 'default': 150, 'level': 0, 'description': 'Max number of Iterations for search of neighbors, also used for the vrf segmentation', 'min': 0, 'max': 2147483647, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'min_critical_point_distance_factor', 'type': 'double', 'default': 0.5, 'level': 0, 'description': 'Minimal distance factor between two critical points before one of it gets eliminated', 'min': 0.0, 'max': inf, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'max_area_for_merging', 'type': 'double', 'default': 12.5, 'level': 0, 'description': 'Maximal area [m^2] of a room that should be merged with its surrounding rooms, also used for the voronoi random field segmentation', 'min': 0.0, 'max': inf, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'voronoi_random_field_epsilon_for_neighborhood', 'type': 'int', 'default': 5, 'level': 0, 'description': 'Larger value sets larger neighborhood, concentrated in a node of the conditional random field', 'min': 0, 'max': 2147483647, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'min_neighborhood_size', 'type': 'int', 'default': 4, 'level': 0, 'description': 'Min. size of the above mentioned neighborhood', 'min': 0, 'max': 2147483647, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'min_voronoi_random_field_node_distance', 'type': 'double', 'default': 7.0, 'level': 0, 'description': 'Min distance the base nodes for each crf node need to be apart', 'min': 0.0, 'max': inf, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'max_voronoi_random_field_inference_iterations', 'type': 'int', 'default': 9000, 'level': 0, 'description': 'Max number of iterations the inference algorithm should do', 'min': 0, 'max': 2147483647, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}], 'groups': [], 'srcline': 246, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'class': 'DEFAULT', 'parentclass': '', 'parentname': 'Default', 'field': 'default', 'upper': 'DEFAULT', 'lower': 'groups'}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

RoomSegmentation_MorphologicalSegmentation = 1
RoomSegmentation_DistanceSegmentation = 2
RoomSegmentation_VoronoiSegmentation = 3
RoomSegmentation_SemanticSegmentation = 4
RoomSegmentation_RandomFieldSegmentation = 5
RoomSegmentation_PassThroughSegmentation = 99