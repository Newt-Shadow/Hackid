package io.sentry;

import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.util.Map;
/* loaded from: classes2.dex */
public interface y0 {
    void a(Object obj, Writer writer);

    void b(a4 a4Var, OutputStream outputStream);

    Object c(Reader reader, Class cls);

    a4 d(InputStream inputStream);

    Object e(Reader reader, Class cls, g1 g1Var);

    String f(Map map);
}
