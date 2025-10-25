package td;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
final class z {

    /* renamed from: a  reason: collision with root package name */
    public final Object f30703a;

    /* renamed from: b  reason: collision with root package name */
    public final k f30704b;

    /* renamed from: c  reason: collision with root package name */
    public final id.p f30705c;

    /* renamed from: d  reason: collision with root package name */
    public final Object f30706d;

    /* renamed from: e  reason: collision with root package name */
    public final Throwable f30707e;

    public z(Object obj, k kVar, id.p pVar, Object obj2, Throwable th) {
        this.f30703a = obj;
        this.f30704b = kVar;
        this.f30705c = pVar;
        this.f30706d = obj2;
        this.f30707e = th;
    }

    public static /* synthetic */ z b(z zVar, Object obj, k kVar, id.p pVar, Object obj2, Throwable th, int i10, Object obj3) {
        if ((i10 & 1) != 0) {
            obj = zVar.f30703a;
        }
        if ((i10 & 2) != 0) {
            kVar = zVar.f30704b;
        }
        k kVar2 = kVar;
        if ((i10 & 4) != 0) {
            pVar = zVar.f30705c;
        }
        id.p pVar2 = pVar;
        if ((i10 & 8) != 0) {
            obj2 = zVar.f30706d;
        }
        Object obj4 = obj2;
        if ((i10 & 16) != 0) {
            th = zVar.f30707e;
        }
        return zVar.a(obj, kVar2, pVar2, obj4, th);
    }

    public final z a(Object obj, k kVar, id.p pVar, Object obj2, Throwable th) {
        return new z(obj, kVar, pVar, obj2, th);
    }

    public final boolean c() {
        if (this.f30707e != null) {
            return true;
        }
        return false;
    }

    public final void d(n nVar, Throwable th) {
        k kVar = this.f30704b;
        if (kVar != null) {
            nVar.m(kVar, th);
        }
        id.p pVar = this.f30705c;
        if (pVar != null) {
            nVar.n(pVar, th, this.f30703a);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof z) {
            z zVar = (z) obj;
            return kotlin.jvm.internal.m.a(this.f30703a, zVar.f30703a) && kotlin.jvm.internal.m.a(this.f30704b, zVar.f30704b) && kotlin.jvm.internal.m.a(this.f30705c, zVar.f30705c) && kotlin.jvm.internal.m.a(this.f30706d, zVar.f30706d) && kotlin.jvm.internal.m.a(this.f30707e, zVar.f30707e);
        }
        return false;
    }

    public int hashCode() {
        Object obj = this.f30703a;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        k kVar = this.f30704b;
        int hashCode2 = (hashCode + (kVar == null ? 0 : kVar.hashCode())) * 31;
        id.p pVar = this.f30705c;
        int hashCode3 = (hashCode2 + (pVar == null ? 0 : pVar.hashCode())) * 31;
        Object obj2 = this.f30706d;
        int hashCode4 = (hashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.f30707e;
        return hashCode4 + (th != null ? th.hashCode() : 0);
    }

    public String toString() {
        return "CompletedContinuation(result=" + this.f30703a + ", cancelHandler=" + this.f30704b + ", onCancellation=" + this.f30705c + ", idempotentResume=" + this.f30706d + ", cancelCause=" + this.f30707e + ')';
    }

    public /* synthetic */ z(Object obj, k kVar, id.p pVar, Object obj2, Throwable th, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, (i10 & 2) != 0 ? null : kVar, (i10 & 4) != 0 ? null : pVar, (i10 & 8) != 0 ? null : obj2, (i10 & 16) != 0 ? null : th);
    }
}
