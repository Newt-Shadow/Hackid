package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* loaded from: classes.dex */
final class f implements DynamiteModule.b {
    @Override // com.google.android.gms.dynamite.DynamiteModule.b
    public final DynamiteModule.b.C0100b a(Context context, String str, DynamiteModule.b.a aVar) {
        DynamiteModule.b.C0100b c0100b = new DynamiteModule.b.C0100b();
        int i10 = 0;
        int a10 = aVar.a(context, str, false);
        c0100b.f5954b = a10;
        if (a10 != 0) {
            i10 = 1;
        }
        c0100b.f5955c = i10;
        return c0100b;
    }
}
