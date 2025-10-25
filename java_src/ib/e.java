package ib;

import android.view.View;
import android.view.ViewTreeObserver;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public abstract class e {
    public static final boolean a(View view) {
        m.e(view, "<this>");
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            return false;
        }
        return true;
    }

    public static final boolean b(View view) {
        m.e(view, "<this>");
        if (a(view) && view.isAttachedToWindow()) {
            return true;
        }
        return false;
    }
}
