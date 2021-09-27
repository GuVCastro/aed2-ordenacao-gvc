data = dlmread ("../dados_algoritmos.csv", ";", 0, 0);

data_bubble_incr	= get_data_by_id(data, 1, 1);
data_bubble_decr	= get_data_by_id(data, 1, 2);
data_bubble_rand	= get_data_by_id(data, 1, 3);
data_selection_incr	= get_data_by_id(data, 2, 1);
data_selection_decr	= get_data_by_id(data, 2, 2);
data_selection_rand	= get_data_by_id(data, 2, 3);
data_insertion_incr	= get_data_by_id(data, 3, 1);
data_insertion_decr	= get_data_by_id(data, 3, 2);
data_insertion_rand	= get_data_by_id(data, 3, 3);
data_merge_incr		= get_data_by_id(data, 4, 1);
data_merge_decr		= get_data_by_id(data, 4, 2);
data_merge_rand		= get_data_by_id(data, 4, 3);
data_quick_incr		= get_data_by_id(data, 5, 1);
data_quick_decr		= get_data_by_id(data, 5, 2);
data_quick_rand		= get_data_by_id(data, 5, 3);
data_shell_incr		= get_data_by_id(data, 6, 1);
data_shell_decr		= get_data_by_id(data, 6, 2);
data_shell_rand		= get_data_by_id(data, 6, 3);
data_heap_incr		= get_data_by_id(data, 7, 1);
data_heap_decr		= get_data_by_id(data, 7, 2);
data_heap_rand		= get_data_by_id(data, 7, 3);
data_counting_incr	= get_data_by_id(data, 8, 1);
data_counting_decr	= get_data_by_id(data, 8, 2);
data_counting_rand	= get_data_by_id(data, 8, 3);

% Plotting size x time
% Increassing
plot_time_incr(data_bubble_incr, data_selection_incr, data_insertion_incr, data_merge_incr, data_quick_incr, data_shell_incr, data_heap_incr, data_counting_incr);
% Decreassing
%plot_time_decr(data_bubble_decr, data_selection_decr, data_insertion_decr, data_merge_decr, data_quick_decr, data_shell_decr, data_heap_decr, data_counting_decr);
% Random
%plot_time_rand(data_bubble_rand, data_selection_rand, data_insertion_rand, data_merge_rand, data_quick_rand, data_shell_rand, data_heap_rand, data_counting_rand);


% Plotting size x time (scalling for fastest algorithms)
% Increassing
%plot_fastest_incr(data_bubble_incr, data_selection_incr, data_insertion_incr, data_merge_incr, data_quick_incr, data_shell_incr, data_heap_incr, data_counting_incr);
% Decreassing
%plot_fastest_decr(data_bubble_decr, data_selection_decr, data_insertion_decr, data_merge_decr, data_quick_decr, data_shell_decr, data_heap_decr, data_counting_decr);
% Random
%plot_fastest_rand(data_bubble_rand, data_selection_rand, data_insertion_rand, data_merge_rand, data_quick_rand, data_shell_rand, data_heap_rand, data_counting_rand);

% Plotting size x memory
% Increassing
%plot_mem_incr(data_bubble_incr, data_selection_incr, data_insertion_incr, data_merge_incr, data_quick_incr, data_shell_incr, data_heap_incr, data_counting_incr);
% Decreassing
%plot_mem_decr(data_bubble_decr, data_selection_decr, data_insertion_decr, data_merge_decr, data_quick_decr, data_shell_decr, data_heap_decr, data_counting_decr);
% Random
%plot_mem_rand(data_bubble_rand, data_selection_rand, data_insertion_rand, data_merge_rand, data_quick_rand, data_shell_rand, data_heap_rand, data_counting_rand);

% Plotting size x memory (scanlling for lightest algorithms)
% Increassing
%plot_lightest_incr(data_bubble_incr, data_selection_incr, data_insertion_incr, data_merge_incr, data_quick_incr, data_shell_incr, data_heap_incr, data_counting_incr);
% Decreassing
%plot_lightest_decr(data_bubble_decr, data_selection_decr, data_insertion_decr, data_merge_decr, data_quick_decr, data_shell_decr, data_heap_decr, data_counting_decr);
% Random
%plot_lightest_rand(data_bubble_rand, data_selection_rand, data_insertion_rand, data_merge_rand, data_quick_rand, data_shell_rand, data_heap_rand, data_counting_rand);
