package com.google.android.gms.internal.play_billing;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.h;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
/* loaded from: classes.dex */
public abstract class b0 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f6954a = Runtime.getRuntime().availableProcessors();

    public static int a(Intent intent, String str) {
        if (intent == null) {
            k("ProxyBillingActivity", "Got null intent!");
            return 0;
        }
        return m(intent.getExtras(), "ProxyBillingActivity");
    }

    public static int b(Bundle bundle, String str) {
        if (bundle == null) {
            k(str, "Unexpected null bundle received!");
            return 6;
        }
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            j(str, "getResponseCodeFromBundle() got null response code, assuming OK");
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            k(str, "Unexpected type for bundle response code: ".concat(obj.getClass().getName()));
            return 6;
        }
    }

    public static int c(Intent intent, String str) {
        return f(intent, "ProxyBillingActivity").b();
    }

    public static Bundle d(boolean z10, boolean z11, boolean z12, boolean z13, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        if (z10) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        return bundle;
    }

    public static Bundle e(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        return bundle;
    }

    public static com.android.billingclient.api.h f(Intent intent, String str) {
        if (intent == null) {
            k("BillingHelper", "Got null intent!");
            h.a c10 = com.android.billingclient.api.h.c();
            c10.c(6);
            c10.b("An internal error occurred.");
            return c10.a();
        }
        h.a c11 = com.android.billingclient.api.h.c();
        c11.c(b(intent.getExtras(), str));
        c11.b(g(intent.getExtras(), str));
        return c11.a();
    }

    public static String g(Bundle bundle, String str) {
        if (bundle == null) {
            k(str, "Unexpected null bundle received!");
            return "";
        }
        Object obj = bundle.get("DEBUG_MESSAGE");
        if (obj == null) {
            j(str, "getDebugMessageFromBundle() got null response code, assuming OK");
            return "";
        } else if (obj instanceof String) {
            return (String) obj;
        } else {
            k(str, "Unexpected type for debug message: ".concat(obj.getClass().getName()));
            return "";
        }
    }

    public static String h(int i10) {
        return a.a(i10).toString();
    }

    public static List i(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        ArrayList arrayList = new ArrayList();
        if (stringArrayList != null && stringArrayList2 != null) {
            int size = stringArrayList.size();
            j("BillingHelper", "Found purchase list of " + size + " items");
            for (int i10 = 0; i10 < stringArrayList.size() && i10 < stringArrayList2.size(); i10++) {
                Purchase n10 = n(stringArrayList.get(i10), stringArrayList2.get(i10));
                if (n10 != null) {
                    arrayList.add(n10);
                }
            }
        } else {
            Purchase n11 = n(bundle.getString("INAPP_PURCHASE_DATA"), bundle.getString("INAPP_DATA_SIGNATURE"));
            if (n11 == null) {
                j("BillingHelper", "Couldn't find single purchase data as well.");
                return null;
            }
            arrayList.add(n11);
        }
        return arrayList;
    }

    public static void j(String str, String str2) {
        if (Log.isLoggable(str, 2)) {
            if (!str2.isEmpty()) {
                int i10 = 40000;
                while (!str2.isEmpty() && i10 > 0) {
                    int min = Math.min(str2.length(), Math.min(4000, i10));
                    Log.v(str, str2.substring(0, min));
                    str2 = str2.substring(min);
                    i10 -= min;
                }
                return;
            }
            Log.v(str, str2);
        }
    }

    public static void k(String str, String str2) {
        if (Log.isLoggable(str, 5)) {
            Log.w(str, str2);
        }
    }

    public static void l(String str, String str2, Throwable th) {
        if (Log.isLoggable(str, 5)) {
            Log.w(str, str2, th);
        }
    }

    private static int m(Bundle bundle, String str) {
        if (bundle == null) {
            k(str, "Unexpected null bundle received!");
            return 0;
        }
        return bundle.getInt("IN_APP_MESSAGE_RESPONSE_CODE", 0);
    }

    private static Purchase n(String str, String str2) {
        if (str != null && str2 != null) {
            try {
                return new Purchase(str, str2);
            } catch (JSONException e10) {
                k("BillingHelper", "Got JSONException while parsing purchase data: ".concat(e10.toString()));
                return null;
            }
        }
        j("BillingHelper", "Received a null purchase data.");
        return null;
    }
}
