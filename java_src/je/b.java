package je;

import ke.a0;
import ke.d0;
import ke.k;
import ke.u;
import ke.v;
import ke.x;
import ke.z;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: d  reason: collision with root package name */
    public static final a f24600d = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final d f24601a;

    /* renamed from: b  reason: collision with root package name */
    private final le.b f24602b;

    /* renamed from: c  reason: collision with root package name */
    private final k f24603c;

    /* loaded from: classes2.dex */
    public static final class a extends b {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
            super(new d(false, false, false, false, false, false, null, false, false, null, false, false, null, false, false, false, null, 131071, null), le.c.a(), null);
        }
    }

    public /* synthetic */ b(d dVar, le.b bVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(dVar, bVar);
    }

    public final Object a(ee.a deserializer, String string) {
        m.e(deserializer, "deserializer");
        m.e(string, "string");
        z a10 = a0.a(this, string);
        Object g10 = new x(this, d0.f24899c, a10, deserializer.a(), null).g(deserializer);
        a10.t();
        return g10;
    }

    public final String b(ee.e serializer, Object obj) {
        m.e(serializer, "serializer");
        v vVar = new v();
        try {
            u.a(this, vVar, serializer, obj);
            return vVar.toString();
        } finally {
            vVar.h();
        }
    }

    public final d c() {
        return this.f24601a;
    }

    public le.b d() {
        return this.f24602b;
    }

    public final k e() {
        return this.f24603c;
    }

    private b(d dVar, le.b bVar) {
        this.f24601a = dVar;
        this.f24602b = bVar;
        this.f24603c = new k();
    }
}
