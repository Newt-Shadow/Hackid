package gc;

import android.content.res.Resources;
import android.view.View;
import android.view.Window;
import hc.g;
import id.l;
import java.util.List;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import xc.h;
/* loaded from: classes2.dex */
public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    private static final xc.d f16396a;

    /* loaded from: classes2.dex */
    public static final class a implements c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ hc.e f16397a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Window f16398b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ l f16399c;

        a(hc.e eVar, Window window, l lVar) {
            this.f16397a = eVar;
            this.f16398b = window;
            this.f16399c = lVar;
        }

        @Override // gc.c
        public void onContentChanged() {
            this.f16397a.b().remove(this);
            l lVar = this.f16399c;
            View peekDecorView = this.f16398b.peekDecorView();
            m.d(peekDecorView, "peekDecorView()");
            lVar.invoke(peekDecorView);
        }
    }

    /* loaded from: classes2.dex */
    static final class b extends n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final b f16400e = new b();

        b() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final String invoke() {
            try {
                return Resources.getSystem().getString(Resources.getSystem().getIdentifier("tooltip_popup_title", "string", "android"));
            } catch (Resources.NotFoundException unused) {
                return "Tooltip";
            }
        }
    }

    static {
        xc.d b10;
        b10 = xc.f.b(h.f32713c, b.f16400e);
        f16396a = b10;
    }

    public static final Window a(View phoneWindow) {
        m.e(phoneWindow, "$this$phoneWindow");
        g gVar = g.f17060c;
        View rootView = phoneWindow.getRootView();
        m.d(rootView, "rootView");
        return gVar.d(rootView);
    }

    public static final List b(Window touchEventInterceptors) {
        m.e(touchEventInterceptors, "$this$touchEventInterceptors");
        return hc.d.f17038h.c(touchEventInterceptors).d();
    }

    public static final int c(View windowAttachCount) {
        m.e(windowAttachCount, "$this$windowAttachCount");
        return android.view.b.a(windowAttachCount);
    }

    public static final void d(Window onDecorViewReady, l onDecorViewReady2) {
        m.e(onDecorViewReady, "$this$onDecorViewReady");
        m.e(onDecorViewReady2, "onDecorViewReady");
        View peekDecorView = onDecorViewReady.peekDecorView();
        if (peekDecorView != null) {
            onDecorViewReady2.invoke(peekDecorView);
            return;
        }
        hc.e c10 = hc.d.f17038h.c(onDecorViewReady);
        c10.b().add(new a(c10, onDecorViewReady, onDecorViewReady2));
    }
}
