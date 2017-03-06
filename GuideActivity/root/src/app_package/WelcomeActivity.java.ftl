package ${packageName};

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import ${superClassFqcn};
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

public class ${activityClass} extends ${superClass} {

    private ViewPager mViewPager;
    private MyViewPagerAdapter mAdapter;
    private LinearLayout mDotsLayout;
    private List<TextView> dots = new ArrayList<>();
    private List<Integer> layouts = new ArrayList<>();
    private Button mBtnSkip, mBtnNext;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
        changeStatusBarColor();

        mViewPager = (ViewPager) findViewById(R.id.view_pager);
        mDotsLayout = (LinearLayout) findViewById(R.id.layoutDots);
        mBtnNext = (Button) findViewById(R.id.btn_next);
        mBtnSkip = (Button) findViewById(R.id.btn_skip);

        //添加欢迎页面
        <#if counts == '1'>
            layouts.add(R.layout.welcome_slide1);
        <#elseif counts == '2'>
            layouts.add(R.layout.welcome_slide1);
            layouts.add(R.layout.welcome_slide2);
        <#elseif counts == '3'>
            layouts.add(R.layout.welcome_slide1);
            layouts.add(R.layout.welcome_slide2);
            layouts.add(R.layout.welcome_slide3);
        <#elseif counts == '4'>
            layouts.add(R.layout.welcome_slide1);
            layouts.add(R.layout.welcome_slide2);
            layouts.add(R.layout.welcome_slide3);
            layouts.add(R.layout.welcome_slide4);
        <#else>
            layouts.add(R.layout.welcome_slide1);
            layouts.add(R.layout.welcome_slide2);
            layouts.add(R.layout.welcome_slide3);
            layouts.add(R.layout.welcome_slide4);
            layouts.add(R.layout.welcome_slide5);
        </#if>

        //添加点
        addBottomDots(0);
        
        mAdapter = new MyViewPagerAdapter();
        mViewPager.setAdapter(mAdapter);
        mViewPager.addOnPageChangeListener(viewPagerPageChangeListener);

        mBtnSkip.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                launchHomeScreen();
            }
        });

        mBtnNext.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                int current = getItem(1);
                if (current < layouts.size()) {
                    mViewPager.setCurrentItem(current);
                } else {
                    launchHomeScreen();
                }
            }
        });

    }

    private void addBottomDots(int currentPage) {
        int colorActive = getResources().getColor(R.color.guideActive);
        int colorInactive = getResources().getColor(R.color.guideInActive);

        mDotsLayout.removeAllViews();
        dots.clear();
        for (int i = 0; i < layouts.size(); i++) {
            TextView view = new TextView(this);
            //圆点
            view.setText(Html.fromHtml("&#8226;"));
            view.setTextSize(35);
            view.setTextColor(colorInactive);
            mDotsLayout.addView(view);
            dots.add(view);
        }
        if (dots.size() > 0) {
            dots.get(currentPage).setTextColor(colorActive);
        }
    }

    private int getItem(int i) {
        return mViewPager.getCurrentItem() + i;
    }

    private void launchHomeScreen() {

    }

    //让状态栏透明
    private void changeStatusBarColor() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            Window window = getWindow();
            window.getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LAYOUT_STABLE
                    | View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN);
            window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
            window.setStatusBarColor(Color.TRANSPARENT);
        }
    }

    ViewPager.OnPageChangeListener viewPagerPageChangeListener = new ViewPager.OnPageChangeListener() {

        @Override
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {

        }

        @Override
        public void onPageSelected(int position) {
            addBottomDots(position);
            if (position == layouts.size() - 1) {
                mBtnNext.setText("GOT IT");
                mBtnSkip.setVisibility(View.GONE);
            } else {
                mBtnNext.setText("NEXT");
                mBtnSkip.setVisibility(View.VISIBLE);
            }
        }

        @Override
        public void onPageScrollStateChanged(int state) {

        }
    };

    private class MyViewPagerAdapter extends PagerAdapter {

        private LayoutInflater layoutInflater;

        MyViewPagerAdapter() {
        }

        @Override
        public Object instantiateItem(ViewGroup container, int position) {
            layoutInflater = (LayoutInflater) getSystemService(Context.LAYOUT_INFLATER_SERVICE);

            View view = layoutInflater.inflate(layouts.get(position), container, false);
            container.addView(view);
            return view;
        }

        @Override
        public int getCount() {
            return layouts.size();
        }

        @Override
        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }

        @Override
        public void destroyItem(ViewGroup container, int position, Object object) {
            View view = (View) object;
            container.removeView(view);
        }
    }
}
