package io.sentry.util;

import io.sentry.ILogger;
import io.sentry.j5;
import io.sentry.q1;
import io.sentry.y0;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicIntegerArray;
/* loaded from: classes2.dex */
public abstract class l {

    /* renamed from: a  reason: collision with root package name */
    private static final Charset f23790a = Charset.forName("UTF-8");

    public static List a(AtomicIntegerArray atomicIntegerArray) {
        int length = atomicIntegerArray.length();
        ArrayList arrayList = new ArrayList(length);
        for (int i10 = 0; i10 < length; i10++) {
            arrayList.add(Integer.valueOf(atomicIntegerArray.get(i10)));
        }
        return arrayList;
    }

    public static byte[] b(y0 y0Var, ILogger iLogger, q1 q1Var) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream, f23790a));
            try {
                y0Var.a(q1Var, bufferedWriter);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                bufferedWriter.close();
                byteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th) {
                try {
                    bufferedWriter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            iLogger.b(j5.ERROR, "Could not serialize serializable", th3);
            return null;
        }
    }

    public static Map c(Calendar calendar) {
        HashMap hashMap = new HashMap();
        hashMap.put("year", Integer.valueOf(calendar.get(1)));
        hashMap.put("month", Integer.valueOf(calendar.get(2)));
        hashMap.put("dayOfMonth", Integer.valueOf(calendar.get(5)));
        hashMap.put("hourOfDay", Integer.valueOf(calendar.get(11)));
        hashMap.put("minute", Integer.valueOf(calendar.get(12)));
        hashMap.put("second", Integer.valueOf(calendar.get(13)));
        return hashMap;
    }
}
