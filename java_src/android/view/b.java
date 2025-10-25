package android.view;

import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public abstract class b {
    public static final int a(View view) {
        m.e(view, "view");
        return a.windowAttachCount(view);
    }
}
