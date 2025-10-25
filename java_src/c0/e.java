package c0;

import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public class e implements d {

    /* renamed from: a  reason: collision with root package name */
    private final Object[] f4788a;

    /* renamed from: b  reason: collision with root package name */
    private int f4789b;

    public e(int i10) {
        boolean z10;
        if (i10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            this.f4788a = new Object[i10];
            return;
        }
        throw new IllegalArgumentException("The max pool size must be > 0".toString());
    }

    private final boolean c(Object obj) {
        int i10 = this.f4789b;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f4788a[i11] == obj) {
                return true;
            }
        }
        return false;
    }

    @Override // c0.d
    public boolean a(Object instance) {
        m.e(instance, "instance");
        if (!c(instance)) {
            int i10 = this.f4789b;
            Object[] objArr = this.f4788a;
            if (i10 < objArr.length) {
                objArr[i10] = instance;
                this.f4789b = i10 + 1;
                return true;
            }
            return false;
        }
        throw new IllegalStateException("Already in the pool!".toString());
    }

    @Override // c0.d
    public Object b() {
        int i10 = this.f4789b;
        if (i10 <= 0) {
            return null;
        }
        int i11 = i10 - 1;
        Object obj = this.f4788a[i11];
        m.c(obj, "null cannot be cast to non-null type T of androidx.core.util.Pools.SimplePool");
        this.f4788a[i11] = null;
        this.f4789b--;
        return obj;
    }
}
