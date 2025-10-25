package androidx.webkit.internal;

import android.webkit.SafeBrowsingResponse;
import androidx.webkit.internal.a;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import org.chromium.support_lib_boundary.SafeBrowsingResponseBoundaryInterface;
/* loaded from: classes.dex */
public class w0 extends o1.f {

    /* renamed from: a  reason: collision with root package name */
    private SafeBrowsingResponse f3629a;

    /* renamed from: b  reason: collision with root package name */
    private SafeBrowsingResponseBoundaryInterface f3630b;

    public w0(InvocationHandler invocationHandler) {
        this.f3630b = (SafeBrowsingResponseBoundaryInterface) kf.a.a(SafeBrowsingResponseBoundaryInterface.class, invocationHandler);
    }

    private SafeBrowsingResponseBoundaryInterface d() {
        if (this.f3630b == null) {
            this.f3630b = (SafeBrowsingResponseBoundaryInterface) kf.a.a(SafeBrowsingResponseBoundaryInterface.class, m1.c().c(this.f3629a));
        }
        return this.f3630b;
    }

    private SafeBrowsingResponse e() {
        if (this.f3629a == null) {
            this.f3629a = m1.c().b(Proxy.getInvocationHandler(this.f3630b));
        }
        return this.f3629a;
    }

    @Override // o1.f
    public void a(boolean z10) {
        a.f fVar = l1.f3597x;
        if (fVar.c()) {
            p.a(e(), z10);
        } else if (fVar.d()) {
            d().backToSafety(z10);
        } else {
            throw l1.a();
        }
    }

    @Override // o1.f
    public void b(boolean z10) {
        a.f fVar = l1.f3598y;
        if (fVar.c()) {
            p.c(e(), z10);
        } else if (fVar.d()) {
            d().proceed(z10);
        } else {
            throw l1.a();
        }
    }

    @Override // o1.f
    public void c(boolean z10) {
        a.f fVar = l1.f3599z;
        if (fVar.c()) {
            p.e(e(), z10);
        } else if (fVar.d()) {
            d().showInterstitial(z10);
        } else {
            throw l1.a();
        }
    }

    public w0(SafeBrowsingResponse safeBrowsingResponse) {
        this.f3629a = safeBrowsingResponse;
    }
}
