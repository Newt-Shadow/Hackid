package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.io.File;
/* renamed from: com.yandex.metrica.impl.ob.gj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0564gj implements InterfaceC0464cj {

    /* renamed from: a  reason: collision with root package name */
    private final Context f12485a;

    /* renamed from: b  reason: collision with root package name */
    private final B0 f12486b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0564gj(Context context, B0 b02) {
        this.f12485a = context;
        this.f12486b = b02;
    }

    private boolean b() {
        boolean z10;
        File file;
        File c10 = this.f12486b.c(this.f12485a);
        if (c10 != null) {
            this.f12486b.getClass();
            z10 = new File(c10, "metrica_data.db").exists();
        } else {
            z10 = false;
        }
        if (!z10 && A2.a(21)) {
            B0 b02 = this.f12486b;
            Context context = this.f12485a;
            b02.getClass();
            File noBackupFilesDir = context.getNoBackupFilesDir();
            if (noBackupFilesDir == null) {
                file = null;
            } else {
                file = new File(noBackupFilesDir, "metrica_data.db");
            }
            if (file != null && file.exists()) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        if (!z10) {
            B0 b03 = this.f12486b;
            Context context2 = this.f12485a;
            b03.getClass();
            File databasePath = context2.getDatabasePath("metrica_data.db");
            if (databasePath == null || !databasePath.exists()) {
                return false;
            }
            return true;
        }
        return z10;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0464cj
    public boolean a() {
        return !b();
    }
}
