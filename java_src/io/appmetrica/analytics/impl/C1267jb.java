package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.jb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1267jb implements Parcelable {
    public static final Parcelable.Creator<C1267jb> CREATOR = new C1243ib();

    /* renamed from: a  reason: collision with root package name */
    public final ResultReceiver f19849a;

    /* renamed from: b  reason: collision with root package name */
    public final List f19850b;

    /* renamed from: c  reason: collision with root package name */
    public final HashMap f19851c;

    public C1267jb(M6 m62, List list, Map map) {
        HashMap hashMap;
        this.f19850b = list;
        this.f19849a = m62;
        if (map == null) {
            hashMap = new HashMap();
        } else {
            hashMap = new HashMap(map);
        }
        this.f19851c = hashMap;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("io.appmetrica.analytics.internal.CounterConfiguration.receiver", this.f19849a);
        if (this.f19850b != null) {
            bundle.putStringArrayList("io.appmetrica.analytics.internal.CounterConfiguration.identifiersList", new ArrayList<>(this.f19850b));
        }
        HashMap hashMap = this.f19851c;
        if (hashMap != null) {
            bundle.putString("io.appmetrica.analytics.internal.CounterConfiguration.clidsForVerification", AbstractC1477rm.a((Map) hashMap));
        }
        parcel.writeBundle(bundle);
    }

    public C1267jb(Parcel parcel) {
        Bundle readBundle = parcel.readBundle(M6.class.getClassLoader());
        if (readBundle != null) {
            this.f19849a = (ResultReceiver) readBundle.getParcelable("io.appmetrica.analytics.internal.CounterConfiguration.receiver");
            this.f19850b = readBundle.getStringArrayList("io.appmetrica.analytics.internal.CounterConfiguration.identifiersList");
            this.f19851c = AbstractC1477rm.a(readBundle.getString("io.appmetrica.analytics.internal.CounterConfiguration.clidsForVerification"));
            return;
        }
        this.f19851c = new HashMap();
    }
}
