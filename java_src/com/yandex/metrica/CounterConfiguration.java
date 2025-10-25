package com.yandex.metrica;

import android.content.ContentValues;
import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.yandex.metrica.impl.ob.A2;
import com.yandex.metrica.impl.ob.C0924vc;
import com.yandex.metrica.impl.ob.ResultReceiverC0520f0;
@Deprecated
/* loaded from: classes.dex */
public class CounterConfiguration implements Parcelable {
    public static final Parcelable.Creator<CounterConfiguration> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private final ContentValues f9528a;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            return new CounterConfiguration((ContentValues) parcel.readBundle(ResultReceiverC0520f0.class.getClassLoader()).getParcelable("com.yandex.metrica.CounterConfiguration.data"));
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i10) {
            return new CounterConfiguration[i10];
        }
    }

    /* loaded from: classes.dex */
    public enum b {
        MAIN("main"),
        MANUAL("manual"),
        APPMETRICA("appmetrica"),
        COMMUTATION("commutation"),
        SELF_DIAGNOSTIC_MAIN("self_diagnostic_main"),
        SELF_DIAGNOSTIC_MANUAL("self_diagnostic_manual"),
        CRASH("crash");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f9537a;

        b(String str) {
            this.f9537a = str;
        }

        public static b a(String str) {
            b[] values = values();
            for (int i10 = 0; i10 < 7; i10++) {
                b bVar = values[i10];
                if (bVar.f9537a.equals(str)) {
                    return bVar;
                }
            }
            return MAIN;
        }

        public String b() {
            return this.f9537a;
        }
    }

    public CounterConfiguration(CounterConfiguration counterConfiguration) {
        synchronized (counterConfiguration) {
            this.f9528a = new ContentValues(counterConfiguration.f9528a);
            T();
        }
    }

    private void D(j jVar) {
        if (A2.a(jVar.locationTracking)) {
            o(jVar.locationTracking.booleanValue());
        }
    }

    private void F(j jVar) {
        if (A2.a(jVar.location)) {
            c(jVar.location);
        }
    }

    private void H(j jVar) {
        if (A2.a(jVar.f14108j)) {
            boolean booleanValue = jVar.f14108j.booleanValue();
            synchronized (this) {
                this.f9528a.put("CFG_PERMISSIONS_COLLECTING", Boolean.valueOf(booleanValue));
            }
        }
    }

    private void J(j jVar) {
        if (A2.a(jVar.revenueAutoTrackingEnabled)) {
            boolean booleanValue = jVar.revenueAutoTrackingEnabled.booleanValue();
            synchronized (this) {
                this.f9528a.put("CFG_REVENUE_AUTO_TRACKING_ENABLED", Boolean.valueOf(booleanValue));
            }
        }
    }

    private void T() {
        if (this.f9528a.containsKey("CFG_REPORTER_TYPE")) {
            return;
        }
        if (this.f9528a.containsKey("CFG_MAIN_REPORTER")) {
            if (this.f9528a.getAsBoolean("CFG_MAIN_REPORTER").booleanValue()) {
                b bVar = b.MAIN;
                synchronized (this) {
                    this.f9528a.put("CFG_REPORTER_TYPE", bVar.b());
                }
            }
            t(b());
        } else if (this.f9528a.containsKey("CFG_COMMUTATION_REPORTER") && this.f9528a.getAsBoolean("CFG_COMMUTATION_REPORTER").booleanValue()) {
            b bVar2 = b.COMMUTATION;
            synchronized (this) {
                this.f9528a.put("CFG_REPORTER_TYPE", bVar2.b());
            }
        }
    }

    public static CounterConfiguration a(Bundle bundle) {
        CounterConfiguration counterConfiguration = null;
        if (bundle != null) {
            try {
                counterConfiguration = (CounterConfiguration) bundle.getParcelable("COUNTER_CFG_OBJ");
            } catch (Throwable unused) {
                return null;
            }
        }
        if (counterConfiguration == null) {
            counterConfiguration = new CounterConfiguration();
        }
        synchronized (counterConfiguration) {
            if (bundle != null) {
                if (bundle.getInt("CFG_DISPATCH_PERIOD") != 0) {
                    int i10 = bundle.getInt("CFG_DISPATCH_PERIOD");
                    synchronized (counterConfiguration) {
                        counterConfiguration.f9528a.put("CFG_DISPATCH_PERIOD", Integer.valueOf(i10));
                    }
                }
                if (bundle.getInt("CFG_SESSION_TIMEOUT") != 0) {
                    int i11 = bundle.getInt("CFG_SESSION_TIMEOUT");
                    synchronized (counterConfiguration) {
                        counterConfiguration.f9528a.put("CFG_SESSION_TIMEOUT", Integer.valueOf(i11));
                    }
                }
                if (bundle.getInt("CFG_MAX_REPORTS_COUNT") != 0) {
                    int i12 = bundle.getInt("CFG_MAX_REPORTS_COUNT");
                    synchronized (counterConfiguration) {
                        ContentValues contentValues = counterConfiguration.f9528a;
                        if (i12 <= 0) {
                            i12 = Integer.MAX_VALUE;
                        }
                        contentValues.put("CFG_MAX_REPORTS_COUNT", Integer.valueOf(i12));
                    }
                }
                if (bundle.getString("CFG_API_KEY") != null && !"-1".equals(bundle.getString("CFG_API_KEY"))) {
                    counterConfiguration.n(bundle.getString("CFG_API_KEY"));
                }
            }
        }
        return counterConfiguration;
    }

    private void e(j jVar) {
        if (A2.a(jVar.f14103e)) {
            int intValue = jVar.f14103e.intValue();
            synchronized (this) {
                this.f9528a.put("CFG_APP_VERSION_CODE", String.valueOf(intValue));
            }
        }
    }

    private void f(Boolean bool) {
        if (A2.a(bool)) {
            boolean booleanValue = bool.booleanValue();
            synchronized (this) {
                this.f9528a.put("CFG_IS_LOG_ENABLED", Boolean.valueOf(booleanValue));
            }
        }
    }

    private void g(Integer num) {
        if (A2.a(num)) {
            int intValue = num.intValue();
            synchronized (this) {
                this.f9528a.put("CFG_DISPATCH_PERIOD", Integer.valueOf(intValue));
            }
        }
    }

    private void h(String str) {
        if (A2.a((Object) str)) {
            synchronized (this) {
                this.f9528a.put("CFG_API_KEY", str);
            }
        }
    }

    private void k(j jVar) {
        if (!TextUtils.isEmpty(jVar.appVersion)) {
            String str = jVar.appVersion;
            synchronized (this) {
                this.f9528a.put("CFG_APP_VERSION", str);
            }
        }
    }

    private void l(Boolean bool) {
        if (A2.a(bool)) {
            this.f9528a.put("CFG_NATIVE_CRASHES_ENABLED", bool);
        }
    }

    private void m(Integer num) {
        if (A2.a(num)) {
            int intValue = num.intValue();
            synchronized (this) {
                ContentValues contentValues = this.f9528a;
                if (intValue <= 0) {
                    intValue = Integer.MAX_VALUE;
                }
                contentValues.put("CFG_MAX_REPORTS_COUNT", Integer.valueOf(intValue));
            }
        }
    }

    private void q(j jVar) {
        if (A2.a((Object) jVar.f14099a)) {
            String str = jVar.f14099a;
            synchronized (this) {
                ContentValues contentValues = this.f9528a;
                if (TextUtils.isEmpty(str)) {
                    str = null;
                }
                contentValues.put("CFG_DEVICE_SIZE_TYPE", str);
            }
        }
    }

    private void r(Boolean bool) {
        if (A2.a(bool)) {
            u(bool.booleanValue());
        }
    }

    private void s(Integer num) {
        if (A2.a(num)) {
            this.f9528a.put("MAX_REPORTS_IN_DB_COUNT", num);
        }
    }

    private void t(String str) {
        if ("20799a27-fa80-4b36-b2db-0f8141f24180".equals(str)) {
            b bVar = b.APPMETRICA;
            synchronized (this) {
                this.f9528a.put("CFG_REPORTER_TYPE", bVar.b());
            }
        }
        b bVar2 = b.MANUAL;
        synchronized (this) {
            this.f9528a.put("CFG_REPORTER_TYPE", bVar2.b());
        }
    }

    private void w(j jVar) {
        if (A2.a(jVar.firstActivationAsUpdate)) {
            boolean booleanValue = jVar.firstActivationAsUpdate.booleanValue();
            synchronized (this) {
                this.f9528a.put("CFG_IS_FIRST_ACTIVATION_AS_UPDATE", Boolean.valueOf(booleanValue));
            }
        }
    }

    private void x(Integer num) {
        if (A2.a(num)) {
            int intValue = num.intValue();
            synchronized (this) {
                this.f9528a.put("CFG_SESSION_TIMEOUT", Integer.valueOf(intValue));
            }
        }
    }

    public Integer C() {
        return this.f9528a.getAsInteger("CFG_DISPATCH_PERIOD");
    }

    public Boolean E() {
        return this.f9528a.getAsBoolean("CFG_LOCATION_ALLOWED_BY_BRIDGE");
    }

    public Location G() {
        if (!this.f9528a.containsKey("CFG_MANUAL_LOCATION")) {
            return null;
        }
        byte[] asByteArray = this.f9528a.getAsByteArray("CFG_MANUAL_LOCATION");
        int i10 = C0924vc.f13807q;
        if (asByteArray == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            obtain.unmarshall(asByteArray, 0, asByteArray.length);
            obtain.setDataPosition(0);
            Location location = (Location) obtain.readValue(Location.class.getClassLoader());
            obtain.recycle();
            return location;
        } catch (Throwable unused) {
            obtain.recycle();
            return null;
        }
    }

    public Integer I() {
        return this.f9528a.getAsInteger("CFG_MAX_REPORTS_COUNT");
    }

    public Integer K() {
        return this.f9528a.getAsInteger("MAX_REPORTS_IN_DB_COUNT");
    }

    public Boolean L() {
        return this.f9528a.getAsBoolean("CFG_NATIVE_CRASHES_ENABLED");
    }

    public b M() {
        return b.a(this.f9528a.getAsString("CFG_REPORTER_TYPE"));
    }

    public Integer N() {
        return this.f9528a.getAsInteger("CFG_SESSION_TIMEOUT");
    }

    public Boolean O() {
        return this.f9528a.getAsBoolean("CFG_STATISTICS_SENDING");
    }

    public Boolean P() {
        return this.f9528a.getAsBoolean("CFG_IS_FIRST_ACTIVATION_AS_UPDATE");
    }

    public Boolean Q() {
        return this.f9528a.getAsBoolean("CFG_LOCATION_TRACKING");
    }

    public Boolean R() {
        return this.f9528a.getAsBoolean("CFG_IS_LOG_ENABLED");
    }

    public synchronized Boolean S() {
        return this.f9528a.getAsBoolean("CFG_REVENUE_AUTO_TRACKING_ENABLED");
    }

    public String b() {
        return this.f9528a.getAsString("CFG_API_KEY");
    }

    public final synchronized void c(Location location) {
        byte[] bArr;
        ContentValues contentValues = this.f9528a;
        int i10 = C0924vc.f13807q;
        if (location != null) {
            Parcel obtain = Parcel.obtain();
            obtain.writeValue(location);
            bArr = obtain.marshall();
            obtain.recycle();
        } else {
            bArr = null;
        }
        contentValues.put("CFG_MANUAL_LOCATION", bArr);
    }

    public synchronized void d(b bVar) {
        this.f9528a.put("CFG_REPORTER_TYPE", bVar.b());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public synchronized void i(boolean z10) {
        this.f9528a.put("CFG_LOCATION_ALLOWED_BY_BRIDGE", Boolean.valueOf(z10));
    }

    public String j() {
        return this.f9528a.getAsString("CFG_APP_VERSION_CODE");
    }

    public synchronized void n(String str) {
        this.f9528a.put("CFG_API_KEY", str);
    }

    public synchronized void o(boolean z10) {
        this.f9528a.put("CFG_LOCATION_TRACKING", Boolean.valueOf(z10));
    }

    public String p() {
        return this.f9528a.getAsString("CFG_APP_VERSION");
    }

    public synchronized String toString() {
        return "CounterConfiguration{mParamsMapping=" + this.f9528a + '}';
    }

    public final synchronized void u(boolean z10) {
        this.f9528a.put("CFG_STATISTICS_SENDING", Boolean.valueOf(z10));
    }

    public String v() {
        return this.f9528a.getAsString("CFG_DEVICE_SIZE_TYPE");
    }

    @Override // android.os.Parcelable
    public synchronized void writeToParcel(Parcel parcel, int i10) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.yandex.metrica.CounterConfiguration.data", this.f9528a);
        parcel.writeBundle(bundle);
    }

    public synchronized void z(String str) {
        this.f9528a.put("CFG_UUID", str);
    }

    public CounterConfiguration() {
        this.f9528a = new ContentValues();
    }

    public CounterConfiguration(j jVar, b bVar) {
        this();
        synchronized (this) {
            h(jVar.apiKey);
            x(jVar.sessionTimeout);
            F(jVar);
            D(jVar);
            q(jVar);
            g(jVar.f14104f);
            m(jVar.f14105g);
            k(jVar);
            e(jVar);
            H(jVar);
            w(jVar);
            r(jVar.statisticsSending);
            s(jVar.maxReportsInDatabaseCount);
            l(jVar.nativeCrashReporting);
            J(jVar);
            d(bVar);
        }
    }

    public CounterConfiguration(f fVar) {
        this();
        synchronized (this) {
            h(fVar.apiKey);
            x(fVar.sessionTimeout);
            g(fVar.f9627a);
            m(fVar.f9628b);
            f(fVar.logs);
            r(fVar.statisticsSending);
            s(fVar.maxReportsInDatabaseCount);
            t(fVar.apiKey);
        }
    }

    CounterConfiguration(ContentValues contentValues) {
        this.f9528a = contentValues;
        T();
    }
}
