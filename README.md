# 6sem_PlotsBase
(qt + QCustomPlot) may be a base to the other projects

/2.Графики (Qt, PyQt)
	1.В текстовом файлике набор записей вида:
		<количество точек>:
		<x1>, <y1>
		<x2>, <y2>
		<x3>, <y3>
		.....
		Каждая запись - отдельный график
		График - маркер для точки + отрезок между двумя смежными точками.
		Каждый новый график - новый цвет.
	2.Реализовать открытие файлика через стандартный диалог открытия файлов Qt.
	3.Считывается  с проверкой на возможные ошибки формата записи файла
	4.Нужно реализовать на QCustomPlot
  5.Реализация возможностей:
		Зум (изменение масштаба - увеличивать, уменьшать)
		Перемещение по полотну графика
		Типы графиков
			отрезки (ломаная линия)
			плавная линия
		По горячим клавишам:
			возврат в точку (0,0)
			масштаб в 1
			ctrl+0 = уместить график на полотно
		Оси координат
			ограничения на зум, чтобы не было дублирования меток
			с увеличением зума - увеличение детализации подписей (Месяцы - дни - часы - минуты)		
			основное деление (10 мелких меток) - выделение цветом
			дополнительное деление - 5 мелких меток - выделение другим цветом
			мелкие метки - выделение третьим цветом
			Подписи осей координат
	6.Только для QCustomPlot и pyqtgraph:
		Растягивание графика
			вытянуть по X
			вытянуть по Y
			увеличить\уменьшить		
		Перемещение всего графика
		Клики мышкой и отдельные точки графика
			добавление новой точки
			изменение координаты точки (перетягивание мышкой)
