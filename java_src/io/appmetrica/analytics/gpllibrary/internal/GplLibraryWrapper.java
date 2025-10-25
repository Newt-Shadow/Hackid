package io.appmetrica.analytics.gpllibrary.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.LocationListener;
import android.os.Looper;
import com.google.android.gms.location.LocationRequest;
import g6.LocationCallback;
import g6.b;
import g6.d;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public class GplLibraryWrapper implements IGplLibraryWrapper {
    public static final String FUSED_PROVIDER = "fused";

    /* renamed from: a  reason: collision with root package name */
    private final b f17881a;

    /* renamed from: b  reason: collision with root package name */
    private final LocationListener f17882b;

    /* renamed from: c  reason: collision with root package name */
    private final LocationCallback f17883c;

    /* renamed from: d  reason: collision with root package name */
    private final Looper f17884d;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f17885e;

    /* renamed from: f  reason: collision with root package name */
    private final long f17886f;

    /* renamed from: io.appmetrica.analytics.gpllibrary.internal.GplLibraryWrapper$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f17887a;

        static {
            int[] iArr = new int[Priority.values().length];
            f17887a = iArr;
            try {
                iArr[Priority.PRIORITY_LOW_POWER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17887a[Priority.PRIORITY_BALANCED_POWER_ACCURACY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17887a[Priority.PRIORITY_HIGH_ACCURACY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class ClientProvider {

        /* renamed from: a  reason: collision with root package name */
        private final Context f17888a;

        ClientProvider(Context context) {
            this.f17888a = context;
        }

        final b a() {
            return d.a(this.f17888a);
        }
    }

    /* loaded from: classes2.dex */
    public enum Priority {
        PRIORITY_NO_POWER,
        PRIORITY_LOW_POWER,
        PRIORITY_BALANCED_POWER_ACCURACY,
        PRIORITY_HIGH_ACCURACY
    }

    public GplLibraryWrapper(Context context, LocationListener locationListener, Looper looper, Executor executor, long j10) {
        this(new ClientProvider(context), locationListener, looper, executor, j10);
    }

    @Override // io.appmetrica.analytics.gpllibrary.internal.IGplLibraryWrapper
    @SuppressLint({"MissingPermission"})
    public void startLocationUpdates(Priority priority) {
        int i10;
        b bVar = this.f17881a;
        LocationRequest l10 = LocationRequest.g().l(this.f17886f);
        int i11 = AnonymousClass1.f17887a[priority.ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 != 3) {
                    i10 = 105;
                } else {
                    i10 = 100;
                }
            } else {
                i10 = 102;
            }
        } else {
            i10 = 104;
        }
        bVar.B(l10.m(i10), this.f17883c, this.f17884d);
    }

    @Override // io.appmetrica.analytics.gpllibrary.internal.IGplLibraryWrapper
    public void stopLocationUpdates() {
        this.f17881a.A(this.f17883c);
    }

    @Override // io.appmetrica.analytics.gpllibrary.internal.IGplLibraryWrapper
    @SuppressLint({"MissingPermission"})
    public void updateLastKnownLocation() {
        this.f17881a.z().f(this.f17885e, new GplOnSuccessListener(this.f17882b));
    }

    GplLibraryWrapper(ClientProvider clientProvider, LocationListener locationListener, Looper looper, Executor executor, long j10) {
        this.f17881a = clientProvider.a();
        this.f17882b = locationListener;
        this.f17884d = looper;
        this.f17885e = executor;
        this.f17886f = j10;
        this.f17883c = new GplLocationCallback(locationListener);
    }
}
