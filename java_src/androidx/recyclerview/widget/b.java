package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    final InterfaceC0054b f3334a;

    /* renamed from: b  reason: collision with root package name */
    final a f3335b = new a();

    /* renamed from: c  reason: collision with root package name */
    final List f3336c = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        long f3337a = 0;

        /* renamed from: b  reason: collision with root package name */
        a f3338b;

        a() {
        }

        private void c() {
            if (this.f3338b == null) {
                this.f3338b = new a();
            }
        }

        void a(int i10) {
            if (i10 >= 64) {
                a aVar = this.f3338b;
                if (aVar != null) {
                    aVar.a(i10 - 64);
                    return;
                }
                return;
            }
            this.f3337a &= ~(1 << i10);
        }

        int b(int i10) {
            a aVar = this.f3338b;
            if (aVar == null) {
                if (i10 >= 64) {
                    return Long.bitCount(this.f3337a);
                }
                return Long.bitCount(this.f3337a & ((1 << i10) - 1));
            } else if (i10 < 64) {
                return Long.bitCount(this.f3337a & ((1 << i10) - 1));
            } else {
                return aVar.b(i10 - 64) + Long.bitCount(this.f3337a);
            }
        }

        boolean d(int i10) {
            if (i10 >= 64) {
                c();
                return this.f3338b.d(i10 - 64);
            } else if ((this.f3337a & (1 << i10)) != 0) {
                return true;
            } else {
                return false;
            }
        }

        boolean e(int i10) {
            boolean z10;
            if (i10 >= 64) {
                c();
                return this.f3338b.e(i10 - 64);
            }
            long j10 = 1 << i10;
            long j11 = this.f3337a;
            if ((j11 & j10) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            long j12 = j11 & (~j10);
            this.f3337a = j12;
            long j13 = j10 - 1;
            this.f3337a = (j12 & j13) | Long.rotateRight((~j13) & j12, 1);
            a aVar = this.f3338b;
            if (aVar != null) {
                if (aVar.d(0)) {
                    g(63);
                }
                this.f3338b.e(0);
            }
            return z10;
        }

        void f() {
            this.f3337a = 0L;
            a aVar = this.f3338b;
            if (aVar != null) {
                aVar.f();
            }
        }

        void g(int i10) {
            if (i10 >= 64) {
                c();
                this.f3338b.g(i10 - 64);
                return;
            }
            this.f3337a |= 1 << i10;
        }

        public String toString() {
            if (this.f3338b == null) {
                return Long.toBinaryString(this.f3337a);
            }
            return this.f3338b.toString() + "xx" + Long.toBinaryString(this.f3337a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0054b {
        View a(int i10);

        int b();

        void c();

        int d(View view);

        RecyclerView.a0 e(View view);

        void f(int i10);

        void g(View view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(InterfaceC0054b interfaceC0054b) {
        this.f3334a = interfaceC0054b;
    }

    private int e(int i10) {
        if (i10 < 0) {
            return -1;
        }
        int b10 = this.f3334a.b();
        int i11 = i10;
        while (i11 < b10) {
            int b11 = i10 - (i11 - this.f3335b.b(i11));
            if (b11 == 0) {
                while (this.f3335b.d(i11)) {
                    i11++;
                }
                return i11;
            }
            i11 += b11;
        }
        return -1;
    }

    private boolean k(View view) {
        if (this.f3336c.remove(view)) {
            this.f3334a.g(view);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i10) {
        int e10 = e(i10);
        this.f3335b.e(e10);
        this.f3334a.f(e10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View b(int i10) {
        if (this.f3336c.size() <= 0) {
            return null;
        }
        this.f3334a.e((View) this.f3336c.get(0));
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View c(int i10) {
        return this.f3334a.a(e(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        return this.f3334a.b() - this.f3336c.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View f(int i10) {
        return this.f3334a.a(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g() {
        return this.f3334a.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int h(View view) {
        int d10 = this.f3334a.d(view);
        if (d10 == -1 || this.f3335b.d(d10)) {
            return -1;
        }
        return d10 - this.f3335b.b(d10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        this.f3335b.f();
        for (int size = this.f3336c.size() - 1; size >= 0; size--) {
            this.f3334a.g((View) this.f3336c.get(size));
            this.f3336c.remove(size);
        }
        this.f3334a.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(View view) {
        int d10 = this.f3334a.d(view);
        if (d10 >= 0) {
            if (this.f3335b.d(d10)) {
                this.f3335b.a(d10);
                k(view);
                return;
            }
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
        throw new IllegalArgumentException("view is not a child, cannot hide " + view);
    }

    public String toString() {
        return this.f3335b.toString() + ", hidden list:" + this.f3336c.size();
    }
}
