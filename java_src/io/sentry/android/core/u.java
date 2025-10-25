package io.sentry.android.core;

import android.util.Log;
import io.sentry.ILogger;
import io.sentry.j5;
/* loaded from: classes2.dex */
public final class u implements ILogger {

    /* renamed from: a  reason: collision with root package name */
    private final String f22482a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f22483a;

        static {
            int[] iArr = new int[j5.values().length];
            f22483a = iArr;
            try {
                iArr[j5.INFO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22483a[j5.WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f22483a[j5.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f22483a[j5.FATAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f22483a[j5.DEBUG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public u() {
        this("Sentry");
    }

    private int e(j5 j5Var) {
        int i10 = a.f22483a[j5Var.ordinal()];
        if (i10 == 1) {
            return 4;
        }
        if (i10 != 2) {
            if (i10 != 4) {
                return 3;
            }
            return 7;
        }
        return 5;
    }

    @Override // io.sentry.ILogger
    public void a(j5 j5Var, Throwable th, String str, Object... objArr) {
        if (objArr != null && objArr.length != 0) {
            b(j5Var, String.format(str, objArr), th);
        } else {
            b(j5Var, str, th);
        }
    }

    @Override // io.sentry.ILogger
    public void b(j5 j5Var, String str, Throwable th) {
        int i10 = a.f22483a[j5Var.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        Log.d(this.f22482a, str, th);
                        return;
                    } else {
                        Log.wtf(this.f22482a, str, th);
                        return;
                    }
                }
                Log.e(this.f22482a, str, th);
                return;
            }
            Log.w(this.f22482a, str, th);
            return;
        }
        Log.i(this.f22482a, str, th);
    }

    @Override // io.sentry.ILogger
    public void c(j5 j5Var, String str, Object... objArr) {
        if (objArr != null && objArr.length != 0) {
            Log.println(e(j5Var), this.f22482a, String.format(str, objArr));
        } else {
            Log.println(e(j5Var), this.f22482a, str);
        }
    }

    @Override // io.sentry.ILogger
    public boolean d(j5 j5Var) {
        return true;
    }

    public u(String str) {
        this.f22482a = str;
    }
}
