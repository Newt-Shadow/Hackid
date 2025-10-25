package io.sentry;

import java.io.Closeable;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
/* loaded from: classes2.dex */
public interface l2 extends Closeable {
    static Date I0(String str, ILogger iLogger) {
        if (str == null) {
            return null;
        }
        try {
            try {
                return j.e(str);
            } catch (Exception e10) {
                iLogger.b(j5.ERROR, "Error when deserializing millis timestamp format.", e10);
                return null;
            }
        } catch (Exception unused) {
            return j.f(str);
        }
    }

    Object B0();

    String C();

    long E0();

    void G();

    Integer J();

    Map L(ILogger iLogger, g1 g1Var);

    Long M();

    List M0(ILogger iLogger, g1 g1Var);

    TimeZone Q(ILogger iLogger);

    float R();

    double S();

    String T();

    Map Z(ILogger iLogger, g1 g1Var);

    void b0(ILogger iLogger, Map map, String str);

    Double e0();

    String f0();

    Date i0(ILogger iLogger);

    int j0();

    Boolean m0();

    void p(boolean z10);

    io.sentry.vendor.gson.stream.b peek();

    void r();

    Float r0();

    void t();

    Object u0(ILogger iLogger, g1 g1Var);
}
