void load_data_barhorgraph() {
  /*棒グラフの描写に使うデータのロード*/
  String csv_data[] = loadStrings("graph_data.csv");
  String graph_name_container[] = split(csv_data[0], ',');
  String data_min_max_container[] = split(csv_data[1], ',');
  String data_name_container[] = split(csv_data[2], ',');
  String data_value_container[] = split(csv_data[3], ',');

  graph_name[0] = graph_name_container[0];

  data_min_max_float[0] = float(data_min_max_container[0]);
  data_min_max_float[1] = float(data_min_max_container[1]);

  for (int i = 0; i < data_name_container.length; i++) {
    data_name[i] = data_name_container[i];
  }

  for (int i = 0; i < data_value_container.length; i++) {
    data_value[i] = float(data_value_container[i]);
  }
}

void load_data_circlegraph() {
  /*円グラフに使うデータのロード*/
  String csv_data[] = loadStrings("graph_data.csv");
  String graph_name_container[] = split(csv_data[0], ',');
  String data_count_container[] = split(csv_data[1], ',');
  String data_name_container[] = split(csv_data[2], ',');
  String data_value_container[] = split(csv_data[3], ',');

  pidata_value = new float[data_value_container.length];

  graph_name[0] = graph_name_container[0];

  data_count = int(data_count_container[0]);

  for (int i = 0; i < pidata_value.length; i++) {
    pidata_value[i] = float(data_value_container[i]);
  }

  for (int i = 0; i < data_name_container.length; i++) {
    data_name[i] = data_name_container[i];
  }
}
