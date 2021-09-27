function plot_time_decr(data_bubble_decr, data_selection_decr, data_insertion_decr, data_merge_decr, data_quick_decr, data_shell_decr, data_heap_decr, data_counting_decr)
	figure(2);

    x = data_bubble_decr(:,2);
	y = data_bubble_decr(:,3);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);
	grid on;
	xlabel("tamanho do array");
	ylabel("tempo (s)");
	title("Medidas Tamanho x Tempo (Decrescente)");

	hold on;

	x = data_selection_decr(:,2);
	y = data_selection_decr(:,3);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

	x = data_insertion_decr(:,2);
	y = data_insertion_decr(:,3);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

	x = data_merge_decr(:,2);
	y = data_merge_decr(:,3);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

	x = data_quick_decr(:,2);
	y = data_quick_decr(:,3);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

	x = data_shell_decr(:,2);
	y = data_shell_decr(:,3);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

	x = data_heap_decr(:,2);
	y = data_heap_decr(:,3);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

	x = data_counting_decr(:,2);
	y = data_counting_decr(:,3);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2, "--");

	legend({"bubble", "selection", "insertion", "merge", "quick", "shell", "heap", "counting"}, 'location', 'eastoutside');

    hold off;
end