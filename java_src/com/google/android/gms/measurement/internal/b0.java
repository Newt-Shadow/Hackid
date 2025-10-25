package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class b0 {

    /* renamed from: a  reason: collision with root package name */
    final String f7264a;

    /* renamed from: b  reason: collision with root package name */
    final String f7265b;

    /* renamed from: c  reason: collision with root package name */
    final String f7266c;

    /* renamed from: d  reason: collision with root package name */
    final long f7267d;

    /* renamed from: e  reason: collision with root package name */
    final long f7268e;

    /* renamed from: f  reason: collision with root package name */
    final e0 f7269f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(w6 w6Var, String str, String str2, String str3, long j10, long j11, Bundle bundle) {
        e0 e0Var;
        n5.q.e(str2);
        n5.q.e(str3);
        this.f7264a = str2;
        this.f7265b = str3;
        this.f7266c = true == TextUtils.isEmpty(str) ? null : str;
        this.f7267d = j10;
        this.f7268e = j11;
        if (j11 != 0 && j11 > j10) {
            w6Var.a().r().b("Event created with reverse previous/current timestamps. appId", p5.x(str2));
        }
        if (bundle != null && !bundle.isEmpty()) {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    w6Var.a().o().a("Param name can't be null");
                    it.remove();
                } else {
                    Object s10 = w6Var.C().s(next, bundle2.get(next));
                    if (s10 == null) {
                        w6Var.a().r().b("Param value can't be null", w6Var.D().b(next));
                        it.remove();
                    } else {
                        w6Var.C().A(bundle2, next, s10);
                    }
                }
            }
            e0Var = new e0(bundle2);
        } else {
            e0Var = new e0(new Bundle());
        }
        this.f7269f = e0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final b0 a(w6 w6Var, long j10) {
        return new b0(w6Var, this.f7266c, this.f7264a, this.f7265b, this.f7267d, j10, this.f7269f);
    }

    public final String toString() {
        String obj = this.f7269f.toString();
        String str = this.f7264a;
        int length = String.valueOf(str).length();
        String str2 = this.f7265b;
        StringBuilder sb2 = new StringBuilder(length + 22 + String.valueOf(str2).length() + 10 + obj.length() + 1);
        sb2.append("Event{appId='");
        sb2.append(str);
        sb2.append("', name='");
        sb2.append(str2);
        sb2.append("', params=");
        sb2.append(obj);
        sb2.append("}");
        return sb2.toString();
    }

    private b0(w6 w6Var, String str, String str2, String str3, long j10, long j11, e0 e0Var) {
        n5.q.e(str2);
        n5.q.e(str3);
        n5.q.k(e0Var);
        this.f7264a = str2;
        this.f7265b = str3;
        this.f7266c = true == TextUtils.isEmpty(str) ? null : str;
        this.f7267d = j10;
        this.f7268e = j11;
        if (j11 != 0 && j11 > j10) {
            w6Var.a().r().c("Event created with reverse previous/current timestamps. appId, name", p5.x(str2), p5.x(str3));
        }
        this.f7269f = e0Var;
    }
}
