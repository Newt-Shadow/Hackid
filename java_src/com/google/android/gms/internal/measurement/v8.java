package com.google.android.gms.internal.measurement;

import android.net.Uri;
/* loaded from: classes.dex */
public final class v8 {

    /* renamed from: a  reason: collision with root package name */
    private final r.i f6850a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v8(r.i iVar) {
        this.f6850a = iVar;
    }

    public final String a(Uri uri, String str, String str2, String str3) {
        r.i iVar;
        if (uri != null) {
            iVar = (r.i) this.f6850a.get(uri.toString());
        } else {
            iVar = null;
        }
        if (iVar == null) {
            return null;
        }
        return (String) iVar.get("".concat(str3));
    }
}
