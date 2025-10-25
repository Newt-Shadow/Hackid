package com.google.android.gms.measurement.internal;

import android.util.Log;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class m5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f7745a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f7746b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Object f7747c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Object f7748d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Object f7749e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ p5 f7750f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m5(p5 p5Var, int i10, String str, Object obj, Object obj2, Object obj3) {
        this.f7745a = i10;
        this.f7746b = str;
        this.f7747c = obj;
        this.f7748d = obj2;
        this.f7749e = obj3;
        Objects.requireNonNull(p5Var);
        this.f7750f = p5Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        p5 p5Var = this.f7750f;
        d6 x10 = p5Var.f8322a.x();
        if (x10.k()) {
            if (p5Var.D() == 0) {
                w6 w6Var = p5Var.f8322a;
                if (w6Var.w().B()) {
                    w6Var.c();
                    p5Var.E('C');
                } else {
                    w6Var.c();
                    p5Var.E('c');
                }
            }
            if (p5Var.F() < 0) {
                p5Var.f8322a.w().A();
                p5Var.G(133005L);
            }
            int i10 = this.f7745a;
            char D = p5Var.D();
            long F = p5Var.F();
            String str = this.f7746b;
            Object obj = this.f7747c;
            Object obj2 = this.f7748d;
            Object obj3 = this.f7749e;
            char charAt = "01VDIWEA?".charAt(i10);
            String A = p5.A(true, str, obj, obj2, obj3);
            int length = String.valueOf(charAt).length();
            StringBuilder sb2 = new StringBuilder(length + 1 + String.valueOf(D).length() + String.valueOf(F).length() + 1 + A.length());
            sb2.append("2");
            sb2.append(charAt);
            sb2.append(D);
            sb2.append(F);
            sb2.append(":");
            sb2.append(A);
            String sb3 = sb2.toString();
            if (sb3.length() > 1024) {
                sb3 = str.substring(0, 1024);
            }
            b6 b6Var = x10.f7416e;
            if (b6Var != null) {
                b6Var.a(sb3, 1L);
                return;
            }
            return;
        }
        Log.println(6, p5Var.z(), "Persisted config not initialized. Not logging error/warn");
    }
}
