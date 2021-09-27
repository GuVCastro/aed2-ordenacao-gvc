data = dlmread ("dados_algoritmos.csv", ";", 0, 0);

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
x = data_bubble_incr(:,2);
y = data_bubble_incr(:,3);
plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);
grid on;
xlabel("data size");
ylabel("time (s)");
title("Time x Size measures");

hold on;

x = data_selection_incr(:,2);
y = data_selection_incr(:,3);
plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

x = data_insertion_incr(:,2);
y = data_insertion_incr(:,3);
plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

x = data_merge_incr(:,2);
y = data_merge_incr(:,3);
plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

x = data_quick_incr(:,2);
y = data_quick_incr(:,3);
plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

x = data_shell_incr(:,2);
y = data_shell_incr(:,3);
plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

x = data_heap_incr(:,2);
y = data_heap_incr(:,3);
plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

x = data_counting_incr(:,2);
y = data_counting_incr(:,3);
plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

legend("incr", "decr", "rand");

