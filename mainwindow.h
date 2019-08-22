#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include "adapter.h"

#include <QMainWindow>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

    Adapter *adapter_;

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private:
    Ui::MainWindow *ui;

private slots:
    void on_center();
    void on_unit_fit();
    void on_fit();
    void on_about();

    void context_menu_request(QPoint pos);
    void move_legend();

    void remove_all_graphs();
    void remove_selected_graph();

    void change_line_type();

    void clear_select();
    void on_mouse_click();

    void on_ButtonLoad_clicked();
    void on_ButtonSaveImg_clicked();
    void on_checkBoxColor_clicked(bool checked);
    void on_checkBoxDrag_clicked(bool checked);
};

#endif // MAINWINDOW_H
