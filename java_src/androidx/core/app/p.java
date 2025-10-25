package androidx.core.app;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Log;
import c.a;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class p {

    /* renamed from: d  reason: collision with root package name */
    private static String f1971d;

    /* renamed from: g  reason: collision with root package name */
    private static e f1974g;

    /* renamed from: a  reason: collision with root package name */
    private final Context f1975a;

    /* renamed from: b  reason: collision with root package name */
    private final NotificationManager f1976b;

    /* renamed from: c  reason: collision with root package name */
    private static final Object f1970c = new Object();

    /* renamed from: e  reason: collision with root package name */
    private static Set f1972e = new HashSet();

    /* renamed from: f  reason: collision with root package name */
    private static final Object f1973f = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {
        static boolean a(NotificationManager notificationManager) {
            return notificationManager.areNotificationsEnabled();
        }
    }

    /* loaded from: classes.dex */
    static class b {
        static List a(NotificationManager notificationManager) {
            return notificationManager.getNotificationChannels();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c implements f {

        /* renamed from: a  reason: collision with root package name */
        final String f1977a;

        /* renamed from: b  reason: collision with root package name */
        final int f1978b;

        /* renamed from: c  reason: collision with root package name */
        final String f1979c;

        /* renamed from: d  reason: collision with root package name */
        final Notification f1980d;

        c(String str, int i10, String str2, Notification notification) {
            this.f1977a = str;
            this.f1978b = i10;
            this.f1979c = str2;
            this.f1980d = notification;
        }

        @Override // androidx.core.app.p.f
        public void a(c.a aVar) {
            aVar.X0(this.f1977a, this.f1978b, this.f1979c, this.f1980d);
        }

        public String toString() {
            return "NotifyTask[packageName:" + this.f1977a + ", id:" + this.f1978b + ", tag:" + this.f1979c + "]";
        }
    }

    /* loaded from: classes.dex */
    private static class d {

        /* renamed from: a  reason: collision with root package name */
        final ComponentName f1981a;

        /* renamed from: b  reason: collision with root package name */
        final IBinder f1982b;

        d(ComponentName componentName, IBinder iBinder) {
            this.f1981a = componentName;
            this.f1982b = iBinder;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class e implements Handler.Callback, ServiceConnection {

        /* renamed from: a  reason: collision with root package name */
        private final Context f1983a;

        /* renamed from: b  reason: collision with root package name */
        private final HandlerThread f1984b;

        /* renamed from: c  reason: collision with root package name */
        private final Handler f1985c;

        /* renamed from: d  reason: collision with root package name */
        private final Map f1986d = new HashMap();

        /* renamed from: e  reason: collision with root package name */
        private Set f1987e = new HashSet();

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            final ComponentName f1988a;

            /* renamed from: c  reason: collision with root package name */
            c.a f1990c;

            /* renamed from: b  reason: collision with root package name */
            boolean f1989b = false;

            /* renamed from: d  reason: collision with root package name */
            ArrayDeque f1991d = new ArrayDeque();

            /* renamed from: e  reason: collision with root package name */
            int f1992e = 0;

            a(ComponentName componentName) {
                this.f1988a = componentName;
            }
        }

        e(Context context) {
            this.f1983a = context;
            HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
            this.f1984b = handlerThread;
            handlerThread.start();
            this.f1985c = new Handler(handlerThread.getLooper(), this);
        }

        private boolean a(a aVar) {
            if (aVar.f1989b) {
                return true;
            }
            boolean bindService = this.f1983a.bindService(new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(aVar.f1988a), this, 33);
            aVar.f1989b = bindService;
            if (bindService) {
                aVar.f1992e = 0;
            } else {
                Log.w("NotifManCompat", "Unable to bind to listener " + aVar.f1988a);
                this.f1983a.unbindService(this);
            }
            return aVar.f1989b;
        }

        private void b(a aVar) {
            if (aVar.f1989b) {
                this.f1983a.unbindService(this);
                aVar.f1989b = false;
            }
            aVar.f1990c = null;
        }

        private void c(f fVar) {
            j();
            for (a aVar : this.f1986d.values()) {
                aVar.f1991d.add(fVar);
                g(aVar);
            }
        }

        private void d(ComponentName componentName) {
            a aVar = (a) this.f1986d.get(componentName);
            if (aVar != null) {
                g(aVar);
            }
        }

        private void e(ComponentName componentName, IBinder iBinder) {
            a aVar = (a) this.f1986d.get(componentName);
            if (aVar != null) {
                aVar.f1990c = a.AbstractBinderC0084a.a(iBinder);
                aVar.f1992e = 0;
                g(aVar);
            }
        }

        private void f(ComponentName componentName) {
            a aVar = (a) this.f1986d.get(componentName);
            if (aVar != null) {
                b(aVar);
            }
        }

        private void g(a aVar) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Processing component " + aVar.f1988a + ", " + aVar.f1991d.size() + " queued tasks");
            }
            if (aVar.f1991d.isEmpty()) {
                return;
            }
            if (a(aVar) && aVar.f1990c != null) {
                while (true) {
                    f fVar = (f) aVar.f1991d.peek();
                    if (fVar == null) {
                        break;
                    }
                    try {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Sending task " + fVar);
                        }
                        fVar.a(aVar.f1990c);
                        aVar.f1991d.remove();
                    } catch (DeadObjectException unused) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Remote service has died: " + aVar.f1988a);
                        }
                    } catch (RemoteException e10) {
                        Log.w("NotifManCompat", "RemoteException communicating with " + aVar.f1988a, e10);
                    }
                }
                if (!aVar.f1991d.isEmpty()) {
                    i(aVar);
                    return;
                }
                return;
            }
            i(aVar);
        }

        private void i(a aVar) {
            if (this.f1985c.hasMessages(3, aVar.f1988a)) {
                return;
            }
            int i10 = aVar.f1992e + 1;
            aVar.f1992e = i10;
            if (i10 > 6) {
                Log.w("NotifManCompat", "Giving up on delivering " + aVar.f1991d.size() + " tasks to " + aVar.f1988a + " after " + aVar.f1992e + " retries");
                aVar.f1991d.clear();
                return;
            }
            int i11 = (1 << (i10 - 1)) * 1000;
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Scheduling retry for " + i11 + " ms");
            }
            this.f1985c.sendMessageDelayed(this.f1985c.obtainMessage(3, aVar.f1988a), i11);
        }

        private void j() {
            Set f10 = p.f(this.f1983a);
            if (f10.equals(this.f1987e)) {
                return;
            }
            this.f1987e = f10;
            List<ResolveInfo> queryIntentServices = this.f1983a.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
            HashSet<ComponentName> hashSet = new HashSet();
            for (ResolveInfo resolveInfo : queryIntentServices) {
                if (f10.contains(resolveInfo.serviceInfo.packageName)) {
                    ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                    ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                    if (resolveInfo.serviceInfo.permission != null) {
                        Log.w("NotifManCompat", "Permission present on component " + componentName + ", not adding listener record.");
                    } else {
                        hashSet.add(componentName);
                    }
                }
            }
            for (ComponentName componentName2 : hashSet) {
                if (!this.f1986d.containsKey(componentName2)) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Adding listener record for " + componentName2);
                    }
                    this.f1986d.put(componentName2, new a(componentName2));
                }
            }
            Iterator it = this.f1986d.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (!hashSet.contains(entry.getKey())) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Removing listener record for " + entry.getKey());
                    }
                    b((a) entry.getValue());
                    it.remove();
                }
            }
        }

        public void h(f fVar) {
            this.f1985c.obtainMessage(0, fVar).sendToTarget();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            return false;
                        }
                        d((ComponentName) message.obj);
                        return true;
                    }
                    f((ComponentName) message.obj);
                    return true;
                }
                d dVar = (d) message.obj;
                e(dVar.f1981a, dVar.f1982b);
                return true;
            }
            c((f) message.obj);
            return true;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Connected to service " + componentName);
            }
            this.f1985c.obtainMessage(1, new d(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Disconnected from service " + componentName);
            }
            this.f1985c.obtainMessage(2, componentName).sendToTarget();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface f {
        void a(c.a aVar);
    }

    private p(Context context) {
        this.f1975a = context;
        this.f1976b = (NotificationManager) context.getSystemService("notification");
    }

    public static p e(Context context) {
        return new p(context);
    }

    public static Set f(Context context) {
        Set set;
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        synchronized (f1970c) {
            if (string != null) {
                if (!string.equals(f1971d)) {
                    String[] split = string.split(":", -1);
                    HashSet hashSet = new HashSet(split.length);
                    for (String str : split) {
                        ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
                        if (unflattenFromString != null) {
                            hashSet.add(unflattenFromString.getPackageName());
                        }
                    }
                    f1972e = hashSet;
                    f1971d = string;
                }
            }
            set = f1972e;
        }
        return set;
    }

    private void j(f fVar) {
        synchronized (f1973f) {
            if (f1974g == null) {
                f1974g = new e(this.f1975a.getApplicationContext());
            }
            f1974g.h(fVar);
        }
    }

    private static boolean k(Notification notification) {
        Bundle a10 = k.a(notification);
        if (a10 != null && a10.getBoolean("android.support.useSideChannel")) {
            return true;
        }
        return false;
    }

    public boolean a() {
        return a.a(this.f1976b);
    }

    public void b(int i10) {
        c(null, i10);
    }

    public void c(String str, int i10) {
        this.f1976b.cancel(str, i10);
    }

    public void d() {
        this.f1976b.cancelAll();
    }

    public List g() {
        if (Build.VERSION.SDK_INT >= 26) {
            return b.a(this.f1976b);
        }
        return Collections.emptyList();
    }

    public void h(int i10, Notification notification) {
        i(null, i10, notification);
    }

    public void i(String str, int i10, Notification notification) {
        if (k(notification)) {
            j(new c(this.f1975a.getPackageName(), i10, str, notification));
            this.f1976b.cancel(str, i10);
            return;
        }
        this.f1976b.notify(str, i10, notification);
    }
}
