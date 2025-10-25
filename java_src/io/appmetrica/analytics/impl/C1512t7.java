package io.appmetrica.analytics.impl;

import android.content.Context;
import android.location.Location;
import android.net.ConnectivityManager;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.t7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1512t7 {

    /* renamed from: a  reason: collision with root package name */
    public final Context f20652a;

    /* renamed from: b  reason: collision with root package name */
    public final int f20653b;

    /* renamed from: c  reason: collision with root package name */
    public final C1091c9 f20654c;

    /* renamed from: d  reason: collision with root package name */
    public final I8 f20655d;

    /* renamed from: e  reason: collision with root package name */
    public final C1057b0 f20656e;

    /* renamed from: f  reason: collision with root package name */
    public final S8 f20657f;

    /* renamed from: g  reason: collision with root package name */
    public final C1587w7 f20658g;

    /* renamed from: h  reason: collision with root package name */
    public final C1138e6 f20659h;

    public C1512t7(Context context, Gk gk, int i10, C1091c9 c1091c9, I8 i82, C1057b0 c1057b0, S8 s82, C1587w7 c1587w7) {
        this.f20652a = context;
        this.f20653b = i10;
        this.f20654c = c1091c9;
        this.f20655d = i82;
        this.f20656e = c1057b0;
        this.f20657f = s82;
        this.f20658g = c1587w7;
        this.f20659h = i82.f18378a;
    }

    public static String b() {
        kotlin.jvm.internal.c0 c0Var = new kotlin.jvm.internal.c0();
        Um A = C1665za.E.A();
        C1487s7 c1487s7 = new C1487s7(c0Var);
        synchronized (A) {
            A.f19098b.a(c1487s7);
        }
        return (String) c0Var.f24971a;
    }

    public final C1413p7 a() {
        JSONObject optJSONObject;
        long j10;
        no noVar;
        Double d10;
        Double d11;
        Long l10;
        Integer num;
        Integer num2;
        Integer num3;
        Integer num4;
        String str;
        Integer valueOf = Integer.valueOf(this.f20659h.f19575e);
        String name = this.f20659h.getName();
        String value = this.f20659h.getValue();
        C1091c9 c1091c9 = this.f20654c;
        int i10 = this.f20653b;
        Cdo cdo = c1091c9.f19472a.f19508a;
        synchronized (cdo) {
            optJSONObject = cdo.f19546a.a().optJSONObject("numbers_of_type");
        }
        if (optJSONObject != null) {
            j10 = optJSONObject.optLong(String.valueOf(i10));
        } else {
            j10 = 0;
        }
        c1091c9.f19472a.a(i10, 1 + j10);
        Long valueOf2 = Long.valueOf(j10);
        C1587w7 c1587w7 = this.f20658g;
        c1587w7.getClass();
        Vb l11 = C1665za.E.l();
        Location userLocation = l11.getUserLocation();
        String str2 = null;
        if (userLocation != null) {
            int i11 = no.f20237b;
            Location location = new Location(userLocation);
            String provider = location.getProvider();
            location.setProvider("");
            noVar = new no(location, provider);
        } else {
            Location systemLocation = l11.getSystemLocation();
            if (systemLocation != null) {
                noVar = new no(new Location(systemLocation), "");
            } else {
                noVar = null;
            }
        }
        boolean z10 = c1587w7.f20851a.f20037d;
        if (noVar != null) {
            d10 = Double.valueOf(noVar.getLatitude());
        } else {
            d10 = null;
        }
        if (noVar != null) {
            d11 = Double.valueOf(noVar.getLongitude());
        } else {
            d11 = null;
        }
        if (noVar != null) {
            l10 = Long.valueOf(noVar.getTime());
        } else {
            l10 = null;
        }
        if (noVar != null) {
            num = Integer.valueOf((int) noVar.getAccuracy());
        } else {
            num = null;
        }
        if (noVar != null) {
            num2 = Integer.valueOf((int) noVar.getBearing());
        } else {
            num2 = null;
        }
        if (noVar != null) {
            num3 = Integer.valueOf((int) noVar.getSpeed());
        } else {
            num3 = null;
        }
        if (noVar != null) {
            num4 = Integer.valueOf((int) noVar.getAltitude());
        } else {
            num4 = null;
        }
        if (noVar != null) {
            str = noVar.getProvider();
        } else {
            str = null;
        }
        if (noVar != null) {
            str2 = noVar.f20238a;
        }
        C1537u7 c1537u7 = new C1537u7(Boolean.valueOf(z10), d11, d10, num4, num2, num, num3, l10, str, str2);
        String str3 = this.f20659h.f19573c;
        C1057b0 c1057b0 = this.f20656e;
        String str4 = c1057b0.f19415a;
        Long valueOf3 = Long.valueOf(c1057b0.f19416b);
        Integer valueOf4 = Integer.valueOf(this.f20659h.f19577g);
        Context context = this.f20652a;
        SafePackageManager safePackageManager = Ee.f18177a;
        Integer valueOf5 = Integer.valueOf(((Integer) Ee.f18180d.a((De) SystemServiceUtils.accessSystemServiceSafelyOrDefault((ConnectivityManager) context.getSystemService("connectivity"), "getting connection type", "ConnectivityManager", De.UNDEFINED, new Ce()))).intValue());
        String b10 = b();
        R8 r82 = this.f20655d.f18379b;
        C1138e6 c1138e6 = this.f20659h;
        return new C1413p7(valueOf, name, value, valueOf2, c1537u7, str3, str4, valueOf3, valueOf4, valueOf5, b10, r82, c1138e6.f19578h, c1138e6.f19581k, c1138e6.f19582l, c1138e6.f19584n, c1138e6.f19585o, this.f20657f.fromModel(c1138e6.f19586p));
    }

    public /* synthetic */ C1512t7(Context context, Gk gk, int i10, C1091c9 c1091c9, I8 i82, C1323lh c1323lh, C1057b0 c1057b0) {
        this(context, gk, i10, c1091c9, i82, c1057b0, new S8(), new C1587w7(c1323lh));
    }
}
