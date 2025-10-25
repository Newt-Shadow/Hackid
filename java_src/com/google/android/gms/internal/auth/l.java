package com.google.android.gms.internal.auth;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public abstract class l {

    /* renamed from: f  reason: collision with root package name */
    static HashMap f6090f;

    /* renamed from: k  reason: collision with root package name */
    private static Object f6095k;

    /* renamed from: l  reason: collision with root package name */
    static boolean f6096l;

    /* renamed from: a  reason: collision with root package name */
    public static final Uri f6085a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: b  reason: collision with root package name */
    public static final Uri f6086b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* renamed from: c  reason: collision with root package name */
    public static final Pattern f6087c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final Pattern f6088d = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* renamed from: e  reason: collision with root package name */
    private static final AtomicBoolean f6089e = new AtomicBoolean();

    /* renamed from: g  reason: collision with root package name */
    static final HashMap f6091g = new HashMap(16, 1.0f);

    /* renamed from: h  reason: collision with root package name */
    static final HashMap f6092h = new HashMap(16, 1.0f);

    /* renamed from: i  reason: collision with root package name */
    static final HashMap f6093i = new HashMap(16, 1.0f);

    /* renamed from: j  reason: collision with root package name */
    static final HashMap f6094j = new HashMap(16, 1.0f);

    /* renamed from: m  reason: collision with root package name */
    static final String[] f6097m = new String[0];

    public static String a(ContentResolver contentResolver, String str, String str2) {
        synchronized (l.class) {
            String str3 = null;
            if (f6090f == null) {
                f6089e.set(false);
                f6090f = new HashMap(16, 1.0f);
                f6095k = new Object();
                f6096l = false;
                contentResolver.registerContentObserver(f6085a, true, new k(null));
            } else if (f6089e.getAndSet(false)) {
                f6090f.clear();
                f6091g.clear();
                f6092h.clear();
                f6093i.clear();
                f6094j.clear();
                f6095k = new Object();
                f6096l = false;
            }
            Object obj = f6095k;
            if (f6090f.containsKey(str)) {
                String str4 = (String) f6090f.get(str);
                if (str4 != null) {
                    str3 = str4;
                }
                return str3;
            }
            int length = f6097m.length;
            Cursor query = contentResolver.query(f6085a, null, null, new String[]{str}, null);
            if (query == null) {
                return null;
            }
            try {
                if (!query.moveToFirst()) {
                    c(obj, str, null);
                    return null;
                }
                String string = query.getString(1);
                if (string != null && string.equals(null)) {
                    string = null;
                }
                c(obj, str, string);
                if (string == null) {
                    return null;
                }
                return string;
            } finally {
                query.close();
            }
        }
    }

    private static void c(Object obj, String str, String str2) {
        synchronized (l.class) {
            if (obj == f6095k) {
                f6090f.put(str, str2);
            }
        }
    }
}
