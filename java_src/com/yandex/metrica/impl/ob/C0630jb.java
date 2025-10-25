package com.yandex.metrica.impl.ob;

import io.flutter.plugins.firebase.crashlytics.Constants;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.jb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0630jb {

    /* renamed from: a  reason: collision with root package name */
    private final M0 f12714a;

    /* renamed from: com.yandex.metrica.impl.ob.jb$a */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f12715a;

        /* renamed from: b  reason: collision with root package name */
        private final int f12716b;

        /* renamed from: c  reason: collision with root package name */
        private final int f12717c;

        /* renamed from: d  reason: collision with root package name */
        private final String f12718d;

        public a() {
            this(false, 0, 0, null, 15);
        }

        public final String a() {
            return this.f12718d;
        }

        public final int b() {
            return this.f12716b;
        }

        public final int c() {
            return this.f12717c;
        }

        public final boolean d() {
            return this.f12715a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof a) {
                    a aVar = (a) obj;
                    return this.f12715a == aVar.f12715a && this.f12716b == aVar.f12716b && this.f12717c == aVar.f12717c && kotlin.jvm.internal.m.a(this.f12718d, aVar.f12718d);
                }
                return false;
            }
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int] */
        /* JADX WARN: Type inference failed for: r0v8 */
        /* JADX WARN: Type inference failed for: r0v9 */
        public int hashCode() {
            boolean z10 = this.f12715a;
            ?? r02 = z10;
            if (z10) {
                r02 = 1;
            }
            int i10 = ((((r02 * 31) + this.f12716b) * 31) + this.f12717c) * 31;
            String str = this.f12718d;
            return i10 + (str != null ? str.hashCode() : 0);
        }

        public String toString() {
            return "RequestReport(success=" + this.f12715a + ", httpStatus=" + this.f12716b + ", size=" + this.f12717c + ", failureReason=" + this.f12718d + ")";
        }

        public a(boolean z10, int i10, int i11, String str) {
            this.f12715a = z10;
            this.f12716b = i10;
            this.f12717c = i11;
            this.f12718d = str;
        }

        public /* synthetic */ a(boolean z10, int i10, int i11, String str, int i12) {
            this((i12 & 1) != 0 ? false : z10, (i12 & 2) != 0 ? 0 : i10, (i12 & 4) != 0 ? 0 : i11, null);
        }
    }

    public C0630jb(Uh uh, M0 m02) {
        this.f12714a = uh.e() ? m02 : null;
    }

    public final void a(a aVar) {
        String str;
        Map i10;
        Map<String, Object> q10;
        M0 m02 = this.f12714a;
        if (m02 != null) {
            xc.k[] kVarArr = new xc.k[3];
            if (aVar.d()) {
                str = "OK";
            } else {
                str = "FAILED";
            }
            kVarArr[0] = xc.q.a("status", str);
            kVarArr[1] = xc.q.a("http_status", Integer.valueOf(aVar.b()));
            kVarArr[2] = xc.q.a("size", Integer.valueOf(aVar.c()));
            i10 = yc.h0.i(kVarArr);
            String a10 = aVar.a();
            if (a10 != null) {
                i10.put(Constants.REASON, a10);
            }
            q10 = yc.h0.q(i10);
            m02.reportEvent("egress_status", q10);
        }
    }
}
