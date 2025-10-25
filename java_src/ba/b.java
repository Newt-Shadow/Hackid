package ba;

import d9.j;
import d9.q;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private final j9.b f4601a;

    /* renamed from: c  reason: collision with root package name */
    private final int f4603c;

    /* renamed from: d  reason: collision with root package name */
    private final int f4604d;

    /* renamed from: e  reason: collision with root package name */
    private final int f4605e;

    /* renamed from: f  reason: collision with root package name */
    private final int f4606f;

    /* renamed from: g  reason: collision with root package name */
    private final float f4607g;

    /* renamed from: i  reason: collision with root package name */
    private final q f4609i;

    /* renamed from: b  reason: collision with root package name */
    private final List f4602b = new ArrayList(5);

    /* renamed from: h  reason: collision with root package name */
    private final int[] f4608h = new int[3];

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(j9.b bVar, int i10, int i11, int i12, int i13, float f10, q qVar) {
        this.f4601a = bVar;
        this.f4603c = i10;
        this.f4604d = i11;
        this.f4605e = i12;
        this.f4606f = i13;
        this.f4607g = f10;
        this.f4609i = qVar;
    }

    private static float a(int[] iArr, int i10) {
        return (i10 - iArr[2]) - (iArr[1] / 2.0f);
    }

    private float b(int i10, int i11, int i12, int i13) {
        j9.b bVar = this.f4601a;
        int j10 = bVar.j();
        int[] iArr = this.f4608h;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        int i14 = i10;
        while (i14 >= 0 && bVar.e(i11, i14)) {
            int i15 = iArr[1];
            if (i15 > i12) {
                break;
            }
            iArr[1] = i15 + 1;
            i14--;
        }
        if (i14 < 0 || iArr[1] > i12) {
            return Float.NaN;
        }
        while (i14 >= 0 && !bVar.e(i11, i14)) {
            int i16 = iArr[0];
            if (i16 > i12) {
                break;
            }
            iArr[0] = i16 + 1;
            i14--;
        }
        if (iArr[0] > i12) {
            return Float.NaN;
        }
        int i17 = i10 + 1;
        while (i17 < j10 && bVar.e(i11, i17)) {
            int i18 = iArr[1];
            if (i18 > i12) {
                break;
            }
            iArr[1] = i18 + 1;
            i17++;
        }
        if (i17 == j10 || iArr[1] > i12) {
            return Float.NaN;
        }
        while (i17 < j10 && !bVar.e(i11, i17)) {
            int i19 = iArr[2];
            if (i19 > i12) {
                break;
            }
            iArr[2] = i19 + 1;
            i17++;
        }
        int i20 = iArr[2];
        if (i20 > i12 || Math.abs(((iArr[0] + iArr[1]) + i20) - i13) * 5 >= i13 * 2 || !d(iArr)) {
            return Float.NaN;
        }
        return a(iArr, i17);
    }

    private boolean d(int[] iArr) {
        float f10 = this.f4607g;
        float f11 = f10 / 2.0f;
        for (int i10 = 0; i10 < 3; i10++) {
            if (Math.abs(f10 - iArr[i10]) >= f11) {
                return false;
            }
        }
        return true;
    }

    private a e(int[] iArr, int i10, int i11) {
        int i12 = iArr[0] + iArr[1] + iArr[2];
        float a10 = a(iArr, i11);
        float b10 = b(i10, (int) a10, iArr[1] * 2, i12);
        if (!Float.isNaN(b10)) {
            float f10 = ((iArr[0] + iArr[1]) + iArr[2]) / 3.0f;
            for (a aVar : this.f4602b) {
                if (aVar.f(f10, b10, a10)) {
                    return aVar.g(b10, a10, f10);
                }
            }
            a aVar2 = new a(a10, b10, f10);
            this.f4602b.add(aVar2);
            q qVar = this.f4609i;
            if (qVar != null) {
                qVar.a(aVar2);
                return null;
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a c() {
        int i10;
        a e10;
        a e11;
        int i11 = this.f4603c;
        int i12 = this.f4606f;
        int i13 = this.f4605e + i11;
        int i14 = this.f4604d + (i12 / 2);
        int[] iArr = new int[3];
        for (int i15 = 0; i15 < i12; i15++) {
            if ((i15 & 1) == 0) {
                i10 = (i15 + 1) / 2;
            } else {
                i10 = -((i15 + 1) / 2);
            }
            int i16 = i10 + i14;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            int i17 = i11;
            while (i17 < i13 && !this.f4601a.e(i17, i16)) {
                i17++;
            }
            int i18 = 0;
            while (i17 < i13) {
                if (this.f4601a.e(i17, i16)) {
                    if (i18 == 1) {
                        iArr[1] = iArr[1] + 1;
                    } else if (i18 == 2) {
                        if (d(iArr) && (e11 = e(iArr, i16, i17)) != null) {
                            return e11;
                        }
                        iArr[0] = iArr[2];
                        iArr[1] = 1;
                        iArr[2] = 0;
                        i18 = 1;
                    } else {
                        i18++;
                        iArr[i18] = iArr[i18] + 1;
                    }
                } else {
                    if (i18 == 1) {
                        i18++;
                    }
                    iArr[i18] = iArr[i18] + 1;
                }
                i17++;
            }
            if (d(iArr) && (e10 = e(iArr, i16, i13)) != null) {
                return e10;
            }
        }
        if (!this.f4602b.isEmpty()) {
            return (a) this.f4602b.get(0);
        }
        throw j.a();
    }
}
