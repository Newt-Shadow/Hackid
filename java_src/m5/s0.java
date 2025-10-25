package m5;

import android.os.SystemClock;
import com.google.android.gms.common.api.Status;
import com.pichillilorenzo.flutter_inappwebview_android.chrome_custom_tabs.ChromeCustomTabsActivity;
import m6.Task;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class s0 implements m6.f {

    /* renamed from: a  reason: collision with root package name */
    private final e f25870a;

    /* renamed from: b  reason: collision with root package name */
    private final int f25871b;

    /* renamed from: c  reason: collision with root package name */
    private final b f25872c;

    /* renamed from: d  reason: collision with root package name */
    private final long f25873d;

    /* renamed from: e  reason: collision with root package name */
    private final long f25874e;

    s0(e eVar, int i10, b bVar, long j10, long j11, String str, String str2) {
        this.f25870a = eVar;
        this.f25871b = i10;
        this.f25872c = bVar;
        this.f25873d = j10;
        this.f25874e = j11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static s0 a(e eVar, int i10, b bVar) {
        boolean z10;
        long j10;
        long j11;
        if (eVar.e()) {
            n5.s a10 = n5.r.b().a();
            if (a10 != null) {
                if (a10.l()) {
                    z10 = a10.m();
                    i0 t10 = eVar.t(bVar);
                    if (t10 != null) {
                        if (t10.v() instanceof n5.c) {
                            n5.c cVar = (n5.c) t10.v();
                            if (cVar.J() && !cVar.e()) {
                                n5.f b10 = b(t10, cVar, i10);
                                if (b10 != null) {
                                    t10.G();
                                    z10 = b10.n();
                                } else {
                                    return null;
                                }
                            }
                        } else {
                            return null;
                        }
                    }
                } else {
                    return null;
                }
            } else {
                z10 = true;
            }
            if (z10) {
                j10 = System.currentTimeMillis();
            } else {
                j10 = 0;
            }
            if (z10) {
                j11 = SystemClock.elapsedRealtime();
            } else {
                j11 = 0;
            }
            return new s0(eVar, i10, bVar, j10, j11, null, null);
        }
        return null;
    }

    private static n5.f b(i0 i0Var, n5.c cVar, int i10) {
        int[] i11;
        int[] l10;
        n5.f H = cVar.H();
        if (H == null || !H.m() || ((i11 = H.i()) != null ? !com.google.android.gms.common.util.b.a(i11, i10) : !((l10 = H.l()) == null || !com.google.android.gms.common.util.b.a(l10, i10))) || i0Var.t() >= H.g()) {
            return null;
        }
        return H;
    }

    @Override // m6.f
    public final void onComplete(Task task) {
        i0 t10;
        boolean z10;
        int i10;
        int i11;
        int i12;
        int g10;
        long j10;
        long j11;
        int i13;
        if (this.f25870a.e()) {
            n5.s a10 = n5.r.b().a();
            if ((a10 == null || a10.l()) && (t10 = this.f25870a.t(this.f25872c)) != null && (t10.v() instanceof n5.c)) {
                n5.c cVar = (n5.c) t10.v();
                boolean z11 = true;
                int i14 = 0;
                if (this.f25873d > 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                int z12 = cVar.z();
                int i15 = 100;
                if (a10 != null) {
                    z10 &= a10.m();
                    int g11 = a10.g();
                    int i16 = a10.i();
                    i10 = a10.n();
                    if (cVar.J() && !cVar.e()) {
                        n5.f b10 = b(t10, cVar, this.f25871b);
                        if (b10 != null) {
                            if (!b10.n() || this.f25873d <= 0) {
                                z11 = false;
                            }
                            i16 = b10.g();
                            z10 = z11;
                        } else {
                            return;
                        }
                    }
                    i12 = g11;
                    i11 = i16;
                } else {
                    i10 = 0;
                    i11 = 100;
                    i12 = 5000;
                }
                e eVar = this.f25870a;
                if (task.p()) {
                    g10 = 0;
                } else {
                    if (!task.n()) {
                        Exception k10 = task.k();
                        if (k10 instanceof com.google.android.gms.common.api.b) {
                            Status status = ((com.google.android.gms.common.api.b) k10).getStatus();
                            i15 = status.i();
                            l5.b g12 = status.g();
                            if (g12 != null) {
                                g10 = g12.g();
                                i14 = i15;
                            }
                        } else {
                            i14 = ChromeCustomTabsActivity.NO_HISTORY_CHROME_CUSTOM_TAB_REQUEST_CODE;
                            g10 = -1;
                        }
                    }
                    i14 = i15;
                    g10 = -1;
                }
                if (z10) {
                    long j12 = this.f25873d;
                    long j13 = this.f25874e;
                    long currentTimeMillis = System.currentTimeMillis();
                    i13 = (int) (SystemClock.elapsedRealtime() - j13);
                    j11 = currentTimeMillis;
                    j10 = j12;
                } else {
                    j10 = 0;
                    j11 = 0;
                    i13 = -1;
                }
                eVar.E(new n5.n(this.f25871b, i14, g10, j10, j11, null, null, z12, i13), i10, i12, i11);
            }
        }
    }
}
