package gd;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import xc.t;
/* loaded from: classes2.dex */
public abstract class i extends h {
    public static final ByteBuffer d(int i10, CharsetEncoder encoder) {
        kotlin.jvm.internal.m.e(encoder, "encoder");
        ByteBuffer allocate = ByteBuffer.allocate(i10 * ((int) Math.ceil(encoder.maxBytesPerChar())));
        kotlin.jvm.internal.m.d(allocate, "allocate(...)");
        return allocate;
    }

    public static final CharsetEncoder e(Charset charset) {
        kotlin.jvm.internal.m.e(charset, "<this>");
        return charset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE);
    }

    public static final String f(File file, Charset charset) {
        kotlin.jvm.internal.m.e(file, "<this>");
        kotlin.jvm.internal.m.e(charset, "charset");
        InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file), charset);
        try {
            String d10 = n.d(inputStreamReader);
            b.a(inputStreamReader, null);
            return d10;
        } finally {
        }
    }

    public static /* synthetic */ String g(File file, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = rd.d.f29089b;
        }
        return f(file, charset);
    }

    public static final void h(File file, String text, Charset charset) {
        kotlin.jvm.internal.m.e(file, "<this>");
        kotlin.jvm.internal.m.e(text, "text");
        kotlin.jvm.internal.m.e(charset, "charset");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            j(fileOutputStream, text, charset);
            t tVar = t.f32733a;
            b.a(fileOutputStream, null);
        } finally {
        }
    }

    public static /* synthetic */ void i(File file, String str, Charset charset, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            charset = rd.d.f29089b;
        }
        h(file, str, charset);
    }

    public static final void j(OutputStream outputStream, String text, Charset charset) {
        boolean z10;
        kotlin.jvm.internal.m.e(outputStream, "<this>");
        kotlin.jvm.internal.m.e(text, "text");
        kotlin.jvm.internal.m.e(charset, "charset");
        if (text.length() < 16384) {
            byte[] bytes = text.getBytes(charset);
            kotlin.jvm.internal.m.d(bytes, "getBytes(...)");
            outputStream.write(bytes);
            return;
        }
        CharsetEncoder e10 = e(charset);
        CharBuffer allocate = CharBuffer.allocate(8192);
        kotlin.jvm.internal.m.b(e10);
        ByteBuffer d10 = d(8192, e10);
        int i10 = 0;
        int i11 = 0;
        while (i10 < text.length()) {
            int min = Math.min(8192 - i11, text.length() - i10);
            int i12 = i10 + min;
            char[] array = allocate.array();
            kotlin.jvm.internal.m.d(array, "array(...)");
            text.getChars(i10, i12, array, i11);
            allocate.limit(min + i11);
            i11 = 1;
            if (i12 == text.length()) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (e10.encode(allocate, d10, z10).isUnderflow()) {
                outputStream.write(d10.array(), 0, d10.position());
                if (allocate.position() != allocate.limit()) {
                    allocate.put(0, allocate.get());
                } else {
                    i11 = 0;
                }
                allocate.clear();
                d10.clear();
                i10 = i12;
            } else {
                throw new IllegalStateException("Check failed.");
            }
        }
    }
}
