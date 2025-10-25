package com.yandex.metrica.impl.ob;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.TrafficStats;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.pichillilorenzo.flutter_inappwebview_android.credential_database.URLProtectionSpaceContract;
import com.yandex.metrica.MetricaService;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.Fh;
import dc.b;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.io.IOException;
import java.net.BindException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class Jh implements Runnable, Gh {

    /* renamed from: a  reason: collision with root package name */
    private final ServiceConnection f10539a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f10540b;

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f10541c;

    /* renamed from: d  reason: collision with root package name */
    private final HashMap<String, Bh> f10542d;

    /* renamed from: e  reason: collision with root package name */
    private final Context f10543e;

    /* renamed from: f  reason: collision with root package name */
    private volatile boolean f10544f;

    /* renamed from: g  reason: collision with root package name */
    private ServerSocket f10545g;

    /* renamed from: h  reason: collision with root package name */
    private C0488di f10546h;

    /* renamed from: i  reason: collision with root package name */
    private Lm f10547i;

    /* renamed from: j  reason: collision with root package name */
    private final M0 f10548j;

    /* renamed from: k  reason: collision with root package name */
    private final b.d f10549k;

    /* renamed from: l  reason: collision with root package name */
    private final C1025zh f10550l;

    /* renamed from: m  reason: collision with root package name */
    private final C1025zh f10551m;

    /* renamed from: n  reason: collision with root package name */
    private final Fh f10552n;

    /* renamed from: o  reason: collision with root package name */
    private final Pm f10553o;

    /* renamed from: p  reason: collision with root package name */
    private final InterfaceC0741nm<C0488di, List<Integer>> f10554p;

    /* renamed from: q  reason: collision with root package name */
    private final C1001yh f10555q;

    /* renamed from: r  reason: collision with root package name */
    private final Ih f10556r;

    /* renamed from: s  reason: collision with root package name */
    private final String f10557s;

    /* loaded from: classes2.dex */
    class a implements ServiceConnection {
        a(Jh jh) {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* loaded from: classes2.dex */
    class b extends Handler {
        b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 100) {
                Jh.this.c();
                try {
                    Jh.this.f10543e.unbindService(Jh.this.f10539a);
                } catch (Throwable unused) {
                    Jh.this.f10548j.reportEvent("socket_unbind_has_thrown_exception");
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Jh jh = Jh.this;
            Jh.a(jh, jh.f10546h);
        }
    }

    /* loaded from: classes2.dex */
    class d extends HashMap<String, Bh> {

        /* loaded from: classes2.dex */
        class a implements Bh {
            a() {
            }

            @Override // com.yandex.metrica.impl.ob.Bh
            public Ah a(Socket socket, Uri uri, Hh hh) {
                Jh jh = Jh.this;
                return new C0810qh(socket, uri, jh, jh.f10546h, Jh.this.f10555q.a(), hh);
            }
        }

        /* loaded from: classes2.dex */
        class b implements Bh {
            b() {
            }

            @Override // com.yandex.metrica.impl.ob.Bh
            public Ah a(Socket socket, Uri uri, Hh hh) {
                Jh jh = Jh.this;
                return new Dh(socket, uri, jh, jh.f10546h, hh);
            }
        }

        d() {
            put("p", new a());
            put("i", new b());
        }
    }

    /* loaded from: classes2.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Jh.f(Jh.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum f {
        OK,
        SHOULD_RETRY,
        ORDINARY_FAIL
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Jh(Context context, C0787pi c0787pi, Fh fh, InterfaceC0741nm<C0488di, List<Integer>> interfaceC0741nm, C0953wh c0953wh, C0953wh c0953wh2, String str) {
        this(context, c0787pi, dc.f.c().b(), F0.g().q(), C0761oh.a(), new C1025zh("open", c0953wh), new C1025zh("port_already_in_use", c0953wh2), new C1001yh(context, c0787pi), new Ih(), fh, interfaceC0741nm, str);
    }

    static void f(Jh jh) {
        jh.getClass();
        Intent intent = new Intent(jh.f10543e, MetricaService.class);
        intent.setAction("com.yandex.metrica.ACTION_BIND_TO_LOCAL_SERVER");
        try {
            if (!jh.f10543e.bindService(intent, jh.f10539a, 1)) {
                jh.f10548j.reportEvent("socket_bind_has_failed");
            }
        } catch (Throwable unused) {
            jh.f10548j.reportEvent("socket_bind_has_thrown_exception");
        }
        Lm b10 = jh.f10553o.b(jh);
        jh.f10547i = b10;
        b10.start();
        jh.f10556r.d();
    }

    @Override // java.lang.Runnable
    public void run() {
        Socket socket;
        ServerSocket serverSocket;
        synchronized (this) {
            C0488di c0488di = this.f10546h;
            if (c0488di != null && a(c0488di) == f.SHOULD_RETRY) {
                this.f10544f = false;
                long j10 = this.f10546h.f12254j;
                ICommonExecutor a10 = this.f10553o.a();
                a10.remove(this.f10541c);
                a10.executeDelayed(this.f10541c, j10, TimeUnit.SECONDS);
                return;
            }
            if (A2.a(26)) {
                TrafficStats.setThreadStatsTag(40230);
            }
            if (this.f10545g != null) {
                while (this.f10544f) {
                    synchronized (this) {
                        socket = null;
                        if (this.f10544f) {
                            serverSocket = this.f10545g;
                        } else {
                            serverSocket = null;
                        }
                    }
                    if (serverSocket != null) {
                        try {
                            socket = serverSocket.accept();
                            Hh hh = new Hh(new dc.c(), new C0567gm());
                            if (A2.a(26)) {
                                TrafficStats.tagSocket(socket);
                            }
                            new Ch(socket, this, this.f10542d, hh).a();
                            if (socket == null) {
                            }
                        } catch (Throwable unused) {
                            if (socket == null) {
                            }
                        }
                        try {
                            socket.close();
                        } catch (IOException unused2) {
                        }
                    }
                }
            }
        }
    }

    private synchronized void c(C0488di c0488di) {
        if (!this.f10544f && this.f10549k.b(c0488di.f12250f)) {
            this.f10544f = true;
        }
    }

    public void a() {
        this.f10540b.removeMessages(100);
        this.f10556r.e();
    }

    public synchronized void b() {
        if (this.f10544f) {
            a();
            Handler handler = this.f10540b;
            handler.sendMessageDelayed(handler.obtainMessage(100), TimeUnit.SECONDS.toMillis(this.f10546h.f12245a));
            this.f10556r.c();
        }
    }

    public synchronized void a(C0787pi c0787pi) {
        C0488di M = c0787pi.M();
        synchronized (this) {
            if (M != null) {
                c(M);
            }
        }
    }

    Jh(Context context, C0787pi c0787pi, dc.b bVar, Pm pm, M0 m02, C1025zh c1025zh, C1025zh c1025zh2, C1001yh c1001yh, Ih ih, Fh fh, InterfaceC0741nm<C0488di, List<Integer>> interfaceC0741nm, String str) {
        this.f10539a = new a(this);
        this.f10540b = new b(Looper.getMainLooper());
        this.f10541c = new c();
        this.f10542d = new d();
        this.f10543e = context;
        this.f10548j = m02;
        this.f10550l = c1025zh;
        this.f10551m = c1025zh2;
        this.f10552n = fh;
        this.f10554p = interfaceC0741nm;
        this.f10553o = pm;
        this.f10555q = c1001yh;
        this.f10556r = ih;
        String format = String.format("[YandexUID%sServer]", str);
        this.f10557s = format;
        this.f10549k = bVar.b(new e(), pm.a(), format);
        b(c0787pi.M());
        C0488di c0488di = this.f10546h;
        if (c0488di != null) {
            c(c0488di);
        }
    }

    synchronized void c() {
        try {
            this.f10544f = false;
            Lm lm = this.f10547i;
            if (lm != null) {
                lm.stopRunning();
                this.f10547i = null;
            }
            ServerSocket serverSocket = this.f10545g;
            if (serverSocket != null) {
                serverSocket.close();
                this.f10545g = null;
            }
        } catch (IOException unused) {
        }
    }

    static void a(Jh jh, C0488di c0488di) {
        synchronized (jh) {
            if (c0488di != null) {
                jh.c(c0488di);
            }
        }
    }

    private synchronized f a(C0488di c0488di) {
        f fVar;
        Integer num;
        Throwable th;
        Fh.a e10;
        Iterator<Integer> it = this.f10554p.a(c0488di).iterator();
        fVar = f.ORDINARY_FAIL;
        Integer num2 = null;
        while (this.f10545g == null && it.hasNext()) {
            try {
                num = it.next();
                if (num != null) {
                    try {
                        this.f10545g = this.f10552n.a(num.intValue());
                        fVar = f.OK;
                        this.f10550l.a(this, num.intValue(), c0488di);
                    } catch (Fh.a e11) {
                        e10 = e11;
                        String message = e10.getMessage();
                        Throwable cause = e10.getCause();
                        if (cause != null && message != null) {
                            Map<String, Object> a10 = a(num);
                            ((HashMap) a10).put(Constants.EXCEPTION, Log.getStackTraceString(cause));
                            this.f10548j.reportEvent(b(message), a10);
                        }
                        num2 = num;
                    } catch (BindException unused) {
                        num2 = num;
                        fVar = f.SHOULD_RETRY;
                        this.f10551m.a(this, num2.intValue(), c0488di);
                    } catch (Throwable th2) {
                        th = th2;
                        Map<String, Object> a11 = a(num);
                        ((HashMap) a11).put(Constants.EXCEPTION, Log.getStackTraceString(th));
                        this.f10548j.reportEvent(b("open_error"), a11);
                        num2 = num;
                    }
                }
            } catch (Fh.a e12) {
                num = num2;
                e10 = e12;
            } catch (BindException unused2) {
            } catch (Throwable th3) {
                num = num2;
                th = th3;
            }
            num2 = num;
        }
        return fVar;
    }

    private void b(C0488di c0488di) {
        this.f10546h = c0488di;
        if (c0488di != null) {
            this.f10549k.a(c0488di.f12249e);
        }
    }

    public void b(int i10, Hh hh) {
        this.f10548j.reportEvent(b("sync_succeed"), a(i10, hh));
    }

    public synchronized void b(C0787pi c0787pi) {
        this.f10555q.a(c0787pi);
        C0488di M = c0787pi.M();
        if (M != null) {
            this.f10546h = M;
            this.f10549k.a(M.f12249e);
            c(M);
        } else {
            c();
            b((C0488di) null);
        }
    }

    private String b(String str) {
        return "socket_" + str;
    }

    private Map<String, Object> a(Integer num) {
        HashMap hashMap = new HashMap();
        hashMap.put(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_PORT, num == null ? "" : String.valueOf(num));
        return hashMap;
    }

    private Map<String, Object> a(int i10, Hh hh) {
        Map<String, Object> a10 = a(Integer.valueOf(i10));
        HashMap hashMap = (HashMap) a10;
        hashMap.put("idle_interval", Double.valueOf(this.f10556r.b()));
        hashMap.put("background_interval", Double.valueOf(this.f10556r.a()));
        hashMap.put("request_read_time", Long.valueOf(hh.d()));
        hashMap.put("response_form_time", Long.valueOf(hh.e()));
        hashMap.put("response_send_time", Long.valueOf(hh.f()));
        return a10;
    }

    public void a(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("uri", str2);
        M0 m02 = this.f10548j;
        m02.reportEvent("socket_" + str, hashMap);
    }

    public void a(String str) {
        this.f10548j.reportEvent(b(str));
    }

    public void a(String str, Throwable th) {
        this.f10548j.reportError(b(str), th);
    }

    public void a(String str, Integer num) {
        this.f10548j.reportEvent(b(str), a(num));
    }

    public void a(Map<String, Object> map, int i10, Hh hh) {
        Map<String, Object> a10 = a(i10, hh);
        ((HashMap) a10).put("params", map);
        this.f10548j.reportEvent(b("reversed_sync_succeed"), a10);
    }
}
