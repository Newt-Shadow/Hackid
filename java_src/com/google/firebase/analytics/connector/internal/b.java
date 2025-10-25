package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import i6.v;
import o6.q;
import o6.s;
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static final s f8693a = s.I("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire");

    /* renamed from: b  reason: collision with root package name */
    private static final q f8694b = q.K("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");

    /* renamed from: c  reason: collision with root package name */
    private static final q f8695c = q.I("auto", "app", "am");

    /* renamed from: d  reason: collision with root package name */
    private static final q f8696d = q.G("_r", "_dbg");

    /* renamed from: e  reason: collision with root package name */
    private static final q f8697e = new q.a().i(v.f17320a).i(v.f17321b).k();

    /* renamed from: f  reason: collision with root package name */
    private static final q f8698f = q.G("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    /* renamed from: g  reason: collision with root package name */
    public static final /* synthetic */ int f8699g = 0;

    public static boolean a(String str) {
        if (!f8695c.contains(str)) {
            return true;
        }
        return false;
    }

    public static boolean b(String str, Bundle bundle) {
        if (f8694b.contains(str)) {
            return false;
        }
        if (bundle != null) {
            q qVar = f8696d;
            int size = qVar.size();
            int i10 = 0;
            while (i10 < size) {
                boolean containsKey = bundle.containsKey((String) qVar.get(i10));
                i10++;
                if (containsKey) {
                    return false;
                }
            }
            return true;
        }
        return true;
    }

    public static boolean c(String str) {
        if (!f8693a.contains(str)) {
            return true;
        }
        return false;
    }

    public static boolean d(String str, String str2) {
        if (!"_ce1".equals(str2) && !"_ce2".equals(str2)) {
            if ("_ln".equals(str2)) {
                if (str.equals("fcm") || str.equals("fiam")) {
                    return true;
                }
                return false;
            } else if (f8697e.contains(str2)) {
                return false;
            } else {
                q qVar = f8698f;
                int size = qVar.size();
                int i10 = 0;
                while (i10 < size) {
                    boolean matches = str2.matches((String) qVar.get(i10));
                    i10++;
                    if (matches) {
                        return false;
                    }
                }
                return true;
            }
        } else if (str.equals("fcm") || str.equals("frc")) {
            return true;
        } else {
            return false;
        }
    }

    public static boolean e(String str, String str2, Bundle bundle) {
        char c10;
        if (!"_cmp".equals(str2)) {
            return true;
        }
        if (!a(str) || bundle == null) {
            return false;
        }
        q qVar = f8696d;
        int size = qVar.size();
        int i10 = 0;
        while (i10 < size) {
            boolean containsKey = bundle.containsKey((String) qVar.get(i10));
            i10++;
            if (containsKey) {
                return false;
            }
        }
        int hashCode = str.hashCode();
        if (hashCode != 101200) {
            if (hashCode != 101230) {
                if (hashCode == 3142703 && str.equals("fiam")) {
                    c10 = 2;
                }
                c10 = 65535;
            } else {
                if (str.equals("fdl")) {
                    c10 = 1;
                }
                c10 = 65535;
            }
        } else {
            if (str.equals("fcm")) {
                c10 = 0;
            }
            c10 = 65535;
        }
        if (c10 != 0) {
            if (c10 != 1) {
                if (c10 != 2) {
                    return false;
                }
                bundle.putString("_cis", "fiam_integration");
                return true;
            }
            bundle.putString("_cis", "fdl_integration");
            return true;
        }
        bundle.putString("_cis", "fcm_integration");
        return true;
    }
}
