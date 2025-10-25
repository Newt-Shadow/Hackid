package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import android.util.Log;
/* loaded from: classes.dex */
public final class p5 extends a8 {

    /* renamed from: c  reason: collision with root package name */
    private char f7854c;

    /* renamed from: d  reason: collision with root package name */
    private long f7855d;

    /* renamed from: e  reason: collision with root package name */
    private String f7856e;

    /* renamed from: f  reason: collision with root package name */
    private final n5 f7857f;

    /* renamed from: g  reason: collision with root package name */
    private final n5 f7858g;

    /* renamed from: h  reason: collision with root package name */
    private final n5 f7859h;

    /* renamed from: i  reason: collision with root package name */
    private final n5 f7860i;

    /* renamed from: j  reason: collision with root package name */
    private final n5 f7861j;

    /* renamed from: k  reason: collision with root package name */
    private final n5 f7862k;

    /* renamed from: l  reason: collision with root package name */
    private final n5 f7863l;

    /* renamed from: m  reason: collision with root package name */
    private final n5 f7864m;

    /* renamed from: n  reason: collision with root package name */
    private final n5 f7865n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p5(w6 w6Var) {
        super(w6Var);
        this.f7854c = (char) 0;
        this.f7855d = -1L;
        this.f7857f = new n5(this, 6, false, false);
        this.f7858g = new n5(this, 6, true, false);
        this.f7859h = new n5(this, 6, false, true);
        this.f7860i = new n5(this, 5, false, false);
        this.f7861j = new n5(this, 5, true, false);
        this.f7862k = new n5(this, 5, false, true);
        this.f7863l = new n5(this, 4, false, false);
        this.f7864m = new n5(this, 3, false, false);
        this.f7865n = new n5(this, 2, false, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String A(boolean z10, String str, Object obj, Object obj2, Object obj3) {
        String B = B(z10, obj);
        String B2 = B(z10, obj2);
        String B3 = B(z10, obj3);
        StringBuilder sb2 = new StringBuilder();
        String str2 = "";
        if (str == null) {
            str = "";
        }
        if (!TextUtils.isEmpty(str)) {
            sb2.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(B)) {
            sb2.append(str2);
            sb2.append(B);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(B2)) {
            sb2.append(str2);
            sb2.append(B2);
        } else {
            str3 = str2;
        }
        if (!TextUtils.isEmpty(B3)) {
            sb2.append(str3);
            sb2.append(B3);
        }
        return sb2.toString();
    }

    static String B(boolean z10, Object obj) {
        String th;
        String className;
        String str = "";
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        int i10 = 0;
        if (obj instanceof Long) {
            if (!z10) {
                return obj.toString();
            }
            Long l10 = (Long) obj;
            if (Math.abs(l10.longValue()) < 100) {
                return obj.toString();
            }
            char charAt = obj.toString().charAt(0);
            String valueOf = String.valueOf(Math.abs(l10.longValue()));
            long round = Math.round(Math.pow(10.0d, valueOf.length() - 1));
            long round2 = Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
            int length = String.valueOf(round).length();
            if (charAt == '-') {
                str = "-";
            }
            StringBuilder sb2 = new StringBuilder(str.length() + length + 3 + str.length() + String.valueOf(round2).length());
            sb2.append(str);
            sb2.append(round);
            sb2.append("...");
            sb2.append(str);
            sb2.append(round2);
            return sb2.toString();
        } else if (obj instanceof Boolean) {
            return obj.toString();
        } else {
            if (obj instanceof Throwable) {
                Throwable th2 = (Throwable) obj;
                if (z10) {
                    th = th2.getClass().getName();
                } else {
                    th = th2.toString();
                }
                StringBuilder sb3 = new StringBuilder(th);
                String C = C(w6.class.getCanonicalName());
                StackTraceElement[] stackTrace = th2.getStackTrace();
                int length2 = stackTrace.length;
                while (true) {
                    if (i10 >= length2) {
                        break;
                    }
                    StackTraceElement stackTraceElement = stackTrace[i10];
                    if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && C(className).equals(C)) {
                        sb3.append(": ");
                        sb3.append(stackTraceElement);
                        break;
                    }
                    i10++;
                }
                return sb3.toString();
            } else if (obj instanceof o5) {
                return ((o5) obj).a();
            } else {
                if (z10) {
                    return "-";
                }
                return obj.toString();
            }
        }
    }

    static String C(String str) {
        int lastIndexOf;
        if (TextUtils.isEmpty(str) || (lastIndexOf = str.lastIndexOf(46)) == -1) {
            return "";
        }
        return str.substring(0, lastIndexOf);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object x(String str) {
        if (str == null) {
            return null;
        }
        return new o5(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ char D() {
        return this.f7854c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void E(char c10) {
        this.f7854c = c10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ long F() {
        return this.f7855d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void G(long j10) {
        this.f7855d = 133005L;
    }

    @Override // com.google.android.gms.measurement.internal.a8
    protected final boolean i() {
        return false;
    }

    public final n5 o() {
        return this.f7857f;
    }

    public final n5 p() {
        return this.f7858g;
    }

    public final n5 q() {
        return this.f7859h;
    }

    public final n5 r() {
        return this.f7860i;
    }

    public final n5 s() {
        return this.f7861j;
    }

    public final n5 t() {
        return this.f7862k;
    }

    public final n5 u() {
        return this.f7863l;
    }

    public final n5 v() {
        return this.f7864m;
    }

    public final n5 w() {
        return this.f7865n;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void y(int i10, boolean z10, boolean z11, String str, Object obj, Object obj2, Object obj3) {
        if (!z10 && Log.isLoggable(z(), i10)) {
            Log.println(i10, z(), A(false, str, obj, obj2, obj3));
        }
        if (!z11 && i10 >= 5) {
            n5.q.k(str);
            s6 A = this.f8322a.A();
            if (A == null) {
                Log.println(6, z(), "Scheduler not set. Not logging error/warn");
            } else if (!A.k()) {
                Log.println(6, z(), "Scheduler not initialized. Not logging error/warn");
            } else {
                if (i10 >= 9) {
                    i10 = 8;
                }
                A.t(new m5(this, i10, str, obj, obj2, obj3));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String z() {
        String str;
        synchronized (this) {
            if (this.f7856e == null) {
                this.f7856e = this.f8322a.w().u();
            }
            n5.q.k(this.f7856e);
            str = this.f7856e;
        }
        return str;
    }
}
