package yd;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes2.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f33291a = AtomicReferenceFieldUpdater.newUpdater(r.class, Object.class, "_cur$volatile");
    private volatile /* synthetic */ Object _cur$volatile;

    public r(boolean z10) {
        this._cur$volatile = new s(8, z10);
    }

    public final boolean a(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f33291a;
        while (true) {
            s sVar = (s) atomicReferenceFieldUpdater.get(this);
            int a10 = sVar.a(obj);
            if (a10 == 0) {
                return true;
            }
            if (a10 != 1) {
                if (a10 == 2) {
                    return false;
                }
            } else {
                androidx.concurrent.futures.b.a(f33291a, this, sVar, sVar.l());
            }
        }
    }

    public final void b() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f33291a;
        while (true) {
            s sVar = (s) atomicReferenceFieldUpdater.get(this);
            if (sVar.d()) {
                return;
            }
            androidx.concurrent.futures.b.a(f33291a, this, sVar, sVar.l());
        }
    }

    public final int c() {
        return ((s) f33291a.get(this)).g();
    }

    public final Object e() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f33291a;
        while (true) {
            s sVar = (s) atomicReferenceFieldUpdater.get(this);
            Object m10 = sVar.m();
            if (m10 != s.f33295h) {
                return m10;
            }
            androidx.concurrent.futures.b.a(f33291a, this, sVar, sVar.l());
        }
    }
}
