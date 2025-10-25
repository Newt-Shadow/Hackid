package ib;

import android.view.View;
import android.view.ViewTreeObserver;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class d implements ViewTreeObserver.OnDrawListener {

    /* renamed from: e  reason: collision with root package name */
    public static final a f17375e = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final View f17376a;

    /* renamed from: b  reason: collision with root package name */
    private final id.a f17377b;

    /* renamed from: c  reason: collision with root package name */
    private final id.a f17378c;

    /* renamed from: d  reason: collision with root package name */
    private final i f17379d;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a(View view, gb.b mainHandler, lb.g dateProvider, long j10, id.a onDrawCallback, id.a onDrawThrottlerCallback) {
            m.e(view, "<this>");
            m.e(mainHandler, "mainHandler");
            m.e(dateProvider, "dateProvider");
            m.e(onDrawCallback, "onDrawCallback");
            m.e(onDrawThrottlerCallback, "onDrawThrottlerCallback");
            d dVar = new d(view, mainHandler, dateProvider, j10, onDrawThrottlerCallback, onDrawCallback);
            dVar.d();
            return dVar;
        }
    }

    public d(View view, gb.b mainHandler, lb.g dateProvider, long j10, id.a onDrawCallback, id.a onDrawThrottlerCallback) {
        m.e(view, "view");
        m.e(mainHandler, "mainHandler");
        m.e(dateProvider, "dateProvider");
        m.e(onDrawCallback, "onDrawCallback");
        m.e(onDrawThrottlerCallback, "onDrawThrottlerCallback");
        this.f17376a = view;
        this.f17377b = onDrawCallback;
        this.f17378c = onDrawThrottlerCallback;
        this.f17379d = new i(mainHandler, dateProvider, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(d this$0) {
        m.e(this$0, "this$0");
        this$0.f17378c.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d() {
        ViewTreeObserver viewTreeObserver;
        if (e.a(this.f17376a) && (viewTreeObserver = this.f17376a.getViewTreeObserver()) != null) {
            viewTreeObserver.addOnDrawListener(this);
        }
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public void onDraw() {
        this.f17377b.invoke();
        this.f17379d.d(new Runnable() { // from class: ib.c
            @Override // java.lang.Runnable
            public final void run() {
                d.c(d.this);
            }
        });
    }
}
