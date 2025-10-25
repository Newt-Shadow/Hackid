package m5;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public abstract class r1 extends h implements DialogInterface.OnCancelListener {

    /* renamed from: b  reason: collision with root package name */
    protected volatile boolean f25866b;

    /* renamed from: c  reason: collision with root package name */
    protected final AtomicReference f25867c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f25868d;

    /* renamed from: e  reason: collision with root package name */
    protected final l5.f f25869e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r1(i iVar, l5.f fVar) {
        super(iVar);
        this.f25867c = new AtomicReference(null);
        this.f25868d = new a6.h(Looper.getMainLooper());
        this.f25869e = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(l5.b bVar, int i10) {
        this.f25867c.set(null);
        m(bVar, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o() {
        this.f25867c.set(null);
        n();
    }

    private static final int p(o1 o1Var) {
        if (o1Var == null) {
            return -1;
        }
        return o1Var.a();
    }

    @Override // m5.h
    public final void e(int i10, int i11, Intent intent) {
        o1 o1Var = (o1) this.f25867c.get();
        if (i10 != 1) {
            if (i10 == 2) {
                int g10 = this.f25869e.g(b());
                if (g10 == 0) {
                    o();
                    return;
                } else if (o1Var != null) {
                    if (o1Var.b().g() == 18 && g10 == 18) {
                        return;
                    }
                } else {
                    return;
                }
            }
        } else if (i11 == -1) {
            o();
            return;
        } else if (i11 == 0) {
            if (o1Var != null) {
                int i12 = 13;
                if (intent != null) {
                    i12 = intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13);
                }
                l(new l5.b(i12, null, o1Var.b().toString()), p(o1Var));
                return;
            }
            return;
        }
        if (o1Var != null) {
            l(o1Var.b(), o1Var.a());
        }
    }

    @Override // m5.h
    public final void f(Bundle bundle) {
        o1 o1Var;
        super.f(bundle);
        if (bundle != null) {
            AtomicReference atomicReference = this.f25867c;
            if (bundle.getBoolean("resolving_error", false)) {
                o1Var = new o1(new l5.b(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1));
            } else {
                o1Var = null;
            }
            atomicReference.set(o1Var);
        }
    }

    @Override // m5.h
    public final void i(Bundle bundle) {
        super.i(bundle);
        o1 o1Var = (o1) this.f25867c.get();
        if (o1Var == null) {
            return;
        }
        bundle.putBoolean("resolving_error", true);
        bundle.putInt("failed_client_id", o1Var.a());
        bundle.putInt("failed_status", o1Var.b().g());
        bundle.putParcelable("failed_resolution", o1Var.b().l());
    }

    @Override // m5.h
    public void j() {
        super.j();
        this.f25866b = true;
    }

    @Override // m5.h
    public void k() {
        super.k();
        this.f25866b = false;
    }

    protected abstract void m(l5.b bVar, int i10);

    protected abstract void n();

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        l(new l5.b(13, null), p((o1) this.f25867c.get()));
    }

    public final void s(l5.b bVar, int i10) {
        AtomicReference atomicReference;
        o1 o1Var = new o1(bVar, i10);
        do {
            atomicReference = this.f25867c;
            if (o1.c.a(atomicReference, null, o1Var)) {
                this.f25868d.post(new q1(this, o1Var));
                return;
            }
        } while (atomicReference.get() == null);
    }
}
