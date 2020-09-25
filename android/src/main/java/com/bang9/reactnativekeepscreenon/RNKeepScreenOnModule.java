package com.bang9.reactnativekeepscreenon;

import android.app.Activity;
import android.view.WindowManager;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

public class RNKeepScreenOnModule extends ReactContextBaseJavaModule {
    RNKeepScreenOnModule(ReactApplicationContext context) {
        super(context);
    }

    @Override
    public String getName() {
        return "RNKeepScreenOn";
    }

    @ReactMethod
    public void on(){
        final Activity activity = getCurrentActivity();
        if(activity != null) {
            activity.runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
                }
            });
        }
    }

    @ReactMethod
    public void off(){
        final Activity activity = getCurrentActivity();
        if(activity != null) {
            activity.runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
                }
            });
        }
    }
}
