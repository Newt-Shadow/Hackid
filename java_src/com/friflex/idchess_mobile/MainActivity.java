package com.friflex.idchess_mobile;

import android.os.Build;
import android.os.Bundle;
import android.window.SplashScreen;
import android.window.SplashScreenView;
import com.friflex.idchess_mobile.MainActivity;
import d0.a1;
import io.flutter.embedding.android.FlutterActivity;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class MainActivity extends FlutterActivity {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(SplashScreenView splashScreenView) {
        m.e(splashScreenView, "splashScreenView");
        splashScreenView.remove();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.flutter.embedding.android.FlutterActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        SplashScreen splashScreen;
        a1.a(getWindow(), false);
        if (Build.VERSION.SDK_INT >= 31) {
            splashScreen = getSplashScreen();
            splashScreen.setOnExitAnimationListener(new SplashScreen.OnExitAnimationListener() { // from class: i2.d
                @Override // android.window.SplashScreen.OnExitAnimationListener
                public final void onSplashScreenExit(SplashScreenView splashScreenView) {
                    MainActivity.b(splashScreenView);
                }
            });
        }
        super.onCreate(bundle);
    }
}
