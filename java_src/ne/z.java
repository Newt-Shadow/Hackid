package ne;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public abstract class z {

    /* renamed from: a  reason: collision with root package name */
    public static final a f26880a = new a(null);

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: ne.z$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0266a extends z {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ v f26881b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ int f26882c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ byte[] f26883d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ int f26884e;

            C0266a(v vVar, int i10, byte[] bArr, int i11) {
                this.f26881b = vVar;
                this.f26882c = i10;
                this.f26883d = bArr;
                this.f26884e = i11;
            }

            @Override // ne.z
            public long a() {
                return this.f26882c;
            }

            @Override // ne.z
            public v b() {
                return this.f26881b;
            }

            @Override // ne.z
            public void e(af.e sink) {
                kotlin.jvm.internal.m.e(sink, "sink");
                sink.l0(this.f26883d, this.f26884e, this.f26882c);
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ z b(a aVar, byte[] bArr, v vVar, int i10, int i11, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                vVar = null;
            }
            if ((i12 & 2) != 0) {
                i10 = 0;
            }
            if ((i12 & 4) != 0) {
                i11 = bArr.length;
            }
            return aVar.a(bArr, vVar, i10, i11);
        }

        public final z a(byte[] bArr, v vVar, int i10, int i11) {
            kotlin.jvm.internal.m.e(bArr, "<this>");
            oe.d.k(bArr.length, i10, i11);
            return new C0266a(vVar, i11, bArr, i10);
        }
    }

    public long a() {
        return -1L;
    }

    public abstract v b();

    public boolean c() {
        return false;
    }

    public boolean d() {
        return false;
    }

    public abstract void e(af.e eVar);
}
