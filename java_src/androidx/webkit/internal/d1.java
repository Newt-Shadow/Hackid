package androidx.webkit.internal;

import java.lang.reflect.InvocationHandler;
import java.util.Objects;
import org.chromium.support_lib_boundary.WebMessageBoundaryInterface;
import org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface;
/* loaded from: classes.dex */
public class d1 implements WebMessageBoundaryInterface {

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f3555b = {"WEB_MESSAGE_ARRAY_BUFFER"};

    /* renamed from: a  reason: collision with root package name */
    private o1.m f3556a;

    public d1(o1.m mVar) {
        this.f3556a = mVar;
    }

    public static boolean a(int i10) {
        if (i10 == 0) {
            return true;
        }
        if (i10 == 1 && l1.C.d()) {
            return true;
        }
        return false;
    }

    private static o1.n[] b(InvocationHandler[] invocationHandlerArr) {
        o1.n[] nVarArr = new o1.n[invocationHandlerArr.length];
        for (int i10 = 0; i10 < invocationHandlerArr.length; i10++) {
            nVarArr[i10] = new h1(invocationHandlerArr[i10]);
        }
        return nVarArr;
    }

    public static o1.m c(WebMessageBoundaryInterface webMessageBoundaryInterface) {
        o1.n[] b10 = b(webMessageBoundaryInterface.getPorts());
        if (l1.C.d()) {
            WebMessagePayloadBoundaryInterface webMessagePayloadBoundaryInterface = (WebMessagePayloadBoundaryInterface) kf.a.a(WebMessagePayloadBoundaryInterface.class, webMessageBoundaryInterface.getMessagePayload());
            int type = webMessagePayloadBoundaryInterface.getType();
            if (type != 0) {
                if (type != 1) {
                    return null;
                }
                return new o1.m(webMessagePayloadBoundaryInterface.getAsArrayBuffer(), b10);
            }
            return new o1.m(webMessagePayloadBoundaryInterface.getAsString(), b10);
        }
        return new o1.m(webMessageBoundaryInterface.getData(), b10);
    }

    @Override // org.chromium.support_lib_boundary.WebMessageBoundaryInterface
    public String getData() {
        return this.f3556a.c();
    }

    @Override // org.chromium.support_lib_boundary.WebMessageBoundaryInterface
    public InvocationHandler getMessagePayload() {
        g1 g1Var;
        int e10 = this.f3556a.e();
        if (e10 != 0) {
            if (e10 == 1) {
                byte[] b10 = this.f3556a.b();
                Objects.requireNonNull(b10);
                g1Var = new g1(b10);
            } else {
                throw new IllegalStateException("Unknown web message payload type: " + this.f3556a.e());
            }
        } else {
            g1Var = new g1(this.f3556a.c());
        }
        return kf.a.c(g1Var);
    }

    @Override // org.chromium.support_lib_boundary.WebMessageBoundaryInterface
    public InvocationHandler[] getPorts() {
        o1.n[] d10 = this.f3556a.d();
        if (d10 == null) {
            return null;
        }
        InvocationHandler[] invocationHandlerArr = new InvocationHandler[d10.length];
        for (int i10 = 0; i10 < d10.length; i10++) {
            invocationHandlerArr[i10] = d10[i10].c();
        }
        return invocationHandlerArr;
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    public String[] getSupportedFeatures() {
        return f3555b;
    }
}
