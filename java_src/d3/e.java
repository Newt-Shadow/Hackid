package d3;

import android.media.AudioAttributes;
import android.os.Bundle;
import b3.r;
/* loaded from: classes.dex */
public final class e implements b3.r {

    /* renamed from: g  reason: collision with root package name */
    public static final e f14447g = new C0144e().a();

    /* renamed from: h  reason: collision with root package name */
    private static final String f14448h = y4.q0.q0(0);

    /* renamed from: i  reason: collision with root package name */
    private static final String f14449i = y4.q0.q0(1);

    /* renamed from: j  reason: collision with root package name */
    private static final String f14450j = y4.q0.q0(2);

    /* renamed from: k  reason: collision with root package name */
    private static final String f14451k = y4.q0.q0(3);

    /* renamed from: l  reason: collision with root package name */
    private static final String f14452l = y4.q0.q0(4);

    /* renamed from: m  reason: collision with root package name */
    public static final r.a f14453m = new r.a() { // from class: d3.d
        @Override // b3.r.a
        public final b3.r fromBundle(Bundle bundle) {
            e c10;
            c10 = e.c(bundle);
            return c10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f14454a;

    /* renamed from: b  reason: collision with root package name */
    public final int f14455b;

    /* renamed from: c  reason: collision with root package name */
    public final int f14456c;

    /* renamed from: d  reason: collision with root package name */
    public final int f14457d;

    /* renamed from: e  reason: collision with root package name */
    public final int f14458e;

    /* renamed from: f  reason: collision with root package name */
    private d f14459f;

    /* loaded from: classes.dex */
    private static final class b {
        public static void a(AudioAttributes.Builder builder, int i10) {
            builder.setAllowedCapturePolicy(i10);
        }
    }

    /* loaded from: classes.dex */
    private static final class c {
        public static void a(AudioAttributes.Builder builder, int i10) {
            builder.setSpatializationBehavior(i10);
        }
    }

    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final AudioAttributes f14460a;

        private d(e eVar) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(eVar.f14454a).setFlags(eVar.f14455b).setUsage(eVar.f14456c);
            int i10 = y4.q0.f32946a;
            if (i10 >= 29) {
                b.a(usage, eVar.f14457d);
            }
            if (i10 >= 32) {
                c.a(usage, eVar.f14458e);
            }
            this.f14460a = usage.build();
        }
    }

    /* renamed from: d3.e$e  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0144e {

        /* renamed from: a  reason: collision with root package name */
        private int f14461a = 0;

        /* renamed from: b  reason: collision with root package name */
        private int f14462b = 0;

        /* renamed from: c  reason: collision with root package name */
        private int f14463c = 1;

        /* renamed from: d  reason: collision with root package name */
        private int f14464d = 1;

        /* renamed from: e  reason: collision with root package name */
        private int f14465e = 0;

        public e a() {
            return new e(this.f14461a, this.f14462b, this.f14463c, this.f14464d, this.f14465e);
        }

        public C0144e b(int i10) {
            this.f14464d = i10;
            return this;
        }

        public C0144e c(int i10) {
            this.f14461a = i10;
            return this;
        }

        public C0144e d(int i10) {
            this.f14462b = i10;
            return this;
        }

        public C0144e e(int i10) {
            this.f14465e = i10;
            return this;
        }

        public C0144e f(int i10) {
            this.f14463c = i10;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ e c(Bundle bundle) {
        C0144e c0144e = new C0144e();
        String str = f14448h;
        if (bundle.containsKey(str)) {
            c0144e.c(bundle.getInt(str));
        }
        String str2 = f14449i;
        if (bundle.containsKey(str2)) {
            c0144e.d(bundle.getInt(str2));
        }
        String str3 = f14450j;
        if (bundle.containsKey(str3)) {
            c0144e.f(bundle.getInt(str3));
        }
        String str4 = f14451k;
        if (bundle.containsKey(str4)) {
            c0144e.b(bundle.getInt(str4));
        }
        String str5 = f14452l;
        if (bundle.containsKey(str5)) {
            c0144e.e(bundle.getInt(str5));
        }
        return c0144e.a();
    }

    public d b() {
        if (this.f14459f == null) {
            this.f14459f = new d();
        }
        return this.f14459f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f14454a == eVar.f14454a && this.f14455b == eVar.f14455b && this.f14456c == eVar.f14456c && this.f14457d == eVar.f14457d && this.f14458e == eVar.f14458e) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((527 + this.f14454a) * 31) + this.f14455b) * 31) + this.f14456c) * 31) + this.f14457d) * 31) + this.f14458e;
    }

    private e(int i10, int i11, int i12, int i13, int i14) {
        this.f14454a = i10;
        this.f14455b = i11;
        this.f14456c = i12;
        this.f14457d = i13;
        this.f14458e = i14;
    }
}
