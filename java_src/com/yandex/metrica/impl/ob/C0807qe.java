package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import com.yandex.metrica.impl.ob.C0756oc;
import com.yandex.metrica.impl.ob.E;
import io.flutter.plugins.firebase.analytics.Constants;
import org.apache.tika.metadata.ClimateForcast;
/* renamed from: com.yandex.metrica.impl.ob.qe  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0807qe {
    public final byte[] A;

    /* renamed from: a  reason: collision with root package name */
    public final String f13271a;

    /* renamed from: b  reason: collision with root package name */
    public String f13272b;

    /* renamed from: c  reason: collision with root package name */
    public final Integer f13273c;

    /* renamed from: d  reason: collision with root package name */
    public final Integer f13274d;

    /* renamed from: e  reason: collision with root package name */
    public final Integer f13275e;

    /* renamed from: f  reason: collision with root package name */
    public final Long f13276f;

    /* renamed from: g  reason: collision with root package name */
    public final String f13277g;

    /* renamed from: h  reason: collision with root package name */
    public final String f13278h;

    /* renamed from: i  reason: collision with root package name */
    public final String f13279i;

    /* renamed from: j  reason: collision with root package name */
    public final EnumC0396a1 f13280j;

    /* renamed from: k  reason: collision with root package name */
    public final Integer f13281k;

    /* renamed from: l  reason: collision with root package name */
    public final String f13282l;

    /* renamed from: m  reason: collision with root package name */
    public final String f13283m;

    /* renamed from: n  reason: collision with root package name */
    public final Integer f13284n;

    /* renamed from: o  reason: collision with root package name */
    public final Integer f13285o;

    /* renamed from: p  reason: collision with root package name */
    public final String f13286p;

    /* renamed from: q  reason: collision with root package name */
    public final String f13287q;

    /* renamed from: r  reason: collision with root package name */
    public final Em f13288r;

    /* renamed from: s  reason: collision with root package name */
    public final D0 f13289s;

    /* renamed from: t  reason: collision with root package name */
    public final E.b.a f13290t;

    /* renamed from: u  reason: collision with root package name */
    public final C0756oc.a f13291u;

    /* renamed from: v  reason: collision with root package name */
    public final Integer f13292v;

    /* renamed from: w  reason: collision with root package name */
    public final Integer f13293w;

    /* renamed from: x  reason: collision with root package name */
    public final EnumC0984y0 f13294x;

    /* renamed from: y  reason: collision with root package name */
    public final Boolean f13295y;

    /* renamed from: z  reason: collision with root package name */
    public final Integer f13296z;

    public C0807qe(ContentValues contentValues) {
        EnumC0396a1 a10;
        Integer asInteger = contentValues.getAsInteger("type");
        if (asInteger == null) {
            a10 = null;
        } else {
            a10 = EnumC0396a1.a(asInteger.intValue());
        }
        this.f13280j = a10;
        this.f13281k = contentValues.getAsInteger("custom_type");
        this.f13271a = contentValues.getAsString(Constants.NAME);
        this.f13272b = contentValues.getAsString("value");
        this.f13276f = contentValues.getAsLong(FFmpegKitFlutterPlugin.KEY_STATISTICS_TIME);
        this.f13273c = contentValues.getAsInteger("number");
        this.f13274d = contentValues.getAsInteger("global_number");
        this.f13275e = contentValues.getAsInteger("number_of_type");
        this.f13278h = contentValues.getAsString("cell_info");
        this.f13277g = contentValues.getAsString("location_info");
        this.f13279i = contentValues.getAsString("wifi_network_info");
        this.f13282l = contentValues.getAsString("error_environment");
        this.f13283m = contentValues.getAsString("user_info");
        this.f13284n = contentValues.getAsInteger("truncated");
        this.f13285o = contentValues.getAsInteger("connection_type");
        this.f13286p = contentValues.getAsString("cellular_connection_type");
        this.f13287q = contentValues.getAsString("profile_id");
        this.f13288r = Em.a(contentValues.getAsInteger("encrypting_mode"));
        this.f13289s = D0.a(contentValues.getAsInteger("first_occurrence_status"));
        this.f13290t = E.b.a.a(contentValues.getAsInteger("battery_charge_type"));
        this.f13291u = C0756oc.a.a(contentValues.getAsString("collection_mode"));
        this.f13292v = contentValues.getAsInteger("has_omitted_data");
        this.f13293w = contentValues.getAsInteger("call_state");
        Integer asInteger2 = contentValues.getAsInteger(ClimateForcast.SOURCE);
        this.f13294x = asInteger2 != null ? EnumC0984y0.a(asInteger2.intValue()) : null;
        this.f13295y = contentValues.getAsBoolean("attribution_id_changed");
        this.f13296z = contentValues.getAsInteger("open_id");
        this.A = contentValues.getAsByteArray("extras");
    }
}
