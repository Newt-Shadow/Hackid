package b3;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import b3.r;
import java.io.IOException;
/* loaded from: classes.dex */
public final class a0 extends i3 {

    /* renamed from: p  reason: collision with root package name */
    public static final r.a f3760p = new r.a() { // from class: b3.z
        @Override // b3.r.a
        public final r fromBundle(Bundle bundle) {
            return a0.d(bundle);
        }
    };

    /* renamed from: q  reason: collision with root package name */
    private static final String f3761q = y4.q0.q0(1001);

    /* renamed from: r  reason: collision with root package name */
    private static final String f3762r = y4.q0.q0(1002);

    /* renamed from: s  reason: collision with root package name */
    private static final String f3763s = y4.q0.q0(1003);

    /* renamed from: t  reason: collision with root package name */
    private static final String f3764t = y4.q0.q0(1004);

    /* renamed from: u  reason: collision with root package name */
    private static final String f3765u = y4.q0.q0(1005);

    /* renamed from: v  reason: collision with root package name */
    private static final String f3766v = y4.q0.q0(1006);

    /* renamed from: i  reason: collision with root package name */
    public final int f3767i;

    /* renamed from: j  reason: collision with root package name */
    public final String f3768j;

    /* renamed from: k  reason: collision with root package name */
    public final int f3769k;

    /* renamed from: l  reason: collision with root package name */
    public final x1 f3770l;

    /* renamed from: m  reason: collision with root package name */
    public final int f3771m;

    /* renamed from: n  reason: collision with root package name */
    public final d4.s f3772n;

    /* renamed from: o  reason: collision with root package name */
    final boolean f3773o;

    private a0(int i10, Throwable th, int i11) {
        this(i10, th, null, i11, null, -1, null, 4, false);
    }

    public static /* synthetic */ a0 d(Bundle bundle) {
        return new a0(bundle);
    }

    public static a0 f(Throwable th, String str, int i10, x1 x1Var, int i11, boolean z10, int i12) {
        int i13;
        if (x1Var == null) {
            i13 = 4;
        } else {
            i13 = i11;
        }
        return new a0(1, th, null, i12, str, i10, x1Var, i13, z10);
    }

    public static a0 g(IOException iOException, int i10) {
        return new a0(0, iOException, i10);
    }

    public static a0 h(RuntimeException runtimeException) {
        return i(runtimeException, 1000);
    }

    public static a0 i(RuntimeException runtimeException, int i10) {
        return new a0(2, runtimeException, i10);
    }

    private static String j(int i10, String str, String str2, int i11, x1 x1Var, int i12) {
        String str3;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 3) {
                    str3 = "Unexpected runtime error";
                } else {
                    str3 = "Remote error";
                }
            } else {
                str3 = str2 + " error, index=" + i11 + ", format=" + x1Var + ", format_supported=" + y4.q0.W(i12);
            }
        } else {
            str3 = "Source error";
        }
        if (!TextUtils.isEmpty(str)) {
            return str3 + ": " + str;
        }
        return str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0 e(d4.s sVar) {
        return new a0((String) y4.q0.j(getMessage()), getCause(), this.f4099a, this.f3767i, this.f3768j, this.f3769k, this.f3770l, this.f3771m, sVar, this.f4100b, this.f3773o);
    }

    private a0(int i10, Throwable th, String str, int i11, String str2, int i12, x1 x1Var, int i13, boolean z10) {
        this(j(i10, str, str2, i12, x1Var, i13), th, i11, i10, str2, i12, x1Var, i13, null, SystemClock.elapsedRealtime(), z10);
    }

    private a0(Bundle bundle) {
        super(bundle);
        this.f3767i = bundle.getInt(f3761q, 2);
        this.f3768j = bundle.getString(f3762r);
        this.f3769k = bundle.getInt(f3763s, -1);
        Bundle bundle2 = bundle.getBundle(f3764t);
        this.f3770l = bundle2 == null ? null : (x1) x1.E0.fromBundle(bundle2);
        this.f3771m = bundle.getInt(f3765u, 4);
        this.f3773o = bundle.getBoolean(f3766v, false);
        this.f3772n = null;
    }

    private a0(String str, Throwable th, int i10, int i11, String str2, int i12, x1 x1Var, int i13, d4.s sVar, long j10, boolean z10) {
        super(str, th, i10, j10);
        boolean z11 = false;
        y4.a.a(!z10 || i11 == 1);
        y4.a.a((th != null || i11 == 3) ? true : z11);
        this.f3767i = i11;
        this.f3768j = str2;
        this.f3769k = i12;
        this.f3770l = x1Var;
        this.f3771m = i13;
        this.f3772n = sVar;
        this.f3773o = z10;
    }
}
