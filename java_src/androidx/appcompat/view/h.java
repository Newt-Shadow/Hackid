package androidx.appcompat.view;

import android.view.View;
import android.view.animation.Interpolator;
import d0.w0;
import d0.x0;
import d0.y0;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class h {

    /* renamed from: c  reason: collision with root package name */
    private Interpolator f905c;

    /* renamed from: d  reason: collision with root package name */
    x0 f906d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f907e;

    /* renamed from: b  reason: collision with root package name */
    private long f904b = -1;

    /* renamed from: f  reason: collision with root package name */
    private final y0 f908f = new a();

    /* renamed from: a  reason: collision with root package name */
    final ArrayList f903a = new ArrayList();

    /* loaded from: classes.dex */
    class a extends y0 {

        /* renamed from: a  reason: collision with root package name */
        private boolean f909a = false;

        /* renamed from: b  reason: collision with root package name */
        private int f910b = 0;

        a() {
        }

        @Override // d0.x0
        public void b(View view) {
            int i10 = this.f910b + 1;
            this.f910b = i10;
            if (i10 == h.this.f903a.size()) {
                x0 x0Var = h.this.f906d;
                if (x0Var != null) {
                    x0Var.b(null);
                }
                d();
            }
        }

        @Override // d0.y0, d0.x0
        public void c(View view) {
            if (this.f909a) {
                return;
            }
            this.f909a = true;
            x0 x0Var = h.this.f906d;
            if (x0Var != null) {
                x0Var.c(null);
            }
        }

        void d() {
            this.f910b = 0;
            this.f909a = false;
            h.this.b();
        }
    }

    public void a() {
        if (!this.f907e) {
            return;
        }
        Iterator it = this.f903a.iterator();
        while (it.hasNext()) {
            ((w0) it.next()).c();
        }
        this.f907e = false;
    }

    void b() {
        this.f907e = false;
    }

    public h c(w0 w0Var) {
        if (!this.f907e) {
            this.f903a.add(w0Var);
        }
        return this;
    }

    public h d(w0 w0Var, w0 w0Var2) {
        this.f903a.add(w0Var);
        w0Var2.j(w0Var.d());
        this.f903a.add(w0Var2);
        return this;
    }

    public h e(long j10) {
        if (!this.f907e) {
            this.f904b = j10;
        }
        return this;
    }

    public h f(Interpolator interpolator) {
        if (!this.f907e) {
            this.f905c = interpolator;
        }
        return this;
    }

    public h g(x0 x0Var) {
        if (!this.f907e) {
            this.f906d = x0Var;
        }
        return this;
    }

    public void h() {
        if (this.f907e) {
            return;
        }
        Iterator it = this.f903a.iterator();
        while (it.hasNext()) {
            w0 w0Var = (w0) it.next();
            long j10 = this.f904b;
            if (j10 >= 0) {
                w0Var.f(j10);
            }
            Interpolator interpolator = this.f905c;
            if (interpolator != null) {
                w0Var.g(interpolator);
            }
            if (this.f906d != null) {
                w0Var.h(this.f908f);
            }
            w0Var.l();
        }
        this.f907e = true;
    }
}
