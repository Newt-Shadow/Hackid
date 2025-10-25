package b3;

import android.net.Uri;
import android.os.Bundle;
import b3.f2;
import b3.r;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import o6.q;
/* loaded from: classes.dex */
public final class f2 implements r {

    /* renamed from: i  reason: collision with root package name */
    public static final f2 f3872i = new c().a();

    /* renamed from: j  reason: collision with root package name */
    private static final String f3873j = y4.q0.q0(0);

    /* renamed from: k  reason: collision with root package name */
    private static final String f3874k = y4.q0.q0(1);

    /* renamed from: l  reason: collision with root package name */
    private static final String f3875l = y4.q0.q0(2);

    /* renamed from: m  reason: collision with root package name */
    private static final String f3876m = y4.q0.q0(3);

    /* renamed from: n  reason: collision with root package name */
    private static final String f3877n = y4.q0.q0(4);

    /* renamed from: o  reason: collision with root package name */
    public static final r.a f3878o = new r.a() { // from class: b3.e2
        @Override // b3.r.a
        public final r fromBundle(Bundle bundle) {
            f2 c10;
            c10 = f2.c(bundle);
            return c10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f3879a;

    /* renamed from: b  reason: collision with root package name */
    public final h f3880b;

    /* renamed from: c  reason: collision with root package name */
    public final i f3881c;

    /* renamed from: d  reason: collision with root package name */
    public final g f3882d;

    /* renamed from: e  reason: collision with root package name */
    public final k2 f3883e;

    /* renamed from: f  reason: collision with root package name */
    public final d f3884f;

    /* renamed from: g  reason: collision with root package name */
    public final e f3885g;

    /* renamed from: h  reason: collision with root package name */
    public final j f3886h;

    /* loaded from: classes.dex */
    public static final class b {
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private String f3887a;

        /* renamed from: b  reason: collision with root package name */
        private Uri f3888b;

        /* renamed from: c  reason: collision with root package name */
        private String f3889c;

        /* renamed from: d  reason: collision with root package name */
        private d.a f3890d;

        /* renamed from: e  reason: collision with root package name */
        private f.a f3891e;

        /* renamed from: f  reason: collision with root package name */
        private List f3892f;

        /* renamed from: g  reason: collision with root package name */
        private String f3893g;

        /* renamed from: h  reason: collision with root package name */
        private o6.q f3894h;

        /* renamed from: i  reason: collision with root package name */
        private Object f3895i;

        /* renamed from: j  reason: collision with root package name */
        private k2 f3896j;

        /* renamed from: k  reason: collision with root package name */
        private g.a f3897k;

        /* renamed from: l  reason: collision with root package name */
        private j f3898l;

        public f2 a() {
            boolean z10;
            i iVar;
            if (this.f3891e.f3929b != null && this.f3891e.f3928a == null) {
                z10 = false;
            } else {
                z10 = true;
            }
            y4.a.f(z10);
            Uri uri = this.f3888b;
            f fVar = null;
            if (uri != null) {
                String str = this.f3889c;
                if (this.f3891e.f3928a != null) {
                    fVar = this.f3891e.i();
                }
                iVar = new i(uri, str, fVar, null, this.f3892f, this.f3893g, this.f3894h, this.f3895i);
            } else {
                iVar = null;
            }
            String str2 = this.f3887a;
            if (str2 == null) {
                str2 = "";
            }
            String str3 = str2;
            e g10 = this.f3890d.g();
            g f10 = this.f3897k.f();
            k2 k2Var = this.f3896j;
            if (k2Var == null) {
                k2Var = k2.I;
            }
            return new f2(str3, g10, iVar, f10, k2Var, this.f3898l);
        }

        public c b(String str) {
            this.f3893g = str;
            return this;
        }

        public c c(String str) {
            this.f3887a = (String) y4.a.e(str);
            return this;
        }

        public c d(Object obj) {
            this.f3895i = obj;
            return this;
        }

        public c e(Uri uri) {
            this.f3888b = uri;
            return this;
        }

        public c() {
            this.f3890d = new d.a();
            this.f3891e = new f.a();
            this.f3892f = Collections.emptyList();
            this.f3894h = o6.q.D();
            this.f3897k = new g.a();
            this.f3898l = j.f3961d;
        }

        private c(f2 f2Var) {
            this();
            f.a aVar;
            this.f3890d = f2Var.f3884f.b();
            this.f3887a = f2Var.f3879a;
            this.f3896j = f2Var.f3883e;
            this.f3897k = f2Var.f3882d.b();
            this.f3898l = f2Var.f3886h;
            h hVar = f2Var.f3880b;
            if (hVar != null) {
                this.f3893g = hVar.f3957e;
                this.f3889c = hVar.f3954b;
                this.f3888b = hVar.f3953a;
                this.f3892f = hVar.f3956d;
                this.f3894h = hVar.f3958f;
                this.f3895i = hVar.f3960h;
                f fVar = hVar.f3955c;
                if (fVar != null) {
                    aVar = fVar.b();
                } else {
                    aVar = new f.a();
                }
                this.f3891e = aVar;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class d implements r {

        /* renamed from: f  reason: collision with root package name */
        public static final d f3899f = new a().f();

        /* renamed from: g  reason: collision with root package name */
        private static final String f3900g = y4.q0.q0(0);

        /* renamed from: h  reason: collision with root package name */
        private static final String f3901h = y4.q0.q0(1);

        /* renamed from: i  reason: collision with root package name */
        private static final String f3902i = y4.q0.q0(2);

        /* renamed from: j  reason: collision with root package name */
        private static final String f3903j = y4.q0.q0(3);

        /* renamed from: k  reason: collision with root package name */
        private static final String f3904k = y4.q0.q0(4);

        /* renamed from: l  reason: collision with root package name */
        public static final r.a f3905l = new r.a() { // from class: b3.g2
            @Override // b3.r.a
            public final r fromBundle(Bundle bundle) {
                f2.e c10;
                c10 = f2.d.c(bundle);
                return c10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final long f3906a;

        /* renamed from: b  reason: collision with root package name */
        public final long f3907b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f3908c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f3909d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f3910e;

        /* loaded from: classes.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private long f3911a;

            /* renamed from: b  reason: collision with root package name */
            private long f3912b;

            /* renamed from: c  reason: collision with root package name */
            private boolean f3913c;

            /* renamed from: d  reason: collision with root package name */
            private boolean f3914d;

            /* renamed from: e  reason: collision with root package name */
            private boolean f3915e;

            public d f() {
                return g();
            }

            public e g() {
                return new e(this);
            }

            public a h(long j10) {
                boolean z10;
                if (j10 != Long.MIN_VALUE && j10 < 0) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                y4.a.a(z10);
                this.f3912b = j10;
                return this;
            }

            public a i(boolean z10) {
                this.f3914d = z10;
                return this;
            }

            public a j(boolean z10) {
                this.f3913c = z10;
                return this;
            }

            public a k(long j10) {
                boolean z10;
                if (j10 >= 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                y4.a.a(z10);
                this.f3911a = j10;
                return this;
            }

            public a l(boolean z10) {
                this.f3915e = z10;
                return this;
            }

            public a() {
                this.f3912b = Long.MIN_VALUE;
            }

            private a(d dVar) {
                this.f3911a = dVar.f3906a;
                this.f3912b = dVar.f3907b;
                this.f3913c = dVar.f3908c;
                this.f3914d = dVar.f3909d;
                this.f3915e = dVar.f3910e;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ e c(Bundle bundle) {
            a aVar = new a();
            String str = f3900g;
            d dVar = f3899f;
            return aVar.k(bundle.getLong(str, dVar.f3906a)).h(bundle.getLong(f3901h, dVar.f3907b)).j(bundle.getBoolean(f3902i, dVar.f3908c)).i(bundle.getBoolean(f3903j, dVar.f3909d)).l(bundle.getBoolean(f3904k, dVar.f3910e)).g();
        }

        public a b() {
            return new a();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f3906a == dVar.f3906a && this.f3907b == dVar.f3907b && this.f3908c == dVar.f3908c && this.f3909d == dVar.f3909d && this.f3910e == dVar.f3910e) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            long j10 = this.f3906a;
            long j11 = this.f3907b;
            return (((((((((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) ((j11 >>> 32) ^ j11))) * 31) + (this.f3908c ? 1 : 0)) * 31) + (this.f3909d ? 1 : 0)) * 31) + (this.f3910e ? 1 : 0);
        }

        private d(a aVar) {
            this.f3906a = aVar.f3911a;
            this.f3907b = aVar.f3912b;
            this.f3908c = aVar.f3913c;
            this.f3909d = aVar.f3914d;
            this.f3910e = aVar.f3915e;
        }
    }

    /* loaded from: classes.dex */
    public static final class e extends d {

        /* renamed from: m  reason: collision with root package name */
        public static final e f3916m = new d.a().g();

        private e(d.a aVar) {
            super(aVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final UUID f3917a;

        /* renamed from: b  reason: collision with root package name */
        public final UUID f3918b;

        /* renamed from: c  reason: collision with root package name */
        public final Uri f3919c;

        /* renamed from: d  reason: collision with root package name */
        public final o6.r f3920d;

        /* renamed from: e  reason: collision with root package name */
        public final o6.r f3921e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f3922f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f3923g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f3924h;

        /* renamed from: i  reason: collision with root package name */
        public final o6.q f3925i;

        /* renamed from: j  reason: collision with root package name */
        public final o6.q f3926j;

        /* renamed from: k  reason: collision with root package name */
        private final byte[] f3927k;

        public a b() {
            return new a();
        }

        public byte[] c() {
            byte[] bArr = this.f3927k;
            if (bArr != null) {
                return Arrays.copyOf(bArr, bArr.length);
            }
            return null;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            if (this.f3917a.equals(fVar.f3917a) && y4.q0.c(this.f3919c, fVar.f3919c) && y4.q0.c(this.f3921e, fVar.f3921e) && this.f3922f == fVar.f3922f && this.f3924h == fVar.f3924h && this.f3923g == fVar.f3923g && this.f3926j.equals(fVar.f3926j) && Arrays.equals(this.f3927k, fVar.f3927k)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i10;
            int hashCode = this.f3917a.hashCode() * 31;
            Uri uri = this.f3919c;
            if (uri != null) {
                i10 = uri.hashCode();
            } else {
                i10 = 0;
            }
            return ((((((((((((hashCode + i10) * 31) + this.f3921e.hashCode()) * 31) + (this.f3922f ? 1 : 0)) * 31) + (this.f3924h ? 1 : 0)) * 31) + (this.f3923g ? 1 : 0)) * 31) + this.f3926j.hashCode()) * 31) + Arrays.hashCode(this.f3927k);
        }

        /* loaded from: classes.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private UUID f3928a;

            /* renamed from: b  reason: collision with root package name */
            private Uri f3929b;

            /* renamed from: c  reason: collision with root package name */
            private o6.r f3930c;

            /* renamed from: d  reason: collision with root package name */
            private boolean f3931d;

            /* renamed from: e  reason: collision with root package name */
            private boolean f3932e;

            /* renamed from: f  reason: collision with root package name */
            private boolean f3933f;

            /* renamed from: g  reason: collision with root package name */
            private o6.q f3934g;

            /* renamed from: h  reason: collision with root package name */
            private byte[] f3935h;

            public f i() {
                return new f(this);
            }

            private a() {
                this.f3930c = o6.r.k();
                this.f3934g = o6.q.D();
            }

            private a(f fVar) {
                this.f3928a = fVar.f3917a;
                this.f3929b = fVar.f3919c;
                this.f3930c = fVar.f3921e;
                this.f3931d = fVar.f3922f;
                this.f3932e = fVar.f3923g;
                this.f3933f = fVar.f3924h;
                this.f3934g = fVar.f3926j;
                this.f3935h = fVar.f3927k;
            }
        }

        private f(a aVar) {
            y4.a.f((aVar.f3933f && aVar.f3929b == null) ? false : true);
            UUID uuid = (UUID) y4.a.e(aVar.f3928a);
            this.f3917a = uuid;
            this.f3918b = uuid;
            this.f3919c = aVar.f3929b;
            this.f3920d = aVar.f3930c;
            this.f3921e = aVar.f3930c;
            this.f3922f = aVar.f3931d;
            this.f3924h = aVar.f3933f;
            this.f3923g = aVar.f3932e;
            this.f3925i = aVar.f3934g;
            this.f3926j = aVar.f3934g;
            this.f3927k = aVar.f3935h != null ? Arrays.copyOf(aVar.f3935h, aVar.f3935h.length) : null;
        }
    }

    /* loaded from: classes.dex */
    public static final class g implements r {

        /* renamed from: f  reason: collision with root package name */
        public static final g f3936f = new a().f();

        /* renamed from: g  reason: collision with root package name */
        private static final String f3937g = y4.q0.q0(0);

        /* renamed from: h  reason: collision with root package name */
        private static final String f3938h = y4.q0.q0(1);

        /* renamed from: i  reason: collision with root package name */
        private static final String f3939i = y4.q0.q0(2);

        /* renamed from: j  reason: collision with root package name */
        private static final String f3940j = y4.q0.q0(3);

        /* renamed from: k  reason: collision with root package name */
        private static final String f3941k = y4.q0.q0(4);

        /* renamed from: l  reason: collision with root package name */
        public static final r.a f3942l = new r.a() { // from class: b3.h2
            @Override // b3.r.a
            public final r fromBundle(Bundle bundle) {
                f2.g c10;
                c10 = f2.g.c(bundle);
                return c10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final long f3943a;

        /* renamed from: b  reason: collision with root package name */
        public final long f3944b;

        /* renamed from: c  reason: collision with root package name */
        public final long f3945c;

        /* renamed from: d  reason: collision with root package name */
        public final float f3946d;

        /* renamed from: e  reason: collision with root package name */
        public final float f3947e;

        /* loaded from: classes.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private long f3948a;

            /* renamed from: b  reason: collision with root package name */
            private long f3949b;

            /* renamed from: c  reason: collision with root package name */
            private long f3950c;

            /* renamed from: d  reason: collision with root package name */
            private float f3951d;

            /* renamed from: e  reason: collision with root package name */
            private float f3952e;

            public g f() {
                return new g(this);
            }

            public a g(long j10) {
                this.f3950c = j10;
                return this;
            }

            public a h(float f10) {
                this.f3952e = f10;
                return this;
            }

            public a i(long j10) {
                this.f3949b = j10;
                return this;
            }

            public a j(float f10) {
                this.f3951d = f10;
                return this;
            }

            public a k(long j10) {
                this.f3948a = j10;
                return this;
            }

            public a() {
                this.f3948a = -9223372036854775807L;
                this.f3949b = -9223372036854775807L;
                this.f3950c = -9223372036854775807L;
                this.f3951d = -3.4028235E38f;
                this.f3952e = -3.4028235E38f;
            }

            private a(g gVar) {
                this.f3948a = gVar.f3943a;
                this.f3949b = gVar.f3944b;
                this.f3950c = gVar.f3945c;
                this.f3951d = gVar.f3946d;
                this.f3952e = gVar.f3947e;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ g c(Bundle bundle) {
            String str = f3937g;
            g gVar = f3936f;
            return new g(bundle.getLong(str, gVar.f3943a), bundle.getLong(f3938h, gVar.f3944b), bundle.getLong(f3939i, gVar.f3945c), bundle.getFloat(f3940j, gVar.f3946d), bundle.getFloat(f3941k, gVar.f3947e));
        }

        public a b() {
            return new a();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            if (this.f3943a == gVar.f3943a && this.f3944b == gVar.f3944b && this.f3945c == gVar.f3945c && this.f3946d == gVar.f3946d && this.f3947e == gVar.f3947e) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i10;
            long j10 = this.f3943a;
            long j11 = this.f3944b;
            long j12 = this.f3945c;
            int i11 = ((((((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + ((int) ((j12 >>> 32) ^ j12))) * 31;
            float f10 = this.f3946d;
            int i12 = 0;
            if (f10 != 0.0f) {
                i10 = Float.floatToIntBits(f10);
            } else {
                i10 = 0;
            }
            int i13 = (i11 + i10) * 31;
            float f11 = this.f3947e;
            if (f11 != 0.0f) {
                i12 = Float.floatToIntBits(f11);
            }
            return i13 + i12;
        }

        private g(a aVar) {
            this(aVar.f3948a, aVar.f3949b, aVar.f3950c, aVar.f3951d, aVar.f3952e);
        }

        public g(long j10, long j11, long j12, float f10, float f11) {
            this.f3943a = j10;
            this.f3944b = j11;
            this.f3945c = j12;
            this.f3946d = f10;
            this.f3947e = f11;
        }
    }

    /* loaded from: classes.dex */
    public static class h {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f3953a;

        /* renamed from: b  reason: collision with root package name */
        public final String f3954b;

        /* renamed from: c  reason: collision with root package name */
        public final f f3955c;

        /* renamed from: d  reason: collision with root package name */
        public final List f3956d;

        /* renamed from: e  reason: collision with root package name */
        public final String f3957e;

        /* renamed from: f  reason: collision with root package name */
        public final o6.q f3958f;

        /* renamed from: g  reason: collision with root package name */
        public final List f3959g;

        /* renamed from: h  reason: collision with root package name */
        public final Object f3960h;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            if (this.f3953a.equals(hVar.f3953a) && y4.q0.c(this.f3954b, hVar.f3954b) && y4.q0.c(this.f3955c, hVar.f3955c) && y4.q0.c(null, null) && this.f3956d.equals(hVar.f3956d) && y4.q0.c(this.f3957e, hVar.f3957e) && this.f3958f.equals(hVar.f3958f) && y4.q0.c(this.f3960h, hVar.f3960h)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4 = this.f3953a.hashCode() * 31;
            String str = this.f3954b;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = (hashCode4 + hashCode) * 31;
            f fVar = this.f3955c;
            if (fVar == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = fVar.hashCode();
            }
            int hashCode5 = (((((i11 + hashCode2) * 31) + 0) * 31) + this.f3956d.hashCode()) * 31;
            String str2 = this.f3957e;
            if (str2 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str2.hashCode();
            }
            int hashCode6 = (((hashCode5 + hashCode3) * 31) + this.f3958f.hashCode()) * 31;
            Object obj = this.f3960h;
            if (obj != null) {
                i10 = obj.hashCode();
            }
            return hashCode6 + i10;
        }

        private h(Uri uri, String str, f fVar, b bVar, List list, String str2, o6.q qVar, Object obj) {
            this.f3953a = uri;
            this.f3954b = str;
            this.f3955c = fVar;
            this.f3956d = list;
            this.f3957e = str2;
            this.f3958f = qVar;
            q.a r10 = o6.q.r();
            for (int i10 = 0; i10 < qVar.size(); i10++) {
                r10.a(((l) qVar.get(i10)).a().i());
            }
            this.f3959g = r10.k();
            this.f3960h = obj;
        }
    }

    /* loaded from: classes.dex */
    public static final class i extends h {
        private i(Uri uri, String str, f fVar, b bVar, List list, String str2, o6.q qVar, Object obj) {
            super(uri, str, fVar, bVar, list, str2, qVar, obj);
        }
    }

    /* loaded from: classes.dex */
    public static final class j implements r {

        /* renamed from: d  reason: collision with root package name */
        public static final j f3961d = new a().d();

        /* renamed from: e  reason: collision with root package name */
        private static final String f3962e = y4.q0.q0(0);

        /* renamed from: f  reason: collision with root package name */
        private static final String f3963f = y4.q0.q0(1);

        /* renamed from: g  reason: collision with root package name */
        private static final String f3964g = y4.q0.q0(2);

        /* renamed from: h  reason: collision with root package name */
        public static final r.a f3965h = new r.a() { // from class: b3.i2
            @Override // b3.r.a
            public final r fromBundle(Bundle bundle) {
                f2.j b10;
                b10 = f2.j.b(bundle);
                return b10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final Uri f3966a;

        /* renamed from: b  reason: collision with root package name */
        public final String f3967b;

        /* renamed from: c  reason: collision with root package name */
        public final Bundle f3968c;

        /* loaded from: classes.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private Uri f3969a;

            /* renamed from: b  reason: collision with root package name */
            private String f3970b;

            /* renamed from: c  reason: collision with root package name */
            private Bundle f3971c;

            public j d() {
                return new j(this);
            }

            public a e(Bundle bundle) {
                this.f3971c = bundle;
                return this;
            }

            public a f(Uri uri) {
                this.f3969a = uri;
                return this;
            }

            public a g(String str) {
                this.f3970b = str;
                return this;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ j b(Bundle bundle) {
            return new a().f((Uri) bundle.getParcelable(f3962e)).g(bundle.getString(f3963f)).e(bundle.getBundle(f3964g)).d();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof j)) {
                return false;
            }
            j jVar = (j) obj;
            if (y4.q0.c(this.f3966a, jVar.f3966a) && y4.q0.c(this.f3967b, jVar.f3967b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            Uri uri = this.f3966a;
            int i10 = 0;
            if (uri == null) {
                hashCode = 0;
            } else {
                hashCode = uri.hashCode();
            }
            int i11 = hashCode * 31;
            String str = this.f3967b;
            if (str != null) {
                i10 = str.hashCode();
            }
            return i11 + i10;
        }

        private j(a aVar) {
            this.f3966a = aVar.f3969a;
            this.f3967b = aVar.f3970b;
            this.f3968c = aVar.f3971c;
        }
    }

    /* loaded from: classes.dex */
    public static final class k extends l {
        private k(l.a aVar) {
            super(aVar);
        }
    }

    /* loaded from: classes.dex */
    public static class l {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f3972a;

        /* renamed from: b  reason: collision with root package name */
        public final String f3973b;

        /* renamed from: c  reason: collision with root package name */
        public final String f3974c;

        /* renamed from: d  reason: collision with root package name */
        public final int f3975d;

        /* renamed from: e  reason: collision with root package name */
        public final int f3976e;

        /* renamed from: f  reason: collision with root package name */
        public final String f3977f;

        /* renamed from: g  reason: collision with root package name */
        public final String f3978g;

        /* loaded from: classes.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private Uri f3979a;

            /* renamed from: b  reason: collision with root package name */
            private String f3980b;

            /* renamed from: c  reason: collision with root package name */
            private String f3981c;

            /* renamed from: d  reason: collision with root package name */
            private int f3982d;

            /* renamed from: e  reason: collision with root package name */
            private int f3983e;

            /* renamed from: f  reason: collision with root package name */
            private String f3984f;

            /* renamed from: g  reason: collision with root package name */
            private String f3985g;

            /* JADX INFO: Access modifiers changed from: private */
            public k i() {
                return new k(this);
            }

            private a(l lVar) {
                this.f3979a = lVar.f3972a;
                this.f3980b = lVar.f3973b;
                this.f3981c = lVar.f3974c;
                this.f3982d = lVar.f3975d;
                this.f3983e = lVar.f3976e;
                this.f3984f = lVar.f3977f;
                this.f3985g = lVar.f3978g;
            }
        }

        public a a() {
            return new a();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            if (this.f3972a.equals(lVar.f3972a) && y4.q0.c(this.f3973b, lVar.f3973b) && y4.q0.c(this.f3974c, lVar.f3974c) && this.f3975d == lVar.f3975d && this.f3976e == lVar.f3976e && y4.q0.c(this.f3977f, lVar.f3977f) && y4.q0.c(this.f3978g, lVar.f3978g)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4 = this.f3972a.hashCode() * 31;
            String str = this.f3973b;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = (hashCode4 + hashCode) * 31;
            String str2 = this.f3974c;
            if (str2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str2.hashCode();
            }
            int i12 = (((((i11 + hashCode2) * 31) + this.f3975d) * 31) + this.f3976e) * 31;
            String str3 = this.f3977f;
            if (str3 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str3.hashCode();
            }
            int i13 = (i12 + hashCode3) * 31;
            String str4 = this.f3978g;
            if (str4 != null) {
                i10 = str4.hashCode();
            }
            return i13 + i10;
        }

        private l(a aVar) {
            this.f3972a = aVar.f3979a;
            this.f3973b = aVar.f3980b;
            this.f3974c = aVar.f3981c;
            this.f3975d = aVar.f3982d;
            this.f3976e = aVar.f3983e;
            this.f3977f = aVar.f3984f;
            this.f3978g = aVar.f3985g;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static f2 c(Bundle bundle) {
        g gVar;
        k2 k2Var;
        e eVar;
        j jVar;
        String str = (String) y4.a.e(bundle.getString(f3873j, ""));
        Bundle bundle2 = bundle.getBundle(f3874k);
        if (bundle2 == null) {
            gVar = g.f3936f;
        } else {
            gVar = (g) g.f3942l.fromBundle(bundle2);
        }
        g gVar2 = gVar;
        Bundle bundle3 = bundle.getBundle(f3875l);
        if (bundle3 == null) {
            k2Var = k2.I;
        } else {
            k2Var = (k2) k2.F0.fromBundle(bundle3);
        }
        k2 k2Var2 = k2Var;
        Bundle bundle4 = bundle.getBundle(f3876m);
        if (bundle4 == null) {
            eVar = e.f3916m;
        } else {
            eVar = (e) d.f3905l.fromBundle(bundle4);
        }
        e eVar2 = eVar;
        Bundle bundle5 = bundle.getBundle(f3877n);
        if (bundle5 == null) {
            jVar = j.f3961d;
        } else {
            jVar = (j) j.f3965h.fromBundle(bundle5);
        }
        return new f2(str, eVar2, null, gVar2, k2Var2, jVar);
    }

    public static f2 d(Uri uri) {
        return new c().e(uri).a();
    }

    public c b() {
        return new c();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f2)) {
            return false;
        }
        f2 f2Var = (f2) obj;
        if (y4.q0.c(this.f3879a, f2Var.f3879a) && this.f3884f.equals(f2Var.f3884f) && y4.q0.c(this.f3880b, f2Var.f3880b) && y4.q0.c(this.f3882d, f2Var.f3882d) && y4.q0.c(this.f3883e, f2Var.f3883e) && y4.q0.c(this.f3886h, f2Var.f3886h)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = this.f3879a.hashCode() * 31;
        h hVar = this.f3880b;
        if (hVar != null) {
            i10 = hVar.hashCode();
        } else {
            i10 = 0;
        }
        return ((((((((hashCode + i10) * 31) + this.f3882d.hashCode()) * 31) + this.f3884f.hashCode()) * 31) + this.f3883e.hashCode()) * 31) + this.f3886h.hashCode();
    }

    private f2(String str, e eVar, i iVar, g gVar, k2 k2Var, j jVar) {
        this.f3879a = str;
        this.f3880b = iVar;
        this.f3881c = iVar;
        this.f3882d = gVar;
        this.f3883e = k2Var;
        this.f3884f = eVar;
        this.f3885g = eVar;
        this.f3886h = jVar;
    }
}
