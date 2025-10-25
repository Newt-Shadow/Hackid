package cb;

import android.os.Handler;
import android.os.Looper;
import io.flutter.plugin.common.MethodChannel;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class j implements MethodChannel.Result {

    /* renamed from: a  reason: collision with root package name */
    private final MethodChannel.Result f5163a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f5164b;

    public j(MethodChannel.Result methodResult) {
        m.e(methodResult, "methodResult");
        this.f5163a = methodResult;
        this.f5164b = new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(j jVar, String str, String str2, Object obj) {
        jVar.f5163a.error(str, str2, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(j jVar) {
        jVar.f5163a.notImplemented();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(j jVar, Object obj) {
        jVar.f5163a.success(obj);
    }

    @Override // io.flutter.plugin.common.MethodChannel.Result
    public void error(final String errorCode, final String str, final Object obj) {
        m.e(errorCode, "errorCode");
        this.f5164b.post(new Runnable() { // from class: cb.g
            @Override // java.lang.Runnable
            public final void run() {
                j.d(j.this, errorCode, str, obj);
            }
        });
    }

    @Override // io.flutter.plugin.common.MethodChannel.Result
    public void notImplemented() {
        this.f5164b.post(new Runnable() { // from class: cb.i
            @Override // java.lang.Runnable
            public final void run() {
                j.e(j.this);
            }
        });
    }

    @Override // io.flutter.plugin.common.MethodChannel.Result
    public void success(final Object obj) {
        this.f5164b.post(new Runnable() { // from class: cb.h
            @Override // java.lang.Runnable
            public final void run() {
                j.f(j.this, obj);
            }
        });
    }
}
