package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.yandex.metrica.impl.ob.D1;
/* loaded from: classes2.dex */
public class O extends D1 {

    /* renamed from: a  reason: collision with root package name */
    private final C0429b9 f10917a;

    /* loaded from: classes2.dex */
    class a extends SparseArray<D1.a> {
        a() {
            put(47, new c(O.this.f10917a));
            put(66, new d(O.this, O.this.f10917a));
            put(89, new b(O.this.f10917a));
            put(99, new e(O.this.f10917a));
            put(105, new f(O.this.f10917a));
        }
    }

    /* loaded from: classes2.dex */
    private class d implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final C0429b9 f10921a;

        public d(O o10, C0429b9 c0429b9) {
            this.f10921a = c0429b9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            this.f10921a.f(new Rd("COOKIE_BROWSERS", null).a());
            this.f10921a.f(new Rd("BIND_ID_URL", null).a());
            L0.a(context, "b_meta.dat");
            L0.a(context, "browsers.dat");
        }
    }

    /* loaded from: classes2.dex */
    static class e implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final C0429b9 f10922a;

        e(C0429b9 c0429b9) {
            this.f10922a = c0429b9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            this.f10922a.f(new Rd("DEVICE_ID_POSSIBLE", null).a()).d();
        }
    }

    /* loaded from: classes2.dex */
    static class f implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final C0429b9 f10923a;

        f(C0429b9 c0429b9) {
            this.f10923a = c0429b9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            this.f10923a.f(new Rd("STARTUP_REQUEST_TIME", null).a()).d();
        }
    }

    public O(Context context) {
        this(new C0429b9(C0629ja.a(context).d()));
    }

    @Override // com.yandex.metrica.impl.ob.D1
    SparseArray<D1.a> a() {
        return new a();
    }

    @Override // com.yandex.metrica.impl.ob.D1
    protected int a(Nd nd2) {
        return (int) this.f10917a.b(-1L);
    }

    O(C0429b9 c0429b9) {
        this.f10917a = c0429b9;
    }

    @Override // com.yandex.metrica.impl.ob.D1
    protected void a(Nd nd2, int i10) {
        this.f10917a.e(i10);
        nd2.g().b();
    }

    /* loaded from: classes2.dex */
    static class b implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final C0429b9 f10919a;

        b(C0429b9 c0429b9) {
            this.f10919a = c0429b9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            String l10 = this.f10919a.l(null);
            String n10 = this.f10919a.n(null);
            String m10 = this.f10919a.m(null);
            String g10 = this.f10919a.g((String) null);
            String h10 = this.f10919a.h((String) null);
            String j10 = this.f10919a.j((String) null);
            this.f10919a.e(a(l10));
            this.f10919a.i(a(n10));
            this.f10919a.d(a(m10));
            this.f10919a.a(a(g10));
            this.f10919a.b(a(h10));
            this.f10919a.h(a(j10));
        }

        private W0 a(String str) {
            boolean isEmpty = TextUtils.isEmpty(str);
            return new W0(str, isEmpty ? U0.UNKNOWN : U0.OK, isEmpty ? "no identifier saved in previous version" : null);
        }
    }

    /* loaded from: classes2.dex */
    static class c implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private C0429b9 f10920a;

        public c(C0429b9 c0429b9) {
            this.f10920a = c0429b9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            Ld ld2 = new Ld(context);
            if (A2.b(ld2.g())) {
                return;
            }
            if (this.f10920a.n(null) == null || this.f10920a.l(null) == null) {
                String e10 = ld2.e(null);
                if (a(e10, this.f10920a.l(null))) {
                    this.f10920a.s(e10);
                }
                String f10 = ld2.f(null);
                if (a(f10, this.f10920a.n(null))) {
                    this.f10920a.t(f10);
                }
                String b10 = ld2.b(null);
                if (a(b10, this.f10920a.g((String) null))) {
                    this.f10920a.o(b10);
                }
                String c10 = ld2.c(null);
                if (a(c10, this.f10920a.h((String) null))) {
                    this.f10920a.p(c10);
                }
                String d10 = ld2.d(null);
                if (a(d10, this.f10920a.j((String) null))) {
                    this.f10920a.q(d10);
                }
                long a10 = ld2.a(-1L);
                if (a10 != -1 && this.f10920a.d(-1L) == -1) {
                    this.f10920a.h(a10);
                }
                this.f10920a.d();
                ld2.f().b();
            }
        }

        private boolean a(String str, String str2) {
            return !TextUtils.isEmpty(str) && TextUtils.isEmpty(str2);
        }
    }
}
