package ad;

import ad.i;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public interface f extends i.b {

    /* renamed from: h0  reason: collision with root package name */
    public static final b f293h0 = b.f294a;

    /* loaded from: classes2.dex */
    public static final class a {
        public static i.b a(f fVar, i.c key) {
            m.e(key, "key");
            if (key instanceof ad.b) {
                ad.b bVar = (ad.b) key;
                if (!bVar.a(fVar.getKey())) {
                    return null;
                }
                i.b b10 = bVar.b(fVar);
                if (!(b10 instanceof i.b)) {
                    return null;
                }
                return b10;
            } else if (f.f293h0 != key) {
                return null;
            } else {
                m.c(fVar, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get");
                return fVar;
            }
        }

        public static i b(f fVar, i.c key) {
            m.e(key, "key");
            if (key instanceof ad.b) {
                ad.b bVar = (ad.b) key;
                if (bVar.a(fVar.getKey()) && bVar.b(fVar) != null) {
                    return j.f295a;
                }
                return fVar;
            } else if (f.f293h0 == key) {
                return j.f295a;
            } else {
                return fVar;
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class b implements i.c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ b f294a = new b();

        private b() {
        }
    }

    e d0(e eVar);

    void s(e eVar);
}
