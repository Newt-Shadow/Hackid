package io.sentry.android.replay.gestures;

import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import id.l;
import io.sentry.android.replay.a0;
import io.sentry.android.replay.d;
import io.sentry.android.replay.util.h;
import io.sentry.j5;
import io.sentry.s5;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import xc.t;
/* loaded from: classes2.dex */
public final class a implements d {

    /* renamed from: a  reason: collision with root package name */
    private final s5 f22719a;

    /* renamed from: b  reason: collision with root package name */
    private final c f22720b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList f22721c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f22722d;

    /* renamed from: io.sentry.android.replay.gestures.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0202a extends h {

        /* renamed from: b  reason: collision with root package name */
        private final s5 f22723b;

        /* renamed from: c  reason: collision with root package name */
        private final c f22724c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0202a(s5 options, c cVar, Window.Callback callback) {
            super(callback);
            m.e(options, "options");
            this.f22723b = options;
            this.f22724c = cVar;
        }

        @Override // io.sentry.android.replay.util.h, android.view.Window.Callback
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (motionEvent != null) {
                MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                m.d(obtainNoHistory, "obtainNoHistory(event)");
                try {
                    c cVar = this.f22724c;
                    if (cVar != null) {
                        cVar.a(obtainNoHistory);
                    }
                } finally {
                    try {
                    } finally {
                    }
                }
            }
            return super.dispatchTouchEvent(motionEvent);
        }
    }

    /* loaded from: classes2.dex */
    static final class b extends n implements l {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ View f22725e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(View view) {
            super(1);
            this.f22725e = view;
        }

        @Override // id.l
        /* renamed from: a */
        public final Boolean invoke(WeakReference it) {
            m.e(it, "it");
            return Boolean.valueOf(m.a(it.get(), this.f22725e));
        }
    }

    public a(s5 options, c touchRecorderCallback) {
        m.e(options, "options");
        m.e(touchRecorderCallback, "touchRecorderCallback");
        this.f22719a = options;
        this.f22720b = touchRecorderCallback;
        this.f22721c = new ArrayList();
        this.f22722d = new Object();
    }

    private final void b(View view) {
        Window a10 = a0.a(view);
        if (a10 == null) {
            this.f22719a.getLogger().c(j5.DEBUG, "Window is invalid, not tracking gestures", new Object[0]);
            return;
        }
        Window.Callback callback = a10.getCallback();
        if (!(callback instanceof C0202a)) {
            a10.setCallback(new C0202a(this.f22719a, this.f22720b, callback));
        }
    }

    private final void d(View view) {
        Window a10 = a0.a(view);
        if (a10 == null) {
            this.f22719a.getLogger().c(j5.DEBUG, "Window was null in stopGestureTracking", new Object[0]);
            return;
        }
        Window.Callback callback = a10.getCallback();
        if (callback instanceof C0202a) {
            a10.setCallback(((C0202a) callback).f22811a);
        }
    }

    @Override // io.sentry.android.replay.d
    public void a(View root, boolean z10) {
        m.e(root, "root");
        synchronized (this.f22722d) {
            if (z10) {
                this.f22721c.add(new WeakReference(root));
                b(root);
                t tVar = t.f32733a;
            } else {
                d(root);
                yc.t.A(this.f22721c, new b(root));
            }
        }
    }

    public final void c() {
        synchronized (this.f22722d) {
            for (WeakReference weakReference : this.f22721c) {
                View view = (View) weakReference.get();
                if (view != null) {
                    m.d(view, "get()");
                    d(view);
                }
            }
            this.f22721c.clear();
            t tVar = t.f32733a;
        }
    }
}
