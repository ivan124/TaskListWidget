class Main : LayerWidget, EventReceiver
{
    public void initialize() {
        base.initialize();
        set_size_request_override(px("100mm"), px("70mm"));
        add(CanvasWidget.for_colors(Color.instance("#33CCFF"), Color.instance("#000066")));
        add(ButtonWidget.for_string("Click here").set_font(Theme.font().modify("10mm bold color= black outline-color=white")).set_event("button_click_event"));
    }
    
    public void on_event(Object o) {
        if("button_click_event".equals(o)) {
           add(CanvasWidget.for_colors(Color.instance("#33CCFF"), Color.instance("#000066")));
           add(LabelWidget.for_string("Button Clicked!").set_font(Theme.font().modify("10mm bold color=black outline-color=white")));
    
        }    
    }
}