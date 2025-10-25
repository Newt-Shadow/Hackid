package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteDatabase;
import java.io.File;
/* loaded from: classes.dex */
public abstract class v {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0022, code lost:
        if (r3 == false) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.google.android.gms.measurement.internal.p5 r10, android.database.sqlite.SQLiteDatabase r11, java.lang.String r12, java.lang.String r13, java.lang.String r14, java.lang.String[] r15) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.v.a(com.google.android.gms.measurement.internal.p5, android.database.sqlite.SQLiteDatabase, java.lang.String, java.lang.String, java.lang.String, java.lang.String[]):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(p5 p5Var, SQLiteDatabase sQLiteDatabase) {
        if (p5Var != null) {
            com.google.android.gms.internal.measurement.x0.a();
            String path = sQLiteDatabase.getPath();
            int i10 = com.google.android.gms.internal.measurement.d1.f6350b;
            File file = new File(path);
            if (!file.setReadable(false, false)) {
                p5Var.r().a("Failed to turn off database read permission");
            }
            if (!file.setWritable(false, false)) {
                p5Var.r().a("Failed to turn off database write permission");
            }
            if (!file.setReadable(true, true)) {
                p5Var.r().a("Failed to turn on database read permission for owner");
            }
            if (!file.setWritable(true, true)) {
                p5Var.r().a("Failed to turn on database write permission for owner");
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Monitor must not be null");
    }
}
