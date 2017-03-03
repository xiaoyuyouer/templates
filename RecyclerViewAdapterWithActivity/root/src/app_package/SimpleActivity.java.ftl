package ${packageName};

import ${superClassFqcn};;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;


<#if applicationPackage??>import ${applicationPackage}.R;</#if>

public class ${activityClass} extends ${superClass} {

    private RecyclerView mRecyclerView;
    private ${adapterClass} mAdapter;
    private LinearLayoutManager mLayoutManager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutActivityName});

        mRecyclerView = (RecyclerView) findViewById(R.id.rv_view);
        mLayoutManager = new LinearLayoutManager(this);
        mRecyclerView.setLayoutManager(mLayoutManager);

        mAdapter = new ${adapterClass}();
        mRecyclerView.setAdapter(mAdapter);
    }
}
