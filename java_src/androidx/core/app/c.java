package androidx.core.app;

import android.app.ActivityOptions;
import android.content.Context;
import android.os.Bundle;
/* loaded from: classes.dex */
public abstract class c {

    /* loaded from: classes.dex */
    private static class a extends c {

        /* renamed from: a  reason: collision with root package name */
        private final ActivityOptions f1857a;

        a(ActivityOptions activityOptions) {
            this.f1857a = activityOptions;
        }

        @Override // androidx.core.app.c
        public Bundle b() {
            return this.f1857a.toBundle();
        }
    }

    protected c() {
    }

    public static c a(Context context, int i10, int i11) {
        return new a(ActivityOptions.makeCustomAnimation(context, i10, i11));
    }

    public abstract Bundle b();
}
