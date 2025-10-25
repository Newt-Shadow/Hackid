package com.google.android.gms.auth.api.signin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.e;
import com.google.android.gms.dynamite.DynamiteModule;
import i5.q;
import l5.k;
import m5.s;
import m6.Task;
import n5.p;
/* loaded from: classes.dex */
public class b extends com.google.android.gms.common.api.e {

    /* renamed from: k  reason: collision with root package name */
    private static final f f5845k = new f(null);

    /* renamed from: l  reason: collision with root package name */
    static int f5846l = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Activity activity, GoogleSignInOptions googleSignInOptions) {
        super(activity, e5.a.f15349b, (a.d) googleSignInOptions, (s) new m5.a());
    }

    private final synchronized int D() {
        int i10;
        i10 = f5846l;
        if (i10 == 1) {
            Context r10 = r();
            l5.f m10 = l5.f.m();
            int h10 = m10.h(r10, k.f25303a);
            if (h10 == 0) {
                i10 = 4;
                f5846l = 4;
            } else if (m10.b(r10, h10, null) == null && DynamiteModule.a(r10, "com.google.android.gms.auth.api.fallback") != 0) {
                i10 = 3;
                f5846l = 3;
            } else {
                i10 = 2;
                f5846l = 2;
            }
        }
        return i10;
    }

    public Task A() {
        boolean z10;
        com.google.android.gms.common.api.f e10 = e();
        Context r10 = r();
        if (D() == 3) {
            z10 = true;
        } else {
            z10 = false;
        }
        return p.b(q.f(e10, r10, z10));
    }

    public Task B() {
        boolean z10;
        com.google.android.gms.common.api.f e10 = e();
        Context r10 = r();
        if (D() == 3) {
            z10 = true;
        } else {
            z10 = false;
        }
        return p.b(q.g(e10, r10, z10));
    }

    public Task C() {
        boolean z10;
        com.google.android.gms.common.api.f e10 = e();
        Context r10 = r();
        GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) q();
        if (D() == 3) {
            z10 = true;
        } else {
            z10 = false;
        }
        return p.a(q.e(e10, r10, googleSignInOptions, z10), f5845k);
    }

    public Intent z() {
        Context r10 = r();
        int D = D();
        int i10 = D - 1;
        if (D != 0) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return q.b(r10, (GoogleSignInOptions) q());
                }
                return q.c(r10, (GoogleSignInOptions) q());
            }
            return q.a(r10, (GoogleSignInOptions) q());
        }
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, GoogleSignInOptions googleSignInOptions) {
        super(context, e5.a.f15349b, googleSignInOptions, new e.a.C0099a().c(new m5.a()).a());
    }
}
