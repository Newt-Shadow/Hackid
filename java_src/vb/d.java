package vb;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
/* loaded from: classes.dex */
public class d extends vb.a {

    /* renamed from: a  reason: collision with root package name */
    public final a f31340a;

    /* renamed from: b  reason: collision with root package name */
    final MethodCall f31341b;

    /* loaded from: classes.dex */
    class a implements f {

        /* renamed from: a  reason: collision with root package name */
        final MethodChannel.Result f31342a;

        a(MethodChannel.Result result) {
            this.f31342a = result;
        }

        @Override // vb.f
        public void error(String str, String str2, Object obj) {
            this.f31342a.error(str, str2, obj);
        }

        @Override // vb.f
        public void success(Object obj) {
            this.f31342a.success(obj);
        }
    }

    public d(MethodCall methodCall, MethodChannel.Result result) {
        this.f31341b = methodCall;
        this.f31340a = new a(result);
    }

    @Override // vb.e
    public Object a(String str) {
        return this.f31341b.argument(str);
    }

    @Override // vb.e
    public String f() {
        return this.f31341b.method;
    }

    @Override // vb.e
    public boolean g(String str) {
        return this.f31341b.hasArgument(str);
    }

    @Override // vb.a
    public f m() {
        return this.f31340a;
    }
}
