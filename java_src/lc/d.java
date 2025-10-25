package lc;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.Network;
import android.os.Handler;
import android.os.Looper;
import io.flutter.plugin.common.EventChannel;
/* loaded from: classes2.dex */
public class d extends BroadcastReceiver implements EventChannel.StreamHandler {

    /* renamed from: a  reason: collision with root package name */
    private final Context f25525a;

    /* renamed from: b  reason: collision with root package name */
    private final lc.a f25526b;

    /* renamed from: c  reason: collision with root package name */
    private EventChannel.EventSink f25527c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f25528d = new Handler(Looper.getMainLooper());

    /* renamed from: e  reason: collision with root package name */
    private ConnectivityManager.NetworkCallback f25529e;

    /* loaded from: classes2.dex */
    class a extends ConnectivityManager.NetworkCallback {
        a() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            d.this.g();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            d.this.h("none");
        }
    }

    public d(Context context, lc.a aVar) {
        this.f25525a = context;
        this.f25526b = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.f25527c.success(this.f25526b.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(String str) {
        this.f25527c.success(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        this.f25528d.post(new Runnable() { // from class: lc.b
            @Override // java.lang.Runnable
            public final void run() {
                d.this.e();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(final String str) {
        this.f25528d.post(new Runnable() { // from class: lc.c
            @Override // java.lang.Runnable
            public final void run() {
                d.this.f(str);
            }
        });
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onCancel(Object obj) {
        if (this.f25529e != null) {
            this.f25526b.a().unregisterNetworkCallback(this.f25529e);
            this.f25529e = null;
        }
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onListen(Object obj, EventChannel.EventSink eventSink) {
        this.f25527c = eventSink;
        this.f25529e = new a();
        this.f25526b.a().registerDefaultNetworkCallback(this.f25529e);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        EventChannel.EventSink eventSink = this.f25527c;
        if (eventSink != null) {
            eventSink.success(this.f25526b.b());
        }
    }
}
