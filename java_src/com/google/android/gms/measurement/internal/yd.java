package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ext.SdkExtensions;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.flutter.plugins.firebase.analytics.Constants;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;
import org.apache.tika.metadata.ClimateForcast;
/* loaded from: classes.dex */
public final class yd extends a8 {

    /* renamed from: i  reason: collision with root package name */
    private static final String[] f8299i = {"firebase_", "google_", "ga_"};

    /* renamed from: j  reason: collision with root package name */
    private static final String[] f8300j = {"_err"};

    /* renamed from: k  reason: collision with root package name */
    public static final /* synthetic */ int f8301k = 0;

    /* renamed from: c  reason: collision with root package name */
    private SecureRandom f8302c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicLong f8303d;

    /* renamed from: e  reason: collision with root package name */
    private int f8304e;

    /* renamed from: f  reason: collision with root package name */
    private e1.a f8305f;

    /* renamed from: g  reason: collision with root package name */
    private Boolean f8306g;

    /* renamed from: h  reason: collision with root package name */
    private Integer f8307h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public yd(w6 w6Var) {
        super(w6Var);
        this.f8307h = null;
        this.f8303d = new AtomicLong(0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MessageDigest C() {
        MessageDigest messageDigest;
        for (int i10 = 0; i10 < 2; i10++) {
            try {
                messageDigest = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long D(byte[] bArr) {
        boolean z10;
        n5.q.k(bArr);
        int length = bArr.length;
        int i10 = 0;
        if (length > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        n5.q.n(z10);
        long j10 = 0;
        for (int i11 = length - 1; i11 >= 0 && i11 >= bArr.length - 8; i11--) {
            j10 += (bArr[i11] & 255) << i10;
            i10 += 8;
        }
        return j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean E(Context context, boolean z10) {
        n5.q.k(context);
        return F(context, "com.google.android.gms.measurement.AppMeasurementJobService");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean F(Context context, String str) {
        ServiceInfo serviceInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 0)) != null) {
                if (serviceInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean N(String str) {
        if (!TextUtils.isEmpty(str) && str.startsWith("_")) {
            return true;
        }
        return false;
    }

    private static boolean O(String str, String[] strArr) {
        n5.q.k(strArr);
        for (String str2 : strArr) {
            if (Objects.equals(str, str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean U(String str) {
        if (f8300j[0].equals(str)) {
            return false;
        }
        return true;
    }

    public static ArrayList h0(List list) {
        if (list == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            i iVar = (i) it.next();
            Bundle bundle = new Bundle();
            bundle.putString(CommonUrlParts.APP_ID, iVar.f7611a);
            bundle.putString("origin", iVar.f7612b);
            bundle.putLong("creation_timestamp", iVar.f7614d);
            bundle.putString(Constants.NAME, iVar.f7613c.f8095b);
            i6.q.a(bundle, n5.q.k(iVar.f7613c.g()));
            bundle.putBoolean("active", iVar.f7615e);
            String str = iVar.f7616f;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            g0 g0Var = iVar.f7617g;
            if (g0Var != null) {
                bundle.putString("timed_out_event_name", g0Var.f7551a);
                e0 e0Var = g0Var.f7552b;
                if (e0Var != null) {
                    bundle.putBundle("timed_out_event_params", e0Var.o());
                }
            }
            bundle.putLong("trigger_timeout", iVar.f7618h);
            g0 g0Var2 = iVar.f7619i;
            if (g0Var2 != null) {
                bundle.putString("triggered_event_name", g0Var2.f7551a);
                e0 e0Var2 = g0Var2.f7552b;
                if (e0Var2 != null) {
                    bundle.putBundle("triggered_event_params", e0Var2.o());
                }
            }
            bundle.putLong("triggered_timestamp", iVar.f7613c.f8096c);
            bundle.putLong("time_to_live", iVar.f7620j);
            g0 g0Var3 = iVar.f7621k;
            if (g0Var3 != null) {
                bundle.putString("expired_event_name", g0Var3.f7551a);
                e0 e0Var3 = g0Var3.f7552b;
                if (e0Var3 != null) {
                    bundle.putBundle("expired_event_params", e0Var3.o());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean j0(Context context) {
        ActivityInfo receiverInfo;
        n5.q.k(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) != null) {
                if (receiverInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static void k0(da daVar, Bundle bundle, boolean z10) {
        if (bundle != null && daVar != null) {
            if (bundle.containsKey("_sc") && !z10) {
                z10 = false;
            } else {
                String str = daVar.f7447a;
                if (str != null) {
                    bundle.putString("_sn", str);
                } else {
                    bundle.remove("_sn");
                }
                String str2 = daVar.f7448b;
                if (str2 != null) {
                    bundle.putString("_sc", str2);
                } else {
                    bundle.remove("_sc");
                }
                bundle.putLong("_si", daVar.f7449c);
                return;
            }
        }
        if (bundle != null && daVar == null && z10) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    static final boolean m0(Bundle bundle, int i10) {
        if (bundle != null && bundle.getLong("_err") == 0) {
            bundle.putLong("_err", i10);
            return true;
        }
        return false;
    }

    private final Object n0(int i10, Object obj, boolean z10, boolean z11, String str) {
        Parcelable[] parcelableArr;
        long j10;
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof Long) && !(obj instanceof Double)) {
            if (obj instanceof Integer) {
                return Long.valueOf(((Integer) obj).intValue());
            }
            if (obj instanceof Byte) {
                return Long.valueOf(((Byte) obj).byteValue());
            }
            if (obj instanceof Short) {
                return Long.valueOf(((Short) obj).shortValue());
            }
            if (obj instanceof Boolean) {
                if (true != ((Boolean) obj).booleanValue()) {
                    j10 = 0;
                } else {
                    j10 = 1;
                }
                return Long.valueOf(j10);
            } else if (obj instanceof Float) {
                return Double.valueOf(((Float) obj).doubleValue());
            } else {
                if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                    if (!z11 || (!(obj instanceof Bundle[]) && !(obj instanceof Parcelable[]))) {
                        return null;
                    }
                    ArrayList arrayList = new ArrayList();
                    for (Parcelable parcelable : (Parcelable[]) obj) {
                        if (parcelable instanceof Bundle) {
                            Bundle Q = Q((Bundle) parcelable, null);
                            if (!Q.isEmpty()) {
                                arrayList.add(Q);
                            }
                        }
                    }
                    return arrayList.toArray(new Bundle[arrayList.size()]);
                }
                return q(obj.toString(), i10, z10);
            }
        }
        return obj;
    }

    private final int o0(String str) {
        if ("_ldl".equals(str)) {
            this.f8322a.w();
            return 2048;
        } else if ("_id".equals(str)) {
            this.f8322a.w();
            return 256;
        } else if ("_lgclid".equals(str)) {
            this.f8322a.w();
            return 100;
        } else {
            this.f8322a.w();
            return 36;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean r0(String str) {
        n5.q.e(str);
        if (str.charAt(0) == '_' && !str.equals("_ep")) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void A(Bundle bundle, String str, Object obj) {
        String str2;
        if (bundle != null) {
            if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof String) {
                bundle.putString(str, String.valueOf(obj));
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (obj instanceof Bundle[]) {
                bundle.putParcelableArray(str, (Bundle[]) obj);
            } else if (str != null) {
                if (obj != null) {
                    str2 = obj.getClass().getSimpleName();
                } else {
                    str2 = null;
                }
                w6 w6Var = this.f8322a;
                w6Var.a().t().c("Not putting event parameter. Invalid value type. name, type", w6Var.D().b(str), str2);
            }
        }
    }

    final int A0(String str) {
        if (!u0("event param", str)) {
            return 3;
        }
        if (!v0("event param", null, null, str)) {
            return 14;
        }
        this.f8322a.w();
        if (!w0("event param", 40, str)) {
            return 3;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void B(xd xdVar, String str, int i10, String str2, String str3, int i11) {
        Bundle bundle = new Bundle();
        m0(bundle, i10);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i10 == 6 || i10 == 7 || i10 == 2) {
            bundle.putLong("_el", i11);
        }
        xdVar.c(str, "_err", bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean B0(Object obj) {
        if (!(obj instanceof Parcelable[]) && !(obj instanceof ArrayList) && !(obj instanceof Bundle)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean C0(String str, String str2, int i10, Object obj) {
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                return false;
            }
            String obj2 = obj.toString();
            if (obj2.codePointCount(0, obj2.length()) > i10) {
                this.f8322a.a().t().d("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(obj2.length()));
                return false;
            }
        }
        return true;
    }

    final void D0(String str, String str2, String str3, Bundle bundle, List list, boolean z10) {
        int i10;
        int i11;
        int i12;
        char c10;
        String str4;
        int i13;
        int r10;
        if (bundle != null) {
            w6 w6Var = this.f8322a;
            char c11 = 20064;
            if (true != w6Var.w().f8322a.C().V(231100000, true)) {
                i10 = 0;
            } else {
                i10 = 35;
            }
            int i14 = 0;
            boolean z11 = false;
            for (String str5 : new TreeSet(bundle.keySet())) {
                if (list != null && list.contains(str5)) {
                    i11 = 0;
                } else {
                    if (!z10) {
                        i11 = z0(str5);
                    } else {
                        i11 = 0;
                    }
                    if (i11 == 0) {
                        i11 = A0(str5);
                    }
                }
                String str6 = null;
                if (i11 != 0) {
                    if (i11 == 3) {
                        str6 = str5;
                    }
                    x(bundle, i11, str5, str6);
                    bundle.remove(str5);
                    i12 = i10;
                    c10 = c11;
                } else {
                    if (B0(bundle.get(str5))) {
                        w6Var.a().t().d("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str2, str3, str5);
                        r10 = 22;
                        str4 = str5;
                        i13 = i10;
                    } else {
                        str4 = str5;
                        i13 = i10;
                        r10 = r(str, str2, str5, bundle.get(str5), bundle, list, z10, false);
                    }
                    if (r10 != 0 && !"_ev".equals(str4)) {
                        x(bundle, r10, str4, bundle.get(str4));
                        bundle.remove(str4);
                    } else if (r0(str4) && !O(str4, i6.u.f17319d)) {
                        int i15 = i14 + 1;
                        c10 = 20064;
                        if (!V(231100000, true)) {
                            w6Var.a().q().c("Item array not supported on client's version of Google Play Services (Android Only)", w6Var.D().a(str2), w6Var.D().e(bundle));
                            m0(bundle, 23);
                            bundle.remove(str4);
                            i12 = i13;
                        } else {
                            i12 = i13;
                            if (i15 > i12) {
                                if (!w6Var.w().H(null, c5.f7341f1) || !z11) {
                                    n5 q10 = w6Var.a().q();
                                    StringBuilder sb2 = new StringBuilder(String.valueOf(i12).length() + 55);
                                    sb2.append("Item can't contain more than ");
                                    sb2.append(i12);
                                    sb2.append(" item-scoped custom params");
                                    q10.c(sb2.toString(), w6Var.D().a(str2), w6Var.D().e(bundle));
                                }
                                m0(bundle, 28);
                                bundle.remove(str4);
                                i14 = i15;
                                c11 = 20064;
                                i10 = i12;
                                z11 = true;
                            }
                        }
                        i14 = i15;
                    }
                    i12 = i13;
                    c10 = 20064;
                }
                c11 = c10;
                i10 = i12;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean G() {
        h();
        if (J() == 1) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final e1.a H() {
        if (this.f8305f == null) {
            this.f8305f = e1.a.a(this.f8322a.e());
        }
        return this.f8305f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int I() {
        int extensionVersion;
        int extensionVersion2;
        if (Build.VERSION.SDK_INT >= 30) {
            extensionVersion = SdkExtensions.getExtensionVersion(30);
            if (extensionVersion > 3) {
                extensionVersion2 = SdkExtensions.getExtensionVersion(1000000);
                return extensionVersion2;
            }
            return 0;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long J() {
        int extensionVersion;
        long j10;
        h();
        if (!L(this.f8322a.L().q())) {
            return 0L;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            extensionVersion = SdkExtensions.getExtensionVersion(30);
            if (extensionVersion < 4) {
                j10 = 8;
            } else {
                w6 w6Var = this.f8322a;
                int I = I();
                w6Var.w();
                if (I < ((Integer) c5.f7361m0.b(null)).intValue()) {
                    j10 = 16;
                } else {
                    j10 = 0;
                }
            }
        } else {
            j10 = 4;
        }
        if (!M("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")) {
            j10 |= 2;
        }
        if (j10 == 0 && !K()) {
            j10 = 64;
        }
        if (j10 == 0) {
            return 1L;
        }
        return j10;
    }

    final boolean K() {
        Object e10;
        Integer num;
        if (this.f8306g == null) {
            e1.a H = H();
            boolean z10 = false;
            if (H == null) {
                return false;
            }
            try {
                num = (Integer) H.b().get(10000L, TimeUnit.MILLISECONDS);
                if (num != null) {
                    try {
                        if (num.intValue() == 1) {
                            z10 = true;
                        }
                    } catch (InterruptedException e11) {
                        e10 = e11;
                        this.f8322a.a().r().b("Measurement manager api exception", e10);
                        this.f8306g = Boolean.FALSE;
                        this.f8322a.a().w().b("Measurement manager api status result", num);
                        return this.f8306g.booleanValue();
                    } catch (CancellationException e12) {
                        e10 = e12;
                        this.f8322a.a().r().b("Measurement manager api exception", e10);
                        this.f8306g = Boolean.FALSE;
                        this.f8322a.a().w().b("Measurement manager api status result", num);
                        return this.f8306g.booleanValue();
                    } catch (ExecutionException e13) {
                        e10 = e13;
                        this.f8322a.a().r().b("Measurement manager api exception", e10);
                        this.f8306g = Boolean.FALSE;
                        this.f8322a.a().w().b("Measurement manager api status result", num);
                        return this.f8306g.booleanValue();
                    } catch (TimeoutException e14) {
                        e10 = e14;
                        this.f8322a.a().r().b("Measurement manager api exception", e10);
                        this.f8306g = Boolean.FALSE;
                        this.f8322a.a().w().b("Measurement manager api status result", num);
                        return this.f8306g.booleanValue();
                    }
                }
                this.f8306g = Boolean.valueOf(z10);
            } catch (InterruptedException | CancellationException | ExecutionException | TimeoutException e15) {
                e10 = e15;
                num = null;
            }
            this.f8322a.a().w().b("Measurement manager api status result", num);
        }
        return this.f8306g.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean L(String str) {
        String str2 = (String) c5.f7373s0.b(null);
        if (!str2.equals("*") && !Arrays.asList(str2.split(StringUtils.COMMA)).contains(str)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean M(String str) {
        h();
        w6 w6Var = this.f8322a;
        if (t5.e.a(w6Var.e()).a(str) == 0) {
            return true;
        }
        w6Var.a().v().b("Permission not granted", str);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean P(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            return true;
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        w6 w6Var = this.f8322a;
        String i10 = w6Var.w().i();
        w6Var.c();
        return i10.equals(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Bundle Q(Bundle bundle, String str) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str2 : bundle.keySet()) {
                Object s10 = s(str2, bundle.get(str2));
                if (s10 == null) {
                    w6 w6Var = this.f8322a;
                    w6Var.a().t().b("Param value can't be null", w6Var.D().b(str2));
                } else {
                    A(bundle2, str2, s10);
                }
            }
        }
        return bundle2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final g0 R(String str, String str2, Bundle bundle, String str3, long j10, boolean z10, boolean z11) {
        Bundle bundle2;
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (x0(str2) == 0) {
            if (bundle != null) {
                bundle2 = new Bundle(bundle);
            } else {
                bundle2 = new Bundle();
            }
            Bundle bundle3 = bundle2;
            bundle3.putString("_o", str3);
            Bundle t10 = t(str, str2, bundle3, com.google.android.gms.common.util.e.a("_o"), true);
            if (z10) {
                t10 = Q(t10, str);
            }
            n5.q.k(t10);
            return new g0(str2, new e0(t10), str3, j10);
        }
        w6 w6Var = this.f8322a;
        w6Var.a().o().b("Invalid conditional property event name", w6Var.D().c(str2));
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean S(Context context, String str) {
        Signature[] signatureArr;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo e10 = t5.e.a(context).e(str, 64);
            if (e10 != null && (signatureArr = e10.signatures) != null && signatureArr.length > 0) {
                return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
            }
            return true;
        } catch (PackageManager.NameNotFoundException e11) {
            this.f8322a.a().o().b("Package name not found", e11);
            return true;
        } catch (CertificateException e12) {
            this.f8322a.a().o().b("Error obtaining certificate", e12);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final byte[] T(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(obtain, 0);
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }

    public final boolean V(int i10, boolean z10) {
        Boolean x10 = this.f8322a.J().x();
        if (W() >= i10 / 1000) {
            return true;
        }
        if (x10 != null && !x10.booleanValue()) {
            return true;
        }
        return false;
    }

    public final int W() {
        if (this.f8307h == null) {
            this.f8307h = Integer.valueOf(l5.g.f().a(this.f8322a.e()) / 1000);
        }
        return this.f8307h.intValue();
    }

    public final int X(int i10) {
        return l5.g.f().h(this.f8322a.e(), l5.k.f25303a);
    }

    public final long Y(long j10, long j11) {
        return (j10 + (j11 * 60000)) / 86400000;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void Z(Bundle bundle, long j10) {
        long j11 = bundle.getLong("_et");
        if (j11 != 0) {
            this.f8322a.a().r().b("Params already contained engagement", Long.valueOf(j11));
        } else {
            j11 = 0;
        }
        bundle.putLong("_et", j10 + j11);
    }

    public final void a0(com.google.android.gms.internal.measurement.w1 w1Var, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            w1Var.zzb(bundle);
        } catch (RemoteException e10) {
            this.f8322a.a().r().b("Error returning string value to wrapper", e10);
        }
    }

    public final void b0(com.google.android.gms.internal.measurement.w1 w1Var, long j10) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j10);
        try {
            w1Var.zzb(bundle);
        } catch (RemoteException e10) {
            this.f8322a.a().r().b("Error returning long value to wrapper", e10);
        }
    }

    public final void c0(com.google.android.gms.internal.measurement.w1 w1Var, int i10) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i10);
        try {
            w1Var.zzb(bundle);
        } catch (RemoteException e10) {
            this.f8322a.a().r().b("Error returning int value to wrapper", e10);
        }
    }

    public final void d0(com.google.android.gms.internal.measurement.w1 w1Var, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            w1Var.zzb(bundle);
        } catch (RemoteException e10) {
            this.f8322a.a().r().b("Error returning byte array to wrapper", e10);
        }
    }

    public final void e0(com.google.android.gms.internal.measurement.w1 w1Var, boolean z10) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z10);
        try {
            w1Var.zzb(bundle);
        } catch (RemoteException e10) {
            this.f8322a.a().r().b("Error returning boolean value to wrapper", e10);
        }
    }

    public final void f0(com.google.android.gms.internal.measurement.w1 w1Var, Bundle bundle) {
        try {
            w1Var.zzb(bundle);
        } catch (RemoteException e10) {
            this.f8322a.a().r().b("Error returning bundle value to wrapper", e10);
        }
    }

    public final void g0(com.google.android.gms.internal.measurement.w1 w1Var, ArrayList arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            w1Var.zzb(bundle);
        } catch (RemoteException e10) {
            this.f8322a.a().r().b("Error returning bundle list to wrapper", e10);
        }
    }

    @Override // com.google.android.gms.measurement.internal.a8
    protected final boolean i() {
        return true;
    }

    public final URL i0(long j10, String str, String str2, long j11, String str3) {
        try {
            n5.q.e(str2);
            n5.q.e(str);
            String format = String.format("https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s", String.format("v%s.%s", 133005L, Integer.valueOf(W())), str2, str, Long.valueOf(j11));
            if (str.equals(this.f8322a.w().j())) {
                format = format.concat("&ddl_test=1");
            }
            if (!str3.isEmpty()) {
                if (str3.charAt(0) != '&') {
                    format = format.concat("&");
                }
                format = format.concat(str3);
            }
            return new URL(format);
        } catch (IllegalArgumentException | MalformedURLException e10) {
            this.f8322a.a().o().b("Failed to create BOW URL for Deferred Deep Link. exception", e10.getMessage());
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.a8
    protected final void j() {
        h();
        SecureRandom secureRandom = new SecureRandom();
        long nextLong = secureRandom.nextLong();
        if (nextLong == 0) {
            nextLong = secureRandom.nextLong();
            if (nextLong == 0) {
                this.f8322a.a().r().a("Utils falling back to Random for random id");
            }
        }
        this.f8303d.set(nextLong);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String l0() {
        byte[] bArr = new byte[16];
        q0().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean o(String str) {
        if (!TextUtils.isEmpty(str)) {
            n5.q.k(str);
            if (!str.matches("^1:\\d+:android:[a-f0-9]+$")) {
                this.f8322a.a().q().b("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", p5.x(str));
                return false;
            }
            return true;
        }
        this.f8322a.a().q().a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean p(String str, String str2) {
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        if (!isEmpty && !isEmpty2) {
            n5.q.k(str);
            if (!str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public final long p0() {
        long andIncrement;
        long j10;
        AtomicLong atomicLong = this.f8303d;
        if (atomicLong.get() == 0) {
            synchronized (atomicLong) {
                long nextLong = new Random(System.nanoTime() ^ this.f8322a.f().currentTimeMillis()).nextLong();
                int i10 = this.f8304e + 1;
                this.f8304e = i10;
                j10 = nextLong + i10;
            }
            return j10;
        }
        AtomicLong atomicLong2 = this.f8303d;
        synchronized (atomicLong2) {
            atomicLong2.compareAndSet(-1L, 1L);
            andIncrement = atomicLong2.getAndIncrement();
        }
        return andIncrement;
    }

    public final String q(String str, int i10, boolean z10) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) > i10) {
            if (!z10) {
                return null;
            }
            return String.valueOf(str.substring(0, str.offsetByCodePoints(0, i10))).concat("...");
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SecureRandom q0() {
        h();
        if (this.f8302c == null) {
            this.f8302c = new SecureRandom();
        }
        return this.f8302c;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00d2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int r(java.lang.String r14, java.lang.String r15, java.lang.String r16, java.lang.Object r17, android.os.Bundle r18, java.util.List r19, boolean r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.yd.r(java.lang.String, java.lang.String, java.lang.String, java.lang.Object, android.os.Bundle, java.util.List, boolean, boolean):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object s(String str, Object obj) {
        int x10;
        if ("_ev".equals(str)) {
            return n0(this.f8322a.w().y(null, false), obj, true, true, null);
        }
        if (N(str)) {
            x10 = this.f8322a.w().y(null, false);
        } else {
            x10 = this.f8322a.w().x(null, false);
        }
        return n0(x10, obj, false, true, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Bundle s0(Uri uri) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        if (uri == null) {
            return null;
        }
        try {
            if (uri.isHierarchical()) {
                str = uri.getQueryParameter("utm_campaign");
                str2 = uri.getQueryParameter("utm_source");
                str3 = uri.getQueryParameter("utm_medium");
                str4 = uri.getQueryParameter("gclid");
                str5 = uri.getQueryParameter("gbraid");
                str6 = uri.getQueryParameter("utm_id");
                str7 = uri.getQueryParameter("dclid");
                str8 = uri.getQueryParameter("srsltid");
                str9 = uri.getQueryParameter("sfmc_id");
            } else {
                str = null;
                str2 = null;
                str3 = null;
                str4 = null;
                str5 = null;
                str6 = null;
                str7 = null;
                str8 = null;
                str9 = null;
            }
            if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3) && TextUtils.isEmpty(str4) && TextUtils.isEmpty(str5) && TextUtils.isEmpty(str6) && TextUtils.isEmpty(str7) && TextUtils.isEmpty(str8) && TextUtils.isEmpty(str9)) {
                return null;
            }
            Bundle bundle = new Bundle();
            if (!TextUtils.isEmpty(str)) {
                str10 = "sfmc_id";
                bundle.putString("campaign", str);
            } else {
                str10 = "sfmc_id";
            }
            if (!TextUtils.isEmpty(str2)) {
                bundle.putString(ClimateForcast.SOURCE, str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                bundle.putString("medium", str3);
            }
            if (!TextUtils.isEmpty(str4)) {
                bundle.putString("gclid", str4);
            }
            if (!TextUtils.isEmpty(str5)) {
                bundle.putString("gbraid", str5);
            }
            String queryParameter = uri.getQueryParameter("gad_source");
            if (!TextUtils.isEmpty(queryParameter)) {
                bundle.putString("gad_source", queryParameter);
            }
            String queryParameter2 = uri.getQueryParameter("utm_term");
            if (!TextUtils.isEmpty(queryParameter2)) {
                bundle.putString("term", queryParameter2);
            }
            String queryParameter3 = uri.getQueryParameter("utm_content");
            if (!TextUtils.isEmpty(queryParameter3)) {
                bundle.putString("content", queryParameter3);
            }
            String queryParameter4 = uri.getQueryParameter("aclid");
            if (!TextUtils.isEmpty(queryParameter4)) {
                bundle.putString("aclid", queryParameter4);
            }
            String queryParameter5 = uri.getQueryParameter("cp1");
            if (!TextUtils.isEmpty(queryParameter5)) {
                bundle.putString("cp1", queryParameter5);
            }
            String queryParameter6 = uri.getQueryParameter("anid");
            if (!TextUtils.isEmpty(queryParameter6)) {
                bundle.putString("anid", queryParameter6);
            }
            if (!TextUtils.isEmpty(str6)) {
                bundle.putString("campaign_id", str6);
            }
            if (!TextUtils.isEmpty(str7)) {
                bundle.putString("dclid", str7);
            }
            String queryParameter7 = uri.getQueryParameter("utm_source_platform");
            if (!TextUtils.isEmpty(queryParameter7)) {
                bundle.putString("source_platform", queryParameter7);
            }
            String queryParameter8 = uri.getQueryParameter("utm_creative_format");
            if (!TextUtils.isEmpty(queryParameter8)) {
                bundle.putString("creative_format", queryParameter8);
            }
            String queryParameter9 = uri.getQueryParameter("utm_marketing_tactic");
            if (!TextUtils.isEmpty(queryParameter9)) {
                bundle.putString("marketing_tactic", queryParameter9);
            }
            if (!TextUtils.isEmpty(str8)) {
                bundle.putString("srsltid", str8);
            }
            if (!TextUtils.isEmpty(str9)) {
                bundle.putString(str10, str9);
            }
            for (String str11 : uri.getQueryParameterNames()) {
                if (str11.startsWith("gad_")) {
                    String queryParameter10 = uri.getQueryParameter(str11);
                    if (!TextUtils.isEmpty(queryParameter10)) {
                        bundle.putString(str11, queryParameter10);
                    }
                }
            }
            return bundle;
        } catch (UnsupportedOperationException e10) {
            this.f8322a.a().r().b("Install referrer url isn't a hierarchical URI", e10);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Bundle t(String str, String str2, Bundle bundle, List list, boolean z10) {
        int i10;
        int i11;
        w6 w6Var;
        String str3;
        String str4;
        List list2 = list;
        boolean O = O(str2, i6.t.f17315d);
        if (bundle != null) {
            Bundle bundle2 = new Bundle(bundle);
            w6 w6Var2 = this.f8322a;
            int v10 = w6Var2.w().v();
            int i12 = 0;
            boolean z11 = false;
            for (String str5 : new TreeSet(bundle.keySet())) {
                if (list2 != null && list2.contains(str5)) {
                    i10 = 0;
                } else {
                    if (!z10) {
                        i10 = z0(str5);
                    } else {
                        i10 = 0;
                    }
                    if (i10 == 0) {
                        i10 = A0(str5);
                    }
                }
                if (i10 != 0) {
                    if (i10 == 3) {
                        str4 = str5;
                    } else {
                        str4 = null;
                    }
                    x(bundle2, i10, str5, str4);
                    bundle2.remove(str5);
                    i11 = v10;
                    w6Var = w6Var2;
                } else {
                    i11 = v10;
                    w6Var = w6Var2;
                    int r10 = r(str, str2, str5, bundle.get(str5), bundle2, list, z10, O);
                    if (r10 == 17) {
                        x(bundle2, 17, str5, Boolean.FALSE);
                    } else if (r10 != 0 && !"_ev".equals(str5)) {
                        if (r10 == 21) {
                            str3 = str2;
                        } else {
                            str3 = str5;
                        }
                        x(bundle2, r10, str3, bundle.get(str5));
                        bundle2.remove(str5);
                    }
                    if (r0(str5)) {
                        int i13 = i12 + 1;
                        if (i13 > i11) {
                            if (!w6Var.w().H(null, c5.f7341f1) || !z11) {
                                StringBuilder sb2 = new StringBuilder(String.valueOf(i11).length() + 37);
                                sb2.append("Event can't contain more than ");
                                sb2.append(i11);
                                sb2.append(" params");
                                w6Var.a().q().c(sb2.toString(), w6Var.D().a(str2), w6Var.D().e(bundle));
                            }
                            m0(bundle2, 5);
                            bundle2.remove(str5);
                            z11 = true;
                        }
                        i12 = i13;
                        v10 = i11;
                        w6Var2 = w6Var;
                        list2 = list;
                    }
                }
                v10 = i11;
                w6Var2 = w6Var;
                list2 = list;
            }
            return bundle2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean t0(String str, String str2) {
        if (str2 == null) {
            this.f8322a.a().q().b("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            this.f8322a.a().q().b("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt)) {
                this.f8322a.a().q().c("Name must start with a letter. Type, name", str, str2);
                return false;
            }
            int length = str2.length();
            int charCount = Character.charCount(codePointAt);
            while (charCount < length) {
                int codePointAt2 = str2.codePointAt(charCount);
                if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                    this.f8322a.a().q().c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
                charCount += Character.charCount(codePointAt2);
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void u(q5 q5Var, int i10) {
        Bundle bundle = q5Var.f7922d;
        int i11 = 0;
        boolean z10 = false;
        for (String str : new TreeSet(bundle.keySet())) {
            if (r0(str) && (i11 = i11 + 1) > i10) {
                w6 w6Var = this.f8322a;
                if (!w6Var.w().H(null, c5.f7341f1) || !z10) {
                    StringBuilder sb2 = new StringBuilder(String.valueOf(i10).length() + 37);
                    sb2.append("Event can't contain more than ");
                    sb2.append(i10);
                    sb2.append(" params");
                    w6Var.a().q().c(sb2.toString(), w6Var.D().a(q5Var.f7919a), w6Var.D().e(bundle));
                    m0(bundle, 5);
                }
                bundle.remove(str);
                z10 = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean u0(String str, String str2) {
        if (str2 == null) {
            this.f8322a.a().q().b("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            this.f8322a.a().q().b("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt)) {
                if (codePointAt == 95) {
                    codePointAt = 95;
                } else {
                    this.f8322a.a().q().c("Name must start with a letter or _ (underscore). Type, name", str, str2);
                    return false;
                }
            }
            int length = str2.length();
            int charCount = Character.charCount(codePointAt);
            while (charCount < length) {
                int codePointAt2 = str2.codePointAt(charCount);
                if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                    this.f8322a.a().q().c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
                charCount += Character.charCount(codePointAt2);
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void v(Parcelable[] parcelableArr, int i10) {
        n5.q.k(parcelableArr);
        for (Parcelable parcelable : parcelableArr) {
            Bundle bundle = (Bundle) parcelable;
            int i11 = 0;
            boolean z10 = false;
            for (String str : new TreeSet(bundle.keySet())) {
                if (r0(str) && !O(str, i6.u.f17319d) && (i11 = i11 + 1) > i10) {
                    w6 w6Var = this.f8322a;
                    if (!w6Var.w().H(null, c5.f7341f1) || !z10) {
                        n5 q10 = w6Var.a().q();
                        StringBuilder sb2 = new StringBuilder(String.valueOf(i10).length() + 60);
                        sb2.append("Param can't contain more than ");
                        sb2.append(i10);
                        sb2.append(" item-scoped custom parameters");
                        q10.c(sb2.toString(), w6Var.D().b(str), w6Var.D().e(bundle));
                    }
                    m0(bundle, 28);
                    bundle.remove(str);
                    z10 = true;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean v0(String str, String[] strArr, String[] strArr2, String str2) {
        if (str2 == null) {
            this.f8322a.a().q().b("Name is required and can't be null. Type", str);
            return false;
        }
        n5.q.k(str2);
        String[] strArr3 = f8299i;
        for (int i10 = 0; i10 < 3; i10++) {
            if (str2.startsWith(strArr3[i10])) {
                this.f8322a.a().q().c("Name starts with reserved prefix. Type, name", str, str2);
                return false;
            }
        }
        if (strArr != null && O(str2, strArr)) {
            if (strArr2 == null || !O(str2, strArr2)) {
                this.f8322a.a().q().c("Name is reserved. Type, name", str, str2);
                return false;
            }
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void w(Bundle bundle, Bundle bundle2) {
        if (bundle2 != null) {
            for (String str : bundle2.keySet()) {
                if (!bundle.containsKey(str)) {
                    this.f8322a.C().A(bundle, str, bundle2.get(str));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean w0(String str, int i10, String str2) {
        if (str2 == null) {
            this.f8322a.a().q().b("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.codePointCount(0, str2.length()) > i10) {
            this.f8322a.a().q().d("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i10), str2);
            return false;
        } else {
            return true;
        }
    }

    final void x(Bundle bundle, int i10, String str, Object obj) {
        if (m0(bundle, i10)) {
            this.f8322a.w();
            bundle.putString("_ev", q(str, 40, true));
            if (obj != null) {
                n5.q.k(bundle);
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    bundle.putLong("_el", obj.toString().length());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int x0(String str) {
        if (!u0("event", str)) {
            return 2;
        }
        if (!v0("event", i6.t.f17312a, i6.t.f17313b, str)) {
            return 13;
        }
        this.f8322a.w();
        if (!w0("event", 40, str)) {
            return 2;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int y(String str, Object obj) {
        boolean C0;
        if ("_ldl".equals(str)) {
            C0 = C0("user property referrer", str, o0(str), obj);
        } else {
            C0 = C0("user property", str, o0(str), obj);
        }
        if (C0) {
            return 0;
        }
        return 7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int y0(String str) {
        if (!u0("user property", str)) {
            return 6;
        }
        if (!v0("user property", i6.v.f17320a, null, str)) {
            return 15;
        }
        this.f8322a.w();
        if (!w0("user property", 24, str)) {
            return 6;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object z(String str, Object obj) {
        if ("_ldl".equals(str)) {
            return n0(o0(str), obj, true, false, null);
        }
        return n0(o0(str), obj, false, false, null);
    }

    final int z0(String str) {
        if (!t0("event param", str)) {
            return 3;
        }
        if (!v0("event param", null, null, str)) {
            return 14;
        }
        this.f8322a.w();
        if (!w0("event param", 40, str)) {
            return 3;
        }
        return 0;
    }
}
