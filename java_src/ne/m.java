package ne;

import java.util.List;
/* loaded from: classes2.dex */
public interface m {

    /* renamed from: a  reason: collision with root package name */
    public static final a f26754a = a.f26756a;

    /* renamed from: b  reason: collision with root package name */
    public static final m f26755b = new a.C0262a();

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f26756a = new a();

        /* renamed from: ne.m$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static final class C0262a implements m {
            @Override // ne.m
            public void a(t url, List cookies) {
                kotlin.jvm.internal.m.e(url, "url");
                kotlin.jvm.internal.m.e(cookies, "cookies");
            }

            @Override // ne.m
            public List b(t url) {
                List h10;
                kotlin.jvm.internal.m.e(url, "url");
                h10 = yc.o.h();
                return h10;
            }
        }

        private a() {
        }
    }

    void a(t tVar, List list);

    List b(t tVar);
}
