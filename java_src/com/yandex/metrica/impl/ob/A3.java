package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.ResultReceiver;
import android.text.TextUtils;
import com.yandex.metrica.YandexMetrica;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes2.dex */
public class A3 implements Parcelable {

    /* renamed from: a  reason: collision with root package name */
    private final ContentValues f9697a;

    /* renamed from: b  reason: collision with root package name */
    private ResultReceiver f9698b;

    /* renamed from: c  reason: collision with root package name */
    public static final String f9696c = UUID.randomUUID().toString();
    public static final Parcelable.Creator<A3> CREATOR = new a();

    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<A3> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public A3 createFromParcel(Parcel parcel) {
            Bundle readBundle = parcel.readBundle(ResultReceiverC0520f0.class.getClassLoader());
            return new A3((ContentValues) readBundle.getParcelable("CFG_KEY_PROCESS_ENVIRONMENT"), (ResultReceiver) readBundle.getParcelable("CFG_KEY_PROCESS_ENVIRONMENT_RECEIVER"));
        }

        @Override // android.os.Parcelable.Creator
        public A3[] newArray(int i10) {
            return new A3[i10];
        }
    }

    public A3(Context context, ResultReceiver resultReceiver) {
        ContentValues contentValues = new ContentValues();
        this.f9697a = contentValues;
        contentValues.put("PROCESS_CFG_PROCESS_ID", Integer.valueOf(Process.myPid()));
        contentValues.put("PROCESS_CFG_PROCESS_SESSION_ID", f9696c);
        contentValues.put("PROCESS_CFG_SDK_API_LEVEL", Integer.valueOf(YandexMetrica.getLibraryApiLevel()));
        contentValues.put("PROCESS_CFG_PACKAGE_NAME", context.getPackageName());
        this.f9698b = resultReceiver;
    }

    public static A3 a(Bundle bundle) {
        if (bundle != null) {
            try {
                return (A3) bundle.getParcelable("PROCESS_CFG_OBJ");
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public void b(com.yandex.metrica.j jVar) {
        synchronized (this) {
            if (A2.a((Object) jVar.f14102d)) {
                List list = jVar.f14102d;
                synchronized (this) {
                    this.f9697a.put("PROCESS_CFG_CUSTOM_HOSTS", Tl.c(list));
                }
            }
            if (A2.a((Object) jVar.f14100b)) {
                Map<String, String> i10 = Tl.i(jVar.f14100b);
                synchronized (this) {
                    this.f9697a.put("PROCESS_CFG_CLIDS", Tl.g(i10));
                }
            }
            a(jVar);
        }
    }

    public ResultReceiver c() {
        return this.f9698b;
    }

    public String d() {
        return this.f9697a.getAsString("PROCESS_CFG_DISTRIBUTION_REFERRER");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String e() {
        return this.f9697a.getAsString("PROCESS_CFG_INSTALL_REFERRER_SOURCE");
    }

    public String f() {
        return this.f9697a.getAsString("PROCESS_CFG_PACKAGE_NAME");
    }

    public Integer g() {
        return this.f9697a.getAsInteger("PROCESS_CFG_PROCESS_ID");
    }

    public String h() {
        return this.f9697a.getAsString("PROCESS_CFG_PROCESS_SESSION_ID");
    }

    public int i() {
        return this.f9697a.getAsInteger("PROCESS_CFG_SDK_API_LEVEL").intValue();
    }

    public boolean j() {
        return this.f9697a.containsKey("PROCESS_CFG_CUSTOM_HOSTS");
    }

    public String toString() {
        return "ProcessConfiguration{mParamsMapping=" + this.f9697a + ", mDataResultReceiver=" + this.f9698b + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("CFG_KEY_PROCESS_ENVIRONMENT", this.f9697a);
        bundle.putParcelable("CFG_KEY_PROCESS_ENVIRONMENT_RECEIVER", this.f9698b);
        parcel.writeBundle(bundle);
    }

    private void a(com.yandex.metrica.j jVar) {
        if (A2.a((Object) jVar.f14101c)) {
            String str = jVar.f14101c;
            synchronized (this) {
                this.f9697a.put("PROCESS_CFG_DISTRIBUTION_REFERRER", str);
            }
            synchronized (this) {
                this.f9697a.put("PROCESS_CFG_INSTALL_REFERRER_SOURCE", "api");
            }
        }
    }

    public synchronized void a(List<String> list) {
        this.f9697a.put("PROCESS_CFG_CUSTOM_HOSTS", Tl.c(list));
    }

    public Map<String, String> a() {
        return Tl.d(this.f9697a.getAsString("PROCESS_CFG_CLIDS"));
    }

    public A3(A3 a32) {
        synchronized (a32) {
            this.f9697a = new ContentValues(a32.f9697a);
            this.f9698b = a32.f9698b;
        }
    }

    public synchronized void a(Map<String, String> map) {
        this.f9697a.put("PROCESS_CFG_CLIDS", Tl.g(map));
    }

    public synchronized void a(String str) {
        this.f9697a.put("PROCESS_CFG_DISTRIBUTION_REFERRER", str);
    }

    public List<String> b() {
        String asString = this.f9697a.getAsString("PROCESS_CFG_CUSTOM_HOSTS");
        if (TextUtils.isEmpty(asString)) {
            return null;
        }
        return Tl.c(asString);
    }

    public synchronized void b(String str) {
        this.f9697a.put("PROCESS_CFG_INSTALL_REFERRER_SOURCE", str);
    }

    public A3(ContentValues contentValues, ResultReceiver resultReceiver) {
        this.f9697a = contentValues == null ? new ContentValues() : contentValues;
        this.f9698b = resultReceiver;
    }
}
