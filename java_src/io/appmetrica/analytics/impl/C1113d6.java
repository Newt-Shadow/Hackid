package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
/* renamed from: io.appmetrica.analytics.impl.d6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1113d6 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        EnumC1614x9 enumC1614x9;
        Boolean bool;
        Bundle readBundle = parcel.readBundle(M6.class.getClassLoader());
        Integer num = null;
        if (readBundle.containsKey("CounterReport.Source")) {
            int i10 = readBundle.getInt("CounterReport.Source");
            EnumC1614x9[] values = EnumC1614x9.values();
            int length = values.length;
            int i11 = 0;
            while (true) {
                if (i11 < length) {
                    enumC1614x9 = values[i11];
                    if (enumC1614x9.f20931a == i10) {
                        break;
                    }
                    i11++;
                } else {
                    enumC1614x9 = EnumC1614x9.NATIVE;
                    break;
                }
            }
        } else {
            enumC1614x9 = null;
        }
        C1138e6 c1138e6 = new C1138e6("", "", 0);
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        c1138e6.f19574d = readBundle.getInt("CounterReport.Type", -1);
        c1138e6.f19575e = readBundle.getInt("CounterReport.CustomType");
        c1138e6.f19572b = StringUtils.ifIsNullToDef(readBundle.getString("CounterReport.Value"), "");
        c1138e6.f19573c = readBundle.getString("CounterReport.Environment");
        c1138e6.f19571a = readBundle.getString("CounterReport.Event");
        c1138e6.f19576f = C1138e6.a(readBundle);
        c1138e6.f19577g = readBundle.getInt("CounterReport.TRUNCATED");
        c1138e6.f19578h = readBundle.getString("CounterReport.ProfileID");
        c1138e6.f19579i = readBundle.getLong("CounterReport.CreationElapsedRealtime");
        c1138e6.f19580j = readBundle.getLong("CounterReport.CreationTimestamp");
        c1138e6.f19581k = EnumC1416pa.a(Integer.valueOf(readBundle.getInt("CounterReport.UniquenessStatus")));
        c1138e6.f19582l = enumC1614x9;
        c1138e6.f19583m = readBundle.getBundle("CounterReport.Payload");
        if (readBundle.containsKey("CounterReport.AttributionIdChanged")) {
            bool = Boolean.valueOf(readBundle.getBoolean("CounterReport.AttributionIdChanged"));
        } else {
            bool = null;
        }
        c1138e6.f19584n = bool;
        if (readBundle.containsKey("CounterReport.OpenId")) {
            num = Integer.valueOf(readBundle.getInt("CounterReport.OpenId"));
        }
        c1138e6.f19585o = num;
        c1138e6.f19586p = CollectionUtils.bundleToMap(readBundle.getBundle("CounterReport.Extras"));
        return c1138e6;
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i10) {
        return new C1138e6[i10];
    }
}
