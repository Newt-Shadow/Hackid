package androidx.recyclerview.widget;

import android.view.View;
/* loaded from: classes.dex */
class l {

    /* renamed from: a  reason: collision with root package name */
    final b f3421a;

    /* renamed from: b  reason: collision with root package name */
    a f3422b = new a();

    /* loaded from: classes.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        int f3423a = 0;

        /* renamed from: b  reason: collision with root package name */
        int f3424b;

        /* renamed from: c  reason: collision with root package name */
        int f3425c;

        /* renamed from: d  reason: collision with root package name */
        int f3426d;

        /* renamed from: e  reason: collision with root package name */
        int f3427e;

        a() {
        }

        void a(int i10) {
            this.f3423a = i10 | this.f3423a;
        }

        boolean b() {
            int i10 = this.f3423a;
            if ((i10 & 7) != 0 && (i10 & (c(this.f3426d, this.f3424b) << 0)) == 0) {
                return false;
            }
            int i11 = this.f3423a;
            if ((i11 & 112) != 0 && (i11 & (c(this.f3426d, this.f3425c) << 4)) == 0) {
                return false;
            }
            int i12 = this.f3423a;
            if ((i12 & 1792) != 0 && (i12 & (c(this.f3427e, this.f3424b) << 8)) == 0) {
                return false;
            }
            int i13 = this.f3423a;
            if ((i13 & 28672) != 0 && (i13 & (c(this.f3427e, this.f3425c) << 12)) == 0) {
                return false;
            }
            return true;
        }

        int c(int i10, int i11) {
            if (i10 > i11) {
                return 1;
            }
            return i10 == i11 ? 2 : 4;
        }

        void d() {
            this.f3423a = 0;
        }

        void e(int i10, int i11, int i12, int i13) {
            this.f3424b = i10;
            this.f3425c = i11;
            this.f3426d = i12;
            this.f3427e = i13;
        }
    }

    /* loaded from: classes.dex */
    interface b {
        View a(int i10);

        int b(View view);

        int c();

        int d();

        int e(View view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(b bVar) {
        this.f3421a = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View a(int i10, int i11, int i12, int i13) {
        int i14;
        int c10 = this.f3421a.c();
        int d10 = this.f3421a.d();
        if (i11 > i10) {
            i14 = 1;
        } else {
            i14 = -1;
        }
        View view = null;
        while (i10 != i11) {
            View a10 = this.f3421a.a(i10);
            this.f3422b.e(c10, d10, this.f3421a.b(a10), this.f3421a.e(a10));
            if (i12 != 0) {
                this.f3422b.d();
                this.f3422b.a(i12);
                if (this.f3422b.b()) {
                    return a10;
                }
            }
            if (i13 != 0) {
                this.f3422b.d();
                this.f3422b.a(i13);
                if (this.f3422b.b()) {
                    view = a10;
                }
            }
            i10 += i14;
        }
        return view;
    }
}
