import processing.pdf.*;
int app_screen = 0, choice_graph = 0, choice_design = 0;
int data_count;
float graph_line_x, graph_line_y, graph_line_width, graph_line_height, data_sum, circle_graph_size = 250;
float data_min_max_float[] = new float[2], data_value[] = new float[12], pidata_value[];
boolean check_input_mouse = true;
boolean graph_background = true, graph_auxiliary_line = true;
String graph_name[] = new String[1], data_name[] = new String[12];
String csv_data[], graph_name_container[], data_min_max_contaier[], data_count_container[], data_name_container[], data_value_container[];
PImage template, title, choice_graph_image, bar_graph, hor_graph, circle_graph, barhorgraph_design, circlegraph_design, design_check;

void setup() {
  size(700, 500);
  PFont font = createFont("Meiryo", 18);
  textFont(font);

  load_image_etc();
  beginRecord(PDF, "Graph.pdf");
}

void draw() {
  switch(app_screen) {
  case 0: //タイトル
    darw_title();
    break;
  case 1: //グラフを選ぶ
    image(choice_graph_image, 0, 0);
    draw_rect();
    break;
  case 2: //選んだグラフの確認
    confirm_choiced_graph();
    break;
  case 3: //デザインを選ぶ
    choice_graph_design();
    break;
  case 4: //デインの詳細
    confirm_choiced_design();
    break;
  case 5: //グラフを描画、pdfに書き込む
    draw_graph();
    break;
  }
}
