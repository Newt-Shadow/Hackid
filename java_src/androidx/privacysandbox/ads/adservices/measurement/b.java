package androidx.privacysandbox.ads.adservices.measurement;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import android.view.InputEvent;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    public static final a f3088a = new a(null);

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: androidx.privacysandbox.ads.adservices.measurement.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        static final class C0050a extends kotlin.jvm.internal.n implements id.l {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ Context f3089e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0050a(Context context) {
                super(1);
                this.f3089e = context;
            }

            @Override // id.l
            /* renamed from: a */
            public final c invoke(Context it) {
                kotlin.jvm.internal.m.e(it, "it");
                return new c(this.f3089e);
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a(Context context) {
            kotlin.jvm.internal.m.e(context, "context");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("AdServicesInfo.version=");
            c1.a aVar = c1.a.f4792a;
            sb2.append(aVar.a());
            Log.d("MeasurementManager", sb2.toString());
            if (aVar.a() >= 5) {
                return new f(context);
            }
            if (aVar.b() >= 9) {
                return (b) c1.b.f4795a.a(context, "MeasurementManager", new C0050a(context));
            }
            return null;
        }
    }

    public abstract Object a(androidx.privacysandbox.ads.adservices.measurement.a aVar, ad.e eVar);

    public abstract Object b(ad.e eVar);

    public abstract Object c(Uri uri, InputEvent inputEvent, ad.e eVar);

    public abstract Object d(l lVar, ad.e eVar);

    public abstract Object e(Uri uri, ad.e eVar);

    public abstract Object f(m mVar, ad.e eVar);

    public abstract Object g(n nVar, ad.e eVar);
}
