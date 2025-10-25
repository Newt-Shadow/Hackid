package d0;

import android.os.Build;
import android.view.View;
/* loaded from: classes.dex */
public final class l0 {

    /* renamed from: a  reason: collision with root package name */
    private final c f14349a;

    /* loaded from: classes.dex */
    private static class a extends c {

        /* renamed from: a  reason: collision with root package name */
        private final View f14350a;

        a(View view) {
            this.f14350a = view;
        }
    }

    /* loaded from: classes.dex */
    private static class b extends a {

        /* renamed from: b  reason: collision with root package name */
        private View f14351b;

        b(View view) {
            super(view);
            this.f14351b = view;
        }
    }

    /* loaded from: classes.dex */
    private static class c {
        c() {
        }
    }

    public l0(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f14349a = new b(view);
        } else {
            this.f14349a = new a(view);
        }
    }
}
