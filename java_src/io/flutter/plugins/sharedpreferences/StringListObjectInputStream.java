package io.flutter.plugins.sharedpreferences;

import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.util.Set;
import yc.m0;
/* loaded from: classes2.dex */
public final class StringListObjectInputStream extends ObjectInputStream {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringListObjectInputStream(InputStream input) {
        super(input);
        kotlin.jvm.internal.m.e(input, "input");
    }

    @Override // java.io.ObjectInputStream
    protected Class<?> resolveClass(ObjectStreamClass objectStreamClass) {
        Set d10;
        String str;
        d10 = m0.d("java.util.Arrays$ArrayList", "java.util.ArrayList", "java.lang.String", "[Ljava.lang.String;");
        if (objectStreamClass != null) {
            str = objectStreamClass.getName();
        } else {
            str = null;
        }
        if (str != null && !d10.contains(str)) {
            throw new ClassNotFoundException(objectStreamClass.getName());
        }
        return super.resolveClass(objectStreamClass);
    }
}
