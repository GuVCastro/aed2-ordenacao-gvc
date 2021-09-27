function plot_lightest_rand(data_bubble_rand, data_selection_rand, data_insertion_rand, data_merge_rand, data_quick_rand, data_shell_rand, data_heap_rand, data_counting_rand)
    figure(12);

	x = data_bubble_rand(:,2);
	y = data_bubble_rand(:,4);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);
	grid on;
    axis ([0, 140000, 2, 4]);
	xlabel("data size");
	ylabel("memory (kB)");
	title("Memory x Size measures - Scaled (Random)");

	hold on;

	x = data_selection_rand(:,2);
	y = data_selection_rand(:,4);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

	x = data_insertion_rand(:,2);
	y = data_insertion_rand(:,4);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

	x = data_merge_rand(:,2);
	y = data_merge_rand(:,4);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

	x = data_quick_rand(:,2);
	y = data_quick_rand(:,4);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

	x = data_shell_rand(:,2);
	y = data_shell_rand(:,4);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

	x = data_heap_rand(:,2);
	y = data_heap_rand(:,4);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

	x = data_counting_rand(:,2);
	y = data_counting_rand(:,4);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2, "--");

	legend("bubble", "selection", "insertion", "merge", "quick", "shell", "heap", "counting");
    
    hold off;
end
