package d0;

import android.os.Build;
import android.view.View;
import android.view.Window;
/* loaded from: classes.dex */
public abstract class a1 {

    /* loaded from: classes.dex */
    static class a {
        static void a(Window window, boolean z10) {
            int i10;
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            if (z10) {
                i10 = systemUiVisibility & (-1793);
            } else {
                i10 = systemUiVisibility | 1792;
            }
            decorView.setSystemUiVisibility(i10);
        }
    }

    /* loaded from: classes.dex */
    static class b {
        static void a(Window window, boolean z10) {
            int i10;
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            if (z10) {
                i10 = systemUiVisibility & (-257);
            } else {
                i10 = systemUiVisibility | 256;
            }
            decorView.setSystemUiVisibility(i10);
            window.setDecorFitsSystemWindows(z10);
        }
    }

    /* loaded from: classes.dex */
    static class c {
        static void a(Window window, boolean z10) {
            window.setDecorFitsSystemWindows(z10);
        }
    }

    public static void a(Window window, boolean z10) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 35) {
            c.a(window, z10);
        } else if (i10 >= 30) {
            b.a(window, z10);
        } else {
            a.a(window, z10);
        }
    }
}
