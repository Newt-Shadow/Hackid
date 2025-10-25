package androidx.webkit.internal;

import android.webkit.WebViewRenderProcess;
import androidx.webkit.internal.a;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.WebViewRendererBoundaryInterface;
/* loaded from: classes.dex */
public class t1 extends o1.u {

    /* renamed from: c  reason: collision with root package name */
    private static final WeakHashMap f3623c = new WeakHashMap();

    /* renamed from: a  reason: collision with root package name */
    private WebViewRendererBoundaryInterface f3624a;

    /* renamed from: b  reason: collision with root package name */
    private WeakReference f3625b;

    /* loaded from: classes.dex */
    class a implements Callable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WebViewRendererBoundaryInterface f3626a;

        a(WebViewRendererBoundaryInterface webViewRendererBoundaryInterface) {
            this.f3626a = webViewRendererBoundaryInterface;
        }

        @Override // java.util.concurrent.Callable
        public Object call() {
            return new t1(this.f3626a);
        }
    }

    public t1(WebViewRendererBoundaryInterface webViewRendererBoundaryInterface) {
        this.f3624a = webViewRendererBoundaryInterface;
    }

    public static t1 b(WebViewRenderProcess webViewRenderProcess) {
        WeakHashMap weakHashMap = f3623c;
        t1 t1Var = (t1) weakHashMap.get(webViewRenderProcess);
        if (t1Var != null) {
            return t1Var;
        }
        t1 t1Var2 = new t1(webViewRenderProcess);
        weakHashMap.put(webViewRenderProcess, t1Var2);
        return t1Var2;
    }

    public static t1 c(InvocationHandler invocationHandler) {
        WebViewRendererBoundaryInterface webViewRendererBoundaryInterface = (WebViewRendererBoundaryInterface) kf.a.a(WebViewRendererBoundaryInterface.class, invocationHandler);
        return (t1) webViewRendererBoundaryInterface.getOrCreatePeer(new a(webViewRendererBoundaryInterface));
    }

    @Override // o1.u
    public boolean a() {
        a.h hVar = l1.K;
        if (hVar.c()) {
            WebViewRenderProcess a10 = s1.a(this.f3625b.get());
            if (a10 != null && k0.g(a10)) {
                return true;
            }
            return false;
        } else if (hVar.d()) {
            return this.f3624a.terminate();
        } else {
            throw l1.a();
        }
    }

    public t1(WebViewRenderProcess webViewRenderProcess) {
        this.f3625b = new WeakReference(webViewRenderProcess);
    }
}
