function plot_mem_rand(data_bubble_rand, data_selection_rand, data_insertion_rand, data_merge_rand, data_quick_rand, data_shell_rand, data_heap_rand, data_counting_rand)
    figure(9);

	x = data_bubble_rand(:,2);
	y = data_bubble_rand(:,4);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);
	grid on;
	xlabel("tamanho do array");
	ylabel("memória (kB)");
	title("Medidas de Tamaho x Memória (Aleatório)");

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

	legend({"bubble", "selection", "insertion", "merge", "quick", "shell", "heap", "counting"}, 'location', 'eastoutside');
    
    hold off;
end
