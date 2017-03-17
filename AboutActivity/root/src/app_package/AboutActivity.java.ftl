package ${packageName};

import android.os.Bundle;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.widget.ImageView;
import android.widget.TextView;

public class ${activityClass} extends AppCompatActivity {

    Toolbar toolbar;
    CollapsingToolbarLayout collapsingToolbar;
    ImageView icon;
    TextView slogan, version;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});

        toolbar = (Toolbar) findViewById(R.id.toolbar);
        collapsingToolbar = (CollapsingToolbarLayout) findViewById(R.id.toolbar_layout);
        icon = (ImageView) findViewById(R.id.icon);
        slogan = (TextView) findViewById(R.id.slogan);
        version = (TextView) findViewById(R.id.version);

        setSupportActionBar(toolbar);
        //显示toolbar左上角返回键
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        //不显示toolbar的title
        getSupportActionBar().setDisplayShowTitleEnabled(false);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == android.R.id.home) {
            onBackPressed();
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
