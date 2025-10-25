package ya;

import android.hardware.Camera;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import ya.a;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: i  reason: collision with root package name */
    private static final String f33081i = "a";

    /* renamed from: j  reason: collision with root package name */
    private static final Collection f33082j;

    /* renamed from: a  reason: collision with root package name */
    private boolean f33083a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f33084b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f33085c;

    /* renamed from: d  reason: collision with root package name */
    private final Camera f33086d;

    /* renamed from: e  reason: collision with root package name */
    private Handler f33087e;

    /* renamed from: f  reason: collision with root package name */
    private int f33088f = 1;

    /* renamed from: g  reason: collision with root package name */
    private final Handler.Callback f33089g;

    /* renamed from: h  reason: collision with root package name */
    private final Camera.AutoFocusCallback f33090h;

    /* renamed from: ya.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0377a implements Handler.Callback {
        C0377a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what == a.this.f33088f) {
                a.this.h();
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements Camera.AutoFocusCallback {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            a.this.f33084b = false;
            a.this.f();
        }

        @Override // android.hardware.Camera.AutoFocusCallback
        public void onAutoFocus(boolean z10, Camera camera) {
            a.this.f33087e.post(new Runnable() { // from class: ya.b
                @Override // java.lang.Runnable
                public final void run() {
                    a.b.this.b();
                }
            });
        }
    }

    static {
        ArrayList arrayList = new ArrayList(2);
        f33082j = arrayList;
        arrayList.add("auto");
        arrayList.add("macro");
    }

    public a(Camera camera, i iVar) {
        boolean z10 = true;
        C0377a c0377a = new C0377a();
        this.f33089g = c0377a;
        this.f33090h = new b();
        this.f33087e = new Handler(c0377a);
        this.f33086d = camera;
        String focusMode = camera.getParameters().getFocusMode();
        z10 = (iVar.c() && f33082j.contains(focusMode)) ? false : false;
        this.f33085c = z10;
        String str = f33081i;
        Log.i(str, "Current focus mode '" + focusMode + "'; use auto focus? " + z10);
        i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void f() {
        if (!this.f33083a && !this.f33087e.hasMessages(this.f33088f)) {
            Handler handler = this.f33087e;
            handler.sendMessageDelayed(handler.obtainMessage(this.f33088f), 2000L);
        }
    }

    private void g() {
        this.f33087e.removeMessages(this.f33088f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (this.f33085c && !this.f33083a && !this.f33084b) {
            try {
                this.f33086d.autoFocus(this.f33090h);
                this.f33084b = true;
            } catch (RuntimeException e10) {
                Log.w(f33081i, "Unexpected exception while focusing", e10);
                f();
            }
        }
    }

    public void i() {
        this.f33083a = false;
        h();
    }

    public void j() {
        this.f33083a = true;
        this.f33084b = false;
        g();
        if (this.f33085c) {
            try {
                this.f33086d.cancelAutoFocus();
            } catch (RuntimeException e10) {
                Log.w(f33081i, "Unexpected exception while cancelling focusing", e10);
            }
        }
    }
}
