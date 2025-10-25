package io.sentry.android.core;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import io.sentry.ILogger;
import io.sentry.j5;
import io.sentry.z4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public final class ViewHierarchyEventProcessor implements io.sentry.y {

    /* renamed from: a  reason: collision with root package name */
    private final SentryAndroidOptions f22122a;

    /* renamed from: b  reason: collision with root package name */
    private final io.sentry.android.core.internal.util.g f22123b = new io.sentry.android.core.internal.util.g(io.sentry.android.core.internal.util.b.b(), 2000, 3);

    public ViewHierarchyEventProcessor(SentryAndroidOptions sentryAndroidOptions) {
        this.f22122a = (SentryAndroidOptions) io.sentry.util.q.c(sentryAndroidOptions, "SentryAndroidOptions is required");
        if (sentryAndroidOptions.isAttachViewHierarchy()) {
            io.sentry.util.k.a("ViewHierarchy");
        }
    }

    private static void e(View view, io.sentry.protocol.d0 d0Var, List list) {
        if (!(view instanceof ViewGroup)) {
            return;
        }
        Iterator it = list.iterator();
        if (!it.hasNext()) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            if (childCount == 0) {
                return;
            }
            ArrayList arrayList = new ArrayList(childCount);
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if (childAt != null) {
                    io.sentry.protocol.d0 i11 = i(childAt);
                    arrayList.add(i11);
                    e(childAt, i11, list);
                }
            }
            d0Var.m(arrayList);
            return;
        }
        android.support.v4.media.session.b.a(it.next());
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(AtomicReference atomicReference, View view, List list, CountDownLatch countDownLatch, ILogger iLogger) {
        try {
            atomicReference.set(h(view, list));
            countDownLatch.countDown();
        } catch (Throwable th) {
            iLogger.b(j5.ERROR, "Failed to process view hierarchy.", th);
        }
    }

    public static io.sentry.protocol.c0 g(Activity activity, final List list, io.sentry.util.thread.a aVar, final ILogger iLogger) {
        if (activity == null) {
            iLogger.c(j5.INFO, "Missing activity for view hierarchy snapshot.", new Object[0]);
            return null;
        }
        Window window = activity.getWindow();
        if (window == null) {
            iLogger.c(j5.INFO, "Missing window for view hierarchy snapshot.", new Object[0]);
            return null;
        }
        final View peekDecorView = window.peekDecorView();
        if (peekDecorView == null) {
            iLogger.c(j5.INFO, "Missing decor view for view hierarchy snapshot.", new Object[0]);
            return null;
        }
        try {
        } catch (Throwable th) {
            iLogger.b(j5.ERROR, "Failed to process view hierarchy.", th);
        }
        if (aVar.a()) {
            return h(peekDecorView, list);
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AtomicReference atomicReference = new AtomicReference(null);
        activity.runOnUiThread(new Runnable() { // from class: io.sentry.android.core.f2
            @Override // java.lang.Runnable
            public final void run() {
                ViewHierarchyEventProcessor.f(atomicReference, peekDecorView, list, countDownLatch, iLogger);
            }
        });
        if (countDownLatch.await(1000L, TimeUnit.MILLISECONDS)) {
            return (io.sentry.protocol.c0) atomicReference.get();
        }
        return null;
    }

    public static io.sentry.protocol.c0 h(View view, List list) {
        ArrayList arrayList = new ArrayList(1);
        io.sentry.protocol.c0 c0Var = new io.sentry.protocol.c0("android_view_system", arrayList);
        io.sentry.protocol.d0 i10 = i(view);
        arrayList.add(i10);
        e(view, i10, list);
        return c0Var;
    }

    private static io.sentry.protocol.d0 i(View view) {
        io.sentry.protocol.d0 d0Var = new io.sentry.protocol.d0();
        d0Var.p(io.sentry.android.core.internal.util.d.a(view));
        try {
            d0Var.o(io.sentry.android.core.internal.gestures.i.b(view));
        } catch (Throwable unused) {
        }
        d0Var.t(Double.valueOf(view.getX()));
        d0Var.u(Double.valueOf(view.getY()));
        d0Var.s(Double.valueOf(view.getWidth()));
        d0Var.n(Double.valueOf(view.getHeight()));
        d0Var.l(Double.valueOf(view.getAlpha()));
        int visibility = view.getVisibility();
        if (visibility != 0) {
            if (visibility != 4) {
                if (visibility == 8) {
                    d0Var.r("gone");
                }
            } else {
                d0Var.r("invisible");
            }
        } else {
            d0Var.r("visible");
        }
        return d0Var;
    }

    @Override // io.sentry.y
    public z4 b(z4 z4Var, io.sentry.c0 c0Var) {
        if (!z4Var.y0()) {
            return z4Var;
        }
        if (!this.f22122a.isAttachViewHierarchy()) {
            this.f22122a.getLogger().c(j5.DEBUG, "attachViewHierarchy is disabled.", new Object[0]);
            return z4Var;
        } else if (io.sentry.util.j.i(c0Var)) {
            return z4Var;
        } else {
            boolean a10 = this.f22123b.a();
            this.f22122a.getBeforeViewHierarchyCaptureCallback();
            if (a10) {
                return z4Var;
            }
            io.sentry.protocol.c0 g10 = g(y0.c().b(), this.f22122a.getViewHierarchyExporters(), this.f22122a.getMainThreadChecker(), this.f22122a.getLogger());
            if (g10 != null) {
                c0Var.o(io.sentry.b.c(g10));
            }
            return z4Var;
        }
    }

    @Override // io.sentry.y
    public io.sentry.protocol.y c(io.sentry.protocol.y yVar, io.sentry.c0 c0Var) {
        return yVar;
    }
}
