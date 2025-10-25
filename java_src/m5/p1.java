package m5;

import android.app.Dialog;
/* loaded from: classes.dex */
final class p1 extends o0 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Dialog f25860a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ q1 f25861b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p1(q1 q1Var, Dialog dialog) {
        this.f25861b = q1Var;
        this.f25860a = dialog;
    }

    @Override // m5.o0
    public final void a() {
        this.f25861b.f25863b.o();
        if (this.f25860a.isShowing()) {
            this.f25860a.dismiss();
        }
    }
}
