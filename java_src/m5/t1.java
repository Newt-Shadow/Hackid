package m5;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class t1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ h f25881a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f25882b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ u1 f25883c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t1(u1 u1Var, h hVar, String str) {
        this.f25881a = hVar;
        this.f25882b = str;
        this.f25883c = u1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3;
        u1 u1Var = this.f25883c;
        i10 = u1Var.f25895b;
        if (i10 > 0) {
            h hVar = this.f25881a;
            bundle = u1Var.f25896c;
            if (bundle != null) {
                String str = this.f25882b;
                bundle3 = u1Var.f25896c;
                bundle2 = bundle3.getBundle(str);
            } else {
                bundle2 = null;
            }
            hVar.f(bundle2);
        }
        i11 = this.f25883c.f25895b;
        if (i11 >= 2) {
            this.f25881a.j();
        }
        i12 = this.f25883c.f25895b;
        if (i12 >= 3) {
            this.f25881a.h();
        }
        i13 = this.f25883c.f25895b;
        if (i13 >= 4) {
            this.f25881a.k();
        }
        i14 = this.f25883c.f25895b;
        if (i14 >= 5) {
            this.f25881a.g();
        }
    }
}
