package i7;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.a4;
import h7.f;
import i7.a;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import n5.q;
/* loaded from: classes.dex */
public class b implements i7.a {

    /* renamed from: c  reason: collision with root package name */
    private static volatile i7.a f17322c;

    /* renamed from: a  reason: collision with root package name */
    final h6.a f17323a;

    /* renamed from: b  reason: collision with root package name */
    final Map f17324b;

    /* loaded from: classes.dex */
    class a implements a.InterfaceC0188a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f17325a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f17326b;

        a(b bVar, String str) {
            this.f17325a = str;
            Objects.requireNonNull(bVar);
            this.f17326b = bVar;
        }
    }

    b(h6.a aVar) {
        q.k(aVar);
        this.f17323a = aVar;
        this.f17324b = new ConcurrentHashMap();
    }

    public static i7.a d(f fVar, Context context, h8.d dVar) {
        q.k(fVar);
        q.k(context);
        q.k(dVar);
        q.k(context.getApplicationContext());
        if (f17322c == null) {
            synchronized (b.class) {
                if (f17322c == null) {
                    Bundle bundle = new Bundle(1);
                    if (fVar.y()) {
                        dVar.c(h7.b.class, d.f17328a, c.f17327a);
                        bundle.putBoolean("dataCollectionDefaultEnabled", fVar.x());
                    }
                    f17322c = new b(a4.s(context, bundle).t());
                }
            }
        }
        return f17322c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void e(h8.a aVar) {
        boolean z10 = ((h7.b) aVar.a()).f16859a;
        synchronized (b.class) {
            ((b) q.k(f17322c)).f17323a.d(z10);
        }
    }

    private final boolean f(String str) {
        if (!str.isEmpty()) {
            Map map = this.f17324b;
            if (map.containsKey(str) && map.get(str) != null) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // i7.a
    public a.InterfaceC0188a a(String str, a.b bVar) {
        Object obj;
        q.k(bVar);
        if (com.google.firebase.analytics.connector.internal.b.a(str) && !f(str)) {
            h6.a aVar = this.f17323a;
            if ("fiam".equals(str)) {
                obj = new com.google.firebase.analytics.connector.internal.d(aVar, bVar);
            } else if ("clx".equals(str)) {
                obj = new com.google.firebase.analytics.connector.internal.f(aVar, bVar);
            } else {
                obj = null;
            }
            if (obj != null) {
                this.f17324b.put(str, obj);
                return new a(this, str);
            }
        }
        return null;
    }

    @Override // i7.a
    public void b(String str, String str2, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (com.google.firebase.analytics.connector.internal.b.a(str) && com.google.firebase.analytics.connector.internal.b.b(str2, bundle) && com.google.firebase.analytics.connector.internal.b.e(str, str2, bundle)) {
            if ("clx".equals(str) && Constants.FIREBASE_APPLICATION_EXCEPTION.equals(str2)) {
                bundle.putLong("_r", 1L);
            }
            this.f17323a.a(str, str2, bundle);
        }
    }

    @Override // i7.a
    public void c(String str, String str2, Object obj) {
        if (com.google.firebase.analytics.connector.internal.b.a(str) && com.google.firebase.analytics.connector.internal.b.d(str, str2)) {
            this.f17323a.c(str, str2, obj);
        }
    }
}
