package gd;

import java.io.BufferedReader;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
/* loaded from: classes2.dex */
public abstract class n {
    public static final long a(Reader reader, Writer out, int i10) {
        kotlin.jvm.internal.m.e(reader, "<this>");
        kotlin.jvm.internal.m.e(out, "out");
        char[] cArr = new char[i10];
        int read = reader.read(cArr);
        long j10 = 0;
        while (read >= 0) {
            out.write(cArr, 0, read);
            j10 += read;
            read = reader.read(cArr);
        }
        return j10;
    }

    public static /* synthetic */ long b(Reader reader, Writer writer, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 8192;
        }
        return a(reader, writer, i10);
    }

    public static final qd.e c(BufferedReader bufferedReader) {
        kotlin.jvm.internal.m.e(bufferedReader, "<this>");
        return qd.f.c(new l(bufferedReader));
    }

    public static final String d(Reader reader) {
        kotlin.jvm.internal.m.e(reader, "<this>");
        StringWriter stringWriter = new StringWriter();
        b(reader, stringWriter, 0, 2, null);
        String stringWriter2 = stringWriter.toString();
        kotlin.jvm.internal.m.d(stringWriter2, "toString(...)");
        return stringWriter2;
    }
}
