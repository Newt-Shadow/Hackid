package ce;

import java.util.concurrent.atomic.AtomicReferenceArray;
import yd.c0;
import yd.f0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class k extends c0 {

    /* renamed from: e  reason: collision with root package name */
    private final /* synthetic */ AtomicReferenceArray f5197e;

    public k(long j10, k kVar, int i10) {
        super(j10, kVar, i10);
        int i11;
        i11 = j.f5196f;
        this.f5197e = new AtomicReferenceArray(i11);
    }

    @Override // yd.c0
    public int r() {
        int i10;
        i10 = j.f5196f;
        return i10;
    }

    @Override // yd.c0
    public void s(int i10, Throwable th, ad.i iVar) {
        f0 f0Var;
        f0Var = j.f5195e;
        v().set(i10, f0Var);
        t();
    }

    public String toString() {
        return "SemaphoreSegment[id=" + this.f33250c + ", hashCode=" + hashCode() + ']';
    }

    public final /* synthetic */ AtomicReferenceArray v() {
        return this.f5197e;
    }
}
