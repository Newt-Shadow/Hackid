package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import com.arthenica.ffmpegkit.Chapter;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class F7 implements Converter {

    /* renamed from: a  reason: collision with root package name */
    public final C7 f18216a;

    public F7() {
        this(null, 1, null);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final ContentValues fromModel(E7 e72) {
        ContentValues contentValues = new ContentValues();
        Long l10 = e72.f18144a;
        if (l10 != null) {
            contentValues.put(Chapter.KEY_ID, Long.valueOf(l10.longValue()));
        }
        Ik ik = e72.f18145b;
        if (ik != null) {
            contentValues.put("type", Integer.valueOf(ik.f18409a));
        }
        String str = e72.f18146c;
        if (str != null) {
            contentValues.put("report_request_parameters", str);
        }
        C7 c72 = this.f18216a;
        contentValues.put("session_description", MessageNano.toByteArray(c72.f18042a.fromModel(e72.f18147d)));
        return contentValues;
    }

    public F7(C7 c72) {
        this.f18216a = c72;
    }

    public /* synthetic */ F7(C7 c72, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new C7(null, 1, null) : c72);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final E7 toModel(ContentValues contentValues) {
        Ik ik;
        int intValue;
        Long asLong = contentValues.getAsLong(Chapter.KEY_ID);
        Integer asInteger = contentValues.getAsInteger("type");
        if (asInteger != null) {
            Integer valueOf = Integer.valueOf(asInteger.intValue());
            ik = Ik.FOREGROUND;
            if (valueOf != null && (intValue = valueOf.intValue()) != 0 && intValue == 1) {
                ik = Ik.BACKGROUND;
            }
        } else {
            ik = null;
        }
        return new E7(asLong, ik, contentValues.getAsString("report_request_parameters"), this.f18216a.toModel(contentValues.getAsByteArray("session_description")));
    }
}
