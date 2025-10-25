package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.yf;
import java.util.List;
import java.util.Objects;
/* loaded from: classes.dex */
final class i6 implements yf {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ o6 f7631a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i6(o6 o6Var) {
        Objects.requireNonNull(o6Var);
        this.f7631a = o6Var;
    }

    @Override // com.google.android.gms.internal.measurement.yf
    public final void a(int i10, String str, List list, boolean z10, boolean z11) {
        n5 v10;
        int i11 = i10 - 1;
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        v10 = this.f7631a.f8322a.a().u();
                    } else if (z10) {
                        v10 = this.f7631a.f8322a.a().s();
                    } else if (!z11) {
                        v10 = this.f7631a.f8322a.a().t();
                    } else {
                        v10 = this.f7631a.f8322a.a().r();
                    }
                } else {
                    v10 = this.f7631a.f8322a.a().w();
                }
            } else if (z10) {
                v10 = this.f7631a.f8322a.a().p();
            } else if (!z11) {
                v10 = this.f7631a.f8322a.a().q();
            } else {
                v10 = this.f7631a.f8322a.a().o();
            }
        } else {
            v10 = this.f7631a.f8322a.a().v();
        }
        int size = list.size();
        if (size != 1) {
            if (size != 2) {
                if (size != 3) {
                    v10.a(str);
                    return;
                } else {
                    v10.d(str, list.get(0), list.get(1), list.get(2));
                    return;
                }
            }
            v10.c(str, list.get(0), list.get(1));
            return;
        }
        v10.b(str, list.get(0));
    }
}
