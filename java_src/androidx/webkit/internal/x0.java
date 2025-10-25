package androidx.webkit.internal;

import java.lang.reflect.InvocationHandler;
import org.chromium.support_lib_boundary.ScriptHandlerBoundaryInterface;
/* loaded from: classes.dex */
public class x0 implements o1.g {

    /* renamed from: a  reason: collision with root package name */
    private final ScriptHandlerBoundaryInterface f3631a;

    private x0(ScriptHandlerBoundaryInterface scriptHandlerBoundaryInterface) {
        this.f3631a = scriptHandlerBoundaryInterface;
    }

    public static x0 a(InvocationHandler invocationHandler) {
        return new x0((ScriptHandlerBoundaryInterface) kf.a.a(ScriptHandlerBoundaryInterface.class, invocationHandler));
    }

    @Override // o1.g
    public void remove() {
        this.f3631a.remove();
    }
}
