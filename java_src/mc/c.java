package mc;

import android.app.ActivityManager;
import android.content.pm.FeatureInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.arthenica.ffmpegkit.Chapter;
import com.pichillilorenzo.flutter_inappwebview_android.credential_database.URLProtectionSpaceContract;
import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.m;
import yc.o;
import yc.p;
/* loaded from: classes2.dex */
public final class c implements MethodChannel.MethodCallHandler {

    /* renamed from: a  reason: collision with root package name */
    private final PackageManager f26018a;

    /* renamed from: b  reason: collision with root package name */
    private final ActivityManager f26019b;

    public c(PackageManager packageManager, ActivityManager activityManager) {
        m.e(packageManager, "packageManager");
        m.e(activityManager, "activityManager");
        this.f26018a = packageManager;
        this.f26019b = activityManager;
    }

    private final List a() {
        int r10;
        boolean z10;
        FeatureInfo[] systemAvailableFeatures = this.f26018a.getSystemAvailableFeatures();
        m.d(systemAvailableFeatures, "getSystemAvailableFeatures(...)");
        ArrayList<FeatureInfo> arrayList = new ArrayList();
        for (FeatureInfo featureInfo : systemAvailableFeatures) {
            if (featureInfo.name == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                arrayList.add(featureInfo);
            }
        }
        r10 = p.r(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(r10);
        for (FeatureInfo featureInfo2 : arrayList) {
            arrayList2.add(featureInfo2.name);
        }
        return arrayList2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001d, code lost:
        if (r0 == false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean b() {
        /*
            r6 = this;
            java.lang.String r0 = android.os.Build.BRAND
            java.lang.String r1 = "BRAND"
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r1 = "generic"
            r2 = 0
            r3 = 2
            r4 = 0
            boolean r0 = rd.n.H(r0, r1, r2, r3, r4)
            if (r0 == 0) goto L1f
            java.lang.String r0 = android.os.Build.DEVICE
            java.lang.String r5 = "DEVICE"
            kotlin.jvm.internal.m.d(r0, r5)
            boolean r0 = rd.n.H(r0, r1, r2, r3, r4)
            if (r0 != 0) goto Lb5
        L1f:
            java.lang.String r0 = android.os.Build.FINGERPRINT
            java.lang.String r5 = "FINGERPRINT"
            kotlin.jvm.internal.m.d(r0, r5)
            boolean r1 = rd.n.H(r0, r1, r2, r3, r4)
            if (r1 != 0) goto Lb5
            kotlin.jvm.internal.m.d(r0, r5)
            java.lang.String r1 = "unknown"
            boolean r0 = rd.n.H(r0, r1, r2, r3, r4)
            if (r0 != 0) goto Lb5
            java.lang.String r0 = android.os.Build.HARDWARE
            java.lang.String r1 = "HARDWARE"
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r5 = "goldfish"
            boolean r5 = rd.n.N(r0, r5, r2, r3, r4)
            if (r5 != 0) goto Lb5
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r1 = "ranchu"
            boolean r0 = rd.n.N(r0, r1, r2, r3, r4)
            if (r0 != 0) goto Lb5
            java.lang.String r0 = android.os.Build.MODEL
            java.lang.String r1 = "MODEL"
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r5 = "google_sdk"
            boolean r5 = rd.n.N(r0, r5, r2, r3, r4)
            if (r5 != 0) goto Lb5
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r5 = "Emulator"
            boolean r5 = rd.n.N(r0, r5, r2, r3, r4)
            if (r5 != 0) goto Lb5
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r1 = "Android SDK built for x86"
            boolean r0 = rd.n.N(r0, r1, r2, r3, r4)
            if (r0 != 0) goto Lb5
            java.lang.String r0 = android.os.Build.MANUFACTURER
            java.lang.String r1 = "MANUFACTURER"
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r1 = "Genymotion"
            boolean r0 = rd.n.N(r0, r1, r2, r3, r4)
            if (r0 != 0) goto Lb5
            java.lang.String r0 = android.os.Build.PRODUCT
            java.lang.String r1 = "PRODUCT"
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r5 = "sdk"
            boolean r5 = rd.n.N(r0, r5, r2, r3, r4)
            if (r5 != 0) goto Lb5
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r5 = "vbox86p"
            boolean r5 = rd.n.N(r0, r5, r2, r3, r4)
            if (r5 != 0) goto Lb5
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r5 = "emulator"
            boolean r5 = rd.n.N(r0, r5, r2, r3, r4)
            if (r5 != 0) goto Lb5
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r1 = "simulator"
            boolean r0 = rd.n.N(r0, r1, r2, r3, r4)
            if (r0 == 0) goto Lb6
        Lb5:
            r2 = 1
        Lb6:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: mc.c.b():boolean");
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        List k10;
        List k11;
        List k12;
        String str;
        m.e(call, "call");
        m.e(result, "result");
        if (call.method.equals("getDeviceInfo")) {
            HashMap hashMap = new HashMap();
            hashMap.put("board", Build.BOARD);
            hashMap.put("bootloader", Build.BOOTLOADER);
            hashMap.put("brand", Build.BRAND);
            hashMap.put("device", Build.DEVICE);
            hashMap.put("display", Build.DISPLAY);
            hashMap.put("fingerprint", Build.FINGERPRINT);
            hashMap.put("hardware", Build.HARDWARE);
            hashMap.put(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST, Build.HOST);
            hashMap.put(Chapter.KEY_ID, Build.ID);
            hashMap.put(CommonUrlParts.MANUFACTURER, Build.MANUFACTURER);
            hashMap.put(CommonUrlParts.MODEL, Build.MODEL);
            hashMap.put("product", Build.PRODUCT);
            int i10 = Build.VERSION.SDK_INT;
            String[] strArr = Build.SUPPORTED_32_BIT_ABIS;
            k10 = o.k(Arrays.copyOf(strArr, strArr.length));
            hashMap.put("supported32BitAbis", k10);
            String[] strArr2 = Build.SUPPORTED_64_BIT_ABIS;
            k11 = o.k(Arrays.copyOf(strArr2, strArr2.length));
            hashMap.put("supported64BitAbis", k11);
            String[] strArr3 = Build.SUPPORTED_ABIS;
            k12 = o.k(Arrays.copyOf(strArr3, strArr3.length));
            hashMap.put("supportedAbis", k12);
            hashMap.put("tags", Build.TAGS);
            hashMap.put("type", Build.TYPE);
            hashMap.put("isPhysicalDevice", Boolean.valueOf(!b()));
            hashMap.put("systemFeatures", a());
            HashMap hashMap2 = new HashMap();
            hashMap2.put("baseOS", Build.VERSION.BASE_OS);
            hashMap2.put("previewSdkInt", Integer.valueOf(Build.VERSION.PREVIEW_SDK_INT));
            hashMap2.put("securityPatch", Build.VERSION.SECURITY_PATCH);
            hashMap2.put("codename", Build.VERSION.CODENAME);
            hashMap2.put("incremental", Build.VERSION.INCREMENTAL);
            hashMap2.put("release", Build.VERSION.RELEASE);
            hashMap2.put("sdkInt", Integer.valueOf(i10));
            hashMap.put("version", hashMap2);
            hashMap.put("isLowRamDevice", Boolean.valueOf(this.f26019b.isLowRamDevice()));
            if (i10 >= 26) {
                try {
                    str = Build.getSerial();
                } catch (SecurityException unused) {
                    str = CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE;
                }
                hashMap.put("serialNumber", str);
            } else {
                hashMap.put("serialNumber", Build.SERIAL);
            }
            result.success(hashMap);
            return;
        }
        result.notImplemented();
    }
}
