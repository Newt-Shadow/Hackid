package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* renamed from: io.appmetrica.analytics.impl.r7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1462r7 implements Converter {

    /* renamed from: a  reason: collision with root package name */
    public final C1388o7 f20498a;

    public C1462r7() {
        this(null, 1, null);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final ContentValues fromModel(C1438q7 c1438q7) {
        ContentValues contentValues = new ContentValues();
        Long l10 = c1438q7.f20417a;
        if (l10 != null) {
            contentValues.put("session_id", Long.valueOf(l10.longValue()));
        }
        Ik ik = c1438q7.f20418b;
        if (ik != null) {
            contentValues.put("session_type", Integer.valueOf(ik.f18409a));
        }
        Long l11 = c1438q7.f20419c;
        if (l11 != null) {
            contentValues.put("number_in_session", Long.valueOf(l11.longValue()));
        }
        EnumC1367nb enumC1367nb = c1438q7.f20420d;
        if (enumC1367nb != null) {
            contentValues.put("type", Integer.valueOf(enumC1367nb.f20196a));
        }
        Long l12 = c1438q7.f20421e;
        if (l12 != null) {
            contentValues.put("global_number", Long.valueOf(l12.longValue()));
        }
        Long l13 = c1438q7.f20422f;
        if (l13 != null) {
            contentValues.put(FFmpegKitFlutterPlugin.KEY_STATISTICS_TIME, Long.valueOf(l13.longValue()));
        }
        C1388o7 c1388o7 = this.f20498a;
        contentValues.put("event_description", MessageNano.toByteArray(c1388o7.f20281a.fromModel(c1438q7.f20423g)));
        return contentValues;
    }

    public C1462r7(C1388o7 c1388o7) {
        this.f20498a = c1388o7;
    }

    public /* synthetic */ C1462r7(C1388o7 c1388o7, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new C1388o7(null, 1, null) : c1388o7);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1438q7 toModel(ContentValues contentValues) {
        Ik ik;
        int intValue;
        Long asLong = contentValues.getAsLong("session_id");
        Integer asInteger = contentValues.getAsInteger("session_type");
        if (asInteger != null) {
            Integer valueOf = Integer.valueOf(asInteger.intValue());
            ik = Ik.FOREGROUND;
            if (valueOf != null && (intValue = valueOf.intValue()) != 0 && intValue == 1) {
                ik = Ik.BACKGROUND;
            }
        } else {
            ik = null;
        }
        Long asLong2 = contentValues.getAsLong("number_in_session");
        Integer asInteger2 = contentValues.getAsInteger("type");
        return new C1438q7(asLong, ik, asLong2, asInteger2 != null ? EnumC1367nb.a(asInteger2.intValue()) : null, contentValues.getAsLong("global_number"), contentValues.getAsLong(FFmpegKitFlutterPlugin.KEY_STATISTICS_TIME), this.f20498a.toModel(contentValues.getAsByteArray("event_description")));
    }
}
