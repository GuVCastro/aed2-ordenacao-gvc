function data_matrix = get_data_by_id(data, data_id, data_order)
	id_matrix = zeros(7,5);
	j = 1;

	for i = 1:rows(data)
		if (data(i, 1) == data_id && data(i, 5) == data_order)
			if (j < 8)
				id_matrix(j,:) = data(i,:);
				j++;
			end
		end
	end
	data_matrix = id_matrix;
end
