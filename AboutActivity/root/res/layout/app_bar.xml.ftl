<?xml version="1.0" encoding="utf-8"?>
<android.support.design.widget.CoordinatorLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:fitsSystemWindows="true"
    tools:context="${relativePackage}.${activityClass}">

    <android.support.design.widget.AppBarLayout
        android:id="@+id/app_bar"
        android:fitsSystemWindows="true"
        android:layout_height="270dp"
        android:layout_width="match_parent"
        android:theme="@style/${themeNameAppBarOverlay}">

        <android.support.design.widget.CollapsingToolbarLayout
            android:id="@+id/toolbar_layout"
            android:fitsSystemWindows="true"
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            app:layout_scrollFlags="scroll|exitUntilCollapsed"
            app:collapsedTitleTextAppearance="@style/toolBarTitleText"
            app:expandedTitleTextAppearance="@style/transparentText"
            app:contentScrim="?attr/colorPrimary">

            <LinearLayout
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:gravity="center"
                android:orientation="vertical"
                app:layout_collapseMode="parallax">

                <ImageView
                    android:id="@+id/icon"
                    android:layout_width="96dp"
                    android:layout_height="96dp"
                    android:layout_gravity="center"
                    android:src="@drawable/ic_launcher" />

                <TextView
                    android:id="@+id/slogan"
                    android:layout_width="wrap_content"
                    android:layout_height="wrap_content"
                    android:gravity="center"
                    android:text="About Page Magic"
                    android:textColor="@android:color/white"
                    android:textSize="18sp" />

                <TextView
                    android:id="@+id/version"
                    android:layout_width="wrap_content"
                    android:layout_height="wrap_content"
                    android:layout_marginTop="8dp"
                    android:text="Version 1.2.3"
                    android:textColor="@android:color/white"
                    android:textSize="14sp" />

            </LinearLayout>

            <android.support.v7.widget.Toolbar
                android:id="@+id/toolbar"
                android:layout_height="?attr/actionBarSize"
                android:layout_width="match_parent"
                app:layout_collapseMode="pin"
                app:popupTheme="@style/${themeNamePopupOverlay}" />

        </android.support.design.widget.CollapsingToolbarLayout>
    </android.support.design.widget.AppBarLayout>

    <android.support.v4.widget.NestedScrollView
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        app:layout_behavior="@string/appbar_scrolling_view_behavior"
        tools:showIn="@layout/${layoutName}">

        <TextView
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_margin="16dp"
            android:text="@string/large_text" />

    </android.support.v4.widget.NestedScrollView>


</android.support.design.widget.CoordinatorLayout>
