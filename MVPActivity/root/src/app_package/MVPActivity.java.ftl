package ${packageName};

import ${superClassFqcn};
import android.os.Bundle;

public class ${activityClass} extends ${superClass} implements ${contract}.View {

    private ${contract}.Presenter mPresenter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        <#if generateLayout>
        setContentView(R.layout.${layoutName});
        </#if>
        mPresenter = new ${presenter}(this);
    }

    @Override
    public void setPresenter(${contract}.Presenter presenter) {
        mPresenter = presenter;
    }

    @Override
    protected void onResume() {
        super.onResume();
        mPresenter.start();
    }
}
