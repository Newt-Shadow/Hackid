package nc;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.InstallSourceInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import org.apache.tika.fork.ForkServer;
import yc.k;
/* loaded from: classes2.dex */
public final class b implements MethodChannel.MethodCallHandler, FlutterPlugin {

    /* renamed from: c  reason: collision with root package name */
    public static final a f26554c = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private Context f26555a;

    /* renamed from: b  reason: collision with root package name */
    private MethodChannel f26556b;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final String a(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        char[] cArr2 = new char[bArr.length * 2];
        int length = bArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = bArr[i10] & ForkServer.ERROR;
            int i12 = i10 * 2;
            cArr2[i12] = cArr[i11 >>> 4];
            cArr2[i12 + 1] = cArr[i11 & 15];
        }
        return new String(cArr2);
    }

    private final String b(PackageManager packageManager) {
        Object v10;
        Object v11;
        String e10;
        boolean z10;
        SigningInfo signingInfo;
        boolean hasMultipleSigners;
        Signature[] signingCertificateHistory;
        Object v12;
        Signature[] apkContentsSigners;
        Object v13;
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                Context context = this.f26555a;
                m.b(context);
                signingInfo = packageManager.getPackageInfo(context.getPackageName(), 134217728).signingInfo;
                if (signingInfo == null) {
                    return null;
                }
                hasMultipleSigners = signingInfo.hasMultipleSigners();
                if (hasMultipleSigners) {
                    apkContentsSigners = signingInfo.getApkContentsSigners();
                    m.d(apkContentsSigners, "getApkContentsSigners(...)");
                    v13 = k.v(apkContentsSigners);
                    byte[] byteArray = ((Signature) v13).toByteArray();
                    m.d(byteArray, "toByteArray(...)");
                    e10 = e(byteArray);
                } else {
                    signingCertificateHistory = signingInfo.getSigningCertificateHistory();
                    m.d(signingCertificateHistory, "getSigningCertificateHistory(...)");
                    v12 = k.v(signingCertificateHistory);
                    byte[] byteArray2 = ((Signature) v12).toByteArray();
                    m.d(byteArray2, "toByteArray(...)");
                    e10 = e(byteArray2);
                }
            } else {
                Context context2 = this.f26555a;
                m.b(context2);
                Signature[] signatureArr = packageManager.getPackageInfo(context2.getPackageName(), 64).signatures;
                boolean z11 = true;
                if (signatureArr != null) {
                    if (signatureArr.length == 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (!z10) {
                        z11 = false;
                    }
                }
                if (!z11) {
                    v10 = k.v(signatureArr);
                    if (v10 == null) {
                        return null;
                    }
                    v11 = k.v(signatureArr);
                    byte[] byteArray3 = ((Signature) v11).toByteArray();
                    m.d(byteArray3, "toByteArray(...)");
                    e10 = e(byteArray3);
                } else {
                    return null;
                }
            }
            return e10;
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException unused) {
            return null;
        }
    }

    private final String c() {
        InstallSourceInfo installSourceInfo;
        String initiatingPackageName;
        Context context = this.f26555a;
        m.b(context);
        PackageManager packageManager = context.getPackageManager();
        Context context2 = this.f26555a;
        m.b(context2);
        String packageName = context2.getPackageName();
        if (Build.VERSION.SDK_INT >= 30) {
            installSourceInfo = packageManager.getInstallSourceInfo(packageName);
            initiatingPackageName = installSourceInfo.getInitiatingPackageName();
            return initiatingPackageName;
        }
        return packageManager.getInstallerPackageName(packageName);
    }

    private final long d(PackageInfo packageInfo) {
        long longVersionCode;
        if (Build.VERSION.SDK_INT >= 28) {
            longVersionCode = packageInfo.getLongVersionCode();
            return longVersionCode;
        }
        return packageInfo.versionCode;
    }

    private final String e(byte[] bArr) {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.update(bArr);
        byte[] digest = messageDigest.digest();
        m.b(digest);
        return a(digest);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        this.f26555a = binding.getApplicationContext();
        MethodChannel methodChannel = new MethodChannel(binding.getBinaryMessenger(), "dev.fluttercommunity.plus/package_info");
        this.f26556b = methodChannel;
        m.b(methodChannel);
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        this.f26555a = null;
        MethodChannel methodChannel = this.f26556b;
        m.b(methodChannel);
        methodChannel.setMethodCallHandler(null);
        this.f26556b = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        CharSequence loadLabel;
        m.e(call, "call");
        m.e(result, "result");
        try {
            if (m.a(call.method, "getAll")) {
                Context context = this.f26555a;
                m.b(context);
                PackageManager packageManager = context.getPackageManager();
                Context context2 = this.f26555a;
                m.b(context2);
                PackageInfo packageInfo = packageManager.getPackageInfo(context2.getPackageName(), 0);
                m.b(packageManager);
                String b10 = b(packageManager);
                String c10 = c();
                long j10 = packageInfo.firstInstallTime;
                long j11 = packageInfo.lastUpdateTime;
                HashMap hashMap = new HashMap();
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                String str = "";
                hashMap.put("appName", (applicationInfo == null || (loadLabel = applicationInfo.loadLabel(packageManager)) == null || (r12 = loadLabel.toString()) == null) ? "" : "");
                Context context3 = this.f26555a;
                m.b(context3);
                hashMap.put("packageName", context3.getPackageName());
                String str2 = packageInfo.versionName;
                if (str2 != null) {
                    str = str2;
                }
                hashMap.put("version", str);
                m.b(packageInfo);
                hashMap.put("buildNumber", String.valueOf(d(packageInfo)));
                if (b10 != null) {
                    hashMap.put("buildSignature", b10);
                }
                if (c10 != null) {
                    hashMap.put("installerStore", c10);
                }
                hashMap.put("installTime", String.valueOf(j10));
                hashMap.put("updateTime", String.valueOf(j11));
                result.success(hashMap);
                return;
            }
            result.notImplemented();
        } catch (PackageManager.NameNotFoundException e10) {
            result.error("Name not found", e10.getMessage(), null);
        }
    }
}
