package io.sentry.android.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import io.sentry.android.core.SystemEventsBreadcrumbsIntegration;
import io.sentry.j5;
import io.sentry.s5;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes2.dex */
public final class SystemEventsBreadcrumbsIntegration implements io.sentry.e1, Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final Context f22109a;

    /* renamed from: b  reason: collision with root package name */
    a f22110b;

    /* renamed from: c  reason: collision with root package name */
    private SentryAndroidOptions f22111c;

    /* renamed from: d  reason: collision with root package name */
    private final List f22112d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f22113e;

    /* renamed from: f  reason: collision with root package name */
    private final Object f22114f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class a extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        private final io.sentry.o0 f22115a;

        /* renamed from: b  reason: collision with root package name */
        private final SentryAndroidOptions f22116b;

        /* renamed from: c  reason: collision with root package name */
        private final io.sentry.android.core.internal.util.g f22117c = new io.sentry.android.core.internal.util.g(io.sentry.android.core.internal.util.b.b(), 60000, 0);

        a(io.sentry.o0 o0Var, SentryAndroidOptions sentryAndroidOptions) {
            this.f22115a = o0Var;
            this.f22116b = sentryAndroidOptions;
        }

        private io.sentry.e b(long j10, Intent intent, String str, boolean z10) {
            io.sentry.e eVar = new io.sentry.e(j10);
            eVar.r("system");
            eVar.n("device.event");
            String d10 = io.sentry.util.w.d(str);
            if (d10 != null) {
                eVar.o("action", d10);
            }
            if (z10) {
                Float c10 = b1.c(intent, this.f22116b);
                if (c10 != null) {
                    eVar.o(FFmpegKitFlutterPlugin.KEY_LOG_LEVEL, c10);
                }
                Boolean s10 = b1.s(intent, this.f22116b);
                if (s10 != null) {
                    eVar.o("charging", s10);
                }
            } else {
                Bundle extras = intent.getExtras();
                HashMap hashMap = new HashMap();
                if (extras != null && !extras.isEmpty()) {
                    for (String str2 : extras.keySet()) {
                        try {
                            Object obj = extras.get(str2);
                            if (obj != null) {
                                hashMap.put(str2, obj.toString());
                            }
                        } catch (Throwable th) {
                            this.f22116b.getLogger().a(j5.ERROR, th, "%s key of the %s action threw an error.", str2, str);
                        }
                    }
                    eVar.o("extras", hashMap);
                }
            }
            eVar.p(j5.INFO);
            return eVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(long j10, Intent intent, String str, boolean z10) {
            io.sentry.e b10 = b(j10, intent, str, z10);
            io.sentry.c0 c0Var = new io.sentry.c0();
            c0Var.k("android:intent", intent);
            this.f22115a.p(b10, c0Var);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, final Intent intent) {
            final String action = intent.getAction();
            final boolean equals = "android.intent.action.BATTERY_CHANGED".equals(action);
            if (equals && this.f22117c.a()) {
                return;
            }
            final long currentTimeMillis = System.currentTimeMillis();
            try {
                this.f22116b.getExecutorService().submit(new Runnable() { // from class: io.sentry.android.core.e2
                    @Override // java.lang.Runnable
                    public final void run() {
                        SystemEventsBreadcrumbsIntegration.a.this.c(currentTimeMillis, intent, action, equals);
                    }
                });
            } catch (Throwable th) {
                this.f22116b.getLogger().a(j5.ERROR, th, "Failed to submit system event breadcrumb action.", new Object[0]);
            }
        }
    }

    public SystemEventsBreadcrumbsIntegration(Context context) {
        this(context, b());
    }

    public static List b() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("android.intent.action.ACTION_SHUTDOWN");
        arrayList.add("android.intent.action.AIRPLANE_MODE");
        arrayList.add("android.intent.action.BATTERY_CHANGED");
        arrayList.add("android.intent.action.CAMERA_BUTTON");
        arrayList.add("android.intent.action.CONFIGURATION_CHANGED");
        arrayList.add("android.intent.action.DATE_CHANGED");
        arrayList.add("android.intent.action.DEVICE_STORAGE_LOW");
        arrayList.add("android.intent.action.DEVICE_STORAGE_OK");
        arrayList.add("android.intent.action.DOCK_EVENT");
        arrayList.add("android.intent.action.DREAMING_STARTED");
        arrayList.add("android.intent.action.DREAMING_STOPPED");
        arrayList.add("android.intent.action.INPUT_METHOD_CHANGED");
        arrayList.add("android.intent.action.LOCALE_CHANGED");
        arrayList.add("android.intent.action.SCREEN_OFF");
        arrayList.add("android.intent.action.SCREEN_ON");
        arrayList.add("android.intent.action.TIMEZONE_CHANGED");
        arrayList.add("android.intent.action.TIME_SET");
        arrayList.add("android.os.action.DEVICE_IDLE_MODE_CHANGED");
        arrayList.add("android.os.action.POWER_SAVE_MODE_CHANGED");
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(io.sentry.o0 o0Var, s5 s5Var) {
        synchronized (this.f22114f) {
            if (!this.f22113e) {
                e(o0Var, (SentryAndroidOptions) s5Var);
            }
        }
    }

    private void e(io.sentry.o0 o0Var, SentryAndroidOptions sentryAndroidOptions) {
        this.f22110b = new a(o0Var, sentryAndroidOptions);
        IntentFilter intentFilter = new IntentFilter();
        for (String str : this.f22112d) {
            intentFilter.addAction(str);
        }
        try {
            x0.C(this.f22109a, sentryAndroidOptions, this.f22110b, intentFilter);
            sentryAndroidOptions.getLogger().c(j5.DEBUG, "SystemEventsBreadcrumbsIntegration installed.", new Object[0]);
            io.sentry.util.k.a("SystemEventsBreadcrumbs");
        } catch (Throwable th) {
            sentryAndroidOptions.setEnableSystemEventBreadcrumbs(false);
            sentryAndroidOptions.getLogger().b(j5.ERROR, "Failed to initialize SystemEventsBreadcrumbsIntegration.", th);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f22114f) {
            this.f22113e = true;
        }
        a aVar = this.f22110b;
        if (aVar != null) {
            this.f22109a.unregisterReceiver(aVar);
            this.f22110b = null;
            SentryAndroidOptions sentryAndroidOptions = this.f22111c;
            if (sentryAndroidOptions != null) {
                sentryAndroidOptions.getLogger().c(j5.DEBUG, "SystemEventsBreadcrumbsIntegration remove.", new Object[0]);
            }
        }
    }

    @Override // io.sentry.e1
    public void f(final io.sentry.o0 o0Var, final s5 s5Var) {
        SentryAndroidOptions sentryAndroidOptions;
        io.sentry.util.q.c(o0Var, "Hub is required");
        if (s5Var instanceof SentryAndroidOptions) {
            sentryAndroidOptions = (SentryAndroidOptions) s5Var;
        } else {
            sentryAndroidOptions = null;
        }
        SentryAndroidOptions sentryAndroidOptions2 = (SentryAndroidOptions) io.sentry.util.q.c(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.f22111c = sentryAndroidOptions2;
        sentryAndroidOptions2.getLogger().c(j5.DEBUG, "SystemEventsBreadcrumbsIntegration enabled: %s", Boolean.valueOf(this.f22111c.isEnableSystemEventBreadcrumbs()));
        if (this.f22111c.isEnableSystemEventBreadcrumbs()) {
            try {
                s5Var.getExecutorService().submit(new Runnable() { // from class: io.sentry.android.core.d2
                    @Override // java.lang.Runnable
                    public final void run() {
                        SystemEventsBreadcrumbsIntegration.this.c(o0Var, s5Var);
                    }
                });
            } catch (Throwable th) {
                s5Var.getLogger().b(j5.DEBUG, "Failed to start SystemEventsBreadcrumbsIntegration on executor thread.", th);
            }
        }
    }

    public SystemEventsBreadcrumbsIntegration(Context context, List list) {
        this.f22113e = false;
        this.f22114f = new Object();
        this.f22109a = (Context) io.sentry.util.q.c(x0.h(context), "Context is required");
        this.f22112d = (List) io.sentry.util.q.c(list, "Actions list is required");
    }
}
