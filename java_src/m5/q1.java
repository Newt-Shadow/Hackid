package m5;

import android.app.Dialog;
import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiActivity;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class q1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final o1 f25862a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ r1 f25863b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q1(r1 r1Var, o1 o1Var) {
        this.f25863b = r1Var;
        this.f25862a = o1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f25863b.f25866b) {
            return;
        }
        l5.b b10 = this.f25862a.b();
        if (b10.m()) {
            r1 r1Var = this.f25863b;
            r1Var.f25802a.startActivityForResult(GoogleApiActivity.a(r1Var.b(), (PendingIntent) n5.q.k(b10.l()), this.f25862a.a(), false), 1);
            return;
        }
        r1 r1Var2 = this.f25863b;
        if (r1Var2.f25869e.b(r1Var2.b(), b10.g(), null) != null) {
            r1 r1Var3 = this.f25863b;
            r1Var3.f25869e.v(r1Var3.b(), r1Var3.f25802a, b10.g(), 2, this.f25863b);
        } else if (b10.g() != 18) {
            this.f25863b.l(b10, this.f25862a.a());
        } else {
            r1 r1Var4 = this.f25863b;
            Dialog q10 = r1Var4.f25869e.q(r1Var4.b(), r1Var4);
            r1 r1Var5 = this.f25863b;
            r1Var5.f25869e.r(r1Var5.b().getApplicationContext(), new p1(this, q10));
        }
    }
}
