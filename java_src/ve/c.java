package ve;

import af.g;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: d  reason: collision with root package name */
    public static final a f31438d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    public static final af.g f31439e;

    /* renamed from: f  reason: collision with root package name */
    public static final af.g f31440f;

    /* renamed from: g  reason: collision with root package name */
    public static final af.g f31441g;

    /* renamed from: h  reason: collision with root package name */
    public static final af.g f31442h;

    /* renamed from: i  reason: collision with root package name */
    public static final af.g f31443i;

    /* renamed from: j  reason: collision with root package name */
    public static final af.g f31444j;

    /* renamed from: a  reason: collision with root package name */
    public final af.g f31445a;

    /* renamed from: b  reason: collision with root package name */
    public final af.g f31446b;

    /* renamed from: c  reason: collision with root package name */
    public final int f31447c;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        g.a aVar = af.g.f387d;
        f31439e = aVar.c(":");
        f31440f = aVar.c(":status");
        f31441g = aVar.c(":method");
        f31442h = aVar.c(":path");
        f31443i = aVar.c(":scheme");
        f31444j = aVar.c(":authority");
    }

    public c(af.g name, af.g value) {
        kotlin.jvm.internal.m.e(name, "name");
        kotlin.jvm.internal.m.e(value, "value");
        this.f31445a = name;
        this.f31446b = value;
        this.f31447c = name.size() + 32 + value.size();
    }

    public final af.g a() {
        return this.f31445a;
    }

    public final af.g b() {
        return this.f31446b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            return kotlin.jvm.internal.m.a(this.f31445a, cVar.f31445a) && kotlin.jvm.internal.m.a(this.f31446b, cVar.f31446b);
        }
        return false;
    }

    public int hashCode() {
        return (this.f31445a.hashCode() * 31) + this.f31446b.hashCode();
    }

    public String toString() {
        return this.f31445a.H() + ": " + this.f31446b.H();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public c(java.lang.String r2, java.lang.String r3) {
        /*
            r1 = this;
            java.lang.String r0 = "name"
            kotlin.jvm.internal.m.e(r2, r0)
            java.lang.String r0 = "value"
            kotlin.jvm.internal.m.e(r3, r0)
            af.g$a r0 = af.g.f387d
            af.g r2 = r0.c(r2)
            af.g r3 = r0.c(r3)
            r1.<init>(r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: ve.c.<init>(java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(af.g name, String value) {
        this(name, af.g.f387d.c(value));
        kotlin.jvm.internal.m.e(name, "name");
        kotlin.jvm.internal.m.e(value, "value");
    }
}
