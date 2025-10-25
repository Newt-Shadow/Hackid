package qc;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import android.util.Base64;
import android.util.Log;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class a extends ContextWrapper {

    /* renamed from: a  reason: collision with root package name */
    public static final C0292a f28701a = new C0292a(null);

    /* renamed from: b  reason: collision with root package name */
    private static final String f28702b;

    /* renamed from: qc.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0292a {
        private C0292a() {
        }

        public /* synthetic */ C0292a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        String simpleName = a.class.getSimpleName();
        kotlin.jvm.internal.m.d(simpleName, "getSimpleName(...)");
        f28702b = simpleName;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context) {
        super(context);
        kotlin.jvm.internal.m.e(context, "context");
    }

    private final String b(String str, String str2) {
        String str3 = str + ' ' + str2;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            Charset UTF_8 = StandardCharsets.UTF_8;
            kotlin.jvm.internal.m.d(UTF_8, "UTF_8");
            byte[] bytes = str3.getBytes(UTF_8);
            kotlin.jvm.internal.m.d(bytes, "getBytes(...)");
            messageDigest.update(bytes);
            String encodeToString = Base64.encodeToString(Arrays.copyOfRange(messageDigest.digest(), 0, 9), 3);
            kotlin.jvm.internal.m.b(encodeToString);
            String substring = encodeToString.substring(0, 11);
            kotlin.jvm.internal.m.d(substring, "substring(...)");
            return substring;
        } catch (NoSuchAlgorithmException e10) {
            Log.e(f28702b, "hash:NoSuchAlgorithm", e10);
            return null;
        }
    }

    public final ArrayList a() {
        Signature[] signatureArr;
        SigningInfo signingInfo;
        ArrayList arrayList = new ArrayList();
        try {
            String packageName = getPackageName();
            PackageManager packageManager = getPackageManager();
            if (Build.VERSION.SDK_INT >= 28) {
                signingInfo = packageManager.getPackageInfo(packageName, 134217728).signingInfo;
                signatureArr = signingInfo.getApkContentsSigners();
                kotlin.jvm.internal.m.b(signatureArr);
            } else {
                signatureArr = packageManager.getPackageInfo(packageName, 64).signatures;
                kotlin.jvm.internal.m.b(signatureArr);
            }
            ArrayList<String> arrayList2 = new ArrayList();
            for (Signature signature : signatureArr) {
                kotlin.jvm.internal.m.b(packageName);
                String charsString = signature.toCharsString();
                kotlin.jvm.internal.m.d(charsString, "toCharsString(...)");
                String b10 = b(packageName, charsString);
                if (b10 != null) {
                    arrayList2.add(b10);
                }
            }
            for (String str : arrayList2) {
                arrayList.add(str);
            }
            return arrayList;
        } catch (PackageManager.NameNotFoundException e10) {
            Log.e(f28702b, "Unable to find package to obtain hash.", e10);
            return new ArrayList();
        }
    }
}
