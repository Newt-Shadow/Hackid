package j0;

import ad.i;
import id.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class o0 implements i.b {

    /* renamed from: c  reason: collision with root package name */
    public static final a f24209c = new a(null);

    /* renamed from: d  reason: collision with root package name */
    private static final String f24210d = "Calling updateData inside updateData on the same DataStore instance is not supported\nsince updates made in the parent updateData call will not be visible to the nested\nupdateData call. See https://issuetracker.google.com/issues/241760537 for details.";

    /* renamed from: a  reason: collision with root package name */
    private final o0 f24211a;

    /* renamed from: b  reason: collision with root package name */
    private final k f24212b;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: j0.o0$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0222a implements i.c {

            /* renamed from: a  reason: collision with root package name */
            public static final C0222a f24213a = new C0222a();

            private C0222a() {
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public o0(o0 o0Var, k instance) {
        kotlin.jvm.internal.m.e(instance, "instance");
        this.f24211a = o0Var;
        this.f24212b = instance;
    }

    @Override // ad.i.b, ad.i
    public i.b a(i.c cVar) {
        return i.b.a.b(this, cVar);
    }

    public final void d(i candidate) {
        kotlin.jvm.internal.m.e(candidate, "candidate");
        if (this.f24212b != candidate) {
            o0 o0Var = this.f24211a;
            if (o0Var != null) {
                o0Var.d(candidate);
                return;
            }
            return;
        }
        throw new IllegalStateException(f24210d.toString());
    }

    @Override // ad.i
    public ad.i e(ad.i iVar) {
        return i.b.a.d(this, iVar);
    }

    @Override // ad.i
    public ad.i g(i.c cVar) {
        return i.b.a.c(this, cVar);
    }

    @Override // ad.i.b
    public i.c getKey() {
        return a.C0222a.f24213a;
    }

    @Override // ad.i
    public Object k(Object obj, Function2 function2) {
        return i.b.a.a(this, obj, function2);
    }
}
