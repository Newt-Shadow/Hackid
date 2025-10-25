package x3;

import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import n6.e;
import t3.d;
import t3.g;
/* loaded from: classes.dex */
public final class a extends g {

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f32256c = Pattern.compile("(.+?)='(.*?)';", 32);

    /* renamed from: a  reason: collision with root package name */
    private final CharsetDecoder f32257a = e.f26427c.newDecoder();

    /* renamed from: b  reason: collision with root package name */
    private final CharsetDecoder f32258b = e.f26426b.newDecoder();

    private String c(ByteBuffer byteBuffer) {
        try {
            return this.f32257a.decode(byteBuffer).toString();
        } catch (CharacterCodingException unused) {
            try {
                String charBuffer = this.f32258b.decode(byteBuffer).toString();
                this.f32258b.reset();
                byteBuffer.rewind();
                return charBuffer;
            } catch (CharacterCodingException unused2) {
                this.f32258b.reset();
                byteBuffer.rewind();
                return null;
            } catch (Throwable th) {
                this.f32258b.reset();
                byteBuffer.rewind();
                throw th;
            }
        } finally {
            this.f32257a.reset();
            byteBuffer.rewind();
        }
    }

    @Override // t3.g
    protected t3.a b(d dVar, ByteBuffer byteBuffer) {
        String c10 = c(byteBuffer);
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        String str = null;
        if (c10 == null) {
            return new t3.a(new c(bArr, null, null));
        }
        Matcher matcher = f32256c.matcher(c10);
        String str2 = null;
        for (int i10 = 0; matcher.find(i10); i10 = matcher.end()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            if (group != null) {
                String e10 = n6.c.e(group);
                e10.hashCode();
                if (!e10.equals("streamurl")) {
                    if (e10.equals("streamtitle")) {
                        str = group2;
                    }
                } else {
                    str2 = group2;
                }
            }
        }
        return new t3.a(new c(bArr, str, str2));
    }
}
