package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.text.TextUtils;
import com.yandex.metrica.networktasks.api.NetworkTask;
import java.io.Closeable;
import java.math.BigDecimal;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
/* loaded from: classes2.dex */
public final class A2 {

    /* renamed from: a  reason: collision with root package name */
    private static final C0717mn f9695a = new C0717mn();

    /* loaded from: classes2.dex */
    class a implements NetworkTask.ShouldTryNextHostCondition {
        a() {
        }

        @Override // com.yandex.metrica.networktasks.api.NetworkTask.ShouldTryNextHostCondition
        public boolean shouldTryNextHost(int i10) {
            return !A2.b(i10);
        }
    }

    public static boolean a(Object obj) {
        return obj != null;
    }

    public static boolean b(int i10) {
        return i10 == 400;
    }

    public static <K, V> Map<K, V> c(Map<K, V> map) {
        if (map == null) {
            return null;
        }
        return new HashMap(map);
    }

    public static <K, V> Map<K, V> d(Map<K, V> map) {
        return Collections.unmodifiableMap(new HashMap(map));
    }

    public static <K, V> Map<K, V> e(Map<K, V> map) {
        return Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    public static String a(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 0);
        } catch (Throwable unused) {
            packageInfo = null;
        }
        return packageInfo == null ? "0.0" : packageInfo.versionName;
    }

    public static int b(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 0);
        } catch (Throwable unused) {
            packageInfo = null;
        }
        if (packageInfo == null) {
            return 0;
        }
        return packageInfo.versionCode;
    }

    public static <T> List<T> c(Collection<T> collection) {
        return Collections.unmodifiableList(new ArrayList(collection));
    }

    public static boolean a(int i10) {
        return Build.VERSION.SDK_INT >= i10;
    }

    public static boolean b(Map map) {
        return map == null || map.size() == 0;
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean b(Collection collection) {
        return collection == null || collection.size() == 0;
    }

    public static void a(Cursor cursor) {
        if (cursor == null || cursor.isClosed()) {
            return;
        }
        cursor.close();
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    public static void a(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase != null) {
            try {
                sQLiteDatabase.endTransaction();
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean a(byte[] bArr) {
        return bArr == null || bArr.length == 0;
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str) || str.length() != 36) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(str);
        sb2.replace(8, str.length() - 4, "-xxxx-xxxx-xxxx-xxxxxxxx");
        return sb2.toString();
    }

    public static Set<Integer> a(int[] iArr) {
        HashSet hashSet = new HashSet();
        for (int i10 : iArr) {
            hashSet.add(Integer.valueOf(i10));
        }
        return hashSet;
    }

    public static String a(String str, int i10) {
        if (str == null) {
            return null;
        }
        return str.length() > i10 ? str.substring(0, i10) : str;
    }

    public static List<String> a(String... strArr) {
        TreeSet treeSet = new TreeSet();
        Collections.addAll(treeSet, strArr);
        return c(treeSet);
    }

    public static Object a(InterfaceC0766om interfaceC0766om, Object obj) {
        if (obj != null) {
            try {
                return interfaceC0766om.a(obj);
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    public static <T, S> S a(InterfaceC0766om<T, S> interfaceC0766om, Context context, String str, String str2, String str3) {
        try {
            return (S) a((InterfaceC0766om) interfaceC0766om, context.getSystemService(str));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static <K, V> List<Map.Entry<K, V>> a(Map<K, V> map) {
        if (map == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<K, V> entry : map.entrySet()) {
            arrayList.add(new AbstractMap.SimpleEntry(entry));
        }
        return arrayList;
    }

    public static <K, V> Map<K, V> a(List<Map.Entry<K, V>> list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (list != null) {
            for (Map.Entry<K, V> entry : list) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    public static <T> List<T> a(Collection<T> collection) {
        if (collection == null) {
            return null;
        }
        return new ArrayList(collection);
    }

    public static BigDecimal a(long j10) {
        return new BigDecimal(j10).divide(new BigDecimal(1000000), 6, 6);
    }

    public static double a(double d10, double d11) {
        return (Double.isNaN(d10) || Double.isInfinite(d10)) ? d11 : d10;
    }

    public static NetworkTask.ShouldTryNextHostCondition a() {
        return new a();
    }
}
