void draw_pi(float v1, float v2) {
  /*円グラフのパラメーター*/
  arc(250, 250, circle_graph_size, circle_graph_size, v1*TWO_PI-HALF_PI, v2*TWO_PI-HALF_PI);
}

void draw_circle(float[] v) {
  /*円グラフの描写*/
  float next, crnt = 0;

  /*データの合計*/
  for (int i = 0; i < data_count; i++) {
    data_sum += v[i];
  }

  for (int i = 0; i < 5; i++) {
    next = crnt + v[i]/data_sum;

    // 扇型を描く
    if (choice_design == 1) {
      fill(0, 255 - i * 70);
    } else if (choice_design == 2) {
      fill(#FF0000, 255 - i * 70);
    } else if (choice_design == 3) {
      fill(#FF89EC, 255 - i * 70);
    } else if (choice_design == 4) {
      fill(#9800FF, 255 - i * 70);
    } else if (choice_design == 5) {
      fill(#0000FF, 255 - i * 70);
    } else if (choice_design == 6) {
      fill(#00F4FF, 255 - i * 70);
    } else if (choice_design == 7) {
      fill(#00FF3D, 255 - i * 70);
    } else if (choice_design == 8) {
      fill(#F6FF00, 255 - i * 70);
    } else if (choice_design == 9) {
      fill(#FF7C00, 255 - i * 70);
    }
    draw_pi(crnt, next);

    /*データの項目名*/
    rect(430, i * 40 + 170, 12, 12);
    textSize(12);
    fill(0);
    text(data_name[i], 450, i * 40 + 180);

    crnt = next;
  }
}

void draw_circle_graph() {
  image(template, 0, 0);

  fill(0);
  textSize(18);
  text(graph_name[0], 280, 80);
  textSize(12);

  draw_circle(pidata_value);
  fill(0);

  endRecord();
  noLoop();
}  
