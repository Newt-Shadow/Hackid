package x4;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import x4.k0;
/* loaded from: classes.dex */
public class k0 {

    /* renamed from: h  reason: collision with root package name */
    private static final Comparator f32349h = new Comparator() { // from class: x4.i0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int g10;
            g10 = k0.g((k0.b) obj, (k0.b) obj2);
            return g10;
        }
    };

    /* renamed from: i  reason: collision with root package name */
    private static final Comparator f32350i = new Comparator() { // from class: x4.j0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int h10;
            h10 = k0.h((k0.b) obj, (k0.b) obj2);
            return h10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f32351a;

    /* renamed from: e  reason: collision with root package name */
    private int f32355e;

    /* renamed from: f  reason: collision with root package name */
    private int f32356f;

    /* renamed from: g  reason: collision with root package name */
    private int f32357g;

    /* renamed from: c  reason: collision with root package name */
    private final b[] f32353c = new b[5];

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList f32352b = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private int f32354d = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f32358a;

        /* renamed from: b  reason: collision with root package name */
        public int f32359b;

        /* renamed from: c  reason: collision with root package name */
        public float f32360c;

        private b() {
        }
    }

    public k0(int i10) {
        this.f32351a = i10;
    }

    private void d() {
        if (this.f32354d != 1) {
            Collections.sort(this.f32352b, f32349h);
            this.f32354d = 1;
        }
    }

    private void e() {
        if (this.f32354d != 0) {
            Collections.sort(this.f32352b, f32350i);
            this.f32354d = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int g(b bVar, b bVar2) {
        return bVar.f32358a - bVar2.f32358a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int h(b bVar, b bVar2) {
        return Float.compare(bVar.f32360c, bVar2.f32360c);
    }

    public void c(int i10, float f10) {
        b bVar;
        d();
        int i11 = this.f32357g;
        if (i11 > 0) {
            b[] bVarArr = this.f32353c;
            int i12 = i11 - 1;
            this.f32357g = i12;
            bVar = bVarArr[i12];
        } else {
            bVar = new b();
        }
        int i13 = this.f32355e;
        this.f32355e = i13 + 1;
        bVar.f32358a = i13;
        bVar.f32359b = i10;
        bVar.f32360c = f10;
        this.f32352b.add(bVar);
        this.f32356f += i10;
        while (true) {
            int i14 = this.f32356f;
            int i15 = this.f32351a;
            if (i14 > i15) {
                int i16 = i14 - i15;
                b bVar2 = (b) this.f32352b.get(0);
                int i17 = bVar2.f32359b;
                if (i17 <= i16) {
                    this.f32356f -= i17;
                    this.f32352b.remove(0);
                    int i18 = this.f32357g;
                    if (i18 < 5) {
                        b[] bVarArr2 = this.f32353c;
                        this.f32357g = i18 + 1;
                        bVarArr2[i18] = bVar2;
                    }
                } else {
                    bVar2.f32359b = i17 - i16;
                    this.f32356f -= i16;
                }
            } else {
                return;
            }
        }
    }

    public float f(float f10) {
        ArrayList arrayList;
        e();
        float f11 = f10 * this.f32356f;
        int i10 = 0;
        for (int i11 = 0; i11 < this.f32352b.size(); i11++) {
            b bVar = (b) this.f32352b.get(i11);
            i10 += bVar.f32359b;
            if (i10 >= f11) {
                return bVar.f32360c;
            }
        }
        if (this.f32352b.isEmpty()) {
            return Float.NaN;
        }
        return ((b) this.f32352b.get(arrayList.size() - 1)).f32360c;
    }

    public void i() {
        this.f32352b.clear();
        this.f32354d = -1;
        this.f32355e = 0;
        this.f32356f = 0;
    }
}
