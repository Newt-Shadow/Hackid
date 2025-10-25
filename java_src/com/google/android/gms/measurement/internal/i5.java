package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public final class i5 {

    /* renamed from: b  reason: collision with root package name */
    protected static final AtomicReference f7627b = new AtomicReference();

    /* renamed from: c  reason: collision with root package name */
    protected static final AtomicReference f7628c = new AtomicReference();

    /* renamed from: d  reason: collision with root package name */
    protected static final AtomicReference f7629d = new AtomicReference();

    /* renamed from: a  reason: collision with root package name */
    private final i6.m f7630a;

    public i5(i6.m mVar) {
        this.f7630a = mVar;
    }

    private static final String g(String str, String[] strArr, String[] strArr2, AtomicReference atomicReference) {
        boolean z10;
        String str2;
        n5.q.k(strArr);
        n5.q.k(strArr2);
        n5.q.k(atomicReference);
        if (strArr.length == strArr2.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        n5.q.a(z10);
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (Objects.equals(str, strArr[i10])) {
                synchronized (atomicReference) {
                    String[] strArr3 = (String[]) atomicReference.get();
                    if (strArr3 == null) {
                        strArr3 = new String[strArr2.length];
                        atomicReference.set(strArr3);
                    }
                    str2 = strArr3[i10];
                    if (str2 == null) {
                        str2 = strArr2[i10] + "(" + strArr[i10] + ")";
                        strArr3[i10] = str2;
                    }
                }
                return str2;
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String a(String str) {
        if (str == null) {
            return null;
        }
        if (!this.f7630a.zza()) {
            return str;
        }
        return g(str, i6.t.f17314c, i6.t.f17312a, f7627b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String b(String str) {
        if (str == null) {
            return null;
        }
        if (!this.f7630a.zza()) {
            return str;
        }
        return g(str, i6.u.f17317b, i6.u.f17316a, f7628c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String c(String str) {
        if (str == null) {
            return null;
        }
        if (!this.f7630a.zza()) {
            return str;
        }
        if (str.startsWith("_exp_")) {
            return "experiment_id(" + str + ")";
        }
        return g(str, i6.v.f17321b, i6.v.f17320a, f7629d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String d(g0 g0Var) {
        String e10;
        i6.m mVar = this.f7630a;
        if (!mVar.zza()) {
            return g0Var.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("origin=");
        sb2.append(g0Var.f7553c);
        sb2.append(",name=");
        sb2.append(a(g0Var.f7551a));
        sb2.append(",params=");
        e0 e0Var = g0Var.f7552b;
        if (e0Var == null) {
            e10 = null;
        } else if (!mVar.zza()) {
            e10 = e0Var.toString();
        } else {
            e10 = e(e0Var.o());
        }
        sb2.append(e10);
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String e(Bundle bundle) {
        String valueOf;
        if (bundle == null) {
            return null;
        }
        if (!this.f7630a.zza()) {
            return bundle.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sb2.length() != 8) {
                sb2.append(", ");
            }
            sb2.append(b(str));
            sb2.append("=");
            Object obj = bundle.get(str);
            if (obj instanceof Bundle) {
                valueOf = f(new Object[]{obj});
            } else if (obj instanceof Object[]) {
                valueOf = f((Object[]) obj);
            } else if (obj instanceof ArrayList) {
                valueOf = f(((ArrayList) obj).toArray());
            } else {
                valueOf = String.valueOf(obj);
            }
            sb2.append(valueOf);
        }
        sb2.append("}]");
        return sb2.toString();
    }

    protected final String f(Object[] objArr) {
        String valueOf;
        if (objArr == null) {
            return "[]";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        for (Object obj : objArr) {
            if (obj instanceof Bundle) {
                valueOf = e((Bundle) obj);
            } else {
                valueOf = String.valueOf(obj);
            }
            if (valueOf != null) {
                if (sb2.length() != 1) {
                    sb2.append(", ");
                }
                sb2.append(valueOf);
            }
        }
        sb2.append("]");
        return sb2.toString();
    }
}
