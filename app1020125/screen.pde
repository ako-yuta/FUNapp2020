void load_image_etc() {
  /*アプリで使う画像の読み込み*/
  template = loadImage("graphmaker.png");
  title = loadImage("app_title.png");
  choice_graph_image = loadImage("choice_graph.png");
  bar_graph = loadImage("bargraph.png");
  hor_graph = loadImage("horgraph.png");
  circle_graph = loadImage("circlegraph.png");
  barhorgraph_design = loadImage("bargraph_design.png");
  circlegraph_design = loadImage("circlegraph_design.png");
  design_check = loadImage("design_check1.png");
}

void darw_title() {
  /*タイトル画面*/
  image(title, 0, 0);
}

void confirm_choiced_graph() {
  /*選んだグラフの説明・確認画面*/
  switch(choice_graph) {
  case 0:
    break;
  case 1:
    image(bar_graph, 0, 0);
    break;
  case 2:
    image(hor_graph, 0, 0);
    break;
  case 3:
    image(circle_graph, 0, 0);
    break;
  }
  draw_arrow();
}

void choice_graph_design() {
  /*デザイン（色）を選択する*/
  switch(choice_graph) {
  case 0:
    break;
  case 1:
    image(barhorgraph_design, 0, 0);
    draw_rect();
    break;
  case 2:
    image(barhorgraph_design, 0, 0);
    draw_rect();
    break;
  case 3:
    image(circlegraph_design, 0, 0);
    draw_rect();
    break;
  }
}

void confirm_choiced_design() {
  /*グラフの詳細を確認する画面*/
  switch(choice_graph) {
  case 0:
    break;
  case 1:
    image(design_check, 0, 0);
    design_detail();
    check_button();
    break;
  case 2:
    image(design_check, 0, 0);
    design_detail();
    check_button();
    break;
  case 3:
    break;
  }
  draw_arrow();
}

void draw_graph() {
  /*グラフを書く*/
  switch(choice_graph) {
  case 0:
    break;
  case 1:
    load_data_barhorgraph();
    draw_bar_graph();
    break;
  case 2:
    load_data_barhorgraph();
    draw_hor_graph();
    break;
  case 3: 
    load_data_circlegraph();
    draw_circle_graph();
    break;
  }
}
