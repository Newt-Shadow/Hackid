package e2;

import android.content.Context;
import e2.a;
import e2.q;
import e2.y;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes.dex */
final class l implements MethodChannel.MethodCallHandler {

    /* renamed from: a  reason: collision with root package name */
    private final Context f15250a;

    /* renamed from: b  reason: collision with root package name */
    private final a f15251b;

    /* renamed from: c  reason: collision with root package name */
    private final q f15252c;

    /* renamed from: d  reason: collision with root package name */
    private final y f15253d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(Context context, a aVar, q qVar, y yVar) {
        this.f15250a = context;
        this.f15251b = aVar;
        this.f15252c = qVar;
        this.f15253d = yVar;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, final MethodChannel.Result result) {
        String str = methodCall.method;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1544053025:
                if (str.equals("checkServiceStatus")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1017315255:
                if (str.equals("shouldShowRequestPermissionRationale")) {
                    c10 = 1;
                    break;
                }
                break;
            case -576207927:
                if (str.equals("checkPermissionStatus")) {
                    c10 = 2;
                    break;
                }
                break;
            case 347240634:
                if (str.equals("openAppSettings")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1669188213:
                if (str.equals("requestPermissions")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                int parseInt = Integer.parseInt(methodCall.arguments.toString());
                y yVar = this.f15253d;
                Context context = this.f15250a;
                Objects.requireNonNull(result);
                yVar.a(parseInt, context, new y.a() { // from class: e2.c
                    @Override // e2.y.a
                    public final void onSuccess(int i10) {
                        MethodChannel.Result.this.success(Integer.valueOf(i10));
                    }
                }, new b() { // from class: e2.d
                    @Override // e2.b
                    public final void a(String str2, String str3) {
                        MethodChannel.Result.this.error(str2, str3, null);
                    }
                });
                return;
            case 1:
                int parseInt2 = Integer.parseInt(methodCall.arguments.toString());
                q qVar = this.f15252c;
                Objects.requireNonNull(result);
                qVar.i(parseInt2, new q.c() { // from class: e2.h
                    @Override // e2.q.c
                    public final void a(boolean z10) {
                        MethodChannel.Result.this.success(Boolean.valueOf(z10));
                    }
                }, new b() { // from class: e2.i
                    @Override // e2.b
                    public final void a(String str2, String str3) {
                        MethodChannel.Result.this.error(str2, str3, null);
                    }
                });
                return;
            case 2:
                int parseInt3 = Integer.parseInt(methodCall.arguments.toString());
                q qVar2 = this.f15252c;
                Objects.requireNonNull(result);
                qVar2.c(parseInt3, new q.a() { // from class: e2.e
                    @Override // e2.q.a
                    public final void onSuccess(int i10) {
                        MethodChannel.Result.this.success(Integer.valueOf(i10));
                    }
                });
                return;
            case 3:
                a aVar = this.f15251b;
                Context context2 = this.f15250a;
                Objects.requireNonNull(result);
                aVar.a(context2, new a.InterfaceC0156a() { // from class: e2.j
                    @Override // e2.a.InterfaceC0156a
                    public final void a(boolean z10) {
                        MethodChannel.Result.this.success(Boolean.valueOf(z10));
                    }
                }, new b() { // from class: e2.k
                    @Override // e2.b
                    public final void a(String str2, String str3) {
                        MethodChannel.Result.this.error(str2, str3, null);
                    }
                });
                return;
            case 4:
                q qVar3 = this.f15252c;
                Objects.requireNonNull(result);
                qVar3.g((List) methodCall.arguments(), new q.b() { // from class: e2.f
                    @Override // e2.q.b
                    public final void a(Map map) {
                        MethodChannel.Result.this.success(map);
                    }
                }, new b() { // from class: e2.g
                    @Override // e2.b
                    public final void a(String str2, String str3) {
                        MethodChannel.Result.this.error(str2, str3, null);
                    }
                });
                return;
            default:
                result.notImplemented();
                return;
        }
    }
}
