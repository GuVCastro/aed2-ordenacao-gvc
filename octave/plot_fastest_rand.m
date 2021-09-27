function plot_fastest_rand(data_bubble_rand, data_selection_rand, data_insertion_rand, data_merge_rand, data_quick_rand, data_shell_rand, data_heap_rand, data_counting_rand)
    figure(6);

	x = data_bubble_rand(:,2);
	y = data_bubble_rand(:,3);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);
	grid on;
    axis ([0, 140000, 0, 0.1]);
	xlabel("tamanho do array");
	ylabel("tempo (s)");
	title("Medidas Tamanho x Tempo (Aleatório) - Mais rápidos");

	hold on;

	x = data_selection_rand(:,2);
	y = data_selection_rand(:,3);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

	x = data_insertion_rand(:,2);
	y = data_insertion_rand(:,3);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

	x = data_merge_rand(:,2);
	y = data_merge_rand(:,3);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

	x = data_quick_rand(:,2);
	y = data_quick_rand(:,3);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

	x = data_shell_rand(:,2);
	y = data_shell_rand(:,3);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

	x = data_heap_rand(:,2);
	y = data_heap_rand(:,3);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2);

	x = data_counting_rand(:,2);
	y = data_counting_rand(:,3);
	plot (x, y, 'MarkerSize', 10, 'LineWidth', 2, "--");

	legend("bubble", "selection", "insertion", "merge", "quick", "shell", "heap", "counting");
    
    hold off;
end

