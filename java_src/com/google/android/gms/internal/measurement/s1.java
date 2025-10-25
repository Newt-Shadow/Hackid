package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import java.util.HashMap;
import u5.a;
/* loaded from: classes.dex */
public abstract class s1 extends o0 implements t1 {
    public s1() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    public static t1 asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        if (queryLocalInterface instanceof t1) {
            return (t1) queryLocalInterface;
        }
        return new r1(iBinder);
    }

    @Override // com.google.android.gms.internal.measurement.o0
    protected final boolean a(int i10, Parcel parcel, Parcel parcel2, int i11) {
        w1 u1Var;
        w1 w1Var;
        w1 w1Var2 = null;
        z1 z1Var = null;
        w1 w1Var3 = null;
        w1 w1Var4 = null;
        w1 w1Var5 = null;
        w1 w1Var6 = null;
        d2 d2Var = null;
        d2 d2Var2 = null;
        d2 d2Var3 = null;
        w1 w1Var7 = null;
        w1 w1Var8 = null;
        w1 w1Var9 = null;
        w1 w1Var10 = null;
        w1 w1Var11 = null;
        w1 w1Var12 = null;
        f2 f2Var = null;
        w1 w1Var13 = null;
        w1 w1Var14 = null;
        w1 w1Var15 = null;
        w1 w1Var16 = null;
        switch (i10) {
            case 1:
                long readLong = parcel.readLong();
                p0.f(parcel);
                initialize(a.AbstractBinderC0341a.d(parcel.readStrongBinder()), (g2) p0.b(parcel, g2.CREATOR), readLong);
                break;
            case 2:
                boolean a10 = p0.a(parcel);
                boolean a11 = p0.a(parcel);
                long readLong2 = parcel.readLong();
                p0.f(parcel);
                logEvent(parcel.readString(), parcel.readString(), (Bundle) p0.b(parcel, Bundle.CREATOR), a10, a11, readLong2);
                break;
            case 3:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                Bundle bundle = (Bundle) p0.b(parcel, Bundle.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    w1Var = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface instanceof w1) {
                        u1Var = (w1) queryLocalInterface;
                    } else {
                        u1Var = new u1(readStrongBinder);
                    }
                    w1Var = u1Var;
                }
                long readLong3 = parcel.readLong();
                p0.f(parcel);
                logEventAndBundle(readString, readString2, bundle, w1Var, readLong3);
                break;
            case 4:
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                u5.a d10 = a.AbstractBinderC0341a.d(parcel.readStrongBinder());
                boolean a12 = p0.a(parcel);
                long readLong4 = parcel.readLong();
                p0.f(parcel);
                setUserProperty(readString3, readString4, d10, a12, readLong4);
                break;
            case 5:
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                boolean a13 = p0.a(parcel);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface2 instanceof w1) {
                        w1Var2 = (w1) queryLocalInterface2;
                    } else {
                        w1Var2 = new u1(readStrongBinder2);
                    }
                }
                p0.f(parcel);
                getUserProperties(readString5, readString6, a13, w1Var2);
                break;
            case 6:
                String readString7 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface3 instanceof w1) {
                        w1Var16 = (w1) queryLocalInterface3;
                    } else {
                        w1Var16 = new u1(readStrongBinder3);
                    }
                }
                p0.f(parcel);
                getMaxUserProperties(readString7, w1Var16);
                break;
            case 7:
                String readString8 = parcel.readString();
                long readLong5 = parcel.readLong();
                p0.f(parcel);
                setUserId(readString8, readLong5);
                break;
            case 8:
                long readLong6 = parcel.readLong();
                p0.f(parcel);
                setConditionalUserProperty((Bundle) p0.b(parcel, Bundle.CREATOR), readLong6);
                break;
            case 9:
                p0.f(parcel);
                clearConditionalUserProperty(parcel.readString(), parcel.readString(), (Bundle) p0.b(parcel, Bundle.CREATOR));
                break;
            case 10:
                String readString9 = parcel.readString();
                String readString10 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface4 instanceof w1) {
                        w1Var15 = (w1) queryLocalInterface4;
                    } else {
                        w1Var15 = new u1(readStrongBinder4);
                    }
                }
                p0.f(parcel);
                getConditionalUserProperties(readString9, readString10, w1Var15);
                break;
            case 11:
                boolean a14 = p0.a(parcel);
                long readLong7 = parcel.readLong();
                p0.f(parcel);
                setMeasurementEnabled(a14, readLong7);
                break;
            case 12:
                long readLong8 = parcel.readLong();
                p0.f(parcel);
                resetAnalyticsData(readLong8);
                break;
            case 13:
                long readLong9 = parcel.readLong();
                p0.f(parcel);
                setMinimumSessionDuration(readLong9);
                break;
            case 14:
                long readLong10 = parcel.readLong();
                p0.f(parcel);
                setSessionTimeoutDuration(readLong10);
                break;
            case 15:
                u5.a d11 = a.AbstractBinderC0341a.d(parcel.readStrongBinder());
                String readString11 = parcel.readString();
                String readString12 = parcel.readString();
                long readLong11 = parcel.readLong();
                p0.f(parcel);
                setCurrentScreen(d11, readString11, readString12, readLong11);
                break;
            case 16:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface5 instanceof w1) {
                        w1Var14 = (w1) queryLocalInterface5;
                    } else {
                        w1Var14 = new u1(readStrongBinder5);
                    }
                }
                p0.f(parcel);
                getCurrentScreenName(w1Var14);
                break;
            case 17:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface6 instanceof w1) {
                        w1Var13 = (w1) queryLocalInterface6;
                    } else {
                        w1Var13 = new u1(readStrongBinder6);
                    }
                }
                p0.f(parcel);
                getCurrentScreenClass(w1Var13);
                break;
            case 18:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    if (queryLocalInterface7 instanceof f2) {
                        f2Var = (f2) queryLocalInterface7;
                    } else {
                        f2Var = new e2(readStrongBinder7);
                    }
                }
                p0.f(parcel);
                setInstanceIdProvider(f2Var);
                break;
            case C1415p9.C /* 19 */:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface8 instanceof w1) {
                        w1Var12 = (w1) queryLocalInterface8;
                    } else {
                        w1Var12 = new u1(readStrongBinder8);
                    }
                }
                p0.f(parcel);
                getCachedAppInstanceId(w1Var12);
                break;
            case 20:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface9 instanceof w1) {
                        w1Var11 = (w1) queryLocalInterface9;
                    } else {
                        w1Var11 = new u1(readStrongBinder9);
                    }
                }
                p0.f(parcel);
                getAppInstanceId(w1Var11);
                break;
            case 21:
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 != null) {
                    IInterface queryLocalInterface10 = readStrongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface10 instanceof w1) {
                        w1Var10 = (w1) queryLocalInterface10;
                    } else {
                        w1Var10 = new u1(readStrongBinder10);
                    }
                }
                p0.f(parcel);
                getGmpAppId(w1Var10);
                break;
            case Build.API_LEVELS.API_22 /* 22 */:
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 != null) {
                    IInterface queryLocalInterface11 = readStrongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface11 instanceof w1) {
                        w1Var9 = (w1) queryLocalInterface11;
                    } else {
                        w1Var9 = new u1(readStrongBinder11);
                    }
                }
                p0.f(parcel);
                generateEventId(w1Var9);
                break;
            case Build.API_LEVELS.API_23 /* 23 */:
                String readString13 = parcel.readString();
                long readLong12 = parcel.readLong();
                p0.f(parcel);
                beginAdUnitExposure(readString13, readLong12);
                break;
            case Build.API_LEVELS.API_24 /* 24 */:
                String readString14 = parcel.readString();
                long readLong13 = parcel.readLong();
                p0.f(parcel);
                endAdUnitExposure(readString14, readLong13);
                break;
            case 25:
                u5.a d12 = a.AbstractBinderC0341a.d(parcel.readStrongBinder());
                long readLong14 = parcel.readLong();
                p0.f(parcel);
                onActivityStarted(d12, readLong14);
                break;
            case 26:
                u5.a d13 = a.AbstractBinderC0341a.d(parcel.readStrongBinder());
                long readLong15 = parcel.readLong();
                p0.f(parcel);
                onActivityStopped(d13, readLong15);
                break;
            case 27:
                long readLong16 = parcel.readLong();
                p0.f(parcel);
                onActivityCreated(a.AbstractBinderC0341a.d(parcel.readStrongBinder()), (Bundle) p0.b(parcel, Bundle.CREATOR), readLong16);
                break;
            case Build.API_LEVELS.API_28 /* 28 */:
                u5.a d14 = a.AbstractBinderC0341a.d(parcel.readStrongBinder());
                long readLong17 = parcel.readLong();
                p0.f(parcel);
                onActivityDestroyed(d14, readLong17);
                break;
            case 29:
                u5.a d15 = a.AbstractBinderC0341a.d(parcel.readStrongBinder());
                long readLong18 = parcel.readLong();
                p0.f(parcel);
                onActivityPaused(d15, readLong18);
                break;
            case Build.API_LEVELS.API_30 /* 30 */:
                u5.a d16 = a.AbstractBinderC0341a.d(parcel.readStrongBinder());
                long readLong19 = parcel.readLong();
                p0.f(parcel);
                onActivityResumed(d16, readLong19);
                break;
            case Build.API_LEVELS.API_31 /* 31 */:
                u5.a d17 = a.AbstractBinderC0341a.d(parcel.readStrongBinder());
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 != null) {
                    IInterface queryLocalInterface12 = readStrongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface12 instanceof w1) {
                        w1Var8 = (w1) queryLocalInterface12;
                    } else {
                        w1Var8 = new u1(readStrongBinder12);
                    }
                }
                long readLong20 = parcel.readLong();
                p0.f(parcel);
                onActivitySaveInstanceState(d17, w1Var8, readLong20);
                break;
            case Build.API_LEVELS.API_32 /* 32 */:
                Bundle bundle2 = (Bundle) p0.b(parcel, Bundle.CREATOR);
                IBinder readStrongBinder13 = parcel.readStrongBinder();
                if (readStrongBinder13 != null) {
                    IInterface queryLocalInterface13 = readStrongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface13 instanceof w1) {
                        w1Var7 = (w1) queryLocalInterface13;
                    } else {
                        w1Var7 = new u1(readStrongBinder13);
                    }
                }
                long readLong21 = parcel.readLong();
                p0.f(parcel);
                performAction(bundle2, w1Var7, readLong21);
                break;
            case Build.API_LEVELS.API_33 /* 33 */:
                int readInt = parcel.readInt();
                String readString15 = parcel.readString();
                u5.a d18 = a.AbstractBinderC0341a.d(parcel.readStrongBinder());
                u5.a d19 = a.AbstractBinderC0341a.d(parcel.readStrongBinder());
                u5.a d20 = a.AbstractBinderC0341a.d(parcel.readStrongBinder());
                p0.f(parcel);
                logHealthData(readInt, readString15, d18, d19, d20);
                break;
            case Build.API_LEVELS.API_34 /* 34 */:
                IBinder readStrongBinder14 = parcel.readStrongBinder();
                if (readStrongBinder14 != null) {
                    IInterface queryLocalInterface14 = readStrongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    if (queryLocalInterface14 instanceof d2) {
                        d2Var3 = (d2) queryLocalInterface14;
                    } else {
                        d2Var3 = new a2(readStrongBinder14);
                    }
                }
                p0.f(parcel);
                setEventInterceptor(d2Var3);
                break;
            case 35:
                IBinder readStrongBinder15 = parcel.readStrongBinder();
                if (readStrongBinder15 != null) {
                    IInterface queryLocalInterface15 = readStrongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    if (queryLocalInterface15 instanceof d2) {
                        d2Var2 = (d2) queryLocalInterface15;
                    } else {
                        d2Var2 = new a2(readStrongBinder15);
                    }
                }
                p0.f(parcel);
                registerOnMeasurementEventListener(d2Var2);
                break;
            case Build.API_LEVELS.API_36 /* 36 */:
                IBinder readStrongBinder16 = parcel.readStrongBinder();
                if (readStrongBinder16 != null) {
                    IInterface queryLocalInterface16 = readStrongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    if (queryLocalInterface16 instanceof d2) {
                        d2Var = (d2) queryLocalInterface16;
                    } else {
                        d2Var = new a2(readStrongBinder16);
                    }
                }
                p0.f(parcel);
                unregisterOnMeasurementEventListener(d2Var);
                break;
            case 37:
                HashMap e10 = p0.e(parcel);
                p0.f(parcel);
                initForTests(e10);
                break;
            case C1415p9.K /* 38 */:
                IBinder readStrongBinder17 = parcel.readStrongBinder();
                if (readStrongBinder17 != null) {
                    IInterface queryLocalInterface17 = readStrongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface17 instanceof w1) {
                        w1Var6 = (w1) queryLocalInterface17;
                    } else {
                        w1Var6 = new u1(readStrongBinder17);
                    }
                }
                int readInt2 = parcel.readInt();
                p0.f(parcel);
                getTestFlag(w1Var6, readInt2);
                break;
            case 39:
                boolean a15 = p0.a(parcel);
                p0.f(parcel);
                setDataCollectionEnabled(a15);
                break;
            case C1415p9.L /* 40 */:
                IBinder readStrongBinder18 = parcel.readStrongBinder();
                if (readStrongBinder18 != null) {
                    IInterface queryLocalInterface18 = readStrongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface18 instanceof w1) {
                        w1Var5 = (w1) queryLocalInterface18;
                    } else {
                        w1Var5 = new u1(readStrongBinder18);
                    }
                }
                p0.f(parcel);
                isDataCollectionEnabled(w1Var5);
                break;
            case 41:
            case 47:
            case 49:
            default:
                return false;
            case C1415p9.M /* 42 */:
                p0.f(parcel);
                setDefaultEventParameters((Bundle) p0.b(parcel, Bundle.CREATOR));
                break;
            case 43:
                long readLong22 = parcel.readLong();
                p0.f(parcel);
                clearMeasurementEnabled(readLong22);
                break;
            case 44:
                long readLong23 = parcel.readLong();
                p0.f(parcel);
                setConsent((Bundle) p0.b(parcel, Bundle.CREATOR), readLong23);
                break;
            case 45:
                long readLong24 = parcel.readLong();
                p0.f(parcel);
                setConsentThirdParty((Bundle) p0.b(parcel, Bundle.CREATOR), readLong24);
                break;
            case 46:
                IBinder readStrongBinder19 = parcel.readStrongBinder();
                if (readStrongBinder19 != null) {
                    IInterface queryLocalInterface19 = readStrongBinder19.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface19 instanceof w1) {
                        w1Var4 = (w1) queryLocalInterface19;
                    } else {
                        w1Var4 = new u1(readStrongBinder19);
                    }
                }
                p0.f(parcel);
                getSessionId(w1Var4);
                break;
            case 48:
                p0.f(parcel);
                setSgtmDebugInfo((Intent) p0.b(parcel, Intent.CREATOR));
                break;
            case 50:
                String readString16 = parcel.readString();
                String readString17 = parcel.readString();
                long readLong25 = parcel.readLong();
                p0.f(parcel);
                setCurrentScreenByScionActivityInfo((i2) p0.b(parcel, i2.CREATOR), readString16, readString17, readLong25);
                break;
            case 51:
                long readLong26 = parcel.readLong();
                p0.f(parcel);
                onActivityStartedByScionActivityInfo((i2) p0.b(parcel, i2.CREATOR), readLong26);
                break;
            case 52:
                long readLong27 = parcel.readLong();
                p0.f(parcel);
                onActivityStoppedByScionActivityInfo((i2) p0.b(parcel, i2.CREATOR), readLong27);
                break;
            case 53:
                long readLong28 = parcel.readLong();
                p0.f(parcel);
                onActivityCreatedByScionActivityInfo((i2) p0.b(parcel, i2.CREATOR), (Bundle) p0.b(parcel, Bundle.CREATOR), readLong28);
                break;
            case 54:
                long readLong29 = parcel.readLong();
                p0.f(parcel);
                onActivityDestroyedByScionActivityInfo((i2) p0.b(parcel, i2.CREATOR), readLong29);
                break;
            case 55:
                long readLong30 = parcel.readLong();
                p0.f(parcel);
                onActivityPausedByScionActivityInfo((i2) p0.b(parcel, i2.CREATOR), readLong30);
                break;
            case 56:
                long readLong31 = parcel.readLong();
                p0.f(parcel);
                onActivityResumedByScionActivityInfo((i2) p0.b(parcel, i2.CREATOR), readLong31);
                break;
            case 57:
                i2 i2Var = (i2) p0.b(parcel, i2.CREATOR);
                IBinder readStrongBinder20 = parcel.readStrongBinder();
                if (readStrongBinder20 != null) {
                    IInterface queryLocalInterface20 = readStrongBinder20.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface20 instanceof w1) {
                        w1Var3 = (w1) queryLocalInterface20;
                    } else {
                        w1Var3 = new u1(readStrongBinder20);
                    }
                }
                long readLong32 = parcel.readLong();
                p0.f(parcel);
                onActivitySaveInstanceStateByScionActivityInfo(i2Var, w1Var3, readLong32);
                break;
            case 58:
                IBinder readStrongBinder21 = parcel.readStrongBinder();
                if (readStrongBinder21 != null) {
                    IInterface queryLocalInterface21 = readStrongBinder21.queryLocalInterface("com.google.android.gms.measurement.api.internal.IDynamiteUploadBatchesCallback");
                    if (queryLocalInterface21 instanceof z1) {
                        z1Var = (z1) queryLocalInterface21;
                    } else {
                        z1Var = new x1(readStrongBinder21);
                    }
                }
                p0.f(parcel);
                retrieveAndUploadBatches(z1Var);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
