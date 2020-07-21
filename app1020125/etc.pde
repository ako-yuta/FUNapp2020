void draw_arrow() {
  /*------------------------------
   グラフの確認画面で
   戻る付近にカーソルを持っていくと<<を表示
   進む付近にカーソルを持っていくと>>を表示
   --------------------------------*/
  if ((app_screen == 2 || app_screen == 4) && mouseX <= 220 && mouseY >= 460) {
    fill(15, 144, 191);
    textSize(20);
    text("<<", 32, 484);
    textSize(12);
    fill(255);
  }
  if ((app_screen == 2 || app_screen == 4) && mouseX >= 470 && mouseY >= 460) {
    fill(15, 144, 191);
    textSize(20);
    text(">>", 646, 484);
    textSize(12);
    fill(255);
  }
}

void draw_rect() {
  /*--------------------------------
   グラフのデザイン（色）を選ぶところで
   カーソル持っていったところに資格を表示
   ----------------------------------*/
  strokeWeight(4);
  stroke(15, 144, 191);
  fill(255, 255, 255, 0);

  /*グラフの選択画面*/
  if (app_screen == 1) {
    if (mouseX >= 28 && mouseX <= 228 && mouseY >= 152 && mouseY <= 352) {
      rect(27, 151, 200, 200);
    } else if (mouseX >= 250 && mouseX <= 450 && mouseY >= 152 && mouseY <= 352) {
      rect(249, 151, 200, 200);
    } else if (mouseX >= 470 && mouseX <= 670 && mouseY >= 152 && mouseY <= 352) {
      rect(469, 151, 200, 200);
    }
  }

  /*グラフのデザイン選択画面*/
  if (app_screen == 3) {
    if (mouseX >= 23 && mouseX <= 140 && mouseY >= 120 && mouseY <= 235) {
      rect(23, 118, 116, 116);
    } else if (mouseX >= 158 && mouseX <= 275 && mouseY >= 120 && mouseY <= 235) {
      rect(158, 118, 116, 116);
    } else if (mouseX >= 292 && mouseX <= 410 && mouseY >= 120 && mouseY <= 235) {
      rect(292, 118, 116, 116);
    } else if (mouseX >= 427 && mouseX <= 543 && mouseY >= 120 && mouseY <= 235) {
      rect(427, 118, 116, 116);
    } else if (mouseX >= 560 && mouseX <= 675 && mouseY >= 120 && mouseY <= 235) {
      rect(560, 118, 116, 116);
    } else if (mouseX >= 90 && mouseX <= 206 && mouseY >= 285 && mouseY <= 402) {
      rect(90, 284, 116, 116);
    } else if (mouseX >= 225 && mouseX <= 342 && mouseY >= 285 && mouseY <= 402) {
      rect(225, 284, 116, 116);
    } else if (mouseX >= 360 && mouseX <= 473 && mouseY >= 285 && mouseY <= 402) {
      rect(358, 284, 116, 116);
    } else if (mouseX >= 495 && mouseX <= 610 && mouseY >= 285 && mouseY <= 402) {
      rect(493, 284, 116, 116);
    }
  }
  strokeWeight(1);
  stroke(0);
  fill(255);
}

void check_button() {

  /*棒グラフでデザインの詳細を決めるところのボタン*/
  if (choice_graph == 1 || choice_graph == 2 || choice_graph == 3) {
    if (graph_background) {
      fill(3, 186, 250);
      rect(375, 220, 20, 20);
    } else {
      fill(255);
      rect(375, 220, 20, 20);
    }

    if (graph_auxiliary_line) {
      fill(3, 186, 250);
      rect(375, 275, 20, 20);
    } else {
      fill(255);
      rect(375, 275, 20, 20);
    }
  }
}

void design_detail() {
  /*デザイン詳細に決めるところの見本の描写*/

  if (graph_background) {
    noStroke();
    fill(#ADADAD, 150);
    rect(100, 150, 200, 200);
    fill(0);
    stroke(0);
  }

  if (graph_auxiliary_line) {
    stroke(0);
    if (choice_graph == 1) {
      line(100, 150, 300, 150);
      line(100, 250, 300, 250);
    } else if (choice_graph == 2) {
      line(299, 150, 299, 350);
      line(200, 150, 200, 350);
    }
    noStroke();
    fill(255, 255, 255, 170);
    rect(100, 150, 200, 200);
    fill(0);
    stroke(0);
  }

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

  if (choice_graph == 1) {
    rect(135, 250, 30, 100);
    rect(185, 150, 30, 200);
    rect(235, 275, 30, 75);
  } else if (choice_graph == 2) {
    rect(100, 185, 200, 30);
    rect(100, 235, 100, 30);
    rect(100, 285, 75, 30);
  }
  fill(255);

  line(100, 150, 100, 350);
  line(100, 350, 300, 350);
}
