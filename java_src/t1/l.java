package t1;

import android.app.Activity;
/* loaded from: classes.dex */
public interface l {

    /* renamed from: a  reason: collision with root package name */
    public static final a f29838a = a.f29839a;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f29839a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static id.l f29840b = C0314a.f29841e;

        /* renamed from: t1.l$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        static final class C0314a extends kotlin.jvm.internal.n implements id.l {

            /* renamed from: e  reason: collision with root package name */
            public static final C0314a f29841e = new C0314a();

            C0314a() {
                super(1);
            }

            @Override // id.l
            /* renamed from: a */
            public final l invoke(l it) {
                kotlin.jvm.internal.m.e(it, "it");
                return it;
            }
        }

        private a() {
        }

        public final l a() {
            return (l) f29840b.invoke(o.f29842b);
        }
    }

    static l b() {
        return f29838a.a();
    }

    k a(Activity activity);
}
