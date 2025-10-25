package androidx.activity;

import android.view.View;
/* loaded from: classes.dex */
public abstract class b0 {
    public static final void a(View view, y onBackPressedDispatcherOwner) {
        kotlin.jvm.internal.m.e(view, "<this>");
        kotlin.jvm.internal.m.e(onBackPressedDispatcherOwner, "onBackPressedDispatcherOwner");
        view.setTag(z.f599b, onBackPressedDispatcherOwner);
    }
}
