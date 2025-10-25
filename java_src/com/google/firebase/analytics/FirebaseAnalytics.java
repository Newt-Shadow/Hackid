package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.internal.measurement.a4;
import com.google.android.gms.internal.measurement.i2;
import i6.b0;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import m6.Task;
import m6.n;
import n5.q;
/* loaded from: classes.dex */
public final class FirebaseAnalytics {

    /* renamed from: c  reason: collision with root package name */
    private static volatile FirebaseAnalytics f8679c;

    /* renamed from: a  reason: collision with root package name */
    private final a4 f8680a;

    /* renamed from: b  reason: collision with root package name */
    private ExecutorService f8681b;

    /* loaded from: classes.dex */
    public enum a {
        GRANTED,
        DENIED
    }

    /* loaded from: classes.dex */
    public enum b {
        AD_STORAGE,
        ANALYTICS_STORAGE,
        AD_USER_DATA,
        AD_PERSONALIZATION
    }

    public FirebaseAnalytics(a4 a4Var) {
        q.k(a4Var);
        this.f8680a = a4Var;
    }

    @Keep
    public static FirebaseAnalytics getInstance(Context context) {
        if (f8679c == null) {
            synchronized (FirebaseAnalytics.class) {
                if (f8679c == null) {
                    f8679c = new FirebaseAnalytics(a4.s(context, null));
                }
            }
        }
        return f8679c;
    }

    @Keep
    public static b0 getScionFrontendApiImplementation(Context context, Bundle bundle) {
        a4 s10 = a4.s(context, bundle);
        if (s10 == null) {
            return null;
        }
        return new d(s10);
    }

    private final ExecutorService l() {
        ExecutorService executorService;
        synchronized (FirebaseAnalytics.class) {
            if (this.f8681b == null) {
                this.f8681b = new com.google.firebase.analytics.a(this, 0, 1, 30L, TimeUnit.SECONDS, new ArrayBlockingQueue(100));
            }
            executorService = this.f8681b;
        }
        return executorService;
    }

    public Task a() {
        try {
            return n.c(l(), new com.google.firebase.analytics.b(this));
        } catch (RuntimeException e10) {
            this.f8680a.d(5, "Failed to schedule task for getAppInstanceId", null, null, null);
            return n.d(e10);
        }
    }

    public Task b() {
        try {
            return n.c(l(), new c(this));
        } catch (RuntimeException e10) {
            this.f8680a.d(5, "Failed to schedule task for getSessionId", null, null, null);
            return n.d(e10);
        }
    }

    public void c(String str, Bundle bundle) {
        this.f8680a.w(str, bundle);
    }

    public void d() {
        this.f8680a.G();
    }

    public void e(boolean z10) {
        this.f8680a.E(Boolean.valueOf(z10));
    }

    public void f(Map map) {
        Bundle bundle = new Bundle();
        a aVar = (a) map.get(b.AD_STORAGE);
        if (aVar != null) {
            int ordinal = aVar.ordinal();
            if (ordinal != 0) {
                if (ordinal == 1) {
                    bundle.putString("ad_storage", "denied");
                }
            } else {
                bundle.putString("ad_storage", "granted");
            }
        }
        a aVar2 = (a) map.get(b.ANALYTICS_STORAGE);
        if (aVar2 != null) {
            int ordinal2 = aVar2.ordinal();
            if (ordinal2 != 0) {
                if (ordinal2 == 1) {
                    bundle.putString("analytics_storage", "denied");
                }
            } else {
                bundle.putString("analytics_storage", "granted");
            }
        }
        a aVar3 = (a) map.get(b.AD_USER_DATA);
        if (aVar3 != null) {
            int ordinal3 = aVar3.ordinal();
            if (ordinal3 != 0) {
                if (ordinal3 == 1) {
                    bundle.putString("ad_user_data", "denied");
                }
            } else {
                bundle.putString("ad_user_data", "granted");
            }
        }
        a aVar4 = (a) map.get(b.AD_PERSONALIZATION);
        if (aVar4 != null) {
            int ordinal4 = aVar4.ordinal();
            if (ordinal4 != 0) {
                if (ordinal4 == 1) {
                    bundle.putString("ad_personalization", "denied");
                }
            } else {
                bundle.putString("ad_personalization", "granted");
            }
        }
        this.f8680a.F(bundle);
    }

    public void g(Bundle bundle) {
        if (bundle != null) {
            bundle = new Bundle(bundle);
        }
        this.f8680a.i(bundle);
    }

    @Keep
    public String getFirebaseInstanceId() {
        try {
            return (String) n.b(com.google.firebase.installations.c.p().getId(), 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            throw new IllegalStateException(e10);
        } catch (ExecutionException e11) {
            throw new IllegalStateException(e11.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    public void h(long j10) {
        this.f8680a.H(j10);
    }

    public void i(String str) {
        this.f8680a.C(str);
    }

    public void j(String str, String str2) {
        this.f8680a.y(null, str, str2, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ a4 k() {
        return this.f8680a;
    }

    @Keep
    @Deprecated
    public void setCurrentScreen(Activity activity, String str, String str2) {
        this.f8680a.D(i2.g(activity), str, str2);
    }
}
