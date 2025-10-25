package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes.dex */
public abstract class fb extends u9 {

    /* renamed from: a  reason: collision with root package name */
    private final hb f6391a;

    /* renamed from: b  reason: collision with root package name */
    protected hb f6392b;

    /* JADX INFO: Access modifiers changed from: protected */
    public fb(hb hbVar) {
        this.f6391a = hbVar;
        if (!hbVar.j()) {
            this.f6392b = hbVar.l();
            return;
        }
        throw new IllegalArgumentException("Default instance must be immutable.");
    }

    private static void k(Object obj, Object obj2) {
        qc.a().b(obj.getClass()).c(obj, obj2);
    }

    @Override // com.google.android.gms.internal.measurement.u9
    public final /* bridge */ /* synthetic */ u9 f(byte[] bArr, int i10, int i11) {
        ua uaVar = ua.f6835c;
        int i12 = qc.f6714d;
        r(bArr, 0, i11, ua.f6835c);
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.u9
    public final /* bridge */ /* synthetic */ u9 i(byte[] bArr, int i10, int i11, ua uaVar) {
        r(bArr, 0, i11, uaVar);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void l() {
        if (!this.f6392b.j()) {
            m();
        }
    }

    protected void m() {
        hb l10 = this.f6391a.l();
        k(l10, this.f6392b);
        this.f6392b = l10;
    }

    /* renamed from: n */
    public final fb clone() {
        fb fbVar = (fb) this.f6391a.B(5, null, null);
        fbVar.f6392b = q0();
        return fbVar;
    }

    @Override // com.google.android.gms.internal.measurement.hc
    /* renamed from: o */
    public hb q0() {
        if (!this.f6392b.j()) {
            return this.f6392b;
        }
        this.f6392b.n();
        return this.f6392b;
    }

    public final hb p() {
        hb q02 = q0();
        if (q02.i()) {
            return q02;
        }
        throw new dd(q02);
    }

    public final fb q(hb hbVar) {
        if (!this.f6391a.equals(hbVar)) {
            if (!this.f6392b.j()) {
                m();
            }
            k(this.f6392b, hbVar);
        }
        return this;
    }

    public final fb r(byte[] bArr, int i10, int i11, ua uaVar) {
        if (!this.f6392b.j()) {
            m();
        }
        try {
            qc.a().b(this.f6392b.getClass()).f(this.f6392b, bArr, 0, i11, new y9(uaVar));
            return this;
        } catch (qb e10) {
            throw e10;
        } catch (IOException e11) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e11);
        } catch (IndexOutOfBoundsException unused) {
            throw new qb("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }
}
