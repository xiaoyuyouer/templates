package ${packageName};


public interface ${contract} {

    interface Presenter {
        void start();
    }

    interface View {
        void setPresenter(Presenter presenter);
    }

}
