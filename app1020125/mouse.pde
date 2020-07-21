void mousePressed() {
  /*マウスを押したとき*/
  if (app_screen == 0 || app_screen == 1 || app_screen == 2 || app_screen == 3 || app_screen == 4) {
    check_input_mouse = true;
  }
}

void mouseReleased() {
  /*マウスを離たときの処理*/

  /*タイトル画面*/
  if (app_screen == 0 && check_input_mouse == true) {//タイトル画面クリックで次の画面
    check_input_mouse = false;
    app_screen = 1;
  }

  /*グラフを選ぶ画面*/
  /*画面のデザインができてないので調整が必要*/
  if (app_screen == 1 && mouseX >= 28 && mouseX <= 228 && mouseY >= 152 && mouseY <= 352 && check_input_mouse == true) {
    check_input_mouse = false;
    app_screen = 2;
    choice_graph = 1;
  } else if (app_screen == 1 && mouseX >= 250 && mouseX <= 450 && mouseY >= 152 && mouseY <= 352 && check_input_mouse == true) {
    check_input_mouse = false;
    app_screen = 2;
    choice_graph = 2;
  } else if (app_screen == 1 && mouseX >= 470 && mouseX <= 670 && mouseY >= 152 && mouseY <= 352 && check_input_mouse == true) {
    check_input_mouse = false;
    app_screen = 2;
    choice_graph = 3;
  }

  /*選んだグラフを確認する画面*/
  /*前に戻る、次に進む*/
  if (app_screen == 2 && mouseX <= 220 && mouseY >= 460 && check_input_mouse == true) {
    check_input_mouse = false;
    choice_graph = 0;
    app_screen = 1;
  } else if (app_screen == 2 && mouseX >= 470 && mouseY >= 460 && check_input_mouse == true) {
    check_input_mouse = false;
    app_screen = 3;
  }

  /*デザインを選ぶ画面*/
  /*縦棒グラフと横棒グラフのデザインを選ぶ*/
  if ((choice_graph == 1 || choice_graph == 2) && app_screen == 3 && mouseX >= 23 && mouseX <= 140 && mouseY >= 120 && mouseY <= 235 && check_input_mouse == true) {
    check_input_mouse = false;
    app_screen = 4;
    choice_design = 1;
  } else if ((choice_graph == 1 || choice_graph == 2) && app_screen == 3 && mouseX >= 158 && mouseX <= 275 && mouseY >= 120 && mouseY <= 235 && check_input_mouse == true) {
    check_input_mouse = false;
    app_screen = 4;
    choice_design = 2;
  } else if ((choice_graph == 1 || choice_graph == 2) && app_screen == 3 && mouseX >= 292 && mouseX <= 410 && mouseY >= 120 && mouseY <= 235 && check_input_mouse == true) {
    check_input_mouse = false;
    app_screen = 4;
    choice_design = 3;
  } else if ((choice_graph == 1 || choice_graph == 2) && app_screen == 3 && mouseX >= 427 && mouseX <= 543 && mouseY >= 120 && mouseY <= 235 && check_input_mouse == true) {
    check_input_mouse = false;
    app_screen = 4;
    choice_design = 4;
  } else if ((choice_graph == 1 || choice_graph == 2) && app_screen == 3 && mouseX >= 560 && mouseX <= 675 && mouseY >= 120 && mouseY <= 235 && check_input_mouse == true) {
    check_input_mouse = false;
    app_screen = 4;
    choice_design = 5;
  } else if ((choice_graph == 1 || choice_graph == 2) && app_screen == 3 && mouseX >= 90 && mouseX <= 206 && mouseY >= 285 && mouseY <= 402 && check_input_mouse == true) {
    check_input_mouse = false;
    app_screen = 4;
    choice_design = 6;
  } else if ((choice_graph == 1 || choice_graph == 2) && app_screen == 3 && mouseX >= 225 && mouseX <= 342 && mouseY >= 285 && mouseY <= 402 && check_input_mouse == true) {
    check_input_mouse = false;
    app_screen = 4;
    choice_design = 7;
  } else if ((choice_graph == 1 || choice_graph == 2) && app_screen == 3 && mouseX >= 360 && mouseX <= 473 && mouseY >= 285 && mouseY <= 402 && check_input_mouse == true) {
    check_input_mouse = false;
    app_screen = 4;
    choice_design = 8;
  } else if ((choice_graph == 1 || choice_graph == 2) && app_screen == 3 && mouseX >= 495 && mouseX <= 610 && mouseY >= 285 && mouseY <= 402 && check_input_mouse == true) {
    check_input_mouse = false;
    app_screen = 4;
    choice_design = 9;
  }

  /*円グラフのデザインを選ぶ*/
  if (choice_graph == 3 && app_screen == 3 && mouseX >= 23 && mouseX <= 140 && mouseY >= 120 && mouseY <= 235 && check_input_mouse == true) {
    check_input_mouse = false;
    choice_design = 1;
    app_screen = 5;
  } else if (choice_graph == 3 && app_screen == 3 && mouseX >= 158 && mouseX <= 275 && mouseY >= 120 && mouseY <= 235 && check_input_mouse == true) {
    check_input_mouse = false;
    choice_design = 2;
    app_screen = 5;
  } else if (choice_graph == 3 && app_screen == 3 && mouseX >= 292 && mouseX <= 410 && mouseY >= 120 && mouseY <= 235 && check_input_mouse == true) {
    check_input_mouse = false;
    choice_design = 3;
    app_screen = 5;
  } else if (choice_graph == 3 && app_screen == 3 && mouseX >= 427 && mouseX <= 543 && mouseY >= 120 && mouseY <= 235 && check_input_mouse == true) {
    check_input_mouse = false;
    choice_design = 4;
    app_screen = 5;
  } else if (choice_graph == 3 && app_screen == 3 && mouseX >= 560 && mouseX <= 675 && mouseY >= 120 && mouseY <= 235 && check_input_mouse == true) {
    check_input_mouse = false;
    choice_design = 5;
    app_screen = 5;
  } else if (choice_graph == 3 && app_screen == 3 && mouseX >= 90 && mouseX <= 206 && mouseY >= 285 && mouseY <= 402 && check_input_mouse == true) {
    check_input_mouse = false;
    choice_design = 6;
    app_screen = 5;
  } else if (choice_graph == 3 && app_screen == 3 && mouseX >= 225 && mouseX <= 342 && mouseY >= 285 && mouseY <= 402 && check_input_mouse == true) {
    check_input_mouse = false;
    choice_design = 7;
    app_screen = 5;
  } else if (choice_graph == 3 && app_screen == 3 && mouseX >= 360 && mouseX <= 473 && mouseY >= 285 && mouseY <= 402 && check_input_mouse == true) {
    check_input_mouse = false;
    choice_design = 8;
    app_screen = 5;
  } else if (choice_graph == 3 && app_screen == 3 && mouseX >= 495 && mouseX <= 610 && mouseY >= 285 && mouseY <= 402 && check_input_mouse == true) {
    check_input_mouse = false;
    choice_design = 9;
    app_screen = 5;
  }

  /*選んだデザインを確認、詳細を決定する画面*/
  /*デザインの詳細を変えるボタン*/
  if ((choice_graph == 1 || choice_graph == 2) && app_screen == 4 && mouseX >= 375 && mouseX <= 395 && mouseY >= 220 && mouseY <= 240 && check_input_mouse == true) {
    check_input_mouse = false;
    if (graph_background == true) {
      graph_background = false;
    } else if (graph_background == false) {
      graph_background = true;
    }
  }

  if ((choice_graph == 1 || choice_graph == 2) && app_screen == 4 && mouseX >= 375 && mouseX <= 395 && mouseY >= 275 && mouseY <= 295 && check_input_mouse == true) {
    check_input_mouse = false;
    if (graph_auxiliary_line == true) {
      graph_auxiliary_line = false;
    } else if (graph_auxiliary_line == false) {
      graph_auxiliary_line = true;
    }
  }
  /*前の画面に戻る、次の画面に進む*/
  if (app_screen == 4 && mouseX <= 220 && mouseY >= 460 && check_input_mouse == true) {
    check_input_mouse = false;
    choice_design = 0;
    app_screen = 3;
  } else if (app_screen == 4 && mouseX >= 470 && mouseY >= 460 && check_input_mouse == true) {
    check_input_mouse = false;
    app_screen = 5;
  }

  /*ロゴをクリックでタイトルに戻る*/
  if ((app_screen == 1 || app_screen == 2 || app_screen == 3 || app_screen == 4 || app_screen == 5) && mouseX >= 285 && mouseX <= 415 && mouseY >= 460) {
    check_input_mouse = false;
    app_screen = 0;
    choice_graph = 0; 
    choice_design = 0;
  }
}
