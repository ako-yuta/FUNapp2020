void draw_bar(float n, float v) {
  /*縦棒グラフのパラメータ？表示*/
  rect(graph_line_x + n * 40 - 22, graph_line_y - v, 26, v);
}

void draw_bar_graph() {

  /*縦棒グラフの描写*/
  float data_min_max_harf = (data_min_max_float[0] + data_min_max_float[1])/2;
  float data_harf_harf_down = (data_min_max_float[0] + data_min_max_harf)/2;
  float data_harf_harf_up = (data_min_max_float[1] + data_min_max_harf)/2;
  if (choice_graph == 1) {
    graph_line_x = 100;
    graph_line_y = 400;
    graph_line_width = 500;
    graph_line_height = 300;
  }
  image(template, 0, 0);

  /*グラフの背景の色を変える　はい　で背景ネズミ色*/
  if (graph_background) {
    noStroke();
    fill(#ADADAD, 150);
    rect(graph_line_x - 1, graph_line_y - graph_line_height - 1, graph_line_width + 1, graph_line_height + 1);
    fill(0);
    stroke(0);
  }

  /*グラフに補助線を描く　はい　で補助線かく*/
  if (graph_auxiliary_line) {
    stroke(0);
    for (int i = 100; i <= 400; i += 75) {
      line(100, i, graph_line_x + graph_line_width, i);
    }
    noStroke();
    fill(255, 255, 255, 170);
    rect(graph_line_x, graph_line_y - graph_line_height, graph_line_width + 5, graph_line_height);
    fill(0);
    stroke(0);
  }

  /*グラフの軸*/
  stroke(0);
  line(graph_line_x, graph_line_y, graph_line_x + graph_line_width, graph_line_y);
  line(graph_line_x, graph_line_y - graph_line_height, graph_line_x, graph_line_y);

  /*グラフの最大値に近いのキリのいい数と最小値*/
  fill(0);
  text(data_min_max_float[0], 40, graph_line_y);
  text(data_harf_harf_down, 40, 325);
  text(data_min_max_harf, 40, 250);
  text(data_harf_harf_up, 40, 175);
  text(data_min_max_float[1], 40, graph_line_y - graph_line_height);

  /*グラフの名前*/
  textSize(18);
  text(graph_name[0], 280, 80);
  textSize(12);

  /*データの項目名?*/
  for (int i = 0; i < data_name.length; i++) {
    textSize(12);
    text(data_name[i], 40 * i + 120, 415);
  }

  /*グラフの色*/
  if (choice_design == 1) {
    fill(255);
  } else if (choice_design == 2) {
    fill(#FF0000);
  } else if (choice_design == 3) {
    fill(#FF89EC);
  } else if (choice_design == 4) {
    fill(#9800FF);
  } else if (choice_design == 5) {
    fill(#0000FF);
  } else if (choice_design == 6) {
    fill(#00F4FF);
  } else if (choice_design == 7) {
    fill(#00FF3D);
  } else if (choice_design == 8) {
    fill(#F6FF00);
  } else if (choice_design == 9) {
    fill(#FF7C00);
  }

  /*グラフかく*/
  if (data_min_max_float[0] == 0) {
    for (int i = 0; i < data_value.length; i++) {
      draw_bar(i + 1, (data_value[i] / data_min_max_float[1]) * 300);
    }
  } else {
    for (int i = 0; i < data_value.length; i++) {
      draw_bar(i + 1, ((data_value[i] - data_min_max_float[0]) / (data_min_max_float[1] - data_min_max_float[0])) * 300);
    }
  }

  fill(255);

  endRecord();
}
