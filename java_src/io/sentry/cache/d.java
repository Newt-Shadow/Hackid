package io.sentry.cache;

import io.sentry.g1;
import io.sentry.j5;
import io.sentry.s5;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    private static final Charset f22932a = Charset.forName("UTF-8");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(s5 s5Var, String str, String str2) {
        File b10 = b(s5Var, str);
        if (b10 == null) {
            s5Var.getLogger().c(j5.INFO, "Cache dir is not set, cannot delete from scope cache", new Object[0]);
            return;
        }
        File file = new File(b10, str2);
        s5Var.getLogger().c(j5.DEBUG, "Deleting %s from scope cache", str2);
        if (!file.delete()) {
            s5Var.getLogger().c(j5.ERROR, "Failed to delete: %s", file.getAbsolutePath());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static File b(s5 s5Var, String str) {
        String cacheDirPath = s5Var.getCacheDirPath();
        if (cacheDirPath == null) {
            return null;
        }
        File file = new File(cacheDirPath, str);
        file.mkdirs();
        return file;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object c(s5 s5Var, String str, String str2, Class cls, g1 g1Var) {
        File b10 = b(s5Var, str);
        if (b10 == null) {
            s5Var.getLogger().c(j5.INFO, "Cache dir is not set, cannot read from scope cache", new Object[0]);
            return null;
        }
        File file = new File(b10, str2);
        if (file.exists()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), f22932a));
                if (g1Var == null) {
                    Object c10 = s5Var.getSerializer().c(bufferedReader, cls);
                    bufferedReader.close();
                    return c10;
                }
                Object e10 = s5Var.getSerializer().e(bufferedReader, cls, g1Var);
                bufferedReader.close();
                return e10;
            } catch (Throwable th) {
                s5Var.getLogger().a(j5.ERROR, th, "Error reading entity from scope cache: %s", str2);
            }
        } else {
            s5Var.getLogger().c(j5.DEBUG, "No entry stored for %s", str2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(s5 s5Var, Object obj, String str, String str2) {
        File b10 = b(s5Var, str);
        if (b10 == null) {
            s5Var.getLogger().c(j5.INFO, "Cache dir is not set, cannot store in scope cache", new Object[0]);
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(b10, str2));
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(fileOutputStream, f22932a));
            s5Var.getSerializer().a(obj, bufferedWriter);
            bufferedWriter.close();
            fileOutputStream.close();
        } catch (Throwable th) {
            s5Var.getLogger().a(j5.ERROR, th, "Error persisting entity: %s", str2);
        }
    }
}
