function plot_time_incr(data_bubble_incr, data_selection_incr, data_insertion_incr, data_merge_incr, data_quick_incr, data_shell_incr, data_heap_incr, data_counting_incr)
	figure(4);

	x = data_bubble_incr(:,2);
	y = data_bubble_incr(:,3);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);
	grid on;
    axis ([0, 140000, 0, 0.1]);
	xlabel("data size");
	ylabel("time (s)");
	title("Time x Size measures (Increasing)");

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

	legend("bubble", "selection", "insertion", "merge", "quick", "shell", "heap", "counting");

	hold off;
end

