package ${packageName};


import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import ${packageName}.R;
import ${packageName}.adapter.${adapterClass};
import ${packageName}.bean.ItemA;
import ${packageName}.bean.ItemB;
import ${packageName}.bean.ItemC;
import ${packageName}.bean.ViewItem;
import java.util.ArrayList;
import java.util.List;


public class ${activityClass} extends AppCompatActivity {

    private RecyclerView mRecyclerView;
    private LinearLayoutManager mLayoutManager;
    private ${adapterClass} mAdapter;
    private List<ViewItem> models = new ArrayList<>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutActivityName});
        initView();
        initData();
        initAdapter();
    }

    private void initView() {
        mRecyclerView = (RecyclerView) findViewById(R.id.rv_view);
        mLayoutManager = new LinearLayoutManager(this);
        mRecyclerView.setLayoutManager(mLayoutManager);
    }

    private void initData() {
        for (int i = 0; i < 5; i++) {
            createItemA();
        }
        createItemB();
        createItemC();
        createItemB();
        createItemC();
        createItemA();
        createItemC();
        createItemC();
        createItemB();
        createItemA();
        createItemC();
        createItemC();
        createItemB();
        createItemA();
        createItemC();
        createItemC();
        createItemB();
    }

    private void createItemA() {
        ItemA itemA = new ItemA();
        itemA.setAName("a");
        models.add(itemA);
    }

    private void createItemB() {
        ItemB itemB = new ItemB();
        itemB.setBName("b");
        models.add(itemB);
    }

    private void createItemC() {
        ItemC itemC = new ItemC();
        itemC.setCName("c");
        models.add(itemC);
    }

    private void initAdapter() {
        mAdapter = new ${adapterClass}(models);
        mRecyclerView.setAdapter(mAdapter);
    }

}
