package com.pravera.flutter_foreground_task.service;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.graphics.Color;
import android.graphics.drawable.Icon;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.PowerManager;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import androidx.core.app.k;
import com.arthenica.ffmpegkit.AbstractSession;
import com.dexterous.flutterlocalnotifications.v0;
import com.dexterous.flutterlocalnotifications.w0;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import qb.a;
import qb.b;
import qb.e;
import qb.g;
import qb.h;
import qb.i;
import rb.o;
import rd.b0;
import wd.f;
import wd.p;
import wd.u;
import wd.w;
/* loaded from: classes.dex */
public final class ForegroundService extends Service {

    /* renamed from: m  reason: collision with root package name */
    public static final a f9495m = new a(null);

    /* renamed from: n  reason: collision with root package name */
    private static final String f9496n = ForegroundService.class.getSimpleName();

    /* renamed from: o  reason: collision with root package name */
    private static final p f9497o;

    /* renamed from: p  reason: collision with root package name */
    private static final u f9498p;

    /* renamed from: q  reason: collision with root package name */
    private static o f9499q;

    /* renamed from: r  reason: collision with root package name */
    private static rb.p f9500r;

    /* renamed from: a  reason: collision with root package name */
    private qb.a f9501a;

    /* renamed from: b  reason: collision with root package name */
    private e f9502b;

    /* renamed from: c  reason: collision with root package name */
    private qb.b f9503c;

    /* renamed from: d  reason: collision with root package name */
    private i f9504d;

    /* renamed from: e  reason: collision with root package name */
    private g f9505e;

    /* renamed from: f  reason: collision with root package name */
    private e f9506f;

    /* renamed from: g  reason: collision with root package name */
    private qb.b f9507g;

    /* renamed from: h  reason: collision with root package name */
    private i f9508h;

    /* renamed from: i  reason: collision with root package name */
    private g f9509i;

    /* renamed from: j  reason: collision with root package name */
    private PowerManager.WakeLock f9510j;

    /* renamed from: k  reason: collision with root package name */
    private WifiManager.WifiLock f9511k;

    /* renamed from: l  reason: collision with root package name */
    private b f9512l = new b();

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Intent intent) {
            boolean z10;
            o oVar;
            if (intent == null) {
                return;
            }
            try {
                if (m.a(intent.getAction(), "android.intent.action.MAIN") && intent.getCategories().contains("android.intent.category.LAUNCHER")) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10) {
                    return;
                }
                String stringExtra = intent.getStringExtra("intentData");
                if (m.a(stringExtra, "onNotificationPressed") && (oVar = ForegroundService.f9499q) != null) {
                    oVar.p(stringExtra, null);
                }
            } catch (Exception e10) {
                Log.e(ForegroundService.f9496n, e10.getMessage(), e10);
            }
        }

        public final u b() {
            return ForegroundService.f9498p;
        }

        public final void c(Object obj) {
            o oVar;
            if (((Boolean) b().getValue()).booleanValue() && (oVar = ForegroundService.f9499q) != null) {
                oVar.p("onReceiveData", obj);
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            try {
                String str = intent.getPackage();
                String packageName = ForegroundService.this.getPackageName();
                if (!m.a(str, packageName)) {
                    String str2 = ForegroundService.f9496n;
                    Log.d(str2, "This intent has not sent from the current package. (" + str + " != " + packageName + ')');
                    return;
                }
                String action = intent.getAction();
                if (action == null) {
                    return;
                }
                String stringExtra = intent.getStringExtra("intentData");
                o oVar = ForegroundService.f9499q;
                if (oVar != null) {
                    oVar.p(action, stringExtra);
                }
            } catch (Exception e10) {
                Log.e(ForegroundService.f9496n, e10.getMessage(), e10);
            }
        }
    }

    static {
        p a10 = w.a(Boolean.FALSE);
        f9497o = a10;
        f9498p = f.a(a10);
        f9500r = new rb.p();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0022, code lost:
        if (r0 != false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void d() {
        /*
            r6 = this;
            qb.e r0 = r6.f9502b
            r1 = 0
            java.lang.String r2 = "foregroundTaskOptions"
            if (r0 != 0) goto Lb
            kotlin.jvm.internal.m.s(r2)
            r0 = r1
        Lb:
            boolean r0 = r0.a()
            r3 = 1
            r4 = 0
            if (r0 == 0) goto L43
            android.os.PowerManager$WakeLock r0 = r6.f9510j
            if (r0 == 0) goto L24
            if (r0 == 0) goto L21
            boolean r0 = r0.isHeld()
            if (r0 != 0) goto L21
            r0 = r3
            goto L22
        L21:
            r0 = r4
        L22:
            if (r0 == 0) goto L43
        L24:
            android.content.Context r0 = r6.getApplicationContext()
            java.lang.String r5 = "power"
            java.lang.Object r0 = r0.getSystemService(r5)
            java.lang.String r5 = "null cannot be cast to non-null type android.os.PowerManager"
            kotlin.jvm.internal.m.c(r0, r5)
            android.os.PowerManager r0 = (android.os.PowerManager) r0
            java.lang.String r5 = "ForegroundService:WakeLock"
            android.os.PowerManager$WakeLock r0 = r0.newWakeLock(r3, r5)
            r0.setReferenceCounted(r4)
            r0.acquire()
            r6.f9510j = r0
        L43:
            qb.e r0 = r6.f9502b
            if (r0 != 0) goto L4b
            kotlin.jvm.internal.m.s(r2)
            goto L4c
        L4b:
            r1 = r0
        L4c:
            boolean r0 = r1.b()
            if (r0 == 0) goto L82
            android.net.wifi.WifiManager$WifiLock r0 = r6.f9511k
            if (r0 == 0) goto L62
            if (r0 == 0) goto L5f
            boolean r0 = r0.isHeld()
            if (r0 != 0) goto L5f
            goto L60
        L5f:
            r3 = r4
        L60:
            if (r3 == 0) goto L82
        L62:
            android.content.Context r0 = r6.getApplicationContext()
            java.lang.String r1 = "wifi"
            java.lang.Object r0 = r0.getSystemService(r1)
            java.lang.String r1 = "null cannot be cast to non-null type android.net.wifi.WifiManager"
            kotlin.jvm.internal.m.c(r0, r1)
            android.net.wifi.WifiManager r0 = (android.net.wifi.WifiManager) r0
            r1 = 3
            java.lang.String r2 = "ForegroundService:WifiLock"
            android.net.wifi.WifiManager$WifiLock r0 = r0.createWifiLock(r1, r2)
            r0.setReferenceCounted(r4)
            r0.acquire()
            r6.f9511k = r0
        L82:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pravera.flutter_foreground_task.service.ForegroundService.d():void");
    }

    private final List e(List list, boolean z10) {
        int i10;
        Integer num;
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i11 = 0;
        while (i11 < size) {
            Intent intent = new Intent("onNotificationButtonPressed");
            intent.setPackage(getPackageName());
            intent.putExtra("intentData", ((qb.f) list.get(i11)).a());
            if (z10) {
                i10 = 335544320;
            } else {
                i10 = 67108864;
            }
            String c10 = ((qb.f) list.get(i11)).c();
            if (c10 != null) {
                num = n(c10);
            } else {
                num = null;
            }
            i11++;
            Notification.Action build = new Notification.Action.Builder((Icon) null, o(((qb.f) list.get(i11)).b(), num), PendingIntent.getBroadcast(this, i11, intent, i10)).build();
            m.b(build);
            arrayList.add(build);
        }
        return arrayList;
    }

    private final List f(List list, boolean z10) {
        int i10;
        Integer num;
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i11 = 0;
        while (i11 < size) {
            Intent intent = new Intent("onNotificationButtonPressed");
            intent.setPackage(getPackageName());
            intent.putExtra("intentData", ((qb.f) list.get(i11)).a());
            if (z10) {
                i10 = 335544320;
            } else {
                i10 = 67108864;
            }
            String c10 = ((qb.f) list.get(i11)).c();
            if (c10 != null) {
                num = n(c10);
            } else {
                num = null;
            }
            i11++;
            k.a b10 = new k.a.C0028a(0, o(((qb.f) list.get(i11)).b(), num), PendingIntent.getBroadcast(this, i11, intent, i10)).b();
            m.d(b10, "build(...)");
            arrayList.add(b10);
        }
        return arrayList;
    }

    private final void g() {
        qb.a aVar;
        qb.b bVar;
        j();
        qb.a aVar2 = this.f9501a;
        e eVar = null;
        if (aVar2 == null) {
            m.s("foregroundServiceStatus");
            aVar = null;
        } else {
            aVar = aVar2;
        }
        qb.b bVar2 = this.f9503c;
        if (bVar2 == null) {
            m.s("foregroundTaskData");
            bVar = null;
        } else {
            bVar = bVar2;
        }
        e eVar2 = this.f9502b;
        if (eVar2 == null) {
            m.s("foregroundTaskOptions");
        } else {
            eVar = eVar2;
        }
        f9499q = new o(this, aVar, bVar, eVar.e(), f9500r);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x011e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.app.Notification h() {
        /*
            Method dump skipped, instructions count: 508
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pravera.flutter_foreground_task.service.ForegroundService.h():android.app.Notification");
    }

    private final void i() {
        NotificationChannel notificationChannel;
        i iVar = this.f9504d;
        i iVar2 = null;
        if (iVar == null) {
            m.s("notificationOptions");
            iVar = null;
        }
        String b10 = iVar.b();
        i iVar3 = this.f9504d;
        if (iVar3 == null) {
            m.s("notificationOptions");
            iVar3 = null;
        }
        String d10 = iVar3.d();
        i iVar4 = this.f9504d;
        if (iVar4 == null) {
            m.s("notificationOptions");
            iVar4 = null;
        }
        String a10 = iVar4.a();
        i iVar5 = this.f9504d;
        if (iVar5 == null) {
            m.s("notificationOptions");
            iVar5 = null;
        }
        int c10 = iVar5.c();
        NotificationManager notificationManager = (NotificationManager) getSystemService(NotificationManager.class);
        notificationChannel = notificationManager.getNotificationChannel(b10);
        if (notificationChannel == null) {
            w0.a();
            NotificationChannel a11 = v0.a(b10, d10, c10);
            if (a10 != null) {
                a11.setDescription(a10);
            }
            i iVar6 = this.f9504d;
            if (iVar6 == null) {
                m.s("notificationOptions");
                iVar6 = null;
            }
            a11.enableVibration(iVar6.e());
            i iVar7 = this.f9504d;
            if (iVar7 == null) {
                m.s("notificationOptions");
                iVar7 = null;
            }
            if (!iVar7.g()) {
                a11.setSound(null, null);
            }
            i iVar8 = this.f9504d;
            if (iVar8 == null) {
                m.s("notificationOptions");
            } else {
                iVar2 = iVar8;
            }
            a11.setShowBadge(iVar2.j());
            notificationManager.createNotificationChannel(a11);
        }
    }

    private final void j() {
        o oVar = f9499q;
        if (oVar != null) {
            oVar.l();
        }
        f9499q = null;
    }

    private final PendingIntent k() {
        int i10;
        Intent launchIntentForPackage = getApplicationContext().getPackageManager().getLaunchIntentForPackage(getApplicationContext().getPackageName());
        g gVar = null;
        if (launchIntentForPackage != null) {
            launchIntentForPackage.putExtra("intentData", "onNotificationPressed");
            g gVar2 = this.f9505e;
            if (gVar2 == null) {
                m.s("notificationContent");
            } else {
                gVar = gVar2;
            }
            String c10 = gVar.c();
            if (c10 != null) {
                launchIntentForPackage.putExtra("route", c10);
            }
        } else {
            launchIntentForPackage = null;
        }
        if (Build.VERSION.SDK_INT >= 31) {
            i10 = 201326592;
        } else {
            i10 = 134217728;
        }
        PendingIntent activity = PendingIntent.getActivity(this, 301, launchIntentForPackage, i10);
        m.d(activity, "getActivity(...)");
        return activity;
    }

    private final PendingIntent l() {
        int i10;
        Intent intent = new Intent("onNotificationDismissed");
        intent.setPackage(getPackageName());
        if (Build.VERSION.SDK_INT >= 31) {
            i10 = 201326592;
        } else {
            i10 = 134217728;
        }
        PendingIntent broadcast = PendingIntent.getBroadcast(this, 302, intent, i10);
        m.d(broadcast, "getBroadcast(...)");
        return broadcast;
    }

    private final int m(h hVar) {
        try {
            ApplicationInfo applicationInfo = getApplicationContext().getPackageManager().getApplicationInfo(getApplicationContext().getPackageName(), 128);
            m.d(applicationInfo, "getApplicationInfo(...)");
            if (hVar == null) {
                return applicationInfo.icon;
            }
            Bundle bundle = applicationInfo.metaData;
            if (bundle == null) {
                return 0;
            }
            return bundle.getInt(hVar.b());
        } catch (Exception e10) {
            String str = f9496n;
            Log.e(str, "getIconResId(" + hVar + ')', e10);
            return 0;
        }
    }

    private final Integer n(String str) {
        List z02;
        z02 = b0.z0(str, new String[]{StringUtils.COMMA}, false, 0, 6, null);
        if (z02.size() == 3) {
            return Integer.valueOf(Color.rgb(Integer.parseInt((String) z02.get(0)), Integer.parseInt((String) z02.get(1)), Integer.parseInt((String) z02.get(2))));
        }
        return null;
    }

    private final Spannable o(String str, Integer num) {
        if (num != null) {
            SpannableString spannableString = new SpannableString(str);
            spannableString.setSpan(new ForegroundColorSpan(num.intValue()), 0, spannableString.length(), 0);
            return spannableString;
        }
        return new SpannableString(str);
    }

    private final void p() {
        a.C0291a c0291a = qb.a.f28650b;
        Context applicationContext = getApplicationContext();
        m.d(applicationContext, "getApplicationContext(...)");
        this.f9501a = c0291a.a(applicationContext);
        e eVar = this.f9502b;
        g gVar = null;
        if (eVar != null) {
            if (eVar == null) {
                m.s("foregroundTaskOptions");
                eVar = null;
            }
            this.f9506f = eVar;
        }
        e.a aVar = e.f28664f;
        Context applicationContext2 = getApplicationContext();
        m.d(applicationContext2, "getApplicationContext(...)");
        this.f9502b = aVar.b(applicationContext2);
        qb.b bVar = this.f9503c;
        if (bVar != null) {
            if (bVar == null) {
                m.s("foregroundTaskData");
                bVar = null;
            }
            this.f9507g = bVar;
        }
        b.a aVar2 = qb.b.f28652b;
        Context applicationContext3 = getApplicationContext();
        m.d(applicationContext3, "getApplicationContext(...)");
        this.f9503c = aVar2.b(applicationContext3);
        i iVar = this.f9504d;
        if (iVar != null) {
            if (iVar == null) {
                m.s("notificationOptions");
                iVar = null;
            }
            this.f9508h = iVar;
        }
        i.a aVar3 = i.f28683m;
        Context applicationContext4 = getApplicationContext();
        m.d(applicationContext4, "getApplicationContext(...)");
        this.f9504d = aVar3.b(applicationContext4);
        g gVar2 = this.f9505e;
        if (gVar2 != null) {
            if (gVar2 == null) {
                m.s("notificationContent");
            } else {
                gVar = gVar2;
            }
            this.f9509i = gVar;
        }
        g.a aVar4 = g.f28674f;
        Context applicationContext5 = getApplicationContext();
        m.d(applicationContext5, "getApplicationContext(...)");
        this.f9505e = aVar4.b(applicationContext5);
    }

    private final void q() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("onNotificationButtonPressed");
        intentFilter.addAction("onNotificationPressed");
        intentFilter.addAction("onNotificationDismissed");
        if (Build.VERSION.SDK_INT >= 33) {
            registerReceiver(this.f9512l, intentFilter, 4);
        } else {
            registerReceiver(this.f9512l, intentFilter);
        }
    }

    private final void r() {
        PowerManager.WakeLock wakeLock = this.f9510j;
        if (wakeLock != null && wakeLock.isHeld()) {
            wakeLock.release();
            this.f9510j = null;
        }
        WifiManager.WifiLock wifiLock = this.f9511k;
        if (wifiLock != null && wifiLock.isHeld()) {
            wifiLock.release();
            this.f9511k = null;
        }
    }

    private final void s() {
        Object value;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            i();
        }
        i iVar = this.f9504d;
        if (iVar == null) {
            m.s("notificationOptions");
            iVar = null;
        }
        int i11 = iVar.i();
        Notification h10 = h();
        if (i10 >= 29) {
            startForeground(i11, h10, -1);
        } else {
            startForeground(i11, h10);
        }
        r();
        d();
        p pVar = f9497o;
        do {
            value = pVar.getValue();
            ((Boolean) value).booleanValue();
        } while (!pVar.b(value, Boolean.TRUE));
    }

    private final void t() {
        Object value;
        r();
        stopForeground(true);
        stopSelf();
        p pVar = f9497o;
        do {
            value = pVar.getValue();
            ((Boolean) value).booleanValue();
        } while (!pVar.b(value, Boolean.FALSE));
    }

    private final void u() {
        unregisterReceiver(this.f9512l);
    }

    private final void v() {
        o oVar = f9499q;
        if (oVar != null) {
            e eVar = this.f9502b;
            if (eVar == null) {
                m.s("foregroundTaskOptions");
                eVar = null;
            }
            oVar.B(eVar.e());
        }
    }

    private final void w() {
        i iVar = this.f9504d;
        if (iVar == null) {
            m.s("notificationOptions");
            iVar = null;
        }
        int i10 = iVar.i();
        Notification h10 = h();
        NotificationManager notificationManager = (NotificationManager) getSystemService(NotificationManager.class);
        if (notificationManager != null) {
            notificationManager.notify(i10, h10);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        q();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        j();
        t();
        u();
        qb.a aVar = this.f9501a;
        if (aVar == null) {
            m.s("foregroundServiceStatus");
            aVar = null;
        }
        boolean b10 = aVar.b();
        boolean a10 = sb.b.f29577a.a(this);
        if (!b10 && !a10) {
            Log.e(f9496n, "The service was terminated due to an unexpected problem. The service will restart after 5 seconds.");
            RestartReceiver.f9514a.b(this, AbstractSession.DEFAULT_TIMEOUT_FOR_ASYNCHRONOUS_MESSAGES_IN_TRANSMIT);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0052, code lost:
        if (r6.equals("com.pravera.flutter_foreground_task.action.reboot") == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005a, code lost:
        if (r6.equals("com.pravera.flutter_foreground_task.action.restart") == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005e, code lost:
        s();
        g();
        android.util.Log.d(com.pravera.flutter_foreground_task.service.ForegroundService.f9496n, "The service has been restarted by Android OS.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00c5, code lost:
        if (r6.equals("com.pravera.flutter_foreground_task.action.api_restart") == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00ce, code lost:
        if (r6.equals("com.pravera.flutter_foreground_task.action.api_start") == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00d1, code lost:
        s();
        g();
     */
    @Override // android.app.Service
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int onStartCommand(android.content.Intent r5, int r6, int r7) {
        /*
            r4 = this;
            r4.p()
            qb.a r6 = r4.f9501a
            java.lang.String r7 = "foregroundServiceStatus"
            r0 = 0
            if (r6 != 0) goto Le
            kotlin.jvm.internal.m.s(r7)
            r6 = r0
        Le:
            java.lang.String r6 = r6.a()
            sb.b$a r1 = sb.b.f29577a
            boolean r1 = r1.a(r4)
            java.lang.String r2 = "com.pravera.flutter_foreground_task.action.api_stop"
            boolean r2 = kotlin.jvm.internal.m.a(r6, r2)
            r3 = 2
            if (r2 == 0) goto L2a
            com.pravera.flutter_foreground_task.service.RestartReceiver$a r5 = com.pravera.flutter_foreground_task.service.RestartReceiver.f9514a
            r5.a(r4)
            r4.t()
            return r3
        L2a:
            java.lang.String r2 = "com.pravera.flutter_foreground_task.action.restart"
            if (r5 != 0) goto L43
            qb.a$a r5 = qb.a.f28650b
            r5.b(r4, r2)
            qb.a r5 = r5.a(r4)
            r4.f9501a = r5
            if (r5 != 0) goto L3f
            kotlin.jvm.internal.m.s(r7)
            r5 = r0
        L3f:
            java.lang.String r6 = r5.a()
        L43:
            int r5 = r6.hashCode()
            switch(r5) {
                case -212670797: goto Lc8;
                case 481521696: goto Lbf;
                case 2050777240: goto L6d;
                case 2071663685: goto L56;
                case 2144527023: goto L4c;
                default: goto L4a;
            }
        L4a:
            goto Ld7
        L4c:
            java.lang.String r5 = "com.pravera.flutter_foreground_task.action.reboot"
            boolean r5 = r6.equals(r5)
            if (r5 != 0) goto L5e
            goto Ld7
        L56:
            boolean r5 = r6.equals(r2)
            if (r5 != 0) goto L5e
            goto Ld7
        L5e:
            r4.s()
            r4.g()
            java.lang.String r5 = com.pravera.flutter_foreground_task.service.ForegroundService.f9496n
            java.lang.String r6 = "The service has been restarted by Android OS."
            android.util.Log.d(r5, r6)
            goto Ld7
        L6d:
            java.lang.String r5 = "com.pravera.flutter_foreground_task.action.api_update"
            boolean r5 = r6.equals(r5)
            if (r5 != 0) goto L77
            goto Ld7
        L77:
            r4.w()
            qb.b r5 = r4.f9507g
            if (r5 == 0) goto L83
            java.lang.Long r5 = r5.a()
            goto L84
        L83:
            r5 = r0
        L84:
            qb.b r6 = r4.f9503c
            if (r6 != 0) goto L8e
            java.lang.String r6 = "foregroundTaskData"
            kotlin.jvm.internal.m.s(r6)
            r6 = r0
        L8e:
            java.lang.Long r6 = r6.a()
            boolean r5 = kotlin.jvm.internal.m.a(r5, r6)
            if (r5 != 0) goto L9c
            r4.g()
            goto Ld7
        L9c:
            qb.e r5 = r4.f9506f
            if (r5 == 0) goto La5
            qb.c r5 = r5.e()
            goto La6
        La5:
            r5 = r0
        La6:
            qb.e r6 = r4.f9502b
            if (r6 != 0) goto Lb0
            java.lang.String r6 = "foregroundTaskOptions"
            kotlin.jvm.internal.m.s(r6)
            goto Lb1
        Lb0:
            r0 = r6
        Lb1:
            qb.c r6 = r0.e()
            boolean r5 = kotlin.jvm.internal.m.a(r5, r6)
            if (r5 != 0) goto Ld7
            r4.v()
            goto Ld7
        Lbf:
            java.lang.String r5 = "com.pravera.flutter_foreground_task.action.api_restart"
            boolean r5 = r6.equals(r5)
            if (r5 != 0) goto Ld1
            goto Ld7
        Lc8:
            java.lang.String r5 = "com.pravera.flutter_foreground_task.action.api_start"
            boolean r5 = r6.equals(r5)
            if (r5 != 0) goto Ld1
            goto Ld7
        Ld1:
            r4.s()
            r4.g()
        Ld7:
            if (r1 == 0) goto Lda
            goto Ldb
        Lda:
            r3 = 1
        Ldb:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pravera.flutter_foreground_task.service.ForegroundService.onStartCommand(android.content.Intent, int, int):int");
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        super.onTaskRemoved(intent);
        if (sb.b.f29577a.a(this)) {
            stopSelf();
        } else {
            RestartReceiver.f9514a.b(this, 1000);
        }
    }
}
