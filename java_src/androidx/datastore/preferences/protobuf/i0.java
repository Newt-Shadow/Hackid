package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.q1;
/* loaded from: classes.dex */
public class i0 {

    /* renamed from: a  reason: collision with root package name */
    private final a f2199a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f2200b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f2201c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final q1.b f2202a;

        /* renamed from: b  reason: collision with root package name */
        public final Object f2203b;

        /* renamed from: c  reason: collision with root package name */
        public final q1.b f2204c;

        /* renamed from: d  reason: collision with root package name */
        public final Object f2205d;

        public a(q1.b bVar, Object obj, q1.b bVar2, Object obj2) {
            this.f2202a = bVar;
            this.f2203b = obj;
            this.f2204c = bVar2;
            this.f2205d = obj2;
        }
    }

    private i0(q1.b bVar, Object obj, q1.b bVar2, Object obj2) {
        this.f2199a = new a(bVar, obj, bVar2, obj2);
        this.f2200b = obj;
        this.f2201c = obj2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(a aVar, Object obj, Object obj2) {
        return s.b(aVar.f2202a, 1, obj) + s.b(aVar.f2204c, 2, obj2);
    }

    public static i0 d(q1.b bVar, Object obj, q1.b bVar2, Object obj2) {
        return new i0(bVar, obj, bVar2, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(j jVar, a aVar, Object obj, Object obj2) {
        s.u(jVar, aVar.f2202a, 1, obj);
        s.u(jVar, aVar.f2204c, 2, obj2);
    }

    public int a(int i10, Object obj, Object obj2) {
        return j.O(i10) + j.y(b(this.f2199a, obj, obj2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a c() {
        return this.f2199a;
    }
}
