package com.google.android.gms.internal.auth;

import android.net.Uri;
/* loaded from: classes.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private final r.i f6154a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(r.i iVar) {
        this.f6154a = iVar;
    }

    public final String a(Uri uri, String str, String str2, String str3) {
        r.i iVar;
        if (uri != null) {
            iVar = (r.i) this.f6154a.get(uri.toString());
        } else {
            iVar = null;
        }
        if (iVar == null) {
            return null;
        }
        return (String) iVar.get("".concat(str3));
    }
}
