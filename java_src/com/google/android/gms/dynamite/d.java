package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* loaded from: classes.dex */
final class d implements DynamiteModule.b {
    @Override // com.google.android.gms.dynamite.DynamiteModule.b
    public final DynamiteModule.b.C0100b a(Context context, String str, DynamiteModule.b.a aVar) {
        DynamiteModule.b.C0100b c0100b = new DynamiteModule.b.C0100b();
        int a10 = aVar.a(context, str, true);
        c0100b.f5954b = a10;
        if (a10 != 0) {
            c0100b.f5955c = 1;
        } else {
            int b10 = aVar.b(context, str);
            c0100b.f5953a = b10;
            if (b10 != 0) {
                c0100b.f5955c = -1;
            }
        }
        return c0100b;
    }
}
