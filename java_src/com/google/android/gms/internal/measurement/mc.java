package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
final class mc implements tc {

    /* renamed from: a  reason: collision with root package name */
    private final ic f6561a;

    /* renamed from: b  reason: collision with root package name */
    private final ed f6562b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f6563c = false;

    /* renamed from: d  reason: collision with root package name */
    private final va f6564d;

    private mc(ed edVar, va vaVar, ic icVar) {
        this.f6562b = edVar;
        this.f6564d = vaVar;
        this.f6561a = icVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static mc i(ed edVar, va vaVar, ic icVar) {
        return new mc(edVar, vaVar, icVar);
    }

    @Override // com.google.android.gms.internal.measurement.tc
    public final int a(Object obj) {
        int g10 = ((hb) obj).zzc.g();
        if (!this.f6563c) {
            return g10;
        }
        android.support.v4.media.session.b.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.tc
    public final boolean b(Object obj) {
        android.support.v4.media.session.b.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.tc
    public final void c(Object obj, Object obj2) {
        vc.d(this.f6562b, obj, obj2);
        if (this.f6563c) {
            vc.c(this.f6564d, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.tc
    public final int d(Object obj) {
        int hashCode = ((hb) obj).zzc.hashCode();
        if (!this.f6563c) {
            return hashCode;
        }
        android.support.v4.media.session.b.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.tc
    public final void e(Object obj) {
        this.f6562b.b(obj);
        this.f6564d.a(obj);
    }

    @Override // com.google.android.gms.internal.measurement.tc
    public final void f(Object obj, byte[] bArr, int i10, int i11, y9 y9Var) {
        hb hbVar = (hb) obj;
        if (hbVar.zzc == fd.a()) {
            hbVar.zzc = fd.b();
        }
        android.support.v4.media.session.b.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.tc
    public final void g(Object obj, rd rdVar) {
        android.support.v4.media.session.b.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.tc
    public final boolean h(Object obj, Object obj2) {
        if (!((hb) obj).zzc.equals(((hb) obj2).zzc)) {
            return false;
        }
        if (!this.f6563c) {
            return true;
        }
        android.support.v4.media.session.b.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.tc
    public final Object zza() {
        ic icVar = this.f6561a;
        if (icVar instanceof hb) {
            return ((hb) icVar).l();
        }
        return icVar.b().q0();
    }
}
