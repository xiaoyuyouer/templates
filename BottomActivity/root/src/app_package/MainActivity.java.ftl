package ${packageName};

import android.os.Bundle;
import android.support.annotation.NonNull;
import ${packageName}.widget.BottomNavigationViewEx;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;
import android.widget.TextView;

public class ${activityClass} extends AppCompatActivity {

    private TextView mTextMessage;

    private BottomNavigationViewEx.OnNavigationItemSelectedListener mOnNavigationItemSelectedListener
            = new BottomNavigationViewEx.OnNavigationItemSelectedListener() {

        @Override
        public boolean onNavigationItemSelected(@NonNull MenuItem item) {
            switch (item.getItemId()) {
                case R.id.navigation1:
                    mTextMessage.setText("消息");
                    return true;
                case R.id.navigation2:
                    mTextMessage.setText("联系人");
                    return true;
                case R.id.navigation3:
                    mTextMessage.setText("工作");
                    return true;
                case R.id.navigation4:
                    mTextMessage.setText("应用");
                    return true;
                case R.id.navigation5:
                    mTextMessage.setText("我");
                    return true;
            }
            return false;
        }

    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});

        mTextMessage = (TextView) findViewById(R.id.message);
        BottomNavigationViewEx navigation = (BottomNavigationViewEx) findViewById(R.id.navigation);
        navigation.enableAnimation(false);
        navigation.enableShiftingMode(false);
        navigation.enableItemShiftingMode(false);
        navigation.setOnNavigationItemSelectedListener(mOnNavigationItemSelectedListener);
    }

}
