package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class V0 implements Parcelable {
    public static final Parcelable.Creator<V0> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    private ResultReceiver f11627a;

    /* renamed from: b  reason: collision with root package name */
    private List<String> f11628b;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, String> f11629c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements id.a {
        a(V0 v02) {
        }

        @Override // id.a
        public Object invoke() {
            return F0.g().d();
        }
    }

    /* loaded from: classes2.dex */
    class b implements Parcelable.Creator<V0> {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        public V0 createFromParcel(Parcel parcel) {
            return new V0(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public V0[] newArray(int i10) {
            return new V0[i10];
        }
    }

    public V0(List<String> list, Map<String, String> map, ResultReceiver resultReceiver) {
        HashMap hashMap;
        this.f11628b = list;
        this.f11627a = resultReceiver;
        if (map == null) {
            hashMap = new HashMap();
        } else {
            hashMap = new HashMap(map);
        }
        this.f11629c = hashMap;
    }

    public boolean a(C0787pi c0787pi) {
        return C0737ni.a(c0787pi, this.f11628b, this.f11629c, new a(this));
    }

    public List<String> b() {
        return this.f11628b;
    }

    public ResultReceiver c() {
        return this.f11627a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.yandex.metrica.CounterConfiguration.receiver", this.f11627a);
        if (this.f11628b != null) {
            bundle.putStringArrayList("com.yandex.metrica.CounterConfiguration.identifiersList", new ArrayList<>(this.f11628b));
        }
        Map<String, String> map = this.f11629c;
        if (map != null) {
            bundle.putString("com.yandex.metrica.CounterConfiguration.clidsForVerification", Tl.c(map));
        }
        parcel.writeBundle(bundle);
    }

    public Map<String, String> a() {
        return this.f11629c;
    }

    protected V0(Parcel parcel) {
        Bundle readBundle = parcel.readBundle(ResultReceiverC0520f0.class.getClassLoader());
        if (readBundle != null) {
            this.f11627a = (ResultReceiver) readBundle.getParcelable("com.yandex.metrica.CounterConfiguration.receiver");
            this.f11628b = readBundle.getStringArrayList("com.yandex.metrica.CounterConfiguration.identifiersList");
            this.f11629c = Tl.a(readBundle.getString("com.yandex.metrica.CounterConfiguration.clidsForVerification"));
            return;
        }
        this.f11629c = new HashMap();
    }
}
