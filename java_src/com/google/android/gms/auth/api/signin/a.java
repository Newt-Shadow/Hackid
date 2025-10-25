package com.google.android.gms.auth.api.signin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import i5.r;
import java.util.Collections;
import java.util.HashSet;
import m6.Task;
import m6.n;
import n5.q;
/* loaded from: classes.dex */
public abstract class a {
    public static b a(Context context, GoogleSignInOptions googleSignInOptions) {
        return new b(context, (GoogleSignInOptions) q.k(googleSignInOptions));
    }

    public static GoogleSignInAccount b(Context context) {
        return r.c(context).a();
    }

    public static Task c(Intent intent) {
        h5.b d10 = i5.q.d(intent);
        GoogleSignInAccount a10 = d10.a();
        if (d10.d().n() && a10 != null) {
            return n.e(a10);
        }
        return n.d(n5.b.a(d10.d()));
    }

    public static boolean d(GoogleSignInAccount googleSignInAccount, Scope... scopeArr) {
        if (googleSignInAccount == null) {
            return false;
        }
        HashSet hashSet = new HashSet();
        Collections.addAll(hashSet, scopeArr);
        return googleSignInAccount.n().containsAll(hashSet);
    }

    public static void e(Activity activity, int i10, GoogleSignInAccount googleSignInAccount, Scope... scopeArr) {
        q.l(activity, "Please provide a non-null Activity");
        q.l(scopeArr, "Please provide at least one scope");
        activity.startActivityForResult(f(activity, googleSignInAccount, scopeArr), i10);
    }

    private static Intent f(Activity activity, GoogleSignInAccount googleSignInAccount, Scope... scopeArr) {
        GoogleSignInOptions.a aVar = new GoogleSignInOptions.a();
        if (scopeArr.length > 0) {
            aVar.f(scopeArr[0], scopeArr);
        }
        if (googleSignInAccount != null && !TextUtils.isEmpty(googleSignInAccount.i())) {
            aVar.h((String) q.k(googleSignInAccount.i()));
        }
        return new b(activity, aVar.a()).z();
    }
}
