package androidx.datastore.preferences.protobuf;
/* loaded from: classes.dex */
final class c1 implements n0 {

    /* renamed from: a  reason: collision with root package name */
    private final p0 f2127a;

    /* renamed from: b  reason: collision with root package name */
    private final String f2128b;

    /* renamed from: c  reason: collision with root package name */
    private final Object[] f2129c;

    /* renamed from: d  reason: collision with root package name */
    private final int f2130d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c1(p0 p0Var, String str, Object[] objArr) {
        this.f2127a = p0Var;
        this.f2128b = str;
        this.f2129c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f2130d = charAt;
            return;
        }
        int i10 = charAt & 8191;
        int i11 = 13;
        int i12 = 1;
        while (true) {
            int i13 = i12 + 1;
            char charAt2 = str.charAt(i12);
            if (charAt2 >= 55296) {
                i10 |= (charAt2 & 8191) << i11;
                i11 += 13;
                i12 = i13;
            } else {
                this.f2130d = i10 | (charAt2 << i11);
                return;
            }
        }
    }

    @Override // androidx.datastore.preferences.protobuf.n0
    public boolean a() {
        if ((this.f2130d & 2) == 2) {
            return true;
        }
        return false;
    }

    @Override // androidx.datastore.preferences.protobuf.n0
    public p0 b() {
        return this.f2127a;
    }

    @Override // androidx.datastore.preferences.protobuf.n0
    public z0 c() {
        int i10 = this.f2130d;
        if ((i10 & 1) != 0) {
            return z0.PROTO2;
        }
        if ((i10 & 4) == 4) {
            return z0.EDITIONS;
        }
        return z0.PROTO3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object[] d() {
        return this.f2129c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e() {
        return this.f2128b;
    }
}
