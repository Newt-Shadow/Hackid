package lc;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import org.apache.tika.parser.external.ExternalParsersConfigReaderMetKeys;
/* loaded from: classes2.dex */
class e implements MethodChannel.MethodCallHandler {

    /* renamed from: a  reason: collision with root package name */
    private final a f25531a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(a aVar) {
        this.f25531a = aVar;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        if (ExternalParsersConfigReaderMetKeys.CHECK_TAG.equals(methodCall.method)) {
            result.success(this.f25531a.b());
        } else {
            result.notImplemented();
        }
    }
}
