package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Person;
import android.app.RemoteInput;
import android.content.Context;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.app.k;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
class n implements j {

    /* renamed from: a  reason: collision with root package name */
    private final Context f1959a;

    /* renamed from: b  reason: collision with root package name */
    private final Notification.Builder f1960b;

    /* renamed from: c  reason: collision with root package name */
    private final k.e f1961c;

    /* renamed from: d  reason: collision with root package name */
    private RemoteViews f1962d;

    /* renamed from: e  reason: collision with root package name */
    private RemoteViews f1963e;

    /* renamed from: f  reason: collision with root package name */
    private final List f1964f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private final Bundle f1965g = new Bundle();

    /* renamed from: h  reason: collision with root package name */
    private int f1966h;

    /* renamed from: i  reason: collision with root package name */
    private RemoteViews f1967i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {
        static Notification.Builder a(Notification.Builder builder, Notification.Action action) {
            return builder.addAction(action);
        }

        static Notification.Action.Builder b(Notification.Action.Builder builder, Bundle bundle) {
            return builder.addExtras(bundle);
        }

        static Notification.Action.Builder c(Notification.Action.Builder builder, RemoteInput remoteInput) {
            return builder.addRemoteInput(remoteInput);
        }

        static Notification.Action d(Notification.Action.Builder builder) {
            return builder.build();
        }

        static String e(Notification notification) {
            return notification.getGroup();
        }

        static Notification.Builder f(Notification.Builder builder, String str) {
            return builder.setGroup(str);
        }

        static Notification.Builder g(Notification.Builder builder, boolean z10) {
            return builder.setGroupSummary(z10);
        }

        static Notification.Builder h(Notification.Builder builder, boolean z10) {
            return builder.setLocalOnly(z10);
        }

        static Notification.Builder i(Notification.Builder builder, String str) {
            return builder.setSortKey(str);
        }
    }

    /* loaded from: classes.dex */
    static class b {
        static Notification.Builder a(Notification.Builder builder, String str) {
            return builder.addPerson(str);
        }

        static Notification.Builder b(Notification.Builder builder, String str) {
            return builder.setCategory(str);
        }

        static Notification.Builder c(Notification.Builder builder, int i10) {
            return builder.setColor(i10);
        }

        static Notification.Builder d(Notification.Builder builder, Notification notification) {
            return builder.setPublicVersion(notification);
        }

        static Notification.Builder e(Notification.Builder builder, Uri uri, Object obj) {
            return builder.setSound(uri, (AudioAttributes) obj);
        }

        static Notification.Builder f(Notification.Builder builder, int i10) {
            return builder.setVisibility(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class c {
        static Notification.Action.Builder a(Icon icon, CharSequence charSequence, PendingIntent pendingIntent) {
            return new Notification.Action.Builder(icon, charSequence, pendingIntent);
        }

        static Notification.Builder b(Notification.Builder builder, Icon icon) {
            return builder.setLargeIcon(icon);
        }

        static Notification.Builder c(Notification.Builder builder, Object obj) {
            return builder.setSmallIcon((Icon) obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class d {
        static Notification.Action.Builder a(Notification.Action.Builder builder, boolean z10) {
            return builder.setAllowGeneratedReplies(z10);
        }

        static Notification.Builder b(Notification.Builder builder, RemoteViews remoteViews) {
            return builder.setCustomBigContentView(remoteViews);
        }

        static Notification.Builder c(Notification.Builder builder, RemoteViews remoteViews) {
            return builder.setCustomContentView(remoteViews);
        }

        static Notification.Builder d(Notification.Builder builder, RemoteViews remoteViews) {
            return builder.setCustomHeadsUpContentView(remoteViews);
        }

        static Notification.Builder e(Notification.Builder builder, CharSequence[] charSequenceArr) {
            return builder.setRemoteInputHistory(charSequenceArr);
        }
    }

    /* loaded from: classes.dex */
    static class e {
        static Notification.Builder a(Context context, String str) {
            return new Notification.Builder(context, str);
        }

        static Notification.Builder b(Notification.Builder builder, int i10) {
            return builder.setBadgeIconType(i10);
        }

        static Notification.Builder c(Notification.Builder builder, boolean z10) {
            return builder.setColorized(z10);
        }

        static Notification.Builder d(Notification.Builder builder, int i10) {
            return builder.setGroupAlertBehavior(i10);
        }

        static Notification.Builder e(Notification.Builder builder, CharSequence charSequence) {
            return builder.setSettingsText(charSequence);
        }

        static Notification.Builder f(Notification.Builder builder, String str) {
            return builder.setShortcutId(str);
        }

        static Notification.Builder g(Notification.Builder builder, long j10) {
            return builder.setTimeoutAfter(j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class f {
        static Notification.Builder a(Notification.Builder builder, Person person) {
            return builder.addPerson(person);
        }

        static Notification.Action.Builder b(Notification.Action.Builder builder, int i10) {
            return builder.setSemanticAction(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class g {
        static Notification.Builder a(Notification.Builder builder, boolean z10) {
            return builder.setAllowSystemGeneratedContextualActions(z10);
        }

        static Notification.Builder b(Notification.Builder builder, Notification.BubbleMetadata bubbleMetadata) {
            return builder.setBubbleMetadata(bubbleMetadata);
        }

        static Notification.Action.Builder c(Notification.Action.Builder builder, boolean z10) {
            return builder.setContextual(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class h {
        static Notification.Action.Builder a(Notification.Action.Builder builder, boolean z10) {
            return builder.setAuthenticationRequired(z10);
        }

        static Notification.Builder b(Notification.Builder builder, int i10) {
            return builder.setForegroundServiceBehavior(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(k.e eVar) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        Icon v10;
        List<String> list;
        int i10;
        this.f1961c = eVar;
        Context context = eVar.f1907a;
        this.f1959a = context;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1960b = e.a(context, eVar.L);
        } else {
            this.f1960b = new Notification.Builder(eVar.f1907a);
        }
        Notification notification = eVar.S;
        Notification.Builder lights = this.f1960b.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, eVar.f1915i).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS);
        if ((notification.flags & 2) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        Notification.Builder ongoing = lights.setOngoing(z10);
        if ((notification.flags & 8) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        Notification.Builder onlyAlertOnce = ongoing.setOnlyAlertOnce(z11);
        if ((notification.flags & 16) != 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        Notification.Builder deleteIntent = onlyAlertOnce.setAutoCancel(z12).setDefaults(notification.defaults).setContentTitle(eVar.f1911e).setContentText(eVar.f1912f).setContentInfo(eVar.f1917k).setContentIntent(eVar.f1913g).setDeleteIntent(notification.deleteIntent);
        PendingIntent pendingIntent = eVar.f1914h;
        if ((notification.flags & 128) != 0) {
            z13 = true;
        } else {
            z13 = false;
        }
        deleteIntent.setFullScreenIntent(pendingIntent, z13).setNumber(eVar.f1918l).setProgress(eVar.f1927u, eVar.f1928v, eVar.f1929w);
        Notification.Builder builder = this.f1960b;
        IconCompat iconCompat = eVar.f1916j;
        if (iconCompat == null) {
            v10 = null;
        } else {
            v10 = iconCompat.v(context);
        }
        c.b(builder, v10);
        this.f1960b.setSubText(eVar.f1924r).setUsesChronometer(eVar.f1921o).setPriority(eVar.f1919m);
        k.j jVar = eVar.f1923q;
        if (jVar instanceof k.f) {
            for (k.a aVar : ((k.f) jVar).n()) {
                b(aVar);
            }
        } else {
            Iterator it = eVar.f1908b.iterator();
            while (it.hasNext()) {
                b((k.a) it.next());
            }
        }
        Bundle bundle = eVar.E;
        if (bundle != null) {
            this.f1965g.putAll(bundle);
        }
        int i11 = Build.VERSION.SDK_INT;
        this.f1962d = eVar.I;
        this.f1963e = eVar.J;
        this.f1960b.setShowWhen(eVar.f1920n);
        a.h(this.f1960b, eVar.A);
        a.f(this.f1960b, eVar.f1930x);
        a.i(this.f1960b, eVar.f1932z);
        a.g(this.f1960b, eVar.f1931y);
        this.f1966h = eVar.P;
        b.b(this.f1960b, eVar.D);
        b.c(this.f1960b, eVar.F);
        b.f(this.f1960b, eVar.G);
        b.d(this.f1960b, eVar.H);
        b.e(this.f1960b, notification.sound, notification.audioAttributes);
        if (i11 < 28) {
            list = e(g(eVar.f1909c), eVar.V);
        } else {
            list = eVar.V;
        }
        if (list != null && !list.isEmpty()) {
            for (String str : list) {
                b.a(this.f1960b, str);
            }
        }
        this.f1967i = eVar.K;
        if (eVar.f1910d.size() > 0) {
            Bundle bundle2 = eVar.e().getBundle("android.car.EXTENSIONS");
            bundle2 = bundle2 == null ? new Bundle() : bundle2;
            Bundle bundle3 = new Bundle(bundle2);
            Bundle bundle4 = new Bundle();
            for (int i12 = 0; i12 < eVar.f1910d.size(); i12++) {
                bundle4.putBundle(Integer.toString(i12), o.a((k.a) eVar.f1910d.get(i12)));
            }
            bundle2.putBundle("invisible_actions", bundle4);
            bundle3.putBundle("invisible_actions", bundle4);
            eVar.e().putBundle("android.car.EXTENSIONS", bundle2);
            this.f1965g.putBundle("android.car.EXTENSIONS", bundle3);
        }
        int i13 = Build.VERSION.SDK_INT;
        Object obj = eVar.U;
        if (obj != null) {
            c.c(this.f1960b, obj);
        }
        this.f1960b.setExtras(eVar.E);
        d.e(this.f1960b, eVar.f1926t);
        RemoteViews remoteViews = eVar.I;
        if (remoteViews != null) {
            d.c(this.f1960b, remoteViews);
        }
        RemoteViews remoteViews2 = eVar.J;
        if (remoteViews2 != null) {
            d.b(this.f1960b, remoteViews2);
        }
        RemoteViews remoteViews3 = eVar.K;
        if (remoteViews3 != null) {
            d.d(this.f1960b, remoteViews3);
        }
        if (i13 >= 26) {
            e.b(this.f1960b, eVar.M);
            e.e(this.f1960b, eVar.f1925s);
            e.f(this.f1960b, eVar.N);
            e.g(this.f1960b, eVar.O);
            e.d(this.f1960b, eVar.P);
            if (eVar.C) {
                e.c(this.f1960b, eVar.B);
            }
            if (!TextUtils.isEmpty(eVar.L)) {
                this.f1960b.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i13 >= 28) {
            Iterator it2 = eVar.f1909c.iterator();
            while (it2.hasNext()) {
                f.a(this.f1960b, ((t) it2.next()).j());
            }
        }
        int i14 = Build.VERSION.SDK_INT;
        if (i14 >= 29) {
            g.a(this.f1960b, eVar.R);
            g.b(this.f1960b, k.d.a(null));
        }
        if (i14 >= 31 && (i10 = eVar.Q) != 0) {
            h.b(this.f1960b, i10);
        }
        if (eVar.T) {
            if (this.f1961c.f1931y) {
                this.f1966h = 2;
            } else {
                this.f1966h = 1;
            }
            this.f1960b.setVibrate(null);
            this.f1960b.setSound(null);
            int i15 = notification.defaults & (-2) & (-3);
            notification.defaults = i15;
            this.f1960b.setDefaults(i15);
            if (i14 >= 26) {
                if (TextUtils.isEmpty(this.f1961c.f1930x)) {
                    a.f(this.f1960b, "silent");
                }
                e.d(this.f1960b, this.f1966h);
            }
        }
    }

    private void b(k.a aVar) {
        Icon icon;
        Bundle bundle;
        IconCompat d10 = aVar.d();
        if (d10 != null) {
            icon = d10.u();
        } else {
            icon = null;
        }
        Notification.Action.Builder a10 = c.a(icon, aVar.h(), aVar.a());
        if (aVar.e() != null) {
            for (RemoteInput remoteInput : v.b(aVar.e())) {
                a.c(a10, remoteInput);
            }
        }
        if (aVar.c() != null) {
            bundle = new Bundle(aVar.c());
        } else {
            bundle = new Bundle();
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", aVar.b());
        int i10 = Build.VERSION.SDK_INT;
        d.a(a10, aVar.b());
        bundle.putInt("android.support.action.semanticAction", aVar.f());
        if (i10 >= 28) {
            f.b(a10, aVar.f());
        }
        if (i10 >= 29) {
            g.c(a10, aVar.j());
        }
        if (i10 >= 31) {
            h.a(a10, aVar.i());
        }
        bundle.putBoolean("android.support.action.showsUserInterface", aVar.g());
        a.b(a10, bundle);
        a.a(this.f1960b, a.d(a10));
    }

    private static List e(List list, List list2) {
        if (list == null) {
            return list2;
        }
        if (list2 == null) {
            return list;
        }
        r.b bVar = new r.b(list.size() + list2.size());
        bVar.addAll(list);
        bVar.addAll(list2);
        return new ArrayList(bVar);
    }

    private static List g(List list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((t) it.next()).i());
        }
        return arrayList;
    }

    private void h(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults = notification.defaults & (-2) & (-3);
    }

    @Override // androidx.core.app.j
    public Notification.Builder a() {
        return this.f1960b;
    }

    public Notification c() {
        RemoteViews remoteViews;
        Bundle a10;
        RemoteViews k10;
        RemoteViews i10;
        k.j jVar = this.f1961c.f1923q;
        if (jVar != null) {
            jVar.b(this);
        }
        if (jVar != null) {
            remoteViews = jVar.j(this);
        } else {
            remoteViews = null;
        }
        Notification d10 = d();
        if (remoteViews != null) {
            d10.contentView = remoteViews;
        } else {
            RemoteViews remoteViews2 = this.f1961c.I;
            if (remoteViews2 != null) {
                d10.contentView = remoteViews2;
            }
        }
        if (jVar != null && (i10 = jVar.i(this)) != null) {
            d10.bigContentView = i10;
        }
        if (jVar != null && (k10 = this.f1961c.f1923q.k(this)) != null) {
            d10.headsUpContentView = k10;
        }
        if (jVar != null && (a10 = k.a(d10)) != null) {
            jVar.a(a10);
        }
        return d10;
    }

    protected Notification d() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.f1960b.build();
        }
        Notification build = this.f1960b.build();
        if (this.f1966h != 0) {
            if (a.e(build) != null && (build.flags & 512) != 0 && this.f1966h == 2) {
                h(build);
            }
            if (a.e(build) != null && (build.flags & 512) == 0 && this.f1966h == 1) {
                h(build);
            }
        }
        return build;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Context f() {
        return this.f1959a;
    }
}
