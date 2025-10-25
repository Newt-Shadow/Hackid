package d4;

import android.util.SparseArray;
/* loaded from: classes.dex */
final class q0 {

    /* renamed from: c  reason: collision with root package name */
    private final y4.h f14941c;

    /* renamed from: b  reason: collision with root package name */
    private final SparseArray f14940b = new SparseArray();

    /* renamed from: a  reason: collision with root package name */
    private int f14939a = -1;

    public q0(y4.h hVar) {
        this.f14941c = hVar;
    }

    public void a(int i10, Object obj) {
        boolean z10;
        boolean z11 = false;
        if (this.f14939a == -1) {
            if (this.f14940b.size() == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            y4.a.f(z10);
            this.f14939a = 0;
        }
        if (this.f14940b.size() > 0) {
            SparseArray sparseArray = this.f14940b;
            int keyAt = sparseArray.keyAt(sparseArray.size() - 1);
            if (i10 >= keyAt) {
                z11 = true;
            }
            y4.a.a(z11);
            if (keyAt == i10) {
                y4.h hVar = this.f14941c;
                SparseArray sparseArray2 = this.f14940b;
                hVar.accept(sparseArray2.valueAt(sparseArray2.size() - 1));
            }
        }
        this.f14940b.append(i10, obj);
    }

    public void b() {
        for (int i10 = 0; i10 < this.f14940b.size(); i10++) {
            this.f14941c.accept(this.f14940b.valueAt(i10));
        }
        this.f14939a = -1;
        this.f14940b.clear();
    }

    public void c(int i10) {
        int i11;
        for (int size = this.f14940b.size() - 1; size >= 0 && i10 < this.f14940b.keyAt(size); size--) {
            this.f14941c.accept(this.f14940b.valueAt(size));
            this.f14940b.removeAt(size);
        }
        if (this.f14940b.size() > 0) {
            i11 = Math.min(this.f14939a, this.f14940b.size() - 1);
        } else {
            i11 = -1;
        }
        this.f14939a = i11;
    }

    public void d(int i10) {
        int i11 = 0;
        while (i11 < this.f14940b.size() - 1) {
            int i12 = i11 + 1;
            if (i10 >= this.f14940b.keyAt(i12)) {
                this.f14941c.accept(this.f14940b.valueAt(i11));
                this.f14940b.removeAt(i11);
                int i13 = this.f14939a;
                if (i13 > 0) {
                    this.f14939a = i13 - 1;
                }
                i11 = i12;
            } else {
                return;
            }
        }
    }

    public Object e(int i10) {
        if (this.f14939a == -1) {
            this.f14939a = 0;
        }
        while (true) {
            int i11 = this.f14939a;
            if (i11 <= 0 || i10 >= this.f14940b.keyAt(i11)) {
                break;
            }
            this.f14939a--;
        }
        while (this.f14939a < this.f14940b.size() - 1 && i10 >= this.f14940b.keyAt(this.f14939a + 1)) {
            this.f14939a++;
        }
        return this.f14940b.valueAt(this.f14939a);
    }

    public Object f() {
        SparseArray sparseArray = this.f14940b;
        return sparseArray.valueAt(sparseArray.size() - 1);
    }

    public boolean g() {
        if (this.f14940b.size() == 0) {
            return true;
        }
        return false;
    }
}
