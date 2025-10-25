package yd;

import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes2.dex */
public final class a0 {
    private volatile AtomicReferenceArray<Object> array;

    public a0(int i10) {
        this.array = new AtomicReferenceArray<>(i10);
    }

    public final int a() {
        return this.array.length();
    }

    public final Object b(int i10) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.array;
        if (i10 < atomicReferenceArray.length()) {
            return atomicReferenceArray.get(i10);
        }
        return null;
    }

    public final void c(int i10, Object obj) {
        int b10;
        AtomicReferenceArray<Object> atomicReferenceArray = this.array;
        int length = atomicReferenceArray.length();
        if (i10 >= length) {
            b10 = od.i.b(i10 + 1, length * 2);
            AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(b10);
            for (int i11 = 0; i11 < length; i11++) {
                atomicReferenceArray2.set(i11, atomicReferenceArray.get(i11));
            }
            atomicReferenceArray2.set(i10, obj);
            this.array = atomicReferenceArray2;
            return;
        }
        atomicReferenceArray.set(i10, obj);
    }
}
