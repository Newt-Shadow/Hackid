package oc;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class a implements MethodChannel.MethodCallHandler {

    /* renamed from: a  reason: collision with root package name */
    private final d f27547a;

    /* renamed from: b  reason: collision with root package name */
    private final dev.fluttercommunity.plus.share.a f27548b;

    public a(d share, dev.fluttercommunity.plus.share.a manager) {
        m.e(share, "share");
        m.e(manager, "manager");
        this.f27547a = share;
        this.f27548b = manager;
    }

    private final void a(MethodCall methodCall) {
        if (methodCall.arguments instanceof Map) {
            return;
        }
        throw new IllegalArgumentException("Map arguments expected".toString());
    }

    private final void b(boolean z10, MethodChannel.Result result) {
        if (!z10) {
            result.success("dev.fluttercommunity.plus/share/unavailable");
        }
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        m.e(call, "call");
        m.e(result, "result");
        a(call);
        this.f27548b.c(result);
        try {
            String str = call.method;
            if (str != null) {
                int hashCode = str.hashCode();
                if (hashCode != -1811378728) {
                    if (hashCode != -743768819) {
                        if (hashCode == 109400031 && str.equals("share")) {
                            d dVar = this.f27547a;
                            Object argument = call.argument("text");
                            m.c(argument, "null cannot be cast to non-null type kotlin.String");
                            dVar.p((String) argument, (String) call.argument("subject"), true);
                            b(true, result);
                        }
                    } else if (str.equals("shareUri")) {
                        d dVar2 = this.f27547a;
                        Object argument2 = call.argument("uri");
                        m.c(argument2, "null cannot be cast to non-null type kotlin.String");
                        dVar2.p((String) argument2, null, true);
                        b(true, result);
                    }
                } else if (str.equals("shareFiles")) {
                    d dVar3 = this.f27547a;
                    Object argument3 = call.argument("paths");
                    m.b(argument3);
                    dVar3.q((List) argument3, (List) call.argument("mimeTypes"), (String) call.argument("text"), (String) call.argument("subject"), true);
                    b(true, result);
                }
            }
            result.notImplemented();
        } catch (Throwable th) {
            this.f27548b.a();
            result.error("Share failed", th.getMessage(), th);
        }
    }
}
