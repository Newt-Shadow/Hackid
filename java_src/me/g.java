package me;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public abstract class g {

    /* loaded from: classes2.dex */
    public static final class a implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f26042a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ id.a f26043b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ id.a f26044c;

        a(Activity activity, id.a aVar, id.a aVar2) {
            this.f26042a = activity;
            this.f26043b = aVar;
            this.f26044c = aVar2;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity p02, Bundle bundle) {
            m.e(p02, "p0");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity p02) {
            m.e(p02, "p0");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity p02) {
            id.a aVar;
            m.e(p02, "p0");
            if (m.a(p02, this.f26042a) && (aVar = this.f26043b) != null) {
                aVar.invoke();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity p02) {
            id.a aVar;
            m.e(p02, "p0");
            if (m.a(p02, this.f26042a) && (aVar = this.f26044c) != null) {
                aVar.invoke();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity p02, Bundle p12) {
            m.e(p02, "p0");
            m.e(p12, "p1");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity p02) {
            m.e(p02, "p0");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity p02) {
            m.e(p02, "p0");
        }
    }

    public static final i a(Activity activity, id.a aVar, id.a aVar2) {
        m.e(activity, "<this>");
        a aVar3 = new a(activity, aVar, aVar2);
        activity.getApplication().registerActivityLifecycleCallbacks(aVar3);
        Application application = activity.getApplication();
        m.d(application, "getApplication(...)");
        return new i(application, aVar3);
    }
}
