package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.content.Context;
import java.io.File;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.ka  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0654ka {

    /* renamed from: a  reason: collision with root package name */
    private final Context f12738a;

    /* renamed from: b  reason: collision with root package name */
    private final B0 f12739b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0654ka(Context context, B0 b02) {
        this.f12738a = context;
        this.f12739b = b02;
    }

    private String b(String str, File file) {
        this.f12739b.getClass();
        File file2 = new File(file, str);
        if (!file2.exists() && a(this.f12738a.getDatabasePath(str), file, str)) {
            String str2 = str + "-journal";
            a(this.f12738a.getDatabasePath(str2), file, str2);
            String str3 = str + "-shm";
            a(this.f12738a.getDatabasePath(str3), file, str3);
            String str4 = str + "-wal";
            a(this.f12738a.getDatabasePath(str4), file, str4);
        }
        return file2.getAbsolutePath();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(String str, File file) {
        File noBackupFilesDir;
        try {
            this.f12739b.getClass();
            File file2 = new File(file, str);
            if (file2.exists()) {
                return file2.getAbsolutePath();
            }
            if (A2.a(21) && (noBackupFilesDir = this.f12738a.getNoBackupFilesDir()) != null) {
                this.f12739b.getClass();
                if (a(new File(noBackupFilesDir, str), file, str)) {
                    String str2 = str + "-journal";
                    this.f12739b.getClass();
                    a(new File(noBackupFilesDir, str2), file, str2);
                    String str3 = str + "-shm";
                    this.f12739b.getClass();
                    a(new File(noBackupFilesDir, str3), file, str3);
                    String str4 = str + "-wal";
                    this.f12739b.getClass();
                    a(new File(noBackupFilesDir, str4), file, str4);
                    return file2.getAbsolutePath();
                }
            }
            return b(str, file);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(21)
    public String a(String str) {
        try {
            File noBackupFilesDir = this.f12738a.getNoBackupFilesDir();
            return noBackupFilesDir == null ? str : b(str, noBackupFilesDir);
        } catch (Throwable unused) {
            return str;
        }
    }

    private boolean a(File file, File file2, String str) {
        if (file == null || !file.exists()) {
            return false;
        }
        this.f12739b.getClass();
        File file3 = new File(file2, str);
        boolean renameTo = file.renameTo(file3);
        return !renameTo ? C0419b.a(file, file3) : renameTo;
    }
}
